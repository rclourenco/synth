#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <gtk/gtk.h>
#include "xLib.h"
#include "DIniParser.h"

typedef struct {
	char name[200];
	GtkObject *obj;
	int cmd;
	char defname[100];
} WidgetEntry;

int nwidgets;
WidgetEntry widgets[127];

void assignWidgets();

int lids[10]={0,1,2,3,4,5,6,7,8,9};
GtkObject *a_load[10];
GtkObject *bt_load[10];

GtkObject *a_save;
GtkObject *bt_save;

void save_patch(int num);
void load_patch(int num);

void on_window_destroy (GtkObject *object, gpointer user_data)
{
        gtk_main_quit();
}

char cmdbuffer[128];

void control_change_cb(GtkObject *object, gpointer user_data)
{
	WidgetEntry *p = (WidgetEntry *)user_data;
	if( p->cmd >= 0 ) {
		gdouble	v = gtk_adjustment_get_value( GTK_ADJUSTMENT(p->obj) );
		int rv = v;
	
		sprintf(cmdbuffer,"amidi -p hw:1,1 -S 'B0 %02X %02X'",p->cmd,rv);
		system(cmdbuffer);
	}
}

void bt_load_cb(GtkObject *object, gpointer user_data)
{
	int p = *((int *)user_data);
	int x;
	gdouble	v = gtk_adjustment_get_value( GTK_ADJUSTMENT(a_load[p]) );
	x=v;
	if( x >= 0 && x < 127 ){
		load_patch(x);
	}
}

void bt_save_cb(GtkObject *object, gpointer user_data)
{
	int x;
	gdouble	v = gtk_adjustment_get_value( GTK_ADJUSTMENT(a_save) );
	x=v;
	if( x >= 64 && x < 127 ){
		printf("To Save\n");
		save_patch(x);
	}
}


void reset()
{
	int i;
	for(i=0;i<nwidgets;i++) {

		if(widgets[i].cmd < 0 || widgets[i].cmd > 127 )
			continue;

		sprintf(cmdbuffer,"amidi -p hw:1,1 -S 'B0 %02X %02X'",widgets[i].cmd,0);
		system(cmdbuffer);
	}
}

void load_patch(int num)
{
	int i;
	char tmp[128];
	char *patch_name;
	TIniStruct ini;
	sprintf(tmp,"patches/%u",num);

	ini =  LoadIniFile(tmp);
	if(!ini)
		return;
	for(i=0;i<nwidgets;i++) {
		char *s = DIniGet(ini,widgets[i].defname);
		if(s){
			double v = atof(s);
			if( v<0   ) v = 0;
			if( v>127 ) v = 127;
			gtk_adjustment_set_value( GTK_ADJUSTMENT(widgets[i].obj), v  );
			
		}
	}

	patch_name = DIniGet(ini,"name");
	//if(gtk_adjustment_set_value( GTK_ADJUSTMENT(widgets[i].obj), v  );)
	
}


void save_patch(int num)
{
	int i;
	FILE *fp;
	char tmp[128];
	sprintf(tmp,"patches/%u",num);
	fp = fopen(tmp,"wt");
	if(!fp)
		return;

	for(i=0;i<nwidgets;i++){
		if( widgets[i].cmd >= 0 ) {
			gdouble	v = gtk_adjustment_get_value( GTK_ADJUSTMENT(widgets[i].obj) );
			int rv = v;
			fprintf(fp,"%s=%u\n",widgets[i].defname,rv);	
		}
		else{
		}
	}
	fclose(fp);
}

int main (int argc, char *argv[])
{
        GtkBuilder              *builder;
        GtkWidget               *window;
        
        gtk_init (&argc, &argv);
        
        builder = gtk_builder_new ();
        gtk_builder_add_from_file (builder, "synthpanel2.glade", NULL);

        window = GTK_WIDGET (gtk_builder_get_object (builder, "window1"));
        gtk_builder_connect_signals (builder, NULL);
	assignWidgets(builder);
          
        g_object_unref (G_OBJECT (builder));
	reset();        
	load_patch(0);
        gtk_widget_show (window);
	
        gtk_main ();
        
        return 0;
}




void assignWidgets(GtkBuilder *builder)
{
	char name[200];
	int i = 0, n=0;
	for(i = 0;i<6;i++) {

		sprintf(name,"a_op%u_v",i+1);
		sprintf(widgets[n].defname,"op%u.v",i+1);
		strcpy(widgets[n].name,name);
		widgets[n].cmd = 12 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;

		sprintf(name,"a_op%u_m",i+1);
		sprintf(widgets[n].defname,"op%u.m",i+1);
		strcpy(widgets[n].name,name);
		widgets[n].cmd = 18 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;

		sprintf(name,"a_op%u_f",i+1);
		sprintf(widgets[n].defname,"op%u.f",i+1);
		strcpy(widgets[n].name,name);
		widgets[n].cmd = 48 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;


		sprintf(name,"a_op%u_a",i+1);
		sprintf(widgets[n].defname,"op%u.a",i+1);
		strcpy(widgets[n].name,name);
		widgets[n].cmd = 24 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;

		sprintf(name,"a_op%u_d",i+1);
		sprintf(widgets[n].defname,"op%u.d",i+1);
		strcpy(widgets[n].name,name);
		widgets[n].cmd = 30 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;

		sprintf(name,"a_op%u_s",i+1);
		sprintf(widgets[n].defname,"op%u.s",i+1);
		strcpy(widgets[n].name,name);
		widgets[n].cmd = 36 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;

		sprintf(name,"a_op%u_r",i+1);
		strcpy(widgets[n].name,name);
		sprintf(widgets[n].defname,"op%u.r",i+1);
		widgets[n].cmd = 42 + i;
		widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( widgets[n].obj != NULL ) {
			g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
		}
		n++;

	}

	sprintf(name,"a_alg");
	strcpy(widgets[n].name,name);
	sprintf(widgets[n].defname,"a");
	widgets[n].cmd = 3;
	widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));
	if( widgets[n].obj != NULL ) {
		g_signal_connect (widgets[n].obj, "value-changed",G_CALLBACK (control_change_cb), &widgets[n]);
	}
	n++;

	sprintf(name,"name");
	strcpy(widgets[n].name,name);
	sprintf(widgets[n].defname,"name");
	widgets[n].cmd = -1;
	widgets[n].obj = GTK_OBJECT (gtk_builder_get_object (builder,name));

	n++;

	nwidgets = n;

/* Non controller buttons */
	for(i=0;i<10;i++){
		sprintf(name,"load%u",i+1);
		bt_load[i] = GTK_OBJECT (gtk_builder_get_object (builder,name));
		sprintf(name,"a_load%u",i+1);
		a_load[i]  = GTK_OBJECT (gtk_builder_get_object (builder,name));
		if( bt_load[i] != NULL && a_load[i] != NULL) {
			g_signal_connect (bt_load[i], "clicked",G_CALLBACK (bt_load_cb), &lids[i]);
		}
	}

	bt_save = GTK_OBJECT (gtk_builder_get_object (builder,"save"));
	a_save  = GTK_OBJECT (gtk_builder_get_object (builder,"a_save"));
	if( bt_save != NULL && a_save != NULL) {
		g_signal_connect (bt_save, "clicked",G_CALLBACK (bt_save_cb), NULL);
	}

}
