.class public abstract Lcom/vk/sdk/VKAccessTokenTracker;
.super Ljava/lang/Object;
.source "VKAccessTokenTracker.java"


# instance fields
.field private isTracking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/sdk/VKAccessTokenTracker;->isTracking:Z

    return-void
.end method


# virtual methods
.method public isTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vk/sdk/VKAccessTokenTracker;->isTracking:Z

    return v0
.end method

.method public abstract onVKAccessTokenChanged(Lcom/vk/sdk/VKAccessToken;Lcom/vk/sdk/VKAccessToken;)V
.end method

.method public startTracking()V
    .locals 1

    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->addVKTokenTracker(Lcom/vk/sdk/VKAccessTokenTracker;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/sdk/VKAccessTokenTracker;->isTracking:Z

    return-void
.end method

.method public stopTracking()V
    .locals 1

    invoke-static {p0}, Lcom/vk/sdk/VKSdk;->removeVKTokenTracker(Lcom/vk/sdk/VKAccessTokenTracker;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/sdk/VKAccessTokenTracker;->isTracking:Z

    return-void
.end method
