.class public interface abstract Lcom/ea/nimble/IApplicationEnvironment;
.super Ljava/lang/Object;
.source "IApplicationEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;,
        Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;
    }
.end annotation


# static fields
.field public static final UNAVAILABLE_ADVERTISING_ID:Ljava/lang/String; = ""


# virtual methods
.method public abstract getAdvertisingId()Ljava/lang/String;
.end method

.method public abstract getAgeCompliance()I
.end method

.method public abstract getAndroidId()Ljava/lang/String;
.end method

.method public abstract getApplicationBundleId()Ljava/lang/String;
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationLanguageCode()Ljava/lang/String;
.end method

.method public abstract getApplicationName()Ljava/lang/String;
.end method

.method public abstract getApplicationVersion()Ljava/lang/String;
.end method

.method public abstract getCachePath()Ljava/lang/String;
.end method

.method public abstract getCarrier()Ljava/lang/String;
.end method

.method public abstract getCurrencyCode()Ljava/lang/String;
.end method

.method public abstract getDeviceBrand()Ljava/lang/String;
.end method

.method public abstract getDeviceCodename()Ljava/lang/String;
.end method

.method public abstract getDeviceFingerprint()Ljava/lang/String;
.end method

.method public abstract getDeviceManufacturer()Ljava/lang/String;
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
.end method

.method public abstract getDeviceString()Ljava/lang/String;
.end method

.method public abstract getDocumentPath()Ljava/lang/String;
.end method

.method public abstract getGameSpecifiedPlayerId()Ljava/lang/String;
.end method

.method public abstract getGoogleAdvertisingId()Ljava/lang/String;
.end method

.method public abstract getGoogleEmail()Ljava/lang/String;
.end method

.method public abstract getIadAttribution()Z
.end method

.method public abstract getMACAddress()Ljava/lang/String;
.end method

.method public abstract getOsVersion()Ljava/lang/String;
.end method

.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPlayerIdMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShortApplicationLanguageCode()Ljava/lang/String;
.end method

.method public abstract getTempPath()Ljava/lang/String;
.end method

.method public abstract isAppCracked()Z
.end method

.method public abstract isDeviceRooted()Z
.end method

.method public abstract isLimitAdTrackingEnabled()Z
.end method

.method public abstract refreshAgeCompliance()V
.end method

.method public abstract requestSafetyNetAttestation([BLcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V
.end method

.method public abstract retrieveAdvertisingId(Lcom/ea/nimble/IApplicationEnvironment$AdvertisingIdCalback;)V
.end method

.method public abstract setApplicationLanguageCode(Ljava/lang/String;)V
.end method

.method public abstract setGameSpecifiedPlayerId(Ljava/lang/String;)V
.end method

.method public abstract setPlayerId(Ljava/lang/String;Ljava/lang/String;)V
.end method
