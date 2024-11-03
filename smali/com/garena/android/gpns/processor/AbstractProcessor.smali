.class public abstract Lcom/garena/android/gpns/processor/AbstractProcessor;
.super Ljava/lang/Object;
.source "AbstractProcessor.java"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/gpns/processor/AbstractProcessor;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getCommand()I
.end method

.method public abstract process([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
