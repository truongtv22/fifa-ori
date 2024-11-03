.class public abstract Lcom/garena/android/gpns/strategy/BootStrategy;
.super Ljava/lang/Object;
.source "BootStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;
    }
.end annotation


# instance fields
.field mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/garena/android/gpns/strategy/BootStrategy;->mListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    return-void
.end method


# virtual methods
.method protected abstract fireStrategy(Landroid/content/Context;)V
.end method
