.class public Lcom/beetalk/sdk/networking/GarenaUserAgent;
.super Ljava/lang/Object;
.source "GarenaUserAgent.java"


# static fields
.field public static final HEADER_KEY:Ljava/lang/String; = "user-agent"

.field private static volatile MODEL_POSTFIX:Ljava/lang/String; = ""

.field private static final TITLE:Ljava/lang/String; = "GarenaMSDK"


# instance fields
.field private mAndroidVersion:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mExtra:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;

.field private mSDKVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mAndroidVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mSDKVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mLanguage:Ljava/lang/String;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mRegion:Ljava/lang/String;

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mExtra:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->generateAgent(Ljava/lang/String;)V

    return-void
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private generateAgent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Android "

    :try_start_0
    const-string v1, "4.0.29"

    invoke-direct {p0, v1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mSDKVersion:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/beetalk/sdk/networking/GarenaUserAgent;->MODEL_POSTFIX:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/beetalk/sdk/networking/GarenaUserAgent;->MODEL_POSTFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mDeviceName:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Android"

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mAndroidVersion:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mLanguage:Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mRegion:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/networking/GarenaUserAgent;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mExtra:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/beetalk/sdk/helper/BBLogger;->e(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "tablet"

    sput-object p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->MODEL_POSTFIX:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "GarenaMSDK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mSDKVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mDeviceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mAndroidVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mLanguage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mRegion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/beetalk/sdk/networking/GarenaUserAgent;->mExtra:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s/%s(%s;%s;%s;%s;%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
