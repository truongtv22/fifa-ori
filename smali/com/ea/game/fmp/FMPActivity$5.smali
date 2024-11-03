.class Lcom/ea/game/fmp/FMPActivity$5;
.super Ljava/lang/Object;
.source "FMPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/game/fmp/FMPActivity;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity$5;->val$text:Ljava/lang/String;

    iput p2, p0, Lcom/ea/game/fmp/FMPActivity$5;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/ea/game/fmp/FMPActivity;->myActivity:Lcom/ea/game/fmp/FMPActivity;

    iget-object v1, p0, Lcom/ea/game/fmp/FMPActivity$5;->val$text:Ljava/lang/String;

    iget v2, p0, Lcom/ea/game/fmp/FMPActivity$5;->val$duration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
