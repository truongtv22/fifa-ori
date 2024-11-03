.class public abstract Lcom/beetalk/sdk/plugin/impl/friends/BaseLoadGroupPlugin;
.super Lcom/beetalk/sdk/plugin/GGPlugin;
.source "BaseLoadGroupPlugin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/beetalk/sdk/plugin/GGPlugin<",
        "TS;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/GGPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public embedInActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getResponseCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/beetalk/sdk/helper/Helper;->getErrorCode(Lorg/json/JSONObject;)Lcom/garena/pay/android/GGErrorCode;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    :cond_1
    return-object p1
.end method
