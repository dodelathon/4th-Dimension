#****************************************************************************
#**  File     :  lua/modules/ui/help/tooltips.lua
#**  Author(s):  Ted Snook
#**
#**  Summary  :  Strings and images for the tooltips System
#**
#**  Copyright � 2006 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

Tooltips = {
    #*******************
    #** Orders Strings
    #*******************
    move = {
        title = "<LOC tooltipui0000>Move",
        description = "",
        keyID = "move",
    },
    attack = {
        title = "<LOC tooltipui0002>Attack",
        description = "",
        keyID = "attack",
    },
    patrol = {
        title = "<LOC tooltipui0004>Patrol",
        description = "",
        keyID = "patrol",
    },
    stop = {
        title = "<LOC tooltipui0006>Stop",
        description = "",
        keyID = "stop",
    },
    assist = {
        title = "<LOC tooltipui0008>Assist",
        description = "",
        keyID = "guard",
    },
    mode_hold = {
        title = "<LOC tooltipui0299>Hold Fire",
        description = "<LOC tooltipui0300>Units will not engage enemies",
        keyID = "mode",
    },
    mode_aggressive = {
        title = "<LOC tooltipui0301>Ground Fire",
        description = "<LOC tooltipui0302>Units will attack targeted positions rather attack-move",
        keyID = "mode",
    },
    mode_return_fire = {
        title = "<LOC tooltipui0303>Return Fire",
        description = "<LOC tooltipui0304>Units will move and engage normally",
        keyID = "mode",
    },
    mode_mixed = {
        title = "<LOC tooltipui0305>Mixed Modes",
        description = "<LOC tooltipui0306>You have selected units that have multiple fire states",
        keyID = "mode",
    },
    mode_hold_fire = {
        title = "<LOC tooltipui0299>Hold Fire",
        description = "<LOC tooltipui0300>Units will not engage enemies",
        keyID = "mode",
    },
    mode_hold_ground = {
        title = "<LOC tooltipui0421>Ground Fire",
        description = "<LOC tooltipui0422>Units will attack targeted positions rather than attack-move",
        keyID = "mode",
    },
    mode_aggressive = {
        title = "<LOC tooltipui0504>Aggressive",
        description = "<LOC tooltipui0505>Units will actively return fire and pursue enemies",
        keyID = "mode",
    },
    build_tactical = {
        title = "<LOC tooltipui0012>Build Missile",
        description = "<LOC tooltipui0013>Right-click to toggle Auto-Build",
    },
    build_tactical_auto = {
        title = "<LOC tooltipui0335>Build Missile (Auto)",
        description = "<LOC tooltipui0336>Auto-Build Enabled",
    },
    build_nuke = {
        title = "<LOC tooltipui0014>Build Strategic Missile",
        description = "<LOC tooltipui0015>Right-click to toggle Auto-Build",
    },
    build_nuke_auto = {
        title = "<LOC tooltipui0337>Build Strategic Missile (Auto)",
        description = "<LOC tooltipui0338>Auto-Build Enabled",
    },
    overcharge = {
        title = "<LOC tooltipui0016>Overcharge",
        description = "",
        keyID = "overcharge",
    },
    transport = {
        title = "<LOC tooltipui0018>Transport",
        description = "",
        keyID = "transport",
    },
    fire_nuke = {
        title = "<LOC tooltipui0020>Launch Strategic Missile",
        description = "",
        keyID = "nuke",
    },
    fire_billy = {
        title = "<LOC tooltipui0664>Launch Advanced Tactical Missile",
        description = "",
        keyID = "nuke",
    },
    build_billy = {
        title = "<LOC tooltipui0665>Build Advanced Tactical Missile",
        description = "<LOC tooltipui0013>",
    },
    fire_tactical = {
        title = "<LOC tooltipui0022>Launch Missile",
        description = "",
        keyID = "launch_tactical",
    },
    teleport = {
        title = "<LOC tooltipui0024>Teleport",
        description = "",
        keyID = "teleport",
    },
    ferry = {
        title = "<LOC tooltipui0026>Ferry",
        description = "",
        keyID = "ferry",
    },
    sacrifice = {
        title = "<LOC tooltipui0028>Sacrifice",
        description = "",
    },
    dive = {
        title = "<LOC tooltipui0030>Surface/Dive Toggle",
        description = "<LOC tooltipui0423>Right-click to toggle auto-surface",
        keyID = "dive",
    },
    dive_auto = {
        title = "<LOC tooltipui0030>Surface/Dive Toggle",
        description = "<LOC tooltipui0424>Auto-surface enabled",
        keyID = "dive",
    },
    dock = {
        title = "<LOC tooltipui0425>Dock",
        description = "<LOC tooltipui0477>Recall aircraft to nearest air staging facility for refueling and repairs",
        keyID = "dock",
    },
    deploy = {
        title = "<LOC tooltipui0478>Deploy",
        description = "",
    },
    reclaim = {
        title = "<LOC tooltipui0032>Reclaim",
        description = "",
        keyID = "reclaim",
    },
    capture = {
        title = "<LOC tooltipui0034>Capture",
        description = "",
        keyID = "capture",
    },
    repair = {
        title = "<LOC tooltipui0036>Repair",
        description = "",
        keyID = "repair",
    },
    pause = {
        title = "<LOC tooltipui0038>Pause Construction",
        description = "<LOC tooltipui0506>Pause/unpause current construction order",
        keyID = "pause_unit",
    },
    toggle_omni = {
        title = "<LOC tooltipui0479>Omni Toggle",
        description = "<LOC tooltipui0480>Turn the selected units omni on/off",
    },
    toggle_shield = {
        title = "<LOC tooltipui0040>Shield Toggle",
        description = "<LOC tooltipui0481>Turn the selected units shields on/off",
    },
    toggle_shield_dome = {
        title = "<LOC tooltipui0482>Shield Dome Toggle",
        description = "<LOC tooltipui0483>Turn the selected units shield dome on/off",
    },
    toggle_shield_personal = {
        title = "<LOC tooltipui0484>Personal Shield Toggle",
        description = "<LOC tooltipui0485>Turn the selected units personal shields on/off",
    },
    toggle_sniper = {
        title = "<LOC tooltipui0647>Sniper Toggle",
        description = "<LOC tooltipui0648>Toggle sniper mode. Range, accuracy and damage are enhanced, but rate of fire is decreased when enabled",
    },
    toggle_weapon = {
        title = "<LOC tooltipui0361>Weapon Toggle",
        description = "Switch firing mode",
    },
    toggle_jamming = {
        title = "<LOC tooltipui0044>Radar Jamming Toggle",
        description = "<LOC tooltipui0486>Turn the selected units radar jamming on/off",
    },
    toggle_intel = {
        title = "<LOC tooltipui0046>Intelligence Toggle",
        description = "<LOC tooltipui0487>Turn the selected units radar, sonar or Omni on/off",
    },
    toggle_radar = {
        title = "<LOC tooltipui0488>Radar Toggle",
        description = "<LOC tooltipui0489>Turn the selection units radar on/off",
    },
    toggle_sonar = {
        title = "<LOC tooltipui0490>Sonar Toggle",
        description = "<LOC tooltipui0491>Turn the selection units sonar on/off",
    },
    toggle_production = {
        title = "<LOC tooltipui0048>Production Toggle",
        description = "<LOC tooltipui0492>Turn the selected units production capabilities on/off",
    },
    toggle_area_assist = {
        title = "<LOC tooltipui0503>Area-Assist Toggle",
        description = "<LOC tooltipui0564>Turn the engineering area assist capabilities on/off",
    },
    toggle_scrying = {
        title = "<LOC tooltipui0494>Scrying Toggle",
        description = "<LOC tooltipui0495>Turn the selected units scrying capabilities on/off",
    },
    scry_target = {
        title = "<LOC tooltipui0496>Scry",
        description = "<LOC tooltipui0497>View an area of the map",
    },
    vision_toggle = {
        title = "<LOC tooltipui0498>Vision Toggle",
        description = "",
    },
    toggle_stealth_field = {
        title = "<LOC tooltipui0499>Stealth Field Toggle",
        description = "<LOC tooltipui0500>Turn the selected units stealth field on/off",
    },
    toggle_stealth_personal = {
        title = "<LOC tooltipui0501>Personal Stealth Toggle",
        description = "<LOC tooltipui0502>Turn the selected units personal stealth field on/off",
    },
    toggle_cloak = {
        title = "<LOC tooltipui0339>Personal Cloak",
        description = "<LOC tooltipui0342>Turn the selected units cloaking on/off",
    },

    toggle_generic = {
        title = "<LOC tooltipui0053>Pause Toggle",
        description = "",
    },
    toggle_special = {
        title = "<LOC tooltipui0054>Fire Black Sun",
        description = "<LOC tooltipui0343>End the Infinite War",
    },
    first_helptip = {
        title = "<LOC tooltipui0307>Help Tips",
        description = "<LOC tooltipui0344>Click on the question mark icon to view detailed suggestions on how to play Supreme Commander: Forged Alliance",
    },
    drone = {
        title = "<LOC tooltipui0411>Select Drone",
        description = "<LOC tooltipui0412>Right click to toggle auto-assist",
    },
    drone_station = {
        title = "<LOC tooltipui0655>Select Station",
        description = "<LOC tooltipui0656>Right click to toggle auto-assist",
    },
    drone_ACU = {
        title = "<LOC tooltipui0657>Select ACU",
        description = "<LOC tooltipui0658>Right click to toggle auto-assist",
    },
    drone_SACU = {
        title = "<LOC tooltipui0659>Select SACU",
        description = "<LOC tooltipui0660>Right click to toggle auto-assist",
    },
    avatar_Avatar_ACU = {
        title = "<LOC tooltipui0347>ACU",
        description = "<LOC tooltipui0348>Left-click to select your ACU. Right-click to select and zoom to your ACU.",
    },

    avatar_Engineer_t1 = {
        title = "<LOC tooltipui0349>Tech 1 Engineers",
        description = "<LOC tooltipui0350>Right-click to cycle through idle T1 Engineers",
    },

    avatar_Engineer_t2 = {
        title = "<LOC tooltipui0351>Tech 2 Engineers",
        description = "<LOC tooltipui0352>Right-click to cycle through idle T2 Engineers",
    },

    avatar_Engineer_t3 = {
        title = "<LOC tooltipui0353>Tech 3 Engineers",
        description = "<LOC tooltipui0354>Right-click to cycle through idle T3 Engineers",
    },
    avatar_Engineer_t4 = {
        title = "<LOC tooltipui0413>Sub Commanders",
        description = "<LOC tooltipui0414>Right-click to cycle through idle Sub Commanders",
    },
    avatar_toggle = {
        title = "<LOC tooltipui0363>Toggle Avatars",
        description = "<LOC tooltipui0364>Click here to toggle avatars on or off",
    },
    avatar_group = {
        title = "<LOC tooltipui0365>Group [#]",
        description = "<LOC tooltipui0366>Click or press %s to select this group",
    },
    marker_move = {
        title = "<LOC key_desc_0065>",
        description = "",
    },
    marker_rename = {
        title = "<LOC _Rename>Rename",
        description = "",
    },
    marker_delete = {
        title = "<LOC _Delete>Delete",
        description = "",
    },

    #**********************
    #** Chat Strings
    #**********************
    chat_config = {
        title = "<LOC tooltipui0385>Configure Chat",
        description = "<LOC tooltipui0386>Click here to configure various chat options.",
    },
    chat_pin = {
        title = "<LOC tooltipui0387>AutoHide (Enabled)",
        description = "<LOC tooltipui0388>Click here to disable automatic hiding of this window.",
    },
    chat_pinned = {
        title = "<LOC tooltipui0389>AutoHide (Disabled)",
        description = "<LOC tooltipui0390>Click here to enable automatic hiding of this window.",
    },
    chat_close = {
        title = "<LOC tooltipui0391>Close",
        description = "<LOC tooltipui0392>Click here to close this window.",
    },
    chat_camera = {
        title = "<LOC tooltipui0393>Camera Link Toggle",
        description = "<LOC tooltipui0394>Adds a camera link to the end of your messages",
    },
    chat_private = {
        title = "<LOC tooltipui0395>Private Message",
        description = "<LOC tooltipui0396>Click here to choose a private message recipient.",
    },
    chat_allies = {
        title = "<LOC tooltipui0397>Allied Chat",
        description = "<LOC tooltipui0398>Click here to send your message to all of your allies.",
    },
    chat_all = {
        title = "<LOC tooltipui0399>All Chat",
        description = "<LOC tooltipui0400>Click here to send your message to all players.",
    },
    chat_filter = {
        title = "<LOC tooltipui0401>Chat Filters",
        description = "<LOC tooltipui0402>Show or hide messages from players",
    },
    chat_color = {
        title = "<LOC tooltipui0403>Chat Color",
        description = "<LOC tooltipui0404>Change the font color for various messages",
    },
    chat_fontsize = {
        title = "<LOC tooltipui0405>Font Size",
        description = "<LOC tooltipui0406>Set the font size of your messages",
    },
    chat_fadetime = {
        title = "<LOC tooltipui0407>Fade Time",
        description = "<LOC tooltipui0408>Set the fade time of the chat window",
    },
    chat_alpha = {
        title = "<LOC tooltipui0409>Window Alpha",
        description = "<LOC tooltipui0410>Set the alpha of the chat window",
    },
    chat_reset = {
        title = "<LOC tooltipui0540>Reset Chat Window",
        description = "<LOC tooltipui0541>Resets the position and layout of the chat window",
    },
    minimap_reset = {
        title = "<LOC tooltipui0649>Reset Minimap Window",
        description = "<LOC tooltipui0650>Resets the position and layout of the minimap window",
    },

    toggle_cartographic = {
        title = "<LOC tooltipui0415>Cartographic Mode",
        description = "<LOC tooltipui0416>Display the terrain using a topographic visualization",
    },
    toggle_resource_icons = {
        title = "<LOC tooltipui0417>View Resources",
        description = "<LOC tooltipui0418>Toggle the display of resource locations",
    },
    toggle_mini_expanded_options = {
        title = "<LOC tooltipui0419>Toggle Option Buttons",
        description = "<LOC tooltipui0420>Toggles option and MFD buttons on or off.",
    },

    #**********************
    #** AI Strings
    #**********************
    aitype_easy = {
        title = "<LOC lobui_0347>AI: Easy",
        description = "<LOC lobui_0348>An AI for beginners",
    },
    aitype_medium = {
        title = "<LOC lobui_0349>AI: Normal",
        description = "<LOC lobui_0350>An average AI",
    },
    aitype_supreme = { # needed?
        title = "<LOC lobui_0351>AI: Supreme",
        description = "<LOC lobui_0352>A very difficult AI",
    },
    aitype_unleashed = { # needed?
        title = "<LOC lobui_0353>AI: Unleashed",
        description = "<LOC lobui_0354>The most difficult AI that follows its own rules",
    },
    aitype_adaptive = {
        title = "<LOC lobui_0368>AI: Adaptive",
        description = "<LOC lobui_0369>A very difficult AI that shifts between offense and defense as the game progresses",
    },
    aitype_rush = {
        title = "<LOC lobui_0360>AI: Rush",
        description = "<LOC lobui_0361>A very difficult aggressive AI that balances land, air and naval forces",
    },
    aitype_rushair = {
        title = "<LOC lobui_0364>AI: Air Rush",
        description = "<LOC lobui_0365>A very difficult aggressive AI that prefers air forces",
    },
    aitype_rushland = {
        title = "<LOC lobui_0362>AI: Land Rush",
        description = "<LOC lobui_0363>A very difficult aggressive AI that prefers land forces",
    },
    aitype_rushnaval = {
        title = "<LOC lobui_0377>AI: Naval Rush",
        description = "<LOC lobui_0378>A very difficult aggressive AI that prefers naval forces",
    },
    aitype_turtle = {
        title = "<LOC lobui_0372>AI: Turtle",
        description = "<LOC lobui_0373>A very difficult AI that favors defense and careful expansion",
    },
    aitype_tech = {
        title = "<LOC lobui_0370>AI: Tech",
        description = "<LOC lobui_0371>A very difficult AI that aggressively persues high tier units",
    },
    aitype_adaptivecheat = {
        title = "<LOC lobui_0379>AIx: Adaptive",
        description = "<LOC lobui_0387>An extremely difficult cheating AI that shifts between offense and defense as the game progresses",
    },
    aitype_rushcheat = {
        title = "<LOC lobui_0380>AIx: Rush",
        description = "<LOC lobui_0388>An extremely difficult cheating AI that balances land, air and naval forces",
    },
    aitype_rushaircheat = {
        title = "<LOC lobui_0381>AIx: Air Rush",
        description = "<LOC lobui_0389>An extremely difficult cheating AI that prefers air forces",
    },
    aitype_rushlandcheat = {
        title = "<LOC lobui_0382>AIx: Land Rush",
        description = "<LOC lobui_0390>An extremely difficult cheating AI that prefers land forces",
    },
    aitype_rushnavalcheat = {
        title = "<LOC lobui_0383>AIx: Naval Rush",
        description = "<LOC lobui_0386>An extremely difficult cheating AI that prefers naval forces",
    },
    aitype_turtlecheat = {
        title = "<LOC lobui_0384>AIx: Turtle",
        description = "<LOC lobui_0391>An extremely difficult cheating AI that favors defense and careful expansion",
    },
    aitype_techcheat = {
        title = "<LOC lobui_0385>AIx: Tech",
        description = "<LOC lobui_0392>An extremely difficult cheating AI that aggressively persues high tier units",
    },
    aitype_random = {
        title = "<LOC lobui_0374>AI: Random",
        description = "<LOC lobui_0375>Randomly chooses an AI type",
    },
    aitype_randomcheat = {
        title = "<LOC lobui_0393>AIx: Random",
        description = "<LOC lobui_0394>Randomly chooses one of the cheating AI types",
    },


    #**********************
    #** Economy Strings
    #**********************
    mass_rate = {
        title = "<LOC tooltipui0099>Economic Mass Rate",
        description = "<LOC tooltipui0100>Toggle between income-per-second and efficiency rating values",
    },
    energy_rate = {
        title = "<LOC tooltipui0542>Economic Energy Rate",
        description = "<LOC tooltipui0543>Toggle between income per second and efficiency rating values",
    },
    mass_storage = {
        title = "<LOC tooltipui0101>Mass Storage",
        description = "<LOC tooltipui0102>Current and maximum Mass storage values",
    },
    energy_storage = {
        title = "<LOC tooltipui0544>Energy Storage",
        description = "<LOC tooltipui0545>Current and maximum Energy storage values",
    },
    mass_extended_display = {
        title = "<LOC tooltipui0103>Mass Income/Expense",
        description = "<LOC tooltipui0104>Toggle display of Mass being generated and spent per second",
    },
    energy_extended_display = {
        title = "<LOC tooltipui0546>Energy Income and Expense",
        description = "<LOC tooltipui0547>Toggle display Energy generated and spent per second",
    },
    overall = {
        title = "<LOC tooltipui0129>Build Efficiency",
        description = "<LOC tooltipui0130>Your overall Economic Efficiency",
    },


    #**********************
    #** Options Strings
    #**********************
    options_wheel_sensitivity = {
        title = "<LOC OPTIONS_0001>Zoom Wheel Sensitivity",
        description = "<LOC OPTIONS_0035>Sets the Zoom Speed when using the Mouse Wheel",
    },
    options_quick_exit = {
        title = "<LOC OPTIONS_0125>Quick Exit",
        description = "<LOC OPTIONS_0126>When close box or alt-f4 are pressed, no confirmation dialog is shown",
    },
    options_help_prompts = {
        title = "<LOC OPTIONS_0002>Help Prompts",
        description = "<LOC OPTIONS_0036>Toggles display of In-game Help and Tutorial Prompts",
    },
    options_mainmenu_bgmovie = {
        title = "<LOC OPTIONS_0208>Main Menu Background Movie",
        description = "<LOC OPTIONS_0209>Toggles the movie playing in the background of the main menu",
    },
    options_reset_help_prompts = {
        title = "<LOC OPTIONS_0080>Reset Help Prompts",
        description = "<LOC OPTIONS_0081>Sets all In-game Help Prompts as unread",
    },
     options_stratview = {
        title = "<LOC OPTIONS_0113>Strategic View",
        description = "<LOC OPTIONS_0114>Sets whether or not the mini-map is automatically on or off",
    },
      options_strat_icons_always_on = {
        title = "<LOC OPTIONS_0115>Always Render Strategic Icons",
        description = "<LOC OPTIONS_0116>Strategic icons are always shown, regardless of zoom distance",
    },
      options_uvd_format = {
        title = "<LOC OPTIONS_0107>Construction Tooltip Information",
        description = "<LOC OPTIONS_0118>Shows full, partial or no description when the unit icon is moused over",
    },
     options_mp_taunt_head = {
        title = "<LOC OPTIONS_0119>MP Taunt Head",
        description = "<LOC OPTIONS_0120>Select which 3D head is displayed when taunts are used in multiplayer",
    },
    options_mp_taunt_head_enabled = {
        title = "<LOC OPTIONS_0102>Multiplayer Taunts",
        description = "<LOC OPTIONS_0122>Turns taunts on and off in multiplayer",
    },
    options_dual_mon_edge = {
        title = "<LOC OPTIONS_0003>Dual Monitor Screen Edge",
        description = "<LOC OPTIONS_0037>Toggles the Edge between 2 Monitors as blocking Mouse Movement or allowing a Cursor Transition",
    },
    options_tooltips = {
        title = "<LOC OPTIONS_0005>Display Tooltips",
        description = "<LOC OPTIONS_0039>Toggles whether or not Tooltips are displayed",
    },
    options_tooltip_delay = {
        title = "<LOC OPTIONS_0078>Tooltip Delay",
        description = "<LOC OPTIONS_0079>Sets the Delay before Tooltips are displayed",
    },
    options_persistent_built_mode = {
        title = "<LOC OPTIONS_0205>Persistent Build Mode",
        description = "<LOC OPTIONS_0206>Toggles whether build mode is cancelled after pressing a key for a unit",
    },
    options_econ_warnings = {
        title = "<LOC OPTIONS_0076>Economy Warnings",
        description = "<LOC OPTIONS_0077>Shows automatic alerts when the economy is performing poorly",
    },
    options_ui_animation = {
        title = "<LOC OPTIONS_0062>UI Animation",
        description = "<LOC OPTIONS_0063>Toggles whether or not Interface Animations are shown",
    },
    options_primary_adapter = {
        title = "<LOC OPTIONS_0010>Primary Adapter",
        description = "<LOC OPTIONS_0045>Sets the Resolution or Display Mode for the Primary Monitor (1024x768 = fastest)",
    },
    options_fidelity_presets = {
        title = "<LOC OPTIONS_0127>Fidelity Presets",
        description = "<LOC OPTIONS_0128>Preset values for video options (low = fastest)",
    },
    options_bg_image = {
        title = "<LOC OPTIONS_0017>Background Image",
        description = "<LOC OPTIONS_0048>Toggles display of the Image under the World Map (off = fastest)",
    },
    options_fidelity = {
        title = "<LOC OPTIONS_0018>Fidelity",
        description = "<LOC OPTIONS_0049>Sets Rendering Fidelity for Objects, Terrain, and Water (low = fastest)",
    },
    options_shadow_quality = {
        title = "<LOC OPTIONS_0024>Shadow Fidelity",
        description = "<LOC OPTIONS_0056>Sets Rendering Fidelity for Shadows (off = fastest)",
    },
    options_antialiasing = {
        title = "<LOC OPTIONS_0015>Anti-Aliasing",
        description = "<LOC OPTIONS_0050>Toggles Full Scene Anti-Aliasing (off = fastest)",
    },
    options_texture_level = {
        title = "<LOC OPTIONS_0019>Texture Detail",
        description = "<LOC OPTIONS_0051>Sets the number of Mip Levels that are not Rendered (low = fastest)",
    },
    options_level_of_detail = {
        title = "<LOC OPTIONS_0129>Level Of Detail",
        description = "<LOC OPTIONS_0130>Set the rate at which objects LOD out (low = fastest)",
    },
    options_master_volume = {
        title = "<LOC OPTIONS_0028>Master Volume",
        description = "<LOC OPTIONS_0061>Sets the Games overall Volume Level",
    },
    options_fx_volume = {
        title = "<LOC OPTIONS_0026>FX Volume",
        description = "<LOC OPTIONS_0059>Sets the Volume of the Game Sound Effects",
    },
    options_music_volume = {
        title = "<LOC OPTIONS_0027>Music Volume",
        description = "<LOC OPTIONS_0060>Sets the Volume of the Game Music",
    },
    options_ui_volume = {
        title = "<LOC OPTIONS_0064>Interface Volume",
        description = "<LOC OPTIONS_0065>Sets the Volume of all Interface Sounds",
    },
    options_vo_volume = {
        title = "<LOC OPTIONS_0066>VO Volume",
        description = "<LOC OPTIONS_0067>Sets the Volume of all Voice and Movie Sounds",
    },
    options_credits = {
        title = "<LOC OPTIONS_0073>Credits",
        description = "<LOC OPTIONS_0074>View the Game Credits",
    },
    options_eula = {
        title = "<LOC OPTIONS_0086>EULA",
        description = "<LOC OPTIONS_0087>View the End-User License Agreement",
    },
    options_show_help_prompts_now = {
        title = "<LOC OPTIONS_0083>Show Help Now",
        description = "<LOC OPTIONS_0084>View Help Prompts",
    },

    options_tab_gameplay = {
        title = "<LOC OPTIONS_0131>Gameplay",
        description = "<LOC OPTIONS_0132>View and adjust Game options",
    },

    options_tab_video = {
        title = "<LOC OPTIONS_0133>Video",
        description = "<LOC OPTIONS_0134>View and adjust Display and Graphic options",
    },

    options_tab_sound = {
        title = "<LOC OPTIONS_0135>Sound",
        description = "<LOC OPTIONS_0136>View and adjust Sound and Volume options",
    },

    options_tab_about = {
        title = "<LOC OPTIONS_0137>About",
        description = "<LOC OPTIONS_0138>View the EULA and Credits",
    },

    options_tab_apply = {
        title = "<LOC OPTIONS_0139>Apply",
        description = "<LOC OPTIONS_0140>Save any Changes",
    },

    options_reset_all = {
        title = "<LOC OPTIONS_0141>Reset",
        description = "<LOC OPTIONS_0142>Restore original Game Settings",
    },
    map_select_sizeoption = {
        title = "<LOC OPTIONS_0143>Map Size",
        description = "",
    },
    map_select_size = {
        title = "<LOC OPTIONS_0143>Map Size",
        description = "<LOC OPTIONS_0144>Sort by Battlefield size",
    },
    map_select_maxplayers = {
        title = "<LOC OPTIONS_0145>Supported Players",
        description = "",
    },
    map_select_supportedplayers = {
        title = "<LOC OPTIONS_0145>Supported Players",
        description = "<LOC OPTIONS_0146>Sort by the maximum number of Players allowed",
    },
    options_vsync = {
        title = "<LOC OPTIONS_0149>Vertical Sync",
        description = "<LOC OPTIONS_0150>Sync to vertical refresh of monitor",
    },
    options_subtitles = {
        title = "<LOC OPTIONS_0151>Display Subtitles",
        description = "<LOC OPTIONS_0152>Toggles the display of subtitles during movies",
    },
    options_world_border = {
        title = "<LOC OPTIONS_0224>Display World Border",
        description = "<LOC OPTIONS_0225>Toggles the display of the holographic image surrounding the world",
    },
    options_screen_edge_pans_main_view = {
        title = "<LOC OPTIONS_0153>Screen Edge Pans Main View",
        description = "<LOC OPTIONS_0154>Toggles the ability to pan the main map view by moving the mouse to the edge of the screen in full screen mode",
    },
    options_arrow_keys_pan_main_view = {
        title = "<LOC OPTIONS_0155>Arrow Keys Pan Main View",
        description = "<LOC OPTIONS_0156>Toggles the ability to pan the main map view by holding down the arrow keys",
    },
    options_secondary_adapter = {
        title = "<LOC OPTIONS_0147>Secondary Adapter",
        description = "<LOC OPTIONS_0157>If available on your system, sets the resolution or display mode for the secondary monitor (full screen only)",
    },
    options_keyboard_pan_accelerate_multiplier = {
        title = "<LOC OPTIONS_0170>Accelerated Pan Speed Multiplier",
        description = "<LOC OPTIONS_0171>This multiplies the pan speed of camera when the ctrl key is held down",
    },
    options_keyboard_pan_speed = {
        title = "<LOC OPTIONS_0172>Pan Speed",
        description = "<LOC OPTIONS_0173>This dictates how fast the map scrolls when pressing the arrow keys or moving your mouse to the edge of the screen",
    },
    options_keyboard_rotate_speed = {
        title = "<LOC OPTIONS_0174>Keyboard Rotation Speed",
        description = "<LOC OPTIONS_0175>This dictates how fast the map rotates",
    },
    options_keyboard_rotate_accelerate_multiplier = {
        title = "<LOC OPTIONS_0176>Accelerated Keyboard Rotate Speed Multiplier",
        description = "<LOC OPTIONS_0177>This multiplies the rotation speed of the camera when the ctrl key is held down",
    },
    options_lock_fullscreen_cursor_to_window = {
        title = "<LOC OPTIONS_0178>Lock Full Screen Cursor to Window",
        description = "<LOC OPTIONS_0179>This will prevent the cursor from going outside of the game window while in full screen mode",
    },
    options_kill_confirm = {
        title = "<LOC OPTIONS_0180>Confirm Unit Self-Destruction",
        description = "<LOC OPTIONS_0181>This will prompt you before issuing the self-destruction order",
    },
    options_render_skydome = {
        title = "<LOC OPTIONS_0182>Render Sky",
        description = "<LOC OPTIONS_0183>Toggles rendering of the sky when the camera is tilted (off = fastest)",
    },
    options_bloom_render = {
        title = "<LOC OPTIONS_0184>Bloom Render",
        description = "<LOC OPTIONS_0185>Toggles a glow type effect that is used on many weapon effects and some UI elements (off = fastest)",
    },
    options_use_mydocuments = {
        title = "<LOC OPTIONS_0186>Save Games and Replays in My Documents",
        description = "<LOC OPTIONS_0187>When on, changes the location where save games and replays get stored (My Documents\\My Games\\Supreme Commander Forged Alliance\\). Note that you will only see save games and replays in the active directory. Also, files saved to the alternate location will not be removed when the game is uninstalled.",
    },
    options_display_eta = {
        title = "<LOC OPTIONS_0215>Show Waypoint ETAs",
        description = "<LOC OPTIONS_0216>Toggles the display of ETA numbers when waypoint lines are visible",
    },
    options_accept_build_templates = {
        title = "<LOC OPTIONS_0212>Accept Build Templates",
        description = "<LOC OPTIONS_0217>Allows other players to send you build templates over the network",
    },
    options_show_attached_unit_lifebars = {
        title = "<LOC OPTIONS_0222>Show Lifebars of Attached Units",
        description = "<LOC OPTIONS_0219>Toggle the visibility of lifebars of on screen units (lifebars will still show in tooltip information)",
    },
    options_skin_change_on_start = {
        title = "<LOC OPTIONS_0211>Use Factional UI Skin",
        description = "<LOC OPTIONS_0220>When on, the UI skin will change to match the faction you are playing",
    },

    #**********************
    #** Lobby Strings
    #**********************
    Lobby_Advanced = {
        title = "<LOC tooltipui0167>Advanced Options",
        description = "<LOC tooltipui0168>Sets Advanced Options for this Map",
    },
    Lobby_Ready = {
        title = "<LOC tooltipui0291>Ready",
        description = "<LOC tooltipui0292>Click here when Ready to play",
    },
    Lobby_BuildRestrict_Option = {
        title = "<LOC tooltipui0666>Build Restrictions Enabled",
        description = "<LOC tooltipui0667>The host has enabled build restrictions. Be sure to check the restriction manager.",
    },
    Lobby_Mod_Option = {
        title = "<LOC tooltipui0668>Mods Enabled",
        description = "<LOC tooltipui0669>The host has enabled mods. Be sure to check the mod manager.",
    },
    Lobby_Mods = {
        title = "<LOC tooltipui0169>Mod Manager",
        description = "<LOC tooltipui0170>View, enable and disable all available Mods",
    },
    Lobby_Load = {
        title = "<LOC tooltipui0171>Load",
        description = "<LOC tooltipui0172>Load a previously saved skirmish game",
    },
    Lobby_Launch = {
        title = "<LOC tooltipui0173>Launch Game",
        description = "<LOC tooltipui0174>Launch the Game with the Current Settings",
    },
    Lobby_Launch_Waiting = {
        title = "<LOC tooltipui0565>Unable To Launch",
        description = "<LOC tooltipui0566>Waiting for all players to check the ready checkbox",
    },
    Lobby_Back = {
        title = "<LOC tooltipui0175>Back",
        description = "<LOC tooltipui0176>Go Back to the Main Menu",
    },
    Lobby_Add_AI = {
        title = "<LOC tooltipui0177>Add AI",
        description = "<LOC tooltipui0178>Click here to Add an AI Player",
    },
    Lobby_Del_AI = {
        title = "<LOC tooltipui0179>Delete AI",
        description = "<LOC tooltipui0180>Click here to Delete this AI Player",
    },
    Lobby_Kick = {
        title = "<LOC tooltipui0181>Kick",
        description = "<LOC tooltipui0182>Click here to Eject this Player from the Game",
    },
    Lobby_Team_Spawn = {
        title = "<LOC lobui_0088>",
        description = "<LOC lobui_0089>",
    },
    Lobby_Gen_ShareResources = {
        title = "<LOC tooltipui0107>Share Resources",
        description = "<LOC tooltipui0108>Determines whether Allies share Resources with each other",
    },
    Lobby_Gen_ShareUnits = {
        title = "<LOC tooltipui0109>Share Units",
        description = "<LOC tooltipui0110>Specifies how much control Teams have over each others Units",
    },
    Lobby_Gen_Deployment = {
        title = "<LOC tooltipui0111>Deployment",
        description = "<LOC tooltipui0112>Determines your Starting Forces",
    },
    Lobby_Gen_Victory = {
        title = "<LOC tooltipui0113>Victory Conditions",
        description = "<LOC lobui_0121>",
    },
    Lobby_Gen_Fog = {
        title = "<LOC tooltipui0115>Fog of War",
        description = "<LOC lobui_0113>",
    },
    Lobby_Gen_Cap = {
        title = "<LOC tooltipui0117>Unit Cap",
        description = "<LOC tooltipui0118>Set individual Army unit limit",
    },
    Lobby_Gen_CheatsEnabled = {
        title = "<LOC tooltipui0345>Cheating",
        description = "<LOC tooltipui0346>Enable or disable Cheats in the game",
    },
        Lobby_Gen_Timeouts = {
        title = "<LOC tooltipui0357>Timeouts",
        description = "<LOC tooltipui0358>Set number of Pauses each Player is allowed",
    },
        Lobby_Gen_GameSpeed = {
        title = "<LOC tooltipui0359>Game Speed",
        description = "<LOC tooltipui0360>Set how quickly the Game runs",
    },
    Lobby_Team_Lock = {
        title = "<LOC tooltipui0119>Teams",
        description = "<LOC lobui_0097>",
    },
        Lobby_Gen_Civilians = {
        title = "<LOC tooltipui0367>Civilians",
        description = "<LOC lobui_0280>Set civilian unit behavior",
    },
        Lob_CivilianAlliance_enemy = {
        title = "<LOC tooltipui0368>Enemy",
        description = "<LOC lobui_0281>Civilian units will attack",
    },
        Lob_CivilianAlliance_neutral = {
        title = "<LOC tooltipui0369>Neutral",
        description = "<LOC lobui_0282>Civilian units will ignore other factions",
    },
        Lob_CivilianAlliance_removed = {
        title = "<LOC tooltipui0370>Removed",
        description = "<LOC lobui_0283>No civilian units are present",
    },
    Lobby_NoRushOption = {
        title = "<LOC OPTIONS_0188>No Rush Option",
        description = "<LOC OPTIONS_0189>Set a time in which players may not expand past their initial starting area",
    },
    lob_NoRushOption_Off = {
        title = "<LOC OPTIONS_0190>No Time",
        description = "<LOC OPTIONS_0191>You may expand past your starting area immediately",
    },
    lob_NoRushOption_5 = {
        title = "<LOC OPTIONS_0192>5 Minutes",
        description = "<LOC OPTIONS_0193>You must stay in your starting area for 5 minutes",
    },
    lob_NoRushOption_10 = {
        title = "<LOC OPTIONS_0194>10 Minutes",
        description = "<LOC OPTIONS_0195>You must stay in your starting area for 10 minutes",
    },
    lob_NoRushOption_20 = {
        title = "<LOC OPTIONS_0196>20 Minutes",
        description = "<LOC OPTIONS_0197>You must stay in your starting area for 20 minutes",
    },
    Lobby_Gen_DisplayScores = {
        title = "<LOC OPTIONS_0198>Display Scores",
        description = "<LOC OPTIONS_0199>Turn the in game display of army scores on or off",
    },
    lob_DisplayScores_off = {
        title = "<LOC OPTIONS_0200>No Scores",
        description = "<LOC OPTIONS_0201>No scores will be displayed until the game is over",
    },
    lob_DisplayScores_on = {
        title = "<LOC OPTIONS_0202>Scores On",
        description = "<LOC OPTIONS_0203>The scores are displayed during gameplay",
    },
    Lobby_Prebuilt_Units = {
        title = "<LOC lobui_0310>Prebuilt Units",
        description = "<LOC lobui_0326>Each army will start with a basic prebuilt base",
        image = ""
    },
    lob_PrebuiltUnits_Off = {
        title = "<LOC lobui_0312>Off",
        description = "<LOC lobui_0327>No prebuilt base",
    },
    lob_PrebuiltUnits_On = {
        title = "<LOC lobui_0314>On",
        description = "<LOC lobui_0328>Prebuilt bases are on",
    },
    lob_slot = {
        title = "<LOC tooltipui0121>Player Slot",
        description = "<LOC tooltipui0122>Context sensitive menu which allows you to modify the player or AI for a given slot",
    },
    lob_color = {
        title = "<LOC tooltipui0123>Color",
        description = "<LOC tooltipui0124>Choose your Team Color",
    },
    lob_faction = {
        title = "<LOC tooltipui0125>Faction",
        description = "<LOC tooltipui0126>Choose your Team Faction",
    },
    lob_team = {
        title = "<LOC tooltipui0127>Team",
        description = "<LOC tooltipui0128>Players with the same Team will start off Allied with each other",
    },
    lob_select_map = {
        title = "<LOC tooltipui0332>Game Options",
        description = "<LOC tooltipui0333>Choose a map to play on and adjust game settings",
    },
    lob_cybran = {
        title = "<LOC _Cybran>",
        description = ''
    },
    lob_uef = {
        title = "<LOC _UEF>",
        description = ''
    },
    lob_aeon = {
        title = "<LOC _Aeon>",
        description = ''
    },
    lob_seraphim = {
        title = "<LOC _Seraphim>",
        description = ''
    },
    lob_random = {
        title = '<LOC lobui_0090>',
        description = '',
    },
    lob_team_none = {
        title = '<LOC tooltipui0631>No Team',
        description = '',
    },
    lob_team_one = {
        title = '<LOC tooltipui0632>Team 1',
        description = '',
    },
    lob_team_two = {
        title = '<LOC tooltipui0633>Team 2',
        description = '',
    },
    lob_team_three = {
        title = '<LOC tooltipui0634>Team 3',
        description = '',
    },
    lob_team_four = {
        title = '<LOC tooltipui0635>Team 4',
        description = '',
    },
    lob_GameSpeed_normal = {
        title = '<LOC lobui_0260>',
        description = '<LOC lobui_0261>',
    },
    lob_GameSpeed_fast = {
        title = '<LOC lobui_0262>',
        description = '<LOC lobui_0263>',
    },
    lob_GameSpeed_adjustable = {
        title = '<LOC lobui_0264>',
        description = '<LOC lobui_0265>',
    },
    lob_UnitCap_100 = {
        title = '<LOC lobui_0168>',
        description = '<LOC lobui_0169>',
    },
    lob_UnitCap_250 = {
        title = '<LOC lobui_0170>',
        description = '<LOC lobui_0171>',
    },
    lob_UnitCap_500 = {
        title = '<LOC lobui_0172>',
        description = '<LOC lobui_0173>',
    },
    lob_UnitCap_750 = {
        title = '<LOC lobui_0174>',
        description = '<LOC lobui_0175>',
    },
    lob_UnitCap_1000 = {
        title = '<LOC lobui_0235>',
        description = '<LOC lobui_0236>',
    },
    lob_FogOfWar_explored = {
        title = '<LOC lobui_0114>',
        description = '<LOC lobui_0115>',
    },
    lob_FogOfWar_unexplored = {
        title = '<LOC lobui_0116>',
        description = '<LOC lobui_0117>',
    },
    lob_FogOfWar_none = {
        title = '<LOC lobui_0118>',
        description = '<LOC lobui_0119>',
    },
    lob_Victory_demoralization = {
        title = '<LOC lobui_0122>',
        description = '<LOC lobui_0123>',
    },
    lob_Victory_domination = {
        title = '<LOC lobui_0124>',
        description = '<LOC lobui_0125>',
    },
    lob_Victory_eradication = {
        title = '<LOC lobui_0126>',
        description = '<LOC lobui_0127>',
    },
    lob_Victory_sandbox = {
        title = '<LOC lobui_0128>',
        description = '<LOC lobui_0129>',
    },
    lob_Timeouts_0 = {
        title = '<LOC lobui_0244>',
        description = '<LOC lobui_0245>',
    },
    lob_Timeouts_3 = {
        title = '<LOC lobui_0246>',
        description = '<LOC lobui_0247>',
    },
    ['lob_Timeouts_-1'] = {
        title = '<LOC lobui_0248>',
        description = '<LOC lobui_0249>',
    },
    ['Give Units'] = {
        title = '<LOC tooltips_0000>Give Units',
        description = '',
    },
    ['Give Resources'] = {
        title = '<LOC tooltips_0001>Give Resources',
        description = '',
    },
    lob_CheatsEnabled_false = {
        title = '<LOC _Off>',
        description = '<LOC lobui_0210>',
    },
    lob_CheatsEnabled_true = {
        title = '<LOC _On>',
        description = '<LOC lobui_0211>',
    },
    lob_TeamSpawn_random = {
        title = '<LOC lobui_0090>',
        description = '<LOC lobui_0091>',
    },
    lob_TeamSpawn_fixed = {
        title = '<LOC lobui_0092>',
        description = '<LOC lobui_0093>',
    },
    lob_TeamLock_locked = {
        title = '<LOC lobui_0098>',
        description = '<LOC lobui_0099>',
    },
    lob_TeamLock_unlocked = {
        title = '<LOC lobui_0100>',
        description = '<LOC lobui_0101>',
    },
    lob_describe_observers = {
        title = "<LOC lobui_0284>Observers",
        description = "<LOC lobui_0285>Observers are clients connected to the lobby who will not participate directly in gameplay. Right click an observers name to remove an observer from the lobby.",
    },
    lob_observers_allowed = {
        title = "<LOC lobui_0286>Allow Observers",
        description = "<LOC lobui_0287>If checked, participants can join the game as an impartial observer (Unchecking this option will boot potential observers from the lobby)",
    },
    lob_become_observer = {
        title = "<LOC lobui_0288>Become Observer",
        description = "<LOC lobui_0289>When clicked, a player will become an observer",
    },
    lob_CivilianAlliance_enemy = {
        title = "<LOC lobui_0293>",
        description = "<LOC lobui_0294>",
    },
    lob_CivilianAlliance_neutral = {
        title = "<LOC lobui_0295>",
        description = "<LOC lobui_0296>",
    },
    lob_CivilianAlliance_removed = {
        title = "<LOC lobui_0297>",
        description = "<LOC lobui_0298>",
    },
    lob_RestrictedUnits = {
        title = "<LOC lobui_0332>Unit Manager",
        description = "<LOC lobui_0333>View and set unit restrictions for this game (The AI may behave unexpectedly with these options set)",
    },
    lob_RestrictedUnitsClient = {
        title = "<LOC lobui_0337>Unit Manager",
        description = "<LOC lobui_0338>View what units are allowed to be played in game",
    },

    #**********************
    #** Profile Strings
    #**********************
    Profile_name = {
        title = "<LOC tooltipui0183>Name",
        description = "<LOC tooltipui0184>The Name of this Profile",
    },
    Profile_create = {
        title = "<LOC tooltipui0185>Create",
        description = "<LOC tooltipui0186>Generate a New Profile",
    },
    Profile_cancel = {
        title = "<LOC tooltipui0187>Cancel",
        description = "<LOC tooltipui0188>Exit this screen without changing Profiles",
    },
    Profile_delete = {
        title = "<LOC tooltipui0189>Delete",
        description = "<LOC tooltipui0190>Delete the Selected Profile",
    },
    Profile_ok = {
        title = "<LOC tooltipui0191>Ok",
        description = "<LOC tooltipui0192>Continue with the Selected Profile",
    },
    Profile_profilelist = {
        title = "<LOC tooltipui0193>Profile List",
        description = "<LOC tooltipui0194>All saved Profiles",
    },

    #**********************
    #** Options Strings
    #**********************
    exit_menu = {
        title = "<LOC tooltipui0056>Menu",
        description = "<LOC tooltipui0057>Opens the Game Menu",
        keyID = "toggle_main_menu",
    },
    objectives = {
        title = "<LOC tooltipui0058>Objectives",
        description = "<LOC tooltipui0059>Shows all current and completed Objectives",
        keyID = "toggle_objective_screen",
    },
    map_info = {
        title = "<LOC sel_map_0000>",
        description = "",
        keyID = "toggle_objective_screen",
    },
    inbox = {
        title = "<LOC tooltipui0060>Transmission Log",
        description = "<LOC tooltipui0061>Replay any Received Transmissions",
        keyID = "toggle_transmission_screen",
    },
    score = {
        title = "<LOC tooltipui0062>Score",
        description = "<LOC tooltipui0063>Shows the Score, # of Units, and Elapsed Time",
        keyID = "toggle_score_screen",
    },
    diplomacy = {
        title = "<LOC tooltipui0064>Diplomacy",
        description = "<LOC tooltipui0065>Access all Diplomacy Options",
        keyID = "toggle_diplomacy_screen",
    },
    options_Pause = {
        title = "<LOC tooltipui0066>Pause",
        description = "",
        --description = "<LOC tooltipui0067>Pause Supreme Commander: Forged Alliance",
    },
    options_Play = {
        title = "<LOC tooltipui0098>Play",
        description = "",
        --description = "<LOC tooltipui0334>Resume Supreme Commander: Forged Alliance",
    },

    #**********************
    #** Construction Manager
    #**********************
    construction_tab_t1 = {
        title = "<LOC tooltipui0426>Tech 1",
        description = "",
    },
    construction_tab_t1_dis = {
        title = "<LOC tooltipui0427>Tech 1",
        description = "<LOC tooltipui0428>Unit's tech level is insufficient. Unable to access this technology.",
    },
    construction_tab_t2 = {
        title = "<LOC tooltipui0429>Tech 2",
        description = "",
    },
    construction_tab_t2_dis = {
        title = "<LOC tooltipui0430>Tech 2",
        description = "<LOC tooltipui0431>Unit's tech level is insufficient. Unable to access this technology.",
    },
    construction_tab_t3 = {
        title = "<LOC tooltipui0432>Tech 3",
        description = "",
    },
    construction_tab_t3_dis = {
        title = "<LOC tooltipui0433>Tech 3",
        description = "<LOC tooltipui0434>Unit's tech level is insufficient. Unable to access this technology.",
    },
    construction_tab_t4 = {
        title = "<LOC tooltipui0435>Experimental Tech",
        description = "",
    },
    construction_tab_t4_dis = {
        title = "<LOC tooltipui0436>Experimental Tech",
        description = "<LOC tooltipui0437>Unit's tech level is insufficient. Unable to access this technology.",
    },
    construction_tab_selection = {
        title = "<LOC tooltipui0438>Selected Units",
        description = "",
    },
    construction_tab_construction = {
        title = "<LOC tooltipui0548>Construction",
        description = "<LOC tooltipui0549>Allows you to build new units with the selected units",
    },
    construction_tab_construction_dis = {
        title = "<LOC tooltipui0550>Construction",
        description = "The selected units can't build other units",
    },
    construction_tab_enhancement = {
        title = "<LOC tooltipui0551>Enhancements",
        description = "<LOC tooltipui0552>Manage enhancements for the selected units",
    },
    construction_tab_enhancment_dis = {
        title = "<LOC tooltipui0553>Enhancements",
        description = "<LOC tooltipui0567>No enhancements available for the selected units",
    },
    construction_tab_enhancment_left = {
        title = "<LOC tooltipui0568>Customize [Left Arm]",
        description = "",
    },
    construction_tab_enhancment_back = {
        title = "<LOC tooltipui0569>Customize [Back]",
        description = "",
    },
    construction_tab_enhancment_right = {
        title = "<LOC tooltipui0570>Customize [Right Arm]",
        description = "",
    },
    construction_tab_attached = {
        title = "<LOC tooltipui0439>Selection and Storage",
        description = "<LOC tooltipui0440>Displays selected and stored or attached units",
    },
    construction_tab_attached_dis = {
        title = "<LOC tooltipui0441>Selection and Storage",
        description = "<LOC tooltipui0442>The selected unit(s) do not have any units attached to them",
    },
    construction_tab_templates = {
        title = "<LOC tooltipui0554>Build Templates",
        description = "<LOC tooltipui0555>Display the build templates manager",
    },
    construction_tab_templates_dis = {
        title = "<LOC tooltipui0556>Build Templates (no templates)",
        description = "<LOC tooltipui0557>Display the build templates manager",
    },
    construction_infinite = {
        title = "<LOC tooltipui0443>Infinite Build",
        description = "<LOC tooltipui0444>Toggle the infinite construction of the current queue",
    },
    construction_pause = {
        title = "<LOC tooltipui0445>Pause Construction",
        description = "<LOC tooltipui0446>[Pause/Unpause] the current construction order",
    },


    #**********************
    #** In Game Replay Manager
    #**********************
    esc_return = {
        title = "<LOC tooltipui0651>Return to Game",
        description = "<LOC tooltipui0652>Closes the menu and returns you to the current game",
    },
    esc_save = {
        title = "<LOC tooltipui0277>Save Menu",
        description = "<LOC tooltipui0278>Save your Current Game",
    },
    esc_resume = {
        title = "<LOC tooltipui0279>Resume",
        description = "<LOC tooltipui0280>Continue your Current Game",
    },
    esc_quit = {
        title = "<LOC tooltipui0281>Surrender",
        description = "<LOC tooltipui0282>Exit to the Main Menu",
    },
    esc_restart = {
        title = "<LOC tooltipui0283>Restart",
        description = "<LOC tooltipui0284>Begin this Game again",
    },
    esc_exit = {
        title = "<LOC tooltipui0285>Exit",
        description = "<LOC tooltipui0286>Close Supreme Commander: Forged Alliance",
    },
    esc_options = {
        title = "<LOC tooltipui0287>Options Menu",
        description = "<LOC tooltipui0288>Adjust Gameplay, Video and Sound Options",
    },
    esc_conn = {
        title = "<LOC tooltipui0293>Connectivity Menu",
        description = "<LOC tooltipui0294>Adjust Connectivity Options",
    },
    esc_load = {
        title = "<LOC tooltipui0340>Load",
        description = "<LOC tooltipui0341>Continue a Previously Saved Game",
    },

    #**********************
    #** In Game Replay Manager
    #**********************
    replay_pause = {
        title = "<LOC tooltipui0195>Pause",
        description = "<LOC tooltipui0196>Pause or Resume the Replay",
    },
    replay_speed = {
        title = "<LOC tooltipui0197>Game Speed",
        description = "<LOC tooltipui0198>Sets the Replay Speed",
    },
    replay_team = {
        title = "<LOC tooltipui0199>Team Focus",
        description = "<LOC tooltipui0200>Select which Army to focus on",
    },
    replay_progress = {
        title = "<LOC tooltipui0201>Progress",
        description = "<LOC tooltipui0202>Indicates your Position in the Replay",
    },
    replay_restart = {
        title = "<LOC tooltipui0203>Restart",
        description = "<LOC tooltipui0204>Plays the Current Replay from the Beginning",
    },

    #**********************
    #** Post Game Score Screen
    #**********************
    PostScore_campaign = {
        title = "<LOC tooltipui0653>Campaign",
        description = "<LOC tooltipui0654>Shows the Campaign Debriefing and Objectives",
    },
    PostScore_Grid = {
        title = "<LOC tooltipui0205>Players",
        description = "<LOC tooltipui0206>Shows the Players and Scores",
    },
    PostScore_Graph = {
        title = "<LOC tooltipui0207>Graph",
        description = "<LOC tooltipui0208>Shows a Timeline of the Game",
    },
    PostScore_general = {
        title = "<LOC tooltipui0209>General",
        description = "<LOC tooltipui0210>Shows the Overall Performance of each Player",
    },
    PostScore_units = {
        title = "<LOC tooltipui0211>Units",
        description = "<LOC tooltipui0212>Shows the Performance of each Players Military",
    },
    PostScore_resources = {
        title = "<LOC tooltipui0213>Resources",
        description = "<LOC tooltipui0214>Show the Efficiency of each Players Economy",
    },
    PostScore_Player = {
        title = "<LOC tooltipui0215>Player",
        description = "<LOC tooltipui0216>Sort by Player Name",
    },
    PostScore_Team = {
        title = "<LOC tooltipui0217>Team",
        description = "<LOC tooltipui0218>Sort by Team",
    },
    PostScore_score = {
        title = "<LOC tooltipui0219>Score",
        description = "<LOC tooltipui0220>Sort by Overall Performance",
    },
    PostScore_kills = {
        title = "<LOC tooltipui0221>Kills",
        description = "<LOC tooltipui0222>Sort by Units Destroyed",
    },
    PostScore_built = {
        title = "<LOC tooltipui0223>Built",
        description = "<LOC tooltipui0224>Sort by Structures Built",
    },
    PostScore_lost = {
        title = "<LOC tooltipui0225>Losses",
        description = "<LOC tooltipui0226>Sort by Units Lost",
    },
    PostScore_cdr = {
        title = "<LOC tooltipui0231>Command Units",
        description = "<LOC tooltipui0232>Sort by Command Units",
    },
    PostScore_land = {
        title = "<LOC tooltipui0233>Land Units",
        description = "<LOC tooltipui0234>Sort by Land Units",
    },
    PostScore_naval = {
        title = "<LOC tooltipui0235>Naval",
        description = "<LOC tooltipui0236>Sort by Naval Units",
    },
    PostScore_air = {
        title = "<LOC tooltipui0237>Air",
        description = "<LOC tooltipui0238>Sort by Air Units",
    },
    PostScore_structures = {
        title = "<LOC tooltipui0239>Structures",
        description = "<LOC tooltipui0240>Sort by Structures",
    },
    PostScore_experimental = {
        title = "<LOC tooltipui0241>Experimental",
        description = "<LOC tooltipui0242>Sort by Experimental Units",
    },
    PostScore_massin = {
        title = "<LOC tooltipui0245>Mass Collected",
        description = "<LOC tooltipui0246>Sort by Mass Collected",
    },
    PostScore_massover = {
        title = "<LOC tooltipui0295>Mass Wasted",
        description = "<LOC tooltipui0296>Sort by Mass Wasted",
    },
    PostScore_massout = {
        title = "<LOC tooltipui0247>Mass Spent",
        description = "<LOC tooltipui0248>Sort by Mass Spent",
    },
    PostScore_energyin = {
        title = "<LOC tooltipui0249>Energy Collected",
        description = "<LOC tooltipui0250>Sort by Energy Collected",
    },
    PostScore_energyout = {
        title = "<LOC tooltipui0297>Energy Spent",
        description = "<LOC tooltipui0298>Sort by Energy Spent",
    },
    PostScore_energyover = {
        title = "<LOC tooltipui0251>Energy Wasted",
        description = "<LOC tooltipui0252>Sort by Energy Wasted",
    },
    PostScore_total = {
        title = "<LOC tooltipui0253>Total",
        description = "<LOC tooltipui0254>Sort by Totals",
    },
    PostScore_rate = {
        title = "<LOC tooltipui0255>Rate",
        description = "<LOC tooltipui0256>Sort by Rates",
    },
    PostScore_kills = {
        title = "<LOC tooltipui0257>Kills",
        description = "<LOC tooltipui0258>Sort by Kills",
    },
    PostScore_built = {
        title = "<LOC tooltipui0259>Built",
        description = "<LOC tooltipui0260>Sort by Units Built",
    },
    PostScore_lost = {
        title = "<LOC tooltipui0261>Losses",
        description = "<LOC tooltipui0262>Sort by Units Lost",
    },
    PostScore_count = {
        title = "<LOC tooltipui0263>Count",
        description = "<LOC tooltipui0264>Sort by Total Units Built",
    },
    PostScore_mass = {
        title = "<LOC tooltipui0265>Mass",
        description = "<LOC tooltipui0266>Sort by Total Mass Collected",
    },
    PostScore_energy = {
        title = "<LOC tooltipui0267>Energy",
        description = "<LOC tooltipui0268>Sort by Total Energy Collected",
    },
    PostScore_Replay = {
        title = "<LOC tooltipui0269>Replay",
        description = "<LOC tooltipui0270>Save the Replay of this Match",
    },
    PostScore_Quit = {
        title = "<LOC tooltipui0271>Continue",
        description = "<LOC tooltipui0272>Exit the Score Screen",
    },

    #**********************
    #** Campaign Score
    #**********************

    CampaignScore_Skip = {
        title = "<LOC tooltipui0381>Skip",
        description = "<LOC tooltipui0382>Skip this operation and continue to the next",
    },
    CampaignScore_Restart = {
        title = "<LOC tooltipui0383>Restart",
        description = "<LOC tooltipui0384>Restart this Operation from the beginning",
    },

    #**********************
    #** MFD Strings
    #**********************
    mfd_military = {
        title = "<LOC tooltipui0076>Strategic Overlay Toggle",
        description = "<LOC tooltipui0077>View weapon and intelligence ranges",
        keyID = "tog_military",
    },
    mfd_military_dropout = {
        title = "<LOC tooltipui0447>Strategic Overlay Menu",
        description = "<LOC tooltipui0448>Select the ranges to display for the Strategic Overlay Toggle",
    },
    mfd_defense = {
        title = "<LOC tooltipui0078>Player Colors",
        description = "<LOC tooltipui0636>Toggle unit coloring between player and allegiance colors:\nYour Units\nAllied Units\nNeutral Units\nEnemy Units",
        keyID = "tog_defense",
    },
    mfd_economy = {
        title = "<LOC tooltipui0080>Economy Overlay",
        description = "<LOC tooltipui0081>Toggle income and expense overlays over units",
        keyID = "tog_econ",
    },
    mfd_intel = {
        title = "<LOC tooltipui0082>Intel",
        description = "<LOC tooltipui0083>Toggle the Intelligence Overlay. This shows the ranges of your intelligence and counter-intelligence structures",
        keyID = "tog_intel",
    },
    mfd_control = {
        title = "<LOC tooltipui0084>Control",
        description = "<LOC tooltipui0085>Toggle the Control Overlay",
    },
    mfd_idle_engineer = {
        title = "<LOC tooltipui0086>Idle Engineers",
        description = "<LOC tooltipui0087>Select Idle Engineers",
    },
    mfd_idle_factory = {
        title = "<LOC tooltipui0088>Idle Factories",
        description = "<LOC tooltipui0089>Select Idle Factories",
    },
    mfd_army = {
        title = "<LOC tooltipui0090>Land",
        description = "<LOC tooltipui0091>Target all Land Forces",
    },
    mfd_airforce = {
        title = "<LOC tooltipui0092>Air",
        description = "<LOC tooltipui0093>Target all Air Forces",
    },
    mfd_navy = {
        title = "<LOC tooltipui0094>Navy",
        description = "<LOC tooltipui0095>Target all Naval Forces",
    },
    mfd_strat_view = {
        title = "<LOC tooltipui0316>Map Options",
        description = "<LOC tooltipui0317>Adjust different viewport and map display options",
    },
    mfd_attack_ping = {
        title = "<LOC tooltipui0449>Attack Signal",
        description = "<LOC tooltipui0450>Place an allied attack request at a specific location",
        keyID = "ping_attack",
    },
    mfd_alert_ping = {
        title = "<LOC tooltipui0451>Assist Signal",
        description = "<LOC tooltipui0452>Place an allied assist request at a specific location",
        keyID = "ping_alert",
    },
    mfd_move_ping = {
        title = "<LOC tooltipui0453>Move Signal",
        description = "<LOC tooltipui0454>Request your allies move to a location",
        keyID = "ping_move",
    },
    mfd_marker_ping = {
        title = "<LOC tooltipui0455>Message Marker",
        description = "<LOC tooltipui0456>Place a message marker on the map (Shift + Control + right-click to delete)",
        keyID = "ping_marker",
    },

    #**********************
    #** Misc Strings
    #**********************
    infinite_toggle = {
        title = "<LOC tooltipui0096>Infinite Build",
        description = "<LOC tooltipui0097>Toggle infinite construction on/off for current build queue",
    },
    mass_button = {
        title = "<LOC tooltipui0273>Mass",
        description = "<LOC tooltipui0274>Mass is the basic building blocks of any unit or structure in the game",
    },
    energy_button = {
        title = "<LOC tooltipui0275>Energy",
        description = "<LOC tooltipui0276>Energy represents the effort required to build units and structures",
    },
    dip_send_alliance = {
        title = "<LOC tooltipui0289>Send Alliance Offer",
        description = "<LOC tooltipui0290>Check this box to send an Alliance Offer to this Player",
    },
    dip_share_resources = {
        title = "<LOC tooltipui0457>Share Resources",
        description = "<LOC tooltipui0458>Toggle the distribution of excess mass and energy to your allies",
    },
    dip_allied_victory = {
        title = "<LOC tooltipui0459>Allied Victory",
        description = "<LOC tooltipui0460>Toggle between individual or team victory/defeat conditions",
    },
    dip_give_resources = {
        title = "<LOC tooltipui0461>Give Resources",
        description = "<LOC tooltipui0462>Send Mass and/or Energy from storage to specified player",
    },
    dip_offer_draw = {
        title = "<LOC tooltipui0463>Propose Draw",
        description = "<LOC tooltipui0464>Propose ending the game in a draw.  All players must click this to accept.",
    },
    dip_give_units = {
        title = "<LOC tooltipui0465>Give Units",
        description = "<LOC tooltipui0466>Give currently selected units to specified player",
    },
    dip_break_alliance = {
        title = "<LOC tooltipui0467>Break Alliance",
        description = "<LOC tooltipui0468>Cancel the alliance with specified player",
    },
    dip_offer_alliance = {
        title = "<LOC tooltipui0469>Propose Alliance",
        description = "<LOC tooltipui0470>Offer an alliance to specified player",
    },
    dip_accept_alliance = {
        title = "<LOC tooltipui0471>Accept Alliance",
        description = "<LOC tooltipui0472>Specified player has offered an alliance to you",
    },
    dip_alliance_proposed = {
        title = "<LOC tooltipui0571>Alliance Proposed",
        description = "<LOC tooltipui0572>You have proposed an alliance to specified player",
    },

    score_time = {
        title = "<LOC tooltipui0473>Game Time",
        description = "",
    },
    score_units = {
        title = "<LOC tooltipui0474>Unit Count",
        description = "<LOC tooltipui0507>Current and maximum unit counts",
    },
    score_collapse = {
        title = "<LOC tooltipui0475>[Hide/Show] Score Bar",
        description = "",
        keyID = "toggle_score_screen",
    },
    econ_collapse = {
        title = "<LOC tooltipui0558>[Hide/Show] Resource Bar",
        description = "",
    },
    control_collapse = {
        title = "<LOC tooltipui0559>[Hide/Show] Control Group Bar",
        description = "",
    },
    mfd_collapse = {
        title = "<LOC tooltipui0560>[Hide/Show] Multifunction Bar",
        description = "",
    },
    objectives_collapse = {
        title = "<LOC tooltipui0561>[Hide/Show] Objectives Bar",
        description = "",
        keyID = "toggle_score_screen",
    },
    menu_collapse = {
        title = "<LOC tooltipui0562>[Hide/Show] Menu Bar",
        description = "",
    },
    avatars_collapse = {
        title = "<LOC tooltipui0563>[Hide/Show] Avatars Bar",
        description = "",
    },

    #**********************
    #** Front End Strings
    #**********************
    mainmenu_exit = {
        title = "<LOC tooltipui0133>Exit Game",
        description = "<LOC tooltipui0134>Close Supreme Commander: Forged Alliance",
    },
    mainmenu_campaign = {
        title = "<LOC tooltipui0135>Campaign",
        description = "<LOC tooltipui0136>Start a new campaign or continue a previous one",
    },
    mainmenu_mp = {
        title = "<LOC tooltipui0137>Multiplayer",
        description = "<LOC tooltipui0138>Join or host a multiplayer game",
    },
    mainmenu_skirmish = {
        title = "<LOC tooltipui0139>Skirmish Mode",
        description = "<LOC tooltipui0140>Play a quick game against one or more AI Opponents",
    },
    mainmenu_replay = {
        title = "<LOC tooltipui0141>Replay",
        description = "<LOC tooltipui0142>List and play any available replays",
    },
    mainmenu_options = {
        title = "<LOC tooltipui0143>Options",
        description = "<LOC tooltipui0144>View and adjust Gameplay, Interface, Video, and Sound options",
    },
    mainmenu_mod = {
        title = "<LOC tooltipui0145>Mod Manager",
        description = "<LOC tooltipui0146>View, enable and disable all available Mods",
    },
    mainmenu_tutorial = {
        title = "<LOC tooltipui0318>Tutorial",
        description = "<LOC tooltipui0319>Learn to play Supreme Commander: Forged Alliance",
    },
    mainmenu_extras = {
    	title = "<LOC tooltipui0355>Extras",
    	description = "<LOC tooltipui0356>Access additional SupCom content and functionality",
    },
    profile = {
        title = "<LOC tooltipui0147>Profile",
        description = "<LOC tooltipui0148>Manage your Profiles",
    },
    mpselect_observe = {
        title = "<LOC tooltipui0149>Observe",
        description = "<LOC tooltipui0150>Watch a Game being played",
    },
    mpselect_join = {
        title = "<LOC tooltipui0151>Join",
        description = "<LOC tooltipui0152>Play on the Selected Server",
    },
    mpselect_gpgnet = {
        title = "<LOC tooltipui0153>GPGNet",
        description = "<LOC tooltipui0154>Log into GPGNet",
    },
         mpselect_lan = {
        title = "<LOC OPTIONS_0123>LAN",
        description = "<LOC OPTIONS_0124>Host, Join or Observe a LAN Game",
    },
    mpselect_connect = {
        title = "<LOC tooltipui0155>Direct Connect",
        description = "<LOC tooltipui0156>Join a Game by supplying the IP Address and Port",
    },
    mpselect_create = {
        title = "<LOC tooltipui0157>Create Game",
        description = "<LOC tooltipui0158>Host a new LAN Game",
    },
    mpselect_exit = {
        title = "<LOC tooltipui0159>Back",
        description = "",
    },
    mpselect_serverinfo = {
        title = "<LOC tooltipui0161>Server Information",
        description = "<LOC tooltipui0162>Displays the Status of the Currently Selected Server",
    },
    mpselect_serverlist = {
        title = "<LOC tooltipui0163>Server List",
        description = "<LOC tooltipui0164>Displays available LAN Games",
    },
    mpselect_name = {
        title = "<LOC tooltipui0165>Name",
        description = "<LOC tooltipui0166>Sets your Multiplayer Nickname",
    },
    mainmenu_quickcampaign = {
        title = "<LOC tooltipui0320>Quick Campaign",
        description = "<LOC tooltipui0321>Launches the most recent saved campaign",
    },
    mainmenu_quicklanhost = {
        title = "<LOC tooltipui0322>Quick LAN",
        description = "<LOC tooltipui0323>Launches a LAN lobby with your last settings",
    },
    mainmenu_quickipconnect = {
        title = "<LOC tooltipui0324>Direct Connect",
        description = "<LOC tooltipui0325>Direct connect to another computer using an IP address and port value",
    },
    mainmenu_quickgpgnet = {
        title = "<LOC tooltipui0326>Quick GPGNet",
        description = "<LOC tooltipui0327>Log into GPGNet",
    },
    mainmenu_quickskirmishload = {
        title = "<LOC tooltipui0328>Quick Skirmish Load",
        description = "<LOC tooltipui0329>Loads the last saved skirmish game",
    },
    mainmenu_quickreplay = {
        title = "<LOC tooltipui0330>Quick Replay",
        description = "<LOC tooltipui0331>Loads and plays the last saved replay",
    },
    modman_controlled_by_host = {
        title = "<LOC uimod_0007>Gameplay mod",
        description = "<LOC uimod_0008>This mod can only be selected by the game host",
        image = ""
    },
    modman_some_missing = {
        title = "<LOC uimod_0007>Gameplay mod",
        description = "<LOC uimod_0009>Not all players have this mod",
        image = ""
    },
    campaignselect_continue = {
        title = "<LOC tooltipui0371>Continue",
        description = "<LOC tooltipui0372>Play the latest Operation in this factions Campaign",
        image = ""
    },
    campaignselect_replay = {
        title = "<LOC tooltipui0373>Replay Op",
        description = "<LOC tooltipui0374>Replay this Operation",
        image = ''
    },
    campaignselect_fmv = {
        title = "<LOC tooltipui0375>Playback",
        description = "<LOC tooltipui0376>Watch this video then return to this screen",
        image = ''
    },
    campaignselect_select = {
        title = "<LOC tooltipui0377>Select",
        description = "<LOC tooltipui0378>Select this operation and enter the briefing room",
        image = ''
    },
    campaignselect_movie = {
        title = "<LOC tooltipui0661>Play Movie",
        description = "<LOC tooltipui0662>Watch the selected movie",
        image = ''
    },
    campaignselect_tutorial = {
        title = "<LOC tooltipui0663>Play Tutorial",
        description = "<LOC tooltipui0319>",
        image = ''
    },
    campaignselect_restart = {
        title = "<LOC tooltipui0379>Restart",
        description = "<LOC tooltipui0380>Restart the [Campaign/Skirmish] game",
        image = ''
    },
    campaignselect_load = {
        title = "<LOC tooltipui0573>Load",
        description = "<LOC tooltipui0574>Load a previously saved campaign game",
    },

    #**********************
    #** Campaign briefing
    #**********************
    campaignbriefing_restart = {
        title = "<LOC tooltipui0575>Restart",
        description = "<LOC tooltipui0576>Start the briefing from the beginning",
    },
    campaignbriefing_pause = {
        title = "<LOC tooltipui0577>Pause",
        description = "<LOC tooltipui0578>Pause the briefing",
    },
    campaignbriefing_skip = {
        title = "<LOC tooltipui0637>Skip",
        description = "<LOC tooltipui0638>Skip to the end of the briefing",
    },
    campaignbriefing_play = {
        title = "<LOC tooltipui0579>Play",
        description = "<LOC tooltipui0580>Continue playing the briefing",
    },
    campaignbriefing_launch = {
        title = "<LOC tooltipui0581>Launch",
        description = "<LOC tooltipui0582>Start the operation",
    },


    #**********************
    #** Restricted Units
    #**********************
    restricted_uints_T1 = {
        title = "<LOC tooltipui0508>No Tech 1",
        description = "<LOC tooltipui0509>Players will not be able to build tech 1 units",
    },
    restricted_uints_T2 = {
        title = "<LOC tooltipui0510>No Tech 2",
        description = "<LOC tooltipui0511>Players will not be able to build tech 2 units",
    },
    restricted_uints_T3 = {
        title = "<LOC tooltipui0512>No Tech 3",
        description = "<LOC tooltipui0513>Players will not be able to build tech 3 units",
    },
    restricted_uints_experimental = {
        title = "<LOC tooltipui0514>No Experimental",
        description = "<LOC tooltipui0515>Players will not be able to build experimental units",
    },
    restricted_uints_naval = {
        title = "<LOC tooltipui0516>No Naval",
        description = "<LOC tooltipui0517>Players will not be able to build mobile naval units",
    },
    restricted_uints_air = {
        title = "<LOC tooltipui0518>No Air",
        description = "<LOC tooltipui0519>Players will not be able to build mobile air units",
    },
    restricted_uints_land = {
        title = "<LOC tooltipui0520>No Land",
        description = "<LOC tooltipui0521>Players will not be able to build mobile land units",
    },
    restricted_uints_uef = {
        title = "<LOC tooltipui0522>No UEF",
        description = "<LOC tooltipui0523>Players will not be able to build UEF units",
    },
    restricted_uints_cybran = {
        title = "<LOC tooltipui0524>No Cybran",
        description = "<LOC tooltipui0525>Players will not be able to build Cybran units",
    },
    restricted_uints_aeon = {
        title = "<LOC tooltipui0526>No Aeon",
        description = "<LOC tooltipui0527>Players will not be able to build Aeon units",
    },
    restricted_uints_seraphim = {
        title = "<LOC tooltipui0528>No Seraphim",
        description = "<LOC tooltipui0529>Players will not be able to build Seraphim units",
    },
    restricted_uints_nukes = {
        title = "<LOC tooltipui0530>No Nukes",
        description = "<LOC tooltipui0531>Players will not be able to build Tech 3 strategic missile launchers ",
    },
    restricted_uints_gameenders = {
        title = "<LOC tooltipui0532>No Game Enders",
        description = "<LOC tooltipui0533>Players will not be able to build Tech 3 strategic missile launchers and artillery",
    },
    restricted_uints_bubbles = {
        title = "<LOC tooltipui0534>No Bubbles",
        description = "<LOC tooltipui0535>Players will not be able to build mobile shield generators and shield defenses",
    },
    restricted_uints_intel = {
        title = "<LOC tooltipui0536>No Intel Structures",
        description = "<LOC tooltipui0537>Players will not be able to build radar, sonar and omni installations",
    },
    restricted_uints_supcom = {
        title = "<LOC tooltipui0538>No Support Commanders",
        description = "<LOC tooltipui0539>Players will not be able to build support commanders",
    },
    restricted_units_supremecommander = {
        title = "<LOC tooltipui0639>No Supreme Commander",
        description = "<LOC tooltipui0640>Players will not be able to build Supreme Commander units"
    },
    restricted_units_forgedalliance = {
        title = "<LOC tooltipui0641>No Forged Alliance",
        description = "<LOC tooltipui0642>Players will not be able to build Forged Alliance units"
    },
    restricted_units_downloaded = {
        title = "<LOC tooltipui0643>No Downloaded",
        description = "<LOC tooltipui0644>Players will not be able to build downloaded GPG units"
    },
    restricted_units_massfab = {
        title = "<LOC tooltipui0645>No Fabrication",
        description = "<LOC tooltipui0646>Players will not be able to build mass fabricators"
    },

    #**********************
    #** Strategic overlay
    #**********************
    overlay_conditions = {
        title = "<LOC tooltipui0583>Conditional Overlays",
        description = "<LOC tooltipui0584>Toggle all conditional overlays",
    },
    overlay_rollover = {
        title = "<LOC tooltipui0585>Rollover Range Overlay",
        description = "<LOC tooltipui0586>Toggle the range overlay of the unit you are mousing over",
    },
    overlay_selection = {
        title = "<LOC tooltipui0587>Selection Range Overlay",
        description = "<LOC tooltipui0588>Toggle the range overlay of the unit(s) you have selected",
    },
    overlay_build_preview = {
        title = "<LOC tooltipui0589>Build Preview",
        description = "<LOC tooltipui0590>Toggle the range overlay of the unit you are about to build",
    },
    overlay_military = {
        title = "<LOC tooltipui0591>Military Overlays",
        description = "<LOC tooltipui0592>Toggle all military overlays ",
    },
    overlay_direct_fire = {
        title = "<LOC tooltipui0593>Direct Fire",
        description = "<LOC tooltipui0594>Toggle the range overlays of your point defenses, tanks and other direct-fire weaponry ",
    },
    overlay_indirect_fire = {
        title = "<LOC tooltipui0595>Indirect Fire",
        description = "<LOC tooltipui0596>Toggle the range overlays of your artillery and missile weaponry",
    },
    overlay_anti_air = {
        title = "<LOC tooltipui0597>Anti-Air",
        description = "<LOC tooltipui0598>Toggle the range overlays of your AA weaponry",
    },
    overlay_anti_navy = {
        title = "<LOC tooltipui0599>Anti-Navy",
        description = "<LOC tooltipui0600>Toggle the range overlays of your torpedo weaponry",
    },
    overlay_defenses = {
        title = "<LOC tooltipui0601>Countermeasure",
        description = "<LOC tooltipui0602>Toggle the range overlays of your shields and other countermeasure defenses",
    },
    overlay_misc = {
        title = "<LOC tooltipui0603>Miscellaneous",
        description = "<LOC tooltipui0604>Toggle the range overlays of your air staging platforms and engineering stations",
    },
    overlay_combine_military = {
        title = "<LOC tooltipui0605>Combine Military",
        description = "<LOC tooltipui0606>Combine all sub-filters into a single overlay",
    },
    overlay_intel = {
        title = "<LOC tooltipui0607>Intelligence Overlays",
        description = "<LOC tooltipui0608>Toggle all intelligence overlays ",
    },
    overlay_radar = {
        title = "<LOC tooltipui0609>Radar",
        description = "<LOC tooltipui0610>Toggle the range overlays of your radar",
    },
    overlay_sonar = {
        title = "<LOC tooltipui0611>Sonar",
        description = "<LOC tooltipui0612>Toggle the range overlays of your sonar",
    },
    overlay_omni = {
        title = "<LOC tooltipui0613>Omni",
        description = "<LOC tooltipui0614>Toggle the range overlays of your Omni sensors",
    },
    overlay_counter_intel = {
        title = "<LOC tooltipui0615>Counter-Intelligence",
        description = "<LOC tooltipui0616>Toggle the range overlays of your stealth and jamming equipment",
    },
    overlay_combine_intel = {
        title = "<LOC tooltipui0617>Combine Intelligence",
        description = "<LOC tooltipui0618>Combine all sub-filters into a single overlay",
    },

    #**********************
    #** Faction select
    #**********************
    faction_select_uef = {
        title = "<LOC tooltipui0619>UEF",
        description = "<LOC tooltipui0620>Play campaign as a UEF Commander",
    },
    faction_select_cybran = {
        title = "<LOC tooltipui0621>Cybran",
        description = "<LOC tooltipui0622>Play campaign as a Cybran Commander",
    },
    faction_select_aeon = {
        title = "<LOC tooltipui0623>Aeon",
        description = "<LOC tooltipui0624>Play campaign as an Aeon Commander",
    },

    #**********************
    #** Misc
    #**********************
    minimap_reset = {
        title = "<LOC tooltipui0625>Reset Minimap",
        description = "<LOC tooltipui0626>Sets the minimap to its default position and size",
    },
    no_rush_clock = {
        title = "<LOC tooltipui0627>No Rush Clock",
        description = "<LOC tooltipui0628>Displays time remaining in the no rush clock",
    },
    save_template = {
        title = "<LOC tooltipui0629>Save Template",
        description = "<LOC tooltipui0630>Creates construction template by saving units/structures and their position",
    },
}
