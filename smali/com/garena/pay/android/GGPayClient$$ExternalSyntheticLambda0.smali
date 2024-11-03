.class public final synthetic Lcom/garena/pay/android/GGPayClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lbolts/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/garena/pay/android/GGPayClient;


# direct methods
.method public synthetic constructor <init>(Lcom/garena/pay/android/GGPayClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/pay/android/GGPayClient$$ExternalSyntheticLambda0;->f$0:Lcom/garena/pay/android/GGPayClient;

    return-void
.end method


# virtual methods
.method public final then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGPayClient$$ExternalSyntheticLambda0;->f$0:Lcom/garena/pay/android/GGPayClient;

    invoke-virtual {v0, p1}, Lcom/garena/pay/android/GGPayClient;->lambda$initHandlers$0$com-garena-pay-android-GGPayClient(Lbolts/Task;)Lcom/beetalk/sdk/networking/model/ChannelsResp;

    move-result-object p1

    return-object p1
.end method
