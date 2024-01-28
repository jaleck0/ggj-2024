/// @description Insert description here
// You can write your code in this editor
global.mood = 100;

global.moodindex = MOODS.NEUTRAL;

global.depressionspeed = 0.1;
global.moodstrings = array_create(5, ["Depressed", "Sad", "Neutral", "Happy", "Manic"]);

global.portrait_sprites[0] = spr_portrait_depressed;
global.portrait_sprites[1] = spr_portrait_sad;
global.portrait_sprites[2] = spr_portrait_neutral;
global.portrait_sprites[3] = spr_portrait_happy;
global.portrait_sprites[4] = spr_portrait_manic;

port_fram = 0;

global.moodcolors[0,0] = BLUE5//YELLOW1
global.moodcolors[0,1] = BLUE6//YELLOW2

global.moodcolors[1,0] = BLUE3//YELLOW3
global.moodcolors[1,1] = BLUE4//ORANGE2

global.moodcolors[2,0] = WHITE
global.moodcolors[2,1] = GRAY1

global.moodcolors[3,0] = YELLOW1//BLUE3
global.moodcolors[3,1] = YELLOW2//BLUE4

global.moodcolors[4,0] = YELLOW3//BLUE5
global.moodcolors[4,1] = ORANGE2//BLUE6


global.const_deathmood = 0;
global.const_neutralmood = 100;
global.const_maxmood = 200;


if room == rm_lvl_god or room == rm_lvl_devl
{
	global.desiredmusic = snd_bossfight
}
else
{
	global.desiredmusic = snd_neutralmusic
}

audio_play_sound(global.desiredmusic,1,true)