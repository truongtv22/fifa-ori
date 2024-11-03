.class Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$1;
.super Landroid/content/BroadcastReceiver;
.source "CompetitiveBootStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;


# direct methods
.method constructor <init>(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$1;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "receive feedback!"

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$1;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->onResponse(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
