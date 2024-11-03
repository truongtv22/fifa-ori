.class public final enum Lcom/ea/nimble/INimbleGameSdk$State;
.super Ljava/lang/Enum;
.source "INimbleGameSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/INimbleGameSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/INimbleGameSdk$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/INimbleGameSdk$State;

.field public static final enum DESTROYED:Lcom/ea/nimble/INimbleGameSdk$State;

.field public static final enum DESTROYING:Lcom/ea/nimble/INimbleGameSdk$State;

.field public static final enum INITED:Lcom/ea/nimble/INimbleGameSdk$State;

.field public static final enum INITING:Lcom/ea/nimble/INimbleGameSdk$State;

.field public static final enum NONE:Lcom/ea/nimble/INimbleGameSdk$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ea/nimble/INimbleGameSdk$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/INimbleGameSdk$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/INimbleGameSdk$State;->NONE:Lcom/ea/nimble/INimbleGameSdk$State;

    new-instance v1, Lcom/ea/nimble/INimbleGameSdk$State;

    const-string v3, "INITING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/INimbleGameSdk$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/INimbleGameSdk$State;->INITING:Lcom/ea/nimble/INimbleGameSdk$State;

    new-instance v3, Lcom/ea/nimble/INimbleGameSdk$State;

    const-string v5, "INITED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/INimbleGameSdk$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/INimbleGameSdk$State;->INITED:Lcom/ea/nimble/INimbleGameSdk$State;

    new-instance v5, Lcom/ea/nimble/INimbleGameSdk$State;

    const-string v7, "DESTROYING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/INimbleGameSdk$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/INimbleGameSdk$State;->DESTROYING:Lcom/ea/nimble/INimbleGameSdk$State;

    new-instance v7, Lcom/ea/nimble/INimbleGameSdk$State;

    const-string v9, "DESTROYED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/INimbleGameSdk$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/INimbleGameSdk$State;->DESTROYED:Lcom/ea/nimble/INimbleGameSdk$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ea/nimble/INimbleGameSdk$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/ea/nimble/INimbleGameSdk$State;->$VALUES:[Lcom/ea/nimble/INimbleGameSdk$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/INimbleGameSdk$State;
    .locals 1

    const-class v0, Lcom/ea/nimble/INimbleGameSdk$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/INimbleGameSdk$State;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/INimbleGameSdk$State;
    .locals 1

    sget-object v0, Lcom/ea/nimble/INimbleGameSdk$State;->$VALUES:[Lcom/ea/nimble/INimbleGameSdk$State;

    invoke-virtual {v0}, [Lcom/ea/nimble/INimbleGameSdk$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/INimbleGameSdk$State;

    return-object v0
.end method
