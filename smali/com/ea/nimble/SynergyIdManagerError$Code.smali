.class public final enum Lcom/ea/nimble/SynergyIdManagerError$Code;
.super Ljava/lang/Enum;
.source "SynergyIdManagerError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/SynergyIdManagerError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/SynergyIdManagerError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

.field public static final enum UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const/16 v1, 0x1388

    const-string v2, "AUTHENTICATOR_CONFLICT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->AUTHENTICATOR_CONFLICT:Lcom/ea/nimble/SynergyIdManagerError$Code;

    new-instance v1, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const/16 v2, 0x1389

    const-string v4, "UNEXPECTED_LOGIN_STATE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ea/nimble/SynergyIdManagerError$Code;->UNEXPECTED_LOGIN_STATE:Lcom/ea/nimble/SynergyIdManagerError$Code;

    new-instance v2, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const/16 v4, 0x138a

    const-string v6, "INVALID_ID"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ea/nimble/SynergyIdManagerError$Code;->INVALID_ID:Lcom/ea/nimble/SynergyIdManagerError$Code;

    new-instance v4, Lcom/ea/nimble/SynergyIdManagerError$Code;

    const/16 v6, 0x138b

    const-string v8, "MISSING_AUTHENTICATOR"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/ea/nimble/SynergyIdManagerError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ea/nimble/SynergyIdManagerError$Code;->MISSING_AUTHENTICATOR:Lcom/ea/nimble/SynergyIdManagerError$Code;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/ea/nimble/SynergyIdManagerError$Code;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/ea/nimble/SynergyIdManagerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyIdManagerError$Code;

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

    iput p3, p0, Lcom/ea/nimble/SynergyIdManagerError$Code;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/SynergyIdManagerError$Code;
    .locals 1

    const-class v0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/SynergyIdManagerError$Code;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/SynergyIdManagerError$Code;
    .locals 1

    sget-object v0, Lcom/ea/nimble/SynergyIdManagerError$Code;->$VALUES:[Lcom/ea/nimble/SynergyIdManagerError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/SynergyIdManagerError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/SynergyIdManagerError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/SynergyIdManagerError$Code;->m_value:I

    return v0
.end method
