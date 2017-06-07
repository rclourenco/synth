#include <stdio.h>
#include <math.h>
#include <ncurses.h>
#include <panel.h>
#include <form.h>
#include "include/controlpanel.h"

typedef struct{
	FIELD *field[16];
	FORM  *my_form;
	char opvolstr[10];
	char opmulstr[10];
	char opattackstr[10];
	char opdecaystr[10];
	char opsustainstr[10];
	char opreleasestr[10];

	int opvol;
	int opmul;
	int opattack;
	int opdecay;
	int opsustain;
	int oprelease;
}OPPanel;

WINDOW *my_wins[7];
PANEL  *my_panels[7];
OPPanel oppdata[7];

int active_op = 0;

int algmode = 0;

static void init_opForm(int i);
static void cp_view_op(int i);

void cp_init()
{
	int lines = 20, cols = 40, y = 2, x = 40, i;

	
	initscr();cbreak();noecho();keypad(stdscr, TRUE);
	refresh();
	timeout(0);

	/* 
	 * Create borders around the windows so that you can see the effect
	 * of panels
	 */
	for(i = 0; i < 6; ++i){
		my_wins[i] = newwin(lines, cols, y, x);
		init_opForm(i);
		box(my_wins[i], 0, 0);
		mvwprintw(my_wins[i], 1, 1, "Operator %u\n", i+1);
		my_panels[i] = new_panel(my_wins[i]);
	}

	my_wins[6] = newwin(lines, cols, y, 0);
	/*
		init window here
	*/
	box(my_wins[6], 0, 0);
	mvwprintw(my_wins[6], 1, 1, "Main");
	mvwprintw(my_wins[6], 2, 1, "Mode [U-/I+]: %10u",algmode);
	my_panels[6] = new_panel(my_wins[6]);


	/* Update the stacking order. 2nd panel will be on top */
	update_panels();

	mvprintw(LINES - 2, 0, "Use tab to browse through the windows (F1 to Exit)");
	/* Show it on the screen */
	cp_view_op(active_op);
	
	update_panels();
	doupdate();

}

void update_opvol(char o, CPEvent *ev)
{
	int i = active_op;
	if(o == '+'){
		if(oppdata[i].opvol>=127)
			oppdata[i].opvol=127;
		else
			oppdata[i].opvol++;
	}

	if(o == '-'){
		if(oppdata[i].opvol<=0)
			oppdata[i].opvol=0;
		else
			oppdata[i].opvol--;
	}
	
	sprintf(oppdata[i].opvolstr,"%u",oppdata[i].opvol);
	set_field_buffer(oppdata[i].field[0], 0, oppdata[i].opvolstr);
	ev->control = EV_VOL; 
	ev->op      = i;
	ev->value   = oppdata[i].opvol; 

	refresh();

}

void update_opmul(char o, CPEvent *ev)
{
	int i = active_op;
	if(o == '+'){
		if(oppdata[i].opmul>=15)
			oppdata[i].opmul=15;
		else
			oppdata[i].opmul++;
	}

	if(o == '-'){
		if(oppdata[i].opmul<=0)
			oppdata[i].opmul=0;
		else
			oppdata[i].opmul--;
	}

	sprintf(oppdata[i].opmulstr,"%u",oppdata[i].opmul);
	set_field_buffer(oppdata[i].field[1], 0, oppdata[i].opmulstr);

	ev->control = EV_MUL; 
	ev->op      = i;
	ev->value   = oppdata[i].opmul; 

	refresh();

}

void update_opattack(char o, CPEvent *ev)
{
	int i = active_op;
	if(o == '+'){
		if(oppdata[i].opattack>=127)
			oppdata[i].opattack=127;
		else
			oppdata[i].opattack++;
	}

	if(o == '-'){
		if(oppdata[i].opattack<=0)
			oppdata[i].opattack=0;
		else
			oppdata[i].opattack--;
	}

	sprintf(oppdata[i].opattackstr,"%u",oppdata[i].opattack);
	set_field_buffer(oppdata[i].field[8], 0, oppdata[i].opattackstr);

	ev->control = EV_ATTACK; 
	ev->op      = i;
	ev->value   = oppdata[i].opattack; 

	refresh();

}

