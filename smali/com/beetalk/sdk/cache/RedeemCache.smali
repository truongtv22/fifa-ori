.class public Lcom/beetalk/sdk/cache/RedeemCache;
.super Ljava/lang/Object;
.source "RedeemCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;
    }
.end annotation


# static fields
.field private static final KEY_LAST_REDEEM_TIME:Ljava/lang/String; = "KEY_LAST_REDEEM_TIME"

.field private static final KEY_MSDK_TOKEN_SESSION:Ljava/lang/String; = "KEY_MSDK_TOKEN_SESSION"

.field private static final MIN_REDEEM_INTERVAL:J = 0x1b77400L

.field private static final SERVER_RESET_HOUR:I = 0x13


# instance fields
.field private final storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;-><init>(Lcom/beetalk/sdk/cache/RedeemCache$1;)V

    iput-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    return-void
.end method

.method private getHourFromSystemTime()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const v0, 0x15180

    rem-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xe10

    return v1
.end method

.method private getPreviousDaysServerResetTime()J
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v4, 0x15180

    rem-long v6, v0, v4

    sub-long/2addr v0, v6

    sub-long/2addr v0, v4

    mul-long v0, v0, v2

    const-wide/32 v2, 0x413b380

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getTodaysServerResetTime()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v4, 0x15180

    rem-long v4, v0, v4

    sub-long/2addr v0, v4

    mul-long v0, v0, v2

    const-wide/32 v2, 0x413b380

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isPassThroughResetSinceLastRedeem(J)Z
    .locals 3

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/RedeemCache;->getHourFromSystemTime()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/RedeemCache;->getTodaysServerResetTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/beetalk/sdk/cache/RedeemCache;->getPreviousDaysServerResetTime()J

    move-result-wide v0

    :goto_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method


# virtual methods
.method public clearMsdkTokenSession()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const-string v1, "KEY_MSDK_TOKEN_SESSION"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearRedeemCache()V
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const-string v1, "KEY_LAST_REDEEM_TIME"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public getMsdkTokenSession()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const-string v1, "KEY_MSDK_TOKEN_SESSION"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOkForRedeem()Z
    .locals 5

    iget-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const-string v1, "KEY_LAST_REDEEM_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/beetalk/sdk/cache/RedeemCache;->isPassThroughResetSinceLastRedeem(J)Z

    move-result v4

    if-nez v4, :cond_1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1b77400

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setMsdkTokenSession(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const-string v1, "KEY_MSDK_TOKEN_SESSION"

    invoke-virtual {v0, v1, p1}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRedeemTime()V
    .locals 4

    iget-object v0, p0, Lcom/beetalk/sdk/cache/RedeemCache;->storage:Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;

    const-string v1, "KEY_LAST_REDEEM_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;->setLong(Ljava/lang/String;J)V

    return-void
.end method
