.class public Lcom/beetalk/sdk/SDKConstants;
.super Ljava/lang/Object;
.source "SDKConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/SDKConstants$EMAIL_LOGIN_CONTENT;,
        Lcom/beetalk/sdk/SDKConstants$API;,
        Lcom/beetalk/sdk/SDKConstants$ERR_GOP_PAY_COMMIT;,
        Lcom/beetalk/sdk/SDKConstants$SUBSCRIPTION_STATUS;,
        Lcom/beetalk/sdk/SDKConstants$SUBSCRIPTION_PERIOD;,
        Lcom/beetalk/sdk/SDKConstants$PAYMENT_CHANNEL_FLAG;,
        Lcom/beetalk/sdk/SDKConstants$DEBUG;,
        Lcom/beetalk/sdk/SDKConstants$SERVER_ERRORS;,
        Lcom/beetalk/sdk/SDKConstants$Platform;,
        Lcom/beetalk/sdk/SDKConstants$PaymentProvider;,
        Lcom/beetalk/sdk/SDKConstants$WEB_PAY;,
        Lcom/beetalk/sdk/SDKConstants$CHANNEL_SOURCE;,
        Lcom/beetalk/sdk/SDKConstants$VERSION;,
        Lcom/beetalk/sdk/SDKConstants$PLUGIN_REQUEST_CODES;,
        Lcom/beetalk/sdk/SDKConstants$PLUGIN_KEYS;,
        Lcom/beetalk/sdk/SDKConstants$ErrorFlags;,
        Lcom/beetalk/sdk/SDKConstants$GG_SHARE_SCENE;,
        Lcom/beetalk/sdk/SDKConstants$GGSHARE_ACTION;,
        Lcom/beetalk/sdk/SDKConstants$SHARE_BUNDLE_TAG;,
        Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    }
.end annotation


# static fields
.field public static final ANDROID_TEST_PURCHASED:Ljava/lang/String; = "android.test.purchased"

.field public static final AUTH_INSPECTION_TIME_INTERVAL:I = 0xe10

.field public static final AUTH_REFRESH_TIME_INTERVAL:I = 0x2a300

.field public static final BUNDLE_REQUEST_KEY:Ljava/lang/String; = "request_extra"

.field public static final BUNDLE_RESULT_KEY:Ljava/lang/String; = "auth_result"

.field public static final COM_GARENA_MSDK_GAME_LAUNCH_BUNDLE:Ljava/lang/String; = "com.garena.msdk.game_launch_bundle"

.field public static final COM_GARENA_MSDK_GAME_LAUNCH_MEDIA_TAG:Ljava/lang/String; = "com.garena.msdk.game_launch_media_tag"

.field public static final COM_GARENA_MSDK_GAME_LAUNCH_OPEN_ID:Ljava/lang/String; = "com.garena.msdk.game_launch_open_id"

.field public static final COM_GARENA_MSDK_GAME_LAUNCH_OPEN_ID_SOURCE:Ljava/lang/String; = "com.garena.msdk.game_launch_open_id_source"

.field public static DEBUG_SHOW:Z = false

.field public static final DEFAULT_ACTIVITY_EMAIL_REQUEST_CODE:I = 0xdba9

.field public static final DEFAULT_ACTIVITY_FACEBOOK_REQUEST_CODE:I = 0xdba3

.field public static final DEFAULT_ACTIVITY_GOOGLE_REQUEST_CODE:I = 0xdba6

.field public static final DEFAULT_ACTIVITY_LAUNCH_REQUEST_CODE:I = 0xdb9d

.field public static final DEFAULT_ACTIVITY_LINE_REQUEST_CODE:I = 0xdba5

.field public static final DEFAULT_ACTIVITY_PLAY_GAMES_REQUEST_CODE:I = 0xdbaa

.field public static final DEFAULT_ACTIVITY_TWITTER_REQUEST_CODE:I = 0xdba8

.field public static final DEFAULT_ACTIVITY_VK_REQUEST_CODE:I = 0xdba4

.field public static final DEFAULT_REQUEST_CODE:I = 0x1101

.field public static final GAS_ACTION_SHARE:Ljava/lang/String; = "com.garena.gas.intent.GAME_SHARE"

.field public static final GAS_AUTH_ACTIVITY_FQ_NAME:Ljava/lang/String; = "com.garena.gameauth.GPProxyAuthActivity"

.field public static final GAS_CLASSPATH_PROXY:Ljava/lang/String; = "com.garena.gameauth.GPProxyCommonActivity"

