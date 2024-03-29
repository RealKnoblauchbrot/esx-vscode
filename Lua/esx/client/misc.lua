---@meta


--ESX Progressbar
---@class ESX_ProgressbarOptions[: table]
---@field FreezePlayer? boolean Should the player be freezed
---@field animation? ESX_ProgressbarAnimationOption Animation that should be played
---@field onFinish? function Callback that gets triggered when finished
---@field onCancel? function Callback that gets triggered when cancelled

--ESX Progressbar Animation Option
---@class ESX_ProgressbarAnimationOption
---@field type string
---@field dict string
---@field lib string

---@class ESX_Context_Element
---@field unselectable boolean
---@field disabled boolean
---@field icon string Fontawesome Icon or "" to hide icon
---@field title string Title of element
---@field description string Discription of the element
---@field input boolean Allow Input
---@field inputType "radio" | "number" | "text" Type of input
---@field inputPlaceholder string Placeholder to show in Input
---@field inputValue number|string Default Value
---@field inputMin number Minimum Value. Only works with type "number"
---@field inputMax number Maximum Value. Only works with type "number"
---@field name string Input identifier

---@class ESX_PlayerData_Client: ESX_PlayerData
---@field ped number Player's Ped Handle

---@alias KeyMapping
---| "DIGITALBUTTON_AXIS" Controller button input as axis input
---| "GAME_CONTROLLED" Game controlled input
---| "JOYSTICK_AXIS" Joystick / flight stick axis input
---| "JOYSTICK_AXIS_NEGATIVE" Joystick / flight stick axis input (always negative)
---| "JOYSTICK_AXIS_POSITIVE" Joystick / flight stick axis input (always positive)
---| "JOYSTICK_BUTTON" Joystick / flight stick button input
---| "JOYSTICK_IAXIS" Joystick / flight stick axis input (inverted)
---| "JOYSTICK_POV" Joystick / flight stick point of view input
---| "JOYSTICK_POV_AXIS" Joystick / flight stick point of view axis input
---| "KEYBOARD" Keyboard input (including the Xbox Controller Chatpad)
---| "MKB_AXIS" Mouse & keyboard input as axis input
---| "MOUSE_ABSOLUTEAXIS" Mouse axis input (absolute)
---| "MOUSE_BUTTON" Mouse button input
---| "MOUSE_BUTTONANY" Mouse button input (no known difference from MOUSE_BUTTON)
---| "MOUSE_CENTEREDAXIS" Mouse axis input (centered)
---| "MOUSE_RELATIVEAXIS" Mouse axis input (relative)
---| "MOUSE_SCALEDAXIS" Mouse axis input (scaled)
---| "MOUSE_NORMALIZED" Mouse axis input (normalized)
---| "MOUSE_WHEEL" Mouse wheel input
---| "PAD_ANALOGBUTTON" Controller trigger input
---| "PAD_AXIS" Controller axis input
---| "PAD_DEBUGBUTTON" Controller button input (debug interface, non functional)
---| "PAD_DIGITALBUTTON" Controller button input
---| "PAD_DIGITALBUTTONANY" Controller button input (no known difference from PAD_DIGITALBUTTON)
---| "TOUCHPAD_ABSOLUTE_AXIS" PS4/5 controller touchpad axis input (absolute)
---| "TOUCHPAD_CENTERED_AXIS" PS4/5 controller touchpad axis input (centered)

---@alias VehiclePlateType
---| 3 Blue on White 1
---| 0 Blue on White 2
---| 4 Blue on White 3
---| 2 Yellow on Blue
---| 1 Yellow on Black
---| 5 North Yankton



