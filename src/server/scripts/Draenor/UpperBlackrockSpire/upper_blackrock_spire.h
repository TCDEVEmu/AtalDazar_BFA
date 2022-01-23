/*
    http://epicwow.com/
    Dungeon : Upper Blackrock Spire 90-100
*/

#ifndef UPPER_BLACKROCK_SPIRE_H_
#define UPPER_BLACKROCK_SPIRE_H_

enum eCreatures
{
    //Firt room creature
    NPC_RUNE_GLOW               = 76396,
    NPC_BLACK_IRON_BERSERKER    = 76176,
    NPC_BLACK_IRON_LEADBELCHER  = 76157,
    NPC_BLACK_IRON_WARCASTER    = 76151,
    NPC_BLACK_IRON_GRUNT        = 76179,
    NPC_RAGEMAW_WORG            = 76181,
    //Goroshan
    NPC_OREBENDER_GORASHAN      = 76413,
    NPC_POWER_RUNE              = 76417,
    NPC_LIGHTNING_FIELD         = 76464,
    //Kyrak
    NPC_KYRAK                   = 76021,
    NPC_DRAKONID_MONSTROSITY    = 82556,
    //Tharbek summons
    NPC_VILEMAW_HATCHLING       = 77096,
    NPC_BLACK_IRON_DREADWEAVER  = 77035,
    NPC_BLACK_IRON_SUMMONER     = 77036,
    NPC_BLACK_IRON_VETERAN      = 77034,
    NPC_BLACK_IRON_ENGINEER     = 76101,
    NPC_IRONBARB_SKYREAVER      = 80098, //vehicle
    NPC_IRON_AXE_STALKER        = 80307,
    //Ragewing
    NPC_RAGEWING_WHELP          = 76801,
    NPC_ENGULFING_FIRE_R        = 76813,
    NPC_ENGULFING_FIRE_L        = 76837,
    //Zaela
    NPC_WARLORD_ZAELA           = 77120,
    NPC_EMBERSCALE_IRONFLIGHT   = 82428,
    NPC_EMBERSCALE_IRONFLIGHT_2 = 83479,
    NPC_EMBERSCALE_MATRON       = 82480,
    NPC_LEEROY_JENKINS          = 77075,
    NPC_SON_OF_THE_BEAST        = 77927
};

enum eGameObjects
{
    GO_ENTRANCE_DOOR        = 175244,
    //Goroshan
    GO_ENTER_ROOM_DOOR      = 175705,
    GO_EXIT_ROOM_DOOR       = 175153,
    GO_CONDUIT              = 226704,
    //Kyrak
    GO_KYRAK_EXIT_DOOR      = 225945,
    GO_KYRAK_EXIT_DOOR_2    = 225944,
    //Tharbek
    GO_THARBEK_PORTCULLIS   = 175185,
    GO_THARBEK_ENTER_DOOR   = 164726,
    GO_THARBEK_EXIT_DOOR    = 175186,
    //Ragewing
    GO_RAGEWING_ENTER_DOOR  = 232998,
    GO_RAGEWING_EXIT_DOOR   = 232999,
};

#endif
