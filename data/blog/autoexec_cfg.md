---
title: Dota 2 autoexec.cfg 
layout: simple_wide_page 
pager: true
date: 2014-11-29
author: Johan
tags:
 - dota 2
---

This is the Dota 2 autoexec.cfg I use and even though I am no pro I can recommend it for an easier time in Dota 2.
{.lead}

It set up macros for hot key courier (4), any autocast on (5), rune views (6) and many other minor tweaks. Just give it a quick read. Remember to press F8 when entering the game to load the macros.

Put the text below in a file named `autoexec.cfg` in `path\to\Steam\SteamApps\common\dota 2 beta\dota\cfg\`.

```python
//////////////////////////
///   BASIC SETTINGS   ///
//////////////////////////

//F8 the key to re-run autoexec
bind "f8" "exec autoexec.cfg;con_filter_enable 0;"

// Enables the console
con_enable 1
 
// Enabling hotkeys for the shop
//dota_shop_force_hotkeys "0"

// Change minimap colours. Also affects the colour of units upon hovering.
dota_unit_use_player_color "1";
dota_friendly_color_b "0.8"; dota_friendly_color_g "0.7"; dota_friendly_color_r "0.3";
dota_enemy_color_b "0.4"; dota_enemy_color_g "0.4"; dota_enemy_color_r "0.8";

//Minimum time after the mouse enters the minimap before we accept a move command
dota_minimap_misclick_time "0.5"

//Camera grip custom key
bind "space" "+cameraControl";
alias "+cameraControl" "+cameragrip;+sixense_left_click";
alias "-cameraControl" "-cameragrip;-sixense_left_click";
 
dota_screen_shake "0" // Screen will no longer shake when certain are cast
dota_force_right_click_attack "1" // Can now right-click to deny
dota_disable_range_finder "0" // When spell is selected, range finder is shown
dota_minimap_hero_size "1000" // Increases the size of heroes on the minimap
dota_unit_fly_bonus_height "10"

//Summons are automatically added to your current control group when spawned
dota_player_add_summoned_to_selection "1"
 
// Force auto-attack off
dota_player_units_auto_attack "0"

//AUTOATTACK/HOLD (Proper Stop and Hold behaviour, basically Stop allows you to spam it to CS and Hold disables your auto-attack)
alias "autoAtkOn_Stop" "dota_player_units_auto_attack 1;dota_stop"
alias "autoAtkOff_Hold" "dota_player_units_auto_attack 0;dota_hold"
bind "S" "autoAtkOn_Stop"
bind "H" "autoAtkOff_Hold"
 
// Proper hold position behavior like in HoN
// "bind" "a" "dota_player_units_auto_attack 1;mc_attack"  // Attack enters aggressive stance
// "bind" "s" "dota_player_units_auto_attack 1;dota_stop"  // Stop enters aggressive stance
// "bind" "h" "dota_player_units_auto_attack 0;dota_hold"  // Hold enters passive stance

//Toggle orb autocast
//(one click button to toggle on every auto-cast ability, this works because no hero has more than 1 ability so it just tries to do it for all of them)
alias "orb_toggle" "dota_ability_autocast 0; dota_ability_autocast 1; dota_ability_autocast 2; dota_ability_autocast 3; dota_ability_autocast
 
4;dota_ability_autocast 5"
bind "5" "orb_toggle"
 
//////////////////////////
///     HEALTH BAR     ///
//////////////////////////
 
// Health Bar, makes hp changes instantaneous if set to 0 without quotations
dota_health_hurt_decay_time_max "0"   // Default is 0.8
dota_health_hurt_decay_time_min "0"  // Default is 0.3
dota_health_hurt_delay "0"                   // Default is 0.1
dota_pain_decay "0"                                   // Default is 0.8
dota_pain_factor "0"                                  // Default is 3
dota_pain_multiplier "0"                              // Default is 0.8
dota_pain_fade_rate "0"

// Health segmenting in the lifebar (default 250)
dota_health_per_vertical_marker "250"
 
// Opacity major healthbar divider (default 255, 0=invisible 255=opaque)
dota_health_marker_major_alpha "255"
 
// Opacity minor healthbar divider (default 128, 0=invisible 255=opaque)
dota_health_marker_minor_alpha "128"
 
// Health number above the lifebar on (default 1)
dota_hud_healthbar_number "1"
 
//////////////////////////
///       CAMERA       ///
//////////////////////////
 
// Bind button to center hero on one press
//bind "1" "+camera"
//alias +camera "+dota_camera_follow;+dota_camera_follow"
//alias -camera "-dota_camera_follow"
 
