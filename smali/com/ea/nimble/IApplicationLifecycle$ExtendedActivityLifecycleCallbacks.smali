.class public interface abstract Lcom/ea/nimble/IApplicationLifecycle$ExtendedActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "IApplicationLifecycle.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/IApplicationLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExtendedActivityLifecycleCallbacks"
.end annotation


# virtual methods
.method public abstract onRawActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end method

.method public abstract onRawActivityRestart(Landroid/app/Activity;)V
.end method

.method public abstract onRawActivityStarted(Landroid/app/Activity;)V
.end method
