.class Lcom/ea/game/fmp/FMPActivity$3;
.super Ljava/lang/Object;
.source "FMPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/game/fmp/FMPActivity;->PopImgView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/game/fmp/FMPActivity;


# direct methods
.method constructor <init>(Lcom/ea/game/fmp/FMPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity$3;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity$3;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-static {v0}, Lcom/ea/game/fmp/FMPActivity;->access$000(Lcom/ea/game/fmp/FMPActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
