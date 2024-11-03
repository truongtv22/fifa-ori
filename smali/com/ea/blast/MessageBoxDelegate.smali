.class public Lcom/ea/blast/MessageBoxDelegate;
.super Ljava/lang/Object;
.source "MessageBoxDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final kMessageBoxTypeIconError:I

.field private static final kMessageBoxTypeIconInformation:I

.field private static final kMessageBoxTypeIconQuestion:I

.field private static final kMessageBoxTypeIconWarning:I


# instance fields
.field private mButton1:Ljava/lang/String;

.field private mButton2:Ljava/lang/String;

.field private mButton3:Ljava/lang/String;

.field private mButtonCount:I

.field private mClickedIndex:I

.field private mCurrentThread:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconWarning()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconWarning:I

    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconInfo()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconInformation:I

    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconQuestion()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconQuestion:I

    invoke-static {}, Lcom/ea/blast/MessageBoxDelegate;->NativeGetMessageBoxTypeIconError()I

    move-result v0

    sput v0, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconError:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native NativeGetMessageBoxTypeIconError()I
.end method

.method public static native NativeGetMessageBoxTypeIconInfo()I
.end method

.method public static native NativeGetMessageBoxTypeIconQuestion()I
.end method

.method public static native NativeGetMessageBoxTypeIconWarning()I
.end method

.method static synthetic access$000(Lcom/ea/blast/MessageBoxDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/blast/MessageBoxDelegate;->createMessage()V

    return-void
.end method

.method private createMessage()V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mType:I

    int-to-long v1, v1

    const-wide v3, 0xfffffff0L

    and-long/2addr v1, v3

    sget v3, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconWarning:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    sget v3, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconInformation:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    sget v3, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconQuestion:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    const v3, 0x1080040

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    sget v3, Lcom/ea/blast/MessageBoxDelegate;->kMessageBoxTypeIconError:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    const v1, 0x108001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_3
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_5
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton3:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mCurrentThread:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, -0x2

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    :cond_7
    return-void
.end method


# virtual methods
.method public JavaMessageBox(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mCurrentThread:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/ea/blast/MessageBoxDelegate;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/ea/blast/MessageBoxDelegate;->mType:I

    iput-object p5, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton1:Ljava/lang/String;

    iput-object p6, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton2:Ljava/lang/String;

    iput-object p7, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton3:Ljava/lang/String;

    iput p4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    new-instance p2, Lcom/ea/blast/MessageBoxDelegate$1;

    invoke-direct {p2, p0}, Lcom/ea/blast/MessageBoxDelegate$1;-><init>(Lcom/ea/blast/MessageBoxDelegate;)V

    iput-object p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mRunnable:Ljava/lang/Runnable;

    sget-object p2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object p3, p0, Lcom/ea/blast/MessageBoxDelegate;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    iget p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    if-ne p2, p1, :cond_1

    :try_start_0
    sget-object p2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {p2}, Lcom/ea/blast/MainActivity;->IsActivitySuspended()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 p2, 0x19

    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p2, v0, :cond_2

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    iput p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    iput p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
