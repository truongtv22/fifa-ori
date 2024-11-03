.class public final enum Lcom/ea/nimble/mtx/NimbleMTXError$Code;
.super Ljava/lang/Enum;
.source "NimbleMTXError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/mtx/NimbleMTXError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/mtx/NimbleMTXError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum EMPTY_BILLING_CATALOG:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum EMPTY_SYNERGY_CATALOG:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ERROR_GETTING_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INTERNAL_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INVALID_SERVER_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INVALID_SKU:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum INVALID_TRANSACTION_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_TYPE_NOT_MATCH:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum NON_CRITICAL_INTERRUPTION:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum PLATFORM_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_DEFERRED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum UNABLE_TO_CONSTRUCT_REQUEST:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum USER_CANCELED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

.field public static final enum VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v1, 0x4e20

    const-string v2, "BILLING_NOT_AVAILABLE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->BILLING_NOT_AVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v2, 0x4e21

    const-string v4, "ITEM_ALREADY_OWNED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_ALREADY_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v4, 0x4e22

    const-string v6, "ITEM_NOT_OWNED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_NOT_OWNED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v4, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v6, 0x4e23

    const-string v8, "USER_CANCELED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->USER_CANCELED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v6, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v8, 0x4e24

    const-string v10, "VERIFICATION_ERROR"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->VERIFICATION_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v8, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v10, 0x4e25

    const-string v12, "GET_NONCE_ERROR"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->GET_NONCE_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v10, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v12, 0x4e26

    const-string v14, "NON_CRITICAL_INTERRUPTION"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->NON_CRITICAL_INTERRUPTION:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v12, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v14, 0x4e27

    const-string v15, "INTERNAL_STATE"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INTERNAL_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v14, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e28

    const-string v13, "TRANSACTION_PENDING"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_PENDING:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v13, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e29

    const-string v11, "TRANSACTION_NOT_RESUMABLE"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_NOT_RESUMABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v11, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e2a

    const-string v9, "UNRECOGNIZED_TRANSACTION_ID"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNRECOGNIZED_TRANSACTION_ID:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v9, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e2b

    const-string v7, "INVALID_TRANSACTION_STATE"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_TRANSACTION_STATE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e2c

    const-string v5, "UNABLE_TO_CONSTRUCT_REQUEST"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->UNABLE_TO_CONSTRUCT_REQUEST:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e2d

    const-string v3, "PLATFORM_ERROR"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->PLATFORM_ERROR:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e2e

    const-string v7, "INVALID_SERVER_RESPONSE"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SERVER_RESPONSE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e2f

    const-string v5, "ERROR_GETTING_PREPURCHASE_INFO"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ERROR_GETTING_PREPURCHASE_INFO:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e30

    const-string v3, "ITEM_UNAVAILABLE"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_UNAVAILABLE:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e31

    const-string v7, "INVALID_SKU"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->INVALID_SKU:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e32

    const-string v5, "TRANSACTION_DEFERRED"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_DEFERRED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e33

    const-string v3, "TRANSACTION_SUPERSEDED"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->TRANSACTION_SUPERSEDED:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e34

    const-string v7, "EMPTY_SYNERGY_CATALOG"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->EMPTY_SYNERGY_CATALOG:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x4e35

    const-string v5, "EMPTY_BILLING_CATALOG"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->EMPTY_BILLING_CATALOG:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    new-instance v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v15, 0x16

    const/16 v3, 0x4e45

    move-object/from16 v25, v7

    const-string v7, "ITEM_TYPE_NOT_MATCH"

    invoke-direct {v5, v7, v15, v3}, Lcom/ea/nimble/mtx/NimbleMTXError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->ITEM_TYPE_NOT_MATCH:Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/16 v3, 0x17

    new-array v3, v3, [Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v14, v3, v0

    const/16 v0, 0x9

    aput-object v13, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v9, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v18, v3, v0

    const/16 v0, 0xf

    aput-object v19, v3, v0

    const/16 v0, 0x10

    aput-object v20, v3, v0

    const/16 v0, 0x11

    aput-object v21, v3, v0

    const/16 v0, 0x12

    aput-object v22, v3, v0

    const/16 v0, 0x13

    aput-object v23, v3, v0

    const/16 v0, 0x14

    aput-object v24, v3, v0

    const/16 v0, 0x15

    aput-object v25, v3, v0

    const/16 v0, 0x16

    aput-object v5, v3, v0

    sput-object v3, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->$VALUES:[Lcom/ea/nimble/mtx/NimbleMTXError$Code;

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

    iput p3, p0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    .locals 1

    const-class v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/mtx/NimbleMTXError$Code;
    .locals 1

    sget-object v0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->$VALUES:[Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/mtx/NimbleMTXError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/mtx/NimbleMTXError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/mtx/NimbleMTXError$Code;->m_value:I

    return v0
.end method
