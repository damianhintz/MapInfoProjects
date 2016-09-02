'============================================================================
' MapInfo version 11.0 - System defines
'----------------------------------------------------------------------------
' This file contains defines useful when programming in the MapBasic
' language.  There are three versions of this file:
'     MAPBASIC.DEF  - MapBasic syntax
'     MAPBASIC.BAS  - Visual Basic syntax
'     MAPBASIC.H    - C/C++ syntax
'----------------------------------------------------------------------------
' The defines in this file are organized into the following sections:
'     General Purpose defines:
'       macros, logical constants, angle conversion, colors, string length
'     BrowserInfo() defines
'     ButtonPadInfo() defines
'     ColumnInfo() and column type defines
'     CommandInfo() and task switch defines
'     DateWindow() defines
'     FileAttr() and file access mode defines
'     GetFolderPath$() defines
'     GetPreferencePath$() defines
'     IntersectNodes() parameters
'     LabelInfo() defines
'     GroupLayerInfo() defines
'     LayerListInfo() defines
'     LayerInfo(), display mode, label property, layer type, hotlink defines
'     LegendInfo() and legend orientation defines
'     LegendFrameInfo() and frame type defines
'     LegendStyleInfo() defines
'     LibraryServiceInfo() defines
'     LocateFile$() defines
'     Map3DInfo() defines
'     MapperInfo(), display mode, calculation type, and clip type defines
'     MenuItemInfoByID() and MenuItemInfoByHandler() defines
'     ObjectGeography() defines
'     ObjectInfo() and object type defines
'     PrismMapInfo() defines
'     SearchInfo() defines
'     SelectionInfo() defines
'     Server statement and function defines
'     SessionInfo() defines
'     Set Next Document Style defines
'     StringCompare() return values
'     StyleAttr() defines
'     SystemInfo(), platform, and version defines
'     TableInfo() and table type defines
'     WindowInfo(), window type and state, and print orientation defines
'     Abbreviated list of error codes
'     Backward Compatibility defines
'============================================================================
' MAPBASIC.DEF is converted into MAPBASIC.H by doing the following:
'   - concatenate MAPBASIC.DEF and MENU.DEF into MAPBASIC.H
'   - search & replace "'" at begining of a line with "//"
'   - search & replace "Define" at begining of a line with "#define"
'   - delete the following sections:
'         * General Purpose defines:
'              Macros, Logical Constants, Angle Conversions
'         * Abbreviated list of error codes
'         * Backward Compatibility defines
'         * Menu constants whose names have changed
'         * Obsolete menu items
'============================================================================
' MAPBASIC.DEF is converted into MAPBASIC.BAS by doing the following:
'   - concatenate MAPBASIC.DEF and MENU.DEF into MAPBASIC.BAS
'   - search & replace "Define <name>" with "Global Const <name> ="
'     e.g. "<Define {[!-z]+} +{[!-z]}" with "Global Const \0 = \1" with Brief
'   - delete the following sections:
'         * General Purpose defines:
'             Macros, Logical Constants, Angle Conversions
'         * Abbreviated list of error codes
'         * Backward Compatibility defines
'         * Menu constants whose names have changed
'         * Obsolete menu items
'============================================================================

'============================================================================
' General Purpose defines
'============================================================================
'----------------------------------------------------------------------------
' Colors
'----------------------------------------------------------------------------
Global Const BLACK                                    = 0
Global Const WHITE                                    = 16777215
Global Const RED                                      = 16711680
Global Const GREEN                                    = 65280
Global Const BLUE                                     = 255
Global Const CYAN                                     = 65535
Global Const MAGENTA                                  = 16711935
Global Const YELLOW                                   = 16776960

'----------------------------------------------------------------------------
'Maximum length for character string
'----------------------------------------------------------------------------
Global Const MAX_STRING_LENGTH                        = 32767

'============================================================================
' BrowserInfo() defines
'============================================================================
Global Const BROWSER_INFO_NROWS                       = 1
Global Const BROWSER_INFO_NCOLS                       = 2
Global Const BROWSER_INFO_CURRENT_ROW                 = 3
Global Const BROWSER_INFO_CURRENT_COLUMN              = 4
Global Const BROWSER_INFO_CURRENT_CELL_VALUE          = 5

'============================================================================
' ButtonPadInfo() defines
'============================================================================
Global Const BTNPAD_INFO_FLOATING                     = 1
Global Const BTNPAD_INFO_WIDTH                        = 2
Global Const BTNPAD_INFO_NBTNS                        = 3
Global Const BTNPAD_INFO_X                            = 4
Global Const BTNPAD_INFO_Y                            = 5
Global Const BTNPAD_INFO_WINID                        = 6
Global Const BTNPAD_INFO_DOCK_POSITION                = 7

'============================================================================
' New as per MI Pro 10.5.
' Codes returned from ButtonPadInfo() when 'BTNPAD_INFO_DOCK_POSITION' code
' is used to inquiry about the tool bar position
'============================================================================
Global Const BTNPAD_INFO_DOCK_NONE                    = 0
Global Const BTNPAD_INFO_DOCK_LEFT                    = 1
Global Const BTNPAD_INFO_DOCK_TOP                     = 2
Global Const BTNPAD_INFO_DOCK_RIGHT                   = 3
Global Const BTNPAD_INFO_DOCK_BOTTOM                  = 4

'============================================================================
' ColumnInfo() defines
'============================================================================
Global Const COL_INFO_NAME                            = 1
Global Const COL_INFO_NUM                             = 2
Global Const COL_INFO_TYPE                            = 3
Global Const COL_INFO_WIDTH                           = 4
Global Const COL_INFO_DECPLACES                       = 5
Global Const COL_INFO_INDEXED                         = 6
Global Const COL_INFO_EDITABLE                        = 7

'----------------------------------------------------------------------------
' Column type defines, returned by ColumnInfo() for COL_INFO_TYPE
'----------------------------------------------------------------------------
Global Const COL_TYPE_CHAR                            = 1
Global Const COL_TYPE_DECIMAL                         = 2
Global Const COL_TYPE_INTEGER                         = 3
Global Const COL_TYPE_SMALLINT                        = 4
Global Const COL_TYPE_DATE                            = 5
Global Const COL_TYPE_LOGICAL                         = 6
Global Const COL_TYPE_GRAPHIC                         = 7
Global Const COL_TYPE_FLOAT                           = 8
Global Const COL_TYPE_TIME                            = 37
Global Const COL_TYPE_DATETIME                        = 38

'============================================================================
' CommandInfo() defines
'============================================================================
Global Const CMD_INFO_X                               = 1
Global Const CMD_INFO_Y                               = 2
Global Const CMD_INFO_SHIFT                           = 3
Global Const CMD_INFO_CTRL                            = 4
Global Const CMD_INFO_X2                              = 5
Global Const CMD_INFO_Y2                              = 6
Global Const CMD_INFO_TOOLBTN                         = 7
Global Const CMD_INFO_MENUITEM                        = 8
Global Const CMD_INFO_WIN                             = 1
Global Const CMD_INFO_SELTYPE                         = 1
Global Const CMD_INFO_ROWID                           = 2
Global Const CMD_INFO_INTERRUPT                       = 3
Global Const CMD_INFO_STATUS                          = 1
Global Const CMD_INFO_MSG                             = 1000
Global Const CMD_INFO_DLG_OK                          = 1
Global Const CMD_INFO_DLG_DBL                         = 1
Global Const CMD_INFO_FIND_RC                         = 3
Global Const CMD_INFO_FIND_ROWID                      = 4
Global Const CMD_INFO_XCMD                            = 1
Global Const CMD_INFO_CUSTOM_OBJ                      = 1
Global Const CMD_INFO_TASK_SWITCH                     = 1
Global Const CMD_INFO_EDIT_TABLE                      = 1
Global Const CMD_INFO_EDIT_STATUS                     = 2
Global Const CMD_INFO_EDIT_ASK                        = 1
Global Const CMD_INFO_EDIT_SAVE                       = 2
Global Const CMD_INFO_EDIT_DISCARD                    = 3
Global Const CMD_INFO_HL_WINDOW_ID                    = 17
Global Const CMD_INFO_HL_TABLE_NAME                   = 18
Global Const CMD_INFO_HL_ROWID                        = 19
Global Const CMD_INFO_HL_LAYER_ID                     = 20
Global Const CMD_INFO_HL_FILE_NAME                    = 21

'----------------------------------------------------------------------------
' Task Switches, returned by CommandInfo() for CMD_INFO_TASK_SWITCH
'----------------------------------------------------------------------------
Global Const SWITCHING_OUT_OF_MAPINFO                 = 0
Global Const SWITCHING_INTO_MAPINFO                   = 1

'============================================================================
' DateWindow() defines
'============================================================================
Global Const DATE_WIN_SESSION                         = 1
Global Const DATE_WIN_CURPROG                         = 2

'============================================================================
' FileAttr() defines
'============================================================================
Global Const FILE_ATTR_MODE                           = 1
Global Const FILE_ATTR_FILESIZE                       = 2

'----------------------------------------------------------------------------
' File Access Modes, returned by FileAttr() for FILE_ATTR_MODE
'----------------------------------------------------------------------------
Global Const MODE_INPUT                               = 0
Global Const MODE_OUTPUT                              = 1
Global Const MODE_APPEND                              = 2
Global Const MODE_RANDOM                              = 3
Global Const MODE_BINARY                              = 4

'============================================================================
' GetFolderPath$() defines
'============================================================================

Global Const FOLDER_MI_APPDATA                        = -1
Global Const FOLDER_MI_LOCAL_APPDATA                  = -2
Global Const FOLDER_MI_PREFERENCE                     = -3
Global Const FOLDER_MI_COMMON_APPDATA                 = -4
Global Const FOLDER_APPDATA                           = 26
Global Const FOLDER_LOCAL_APPDATA                     = 28
Global Const FOLDER_COMMON_APPDATA                    = 35
Global Const FOLDER_COMMON_DOCS                       = 46
Global Const FOLDER_MYDOCS                            = 5
Global Const FOLDER_MYPICS                            = 39

'============================================================================
' GetPreferencePath$(), GetCurrentPath$(), and Set Path defines
'============================================================================

Global Const PREFERENCE_PATH_TABLE          = 0
Global Const PREFERENCE_PATH_WORKSPACE      = 1
Global Const PREFERENCE_PATH_MBX            = 2
Global Const PREFERENCE_PATH_IMPORT         = 3
Global Const PREFERENCE_PATH_SQLQUERY       = 4
Global Const PREFERENCE_PATH_THEMETHEMPLATE = 5
Global Const PREFERENCE_PATH_MIQUERY        = 6
Global Const PREFERENCE_PATH_NEWGRID        = 7
Global Const PREFERENCE_PATH_CRYSTAL        = 8
Global Const PREFERENCE_PATH_GRAPHSUPPORT   = 9
Global Const PREFERENCE_PATH_REMOTETABLE    = 10
Global Const PREFERENCE_PATH_SHAPEFILE      = 11
Global Const PREFERENCE_PATH_WFSTABLE       = 12
Global Const PREFERENCE_PATH_WMSTABLE       = 13

'============================================================================
' IntersectNodes() defines
'============================================================================
Global Const INCL_CROSSINGS                           = 1
Global Const INCL_COMMON                              = 6
Global Const INCL_ALL                                 = 7