// Smart camera follow
//alias "+smart_follow" "+dota_camera_follow;dota_smart_camera_toggle"
//alias "-smart_follow" "alias +smart_follow +dota_camera_follow"
//dota_camera_smart_follow_offset_time 10000 // time in seconds you're allowed to have your hero off center (10000 should be sufficient)
//dota_camera_smart_follow_offset_reset 100 // not sure on this command (default 8.0)
//dota_camera_smart_follow_edge_distance 10000 // distance in units you're allowed to edge pan (maybe set it to 500-2000. Anything above 10000 will cover the whole dota map)
//dota_camera_smart_follow_drag_distance 10000 // distance in units you're allowed to drag with middle-mouse (500-2000 might be enough for some people)
//bind "9" "+smart_follow"
//bind "0" "dota_smart_camera_toggle"
 
// Decelerating map scroll (50 = insta stop, 1 = smooth slowdown, vanilla DotA would be 50)
// dota_camera_accelerate "10"
 
// Scrolling speed (vanilla DotA-like is 6500, default 3000)
// dota_camera_speed "3682"
 
// Disables mousewheel zoom (default 1)
dota_camera_disable_zoom "0"
 
// Top Rune, Camera Bind
//bind "F6" "dota_camera_setpos -2273.898682 1232.745483 982.072876"
 
// Bot Rune, Camera Bind
//bind "F7" "dota_camera_setpos 3035.773438 -2972.680176 966.072937"
 
bind "6" "runecheck"
alias "runecheck" "runechecktop"
alias "runechecktop" "dota_camera_set_lookatpos -2287 1817; alias runecheck runecheckbot"
alias "runecheckbot" "dota_camera_set_lookatpos 2960 -2353; alias runecheck runecheckhero"
alias "runecheckhero" "dota_select_all; dota_select_all; +dota_camera_follow; alias runecheck runechecktop" 
 
//DotaTV Camera Control
//alias +tv_direct "dota_spectator_mode 1; dota_camera_distance 1800"
//alias -tv_direct "dota_spectator_mode 0; dota_camera_distance 1134"
//bind j +tv_direct
//bind k "incrementvar dota_spectator_mode 0 3 1"
//bind l "incrementvar dota_camera_distance 1134 2034 300"
alias +temporaryFreeCam "dota_spectator_mode 1"
alias -temporaryFreeCam "dota_spectator_mode 3"
bind "KP_0" "+temporaryFreeCam"
 
 
//////////////////////////
///        PING        ///
//////////////////////////
 
net_graph "0"
net_graphinsetbottom "437"
net_graphinsetright "-130"
net_graphheight "64"
net_graphproportionalfont "0"
net_graphinsetleft "0"
net_graphpos "1"
net_graphtext "1"
 
dota_sf_game_end_delay "0" //0 delay on end score
dota_reset_camera_on_spawn "0"  //Puts camera over hero on any re-spawn, 0 disables
fps_max "60" //fps
 
//Performance Increase
cl_interp "0.033"                       // Interpolate object positions starting this many seconds in past                      (Default 0.055, Min 0.033)
cl_interp_ratio "1"                     // Multiplies final result of cl_interp                                                 (Default 2)
cl_smoothtime "0.01"                    // When errors occur smooth display over X time, 0 Disables                             (Default 0.1)
rate "80000"                            // Total amount of bandwidth Dota 2 may use (40000)                                         (Default 80000)
cl_updaterate "30"                      // Amount of updates recieved from server per second (20)                                 (Default 30, Max 30)
cl_cmdrate "30"                         // Amount of updates sent to server per second                                          (Default 30, Max 30)
cl_smooth "1"
cl_lagcompensation "1"
cl_pred_optimize "2"
 
snd_updateaudiocache

//////////////////////////
///   QUICK MESSAGES   ///
//////////////////////////
 
// Rosh timer
//bind "uparrow" "say_team Roshan;chatwheel_say 57"
// Current time
//bind "=" "chatwheel_say 57"
 
// Call missing
bind "leftarrow" "say_team missing top"
bind "rightarrow" "say_team missing bottom"
bind "downarrow" "say_team missing mid"
 
////////////////////////
///   QUICK COURIER  ///
////////////////////////
 
//Quick courier script
//(courier takes stuff from stash, comes to you, uses boost if off cd, and it doesn't de-select your hero)
alias "quick_courier" "dota_select_courier; dota_ability_execute 3; dota_ability_execute 4; dota_ability_execute 5; +dota_camera_follow"
bind "4" "quick_courier"
```
