.class public final enum Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
.super Ljava/lang/Enum;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaStatusReasonCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

.field public static final enum PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "PERSONA_STATUS_REASON_CODES_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v3, "PERSONA_STATUS_REASON_CODES_ONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v5, "PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v7, "PERSONA_STATUS_REASON_CODES_INVALID_EMAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v9, "PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v9, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v11, "PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v11, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v13, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v13, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v15, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v15, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v14, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v14, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v12, "PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v12, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v10, "PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v10, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v8, "PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v8, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v6, "PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v4, "PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v2, "PERSONA_STATUS_REASON_CODES_MISTYPED_ID"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v6, "PERSONA_STATUS_REASON_CODES_ABUSED_ID"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v4, "PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v2, "PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v6, "PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v4, "PERSONA_STATUS_REASON_CODES_BANNED"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    new-instance v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v2, "PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 1

    const-class v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 1

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-object v0
.end method
