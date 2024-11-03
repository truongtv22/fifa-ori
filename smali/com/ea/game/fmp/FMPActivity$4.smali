.class Lcom/ea/game/fmp/FMPActivity$4;
.super Ljava/lang/Object;
.source "FMPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/game/fmp/FMPActivity;->Screenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/game/fmp/FMPActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/ea/game/fmp/FMPActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity$4;->this$0:Lcom/ea/game/fmp/FMPActivity;

    iput p2, p0, Lcom/ea/game/fmp/FMPActivity$4;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity$4;->this$0:Lcom/ea/game/fmp/FMPActivity;

    iget v1, p0, Lcom/ea/game/fmp/FMPActivity$4;->val$type:I

    invoke-virtual {v0, v1}, Lcom/ea/game/fmp/FMPActivity;->ScreenshotImpl(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
