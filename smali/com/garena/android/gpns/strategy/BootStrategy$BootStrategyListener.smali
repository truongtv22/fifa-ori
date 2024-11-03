.class public interface abstract Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;
.super Ljava/lang/Object;
.source "BootStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/gpns/strategy/BootStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BootStrategyListener"
.end annotation


# virtual methods
.method public abstract onStrategyFailure(Landroid/content/ComponentName;)V
.end method

.method public abstract onStrategySuccess()V
.end method
