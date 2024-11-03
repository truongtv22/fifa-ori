.class public Lcom/ea/nimble/ApplicationEnvironment;
.super Ljava/lang/Object;
.source "ApplicationEnvironment.java"


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.applicationEnvironment"

.field public static final NIMBLE_PARAMETER_ANDROID_ID:Ljava/lang/String; = "androidId"

.field public static final NIMBLE_PARAMETER_COUNTRY_CODE:Ljava/lang/String; = "countryCode"

.field public static final NIMBLE_PARAMETER_DEVICE_BRAND:Ljava/lang/String; = "deviceBrand"

.field public static final NIMBLE_PARAMETER_DEVICE_CODENAME:Ljava/lang/String; = "deviceCodename"

.field public static final NIMBLE_PARAMETER_DEVICE_LANGUAGE:Ljava/lang/String; = "deviceLanguage"

.field public static final NIMBLE_PARAMETER_DEVICE_LOCALE:Ljava/lang/String; = "deviceLocale"

.field public static final NIMBLE_PARAMETER_DEVICE_MODEL:Ljava/lang/String; = "deviceModel"

.field public static final NIMBLE_PARAMETER_FB_ATTR_ID:Ljava/lang/String; = "fbAttrId"

.field public static final NIMBLE_PARAMETER_GAID:Ljava/lang/String; = "gaid"

.field public static final NIMBLE_PARAMETER_IMEI:Ljava/lang/String; = "imei"

.field public static final NIMBLE_PARAMETER_LIMIT_AD_TRACKING:Ljava/lang/String; = "limitAdTracking"

.field public static final NIMBLE_PARAMETER_PLATFORM:Ljava/lang/String; = "platform"

.field public static final NIMBLE_PARAMETER_SYSTEM_NAME:Ljava/lang/String; = "systemName"

.field public static final NIMBLE_PARAMETER_SYSTEM_VERSION:Ljava/lang/String; = "systemVersion"

.field public static final NOTIFICATION_AGE_COMPLIANCE_REFRESHED:Ljava/lang/String; = "nimble.notification.age_compliance_refreshed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent()Lcom/ea/nimble/IApplicationEnvironment;
    .locals 1

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getApplicationEnvironment()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static isMainApplicationActive()Z
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationActive()Z

    move-result v0

    return v0
.end method

.method public static isMainApplicationRunning()Z
    .locals 1

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->isMainApplicationRunning()Z

    move-result v0

    return v0
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method
