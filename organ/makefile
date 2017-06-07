ALLEGRO_LIBS=`pkg-config --libs allegro-5 allegro_color-5 allegro_font-5 allegro_main-5 allegro_memfile-5 allegro_primitives-5 allegro_acodec-5 allegro_audio-5 allegro_dialog-5 allegro_image-5 allegro_physfs-5 allegro_ttf-5`

synth: organ.o env_data.o dsp.o controlpanel.o fm.o
	gcc -o synth organ.o env_data.o dsp.o controlpanel.o fm.o -Llib -lncurses -lpanel -lform -lm -O2

synth2: organ2.o env_data.o dsp.o controlpanel.o fm.o patch.o
	gcc -o synth2 organ2.o env_data.o dsp.o controlpanel.o fm.o patch.o -Llib -lncurses -lpanel -lform -lm -O2 $(ALLEGRO_LIBS)

organ.o: organ.c sndutils.c include/env_data.h include/dsp.h include/controlpanel.h include/fm.h
	gcc -c organ.c -o organ.o -O2

organ2.o: organ2.c sndutils.c include/env_data.h include/dsp.h include/controlpanel.h include/fm.h include/patch.h
	gcc -c organ2.c -o organ2.o -O2

controlpanel.o: include/controlpanel.h controlpanel.c
	gcc -c controlpanel.c -o controlpanel.o -O2

env_data.o: env_data.c
	gcc -c env_data.c -o env_data.o -O2

dsp.o: include/dsp.h dsp.c
	gcc -c dsp.c -o dsp.o -O2

fm.o: include/fm.h fm.c
	gcc -c fm.c -o fm.o -O2
	
patch.o: include/patch.h patch.c
	gcc -c patch.c -o patch.o -O2
