.class Lcom/garena/android/gpns/BaseService$IncomingHandler;
.super Landroid/os/Handler;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/BaseService;


# direct methods
.method private constructor <init>(Lcom/garena/android/gpns/BaseService;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/BaseService$IncomingHandler;->this$0:Lcom/garena/android/gpns/BaseService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/garena/android/gpns/BaseService;Lcom/garena/android/gpns/BaseService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/garena/android/gpns/BaseService$IncomingHandler;-><init>(Lcom/garena/android/gpns/BaseService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/garena/android/gpns/BaseService$IncomingHandler;->this$0:Lcom/garena/android/gpns/BaseService;

    invoke-virtual {v0, p1}, Lcom/garena/android/gpns/BaseService;->onReceiveMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "MSG_SELFDESTRUCT"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/BaseService$IncomingHandler;->this$0:Lcom/garena/android/gpns/BaseService;

    invoke-virtual {v0}, Lcom/garena/android/gpns/BaseService;->selfDestruct()V

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/BaseService$IncomingHandler;->this$0:Lcom/garena/android/gpns/BaseService;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0}, Lcom/garena/android/gpns/BaseService;->send(Landroid/os/Messenger;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/garena/android/gpns/BaseService$IncomingHandler;->this$0:Lcom/garena/android/gpns/BaseService;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, p1, v0}, Lcom/garena/android/gpns/BaseService;->send(Landroid/os/Messenger;Landroid/os/Message;)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2707
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
