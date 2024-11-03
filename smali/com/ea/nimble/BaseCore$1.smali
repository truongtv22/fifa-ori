.class Lcom/ea/nimble/BaseCore$1;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/BaseCore;->restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/BaseCore;

.field final synthetic val$configuration:Lcom/ea/nimble/NimbleConfiguration;


# direct methods
.method constructor <init>(Lcom/ea/nimble/BaseCore;Lcom/ea/nimble/NimbleConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iput-object p2, p0, Lcom/ea/nimble/BaseCore$1;->val$configuration:Lcom/ea/nimble/NimbleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iget-object v1, v1, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Cannot restart Nimble when app is quiting"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iget-object v0, v0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->cleanup()V

    iget-object v0, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iget-object v0, v0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->teardown()V

    iget-object v0, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iget-object v1, p0, Lcom/ea/nimble/BaseCore$1;->val$configuration:Lcom/ea/nimble/NimbleConfiguration;

    iput-object v1, v0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    iget-object v0, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iget-object v0, v0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->setup()V

    const-string v0, "nimble.notification.componentIndependentSetupFinished"

    invoke-static {v0}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/BaseCore$1;->this$0:Lcom/ea/nimble/BaseCore;

    iget-object v0, v0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->restore()V

    goto :goto_0

    :pswitch_2
    const-string v0, "Should not happen, getInstance should ensure active instance"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
