.class Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;
.super Lcom/beetalk/sdk/cache/BBBaseSharedPreference;
.source "RedeemCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/cache/RedeemCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RedeemStorage"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/cache/RedeemCache$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/cache/RedeemCache$RedeemStorage;-><init>()V

    return-void
.end method


# virtual methods
.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/GGPlatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
