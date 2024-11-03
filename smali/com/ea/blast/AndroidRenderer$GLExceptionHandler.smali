.class public Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;
.super Ljava/lang/Object;
.source "AndroidRenderer.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/AndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLExceptionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/blast/AndroidRenderer;


# direct methods
.method public constructor <init>(Lcom/ea/blast/AndroidRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;->this$0:Lcom/ea/blast/AndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;->this$0:Lcom/ea/blast/AndroidRenderer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ea/blast/AndroidRenderer;->access$002(Lcom/ea/blast/AndroidRenderer;Z)Z

    invoke-static {p2}, Ljava/lang/System;->exit(I)V

    return-void
.end method
