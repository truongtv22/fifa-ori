.class public final synthetic Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/beetalk/sdk/networking/interceptor/SignatureProvider;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSignature(Lokhttp3/Request;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/OkHttpClientManager$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/beetalk/sdk/networking/OkHttpClientManager;->$r8$lambda$yMnhDJxuDH0fg7z1R0vNWrbS6hA(Ljava/lang/String;Lokhttp3/Request;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