.field public static final GAS_DEBUG_SIGNATURE:Ljava/lang/String; = "3082030b308201f3a00302010202047a0636e6300d06092a864886f70d01010b05003036311e301c060355040b1315476172656e61204f6e6c696e6520507464204c7464311430120603550403130b476172656e6120506c7573301e170d3134303831393130323431345a170d3135303831393130323431345a3036311e301c060355040b1315476172656e61204f6e6c696e6520507464204c7464311430120603550403130b476172656e6120506c757330820122300d06092a864886f70d01010105000382010f003082010a028201010084f9e11b108453d15322f95c388cb9f10deded1953a1b2343835345e2bdd2509f390014167000b4e73f1cf302b4d4d173f37eefa986fe7c235741adac823ec50d98f980d5f80c8f2d9e54e0d9113afbd6530b1272299f8b32966405af143041050bc8ce9010ca59ddab081bdc080f95818f7511a2e0f9d754bcfd9b4b9cd54cb08c41a9e42e27ee73689c35262267765379651e0837bec77fdeb8f69fc4ff71ac140d41f620fe0943e5cb1466fd764d3d6822ef8663ed9521b279ba55ed897c9b067dcd15799fd1e1e6783aeeafe3de47e6e004cebcc41cc7472e2d78d52095bea62f5db81e0653db2c08227248d0abfe2c243d49521b645549e1d9b40d2830d0203010001a321301f301d0603551d0e0416041431118e3818aaad6f0025d4724af957f6d9a82e11300d06092a864886f70d01010b050003820101007689d7b46da6e227ffc6fc29f2d8f78d1b79b8fc265745efb461c985eb160a248ddb54601b203b70817838743061f4d20dc0ec68fdd2e7d2e2f268a4626f643cd91126e6c5956bddaefdf6186c9e89a3d300ea9d55065161969acd92e061c2993d8cac35e6517c49942944d54083ddd4f4503018f88d1f5028725a10f1f188a020ee62d72a523c29dae1f93eb657bfe04855d29f83c8964942958b4fea9a5c82a9a4fe5820df5a606e5b950ee809178d167f3e651c474bc5507efa6d935f02dc37dee116f5ed2657b1b53d3087c0f291e333c6726557e9977d64626b7e49f1de3b8fcf8df1d81c09768658300d5b8f06a81ed56a819fe7a34beafcac50f39f5a"

.field public static final GAS_GOOGLE_PLAY_RELEASE_SIGNATURE:Ljava/lang/String; = "308205873082036fa00302010202150085da7daa7fb5c103987bba339a00f89579bb359d300d06092a864886f70d01010b05003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3137303830333033333431325a170d3437303830333033333431325a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820222300d06092a864886f70d01010105000382020f003082020a02820201009a34e999f1a0f4f2148b218cc057b60c9553ea1ca8ebdc2fcba8d781247e74d57455c9ffc32b14b2bc5b0345c003fd67f0aed8c86a497de486a537abbbd80551b3a8604dc3b07cc160a846ea2b4d2a996829d68405418e5756325623d6cde17b1a25a10c8a24acdbb07bd483eaa84718b71cb74894de35464571dcf84da4fe5709245a27763eebbc6580e85f749c46c509b5bd12ebaf9c9595b319778df08c7ff9a4c30b653d736b7b50134a5ee437d1dd3d93fe7c2ecd48318cf865d3c6b9440cea8e55c0ed26427540353c372e5df55a05fc66a4e8451b28f681f3ae90608a779a40336934daee6e0ab19dcdaea947592fb6fc2104fc9ae5a9bb3d1a65a50d5e6e77e4f9ffce6a881bc99dfe4bac6eef228f362b7b5ede79e9d487c31885a08380c1777abb8dd40cb08b2ed96671d12912337ae5ef808af421e402bcba3b8e1a1deb550f2e2c5b9de0b99eb7206385bc2ee1f5b9aa112cc6a92ae6e906d585b7b21a63db32b8417de6ce347dc582b5edfd7d216435b50bc4dafab09d45d0c8d55b4520891e7493880f860301f61b2b1aa40c943ea51784c18ed29256b5f83b4ed727a30e15d0788866de51272740079f437c52b9a52b24e95ce7257133ae2b7d886e89624387fc4f5990585e539ac708e088e2631dafa2432a73c4eb0f0cb5866138e674f1a422d7a6515fcd1d42fcd99dee81dbe092862077f882e32644410203010001a310300e300c0603551d13040530030101ff300d06092a864886f70d01010b050003820201008067799ce549eb1e16e6c0dc53df5c0b9d32db4649701aa57a7f655786bd53e39d6efb711be372a84f1e3a6724d016369ab45dfe73440fc8f758206b362e697a6da6d05b9cd243982dda6fe83c8fdae5f0e6e734867de6698dc172072b0ad8feaab32e33a543c7385ea79e47612242f3ad7d585738a0dee68bbec067f4904552e36c3e47e28fd87eeceb59b9bdc4e3582780c38ea6d3ea5d998076ddb84c054385a41fd18c4fb6242f990f5efd5c21f03aa77444207162276bd77a95510546c2ed653b2d5715f2c467f3808d8525a0ebe02fd9492803b1426bf423696262a493c54d87a069acf8a5917976d9b30dcbd0e60ad797a678a4faec00c34aa58d915efe861e197b832d171c1826e042761df310bf9919126e81e009319a985425539f73beced7a969569b54d0a768fc43cb58c9623e81fb5ba00cd1dc80807d84fa41e824e82ad9b5000b4ca0423b2380b274a7792559edb86d4934ee56a098f224e239a1d1bdcce4149bc0d7eadf977cd0467b777e723bfd14e241bc4adb21a508c2ed492f93959ae5b5695562ea99a4c58b8342f74ff702b4f3ddfecee1f330d44883de94da81d61f819a1541d9020d15510e05b7b9d8affa8266994b4843947ddb961c36336ab75d94cfecb9068f88c911144fd396a56a9d4a2977b6e7e458184b3049acdf975f0ae5ee18b4e7cc7159569bbbd3bc32af36f3fc5f1cb0c9d62c7b"

