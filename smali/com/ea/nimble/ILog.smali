.class public interface abstract Lcom/ea/nimble/ILog;
.super Ljava/lang/Object;
.source "ILog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ILog$LogCallback;
    }
.end annotation


# virtual methods
.method public abstract getLogFilePath()Ljava/lang/String;
.end method

.method public abstract getThresholdLevel()I
.end method

.method public abstract setLogCallback(Lcom/ea/nimble/ILog$LogCallback;)V
.end method

.method public abstract setThresholdLevel(I)V
.end method

.method public varargs abstract writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method public varargs abstract writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.end method
