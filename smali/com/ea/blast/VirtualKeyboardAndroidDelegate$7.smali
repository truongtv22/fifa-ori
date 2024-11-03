.class Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;
.super Ljava/lang/Object;
.source "VirtualKeyboardAndroidDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->SetTextInputFilters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

.field final synthetic val$maxChar:I

.field final synthetic val$textRegex:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    iput p2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->val$maxChar:I

    iput-object p3, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->val$textRegex:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->val$maxChar:I

    if-lez v1, :cond_0

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->val$maxChar:I

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->val$textRegex:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7$1;

    invoke-direct {v1, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7$1;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/InputFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->this$0:Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    return-void
.end method
