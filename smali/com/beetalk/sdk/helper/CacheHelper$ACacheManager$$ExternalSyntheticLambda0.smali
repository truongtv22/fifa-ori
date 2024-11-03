.class public final synthetic Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager$$ExternalSyntheticLambda0;->f$0:Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager;

    invoke-virtual {v0}, Lcom/beetalk/sdk/helper/CacheHelper$ACacheManager;->lambda$calculateCacheSizeAndCacheCount$0$com-beetalk-sdk-helper-CacheHelper$ACacheManager()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