'============================================================================
' LabelInfo() defines
'============================================================================
Global Const LABEL_INFO_OBJECT                        = 1
Global Const LABEL_INFO_POSITION                      = 2
Global Const LABEL_INFO_ANCHORX                       = 3
Global Const LABEL_INFO_ANCHORY                       = 4
Global Const LABEL_INFO_OFFSET                        = 5
Global Const LABEL_INFO_ROWID                         = 6
Global Const LABEL_INFO_TABLE                         = 7
Global Const LABEL_INFO_EDIT                          = 8
Global Const LABEL_INFO_EDIT_VISIBILITY               = 9
Global Const LABEL_INFO_EDIT_ANCHOR                   = 10
Global Const LABEL_INFO_EDIT_OFFSET                   = 11
Global Const LABEL_INFO_EDIT_FONT                     = 12
Global Const LABEL_INFO_EDIT_PEN                      = 13
Global Const LABEL_INFO_EDIT_TEXT                     = 14
Global Const LABEL_INFO_EDIT_TEXTARROW                = 15
Global Const LABEL_INFO_EDIT_ANGLE                    = 16
Global Const LABEL_INFO_EDIT_POSITION                 = 17
Global Const LABEL_INFO_EDIT_TEXTLINE                 = 18
Global Const LABEL_INFO_SELECT                        = 19
Global Const LABEL_INFO_DRAWN                         = 20
Global Const LABEL_INFO_ORIENTATION                   = 21

'============================================================================
' Codes passed to the GroupLayerInfo function to get info about a group layer.
'============================================================================
Global Const GROUPLAYER_INFO_NAME                     = 1
Global Const GROUPLAYER_INFO_LAYERLIST_ID             = 2
Global Const GROUPLAYER_INFO_DISPLAY                  = 3
Global Const GROUPLAYER_INFO_LAYERS                   = 4
Global Const GROUPLAYER_INFO_ALL_LAYERS               = 5
Global Const GROUPLAYER_INFO_TOPLEVEL_LAYERS          = 6
Global Const GROUPLAYER_INFO_PARENT_GROUP_ID          = 7

'============================================================================
' Values returned by GroupLayerInfo() for GROUPLAYER_INFO_DISPLAY. These
' defines correspond to the MapBasic defines in MAPBASIC.DEF. If you alter
' these you must alter MAPBASIC.DEF.
'============================================================================
Global Const GROUPLAYER_INFO_DISPLAY_OFF              = 0
Global Const GROUPLAYER_INFO_DISPLAY_ON               = 1

'============================================================================
' Codes passed to the LayerListInfo function to help enumerating all layers in a Map.
'============================================================================
Global Const LAYERLIST_INFO_TYPE                      = 1
Global Const LAYERLIST_INFO_NAME                      = 2
Global Const LAYERLIST_INFO_LAYER_ID                  = 3
Global Const LAYERLIST_INFO_GROUPLAYER_ID             = 4

'============================================================================
' Values returned by LayerListInfo() for LAYERLIST_INFO_TYPE. These        */
' defines correspond to the MapBasic defines in MAPBASIC.DEF. If you alter */
' these you must alter MAPBASIC.DEF.                                       */
'============================================================================
Global Const LAYERLIST_INFO_TYPE_LAYER              = 0
Global Const LAYERLIST_INFO_TYPE_GROUP              = 1

'============================================================================
' LayerInfo() defines
'============================================================================
Global Const LAYER_INFO_NAME                          = 1
Global Const LAYER_INFO_EDITABLE                      = 2
Global Const LAYER_INFO_SELECTABLE                    = 3
Global Const LAYER_INFO_ZOOM_LAYERED                  = 4
Global Const LAYER_INFO_ZOOM_MIN                      = 5
Global Const LAYER_INFO_ZOOM_MAX                      = 6
Global Const LAYER_INFO_COSMETIC                      = 7
Global Const LAYER_INFO_PATH                          = 8
Global Const LAYER_INFO_DISPLAY                       = 9
Global Const LAYER_INFO_OVR_LINE                      = 10
Global Const LAYER_INFO_OVR_PEN                       = 11
Global Const LAYER_INFO_OVR_BRUSH                     = 12
Global Const LAYER_INFO_OVR_SYMBOL                    = 13
Global Const LAYER_INFO_OVR_FONT                      = 14
Global Const LAYER_INFO_LBL_EXPR                      = 15
Global Const LAYER_INFO_LBL_LT                        = 16
Global Const LAYER_INFO_LBL_CURFONT                   = 17
Global Const LAYER_INFO_LBL_FONT                      = 18
Global Const LAYER_INFO_LBL_PARALLEL                  = 19
Global Const LAYER_INFO_LBL_POS                       = 20
Global Const LAYER_INFO_ARROWS                        = 21
Global Const LAYER_INFO_NODES                         = 22
Global Const LAYER_INFO_CENTROIDS                     = 23
Global Const LAYER_INFO_TYPE                          = 24
Global Const LAYER_INFO_LBL_VISIBILITY                = 25
Global Const LAYER_INFO_LBL_ZOOM_MIN                  = 26
Global Const LAYER_INFO_LBL_ZOOM_MAX                  = 27
Global Const LAYER_INFO_LBL_AUTODISPLAY               = 28
Global Const LAYER_INFO_LBL_OVERLAP                   = 29
Global Const LAYER_INFO_LBL_DUPLICATES                = 30
Global Const LAYER_INFO_LBL_OFFSET                    = 31
Global Const LAYER_INFO_LBL_MAX                       = 32
Global Const LAYER_INFO_LBL_PARTIALSEGS               = 33
Global Const LAYER_INFO_HOTLINK_EXPR                  = 34
Global Const LAYER_INFO_HOTLINK_MODE                  = 35
Global Const LAYER_INFO_HOTLINK_RELATIVE              = 36
Global Const LAYER_INFO_HOTLINK_COUNT                 = 37
Global Const LAYER_INFO_LBL_ORIENTATION               = 38
Global Const LAYER_INFO_LAYER_ALPHA                   = 39
Global Const LAYER_INFO_LAYER_TRANSLUCENCY            = 40
Global Const LAYER_INFO_LABEL_ALPHA                   = 41
Global Const LAYER_INFO_LAYERLIST_ID                  = 42
Global Const LAYER_INFO_PARENT_GROUP_ID               = 43
'Code 44 - 52 are for override styel & label
Global Const LAYER_INFO_OVR_STYLE_COUNT               = 44
Global Const LAYER_INFO_OVR_LBL_COUNT                 = 45
Global Const LAYER_INFO_OVR_STYLE_CURRENT             = 46
Global Const LAYER_INFO_OVR_LBL_CURRENT               = 47
Global Const LAYER_INFO_OVR_LINE_COUNT                = 48
Global Const LAYER_INFO_OVR_PEN_COUNT                 = 49
Global Const LAYER_INFO_OVR_BRUSH_COUNT               = 50
Global Const LAYER_INFO_OVR_SYMBOL_COUNT              = 51
Global Const LAYER_INFO_OVR_FONT_COUNT                = 52

'----------------------------------------------------------------------------
' Values returned by LayerInfo() for LAYER_INFO_LABEL_ORIENTATION and
' LABEL_INFO_ORIENTATION.
'----------------------------------------------------------------------------
Global Const LAYER_INFO_LABEL_ORIENT_HORIZONTAL       = 0
Global Const LAYER_INFO_LABEL_ORIENT_PARALLEL         = 1
Global Const LAYER_INFO_LABEL_ORIENT_CURVED           = 2

'----------------------------------------------------------------------------
' Display Modes, returned by LayerInfo() for LAYER_INFO_DISPLAY
'----------------------------------------------------------------------------
Global Const LAYER_INFO_DISPLAY_OFF                   = 0
Global Const LAYER_INFO_DISPLAY_GRAPHIC               = 1
Global Const LAYER_INFO_DISPLAY_GLOBAL                = 2
Global Const LAYER_INFO_DISPLAY_VALUE                 = 3

'----------------------------------------------------------------------------
' Label Linetypes, returned by LayerInfo() for LAYER_INFO_LBL_LT
'----------------------------------------------------------------------------
Global Const LAYER_INFO_LBL_LT_NONE                   = 0
Global Const LAYER_INFO_LBL_LT_SIMPLE                 = 1
Global Const LAYER_INFO_LBL_LT_ARROW                  = 2

'----------------------------------------------------------------------------
' Label Positions, returned by LayerInfo() for LAYER_INFO_LBL_POS
'----------------------------------------------------------------------------
Global Const LAYER_INFO_LBL_POS_CC                    = 0
Global Const LAYER_INFO_LBL_POS_TL                    = 1
Global Const LAYER_INFO_LBL_POS_TC                    = 2
Global Const LAYER_INFO_LBL_POS_TR                    = 3
Global Const LAYER_INFO_LBL_POS_CL                    = 4
Global Const LAYER_INFO_LBL_POS_CR                    = 5
Global Const LAYER_INFO_LBL_POS_BL                    = 6
Global Const LAYER_INFO_LBL_POS_BC                    = 7
Global Const LAYER_INFO_LBL_POS_BR                    = 8

'----------------------------------------------------------------------------
' Layer Types, returned by LayerInfo() for LAYER_INFO_TYPE
'----------------------------------------------------------------------------
Global Const LAYER_INFO_TYPE_NORMAL                   = 0
Global Const LAYER_INFO_TYPE_COSMETIC                 = 1
Global Const LAYER_INFO_TYPE_IMAGE                    = 2
Global Const LAYER_INFO_TYPE_THEMATIC                 = 3
Global Const LAYER_INFO_TYPE_GRID                     = 4
Global Const LAYER_INFO_TYPE_WMS                      = 5
Global Const LAYER_INFO_TYPE_TILESERVER               = 6

'----------------------------------------------------------------------------
' Label visibility modes, from LayerInfo() for LAYER_INFO_LBL_VISIBILITY
'----------------------------------------------------------------------------
Global Const LAYER_INFO_LBL_VIS_OFF                   = 1
Global Const LAYER_INFO_LBL_VIS_ZOOM                  = 2
Global Const LAYER_INFO_LBL_VIS_ON                    = 3

'----------------------------------------------------------------------------
' Code passed to StyleOverrideInfo function to get override style information
'----------------------------------------------------------------------------
Global Const STYLE_OVR_INFO_NAME                      = 1
Global Const STYLE_OVR_INFO_VISIBILITY                = 2
Global Const STYLE_OVR_INFO_ZOOM_MIN                  = 3
Global Const STYLE_OVR_INFO_ZOOM_MAX                  = 4
Global Const STYLE_OVR_INFO_ARROWS                    = 5
Global Const STYLE_OVR_INFO_NODES                     = 6
Global Const STYLE_OVR_INFO_CENTROIDS                 = 7
Global Const STYLE_OVR_INFO_ALPHA                     = 8
Global Const STYLE_OVR_INFO_TRANSLUCENCY              = 9
Global Const STYLE_OVR_INFO_LINE                      = 10
Global Const STYLE_OVR_INFO_PEN                       = 11
Global Const STYLE_OVR_INFO_BRUSH                     = 12
Global Const STYLE_OVR_INFO_SYMBOL                    = 13
Global Const STYLE_OVR_INFO_FONT                      = 14
Global Const STYLE_OVR_INFO_SYMBOL_COUNT              = 15
Global Const STYLE_OVR_INFO_LINE_COUNT                = 16
Global Const STYLE_OVR_INFO_PEN_COUNT                 = 17
Global Const STYLE_OVR_INFO_BRUSH_COUNT               = 18
Global Const STYLE_OVR_INFO_FONT_COUNT                = 19

'----------------------------------------------------------------------------
' Possible return value of StyleOverrideInfo for code STYLE_OVR_INFO_VISIBILITY
'----------------------------------------------------------------------------
Global Const STYLE_OVR_INFO_VIS_OFF                   = 0
Global Const STYLE_OVR_INFO_VIS_ON                    = 1
Global Const STYLE_OVR_INFO_VIS_OFF_ZOOM              = 2

