.class public abstract Lcom/beetalk/sdk/AuthRequestHandler;
.super Ljava/lang/Object;
.source "AuthRequestHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected client:Lcom/beetalk/sdk/AuthClient;

.field protected defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

.field protected isNative:Z


# direct methods
.method protected constructor <init>(Lcom/beetalk/sdk/AuthClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/AuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beetalk/sdk/AuthRequestHandler;->isNative:Z

    iput-object p1, p0, Lcom/beetalk/sdk/AuthRequestHandler;->client:Lcom/beetalk/sdk/AuthClient;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 0

    return-void
.end method

.method protected getTokenProviderFromPlatform(I)Lcom/beetalk/sdk/data/TokenProvider;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/beetalk/sdk/AuthRequestHandler;->defaultProvider:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_0
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->PLAY_GAMES:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_1
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->EMAIL:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_2
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->LINE:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_3
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->VK:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_4
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->GUEST:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_5
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->FACEBOOK:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_6
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->TWITTER:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_7
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->GOOGLE:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_8
    iget-boolean p1, p0, Lcom/beetalk/sdk/AuthRequestHandler;->isNative:Z

    if-eqz p1, :cond_9

    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_NATIVE_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1

    :cond_9
    sget-object p1, Lcom/beetalk/sdk/data/TokenProvider;->GARENA_WEB_ANDROID:Lcom/beetalk/sdk/data/TokenProvider;

    return-object p1
.end method

.method onActivityResult(IILandroid/content/Intent;Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method abstract startAuth(Lcom/beetalk/sdk/AuthClient$AuthClientRequest;)Z
.end method
