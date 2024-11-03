.class public final enum Lcom/ea/nimble/Error$Code;
.super Ljava/lang/Enum;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/Error$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_DELIVER_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_INVALID_TRANSACTION:Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_NOT_VONDER_COMSUME:Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_NO_RESTORE_BILL:Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_RESPONSE_FAILED:Lcom/ea/nimble/Error$Code;

.field public static final enum BILLING_USER_CANCEL:Lcom/ea/nimble/Error$Code;

.field public static final enum INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

.field public static final enum MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

.field public static final enum NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

.field public static final enum NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

.field public static final enum NOT_IMPLEMENTED:Lcom/ea/nimble/Error$Code;

.field public static final enum NOT_READY:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_AGE_COMPLIANCE_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_ANONYMOUS_ID_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_GET_NONCE_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_PURCHASE_VERIFICATION_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

.field public static final enum SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

.field public static final enum SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

.field public static final enum UNKNOWN:Lcom/ea/nimble/Error$Code;

.field public static final enum UNSUPPORTED:Lcom/ea/nimble/Error$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/ea/nimble/Error$Code;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    new-instance v1, Lcom/ea/nimble/Error$Code;

    const/16 v3, 0x64

    const-string v4, "SYSTEM_UNEXPECTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ea/nimble/Error$Code;->SYSTEM_UNEXPECTED:Lcom/ea/nimble/Error$Code;

    new-instance v3, Lcom/ea/nimble/Error$Code;

    const/16 v4, 0x65

    const-string v6, "NOT_READY"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ea/nimble/Error$Code;->NOT_READY:Lcom/ea/nimble/Error$Code;

    new-instance v4, Lcom/ea/nimble/Error$Code;

    const/16 v6, 0x66

    const-string v8, "UNSUPPORTED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ea/nimble/Error$Code;->UNSUPPORTED:Lcom/ea/nimble/Error$Code;

    new-instance v6, Lcom/ea/nimble/Error$Code;

    const/16 v8, 0x67

    const-string v10, "NOT_AVAILABLE"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ea/nimble/Error$Code;->NOT_AVAILABLE:Lcom/ea/nimble/Error$Code;

    new-instance v8, Lcom/ea/nimble/Error$Code;

    const/16 v10, 0x68

    const-string v12, "NOT_IMPLEMENTED"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ea/nimble/Error$Code;->NOT_IMPLEMENTED:Lcom/ea/nimble/Error$Code;

    new-instance v10, Lcom/ea/nimble/Error$Code;

    const/16 v12, 0x12d

    const-string v14, "INVALID_ARGUMENT"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ea/nimble/Error$Code;->INVALID_ARGUMENT:Lcom/ea/nimble/Error$Code;

    new-instance v12, Lcom/ea/nimble/Error$Code;

    const/16 v14, 0x12c

    const-string v15, "MISSING_CALLBACK"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ea/nimble/Error$Code;->MISSING_CALLBACK:Lcom/ea/nimble/Error$Code;

    new-instance v14, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3e9

    const-string v13, "NETWORK_UNSUPPORTED_CONNECTION_TYPE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ea/nimble/Error$Code;->NETWORK_UNSUPPORTED_CONNECTION_TYPE:Lcom/ea/nimble/Error$Code;

    new-instance v13, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3ea

    const-string v11, "NETWORK_NO_CONNECTION"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ea/nimble/Error$Code;->NETWORK_NO_CONNECTION:Lcom/ea/nimble/Error$Code;

    new-instance v11, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3eb

    const-string v9, "NETWORK_UNREACHABLE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ea/nimble/Error$Code;->NETWORK_UNREACHABLE:Lcom/ea/nimble/Error$Code;

    new-instance v9, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3ec

    const-string v7, "NETWORK_OVERSIZE_DATA"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ea/nimble/Error$Code;->NETWORK_OVERSIZE_DATA:Lcom/ea/nimble/Error$Code;

    new-instance v7, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3ed

    const-string v5, "NETWORK_OPERATION_CANCELLED"

    const/16 v2, 0xc

    invoke-direct {v7, v5, v2, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_OPERATION_CANCELLED:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3ee

    const-string v2, "NETWORK_INVALID_SERVER_RESPONSE"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->NETWORK_INVALID_SERVER_RESPONSE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3ef

    const-string v7, "NETWORK_TIMEOUT"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v2, v7, v5, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->NETWORK_TIMEOUT:Lcom/ea/nimble/Error$Code;

    new-instance v7, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x3f2

    const-string v5, "NETWORK_CONNECTION_ERROR"

    move-object/from16 v18, v2

    const/16 v2, 0xf

    invoke-direct {v7, v5, v2, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/Error$Code;->NETWORK_CONNECTION_ERROR:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x7d1

    const-string v2, "SYNERGY_SERVER_FULL"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->SYNERGY_SERVER_FULL:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x7d2

    const-string v7, "SYNERGY_GET_DIRECTION_TIMEOUT"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v2, v7, v5, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_DIRECTION_TIMEOUT:Lcom/ea/nimble/Error$Code;

    new-instance v7, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x7d3

    const-string v5, "SYNERGY_GET_EA_DEVICE_ID_FAILURE"

    move-object/from16 v21, v2

    const/16 v2, 0x12

    invoke-direct {v7, v5, v2, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x7d4

    const-string v2, "SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->SYNERGY_VALIDATE_EA_DEVICE_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x7d5

    const-string v7, "SYNERGY_GET_ANONYMOUS_ID_FAILURE"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v2, v7, v5, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_ANONYMOUS_ID_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v7, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x7d6

    const-string v5, "SYNERGY_ENVIRONMENT_UPDATE_FAILURE"

    move-object/from16 v24, v2

    const/16 v2, 0x15

    invoke-direct {v7, v5, v2, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/Error$Code;->SYNERGY_ENVIRONMENT_UPDATE_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v15, 0x16

    const/16 v2, 0x7d7

    move-object/from16 v25, v7

    const-string v7, "SYNERGY_PURCHASE_VERIFICATION_FAILURE"

    invoke-direct {v5, v7, v15, v2}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->SYNERGY_PURCHASE_VERIFICATION_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x17

    const/16 v15, 0x7d8

    move-object/from16 v26, v5

    const-string v5, "SYNERGY_GET_NONCE_FAILURE"

    invoke-direct {v2, v5, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_NONCE_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x18

    const/16 v15, 0x7d9

    move-object/from16 v27, v2

    const-string v2, "SYNERGY_GET_AGE_COMPLIANCE_FAILURE"

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->SYNERGY_GET_AGE_COMPLIANCE_FAILURE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x19

    const/16 v15, 0xbb8

    move-object/from16 v28, v5

    const-string v5, "BILLING_BUY_ABLE_FALSE"

    invoke-direct {v2, v5, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->BILLING_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x1a

    const/16 v15, 0xbb9

    move-object/from16 v29, v2

    const-string v2, "BILLING_DELIVER_BUY_ABLE_FALSE"

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->BILLING_DELIVER_BUY_ABLE_FALSE:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x1b

    const/16 v15, 0xbba

    move-object/from16 v30, v5

    const-string v5, "BILLING_INVALID_TRANSACTION"

    invoke-direct {v2, v5, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->BILLING_INVALID_TRANSACTION:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x1c

    const/16 v15, 0xbbb

    move-object/from16 v31, v2

    const-string v2, "BILLING_USER_CANCEL"

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->BILLING_USER_CANCEL:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x1d

    const/16 v15, 0xbbc

    move-object/from16 v32, v5

    const-string v5, "BILLING_NOT_VONDER_COMSUME"

    invoke-direct {v2, v5, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->BILLING_NOT_VONDER_COMSUME:Lcom/ea/nimble/Error$Code;

    new-instance v5, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x1e

    const/16 v15, 0xbbd

    move-object/from16 v33, v2

    const-string v2, "BILLING_RESPONSE_FAILED"

    invoke-direct {v5, v2, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/Error$Code;->BILLING_RESPONSE_FAILED:Lcom/ea/nimble/Error$Code;

    new-instance v2, Lcom/ea/nimble/Error$Code;

    const/16 v7, 0x1f

    const/16 v15, 0xbbe

    move-object/from16 v34, v5

    const-string v5, "BILLING_NO_RESTORE_BILL"

    invoke-direct {v2, v5, v7, v15}, Lcom/ea/nimble/Error$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/Error$Code;->BILLING_NO_RESTORE_BILL:Lcom/ea/nimble/Error$Code;

    const/16 v5, 0x20

    new-array v5, v5, [Lcom/ea/nimble/Error$Code;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v29, v5, v0

    const/16 v0, 0x1a

    aput-object v30, v5, v0

    const/16 v0, 0x1b

    aput-object v31, v5, v0

    const/16 v0, 0x1c

    aput-object v32, v5, v0

    const/16 v0, 0x1d

    aput-object v33, v5, v0

    const/16 v0, 0x1e

    aput-object v34, v5, v0

    const/16 v0, 0x1f

    aput-object v2, v5, v0

    sput-object v5, Lcom/ea/nimble/Error$Code;->$VALUES:[Lcom/ea/nimble/Error$Code;

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

    iput p3, p0, Lcom/ea/nimble/Error$Code;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/Error$Code;
    .locals 1

    const-class v0, Lcom/ea/nimble/Error$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/Error$Code;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/Error$Code;
    .locals 1

    sget-object v0, Lcom/ea/nimble/Error$Code;->$VALUES:[Lcom/ea/nimble/Error$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/Error$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/Error$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/Error$Code;->m_value:I

    return v0
.end method
