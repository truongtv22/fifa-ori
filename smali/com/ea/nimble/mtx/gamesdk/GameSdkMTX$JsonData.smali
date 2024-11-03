.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyRequest$IJsonData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsonData"
.end annotation


# instance fields
.field private data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;->data:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$JsonData;->data:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
