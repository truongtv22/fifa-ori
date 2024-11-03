.class Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;
.super Ljava/lang/Object;
.source "VirtualKeyboardAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->SynchronizeTextFieldText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

.field final synthetic val$strTxt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iput-object p2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->val$strTxt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->val$strTxt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "syncstate oldText"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newTest"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->val$strTxt:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "syncstate old"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " new"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$400(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$6;->val$strTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->SetTextToInputText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