.field public static final GAS_RELEASE_SIGNATURE:Ljava/lang/String; = "308203b53082029da00302010202041c5ce5b9300d06092a864886f70d01010b050030818a310b3009060355040613023635311230100603550408130953696e6761706f7265311230100603550407130953696e6761706f7265311e301c060355040a1315476172656e61204f6e6c696e6520507465204c7464311d301b060355040b1314536f66747761726520456e67696e656572696e67311430120603550403130b476172656e6120506c7573301e170d3134303831393130333330345a170d3339303831333130333330345a30818a310b3009060355040613023635311230100603550408130953696e6761706f7265311230100603550407130953696e6761706f7265311e301c060355040a1315476172656e61204f6e6c696e6520507465204c7464311d301b060355040b1314536f66747761726520456e67696e656572696e67311430120603550403130b476172656e6120506c757330820122300d06092a864886f70d01010105000382010f003082010a02820101008f7cec7d1529db09e6d8bb56b00ca4d2a9ca0ba1d3d17fe249ebcc39472cf1a5733cd9972f48bfc6e56c47d123d5d451ae15bff099d96ca22d9a3d9775e0d59b74a1b23cc7cc745fd29d5060a74d3a48246a82ddaac587a6cfffe0f264e16241b7a91bebd8db4589776e61b9916e20e0c749e205715930e9c54b5a5b5d7d14f3b27693eba1a3264eb0c0818ae11809b85bbe9e6099e641fb24940b534336fcc519e284e4d944a385732ae1a792025eadd49486a10a01b6d09c52bac1798d0d74c9e1ea07ae3b7ac20e0aee6ba9e23c402ae0cc047a8e11b96a47d4ebd4674d1e3c565bb5ca3ef8af9037df8f9d2e3b34b389cfe1fd4854b331f2735b6a8c01250203010001a321301f301d0603551d0e0416041466f6c0a324150c5c5b770186ba3e0d8efbec0e5f300d06092a864886f70d01010b0500038201010083e3ae177a46cf6a51b8f747f546d91a287db288c57553d36cbef7b7271e024cfba3f5b65b9b2fff74c25304da082bee95740ce61acf9bbbcc3004f976ca801244a1a62bcac998107b80f37c3b5b8361305817fa7ef2ba1c52d443228696bbd5d1220da5d5729dd034a01c2e702226d292e1eb00d3e554217934cb392623c06a15c9f0579f8e234f4ddf66077ee787953dc4a206dcef4799d9017b20df91b3098fa6ed640c51f2c215663f27a8dce98b6cf12d014522ad9be495a645cfffc66dac9bf984342161a4a60e06601622020ed9e49a3d886a408b89ae69e85bb903f0a38eb169ed7177a0848401862e96e6a8b6561d567311af414dc203686ea41ecf"

.field public static final GG_EXTRA_PAY_REQUEST:Ljava/lang/String; = "com.garena.pay.android.extras.pay_request"