'----------------------------------------------------------------------------
' Code passed to LabelOverrideInfo function to get override label information
'----------------------------------------------------------------------------
Global Const LBL_OVR_INFO_NAME                        = 1
Global Const LBL_OVR_INFO_VISIBILITY                  = 2
Global Const LBL_OVR_INFO_ZOOM_MIN                    = 3
Global Const LBL_OVR_INFO_ZOOM_MAX                    = 4
Global Const LBL_OVR_INFO_EXPR                        = 5
Global Const LBL_OVR_INFO_LT                          = 6
Global Const LBL_OVR_INFO_FONT                        = 7
Global Const LBL_OVR_INFO_PARALLEL                    = 8
Global Const LBL_OVR_INFO_POS                         = 9
Global Const LBL_OVR_INFO_OVERLAP                     = 10
Global Const LBL_OVR_INFO_DUPLICATES                  = 11
Global Const LBL_OVR_INFO_OFFSET                      = 12
Global Const LBL_OVR_INFO_MAX                         = 13
Global Const LBL_OVR_INFO_PARTIALSEGS                 = 14
Global Const LBL_OVR_INFO_ORIENTATION                 = 15
Global Const LBL_OVR_INFO_ALPHA                       = 16
Global Const LBL_OVR_INFO_AUTODISPLAY                 = 17
Global Const LBL_OVR_INFO_POS_RETRY                   = 18
Global Const LBL_OVR_INFO_LINE_PEN                    = 19
Global Const LBL_OVR_INFO_PERCENT_OVER                = 20

'----------------------------------------------------------------------------
' Possible return value of LabelOverrideInfo for code LBL_OVR_INFO_VISIBILITY
'----------------------------------------------------------------------------
Global Const LBL_OVR_INFO_VIS_OFF                     = 0
Global Const LBL_OVR_INFO_VIS_ON                      = 1
Global Const LBL_OVR_INFO_VIS_OFF_ZOOM                = 2

' LayerControlInfo() defines
'----------------------------------------------------------------------------
Global Const LC_INFO_SEL_COUNT                        = 1

'----------------------------------------------------------------------------
' LayerControlSelectionInfo() Global Consts
'----------------------------------------------------------------------------
Global Const LC_SEL_INFO_NAME                         = 1
Global Const LC_SEL_INFO_TYPE                         = 2
Global Const LC_SEL_INFO_MAPWIN_ID                    = 3
Global Const LC_SEL_INFO_LAYER_ID                     = 4
Global Const LC_SEL_INFO_OVR_ID                       = 5

'----------------------------------------------------------------------------
' Values returned by LayerControlSelectionInfo() for LC_SEL_INFO_TYPE.
'----------------------------------------------------------------------------
Global Const LC_SEL_INFO_TYPE_MAP                     = 0
Global Const LC_SEL_INFO_TYPE_LAYER                   = 1
Global Const LC_SEL_INFO_TYPE_GROUPLAYER              = 2
Global Const LC_SEL_INFO_TYPE_STYLE_OVR               = 3
Global Const LC_SEL_INFO_TYPE_LABEL_OVR               = 4

'----------------------------------------------------------------------------
' HotlinkInfo() defines'----------------------------------------------------------------------------
Global Const HOTLINK_INFO_EXPR                        = 1
Global Const HOTLINK_INFO_MODE                        = 2
Global Const HOTLINK_INFO_RELATIVE                    = 3
Global Const HOTLINK_INFO_ENABLED                     = 4
Global Const HOTLINK_INFO_ALIAS                       = 5

'----------------------------------------------------------------------------
' Hotlink activation modes, from LayerInfo() for LAYER_INFO_HOTLINK_MODE
'----------------------------------------------------------------------------
Global Const HOTLINK_MODE_LABEL                       = 0
Global Const HOTLINK_MODE_OBJ                         = 1
Global Const HOTLINK_MODE_BOTH                        = 2

'============================================================================
' LegendInfo() defines
'============================================================================
Global Const LEGEND_INFO_MAP_ID                       = 1
Global Const LEGEND_INFO_ORIENTATION                  = 2
Global Const LEGEND_INFO_NUM_FRAMES                   = 3
Global Const LEGEND_INFO_STYLE_SAMPLE_SIZE            = 4

'============================================================================
' Orientation codes, returned by LegendInfo() for LEGEND_INFO_ORIENTATION
'============================================================================
Global Const ORIENTATION_PORTRAIT                     = 1
Global Const ORIENTATION_LANDSCAPE                    = 2
Global Const ORIENTATION_CUSTOM                       = 3

'----------------------------------------------------------------------------
' Style sample codes, from LegendInfo() for LEGEND_INFO_STYLE_SAMPLE_SIZE
'----------------------------------------------------------------------------
Global Const STYLE_SAMPLE_SIZE_SMALL                  = 0
Global Const STYLE_SAMPLE_SIZE_LARGE                  = 1

'============================================================================
' LegendFrameInfo() defines
'============================================================================
Global Const FRAME_INFO_TYPE                          = 1
Global Const FRAME_INFO_MAP_LAYER_ID                  = 2
Global Const FRAME_INFO_REFRESHABLE                   = 3
Global Const FRAME_INFO_POS_X                         = 4
Global Const FRAME_INFO_POS_Y                         = 5
Global Const FRAME_INFO_WIDTH                         = 6
Global Const FRAME_INFO_HEIGHT                        = 7
Global Const FRAME_INFO_TITLE                         = 8
Global Const FRAME_INFO_TITLE_FONT                    = 9
Global Const FRAME_INFO_SUBTITLE                      = 10
Global Const FRAME_INFO_SUBTITLE_FONT                 = 11
Global Const FRAME_INFO_BORDER_PEN                    = 12
Global Const FRAME_INFO_NUM_STYLES                    = 13
Global Const FRAME_INFO_VISIBLE                       = 14
Global Const FRAME_INFO_COLUMN                        = 15
Global Const FRAME_INFO_LABEL                         = 16

'============================================================================
' Frame Types, returned by LegendFrameInfo() for FRAME_INFO_TYPE
'============================================================================
Global Const FRAME_TYPE_STYLE                         = 1
Global Const FRAME_TYPE_THEME                         = 2

'============================================================================
' Geocode Attributes, returned by GeocodeInfo()
'============================================================================
Global Const GEOCODE_STREET_NAME                      = 1
Global Const GEOCODE_STREET_NUMBER                    = 2
Global Const GEOCODE_MUNICIPALITY                     = 3
Global Const GEOCODE_MUNICIPALITY2                    = 4
Global Const GEOCODE_COUNTRY_SUBDIVISION              = 5
Global Const GEOCODE_COUNTRY_SUBDIVISION2             = 6
Global Const GEOCODE_POSTAL_CODE                      = 7
Global Const GEOCODE_DICTIONARY                       = 9
Global Const GEOCODE_BATCH_SIZE                       = 10
Global Const GEOCODE_FALLBACK_GEOGRAPHIC              = 11
Global Const GEOCODE_FALLBACK_POSTAL                  = 12
Global Const GEOCODE_OFFSET_CENTER                    = 13
Global Const GEOCODE_OFFSET_CENTER_UNITS              = 14
Global Const GEOCODE_OFFSET_END                       = 15
Global Const GEOCODE_OFFSET_END_UNITS                 = 16
Global Const GEOCODE_MIXED_CASE                       = 17
Global Const GEOCODE_RESULT_MARK_MULTIPLE             = 18
Global Const GEOCODE_COUNT_GEOCODED                   = 19
Global Const GEOCODE_COUNT_NOTGEOCODED                = 20
Global Const GEOCODE_UNABLE_TO_CONVERT_DATA           = 21
Global Const GEOCODE_MAX_BATCH_SIZE                   = 22

Global Const GEOCODE_PASSTHROUGH                      = 100

Global Const DICTIONARY_ALL                           = 1
Global Const DICTIONARY_ADDRESS_ONLY                  = 2
Global Const DICTIONARY_USER_ONLY                     = 3
Global Const DICTIONARY_PREFER_ADDRESS                = 4
Global Const DICTIONARY_PREFER_USER                   = 5

'============================================================================
' ISOGRAM Attributes, returned by IsogramInfo()
'============================================================================
Global Const ISOGRAM_BANDING                          = 1
Global Const ISOGRAM_MAJOR_ROADS_ONLY                 = 2
Global Const ISOGRAM_RETURN_HOLES                     = 3
Global Const ISOGRAM_MAJOR_POLYGON_ONLY               = 4
Global Const ISOGRAM_MAX_OFFROAD_DIST                 = 5
Global Const ISOGRAM_MAX_OFFROAD_DIST_UNITS           = 6
Global Const ISOGRAM_SIMPLIFICATION_FACTOR            = 7
Global Const ISOGRAM_DEFAULT_AMBIENT_SPEED            = 8
Global Const ISOGRAM_AMBIENT_SPEED_DIST_UNIT          = 9
Global Const ISOGRAM_AMBIENT_SPEED_TIME_UNIT          = 10
Global Const ISOGRAM_PROPAGATION_FACTOR               = 11
Global Const ISOGRAM_BATCH_SIZE                       = 12
Global Const ISOGRAM_POINTS_ONLY                      = 13
Global Const ISOGRAM_RECORDS_INSERTED                 = 14
Global Const ISOGRAM_RECORDS_NOTINSERTED              = 15
Global Const ISOGRAM_MAX_BATCH_SIZE                   = 16
Global Const ISOGRAM_MAX_BANDS                        = 17
Global Const ISOGRAM_MAX_DISTANCE                     = 18
Global Const ISOGRAM_MAX_DISTANCE_UNITS               = 19
Global Const ISOGRAM_MAX_TIME                         = 20
Global Const ISOGRAM_MAX_TIME_UNITS                   = 21

'============================================================================
' LegendStyleInfo() defines
'============================================================================
Global Const LEGEND_STYLE_INFO_TEXT                   = 1
Global Const LEGEND_STYLE_INFO_FONT                   = 2
Global Const LEGEND_STYLE_INFO_OBJ                    = 3

'============================================================================
' LocateFile$() defines
'============================================================================

Global Const LOCATE_PREF_FILE                         = 0
Global Const LOCATE_DEF_WOR                           = 1
Global Const LOCATE_CLR_FILE                          = 2
Global Const LOCATE_PEN_FILE                          = 3
Global Const LOCATE_FNT_FILE                          = 4
Global Const LOCATE_ABB_FILE                          = 5
Global Const LOCATE_PRJ_FILE                          = 6
Global Const LOCATE_MNU_FILE                          = 7
Global Const LOCATE_CUSTSYMB_DIR                      = 8
Global Const LOCATE_THMTMPLT_DIR                      = 9
Global Const LOCATE_GRAPH_DIR                         = 10
Global Const LOCATE_WMS_SERVERLIST                    = 11
Global Const LOCATE_WFS_SERVERLIST                    = 12
Global Const LOCATE_GEOCODE_SERVERLIST                = 13
Global Const LOCATE_ROUTING_SERVERLIST                = 14
Global Const LOCATE_LAYOUT_TEMPLATE_DIR               = 15

