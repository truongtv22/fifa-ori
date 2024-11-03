.class public Lcom/ea/nimble/tracking/Tracking;
.super Ljava/lang/Object;
.source "Tracking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/tracking/Tracking$Event;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.tracking"

.field public static final EVENT_ANTELOPE_MEMBER_ADDED_TO_GROUP:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MEMBER_ADDED_TO_GROUP"

.field public static final EVENT_ANTELOPE_MEMBER_DENIED_FROM_GROUP:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MEMBER_DENIED_FROM_GROUP"

.field public static final EVENT_ANTELOPE_MEMBER_REMOVED_FROM_GROUP:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MEMBER_REMOVED_FROM_GROUP"

.field public static final EVENT_ANTELOPE_MEMBER_REQUEST_TO_GROUP:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MEMBER_REQUEST_TO_GROUP"

.field public static final EVENT_ANTELOPE_MESSAGE_SENT_TO_GROUP_CHAT:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_GROUP_CHAT"

.field public static final EVENT_ANTELOPE_MESSAGE_SENT_TO_INBOX:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_INBOX"

.field public static final EVENT_ANTELOPE_MESSAGE_SENT_TO_P2P_CHAT:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_P2P_CHAT"

.field public static final EVENT_ANTELOPE_MESSAGE_SENT_TO_WORLD_CHAT:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_MESSAGE_SENT_TO_WORLD_CHAT"

.field public static final EVENT_ANTELOPE_SOCIAL_GROUP_CREATED:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_SOCIAL_GROUP_CREATED"

.field public static final EVENT_ANTELOPE_SOCIAL_GROUP_DELETED:Ljava/lang/String; = "NIMBLESTANDARD::ANTELOPE_SOCIAL_GROUP_DELETED"

.field public static final EVENT_APPRESUME_FROMEBISU:Ljava/lang/String; = "NIMBLESTANDARD::APPRESUME_FROMEBISU"

.field public static final EVENT_APPRESUME_FROMPUSH:Ljava/lang/String; = "NIMBLESTANDARD::APPRESUME_FROMPUSH"

.field public static final EVENT_APPRESUME_FROMURL:Ljava/lang/String; = "NIMBLESTANDARD::APPRESUME_FROMURL"

.field public static final EVENT_APPRESUME_NORMAL:Ljava/lang/String; = "NIMBLESTANDARD::APPRESUME_NORMAL"

.field public static final EVENT_APPSTART_AFTERINSTALL:Ljava/lang/String; = "NIMBLESTANDARD::APPSTART_AFTERINSTALL"

.field public static final EVENT_APPSTART_AFTERUPGRADE:Ljava/lang/String; = "NIMBLESTANDARD::APPSTART_AFTERUPGRADE"

.field public static final EVENT_APPSTART_FROMPUSH:Ljava/lang/String; = "NIMBLESTANDARD::APPSTART_FROMPUSH"

.field public static final EVENT_APPSTART_FROMURL:Ljava/lang/String; = "NIMBLESTANDARD::APPSTART_FROMURL"

.field public static final EVENT_APPSTART_NORMAL:Ljava/lang/String; = "NIMBLESTANDARD::APPSTART_NORMAL"

.field public static final EVENT_LEVEL_UP:Ljava/lang/String; = "NIMBLESTANDARD::LEVEL_UP"

.field public static final EVENT_MTX_FREEITEM_DOWNLOADED:Ljava/lang/String; = "NIMBLESTANDARD::MTX_FREEITEM_DOWNLOADED"

.field public static final EVENT_MTX_ITEM_BEGIN_PURCHASE:Ljava/lang/String; = "NIMBLESTANDARD::MTX_ITEM_BEGIN_PURCHASE"

.field public static final EVENT_MTX_ITEM_PURCHASED:Ljava/lang/String; = "NIMBLESTANDARD::MTX_ITEM_PURCHASED"

