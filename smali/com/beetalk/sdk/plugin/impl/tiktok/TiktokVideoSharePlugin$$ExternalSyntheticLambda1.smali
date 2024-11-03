.class public final synthetic Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

.field public final synthetic f$1:Lcom/garena/android/share/model/ShareContent;


# direct methods
.method public synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;Lcom/garena/android/share/model/ShareContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    iput-object p2, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;->f$1:Lcom/garena/android/share/model/ShareContent;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;->f$0:Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;

    iget-object v1, p0, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin$$ExternalSyntheticLambda1;->f$1:Lcom/garena/android/share/model/ShareContent;

    invoke-virtual {v0, v1}, Lcom/beetalk/sdk/plugin/impl/tiktok/TiktokVideoSharePlugin;->lambda$prepareFilePaths$1$com-beetalk-sdk-plugin-impl-tiktok-TiktokVideoSharePlugin(Lcom/garena/android/share/model/ShareContent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
