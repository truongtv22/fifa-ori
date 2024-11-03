.class public final synthetic Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/WebViewExtsKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lcom/beetalk/sdk/networking/WebViewExtsKt;->$r8$lambda$dHL93Dk9g46aMf9vm4o_yz0dt9M(Ljava/lang/String;)Lkotlin/Result;

    move-result-object v0

    return-object v0
.end method