.field public static final EVENT_PN_DEVICE_REGISTERED:Ljava/lang/String; = "NIMBLESTANDARD::PN_DEVICE_REGISTERED"

.field public static final EVENT_PN_DISPLAY_OPT_IN:Ljava/lang/String; = "NIMBLESTANDARD::PN_DISPLAY_OPT_IN"

.field public static final EVENT_PN_RECEIVED:Ljava/lang/String; = "NIMBLESTANDARD::PN_RECEIVED"

.field public static final EVENT_PN_SHOWN_TO_USER:Ljava/lang/String; = "NIMBLESTANDARD::PN_SHOWN_TO_USER"

.field public static final EVENT_PN_USER_CLICKED_OK:Ljava/lang/String; = "NIMBLESTANDARD::PN_USER_CLICKED_OK"

.field public static final EVENT_PN_USER_OPT_IN:Ljava/lang/String; = "NIMBLESTANDARD::PN_USER_OPT_IN"

.field public static final EVENT_REFERRERID_RECEIVED:Ljava/lang/String; = "NIMBLESTANDARD::REFERRER_ID_RECEIVED"

.field public static final EVENT_SESSION_END:Ljava/lang/String; = "NIMBLESTANDARD::SESSION_END"

.field public static final EVENT_SESSION_START:Ljava/lang/String; = "NIMBLESTANDARD::SESSION_START"

.field public static final EVENT_SESSION_TIME:Ljava/lang/String; = "NIMBLESTANDARD::SESSION_TIME"

.field public static final EVENT_TUTORIAL_COMPLETE:Ljava/lang/String; = "NIMBLESTANDARD::TUTORIAL_COMPLETE"

.field public static final EVENT_USER_REGISTERED:Ljava/lang/String; = "NIMBLESTANDARD::USER_REGISTERED"

.field public static final EVENT_USER_TRACKING_OPTOUT:Ljava/lang/String; = "NIMBLESTANDARD::USER_TRACKING_OPTOUT"

.field public static final KEY_ANTELOPE_GROUP_ID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_GROUP_ID"

.field public static final KEY_ANTELOPE_GROUP_TYPE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_GROUP_TYPE"

.field public static final KEY_ANTELOPE_INVITE_TYPE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_INVITE_TYPE"

.field public static final KEY_ANTELOPE_MEMBER_ID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_MEMBER_ID"

.field public static final KEY_ANTELOPE_MESSAGE_TYPE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_MESSAGE_TYPE"

.field public static final KEY_ANTELOPE_PROGRESSION:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_PROGRESSION"

.field public static final KEY_ANTELOPE_RECIPIENT_ID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_RECIPIENT_ID"

.field public static final KEY_ANTELOPE_RECIPIENT_TYPE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_ANTELOPE_RECIPIENT_TYPE"

.field public static final KEY_DURATION:Ljava/lang/String; = "NIMBLESTANDARD::KEY_DURATION"

.field public static final KEY_GAMEPLAY_DURATION:Ljava/lang/String; = "NIMBLESTANDARD::KEY_GAMEPLAY_DURATION"

.field public static final KEY_MTX_CURRENCY:Ljava/lang/String; = "NIMBLESTANDARD::KEY_MTX_CURRENCY"

.field public static final KEY_MTX_ORDERID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_MTX_ORDERID"

.field public static final KEY_MTX_PRICE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_MTX_PRICE"

.field public static final KEY_MTX_SELLID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_MTX_SELLID"

.field public static final KEY_PN_DATE_OF_BIRTH:Ljava/lang/String; = "NIMBLESTANDARD::KEY_PN_DATE_OF_BIRTH"

.field public static final KEY_PN_DEVICE_ID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_PN_DEVICE_ID"

.field public static final KEY_PN_DISABLED_FLAG:Ljava/lang/String; = "NIMBLESTANDARD::KEY_PN_DISABLED_FLAG"

.field public static final KEY_PN_MESSAGE_ID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

.field public static final KEY_PN_MESSAGE_TYPE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_PN_MESSAGE_TYPE"