void update_opdecay(char o, CPEvent *ev)
{
	int i = active_op;
	if(o == '+'){
		if(oppdata[i].opdecay>=127)
			oppdata[i].opdecay=127;
		else
			oppdata[i].opdecay++;
	}

	if(o == '-'){
		if(oppdata[i].opdecay<=0)
			oppdata[i].opdecay=0;
		else
			oppdata[i].opdecay--;
	}

	sprintf(oppdata[i].opdecaystr,"%u",oppdata[i].opdecay);
	set_field_buffer(oppdata[i].field[9], 0, oppdata[i].opdecaystr);

	ev->control = EV_DECAY; 
	ev->op      = i;
	ev->value   = oppdata[i].opdecay; 

	refresh();

}

void update_opsustain(char o, CPEvent *ev)
{
	int i = active_op;
	if(o == '+'){
		if(oppdata[i].opsustain>=127)
			oppdata[i].opsustain=127;
		else
			oppdata[i].opsustain++;
	}

	if(o == '-'){
		if(oppdata[i].opsustain<=0)
			oppdata[i].opsustain=0;
		else
			oppdata[i].opsustain--;
	}

	sprintf(oppdata[i].opsustainstr,"%u",oppdata[i].opsustain);
	set_field_buffer(oppdata[i].field[10], 0, oppdata[i].opsustainstr);

	ev->control = EV_SUSTAIN; 
	ev->op      = i;
	ev->value   = oppdata[i].opsustain; 

	refresh();

}

void update_oprelease(char o, CPEvent *ev)
{
	int i = active_op;
	if(o == '+'){
		if(oppdata[i].oprelease>=127)
			oppdata[i].oprelease=127;
		else
			oppdata[i].oprelease++;
	}

	if(o == '-'){
		if(oppdata[i].oprelease<=0)
			oppdata[i].oprelease=0;
		else
			oppdata[i].oprelease--;
	}

	sprintf(oppdata[i].opreleasestr,"%u",oppdata[i].oprelease);
	set_field_buffer(oppdata[i].field[11], 0, oppdata[i].opreleasestr);

	ev->control = EV_RELEASE; 
	ev->op      = i;
	ev->value   = oppdata[i].oprelease; 

	refresh();

}


void update_algmode(char o, CPEvent *ev)
{
	if(o == '+'){
		if(algmode>=20)
			algmode=20;
		else
			algmode++;
	}

	if(o == '-'){
		if(algmode<=0)
			algmode=0;
		else
			algmode--;
	}

	mvwprintw(my_wins[6], 2, 1, "Mode [U-/I+]: %10u",algmode);

	ev->control = EV_ALG; 
	ev->op      = -1;
	ev->value   = algmode; 

	refresh();

}