'============================================================================
' Map3DInfo() defines
'============================================================================
Global Const MAP3D_INFO_SCALE                         = 1
Global Const MAP3D_INFO_RESOLUTION_X                  = 2
Global Const MAP3D_INFO_RESOLUTION_Y                  = 3
Global Const MAP3D_INFO_BACKGROUND                    = 4
Global Const MAP3D_INFO_UNITS                         = 5
Global Const MAP3D_INFO_LIGHT_X                       = 6
Global Const MAP3D_INFO_LIGHT_Y                       = 7
Global Const MAP3D_INFO_LIGHT_Z                       = 8
Global Const MAP3D_INFO_LIGHT_COLOR                   = 9
Global Const MAP3D_INFO_CAMERA_X                      = 10
Global Const MAP3D_INFO_CAMERA_Y                      = 11
Global Const MAP3D_INFO_CAMERA_Z                      = 12
Global Const MAP3D_INFO_CAMERA_FOCAL_X                = 13
Global Const MAP3D_INFO_CAMERA_FOCAL_Y                = 14
Global Const MAP3D_INFO_CAMERA_FOCAL_Z                = 15
Global Const MAP3D_INFO_CAMERA_VU_1                   = 16
Global Const MAP3D_INFO_CAMERA_VU_2                   = 17
Global Const MAP3D_INFO_CAMERA_VU_3                   = 18
Global Const MAP3D_INFO_CAMERA_VPN_1                  = 19
Global Const MAP3D_INFO_CAMERA_VPN_2                  = 20
Global Const MAP3D_INFO_CAMERA_VPN_3                  = 21
Global Const MAP3D_INFO_CAMERA_CLIP_NEAR              = 22
Global Const MAP3D_INFO_CAMERA_CLIP_FAR               = 23

'============================================================================
' MapperInfo() defines
'============================================================================
Global Const MAPPER_INFO_ZOOM                         = 1
Global Const MAPPER_INFO_SCALE                        = 2
Global Const MAPPER_INFO_CENTERX                      = 3
Global Const MAPPER_INFO_CENTERY                      = 4
Global Const MAPPER_INFO_MINX                         = 5
Global Const MAPPER_INFO_MINY                         = 6
Global Const MAPPER_INFO_MAXX                         = 7
Global Const MAPPER_INFO_MAXY                         = 8
Global Const MAPPER_INFO_LAYERS                       = 9
Global Const MAPPER_INFO_EDIT_LAYER                   = 10
Global Const MAPPER_INFO_XYUNITS                      = 11
Global Const MAPPER_INFO_DISTUNITS                    = 12
Global Const MAPPER_INFO_AREAUNITS                    = 13
Global Const MAPPER_INFO_SCROLLBARS                   = 14
Global Const MAPPER_INFO_DISPLAY                      = 15
Global Const MAPPER_INFO_NUM_THEMATIC                 = 16
Global Const MAPPER_INFO_COORDSYS_CLAUSE              = 17
Global Const MAPPER_INFO_COORDSYS_NAME                = 18
Global Const MAPPER_INFO_MOVE_DUPLICATE_NODES         = 19
Global Const MAPPER_INFO_DIST_CALC_TYPE               = 20
Global Const MAPPER_INFO_DISPLAY_DMS                  = 21
Global Const MAPPER_INFO_COORDSYS_CLAUSE_WITH_BOUNDS  = 22
Global Const MAPPER_INFO_CLIP_TYPE                    = 23
Global Const MAPPER_INFO_CLIP_REGION                  = 24
Global Const MAPPER_INFO_REPROJECTION                 = 25
Global Const MAPPER_INFO_RESAMPLING                   = 26
Global Const MAPPER_INFO_MERGE_MAP                    = 27
Global Const MAPPER_INFO_ALL_LAYERS                   = 28
Global Const MAPPER_INFO_GROUPLAYERS                  = 29
Global Const MAPPER_INFO_NUM_ADORNMENTS               = 200
Global Const MAPPER_INFO_ADORNMENT                    = 200
'----------------------------------------------------------------------------
' Display Modes, returned by MapperInfo() for MAPPER_INFO_DISPLAY_DMS
'----------------------------------------------------------------------------
Global Const MAPPER_INFO_DISPLAY_DECIMAL              = 0
Global Const MAPPER_INFO_DISPLAY_DEGMINSEC            = 1
Global Const MAPPER_INFO_DISPLAY_MGRS                 = 2
Global Const MAPPER_INFO_DISPLAY_USNG_WGS84           = 3
Global Const MAPPER_INFO_DISPLAY_USNG_NAD27           = 4

'----------------------------------------------------------------------------
' Display Modes, returned by MapperInfo() for MAPPER_INFO_DISPLAY
'----------------------------------------------------------------------------
Global Const MAPPER_INFO_DISPLAY_SCALE                = 0
Global Const MAPPER_INFO_DISPLAY_ZOOM                 = 1
Global Const MAPPER_INFO_DISPLAY_POSITION             = 2

'----------------------------------------------------------------------------
' Distance Calculation Types from MapperInfo() for MAPPER_INFO_DIST_CALC_TYPE
'----------------------------------------------------------------------------
Global Const MAPPER_INFO_DIST_SPHERICAL               = 0
Global Const MAPPER_INFO_DIST_CARTESIAN               = 1

'----------------------------------------------------------------------------
' Clip Types, returned by MapperInfo() for MAPPER_INFO_CLIP_TYPE
'----------------------------------------------------------------------------
Global Const MAPPER_INFO_CLIP_DISPLAY_ALL             = 0
Global Const MAPPER_INFO_CLIP_DISPLAY_POLYOBJ         = 1
Global Const MAPPER_INFO_CLIP_OVERLAY                 = 2

'============================================================================
' MenuItemInfoByID() and MenuItemInfoByHandler() defines
'============================================================================
Global Const MENUITEM_INFO_ENABLED                    = 1
Global Const MENUITEM_INFO_CHECKED                    = 2
Global Const MENUITEM_INFO_CHECKABLE                  = 3
Global Const MENUITEM_INFO_SHOWHIDEABLE               = 4
Global Const MENUITEM_INFO_ACCELERATOR                = 5
Global Const MENUITEM_INFO_TEXT                       = 6
Global Const MENUITEM_INFO_HELPMSG                    = 7
Global Const MENUITEM_INFO_HANDLER                    = 8
Global Const MENUITEM_INFO_ID                         = 9

'============================================================================
' ObjectGeography() defines
'============================================================================
Global Const OBJ_GEO_MINX                             = 1
Global Const OBJ_GEO_LINEBEGX                         = 1
Global Const OBJ_GEO_POINTX                           = 1
Global Const OBJ_GEO_MINY                             = 2
Global Const OBJ_GEO_LINEBEGY                         = 2
Global Const OBJ_GEO_POINTY                           = 2
Global Const OBJ_GEO_MAXX                             = 3
Global Const OBJ_GEO_LINEENDX                         = 3
Global Const OBJ_GEO_MAXY                             = 4
Global Const OBJ_GEO_LINEENDY                         = 4
Global Const OBJ_GEO_ARCBEGANGLE                      = 5
Global Const OBJ_GEO_TEXTLINEX                        = 5
Global Const OBJ_GEO_ROUNDRADIUS                      = 5
Global Const OBJ_GEO_CENTROID                         = 5
Global Const OBJ_GEO_ARCENDANGLE                      = 6
Global Const OBJ_GEO_TEXTLINEY                        = 6
Global Const OBJ_GEO_TEXTANGLE                        = 7
Global Const OBJ_GEO_POINTZ                           = 8
Global Const OBJ_GEO_POINTM                           = 9

'============================================================================
' ObjectInfo() defines
'============================================================================
Global Const OBJ_INFO_TYPE                            = 1
Global Const OBJ_INFO_PEN                             = 2
Global Const OBJ_INFO_SYMBOL                          = 2
Global Const OBJ_INFO_TEXTFONT                        = 2
Global Const OBJ_INFO_BRUSH                           = 3
Global Const OBJ_INFO_NPNTS                           = 20
Global Const OBJ_INFO_TEXTSTRING                      = 3
Global Const OBJ_INFO_SMOOTH                          = 4
Global Const OBJ_INFO_FRAMEWIN                        = 4
Global Const OBJ_INFO_NPOLYGONS                       = 21
Global Const OBJ_INFO_TEXTSPACING                     = 4
Global Const OBJ_INFO_TEXTJUSTIFY                     = 5
Global Const OBJ_INFO_FRAMETITLE                      = 6
Global Const OBJ_INFO_TEXTARROW                       = 6
Global Const OBJ_INFO_FILLFRAME                       = 7
Global Const OBJ_INFO_REGION                          = 8
Global Const OBJ_INFO_PLINE                           = 9
Global Const OBJ_INFO_MPOINT                          = 10
Global Const OBJ_INFO_NONEMPTY                        = 11
Global Const OBJ_INFO_Z_UNIT_SET                      = 12
Global Const OBJ_INFO_Z_UNIT                          = 13
Global Const OBJ_INFO_HAS_Z                           = 14
Global Const OBJ_INFO_HAS_M                           = 15

'----------------------------------------------------------------------------
' Object types, returned by ObjectInfo() for OBJ_INFO_TYPE
'----------------------------------------------------------------------------
Global Const OBJ_TYPE_ARC                             = 1
Global Const OBJ_TYPE_ELLIPSE                         = 2
Global Const OBJ_TYPE_LINE                            = 3
Global Const OBJ_TYPE_PLINE                           = 4
Global Const OBJ_TYPE_POINT                           = 5
Global Const OBJ_TYPE_FRAME                           = 6
Global Const OBJ_TYPE_REGION                          = 7
Global Const OBJ_TYPE_RECT                            = 8
Global Const OBJ_TYPE_ROUNDRECT                       = 9
Global Const OBJ_TYPE_TEXT                            = 10
Global Const OBJ_TYPE_MPOINT                          = 11
Global Const OBJ_TYPE_COLLECTION                      = 12

'----------------------------------------------------------------------------
' Constants passed to RegionInfo.
'----------------------------------------------------------------------------
Global Const REGION_INFO_IS_CLOCKWISE                 = 1

'============================================================================
' PrismMapInfo() defines
'============================================================================

Global Const PRISMMAP_INFO_SCALE                      = 1
Global Const PRISMMAP_INFO_BACKGROUND                 = 4
Global Const PRISMMAP_INFO_LIGHT_X                    = 6
Global Const PRISMMAP_INFO_LIGHT_Y                    = 7
Global Const PRISMMAP_INFO_LIGHT_Z                    = 8
Global Const PRISMMAP_INFO_LIGHT_COLOR                = 9
Global Const PRISMMAP_INFO_CAMERA_X                   = 10
Global Const PRISMMAP_INFO_CAMERA_Y                   = 11
Global Const PRISMMAP_INFO_CAMERA_Z                   = 12
Global Const PRISMMAP_INFO_CAMERA_FOCAL_X             = 13
Global Const PRISMMAP_INFO_CAMERA_FOCAL_Y             = 14
Global Const PRISMMAP_INFO_CAMERA_FOCAL_Z             = 15
Global Const PRISMMAP_INFO_CAMERA_VU_1                = 16
Global Const PRISMMAP_INFO_CAMERA_VU_2                = 17
Global Const PRISMMAP_INFO_CAMERA_VU_3                = 18
Global Const PRISMMAP_INFO_CAMERA_VPN_1               = 19
Global Const PRISMMAP_INFO_CAMERA_VPN_2               = 20
Global Const PRISMMAP_INFO_CAMERA_VPN_3               = 21
Global Const PRISMMAP_INFO_CAMERA_CLIP_NEAR           = 22
Global Const PRISMMAP_INFO_CAMERA_CLIP_FAR            = 23
Global Const PRISMMAP_INFO_INFOTIP_EXPR               = 24

'============================================================================
' SearchInfo() defines
'============================================================================
Global Const SEARCH_INFO_TABLE                        = 1
Global Const SEARCH_INFO_ROW                          = 2

'============================================================================
' SelectionInfo() defines
'============================================================================
Global Const SEL_INFO_TABLENAME                       = 1
Global Const SEL_INFO_SELNAME                         = 2
Global Const SEL_INFO_NROWS                           = 3

