.class public final synthetic Lcom/garena/android/share/util/ShareUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/share/util/ShareUtils$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/garena/android/share/util/ShareUtils$$ExternalSyntheticLambda0;->f$1:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/garena/android/share/util/ShareUtils$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/garena/android/share/util/ShareUtils$$ExternalSyntheticLambda0;->f$1:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/garena/android/share/util/ShareUtils;->lambda$writeStream$0(Ljava/io/InputStream;Ljava/io/OutputStream;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
