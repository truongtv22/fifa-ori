.class public final Lcom/garena/android/push/PushClient$PushRequest;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/push/PushClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushRequest"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public appId:Ljava/lang/Integer;

.field public appKey:Ljava/lang/String;

.field public deviceType:Ljava/lang/Integer;

.field public registrationId:Ljava/lang/String;

.field public tags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/garena/android/push/PushClient$PushRequest;->registrationId:Ljava/lang/String;

    new-instance v1, Lcom/garena/android/push/PushClient$PushRequest;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/garena/android/push/PushClient$PushRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequest;->registrationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/garena/android/push/PushClient$PushRequest;->appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/android/push/PushClient$PushRequest;->appId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/garena/android/push/PushClient$PushRequest;->deviceType:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/push/PushClient$PushRequest;->registrationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/garena/android/push/PushClient$PushRequest;->appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/android/push/PushClient$PushRequest;->appId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/garena/android/push/PushClient$PushRequest;->deviceType:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/garena/android/push/PushClient$PushRequest;->tags:Ljava/lang/String;

    iput-object p6, p0, Lcom/garena/android/push/PushClient$PushRequest;->account:Ljava/lang/String;

    return-void
.end method
