.class public final enum Lcom/beetalk/sdk/networking/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/networking/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/networking/ResultCode;

.field private static final CODES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/beetalk/sdk/networking/ResultCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERR_DISPLAY_RESULT:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_PARAMS:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_PLATFORM:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_SCOPE:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_SUBS_BINDING:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_SUBS_GET_DETAILS:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum ERR_TOKEN:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum PENDING_TRANSACTION:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

.field public static final enum UNKNOWN:Lcom/beetalk/sdk/networking/ResultCode;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/beetalk/sdk/networking/ResultCode;

    const/4 v1, -0x1

    const-string v2, "Failed to parse response"

    const-string v3, "ERR_PARSE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v1, Lcom/beetalk/sdk/networking/ResultCode;

    const-string v2, "Success"

    const-string v3, "SUCCESS"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v4, v2}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/beetalk/sdk/networking/ResultCode;->SUCCESS:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v2, Lcom/beetalk/sdk/networking/ResultCode;

    const-string v3, "Unknown error"

    const-string v6, "UNKNOWN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v5, v3}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/beetalk/sdk/networking/ResultCode;->UNKNOWN:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v3, Lcom/beetalk/sdk/networking/ResultCode;

    const-string v6, "Pending transaction"

    const-string v8, "PENDING_TRANSACTION"

    const/4 v9, 0x3

    invoke-direct {v3, v8, v9, v9, v6}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/beetalk/sdk/networking/ResultCode;->PENDING_TRANSACTION:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v6, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v8, 0x3e9

    const-string v10, "Error params"

    const-string v11, "ERR_PARAMS"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v8, v10}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARAMS:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v8, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v10, 0x3ea

    const-string v11, "Error token"

    const-string v13, "ERR_TOKEN"

    const/4 v14, 0x5

    invoke-direct {v8, v13, v14, v10, v11}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/beetalk/sdk/networking/ResultCode;->ERR_TOKEN:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v10, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v11, 0x3eb

    const-string v13, "Error scope"

    const-string v15, "ERR_SCOPE"

    const/4 v14, 0x6

    invoke-direct {v10, v15, v14, v11, v13}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SCOPE:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v11, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v13, 0x44d

    const-string v15, "Error user platform"

    const-string v14, "ERR_PLATFORM"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PLATFORM:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v13, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v14, 0x7d0

    const-string v15, "Error display result (task error)"

    const-string v12, "ERR_DISPLAY_RESULT"

    const/16 v9, 0x8

    invoke-direct {v13, v12, v9, v14, v15}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/beetalk/sdk/networking/ResultCode;->ERR_DISPLAY_RESULT:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v12, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v14, 0xbb9

    const-string v15, "Error subscription binding"

    const-string v9, "ERR_SUBS_BINDING"

    const/16 v7, 0x9

    invoke-direct {v12, v9, v7, v14, v15}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_BINDING:Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v9, Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v14, 0xbba

    const-string v15, "Error subscription get details failed"

    const-string v7, "ERR_SUBS_GET_DETAILS"

    const/16 v5, 0xa

    invoke-direct {v9, v7, v5, v14, v15}, Lcom/beetalk/sdk/networking/ResultCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/beetalk/sdk/networking/ResultCode;->ERR_SUBS_GET_DETAILS:Lcom/beetalk/sdk/networking/ResultCode;

    const/16 v7, 0xb

    new-array v7, v7, [Lcom/beetalk/sdk/networking/ResultCode;

    aput-object v0, v7, v4

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v11, v7, v0

    const/16 v0, 0x8

    aput-object v13, v7, v0

    const/16 v0, 0x9

    aput-object v12, v7, v0

    aput-object v9, v7, v5

    sput-object v7, Lcom/beetalk/sdk/networking/ResultCode;->$VALUES:[Lcom/beetalk/sdk/networking/ResultCode;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    invoke-static {}, Lcom/beetalk/sdk/networking/ResultCode;->values()[Lcom/beetalk/sdk/networking/ResultCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    sget-object v3, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/beetalk/sdk/networking/ResultCode;->getCode()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/beetalk/sdk/networking/ResultCode;->code:I

    iput-object p4, p0, Lcom/beetalk/sdk/networking/ResultCode;->message:Ljava/lang/String;

    return-void
.end method

.method public static getMessageFromCode(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    sget-object v1, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {p0}, Lcom/beetalk/sdk/networking/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResultCodeByCodeValue(I)Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->CODES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/ResultCode;

    if-nez p0, :cond_0

    sget-object p0, Lcom/beetalk/sdk/networking/ResultCode;->ERR_PARSE:Lcom/beetalk/sdk/networking/ResultCode;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/networking/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/networking/ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/networking/ResultCode;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/networking/ResultCode;->$VALUES:[Lcom/beetalk/sdk/networking/ResultCode;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/networking/ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/networking/ResultCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/networking/ResultCode;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/ResultCode;->message:Ljava/lang/String;

    return-object v0
.end method
