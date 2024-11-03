.class public Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/game/fmp/FMPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/game/fmp/FMPActivity;


# direct methods
.method public constructor <init>(Lcom/ea/game/fmp/FMPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p2, p0, Lcom/ea/game/fmp/FMPActivity$ConnectivityReceiver;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {p2, p1}, Lcom/ea/game/fmp/FMPActivity;->updateInternetConnectionType(Landroid/content/Context;)V

    return-void
.end method
