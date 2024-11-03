.class public final enum Lcom/beetalk/sdk/SessionStatus;
.super Ljava/lang/Enum;
.source "SessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/SessionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CLOSED:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum CREATED:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum OPENING:Lcom/beetalk/sdk/SessionStatus;

.field public static final enum TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/beetalk/sdk/SessionStatus;

    const-string v1, "CREATED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/beetalk/sdk/SessionStatus;->CREATED:Lcom/beetalk/sdk/SessionStatus;

    new-instance v1, Lcom/beetalk/sdk/SessionStatus;

    const-string v4, "OPENING"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/beetalk/sdk/SessionStatus;->OPENING:Lcom/beetalk/sdk/SessionStatus;

    new-instance v4, Lcom/beetalk/sdk/SessionStatus;

    const-string v6, "TOKEN_AVAILABLE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/beetalk/sdk/SessionStatus;->TOKEN_AVAILABLE:Lcom/beetalk/sdk/SessionStatus;

    new-instance v6, Lcom/beetalk/sdk/SessionStatus;

    const-string v8, "CLOSED"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/beetalk/sdk/SessionStatus;->CLOSED:Lcom/beetalk/sdk/SessionStatus;

    new-instance v8, Lcom/beetalk/sdk/SessionStatus;

    const-string v10, "CLOSED_WITH_ERROR"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    new-instance v10, Lcom/beetalk/sdk/SessionStatus;

    const-string v12, "INSPECTION_WITH_ERROR"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/beetalk/sdk/SessionStatus;->INSPECTION_WITH_ERROR:Lcom/beetalk/sdk/SessionStatus;

    new-instance v12, Lcom/beetalk/sdk/SessionStatus;

    const-string v14, "CLOSED_WITH_BIND_FAIL"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/beetalk/sdk/SessionStatus;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/beetalk/sdk/SessionStatus;->CLOSED_WITH_BIND_FAIL:Lcom/beetalk/sdk/SessionStatus;

    new-array v14, v15, [Lcom/beetalk/sdk/SessionStatus;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/beetalk/sdk/SessionStatus;->$VALUES:[Lcom/beetalk/sdk/SessionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/beetalk/sdk/SessionStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/SessionStatus;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/SessionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/SessionStatus;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/SessionStatus;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/SessionStatus;->$VALUES:[Lcom/beetalk/sdk/SessionStatus;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/SessionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/SessionStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/SessionStatus;->value:I

    return v0
.end method