.field public static final KEY_REFERRER_ID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_REFERRER_ID"

.field public static final KEY_USERNAME:Ljava/lang/String; = "NIMBLESTANDARD::KEY_USERNAME"

.field public static final KEY_USER_LEVEL:Ljava/lang/String; = "NIMBLESTANDARD::KEY_USER_LEVEL"

.field public static final NIMBLE_TRACKING_ATTRIBUTE_PROGRESSION_LEVEL:Ljava/lang/String; = "NIMBLESTANDARD::ATTRIBUTE_PROGRESSION_LEVEL"

.field public static final NIMBLE_TRACKING_DEFAULTENABLE:Ljava/lang/String; = "com.ea.nimble.tracking.defaultEnable"

.field public static final NIMBLE_TRACKING_EVENT_IDENTITY_LOGIN:Ljava/lang/String; = "NIMBLESTANDARD::IDENTITY_LOGIN"

.field public static final NIMBLE_TRACKING_EVENT_IDENTITY_LOGOUT:Ljava/lang/String; = "NIMBLESTANDARD::IDENTITY_LOGOUT"

.field public static final NIMBLE_TRACKING_EVENT_IDENTITY_MIGRATION:Ljava/lang/String; = "NIMBLESTANDARD::IDENTITY_MIGRATION"

.field public static final NIMBLE_TRACKING_EVENT_IDENTITY_MIGRATION_STARTED:Ljava/lang/String; = "NIMBLESTANDARD::IDENTITY_MIGRATION_STARTED"

.field public static final NIMBLE_TRACKING_KEY_IDENTITY_MAP_SOURCE:Ljava/lang/String; = "NIMBLESTANDARD::KEY_IDENTITY_SOURCE"

.field public static final NIMBLE_TRACKING_KEY_IDENTITY_MAP_TARGET:Ljava/lang/String; = "NIMBLESTANDARD::KEY_IDENTITY_TARGET"

.field public static final NIMBLE_TRACKING_KEY_IDENTITY_PIDMAP_LOGIN:Ljava/lang/String; = "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGIN"

.field public static final NIMBLE_TRACKING_KEY_IDENTITY_PIDMAP_LOGOUT:Ljava/lang/String; = "NIMBLESTANDARD::KEY_IDENTITY_PIDMAP_LOGOUT"

.field public static final NIMBLE_TRACKING_KEY_MIGRATION_GAME_TRIGGERED:Ljava/lang/String; = "NIMBLESTANDARD::KEY_MIGRATION_GAME_TRIGGERED"

.field public static final NIMBLE_TRACKING_KEY_PN_MESSAGEID:Ljava/lang/String; = "NIMBLESTANDARD::KEY_PN_MESSAGE_ID"

.field private static final SESSION_END_EVENT_PREFIX:Ljava/lang/String; = "SESSION_END"

.field private static final SESSION_RESUME_EVENT_PREFIX:Ljava/lang/String; = "APPRESUME_"

.field private static final SESSION_START_EVENT_PREFIX:Ljava/lang/String; = "APPSTART_"

.field private static final STANDARD_EVENT_PREFIX:Ljava/lang/String; = "NIMBLESTANDARD::"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/tracking/ITracking;
    .locals 1

    const-string v0, "com.ea.nimble.tracking"

    invoke-static {v0}, Lcom/ea/nimble/Base;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/tracking/ITracking;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    const-string v0, "Tracking"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    new-instance v0, Lcom/ea/nimble/tracking/TrackingWrangler;

    invoke-direct {v0}, Lcom/ea/nimble/tracking/TrackingWrangler;-><init>()V

    const-string v1, "com.ea.nimble.tracking"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method public static isNimbleStandardEvent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Tracking"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "NIMBLESTANDARD::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSessionEndEvent(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Tracking"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "SESSION_END"

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isSessionStartEvent(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Tracking"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "APPSTART_"

    const/16 v2, 0x10

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "APPRESUME_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
