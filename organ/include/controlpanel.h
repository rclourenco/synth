#define EV_NONE -1
#define EV_EXIT 0
#define EV_VOL  1
#define EV_MUL  2

#define EV_ATTACK  3
#define EV_DECAY   4
#define EV_SUSTAIN 5
#define EV_RELEASE 6

#define EV_ALG 20

typedef struct {
	int control;
	int op;
	int value;
}CPEvent;

void cp_init();
int cp_get(CPEvent *cpe);
void cp_done();