'============================================================================
' Server statement and function defines
'============================================================================
'----------------------------------------------------------------------------
' Return Codes
'----------------------------------------------------------------------------
Global Const SRV_SUCCESS                              = 0
Global Const SRV_SUCCESS_WITH_INFO                    = 1
Global Const SRV_ERROR                                = -1
Global Const SRV_INVALID_HANDLE                       = -2
Global Const SRV_NEED_DATA                            = 99
Global Const SRV_NO_MORE_DATA                         = 100

'----------------------------------------------------------------------------
' Special values for the status associated with a fetched value
'----------------------------------------------------------------------------
Global Const SRV_NULL_DATA                            = -1
Global Const SRV_TRUNCATED_DATA                       = -2

'----------------------------------------------------------------------------
' Server_ColumnInfo() defines
'----------------------------------------------------------------------------
Global Const SRV_COL_INFO_NAME                        = 1
Global Const SRV_COL_INFO_TYPE                        = 2
Global Const SRV_COL_INFO_WIDTH                       = 3
Global Const SRV_COL_INFO_PRECISION                   = 4
Global Const SRV_COL_INFO_SCALE                       = 5
Global Const SRV_COL_INFO_VALUE                       = 6
Global Const SRV_COL_INFO_STATUS                      = 7
Global Const SRV_COL_INFO_ALIAS                       = 8

'----------------------------------------------------------------------------
' Column types, returned by Server_ColumnInfo() for SRV_COL_INFO_TYPE
'----------------------------------------------------------------------------
Global Const SRV_COL_TYPE_NONE                        = 0
Global Const SRV_COL_TYPE_CHAR                        = 1
Global Const SRV_COL_TYPE_DECIMAL                     = 2
Global Const SRV_COL_TYPE_INTEGER                     = 3
Global Const SRV_COL_TYPE_SMALLINT                    = 4
Global Const SRV_COL_TYPE_DATE                        = 5
Global Const SRV_COL_TYPE_LOGICAL                     = 6
Global Const SRV_COL_TYPE_FLOAT                       = 8
Global Const SRV_COL_TYPE_FIXED_LEN_STRING            = 16
Global Const SRV_COL_TYPE_BIN_STRING                  = 17

'----------------------------------------------------------------------------
' Server_DriverInfo() Attr defines
'----------------------------------------------------------------------------
Global Const SRV_DRV_INFO_NAME                        = 1
Global Const SRV_DRV_INFO_NAME_LIST                   = 2
Global Const SRV_DRV_DATA_SOURCE                      = 3

'----------------------------------------------------------------------------
' Server_ConnectInfo() Attr defines
'----------------------------------------------------------------------------
Global Const SRV_CONNECT_INFO_DRIVER_NAME             = 1
Global Const SRV_CONNECT_INFO_DB_NAME                 = 2
Global Const SRV_CONNECT_INFO_SQL_USER_ID             = 3
Global Const SRV_CONNECT_INFO_DS_NAME                 = 4
Global Const SRV_CONNECT_INFO_QUOTE_CHAR              = 5

'----------------------------------------------------------------------------
' Fetch Directions (used by ServerFetch function in some code libraries)
'----------------------------------------------------------------------------
Global Const SRV_FETCH_NEXT                           = -1
Global Const SRV_FETCH_PREV                           = -2
Global Const SRV_FETCH_FIRST                          = -3
Global Const SRV_FETCH_LAST                           = -4

'----------------------------------------------------------------------------
'Oracle workspace manager
'----------------------------------------------------------------------------
Global Const SRV_WM_HIST_NONE                          = 0
Global Const SRV_WM_HIST_OVERWRITE                     = 1
Global Const SRV_WM_HIST_NO_OVERWRITE                  = 2

'============================================================================
' SessionInfo() defines
'============================================================================

Global Const SESSION_INFO_COORDSYS_CLAUSE             = 1
Global Const SESSION_INFO_DISTANCE_UNITS              = 2
Global Const SESSION_INFO_AREA_UNITS                  = 3
Global Const SESSION_INFO_PAPER_UNITS                 = 4

'============================================================================
' Set Next Document Style defines
'============================================================================
Global Const WIN_STYLE_STANDARD                       = 0
Global Const WIN_STYLE_CHILD                          = 1
Global Const WIN_STYLE_POPUP_FULLCAPTION              = 2
Global Const WIN_STYLE_POPUP                          = 3

'============================================================================
' StringCompare() defines
'============================================================================
Global Const STR_LT                                   = -1
Global Const STR_GT                                   = 1
Global Const STR_EQ                                   = 0

'============================================================================
' StyleAttr() defines
'============================================================================
Global Const PEN_WIDTH                                = 1
Global Const PEN_PATTERN                              = 2
Global Const PEN_COLOR                                = 4
Global Const PEN_INDEX                                = 5
Global Const PEN_INTERLEAVED                          = 6
Global Const BRUSH_PATTERN                            = 1
Global Const BRUSH_FORECOLOR                          = 2
Global Const BRUSH_BACKCOLOR                          = 3
Global Const FONT_NAME                                = 1
Global Const FONT_STYLE                               = 2
Global Const FONT_POINTSIZE                           = 3
Global Const FONT_FORECOLOR                           = 4
Global Const FONT_BACKCOLOR                           = 5
Global Const SYMBOL_CODE                              = 1
Global Const SYMBOL_COLOR                             = 2
Global Const SYMBOL_POINTSIZE                         = 3
Global Const SYMBOL_ANGLE                             = 4
Global Const SYMBOL_FONT_NAME                         = 5
Global Const SYMBOL_FONT_STYLE                        = 6
Global Const SYMBOL_KIND                              = 7
Global Const SYMBOL_CUSTOM_NAME                       = 8
Global Const SYMBOL_CUSTOM_STYLE                      = 9

'----------------------------------------------------------------------------
' Symbol kinds returned by StyleAttr() for SYMBOL_KIND
'----------------------------------------------------------------------------
Global Const SYMBOL_KIND_VECTOR                       = 1
Global Const SYMBOL_KIND_FONT                         = 2
Global Const SYMBOL_KIND_CUSTOM                       = 3

'============================================================================
' SystemInfo() defines
'============================================================================
Global Const SYS_INFO_PLATFORM                        = 1
Global Const SYS_INFO_APPVERSION                      = 2
Global Const SYS_INFO_MIVERSION                       = 3
Global Const SYS_INFO_RUNTIME                         = 4
Global Const SYS_INFO_CHARSET                         = 5
Global Const SYS_INFO_COPYPROTECTED                   = 6
Global Const SYS_INFO_APPLICATIONWND                  = 7
Global Const SYS_INFO_DDESTATUS                       = 8
Global Const SYS_INFO_MAPINFOWND                      = 9
Global Const SYS_INFO_NUMBER_FORMAT                   = 10
Global Const SYS_INFO_DATE_FORMAT                     = 11
Global Const SYS_INFO_DIG_INSTALLED                   = 12
Global Const SYS_INFO_DIG_MODE                        = 13
Global Const SYS_INFO_MIPLATFORM                      = 14
Global Const SYS_INFO_MDICLIENTWND                    = 15
Global Const SYS_INFO_PRODUCTLEVEL                    = 16
Global Const SYS_INFO_APPIDISPATCH                    = 17
Global Const SYS_INFO_MIBUILD_NUMBER                  = 18

'----------------------------------------------------------------------------
' Platform, returned by SystemInfo() for SYS_INFO_PLATFORM
'----------------------------------------------------------------------------
Global Const PLATFORM_SPECIAL                         = 0
Global Const PLATFORM_WIN                             = 1
Global Const PLATFORM_MAC                             = 2
Global Const PLATFORM_MOTIF                           = 3
Global Const PLATFORM_X11                             = 4
Global Const PLATFORM_XOL                             = 5

'----------------------------------------------------------------------------
' Version, returned by SystemInfo() for SYS_INFO_MIPLATFORM
'----------------------------------------------------------------------------
Global Const MIPLATFORM_SPECIAL                       = 0
Global Const MIPLATFORM_WIN16                         = 1
Global Const MIPLATFORM_WIN32                         = 2
Global Const MIPLATFORM_POWERMAC                      = 3
Global Const MIPLATFORM_MAC68K                        = 4
Global Const MIPLATFORM_HP                            = 5
Global Const MIPLATFORM_SUN                           = 6

'============================================================================
' TableInfo() defines
'============================================================================
Global Const TAB_INFO_NAME                            = 1
Global Const TAB_INFO_NUM                             = 2
Global Const TAB_INFO_TYPE                            = 3
Global Const TAB_INFO_NCOLS                           = 4
Global Const TAB_INFO_MAPPABLE                        = 5
Global Const TAB_INFO_READONLY                        = 6
Global Const TAB_INFO_TEMP                            = 7
Global Const TAB_INFO_NROWS                           = 8
Global Const TAB_INFO_EDITED                          = 9
Global Const TAB_INFO_FASTEDIT                        = 10
Global Const TAB_INFO_UNDO                            = 11
Global Const TAB_INFO_MAPPABLE_TABLE                  = 12
Global Const TAB_INFO_USERMAP                         = 13
Global Const TAB_INFO_USERBROWSE                      = 14
Global Const TAB_INFO_USERCLOSE                       = 15
Global Const TAB_INFO_USEREDITABLE                    = 16
Global Const TAB_INFO_USERREMOVEMAP                   = 17
Global Const TAB_INFO_USERDISPLAYMAP                  = 18
Global Const TAB_INFO_TABFILE                         = 19
Global Const TAB_INFO_MINX                            = 20
Global Const TAB_INFO_MINY                            = 21
Global Const TAB_INFO_MAXX                            = 22
Global Const TAB_INFO_MAXY                            = 23
Global Const TAB_INFO_SEAMLESS                        = 24
Global Const TAB_INFO_COORDSYS_MINX                   = 25
Global Const TAB_INFO_COORDSYS_MINY                   = 26
Global Const TAB_INFO_COORDSYS_MAXX                   = 27
Global Const TAB_INFO_COORDSYS_MAXY                   = 28
Global Const TAB_INFO_COORDSYS_CLAUSE                 = 29
Global Const TAB_INFO_COORDSYS_NAME                   = 30
Global Const TAB_INFO_NREFS                           = 31
Global Const TAB_INFO_SUPPORT_MZ                      = 32
Global Const TAB_INFO_Z_UNIT_SET                      = 33
Global Const TAB_INFO_Z_UNIT                          = 34
Global Const TAB_INFO_BROWSER_LIST                    = 35
Global Const TAB_INFO_THEME_METADATA                  = 36
Global Const TAB_INFO_COORDSYS_CLAUSE_WITHOUT_BOUNDS  = 37
Global Const TAB_INFO_DESCRIPTION                     = 38
Global Const TAB_INFO_ID                              = 39
Global Const TAB_INFO_PARENTID                        = 40
Global Const TAB_INFO_ISMANAGED                       = 41

'----------------------------------------------------------------------------
' Table type defines, returned by TableInfo() for TAB_INFO_TYPE
'----------------------------------------------------------------------------
Global Const TAB_TYPE_BASE                            = 1
Global Const TAB_TYPE_RESULT                          = 2
Global Const TAB_TYPE_VIEW                            = 3
Global Const TAB_TYPE_IMAGE                           = 4
Global Const TAB_TYPE_LINKED                          = 5
Global Const TAB_TYPE_WMS                             = 6
Global Const TAB_TYPE_WFS                             = 7
Global Const TAB_TYPE_FME                             = 8
Global Const TAB_TYPE_TILESERVER                      = 9

'----------------------------------------------------------------------------
' TableListInfo() defines
'----------------------------------------------------------------------------
Global Const TL_INFO_SEL_COUNT                        = 1

