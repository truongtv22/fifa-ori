.class Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1SkuComparator;
.super Ljava/lang/Object;
.source "GameSdkMTX.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;->getAvailableCatalogItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkuComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ea/nimble/mtx/NimbleCatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;


# direct methods
.method constructor <init>(Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1SkuComparator;->this$0:Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ea/nimble/mtx/NimbleCatalogItem;Lcom/ea/nimble/mtx/NimbleCatalogItem;)I
    .locals 0

    invoke-virtual {p1}, Lcom/ea/nimble/mtx/NimbleCatalogItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ea/nimble/mtx/NimbleCatalogItem;->getSku()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/ea/nimble/mtx/NimbleCatalogItem;

    check-cast p2, Lcom/ea/nimble/mtx/NimbleCatalogItem;

    invoke-virtual {p0, p1, p2}, Lcom/ea/nimble/mtx/gamesdk/GameSdkMTX$1SkuComparator;->compare(Lcom/ea/nimble/mtx/NimbleCatalogItem;Lcom/ea/nimble/mtx/NimbleCatalogItem;)I

    move-result p1

    return p1
.end method
