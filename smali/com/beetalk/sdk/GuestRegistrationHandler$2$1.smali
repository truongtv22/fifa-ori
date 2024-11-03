.class Lcom/beetalk/sdk/GuestRegistrationHandler$2$1;
.super Ljava/lang/Object;
.source "GuestRegistrationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GuestRegistrationHandler$2;->onCompleted(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/beetalk/sdk/GuestRegistrationHandler$2;


# direct methods
.method constructor <init>(Lcom/beetalk/sdk/GuestRegistrationHandler$2;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GuestRegistrationHandler$2$1;->this$1:Lcom/beetalk/sdk/GuestRegistrationHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/cache/PersistentCache;->getInstance()Lcom/beetalk/sdk/cache/PersistentCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/PersistentCache;->deleteGuestInfoSafely()Ljava/lang/String;

    invoke-static {}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->getInstance()Lcom/beetalk/sdk/cache/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beetalk/sdk/cache/AccountManagerHelper;->deleteGuestInfoSafely()Ljava/lang/String;

    return-void
.end method
