.class Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;
.super Ljava/lang/Object;
.source "VirtualKeyboardAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->SetTextFieldSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

.field final synthetic val$end:I

.field final synthetic val$nEnd:I

.field final synthetic val$nStart:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iput p2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$start:I

    iput p3, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$end:I

    iput p4, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$nStart:I

    iput p5, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$nEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$start:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$end:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setSelection(II)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$nStart:I

    if-ltz v1, :cond_1

    if-gt v1, v0, :cond_1

    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$nEnd:I

    if-ltz v1, :cond_1

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$nStart:I

    iget v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$5;->val$nEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setSelection(II)V

    :cond_1
    :goto_0
    return-void
.end method
