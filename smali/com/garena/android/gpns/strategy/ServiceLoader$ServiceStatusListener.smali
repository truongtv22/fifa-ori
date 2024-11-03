.class public interface abstract Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;
.super Ljava/lang/Object;
.source "ServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/strategy/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceStatusListener"
.end annotation


# virtual methods
.method public abstract onOtherServiceRunning(Landroid/content/ComponentName;)V
.end method

.method public abstract onServiceStarted()V
.end method
