.class public Lcom/beetalk/sdk/helper/LocaleHelper;
.super Ljava/lang/Object;
.source "LocaleHelper.java"


# static fields
.field static DEFAULT_COUNTRY:Ljava/lang/String; = "SG"

.field static DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field private static final LANGUAGE_CODE_INDONESIAN_NEW:Ljava/lang/String; = "id"

.field private static final LANGUAGE_CODE_INDONESIAN_OLD:Ljava/lang/String; = "in"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDeviceCountry()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/beetalk/sdk/helper/LocaleHelper;->DEFAULT_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultDeviceCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->getInstance()Lcom/beetalk/sdk/helper/PhoneInfoUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/helper/PhoneInfoUtil;->getPhoneCountryISO(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getDefaultDeviceLanguage()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/beetalk/sdk/helper/LocaleHelper;->DEFAULT_COUNTRY:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultLocale()Ljava/util/Locale;
    .locals 3

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/beetalk/sdk/helper/LocaleHelper;->getDefaultDeviceCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLocaleStringForServer(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "id"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getPhoneDeviceCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