---@class ESX_Vehicle_Properties
---@field model number The vehicle hash
---@field doorsBroken boolean[] Broken doors
---@field windowsBroken boolean[] Broken windows
---@field tyreBurst boolean[] Broken tyres
---@field tyresCanBurst boolean Can the vehicle's tyres burst
---@field plate string Vehicle plate, maximum 8 characters
---@field plateIndex VehiclePlateType Plate style
---
---@field bodyHealth number Body health
---@field engineHealth number Engine health
---@field tankHealth number Petrol Tank health
---
---@field fuelLevel number Fuel Level
---@field dirtLevel number Dirtiness level
---@field color1 number Primary color
---@field color2 number Secondary color
---@field customPrimaryColor rgb
---@field customSecondaryColor rgb
---
---@field pearlescentColor number Pearlescent color
---@field wheelColor number Wheel color
---
---@field dashboardColor number Dashboard color
---@field interiorColor number Interior color
---
---@field wheels number Wheel type
---@field windowTint number
---@field xenonColor number
---@field customXenonColor rgb
---
---@field neonEnabled table Table with hardcoded four childs for left, back, front & back neons
---
---@field neonColor table Packed table with three childs for r,g,b
---@field extras boolean[] Pair table with id as index, and state as value
---@field driftTyresEnabled boolean
---@field tyreSmokeColor table Packed table with three childs for r,g,b
---
---@field modSpoilers number
---@field modFrontBumper number
---@field modRearBumper number
---@field modSideSkirt number
---@field modExhaust number
---@field modFrame number
---@field modGrille number
---@field modHood number
---@field modFender number
---@field modRightFender number
---@field modRoof number
---@field modRoofLivery number
---
---@field modEngine number
---@field modBrakes number
---@field modTransmission number
---@field modHorns number
---@field modSuspension number
---@field modArmor number
---
---@field modTurbo boolean
---@field modSmokeEnabled boolean
---@field modXenon boolean
---
---@field modFrontWheels number
---@field modCustomFrontWheels boolean
---@field modBackWheels number
---@field modBackCustomWheels number
---
---@field modPlateHolder number
---@field modVanityPlate number
---@field modTrimA number
---@field modOrnaments number
---@field modDashboard number
---@field modDial number
---@field modDoorSpeaker number
---@field modSeats number
---@field modSteeringWheel number
---@field modShifterLeavers number
---@field modAPlate number
---@field modSpeakers number
---@field modTrunk number
---@field modHydrolic number
---@field modEngineBlock number
---@field modAirFilter number
---@field modStruts number
---@field modArchCover number
---@field modAerials number
---@field modTrimB number
---@field modTank number
---@field modWindows number
---@field modLivery number
---@field modLightbar number


