.class Lcom/ea/nimble/identity/NimbleIdentityImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "NimbleIdentityImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityImpl$2;->this$0:Lcom/ea/nimble/identity/NimbleIdentityImpl;

    invoke-static {p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->access$100(Lcom/ea/nimble/identity/NimbleIdentityImpl;)V

    return-void
.end method