.field public static final GG_EXTRA_RESULT_SERIALIZABLE:Ljava/lang/String; = "com.garena.pay.android.extras.result"

.field private static final GOP_DEV_HOST:Ljava/lang/String; = "https://devconnect.garena.com"

.field public static final MAX_IMG_DATA_LENGTH_BYTES:I = 0x7a120

.field public static final MIN_GAS_VERSION_SUPPORT:I = 0x13

.field private static final NEW_GOP_DEV_HOST:Ljava/lang/String; = "https://devmsdk.garena.com"

.field private static final NEW_PRODUCTION_HOST_FALLBACK:Ljava/lang/String; = "https://msdk.garena.com"

.field private static final NEW_PRODUCTION_HOST_FMT:Ljava/lang/String; = "https://%s.msdk.garena.com"

.field private static final NEW_TEST_HOST:Ljava/lang/String; = "https://testmsdk.garena.com"

.field public static NO_LOG:Z = false

.field public static final OBTAIN_APP_PLATFORM_BIND_SESSION_REQUEST_CODE:I = 0xdbed

.field public static final OBTAIN_BIND_SESSION_REQUEST_CODE:I = 0xdbec

.field private static final PRODUCTION_HOST_FALLBACK:Ljava/lang/String; = "https://connect.garena.com"

.field private static final PRODUCTION_HOST_FMT:Ljava/lang/String; = "https://%s.connect.garena.com"

.field public static final REDIRECT_URL_PREFIX:Ljava/lang/String; = "gop"

.field public static RELEASE_VERSION:Z = true

.field public static final SECURITY_ENHANCEMENT_APIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEST_HOST:Ljava/lang/String; = "https://testconnect.garena.com"

.field public static final TEST_PURCHASE_ITEM_ID:Ljava/lang/String; = "9999"

.field public static final TWITTER_COMPOSER_ACTIVITY:Ljava/lang/String; = "com.twitter.composer.ComposerActivity"

.field public static final USER_CANCELLED:Ljava/lang/String; = "user_cancelled"

.field public static final VK_API_VERSION:Ljava/lang/String; = "5.131"

.field public static final WEB_VIEW_MARGIN:I = 0x14

.field private static emailLoginContent:Ljava/lang/String;

.field private static facebookLoginPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static gopDevSandboxMode:Z

.field private static overrideNewRootUrl:Ljava/lang/String;

.field private static overrideRootUrl:Ljava/lang/String;

.field private static sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->isTesting()Z

    move-result v0

    sput-boolean v0, Lcom/beetalk/sdk/SDKConstants;->DEBUG_SHOW:Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->isTesting()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/beetalk/sdk/SDKConstants;->NO_LOG:Z

    const-string/jumbo v0, "user_friends"

    const-string v1, "email"

    const-string v2, "public_profile"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/beetalk/sdk/SDKConstants;->facebookLoginPermissions:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/beetalk/sdk/SDKConstants;->emailLoginContent:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/SDKConstants;->SECURITY_ENHANCEMENT_APIS:Ljava/util/List;

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sput-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/beetalk/sdk/SDKConstants;->gopDevSandboxMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPIHost()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppConfigURL()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-string v0, "https://testconnect.garenanow.com/app/info/get"

    goto :goto_0

    :cond_0
    const-string v0, "https://connect.garenanow.com/app/info/get"

    :goto_0
    return-object v0
.end method

.method public static getAppPlatformBindCreateURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bind/app/platform/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPlatformBindInfoURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bind/app/platform/info/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthFacebookTokenExchangeUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/facebook/exchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthGoogleTokenExchangeUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/google/exchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthLineTokenExchangeUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/line/exchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthPGSTokenExchangeUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/pgs/exchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthRefreshTokenUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthServerExchangeTokenUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/exchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthTwitterTokenExchangeUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/twitter/exchange"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthVkTokenExchangeUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/vk/exchange/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBindGuestAccountURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/game/guest/bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelPayUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/channel/pay/%d/%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelsGetUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/info/pricing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelsGetUrlV1()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/options/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCommitRequestCacheDurationMs()J
    .locals 2

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    move-result-object v0

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const-wide/32 v0, 0x927c0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method public static getEmailLoginContent()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->emailLoginContent:Ljava/lang/String;

    return-object v0
.end method

.method public static getEmailOAuthUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/universal/email/login?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironment()Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    return-object v0
.end method

.method public static getEventConfig()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/info/event/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEventPricing()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/info/event/pricing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFacebookLoginPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->facebookLoginPermissions:Ljava/util/List;

    return-object v0
.end method

