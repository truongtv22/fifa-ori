.class public final enum Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
.super Ljava/lang/Enum;
.source "NimbleIdentityError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NimbleIdentityErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_USER_CANCELLED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v1, 0x64

    const-string v2, "NIMBLE_IDENTITY_ERROR_USER_CANCELLED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_USER_CANCELLED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v2, 0x65

    const-string v4, "NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v4, 0x3e9

    const-string v6, "NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v6, 0x3ea

    const-string v8, "NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v6, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v8, 0x3eb

    const-string v10, "NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v8, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v10, 0x44d

    const-string v12, "NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v10, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v12, 0x44e

    const-string v14, "NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v12, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v14, 0x5dc

    const-string v15, "NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v14, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x5dd

    const-string v13, "NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v13, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x7d1

    const-string v11, "NIMBLE_IDENTITY_ERROR_INVALID_REQUEST"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v11, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x7d2

    const-string v9, "NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v9, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x238d

    const-string v7, "NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v7, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x238e

    const-string v5, "NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x238f

    const-string v3, "NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x2390

    const-string v7, "NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v7, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x2391

    const-string v5, "NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v15, 0x2392

    const-string v3, "NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const v15, 0x7fffffff

    const-string v7, "NIMBLE_IDENTITY_ERROR_UNKNOWN"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/16 v7, 0x12

    new-array v7, v7, [Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v13, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    const/16 v0, 0xb

    aput-object v9, v7, v0

    const/16 v0, 0xc

    aput-object v16, v7, v0

    const/16 v0, 0xd

    aput-object v17, v7, v0

    const/16 v0, 0xe

    aput-object v18, v7, v0

    const/16 v0, 0xf

    aput-object v19, v7, v0

    const/16 v0, 0x10

    aput-object v20, v7, v0

    aput-object v3, v7, v5

    sput-object v7, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

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

    iput p3, p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .locals 1

    const-class v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .locals 1

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->m_value:I

    return v0
.end method
