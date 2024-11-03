.class Lcom/ea/nimble/EnvironmentDataContainer;
.super Ljava/lang/Object;
.source "EnvironmentDataContainer.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyEnvironment;
.implements Ljava/io/Externalizable;
.implements Lcom/ea/nimble/LogSource;


# static fields
.field private static final SYNERGY_DIRECTOR_RESPONSE_APP_VERSION_OK:I = 0x0

.field private static final SYNERGY_DIRECTOR_RESPONSE_APP_VERSION_UPGRADE_RECOMMENDED:I = 0x1

.field private static final SYNERGY_DIRECTOR_RESPONSE_APP_VERSION_UPGRADE_REQUIRED:I = 0x2


# instance fields
.field private m_applicationLanguageCode:Ljava/lang/String;

.field private m_eaDeviceId:Ljava/lang/String;

.field private m_getDirectionResponseDictionary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_lastDirectorResponseTimestamp:Ljava/lang/Long;

.field private m_overrideServerUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_serverUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_synergyAnonymousId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v0, "en"

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_overrideServerUrls:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public checkAndInitiateSynergyEnvironmentUpdate()Lcom/ea/nimble/Error;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEADeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getEAHardwareId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "hwId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getGetDirectionResponseDictionary()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    return-object v0
.end method

.method public getGosMdmAppKey()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "mdmAppKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeysOfDifferences(Lcom/ea/nimble/ISynergyEnvironment;)Ljava/util/Set;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/nimble/ISynergyEnvironment;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "nexus.portal"

    const-string v3, "nexus.proxy"

    const-string v4, "nexus.connect"

    const-string v5, "mayhem.url"

    const-string v6, "dmg.url"

    const-string v7, "akamai.url"

    const-string v8, "origincasualserver.url"

    const-string v9, "origincasualapp.url"

    const-string v10, "avatars.url"

    const-string v11, "eadp.friends.host"

    const-string v12, "friends.url"

    const-string v13, "synergy.s2s"

    const-string v14, "geoip.url"

    const-string v15, "synergy.user"

    move-object/from16 v16, v2

    const-string v2, "synergy.tracking"

    move-object/from16 v17, v3

    const-string v3, "synergy.product"

    move-object/from16 v18, v4

    const-string v4, "synergy.m2u"

    move-object/from16 v19, v5

    const-string v5, "synergy.director"

    move-object/from16 v20, v6

    const-string v6, "synergy.drm"

    invoke-static/range {p0 .. p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    move-object/from16 v21, v7

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_0

    move-object/from16 v22, v8

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEADeviceId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v9

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/ISynergyEnvironment;->getEADeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_0
    move-object/from16 v22, v8

    move-object/from16 v23, v9

    :goto_0
    const-string v8, "ENVIRONMENT_KEY_EADEVICEID"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getEAHardwareId()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/ISynergyEnvironment;->getEAHardwareId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    const-string v8, "ENVIRONMENT_KEY_EAHARDWAREID"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSynergyId()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    const-string v8, "ENVIRONMENT_KEY_SYNERGYID"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getSellId()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSellId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    const-string v8, "ENVIRONMENT_KEY_SELLID"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getProductId()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/ISynergyEnvironment;->getProductId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    const-string v8, "ENVIRONMENT_KEY_PRODUCTID"

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v1, v6}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_a
    const-string v6, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_DRM"

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v1, v5}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    :cond_c
    const-string v5, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_DIRECTOR"

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {v1, v4}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    const-string v4, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_MESSAGE_TO_USER"

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v1, v3}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    const-string v3, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_PRODUCT"

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_TRACKING"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v1, v15}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v15}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_USER"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    if-eqz v0, :cond_16

    invoke-virtual {v1, v14}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_16
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_CENTRAL_IP_GEOLOCATION"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_17
    if-eqz v0, :cond_18

    invoke-virtual {v1, v13}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v13}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    :cond_18
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_SYNERGY_S2S"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_19
    if-eqz v0, :cond_1a

    invoke-virtual {v1, v12}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v12}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_FRIENDS"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual {v1, v11}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_EADP_FRIENDS_HOST"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1d
    if-eqz v0, :cond_1e

    invoke-virtual {v1, v10}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v10}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_AVATAR"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-eqz v0, :cond_20

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_CASUAL_APP"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz v0, :cond_22

    move-object/from16 v2, v22

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_ORIGIN_CASUAL_SERVER"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_23
    if-eqz v0, :cond_24

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_24
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_AKAMAI"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz v0, :cond_26

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_26
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_DYNAMIC_MORE_GAMES"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_27
    if-eqz v0, :cond_28

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_MAYHEM"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_29
    if-eqz v0, :cond_2a

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_2a
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_KEY_IDENTITY_CONNECT"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2b
    if-eqz v0, :cond_2c

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2c
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_KEY_IDENTITY_PROXY"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz v0, :cond_2e

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/ea/nimble/EnvironmentDataContainer;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Lcom/ea/nimble/ISynergyEnvironment;->getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/ea/nimble/Utility;->stringsAreEquivalent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    :cond_2e
    const-string v2, "ENVIRONMENT_KEY_SERVER_URL_KEY_IDENTITY_PORTAL"

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2f
    if-eqz v0, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/ea/nimble/EnvironmentDataContainer;->getLatestAppVersionCheckResult()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/ea/nimble/ISynergyEnvironment;->getLatestAppVersionCheckResult()I

    move-result v0

    if-eq v2, v0, :cond_31

    :cond_30
    const-string v0, "ENVIRONMENT_KEY_APP_VERSION_CHECK_RESULT"

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Null pointer exception comparing EnvironmentDataContainer."

    invoke-static {v1, v3, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_31
    :goto_1
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_32

    return-object v7

    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatestAppVersionCheckResult()I
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "appUpgrade"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SynergyEnv"

    return-object v0
.end method

.method getMostRecentDirectorResponseTimestamp()Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getNexusClientId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "clientId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNexusClientSecret()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "clientSecret"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getOverrideServerUrls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_overrideServerUrls:Ljava/util/Map;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "productId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSellId()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v1, "sellId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServerUrlWithKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getServerUrls()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    return-object v0
.end method

.method getSynergyAnonymousId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    return-object v0
.end method

.method public getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-static {}, Lcom/ea/nimble/SynergyEnvironment;->getComponent()Lcom/ea/nimble/ISynergyEnvironment;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ea/nimble/ISynergyEnvironment;->getSynergyDirectorServerUrl(Lcom/ea/nimble/NimbleConfiguration;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSynergyId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingPostInterval()I
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    const-string v2, "telemetryFreq"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public isDataAvailable()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isFeatureDisabled(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "disabledFeatures"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isUpdateInProgress()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public overrideServerUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_overrideServerUrls:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_overrideServerUrls:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_overrideServerUrls:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iput-object v1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    iput-object v1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method setEADeviceId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    return-void
.end method

.method setGetDirectionResponseDictionary(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const-string v0, "sellId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "productId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hwId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method setMostRecentDirectorResponseTimestamp(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    return-void
.end method

.method setServerUrls(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    return-void
.end method

.method setSynergyAnonymousId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_getDirectionResponseDictionary:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_serverUrls:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_eaDeviceId:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_synergyAnonymousId:Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_lastDirectorResponseTimestamp:Ljava/lang/Long;

    if-nez v0, :cond_4

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-interface {p1, v2, v3}, Ljava/io/ObjectOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/ea/nimble/EnvironmentDataContainer;->m_applicationLanguageCode:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