'----------------------------------------------------------------------------
' Defines used in LibraryServiceInfo function for what information to return.
'----------------------------------------------------------------------------
Global Const LIBSRVC_INFO_LIBSRVCMODE                 = 1
Global Const LIBSRVC_INFO_LIBVERSION                  = 2
Global Const LIBSRVC_INFO_DEFURLPATH                  = 3
Global Const LIBSRVC_INFO_LISTCSWURL                  = 4

'----------------------------------------------------------------------------
' TableListSelectionInfo() defines
'----------------------------------------------------------------------------
Global Const TL_SEL_INFO_NAME                         = 1
Global Const TL_SEL_INFO_ID                           = 2

'============================================================================
' RasterTableInfo() defines
'============================================================================
Global Const RASTER_TAB_INFO_IMAGE_NAME               = 1
Global Const RASTER_TAB_INFO_WIDTH                    = 2
Global Const RASTER_TAB_INFO_HEIGHT                   = 3
Global Const RASTER_TAB_INFO_IMAGE_TYPE               = 4
Global Const RASTER_TAB_INFO_BITS_PER_PIXEL           = 5
Global Const RASTER_TAB_INFO_IMAGE_CLASS              = 6
Global Const RASTER_TAB_INFO_NUM_CONTROL_POINTS       = 7
Global Const RASTER_TAB_INFO_BRIGHTNESS               = 8
Global Const RASTER_TAB_INFO_CONTRAST                 = 9
Global Const RASTER_TAB_INFO_GREYSCALE                = 10
Global Const RASTER_TAB_INFO_DISPLAY_TRANSPARENT      = 11
Global Const RASTER_TAB_INFO_TRANSPARENT_COLOR        = 12
Global Const RASTER_TAB_INFO_ALPHA                    = 13

'----------------------------------------------------------------------------
' Image type defines returned by RasterTableInfo() for RASTER_TAB_INFO_IMAGE_TYPE
'----------------------------------------------------------------------------
Global Const IMAGE_TYPE_RASTER                        = 0
Global Const IMAGE_TYPE_GRID                          = 1

'----------------------------------------------------------------------------
' Image class defines returned by RasterTableInfo() for RASTER_TAB_INFO_IMAGE_CLASS
'----------------------------------------------------------------------------
Global Const IMAGE_CLASS_BILEVEL                      = 0
Global Const IMAGE_CLASS_GREYSCALE                    = 1
Global Const IMAGE_CLASS_PALETTE                      = 2
Global Const IMAGE_CLASS_RGB                          = 3

'============================================================================
'  GridTableInfo() defines
'============================================================================
Global Const GRID_TAB_INFO_MIN_VALUE                  = 1
Global Const GRID_TAB_INFO_MAX_VALUE                  = 2
Global Const GRID_TAB_INFO_HAS_HILLSHADE              = 3

'============================================================================
'  ControlPointInfo() defines
'============================================================================
Global Const RASTER_CONTROL_POINT_X                   = 1
Global Const RASTER_CONTROL_POINT_Y                   = 2
Global Const GEO_CONTROL_POINT_X                      = 3
Global Const GEO_CONTROL_POINT_Y                      = 4
Global Const TAB_GEO_CONTROL_POINT_X                  = 5
Global Const TAB_GEO_CONTROL_POINT_Y                  = 6

'============================================================================
' WindowInfo() defines
'============================================================================
Global Const WIN_INFO_NAME                            = 1
Global Const WIN_INFO_TYPE                            = 3
Global Const WIN_INFO_WIDTH                           = 4
Global Const WIN_INFO_HEIGHT                          = 5
Global Const WIN_INFO_X                               = 6
Global Const WIN_INFO_Y                               = 7
Global Const WIN_INFO_TOPMOST                         = 8
Global Const WIN_INFO_STATE                           = 9
Global Const WIN_INFO_TABLE                           = 10
Global Const WIN_INFO_LEGENDS_MAP                     = 10
Global Const WIN_INFO_ADORNMENTS_MAP                  = 10
Global Const WIN_INFO_OPEN                            = 11
Global Const WIN_INFO_WND                             = 12
Global Const WIN_INFO_WINDOWID                        = 13
Global Const WIN_INFO_WORKSPACE                       = 14
Global Const WIN_INFO_CLONEWINDOW                     = 15
Global Const WIN_INFO_SYSMENUCLOSE                    = 16
Global Const WIN_INFO_AUTOSCROLL                      = 17
Global Const WIN_INFO_SMARTPAN                        = 18
Global Const WIN_INFO_SNAPMODE                        = 19
Global Const WIN_INFO_SNAPTHRESHOLD                   = 20
Global Const WIN_INFO_PRINTER_NAME                    = 21
Global Const WIN_INFO_PRINTER_ORIENT                  = 22
Global Const WIN_INFO_PRINTER_COPIES                  = 23
Global Const WIN_INFO_PRINTER_PAPERSIZE               = 24
Global Const WIN_INFO_PRINTER_LEFTMARGIN              = 25
Global Const WIN_INFO_PRINTER_RIGHTMARGIN             = 26
Global Const WIN_INFO_PRINTER_TOPMARGIN               = 27
Global Const WIN_INFO_PRINTER_BOTTOMMARGIN            = 28
Global Const WIN_INFO_PRINTER_BORDER                  = 29
Global Const WIN_INFO_PRINTER_TRUECOLOR               = 30
Global Const WIN_INFO_PRINTER_DITHER                  = 31
Global Const WIN_INFO_PRINTER_METHOD                  = 32
Global Const WIN_INFO_PRINTER_TRANSPRASTER            = 33
Global Const WIN_INFO_PRINTER_TRANSPVECTOR            = 34
Global Const WIN_INFO_EXPORT_BORDER                   = 35
Global Const WIN_INFO_EXPORT_TRUECOLOR                = 36
Global Const WIN_INFO_EXPORT_DITHER                   = 37
Global Const WIN_INFO_EXPORT_TRANSPRASTER             = 38
Global Const WIN_INFO_EXPORT_TRANSPVECTOR             = 39
Global Const WIN_INFO_PRINTER_SCALE_PATTERNS          = 40
Global Const WIN_INFO_EXPORT_ANTIALIASING             = 41
Global Const WIN_INFO_EXPORT_THRESHOLD                = 42
Global Const WIN_INFO_EXPORT_MASKSIZE                 = 43
Global Const WIN_INFO_EXPORT_FILTER                   = 44
Global Const WIN_INFO_ENHANCED_RENDERING              = 45
Global Const WIN_INFO_SMOOTH_TEXT                     = 46
Global Const WIN_INFO_SMOOTH_IMAGE                    = 47
Global Const WIN_INFO_SMOOTH_VECTOR                   = 48

'----------------------------------------------------------------------------
' Window types, returned by WindowInfo() for WIN_INFO_TYPE
'----------------------------------------------------------------------------
Global Const WIN_MAPPER                               = 1
Global Const WIN_BROWSER                              = 2
Global Const WIN_LAYOUT                               = 3
Global Const WIN_GRAPH                                = 4
Global Const WIN_BUTTONPAD                            = 19
Global Const WIN_TOOLBAR                              = 25
Global Const WIN_CART_LEGEND                          = 27
Global Const WIN_3DMAP                                = 28
Global Const WIN_ADORNMENT                            = 32
Global Const WIN_HELP                                 = 1001
Global Const WIN_MAPBASIC                             = 1002
Global Const WIN_MESSAGE                              = 1003
Global Const WIN_RULER                                = 1007
Global Const WIN_INFO                                 = 1008
Global Const WIN_LEGEND                               = 1009
Global Const WIN_STATISTICS                           = 1010
Global Const WIN_MAPINFO                              = 1011
'----------------------------------------------------------------------------
' Version 2 window types no longer used in version 3 or later versions
'----------------------------------------------------------------------------
Global Const WIN_TOOLPICKER                           = 1004
Global Const WIN_PENPICKER                            = 1005
Global Const WIN_SYMBOLPICKER                         = 1006

'----------------------------------------------------------------------------
' Window states, returned by WindowInfo() for WIN_INFO_STATE
'----------------------------------------------------------------------------
Global Const WIN_STATE_NORMAL                         = 0
Global Const WIN_STATE_MINIMIZED                      = 1
Global Const WIN_STATE_MAXIMIZED                      = 2

'----------------------------------------------------------------------------
' Print orientation, returned by WindowInfo() for WIN_INFO_PRINTER_ORIENT
'----------------------------------------------------------------------------
Global Const WIN_PRINTER_PORTRAIT                     = 1
Global Const WIN_PRINTER_LANDSCAPE                    = 2

'----------------------------------------------------------------------------
' Antialiasing filters, returned by WindowInfo() for WIN_INFO_EXPORT_FILTER
'----------------------------------------------------------------------------
Global Const FILTER_VERTICALLY_AND_HORIZONTALLY       = 0
Global Const FILTER_ALL_DIRECTIONS_1                  = 1
Global Const FILTER_ALL_DIRECTIONS_2                  = 2
Global Const FILTER_DIAGONALLY                        = 3
Global Const FILTER_HORIZONTALLY                      = 4
Global Const FILTER_VERTICALLY                        = 5

'============================================================================
' end of MAPBASIC.DEF
'============================================================================

'============================================================================
' MapInfo version 11.0 - Menu Item Definitions
'----------------------------------------------------------------------------
' This file contains defines useful when programming in the MapBasic
' language.  The definitions in this file describe the standard MapInfo
' functionality available via the "Run Menu Command" MapBasic statement.
'----------------------------------------------------------------------------
' The defines in this file are organized to match the sequence of
' declarations in the MAPINFOW.MNU file, which in turn reflects the
' organization of the MapInfo menus and buttonpads.
'============================================================================

'----------------------------------------------------------------------------
' File menu
'----------------------------------------------------------------------------
Global Const M_FILE_NEW                             =  101
Global Const M_FILE_OPEN                            =  102
Global Const M_FILE_OPEN_WMS                        =  118
Global Const M_FILE_OPEN_WFS                        =  119
Global Const M_FILE_OPEN_ODBC_CONN                  =  125
Global Const M_FILE_OPEN_UNIVERSAL_DATA             =  126
Global Const M_FILE_OPEN_BING_AERIAL                =  128
Global Const M_FILE_OPEN_BING_HYBRID                =  129
Global Const M_FILE_OPEN_BING_ROADS                 =  130
Global Const M_FILE_OPEN_OSM_ROADS                  =  131
Global Const M_FILE_CLOSE                           =  103
Global Const M_FILE_CLOSE_ALL                       =  104
Global Const M_FILE_CLOSE_ODBC                      =  124
Global Const M_FILE_SAVE                            =  105
Global Const M_FILE_SAVE_COPY_AS                    =  106
Global Const M_FILE_SAVE_QUERY                      =  117
Global Const M_FILE_SAVE_WORKSPACE                  =  109
Global Const M_FILE_SAVE_WINDOW_AS                  =  609
Global Const M_FILE_REVERT                          =  107
Global Const M_FILE_PAGE_SETUP                      =  111
Global Const M_FILE_PRINT                           =  112
Global Const M_FILE_PRINT_TO_PDF                    =  127
Global Const M_FILE_EXIT                            =  113

'----------------------------------------------------------------------------
' Edit menu
'----------------------------------------------------------------------------
Global Const M_EDIT_UNDO                            =  201
Global Const M_EDIT_CUT                             =  202
Global Const M_EDIT_COPY                            =  203
Global Const M_EDIT_PASTE                           =  204
Global Const M_EDIT_CLEAR                           =  205
Global Const M_EDIT_CLEAROBJ                        =  206
Global Const M_EDIT_RESHAPE                         =  1601
Global Const M_EDIT_NEW_ROW                         =  702
Global Const M_EDIT_GETINFO                         =  207