.method public static getFeedbackServerUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://connect.garenanow.com/app/feedback"

    return-object v0
.end method

.method public static getGarenaOAuthRedirectUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/garena?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGarenaOAuthUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/universal/oauth?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleCommitPayUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/pay/google/commit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGooglePayEligibilityUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/pay/eligibility"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGuestGrantTokenURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/guest/token/grant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInitGooglePayUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/google/init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadFriendGroupUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/user/friends/get/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadGroupFriendsInfoUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/user/friends/info/get/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoadInAppFriendGroupUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/user/friends/inapp/get/v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogoutUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewRootPayApiUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/msdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNewRootUrl()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->overrideNewRootUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->overrideNewRootUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/beetalk/sdk/SDKConstants;->gopDevSandboxMode:Z

    if-eqz v0, :cond_1

    const-string v0, "https://devmsdk.garena.com"

    goto :goto_0

    :cond_1
    const-string v0, "https://testmsdk.garena.com"

    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "https://msdk.garena.com"

    return-object v0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "https://%s.msdk.garena.com"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPGSRecallTokenUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/user/recall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPGSSaveTokenUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/user/store"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPayEventCancel()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/pay/event/cancel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPayEventInit()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/pay/event/init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPaymentItems()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/info/app-items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPointBalanceURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/point/get_balance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRebateOptionsUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/info/rebates"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRedeemURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getNewRootPayApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/rebates/redeem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisterGuestAccountURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/guest/register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootPayAPIUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/msdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootUrl()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->overrideRootUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->overrideRootUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/beetalk/sdk/SDKConstants;->gopDevSandboxMode:Z

    if-eqz v0, :cond_1

    const-string v0, "https://devconnect.garena.com"

    goto :goto_0

    :cond_1
    const-string v0, "https://testconnect.garena.com"

    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "https://connect.garena.com"

    return-object v0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "https://%s.connect.garena.com"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSsoURL()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/beetalk/sdk/SDKConstants;->gopDevSandboxMode:Z

    if-eqz v0, :cond_0

    const-string v0, "https://devsso.garena.com"

    goto :goto_0

    :cond_0
    const-string v0, "https://testsso.garena.com"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "https://sso.garena.com"

    return-object v0
.end method

.method public static getTokenInspectUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/inspect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenRefresh()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/token/refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserInfoUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oauth/user/info/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static init(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    sput-boolean p0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->SandboxMode:Z

    sput-boolean p0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-boolean p0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->SandboxMode:Z

    sput-boolean p0, Lcom/garena/android/beepost/service/BeePostRuntimeConfig;->LogEnabled:Z

    :goto_0
    return-void
.end method

.method public static isTesting()Z
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    sget-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static refreshSecurityEnhancementApis()V
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/SDKConstants;->SECURITY_ENHANCEMENT_APIS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getAuthRefreshTokenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getTokenRefresh()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getTokenInspectUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getUserInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getLoadFriendGroupUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getLoadInAppFriendGroupUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getLoadGroupFriendsInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->getBindGuestAccountURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 1

    xor-int/lit8 v0, p0, 0x1

    sput-boolean v0, Lcom/beetalk/sdk/SDKConstants;->NO_LOG:Z

    sput-boolean p0, Lcom/beetalk/sdk/SDKConstants;->DEBUG_SHOW:Z

    return-void
.end method

.method public static setEmailLoginContent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/SDKConstants;->emailLoginContent:Ljava/lang/String;

    return-void
.end method

.method public static setFacebookLoginPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/beetalk/sdk/SDKConstants;->facebookLoginPermissions:Ljava/util/List;

    return-void
.end method

.method public static setGopDevSandboxMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/beetalk/sdk/SDKConstants;->gopDevSandboxMode:Z

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->refreshSecurityEnhancementApis()V

    return-void
.end method

.method public static setOverrideNewRootUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/SDKConstants;->overrideNewRootUrl:Ljava/lang/String;

    return-void
.end method

.method public static setOverrideRootUrl(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/SDKConstants;->overrideRootUrl:Ljava/lang/String;

    return-void
.end method

.method public static setSandboxMode(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V
    .locals 0

    sput-object p0, Lcom/beetalk/sdk/SDKConstants;->sandboxMode:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {}, Lcom/beetalk/sdk/SDKConstants;->refreshSecurityEnhancementApis()V

    invoke-static {p0}, Lcom/beetalk/sdk/SDKConstants;->init(Lcom/beetalk/sdk/SDKConstants$GGEnvironment;)V

    return-void
.end method
