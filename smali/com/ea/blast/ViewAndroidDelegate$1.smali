.class Lcom/ea/blast/ViewAndroidDelegate$1;
.super Ljava/lang/Object;
.source "ViewAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/ViewAndroidDelegate;->SetViewFrame(ILjava/lang/Object;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/ViewAndroidDelegate;

.field final synthetic val$height:I

.field final synthetic val$matchParent:Z

.field final synthetic val$view:Ljava/lang/Object;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/Object;ZIIII)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->this$0:Lcom/ea/blast/ViewAndroidDelegate;

    iput-object p2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$view:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$matchParent:Z

    iput p4, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$width:I

    iput p5, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$height:I

    iput p6, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$x:I

    iput p7, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->this$0:Lcom/ea/blast/ViewAndroidDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set View Frame - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/blast/ViewAndroidDelegate;->access$000(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$view:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$matchParent:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$width:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$height:I

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v2, v1, :cond_1

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$width:I

    iget v3, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$x:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->val$y:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v2, v2, Lcom/ea/blast/MainActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ea/blast/ViewAndroidDelegate$1;->this$0:Lcom/ea/blast/ViewAndroidDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...Set View Frame - UI Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ea/blast/ViewAndroidDelegate;->access$000(Lcom/ea/blast/ViewAndroidDelegate;Ljava/lang/String;)V

    return-void
.end method