'----------------------------------------------------------------------------
' Tools menu
'----------------------------------------------------------------------------
Global Const M_TOOLS_CRYSTAL_REPORTS_NEW            =  1802
Global Const M_TOOLS_CRYSTAL_REPORTS_OPEN           =  1803
Global Const M_TOOLS_RUN                            =  110
Global Const M_TOOLS_TOOL_MANAGER                   =  1801

'----------------------------------------------------------------------------
' Objects menu
'----------------------------------------------------------------------------
Global Const M_OBJECTS_SET_TARGET                   =  1610
Global Const M_OBJECTS_CLEAR_TARGET                 =  1611
Global Const M_OBJECTS_COMBINE                      =  1605
Global Const M_OBJECTS_DISAGG                       =  1621
Global Const M_OBJECTS_BUFFER                       =  1606
Global Const M_OBJECTS_CONVEX_HULL                  =  1616
Global Const M_OBJECTS_ENCLOSE                      =  1617
Global Const M_OBJECTS_VORONOI                      =  1622
Global Const M_OBJECTS_DRIVE_REGION                 =  1627
Global Const M_OBJECTS_SPLIT                        =  1612
Global Const M_OBJECTS_ERASE                        =  1613
Global Const M_OBJECTS_ERASE_OUT                    =  1614
Global Const M_OBJECTS_POLYLINE_SPLIT               =  1623
Global Const M_OBJECTS_POLYLINE_SPLIT_AT_NODE       =  1626
Global Const M_OBJECTS_OVERLAY                      =  1615
Global Const M_OBJECTS_CHECK_REGIONS                =  1618
Global Const M_OBJECTS_CLEAN                        =  1619
Global Const M_OBJECTS_SNAP                         =  1620
Global Const M_OBJECTS_OFFSET                       =  1624
Global Const M_OBJECTS_ROTATE                       =  1625
Global Const M_OBJECTS_SMOOTH                       =  1602
Global Const M_OBJECTS_UNSMOOTH                     =  1603
Global Const M_OBJECTS_CVT_PGON                     =  1607
Global Const M_OBJECTS_CVT_PLINE                    =  1604

'----------------------------------------------------------------------------
' Query menu
'----------------------------------------------------------------------------
Global Const M_QUERY_SELECT                         =  301
Global Const M_QUERY_SQLQUERY                       =  302
Global Const M_QUERY_SELECTALL                      =  303
Global Const M_QUERY_INVERTSELECT                   =  311
Global Const M_QUERY_UNSELECT                       =  304
Global Const M_QUERY_FIND                           =  305
Global Const M_QUERY_FIND_SELECTION_CURRENT_MAP     =  312
Global Const M_QUERY_FIND_SELECTION                 =  306
Global Const M_QUERY_FIND_ADDRESS                   =  313
Global Const M_QUERY_CALC_STATISTICS                =  309

'----------------------------------------------------------------------------
' Table, Maintenance, and Raster menus
'----------------------------------------------------------------------------
Global Const M_TABLE_UPDATE_COLUMN                  =  405
Global Const M_TABLE_APPEND                         =  411
Global Const M_TABLE_GEOCODE                        =  407
Global Const M_TABLE_WEB_GEOCODE                    =  424
Global Const M_TABLE_CREATE_POINTS                  =  408
Global Const M_TABLE_MERGE_USING_COLUMN             =  406
Global Const M_TABLE_BUFFER                         =  419
Global Const M_TABLE_VORONOI                        =  420
Global Const M_TABLE_DRIVE_REGION                   =  425
Global Const M_TABLE_IMPORT                         =  401
Global Const M_TABLE_EXPORT                         =  402

Global Const M_TABLE_MODIFY_STRUCTURE               =  404
Global Const M_TABLE_DELETE                         =  409
Global Const M_TABLE_RENAME                         =  410
Global Const M_TABLE_PACK                           =  403
Global Const M_TABLE_MAKEMAPPABLE                   =  415
Global Const M_TABLE_CHANGESYMBOL                   =  418
Global Const M_TABLE_UNLINK                         =  416
Global Const M_TABLE_REFRESH                        =  417

Global Const M_ORACLE_CREATE_WORKSPACE              =  1804
Global Const M_ORACLE_DELETE_WORKSPACE              =  1805
Global Const M_ORACLE_VERSION_ENABLE_ON             =  1806
Global Const M_ORACLE_VERSION_ENABLE_OFF            =  1807
Global Const M_ORACLE_MERGE_PARENT                  =  1808
Global Const M_ORACLE_REFRESH_FROM_PARENT           =  1809

Global Const M_TABLE_RASTER_STYLE                   =  414
Global Const M_TABLE_RASTER_REG                     =  413
Global Const M_TOOLS_RASTER_REG                     =  1730

Global Const M_TABLE_WMS_PROPS                      =  421
Global Const M_TABLE_WFS_REFRESH                    =  422
Global Const M_TABLE_WFS_PROPS                      =  423
Global Const M_TABLE_UNIVERSAL_DATA_REFRESH         =  426

'----------------------------------------------------------------------------
' Options and Preferences menus
'----------------------------------------------------------------------------
Global Const M_FORMAT_PICK_LINE                     =  501
Global Const M_FORMAT_PICK_FILL                     =  502
Global Const M_FORMAT_PICK_SYMBOL                   =  503
Global Const M_FORMAT_PICK_FONT                     =  504
Global Const M_WINDOW_BUTTONPAD                     =  605
Global Const M_WINDOW_LEGEND                        =  606
Global Const M_WINDOW_STATISTICS                    =  607
Global Const M_WINDOW_MAPBASIC                      =  608
Global Const M_WINDOW_STATUSBAR                     =  616
Global Const M_FORMAT_CUSTOM_COLORS                 =  617
Global Const M_EDIT_PREFERENCES                     =  208

Global Const M_EDIT_PREFERENCES_SYSTEM              =  210
Global Const M_EDIT_PREFERENCES_MAP                 =  212
Global Const M_EDIT_PREFERENCES_LEGEND              =  215
Global Const M_EDIT_PREFERENCES_FILE                =  211
Global Const M_EDIT_PREFERENCES_COUNTRY             =  213
Global Const M_EDIT_PREFERENCES_PATH                =  214
Global Const M_EDIT_PREFERENCES_OUTPUT              =  216
Global Const M_EDIT_PREFERENCES_PRINTER             =  217
Global Const M_EDIT_PREFERENCES_STYLES              =  218
Global Const M_EDIT_PREFERENCES_IMAGE_PROC          =  219
Global Const M_EDIT_PREFERENCES_WEBSERVICES         =  220
Global Const M_EDIT_PREFERENCES_LAYOUT              =  221
Global Const M_EDIT_PREFERENCES_BROWSER             =  222

'----------------------------------------------------------------------------
' Window menu
'----------------------------------------------------------------------------
Global Const M_WINDOW_BROWSE                        =  601
Global Const M_WINDOW_MAP                           =  602
Global Const M_WINDOW_GRAPH                         =  603
Global Const M_WINDOW_LAYOUT                        =  604
Global Const M_WINDOW_REDISTRICT                    =  615
Global Const M_WINDOW_REDRAW                        =  610
Global Const M_WINDOW_TILE                          =  611
Global Const M_WINDOW_CASCADE                       =  612
Global Const M_WINDOW_ARRANGEICONS                  =  613
Global Const M_WINDOW_MORE                          =  614
Global Const M_WINDOW_FIRST                         =  620
' - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
' Note: the=  2nd through=  80th windows can be accessed as (M_WINDOW_FIRST+i-1)
' - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

'----------------------------------------------------------------------------
' Help menu
'----------------------------------------------------------------------------
Global Const M_HELP_CONTEXTSENSITIVE                =  1201
Global Const M_HELP_CONTENTS                        =  1202

Global Const M_HELP_SEARCH                          =  1203
Global Const M_HELP_MAPINFO_3DGRAPH_HELP            =  1214
Global Const M_HELP_MAPINFO_WWW                     =  1210
Global Const M_HELP_MAPINFO_CONNECT_SERVICES        =  1215
Global Const M_HELP_MAPINFO_WWW_TUTORIAL            =  1213
Global Const M_HELP_MAPINFO_WWW_STORE               =  1211
Global Const M_HELP_CONNECT_MIFORUM                 =  1209
Global Const M_HELP_CHECK_FOR_UPDATE                =  1212
Global Const M_HELP_MAPINFO_PRODUCT_FEEDBACK        =  1219

Global Const M_HELP_MAPINFO_RETURN_LICENSE          =  1216
Global Const M_HELP_MAPINFO_BORROW_LICENSE          =  1217
Global Const M_HELP_MAPINFO_RETURN_BORROWED_LICENSE =  1218

Global Const M_HELP_ABOUT                           =  1205

Global Const M_HELP_USE_HELP                        =  1204
Global Const M_HELP_HELPMODE                        =  1206
Global Const M_HELP_TECHSUPPORT                     =  1208

'----------------------------------------------------------------------------
' Browse menu
'----------------------------------------------------------------------------
Global Const M_BROWSE_PICK_FIELDS                   =  704
Global Const M_BROWSE_OPTIONS                       =  703
Global Const M_BROWSE_SORT                          =  710

'----------------------------------------------------------------------------
' Map menu
'----------------------------------------------------------------------------
' Open Layer Control in a window:
Global Const M_MAP_LAYER_CONTROL                    =  822
' Open Layer Control in a dialog box:
Global Const M_MAP_LAYER_CONTROL_DIALOG             =  801
Global Const M_MAP_CREATE_3DMAP                     =  817
Global Const M_MAP_CREATE_PRISMMAP                  =  818
Global Const M_MAP_THEMATIC                         =  307
Global Const M_MAP_MODIFY_THEMATIC                  =  308
Global Const M_MAP_CREATE_LEGEND                    =  816
Global Const M_MAP_CREATE_SCALEBAR                  =  824
Global Const M_MAP_CHANGE_VIEW                      =  805
Global Const M_MAP_CLONE_MAPPER                     =  811
Global Const M_MAP_PREVIOUS                         =  806
Global Const M_MAP_ENTIRE_LAYER                     =  807
Global Const M_MAP_CLEAR_CUSTOM_LABELS              =  814
Global Const M_MAP_SAVE_COSMETIC                    =  809
Global Const M_MAP_CLEAR_COSMETIC                   =  810
Global Const M_MAP_SET_CLIP_REGION                  =  812
Global Const M_MAP_CLIP_REGION_ONOFF                =  813
Global Const M_MAP_SETUPDIGITIZER                   =  803
Global Const M_MAP_OPTIONS                          =  802
Global Const M_MAP_MOVE_MAP_TO                      =  825

' Map window context menu
Global Const M_MAP_AUTOSCROLL_ONOFF                 =  815
Global Const M_MAP_VIEW_ENTIRE_SELECTION            =  819
Global Const M_MAP_SELECT_ALL_FROM_SELECTION        =  820
Global Const M_MAP_MAKE_SELECTION_EDITABLE          =  821

'----------------------------------------------------------------------------
' Layout menu
'----------------------------------------------------------------------------
Global Const M_LAYOUT_CHANGE_VIEW                   =  902
Global Const M_LAYOUT_ACTUAL                        =  903
Global Const M_LAYOUT_ENTIRE                        =  904
Global Const M_LAYOUT_PREVIOUS                      =  905
Global Const M_LAYOUT_BRING2FRONT                   =  906
Global Const M_LAYOUT_SEND2BACK                     =  907
Global Const M_LAYOUT_ALIGN                         =  908
Global Const M_LAYOUT_DROPSHADOWS                   =  909
Global Const M_LAYOUT_DISPLAYOPTIONS                =  901
Global Const M_LAYOUT_AUTOSCROLL_ONOFF              =  910

