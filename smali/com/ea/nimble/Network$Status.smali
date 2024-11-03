.class public final enum Lcom/ea/nimble/Network$Status;
.super Ljava/lang/Enum;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/Network$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/Network$Status;

.field public static final enum DEAD:Lcom/ea/nimble/Network$Status;

.field public static final enum NONE:Lcom/ea/nimble/Network$Status;

.field public static final enum OK:Lcom/ea/nimble/Network$Status;

.field public static final enum UNKNOWN:Lcom/ea/nimble/Network$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ea/nimble/Network$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/Network$Status;->UNKNOWN:Lcom/ea/nimble/Network$Status;

    new-instance v1, Lcom/ea/nimble/Network$Status;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/Network$Status;->NONE:Lcom/ea/nimble/Network$Status;

    new-instance v3, Lcom/ea/nimble/Network$Status;

    const-string v5, "DEAD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/Network$Status;->DEAD:Lcom/ea/nimble/Network$Status;

    new-instance v5, Lcom/ea/nimble/Network$Status;

    const-string v7, "OK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/Network$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/Network$Status;->OK:Lcom/ea/nimble/Network$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ea/nimble/Network$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ea/nimble/Network$Status;->$VALUES:[Lcom/ea/nimble/Network$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/Network$Status;
    .locals 1

    const-class v0, Lcom/ea/nimble/Network$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/Network$Status;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/Network$Status;
    .locals 1

    sget-object v0, Lcom/ea/nimble/Network$Status;->$VALUES:[Lcom/ea/nimble/Network$Status;

    invoke-virtual {v0}, [Lcom/ea/nimble/Network$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/Network$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ea/nimble/Network$1;->$SwitchMap$com$ea$nimble$Network$Status:[I

    invoke-virtual {p0}, Lcom/ea/nimble/Network$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "NET UNKNOWN"

    return-object v0

    :cond_0
    const-string v0, "NET OK"

    return-object v0

    :cond_1
    const-string v0, "NET DEAD"

    return-object v0

    :cond_2
    const-string v0, "NET NONE"

    return-object v0
.end method
