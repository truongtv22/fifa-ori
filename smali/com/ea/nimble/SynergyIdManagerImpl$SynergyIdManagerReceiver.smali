.class Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SynergyIdManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyIdManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynergyIdManagerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/SynergyIdManagerImpl;


# direct methods
.method private constructor <init>(Lcom/ea/nimble/SynergyIdManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;->this$0:Lcom/ea/nimble/SynergyIdManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/SynergyIdManagerImpl;Lcom/ea/nimble/SynergyIdManagerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;-><init>(Lcom/ea/nimble/SynergyIdManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/SynergyIdManagerImpl$SynergyIdManagerReceiver;->this$0:Lcom/ea/nimble/SynergyIdManagerImpl;

    invoke-static {p1}, Lcom/ea/nimble/SynergyIdManagerImpl;->access$000(Lcom/ea/nimble/SynergyIdManagerImpl;)V

    :cond_0
    return-void
.end method
