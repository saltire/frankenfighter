var musicRandomizer = irandom(2);
audio_stop_all();
switch (musicRandomizer) {
	case 0: audio_play_sound(bgm_session_1, 200, true); break;
	case 1: audio_play_sound(bgm_session_2, 200, true); break;
	case 2: audio_play_sound(bgm_neo_80s, 200, true); break;
	default: audio_play_sound(bgm_session_1, 200, true); break;
}