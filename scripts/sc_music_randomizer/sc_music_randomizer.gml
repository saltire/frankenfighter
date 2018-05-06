audio_stop_all();

var nextTrack;
do {
  nextTrack = irandom(2);
}
until (nextTrack != obj_sound_control.currentTrack);

obj_sound_control.currentTrack = nextTrack;
switch (obj_sound_control.currentTrack) {
	case 0: audio_play_sound(bgm_session_1, 200, true); break;
	case 1: audio_play_sound(bgm_session_2, 200, true); break;
	case 2: audio_play_sound(bgm_neo_80s, 200, true); break;
	default: audio_play_sound(bgm_session_1, 200, true); break;
}