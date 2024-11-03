.class public final enum Lcom/ea/nimble/SynergyServerError$Code;
.super Ljava/lang/Enum;
.source "SynergyServerError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyServerError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/SynergyServerError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum AMAZON_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum APPLE_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum ERROR_NONCE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum ERROR_NOT_SUPPORTED_RECEIPT_TYPE:Lcom/ea/nimble/SynergyServerError$Code;

.field public static final enum ERROR_SIGNATURE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ea/nimble/SynergyServerError$Code;

    const/16 v1, -0x753d

    const-string v2, "ERROR_NONCE_VERIFICATION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_NONCE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

    new-instance v1, Lcom/ea/nimble/SynergyServerError$Code;

    const/16 v2, -0x753e

    const-string v4, "ERROR_SIGNATURE_VERIFICATION"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_SIGNATURE_VERIFICATION:Lcom/ea/nimble/SynergyServerError$Code;

    new-instance v2, Lcom/ea/nimble/SynergyServerError$Code;

    const/16 v4, -0x753f

    const-string v6, "ERROR_NOT_SUPPORTED_RECEIPT_TYPE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/SynergyServerError$Code;->ERROR_NOT_SUPPORTED_RECEIPT_TYPE:Lcom/ea/nimble/SynergyServerError$Code;

    new-instance v4, Lcom/ea/nimble/SynergyServerError$Code;

    const/16 v6, -0x7540

    const-string v8, "AMAZON_SERVER_CONNECTION_ERROR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ea/nimble/SynergyServerError$Code;->AMAZON_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    new-instance v6, Lcom/ea/nimble/SynergyServerError$Code;

    const/16 v8, 0x2711

    const-string v10, "APPLE_SERVER_CONNECTION_ERROR"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/ea/nimble/SynergyServerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ea/nimble/SynergyServerError$Code;->APPLE_SERVER_CONNECTION_ERROR:Lcom/ea/nimble/SynergyServerError$Code;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/ea/nimble/SynergyServerError$Code;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lcom/ea/nimble/SynergyServerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyServerError$Code;

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

    iput p3, p0, Lcom/ea/nimble/SynergyServerError$Code;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/SynergyServerError$Code;
    .locals 1

    const-class v0, Lcom/ea/nimble/SynergyServerError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/SynergyServerError$Code;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/SynergyServerError$Code;
    .locals 1

    sget-object v0, Lcom/ea/nimble/SynergyServerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyServerError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/SynergyServerError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/SynergyServerError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/SynergyServerError$Code;->m_value:I

    return v0
.end method
