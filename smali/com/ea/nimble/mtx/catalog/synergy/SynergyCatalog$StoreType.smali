.class public final enum Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;
.super Ljava/lang/Enum;
.source "SynergyCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

.field public static final enum AMAZON:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

.field public static final enum GOOGLE:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    const-string v1, "GOOGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->GOOGLE:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    new-instance v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    const-string v3, "AMAZON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->AMAZON:Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->$VALUES:[Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;
    .locals 1

    const-class v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;
    .locals 1

    sget-object v0, Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->$VALUES:[Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    invoke-virtual {v0}, [Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/mtx/catalog/synergy/SynergyCatalog$StoreType;

    return-object v0
.end method
