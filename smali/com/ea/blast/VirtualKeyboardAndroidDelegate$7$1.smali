.class Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7$1;
.super Ljava/lang/Object;
.source "VirtualKeyboardAndroidDelegate.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;


# direct methods
.method constructor <init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7$1;->this$1:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p2, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7$1;->this$1:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;

    iget-object p2, p2, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$7;->val$textRegex:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
