.class public abstract Lcom/ea/games/marketingsdk/MarketingSdkBase;
.super Ljava/lang/Object;
.source "MarketingSdkBase.java"

# interfaces
.implements Lcom/ea/games/marketingsdk/MarketingSdkInterface;


# instance fields
.field protected mInitCB:Lcom/ea/games/marketingsdk/SdkCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ea/games/marketingsdk/SdkCallback<",
            "Lcom/ea/games/marketingsdk/VoidParam;",
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
.method public registerInitCallback(Lcom/ea/games/marketingsdk/SdkCallback;)Lcom/ea/games/marketingsdk/MarketingSdkInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ea/games/marketingsdk/SdkCallback<",
            "Lcom/ea/games/marketingsdk/VoidParam;",
            ">;)",
            "Lcom/ea/games/marketingsdk/MarketingSdkInterface;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/games/marketingsdk/MarketingSdkBase;->mInitCB:Lcom/ea/games/marketingsdk/SdkCallback;

    return-object p0
.end method
