#include <stdio.h>
#include <math.h>
#include "include/patch.h"

unsigned char data[MAXDATA];

int st = 0;
unsigned count = 0;
unsigned short data_count = 0;
unsigned char substatus = 0;
unsigned char format = 0;
int is_valid = 0;

void patch_dump();

void patch_sub_status(unsigned char ss)
{
  substatus = ss;
}

void patch_format(unsigned char f)
{
  format = f;
}

void patch_count_lsb( unsigned char lsb)
{
  data_count |= lsb;
}

void patch_count_msb( unsigned char msb)
{
    data_count = msb<<7;
}

void start_of_sysex()
{
  is_valid = 0;
  st = 0;
  count = 0;
  printf("Expected Dim: %u\n",data_count);
}

void store_sysex(unsigned char ch)
{
  if(count<MAXDATA) {
    data[count] = ch;
    count++;
  }
}

void end_of_sysex()
{
  unsigned short checksum = 0;
  printf("Loaded sysex data Count %d\n", count );
  st = -1;
  int c;

  if( data_count+1 != count ) {
    is_valid = 0;
    return;
  }

  for(c=0;c<data_count;c++) {
    checksum += data[c];
    checksum &= 0x7F;
  }

  checksum = 128 - checksum;
  if(checksum == data[count-1]) {
    is_valid = 1;
    patch_dump();
  }
}

unsigned char *patch_getdata() {
  return data;
}

unsigned short patch_datacount() {
  if( is_valid ) {
    return data_count;
  }
  else{
    return 0;
  }
}

void patch_dump()
{
  if(!is_valid) {
    printf("Patch Data is invalid...\n");
    return;
  }

  int patch_count = data_count/128;
  printf("Patch count %d\n", patch_count);
  int i;
  char namebuffer[11];
  for(i=0;i<patch_count;i++) {
    patch_get_name(i,namebuffer);
    printf("Patch[%2d]: %s\n", i, namebuffer);
  }
}


int patch_get_attackrate(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17;
  if(ofs >= data_count)
    return 0;
  return data[ofs]/100.0 * 127.0;
}

int patch_get_decayrate(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 2;
  if(ofs >= data_count)
    return 0;
  return data[ofs]/100.0 * 127.0;
}

int patch_get_r1(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 0;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}

int patch_get_r2(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 1;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}


int patch_get_r3(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 2;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}

int patch_get_r4(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 3;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}

#define OP_PARAM(P,O,X) (data[ (P) * 128 + (5-(O))*17 + (X)])

void _dump_patch_envelope(int patch, int op) {
  if(!is_valid)
    return;
  printf("ENV Operator %d R1 %2d R2 %2d R3 %2d R4 %2d L1 %2d L2 %2d L3 %2d R4 %2d\n", op,
    OP_PARAM(patch,op,0),
    OP_PARAM(patch,op,1),
    OP_PARAM(patch,op,2),
    OP_PARAM(patch,op,3),
    OP_PARAM(patch,op,4),
    OP_PARAM(patch,op,5),
    OP_PARAM(patch,op,6),
    OP_PARAM(patch,op,7)
  );
}

int patch_get_l1(int patch, int op)
{
  if(!is_valid)
    return 0;
  _dump_patch_envelope(patch, op);
  int ofs = patch * 128 + (5-op)*17 + 4;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}

int patch_get_l2(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 5;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}


int patch_get_l3(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 6;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}


int patch_get_l4(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 7;
  if(ofs >= data_count)
    return 0;
  return data[ofs];
}


int patch_get_sustain(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 6;
  if(ofs >= data_count)
    return 0;
  return data[ofs]/100.0 * 127.0;
}

int patch_get_releaserate(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 3;
  if(ofs >= data_count)
    return 0;
  return data[ofs]/100.0 * 127.0;
}

int patch_get_mf(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 15;
  if(ofs >= data_count)
    return 0;
  int v = data[ofs];
  if( v & 0x1 ) {
    //printf(" --> Fixed freq: %d %d\n", patch, op);
    return -1;
  }
  else {
    return v>>1;
  }
}

int patch_get_op_volume(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 14;
  if(ofs >= data_count)
    return 0;
  int v = (data[ofs] * 127)/100;
  return v;
}

double patch_get_sfreq(int patch, int op)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + (5-op)*17 + 15;
  if(ofs >= data_count)
    return 0;

  if((data[ofs]&1) == 0)
    return 0;
  int v1 = (data[ofs]>>1) & 3;
  patch * 128 + (5-op)*17 + 16;
  if(ofs >= data_count)
    return 0;

  double v2 = pow(10,v1) * (1.0 + data[ofs]/100.0);

  //printf("Patch %d Op %d SFreq: %f\n", patch, op, v2);
  return v2;
}

int patch_get_name(int patch, char *name)
{
  if(!is_valid)
    return 0;
  
  int ofs = patch * 128 + 118;
  int c;
  for(c=0;c<10;c++) {
    char ch = data[ofs+c];
    if(ch>=32 && ch<127 ) 
      name[c]=ch;
    else
      name[c]=32;
  }
  name[c] = '\0';
  return 1;
}

int patch_get_feedback(int patch)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + 111;
  if(ofs >= data_count)
    return 0;
  //printf("Org Feedback level %d\n", data[ofs]&0x7);
  int fb = ((data[ofs]&0x7) * 127.0)/7.0;
  //printf("Feedback level %d\n", fb);
  return fb;
  
}

int patch_get_algorithm(int patch)
{
  if(!is_valid)
    return 0;
  int ofs = patch * 128 + 110;
  if(ofs >= data_count)
    return 0;
  return data[ofs]%32;
}
