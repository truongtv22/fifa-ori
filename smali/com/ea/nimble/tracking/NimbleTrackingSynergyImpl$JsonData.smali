.class public Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;
.super Ljava/lang/Object;
.source "NimbleTrackingSynergyImpl.java"

# interfaces
.implements Lcom/ea/nimble/ISynergyRequest$IJsonData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "JsonData"
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;


# direct methods
.method public constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;->this$0:Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingSynergyImpl$JsonData;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