'----------------------------------------------------------------------------
' Graph menu
'----------------------------------------------------------------------------
Global Const M_GRAPH_TYPE                           =  1001
Global Const M_GRAPH_LABEL_AXIS                     =  1002
Global Const M_GRAPH_VALUE_AXIS                     =  1003
Global Const M_GRAPH_SERIES                         =  1004

'----------------------------------------------------------------------------
' New Graph menu
'----------------------------------------------------------------------------
Global Const M_GRAPH_FORMATING                      =  2007
Global Const M_GRAPH_GENERAL_OPTIONS                =  2002
Global Const M_GRAPH_SERIES_OPTIONS                 =  2003
Global Const M_GRAPH_GRID_SCALES                    =  2004
Global Const M_GRAPH_TITLES                         =  2005
Global Const M_GRAPH_3D_VIEWING_ANGLE               =  2006
Global Const M_GRAPH_SAVE_AS_TEMPLATE               =  2008

'----------------------------------------------------------------------------
' MapBasic menu
'----------------------------------------------------------------------------
Global Const M_MAPBASIC_CLEAR                       =  1101
Global Const M_MAPBASIC_SAVECONTENTS                =  1102

'----------------------------------------------------------------------------
' Redistrict menu
'----------------------------------------------------------------------------
Global Const M_REDISTRICT_ASSIGN                    =  705
Global Const M_REDISTRICT_TARGET                    =  706
Global Const M_REDISTRICT_ADD                       =  707
Global Const M_REDISTRICT_DELETE                    =  708
Global Const M_REDISTRICT_OPTIONS                   =  709

'----------------------------------------------------------------------------
' Legend menu
'----------------------------------------------------------------------------
Global Const M_LEGEND_ADD_FRAMES                    =  1903
Global Const M_LEGEND_REFRESH                       =  1902
Global Const M_LEGEND_PROPERTIES                    =  1901
Global Const M_LEGEND_DELETE                        =  1904

'----------------------------------------------------------------------------
'=  3DMap menu
'----------------------------------------------------------------------------
Global Const M_3DMAP_REFRESH_GRID_TEXTURE           =  2103
Global Const M_3DMAP_CLONE_VIEW                     =  2105
Global Const M_3DMAP_PREVIOUS_VIEW                  =  2106
Global Const M_3DMAP_VIEW_ENTIRE_GRID               =  2101
Global Const M_3DMAP_VIEWPOINT_CONTROL              =  2107
Global Const M_3DMAP_WIREFRAME                      =  2104
Global Const M_3DMAP_PROPERTIES                     =  2102

'----------------------------------------------------------------------------
' Main Buttonpad
'----------------------------------------------------------------------------
Global Const M_TOOLS_SELECTOR                       =  1701
Global Const M_TOOLS_SEARCH_RECT                    =  1722
Global Const M_TOOLS_SEARCH_RADIUS                  =  1703
Global Const M_TOOLS_SEARCH_BOUNDARY                =  1704
Global Const M_TOOLS_EXPAND                         =  1705
Global Const M_TOOLS_SHRINK                         =  1706
Global Const M_TOOLS_RECENTER                       =  1702
Global Const M_TOOLS_PNT_QUERY                      =  1707
Global Const M_TOOLS_HOTLINK                        =  1736
Global Const M_TOOLS_LABELER                        =  1708
Global Const M_TOOLS_DRAGWINDOW                     =  1734
Global Const M_TOOLS_RULER                          =  1710

'----------------------------------------------------------------------------
' Drawing Buttonpad
'----------------------------------------------------------------------------
Global Const M_TOOLS_POINT                          =  1711
Global Const M_TOOLS_LINE                           =  1712
Global Const M_TOOLS_POLYLINE                       =  1713
Global Const M_TOOLS_ARC                            =  1716
Global Const M_TOOLS_POLYGON                        =  1714
Global Const M_TOOLS_ELLIPSE                        =  1715
Global Const M_TOOLS_RECTANGLE                      =  1717
Global Const M_TOOLS_ROUNDEDRECT                    =  1718
Global Const M_TOOLS_TEXT                           =  1709
Global Const M_TOOLS_FRAME                          =  1719
Global Const M_TOOLS_ADD_NODE                       =  1723

'----------------------------------------------------------------------------
' DBMS Buttonpad
'  -- most DBMS buttons defined under M_TABLE_{...} except for this one:
'----------------------------------------------------------------------------
Global Const M_DBMS_OPEN_ODBC                       =  116

'----------------------------------------------------------------------------
' Adornment context menu items
'----------------------------------------------------------------------------
Global Const M_ADORNMENT_PROPERTIES                 =  2401
Global Const M_ADORNMENT_REMOVE                     =  2402

'----------------------------------------------------------------------------
' Layer Control menuitems
'----------------------------------------------------------------------------
Global Const M_LC_VIEW_ENTIRE                       =  2501
Global Const M_LC_LAYER_PROPERTIES                  =  2502
Global Const M_LC_LABEL_FONT                        =  2503
Global Const M_LC_OTHERS_NO_SELECT                  =  2504
Global Const M_LC_RENAME_MAP                        =  2505
Global Const M_LC_MAP_OPTIONS                       =  2506
Global Const M_LC_ADD_GROUP                         =  2507
Global Const M_LC_RENAME_GROUP                      =  2508
Global Const M_LC_UNGROUP                           =  2509
Global Const M_LC_ADDLAYERS                         =  2510
Global Const M_LC_ADD_STYLE_OVERRIDE                =  2511
Global Const M_LC_ADD_LABEL_OVERRIDE                =  2512
Global Const M_LC_DISPLAY_OVERRIDE_PROP             =  2513
Global Const M_LC_LABEL_OVERRIDE_PROP               =  2514
Global Const M_LC_SPLIT_OVERRIDE                    =  2515
Global Const M_LC_REMOVE_OVERRIDE                   =  2516
Global Const M_LC_BROWSE_TABLE                      =  2517

'----------------------------------------------------------------------------
' Table List Window context menu items
'----------------------------------------------------------------------------
Global Const M_TLV_SELECT_ALL_FROM_TABLE            =  2601
Global Const M_TLV_BROWSE_TABLE                     =  2602
Global Const M_TLV_OPEN_NEW_MAP                     =  2603
Global Const M_TLV_EXPORT_TABLE                     =  2604
Global Const M_TLV_REFRESH_TABLE                    =  2605
Global Const M_TLV_TABLE_STRUCTURE                  =  2606
Global Const M_TLV_CREATE_POINTS                    =  2607
Global Const M_TLV_UPDATE_COLUMN                    =  2608
Global Const M_TLV_CLOSE_TABLE                      =  2609

'----------------------------------------------------------------------------
' Menu and ButtonPad items that do not appear in the standard menus
'----------------------------------------------------------------------------
Global Const M_TOOLS_MAPBASIC                       =  1720
Global Const M_TOOLS_SEARCH_POLYGON                 =  1733

'----------------------------------------------------------------------------
' Codes used to position Adornments relative to mapper
'----------------------------------------------------------------------------

Global Const ADORNMENT_INFO_MAP_POS_TL     = 0
Global Const ADORNMENT_INFO_MAP_POS_TC     = 1
Global Const ADORNMENT_INFO_MAP_POS_TR     = 2
Global Const ADORNMENT_INFO_MAP_POS_CL     = 3
Global Const ADORNMENT_INFO_MAP_POS_CC     = 4
Global Const ADORNMENT_INFO_MAP_POS_CR     = 5
Global Const ADORNMENT_INFO_MAP_POS_BL     = 6
Global Const ADORNMENT_INFO_MAP_POS_BC     = 7
Global Const ADORNMENT_INFO_MAP_POS_BR     = 8
Global Const SCALEBAR_INFO_BARTYPE_CHECKEDBAR_CHECKEDBAR  = 0
Global Const SCALEBAR_INFO_BARTYPE_CHECKEDBAR_SOLIDBAR    = 1
Global Const SCALEBAR_INFO_BARTYPE_CHECKEDBAR_LINEBAR     = 2
Global Const SCALEBAR_INFO_BARTYPE_CHECKEDBAR_TICKBAR     = 3

'----------------------------------------------------------------------------
' Coordinate system datum id's.  These match the id's from mapinfow.prj.
'----------------------------------------------------------------------------
Global Const DATUMID_NAD27 =  62
Global Const DATUMID_NAD83 =  74
Global Const DATUMID_WGS84 = 104

'----------------------------------------------------------------------------
' Menu defines - these represent the predefined menus like File, and can
' be used in the Alter Menu command.  These defines cannot be used in a
' "Run Menu Command" statement.
'----------------------------------------------------------------------------
Global Const M_FILE                                  =  1
Global Const M_EDIT                                  =  2
Global Const M_SEARCH                                =  3
Global Const M_QUERY                                 =  3
Global Const M_PGM                                   =  4
Global Const M_TOOLS                                 =  4
Global Const M_OPTIONS                               =  5
Global Const M_WINDOW                                =  6
Global Const M_HELP                                  =  7
Global Const M_BROWSE                                =  8
Global Const M_MAP                                   =  9
Global Const M_LAYOUT                                = 10
Global Const M_MAPBASIC                              = 12
Global Const M_REDISTRICT                            = 13
Global Const M_OBJECTS                               = 14
Global Const M_TABLE                                 = 15
Global Const M_SHORTCUT_DFLT                         = 16
Global Const M_SHORTCUT_MAPPER                       = 17
Global Const M_SHORTCUT_BROWSER                      = 18
Global Const M_SHORTCUT_LAYOUT                       = 19
Global Const M_SHORTCUT_CMD                          = 21
Global Const M_SHORTCUT_REDISTRICTER                 = 22
Global Const M_SHORTCUT_LEGEND                       = 23
Global Const M_SHORTCUT_GRAPHTDG                     = 24
Global Const M_SHORTCUT_3DMAP                        = 25
Global Const M_SHORTCUT_MSG_WIN                      = 26
Global Const M_SHORTCUT_STAT_WIN                     = 27
Global Const M_3DMAP                                 = 28
Global Const M_GRAPHTDG                              = 29
Global Const M_LEGEND                                = 31
Global Const M_SHORTCUT_ADORNMENT                    = 32
Global Const M_SHORTCUT_LC_LAYERS                    = 33
Global Const M_SHORTCUT_LC_MAPS                      = 34
Global Const M_SHORTCUT_LC_GROUPS                    = 35
Global Const M_SHORTCUT_TABLEADORNMENT               = 36
Global Const M_SHORTCUT_TLV_TABLES                   = 37
Global Const M_SHORTCUT_LC_OVERRIDES                 = 38
Global Const M_OPEN_WEBSERVICE                       = 39
Global Const M_FIND_SELECTION                        = 40
Global Const M_ORACLE_TOOLS                          = 41
Global Const M_TAB_MAINTENANCE                       = 42
Global Const M_TAB_RASTER                            = 43
Global Const M_LICENSING                             = 44
Global Const M_TILESERVER                            = 45

'----------------------------------------------------------------------------
' Buttonpad defines - these represent the predefined toolbars, and can
' be used in the Alter ButtonPad command.
'----------------------------------------------------------------------------
Global Const TB_MAIN                                 = 1
Global Const TB_DRAWING                              = 2
Global Const TB_TOOLS                                = 3
Global Const TB_STANDARD                             = 4
Global Const TB_ODBC                                 = 5
Global Const TB_WEB_SVCS                             = 6

'============================================================================
' end of MENU.DEF
'============================================================================