---@alias TextFont
---| 0 ChaletLondon <br> ![](https://wiki.rage.mp/images/a/a2/120px-chalet-london-nineteen-seventy-upper.png) ![](https://wiki.rage.mp/images/9/99/120px-chalet-london-nineteen-seventy-lower.png) ![](https://wiki.rage.mp/images/d/d1/120px-chalet-london-nineteen-seventy-character.png)
---| 1 HouseScript <br> ![](https://wiki.rage.mp/images/9/9f/120px-sign-painter-house-script-upper.png) ![](https://wiki.rage.mp/images/1/12/120px-sign-painter-house-script-lower.png) ![](https://wiki.rage.mp/images/4/4c/120px-sign-painter-house-script-character.png)
---| 2 Monospace <br> ![](https://wiki.rage.mp/images/7/77/120px-Excalibur_Monospace-upper.png) ![](https://wiki.rage.mp/images/a/a5/120px-Excalibur_Monospace-lower.png) ![](https://wiki.rage.mp/images/8/85/120px-Excalibur_Monospace-character.png)
---| 4 CharletComprimeCologne <br> ![](https://wiki.rage.mp/images/4/4f/120px-chalet-comprime-cologne-seventy-upper.png) ![](https://wiki.rage.mp/images/5/51/120px-chalet-comprime-cologne-seventy-lower.png) ![](https://wiki.rage.mp/images/b/bd/120px-chalet-comprime-cologne-seventy-character.png)
---| 7 Pricedown <br> ![](https://wiki.rage.mp/images/a/aa/120px-Pricedown-upper.png) ![](https://wiki.rage.mp/images/e/e3/120px-Pricedown-lower.png) ![](https://wiki.rage.mp/images/8/88/120px-Pricedown-character.png)

---@alias VehicleType string
---| "automobile"
---| "bike"
---| "trailer"
---| "boat"
---| "heli"
---| "plane"
---| "train"
---| "submarine"


---@alias ScaleformMovies string
---| "AP_ICON"
---| "CREW_TAG_MOVIECLIP"
---| "FEED_AWARD"
---| "FEED_CREW_RANKUP"
---| "FEED_CREW_TAG"
---| "FEED_MESSAGE_TEXT"
---| "FEED_REPLAY"
---| "FEED_STATS"
---| "FEED_TICKER"
---| "FEED_TOOLTIPS"
---| "FEED_UNLOCK"
---| "FEED_VERSUS"
---| "GAME_STREAM"
---| "GAME_STREAM_ENUMS"
---| "GTAV_ONLINE"
---| "INSTRUCTIONAL_BUTTONS"
---| "LANDING_PAGE"
---| "LOADINGSCREEN_NEWGAME"
---| "LOADINGSCREEN_STARTUP"
---| "MOUSE_EVENTS"
---| "MOUSE_POINTER"
---| "ONLINE_POLICIES"
---| "OPENING_CREDITS"
---| "PAUSE_MENU_BAR"
---| "PAUSE_MENU_CALIBRATION"
---| "PAUSE_MENU_CONFIGURATION_LIST"
---| "PAUSE_MENU_FREE_MODE"
---| "PAUSE_MENU_FREEMODE_DETAILS"
---| "PAUSE_MENU_HEADER"
---| "PAUSE_MENU_INSTRUCTIONAL_BUTTONS"
---| "PAUSE_MENU_KEYMAP_CATEGORY"
---| "PAUSE_MENU_PAGES_KEYMAP"
---| "PAUSE_MENU_PAGES_SETTINGS"
---| "PAUSE_MENU_SETTINGS"
---| "PAUSE_MENU_SP_CONTENT"
---| "PAUSE_MENU_TEXT_LIST_DOUBLE"
---| "PAUSE_MENU_VERTICAL_LIST"
---| "PAUSE_MP_MENU_FRIENDS_LIST"
---| "PAUSE_MP_MENU_PLAYER_MODEL"
---| "POPUP_WARNING"
---| "ROCKSTAR_VERIFIED"
---| "RP_ICON"
---| "SOCIAL_CLUB2"
---| "AIRCRAFT_DIALS"
---| "AMBIENT_CLIP"
---| "AMMO_MASTER"
---| "APP_JOB_LIST"
---| "APP_MISSION_STATS_VIEW"
---| "APP_NUMBERPAD"
---| "APP_SECUROSERV_HACKING"
---| "APP_TODO_LIST"
---| "APP_TODO_VIEW"
---| "APP_TRACKIFY"
---| "ARCADE_BUSINESS_HUB"
---| "ARCADE_MANAGEMENT"
---| "ARENA_CAREER_WALL"
---| "ARENA_GUN_CAM"
---| "ARROW_WITH_EVENTS"
---| "ATM"
---| "AUDIO_CLIP"
---| "BANK_JOB_LOGIN"
---| "BIKER_BUSINESSES"
---| "BIKER_MISSION_WALL"
---| "BINOCULARS"
---| "BLIMP_TEXT"
---| "BOSS_JOB_LIST"
---| "BOSS_JOB_LIST_VIEW"
---| "BREAKING_NEWS"
---| "CALLSCREEN"
---| "CAMERA_GALLERY"
---| "CAMERA_SHUTTER"
---| "CASINO_HEIST_BOARD_FINALE"
---| "CASINO_HEIST_BOARD_PREP"
---| "CASINO_HEIST_BOARD_SETUP"
---| "CELLPHONE_ALERT_POPUP"
---| "CELLPHONE_BADGER"
---| "CELLPHONE_CUTSCENE"
---| "CELLPHONE_FACADE"
---| "CELLPHONE_IFRUIT"
---| "CELLPHONE_PROLOGUE"
---| "CLIP_EDIT_TIMELINE"
---| "CLIP_EDIT_TIMELINE_CLICK_REGION"
---| "CLUBHOUSE_NAME"
---| "COL_TYPE_BASIC_PAGE"
---| "COL_TYPE_IMG_PROJ_INFO"
---| "COL_TYPE_IMG_TWELVE"
---| "COL_TYPE_LIST"
---| "COL_TYPE_LIST_HELP"
---| "COL_TYPE_LIST_LONG_AUDIO"
---| "COL_TYPE_LIST_PROJECT_SIZE"
---| "COL_TYPE_LIST_SCROLL"
---| "COL_TYPE_LIST_SCROLL_AUDIO"
---| "COL_TYPE_LOAD_PROJ_INFO"
---| "COL_TYPE_TEXT_PLACEMENT"
---| "COLOUR_SWITCHER"
---| "CONTACTLIST"
---| "CONTROLLER_TEST"
---| "COUNTDOWN"
---| "COVERT_OPS"
---| "CUSTOM_WARNING_SCREEN"
---| "DASHBOARD"
---| "DESKTOP_PC"
---| "DIAL_BANSHEE"
---| "DIAL_BOBCAT"
---| "DIAL_CAVALCADE"
---| "DIAL_COMET"
---| "DIAL_DUKES"
---| "DIAL_FACTION"
---| "DIAL_FELTZER"
---| "DIAL_FEROCI"
---| "DIAL_FUTO"
---| "DIAL_GENTAXI"
---| "DIAL_INFERNUS"
---| "DIAL_MAVERICK"
---| "DIAL_MOTORBIKE"
---| "DIAL_PEYOTE"
---| "DIAL_RACE"
---| "DIAL_RUINER"
---| "DIAL_SPEEDO"
---| "DIAL_SULTAN"
---| "DIAL_SUPERGT"
---| "DIAL_TAILGATER"
---| "DIAL_TRUCK"
---| "DIAL_TRUCKDIGI"
---| "DIAL_ZTYPE"
---| "DIGISCANNER"
---| "DIGITAL_CAMERA"
---| "DISRUPTION_LOGISTICS"
---| "DJ"
---| "DRILLING"
---| "DRONE_CAM"
---| "ECG_MONITOR"
---| "ECOMMERCE_STORE"
---| "EDITOR_SHUTTER"
---| "EMAIL_LIST"
---| "EMAIL_RESPONSE"
---| "EMAIL_VIEW"
---| "GRID_LAYOUT"
---| "HACKER_TRUCK_DESKTOP"
---| "HACKING_PC"
---| "HANGAR_CARGO"
---| "HEIST_AGENCY"
---| "HEIST_DOCKS"
---| "HEIST_ENDSCREEN"
---| "HEIST_FINALE"
---| "HEIST_JEWELLERY"
---| "HEIST_PALETO"
---| "HEIST2_CELEBRATION"
---| "HELI_CAM"
---| "HELP_TEXT"
---| "HELPTEXT"
---| "HOMEMENU"
---| "HOMEMENU_BADGER"
---| "HOMEMENU_FACADE"
---| "HOMEMENU_IFRUIT"
---| "HUD_AREA_NAME"
---| "HUD_AREA_VEHICLE_STREET_NAME"
---| "HUD_CASH"
---| "HUD_CASH_CHANGE"
---| "HUD_CASH_CHANGED"
---| "HUD_CHIPS"
---| "HUD_CHIPS_CHANGED"
---| "HUD_COMPONENT"
---| "HUD_DIRECTOR_MODE"
---| "HUD_DISTRICT_NAME"
---| "HUD_DRUGS_PURSE"
---| "HUD_FLOATING_HELP_TEXT"
---| "HUD_FLOATING_HELP_TEXT_1"
---| "HUD_FLOATING_HELP_TEXT_2"
---| "HUD_HELP_TEXT"
---| "HUD_HELP_TEXT_BIG"
---| "HUD_MISSION_PASSED_MESSAGE"
---| "HUD_MP_CASH"
---| "HUD_MP_INVENTORY"
---| "HUD_MP_MESSAGE"
---| "HUD_MULTIPLAYER_CHAT"
---| "HUD_PLAYER_SWITCH_ALERT"
---| "HUD_RADIO_STATIONS_WHEEL"
---| "HUD_RADIO_WHEEL"
---| "HUD_RETICLE"
---| "HUD_SAVING"
---| "HUD_STREET_NAME"
---| "HUD_SUBTITLE_TEXT"
---| "HUD_SUBTITLE_TEXT_BIG"
---| "HUD_VEHICLE_NAME"
---| "HUD_WANTED_STARS"
---| "HUD_WEAPON_ICON"
---| "HUD_WEAPON_WHEEL"
---| "HUD_WEAPON_WHEEL_STATS"
---| "IAA_HEIST_BOARD"
---| "IMPORT_EXPORT_WAREHOUSE"
---| "JOB_LIST"
---| "LESTER_HACK_PC"
---| "LETTER_SCRAPS"
---| "MARKER"
---| "MARKER_LEFT"
---| "MARKER_RIGHT"
---| "MESSAGE_LIST"
---| "MESSAGE_VIEW"
---| "MIDSIZED_MESSAGE"
---| "MISSION_COMPLETE"
---| "MISSION_QUIT"
---| "MISSION_REPEAT_LIST"
---| "MISSION_TARGET_COMPLETE"
---| "MORGUE_LAPTOP"
---| "MP_AWARD_BASE"
---| "MP_AWARD_FREEMODE"
---| "MP_BIG_MESSAGE_FREEMODE"
---| "MP_BOUNTY_BOARD"
---| "MP_CAR_STATS"
---| "MP_CELEBRATION"
---| "MP_CORONA_PLAYER_INFO"
---| "MP_CREW_TAG"
---| "MP_FREEMODE_CHECKPOINT_BASE"
---| "MP_FREEMODE_PLAYER_LIST"
---| "MP_GAMER_INFO"
---| "MP_MATCHMAKING_CARD"
---| "MP_MATCHMAKING_SELECTOR"
---| "MP_MATCHMAKING_VEHICLE_INFO"
---| "MP_MENU_GLARE"
---| "MP_MISSION_NAME_FREEMODE"
---| "MP_MM_CARD_FREEMODE"
---| "MP_NEXT_JOB_SELECTION"
---| "MP_PLAYER_CARD"
---| "MP_RANK_BAR"
---| "MP_RESULTS_PANEL"
---| "MP_SPECTATOR_CARD"
---| "MP_SPECTATOR_OVERLAY"
---| "MP_UNLOCKS_FREEMODE"
---| "MUGSHOT_BOARD"
---| "MULTIPLAYER_CHAT"
---| "NEW_EDITOR"
---| "NEW_HUD"
---| "NIGHTCLUB"
---| "OBSERVATORY_SCOPE"
---| "OPEN_WHEEL_HEALTH_INDICATOR"
---| "ORBITAL_CANNON_CAM"
---| "ORBITAL_CANNON_MAP"
---| "ORGANISATION_NAME"
---| "OVERVIEW_BACKGROUND"
---| "OVERVIEW_SCROLLER"
---| "PARTY_BUS"
---| "PAUSE_MENU_AWARDS"
---| "PAUSE_MENU_BODY_CONFIG_LIST"
---| "PAUSE_MENU_CHARACTER_CARD"
---| "PAUSE_MENU_CHARACTER_SELECT"
---| "PAUSE_MENU_CREW_COMPARISON_CARD"
---| "PAUSE_MENU_CREW_RANKS"
---| "PAUSE_MENU_CREWS_CARD"
---| "PAUSE_MENU_CREWS_LIST"
---| "PAUSE_MENU_DIALOGUE_LIST"
---| "PAUSE_MENU_FEED"
---| "PAUSE_MENU_FREEMODE_MAP"
---| "PAUSE_MENU_FRIENDS_STATS_SP"
---| "PAUSE_MENU_GALLERY"
---| "PAUSE_MENU_HAIR_COLOUR_LIST"
---| "PAUSE_MENU_HERITAGE_CARD"
---| "PAUSE_MENU_MAP"
---| "PAUSE_MENU_MISSION_HELP_LIST"
---| "PAUSE_MENU_MISSION_REPLAY_CARD"
---| "PAUSE_MENU_NEWSWIRE"
---| "PAUSE_MENU_PAGES_AWARDS"
---| "PAUSE_MENU_PAGES_CHAR_MOM_DAD"
---| "PAUSE_MENU_PAGES_CHAR_SELECT"
---| "PAUSE_MENU_PAGES_CORONA"
---| "PAUSE_MENU_PAGES_CORONA_LOBBY"
---| "PAUSE_MENU_PAGES_CORONA_PLAYERS"
---| "PAUSE_MENU_PAGES_CORONA_RACE"
---| "PAUSE_MENU_PAGES_CREWS"
---| "PAUSE_MENU_PAGES_FRIENDS"
---| "PAUSE_MENU_PAGES_FRIENDS_MP"
---| "PAUSE_MENU_PAGES_GALLERY"
---| "PAUSE_MENU_PAGES_GAME"
---| "PAUSE_MENU_PAGES_INFO"
---| "PAUSE_MENU_PAGES_MAP"
---| "PAUSE_MENU_PAGES_MISSIONCREATOR"
---| "PAUSE_MENU_PAGES_SAVE"
---| "PAUSE_MENU_PAGES_STATS"
---| "PAUSE_MENU_PAGES_STORE"
---| "PAUSE_MENU_PAGES_WEAPONS"
---| "PAUSE_MENU_REPLAY_LIST"
---| "PAUSE_MENU_SPCHAR_OVERLAYS"
---| "PAUSE_MENU_STATS_LIST"
---| "PAUSE_MENU_STATS_VERTICAL_LIST"
---| "PAUSE_MENU_STORE_NEWS"
---| "PAUSE_MENU_TEXT_LIST_FULL"
---| "PAUSE_MENU_WEAPONS"
---| "PAUSE_MP_MENU_PLAYER_COMPARISON_CARD"
---| "PLAYBACK_PANEL"
---| "PLAYER_NAME"
---| "PLAYER_SWITCH"
---| "PLAYER_SWITCH_STATS_PANEL"
---| "PLAYHEAD_MARKER"
---| "POWER_PLAY"
---| "POWER_PLAY_BIKER"
---| "POWER_PLAY_DAY_NIGHT"
---| "POWER_PLAY_GENERIC"
---| "POWER_PLAY_SPECIAL_RACES"
---| "POWER_PLAY_TURF"
---| "POWER_PLAY_VEHICLE"
---| "PSYCHOLOGY_REPORT"
---| "RACE_MESSAGE"
---| "RACE_POSITION"
---| "RAMPAGE"
---| "REMOTE_SNIPER_HUD"
---| "REMOTE_SNIPER_LOADING"
---| "ROUND_DECIMAL_PLACES"
---| "SAVING_FOOTER"
---| "SCORE_CLIP"
---| "SECURITY_CAM"
---| "SECURITY_CAMERA"
---| "SECUROSERV"
---| "SETTINGS"
---| "SHOP_MENU"
---| "SHOP_MENU_DLC"
---| "SHUTTER"
---| "SLOT_MACHINE"
---| "SOCIAL_CLUB_TV"
---| "SP_PLAYER_CARD"
---| "SP_PLAYER_COMPARISON_CARD"
---| "SPEED_INDICATOR"
---| "SPLASH_TEXT"
---| "SPPED_INDICATOR"
---| "STAGE"
---| "STAGE_CLIP"
---| "STARTER_PACK_BROWSER"
---| "STORE_BACKGROUND"
---| "STORE_BLACKOUT"
---| "STORE_CONTENTIMAGE_LIST"
---| "STORE_DETAILS_LIST"
---| "STORE_VERTICAL_LIST"
---| "STRENGTH_TEST_SCORE"
---| "STUNT_JUMPS"
---| "SUB_CAM"
---| "SUB_PC"
---| "TATTOO_BUTTONS"
---| "TAXI_DISPLAY"
---| "TEETH_PULLING"
---| "TEXT_CANVAS"
---| "TEXT_CLIP"
---| "TEXT_INPUT_BOX"
---| "TEXT_MESSAGE_LIST"
---| "TEXT_MESSAGE_VIEW"
---| "TEXTFIELD"
---| "THUMBNAIL_CLIP"
---| "TIMECODE_MC"
---| "TIMECODE_NEW"
---| "TIMELINE_PANEL"
---| "TRAFFIC_CAM"
---| "TURRET_CAM"
---| "TV_FRAME"
---| "VAULT_DRILL"
---| "VAULT_LASER"
---| "VIDEO_BUTTON_TYPES"
---| "VIDEO_CLIP"
---| "WAREHOUSE"
---| "WATERMARK"
---| "WIND_METER"
---| "XYZ"
---| "YACHT_NAME"
---| "YACHT_NAME_STERN"
---| "YOGA_BUTTONS"
---| "DIGITAL_SAFE_DISPLAY"
---| "ISLAND_HEIST_BOARD"
---| "SUBMARINE_MISSILES"
---| "HACKING_MESSAGE"
---| "HEIST_CELEBRATION"
---| "HEIST_MP"
---| "HEIST_PRE"
---| "HEISTMAP_MP"
---| "INTERIORS"
---| "AXE_OF_FURY"
---| "DANCER"
---| "DARTS_SCOREBOARD"
---| "DARTS_SCOREBOARD_BIKER"
---| "DONT_CROSS_THE_LINE"
---| "GOLF"
---| "GOLF_FLOATING_UI"
---| "HORSE_RACING_CONSOLE"
---| "HORSE_RACING_WALL"
---| "SC_LEADERBOARD"
---| "SPIN_THE_WHEEL"
---| "TENNIS"
---| "FOG_MC"
---| "GOLF_COURSE"
---| "GREEN_AND_FRIENDLY"
---| "GREEN_AND_NET_PLAYER1"
---| "GREEN_AND_NET_PLAYER2"
---| "GREEN_AND_NET_PLAYER3"
---| "MINIMAP"
---| "MINIMAP_MAIN_MAP"
---| "NET_PLAYER1_AND_NET_PLAYER2"
---| "NET_PLAYER1_AND_NET_PLAYER3"
---| "TXD_MC"
---| "GAMEPAD_CALIBRATION"
---| "LANGUAGE_SELECT"
---| "PC_KEY"
---| "TATTOO_KEYS"
---| "TEXTBTN_996"
---| "TEXTBTN_997"
---| "TEXTBTN_999"
---| "FORECLOSURES_MAZE_D_BANK_COM"
---| "FORECLOSURES_MAZE_D_BANK_COM_WRAPPER"
---| "FORMAT_COLUMN"
---| "GENERIC_WEBSITE_SCRIPT"
---| "MYSTOCKS_BUTTON"
---| "STOCKLIST_BUTTON"
---| "TICKERTAPE"
---| "WEB_BROWSER"
---| "WEB_BROWSER_PARENT"
---| "WWW_ACCEPT_D_THE_D_CHAOS_COM"
---| "WWW_ARENAWAR_TV"
---| "WWW_BAWSAQ_COM"
---| "WWW_BENNYSORIGINALMOTORWORKS_COM"
---| "WWW_BLEETER_BIZ"
---| "WWW_CASHFORDEADDREAMS_COM"
---| "WWW_CLASSICVINEWOOD_COM"
---| "WWW_CREDITCARDCONSOLIDATIONKINGS_COM"
---| "WWW_CULTSTOPPERS_COM"
---| "WWW_DOCKTEASE_COM"
---| "WWW_DOCKTEASE_COM_PARENT"
---| "WWW_DYNASTY8EXECUTIVEREALTY_COM"
---| "WWW_DYNASTY8REALESTATE_COM"
---| "WWW_EGOCHASERENERGYBAR_COM"
---| "WWW_ELECTROTOKESYSTEM_COM"
---| "WWW_ELITASTRAVEL_COM"
---| "WWW_EPSILONPROGRAM_COM"
---| "WWW_EYEFIND_INFO"
---| "WWW_FAMEORSHAME_NET"
---| "WWW_FLEECA_COM"
---| "WWW_HUSHSMUSH_COM"
---| "WWW_IWILLSURVIVEITALL_COM"
---| "WWW_JACKHOWITZER_COM"
---| "WWW_JOCKCRANLEY_COM"
---| "WWW_KUNGFURAINBOWLAZERFORCE_COM"
---| "WWW_LCN_D_EXCHANGE_COM"
---| "WWW_LEGENDARYMOTORSPORT_NET"
---| "WWW_LEGENDARYMOTORSPORT_NET_WRAPPER"
---| "WWW_LENNYAVERY_D_REALTY_COM"
---| "WWW_LIFEINVADER_COM"
---| "WWW_MAZE_D_BANK_COM"
---| "WWW_MINISTERINMINUTES_COM"
---| "WWW_MONETARYSCIENCE_US"
---| "WWW_MYDIVINEWITHIN_COM"
---| "WWW_PANDMCYCLES_COM"
---| "WWW_PRINCESSROBOTBUBBLEGUM_COM"
---| "WWW_PROPOSITION43_ORG"
---| "WWW_PSYCHICSHOUTOUT_COM"
---| "WWW_REPUBLICANSPACERANGERS_COM"
---| "WWW_RIGHTEOUSSLAUGHTER7_COM"
---| "WWW_SANANDREASDMV_COM"
---| "WWW_SAWATERANDPOWER_COM"
---| "WWW_SIXFIGURETEMPS_COM"
---| "WWW_SOUTHERNSANANDREASSUPERAUTOS_COM"
---| "WWW_SOUTHERNSANANDREASSUPERAUTOS_COM_WRAPPER"
---| "WWW_SOUTHERNSANANDREASSUPERAUTOS_COM_WRAPPER_WRAPPER"
---| "WWW_TACO_D_BOMB_COM"
---| "WWW_THEBANKOFLIBERTY_COM"
---| "WWW_THECHILDRENOFTHEMOUNTAIN_COM"
---| "WWW_THEDIAMONDCASINOANDRESORT_COM"
---| "WWW_THEINTERNETISAHELLHOLE_COM"
---| "WWW_THEPOWCLEANSE_COM"
---| "WWW_THEREALITYMILL_COM"
---| "WWW_TOESHOESUSA_COM"
---| "WWW_VINEWOODLOGLINEGENERATOR_COM"
---| "WWW_VISITTHEALAMOSEA_COM"
---| "WWW_WARSTOCK_D_CACHE_D_AND_D_CARRY_COM"
---| "WWW_WARSTOCK_D_CACHE_D_AND_D_CARRY_COM_WRAPPER"
---| "WWW_WHOKILLEDLEONORAJOHNSON_COM"
---| "WWW_YOURDEADFAMILY_COM"
---| "WWW_YOURNEWBABYSNAME_COM"
