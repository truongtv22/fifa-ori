.class public abstract Lcom/ea/games/measuresdk/MeasureSdkBase;
.super Ljava/lang/Object;
.source "MeasureSdkBase.java"

# interfaces
.implements Lcom/ea/games/measuresdk/MeasureSdkInterface;


# instance fields
.field protected mInitCB:Lcom/ea/games/measuresdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/measuresdk/SdkCallback<",
            "Lcom/ea/games/measuresdk/VoidParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerInitCallback(Lcom/ea/games/measuresdk/SdkCallback;)Lcom/ea/games/measuresdk/MeasureSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/measuresdk/SdkCallback<",
            "Lcom/ea/games/measuresdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/measuresdk/MeasureSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/measuresdk/MeasureSdkBase;->mInitCB:Lcom/ea/games/measuresdk/SdkCallback;

    return-object p0
.end method
