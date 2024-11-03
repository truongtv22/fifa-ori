.class public final Lcom/garena/android/push/PushClient$PushRequestBuilder;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushRequestBuilder"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public appId:Ljava/lang/Integer;

.field public appKey:Ljava/lang/String;

.field public deviceType:Ljava/lang/Integer;

.field public registrationId:Ljava/lang/String;

.field public tags:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->registrationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/garena/android/push/PushClient$PushRequest;
    .locals 8

    new-instance v7, Lcom/garena/android/push/PushClient$PushRequest;

    iget-object v1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->registrationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->appId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->deviceType:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->tags:Ljava/lang/String;

    iget-object v6, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->account:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/garena/android/push/PushClient$PushRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public setAccount(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->account:Ljava/lang/String;

    return-object p0
.end method

.method public setAppId(Ljava/lang/Integer;)Lcom/garena/android/push/PushClient$PushRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->appId:Ljava/lang/Integer;

    return-object p0
.end method

.method public setAppKey(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceType(Ljava/lang/Integer;)Lcom/garena/android/push/PushClient$PushRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->deviceType:Ljava/lang/Integer;

    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->registrationId:Ljava/lang/String;

    return-object p0
.end method

.method public setTags(Ljava/lang/String;)Lcom/garena/android/push/PushClient$PushRequestBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequestBuilder;->tags:Ljava/lang/String;

    return-object p0
.end method
