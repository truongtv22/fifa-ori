.class Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;
.super Ljava/lang/Object;
.source "CompetitiveBootStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-static {v0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->access$000(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute final check:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-static {v1}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->access$000(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->access$002(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;I)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "status_is_running"

    invoke-virtual {v0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-static {v1}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->access$100(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)I

    move-result v1

    const-string v2, "query_version"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-static {v2}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->access$200(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.garena.android.gpns.GNotificationService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "component"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy$2;->this$0:Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    invoke-static {v1}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->access$300(Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;->onResponse(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