void init_opForm(int i)
{
	int rows, cols;
	/*initialize regular data*/
	oppdata[i].opvol = 100;
	oppdata[i].opmul = 0;

	oppdata[i].opattack  = 100;
	oppdata[i].opdecay   = 100;
	oppdata[i].opsustain = 100;
	oppdata[i].oprelease = 100;

	/* Initialize the fields */
	oppdata[i].field[0] = new_field(1, 10, 4, 18, 0, 0);
	oppdata[i].field[1] = new_field(1, 10, 6, 18, 0, 0);
	oppdata[i].field[2] = new_field(1, 14, 4, 1, 0, 0 );
	oppdata[i].field[3] = new_field(1, 14, 6, 1, 0, 0 );

	oppdata[i].field[4] = new_field(1, 15, 8, 1, 0, 0 );
	oppdata[i].field[5] = new_field(1, 15, 9, 1, 0, 0 );
	oppdata[i].field[6] = new_field(1, 15, 10, 1, 0, 0 );
	oppdata[i].field[7] = new_field(1, 15, 11, 1, 0, 0 );

	oppdata[i].field[8] = new_field(1, 10, 8, 19, 0, 0);
	oppdata[i].field[9] = new_field(1, 10, 9, 19, 0, 0);
	oppdata[i].field[10] = new_field(1, 10, 10, 19, 0, 0);
	oppdata[i].field[11] = new_field(1, 10, 11, 19, 0, 0);

/*	oppdata[i].field[2] = new_field(1, 14, 4, 1, 0, 0 );
	oppdata[i].field[3] = new_field(1, 14, 6, 1, 0, 0 );*/

	oppdata[i].field[12] = NULL;


	field_opts_off(oppdata[i].field[2], O_ACTIVE );
	field_opts_off(oppdata[i].field[3], O_ACTIVE );
	/* Set field options */
	set_field_back(oppdata[i].field[0], A_UNDERLINE);
	field_opts_off(oppdata[i].field[0], O_AUTOSKIP);
	set_field_back(oppdata[i].field[1], A_UNDERLINE); 
	field_opts_off(oppdata[i].field[1], O_AUTOSKIP);

	set_field_back(oppdata[i].field[8], A_UNDERLINE);
	field_opts_off(oppdata[i].field[8], O_AUTOSKIP);
	set_field_back(oppdata[i].field[9], A_UNDERLINE); 
	field_opts_off(oppdata[i].field[9], O_AUTOSKIP);


	set_field_back(oppdata[i].field[10], A_UNDERLINE);
	field_opts_off(oppdata[i].field[10], O_AUTOSKIP);
	set_field_back(oppdata[i].field[11], A_UNDERLINE); 
	field_opts_off(oppdata[i].field[11], O_AUTOSKIP);

	/* Create the form and post it */
	oppdata[i].my_form = new_form(oppdata[i].field);
	

	scale_form(oppdata[i].my_form, &rows, &cols);


        set_form_win(oppdata[i].my_form, my_wins[i]);
        set_form_sub(oppdata[i].my_form, derwin(my_wins[i], rows, cols, 2, 2));

	post_form(oppdata[i].my_form);	
	refresh();
	set_field_buffer(oppdata[i].field[2], 0, "Volume [Q-/W+]:");
	set_field_buffer(oppdata[i].field[3], 0, "Mul    [A-/S+]:");
	set_field_buffer(oppdata[i].field[4], 0, "Attack  [E-/R+]:");
	set_field_buffer(oppdata[i].field[5], 0, "Decay   [D-/F+]:");
	set_field_buffer(oppdata[i].field[6], 0, "Sustain [T-/Y+]:");
	set_field_buffer(oppdata[i].field[7], 0, "Release [G-/H+]:");



	sprintf(oppdata[i].opvolstr,"%u",oppdata[i].opvol);
	set_field_buffer(oppdata[i].field[0], 0, oppdata[i].opvolstr);

	sprintf(oppdata[i].opmulstr,"%u",oppdata[i].opmul);
	set_field_buffer(oppdata[i].field[1], 0, oppdata[i].opmulstr);


	sprintf(oppdata[i].opattackstr,"%u",oppdata[i].opattack);
	set_field_buffer(oppdata[i].field[8], 0, oppdata[i].opattackstr);

	sprintf(oppdata[i].opdecaystr,"%u",oppdata[i].opdecay);
	set_field_buffer(oppdata[i].field[9], 0, oppdata[i].opdecaystr);

	sprintf(oppdata[i].opsustainstr,"%u",oppdata[i].opsustain);
	set_field_buffer(oppdata[i].field[10], 0, oppdata[i].opsustainstr);

	sprintf(oppdata[i].opreleasestr,"%u",oppdata[i].oprelease);
	set_field_buffer(oppdata[i].field[11], 0, oppdata[i].opreleasestr);

}

int get_internal_ev(){
	
}

static void cp_view_op(int i)
{
	if(i<0 || i>6)
		return;
	active_op = i;
	top_panel(my_panels[i]);
	
}

int cp_get(CPEvent *cpe)
{
	int ch = getch();
	cpe->control = EV_NONE;
	if(ch!=ERR){
		switch(ch){
			case 9: cp_view_op((active_op+1)%6); break;
			case 'q':
			case 'Q':update_opvol('-',cpe); break;
			case 'w':
			case 'W':update_opvol('+',cpe); break;
			case 'a':
			case 'A':update_opmul('-',cpe); break;
			case 's':
			case 'S':update_opmul('+',cpe); break;

			case 'r':
			case 'R':update_opattack('+',cpe); break;
			case 'e':
			case 'E':update_opattack('-',cpe); break;

			case 'f':
			case 'F':update_opdecay('+',cpe); break;
			case 'd':
			case 'D':update_opdecay('-',cpe); break;

			case 'y':
			case 'Y':update_opsustain('+',cpe); break;
			case 't':
			case 'T':update_opsustain('-',cpe); break;

			case 'h':
			case 'H':update_oprelease('+',cpe); break;
			case 'g':
			case 'G':update_oprelease('-',cpe); break;


			case 'u':
			case 'U':update_algmode('-',cpe); break;
			case 'i':
			case 'I':update_algmode('+',cpe); break;
			case 27:
				cpe->control = EV_EXIT;
				break;
		}

		update_panels();
		doupdate();

	}
	if(cpe->control!=EV_NONE){
		return 1;
	}

	return 0;
}

void cp_done()
{
	endwin();
}

