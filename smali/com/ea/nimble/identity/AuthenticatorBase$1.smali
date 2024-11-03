.class Lcom/ea/nimble/identity/AuthenticatorBase$1;
.super Ljava/lang/Object;
.source "AuthenticatorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/AuthenticatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/identity/AuthenticatorBase;


# direct methods
.method constructor <init>(Lcom/ea/nimble/identity/AuthenticatorBase;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/AuthenticatorBase$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/AuthenticatorBase$1;->this$0:Lcom/ea/nimble/identity/AuthenticatorBase;

    invoke-static {v0}, Lcom/ea/nimble/identity/AuthenticatorBase;->access$000(Lcom/ea/nimble/identity/AuthenticatorBase;)V

    return-void
.end method
