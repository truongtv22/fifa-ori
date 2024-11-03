.class Lcom/ea/nimble/identity/NimbleIdentityConfig$1;
.super Landroid/content/BroadcastReceiver;
.source "NimbleIdentityConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityConfig;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig$1;->this$0:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityConfig$1;->this$0:Lcom/ea/nimble/identity/NimbleIdentityConfig;

    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityConfig;->access$000(Lcom/ea/nimble/identity/NimbleIdentityConfig;)V

    return-void
.end method
