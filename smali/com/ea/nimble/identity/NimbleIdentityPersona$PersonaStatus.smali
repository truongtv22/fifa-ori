.class public final enum Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
.super Ljava/lang/Enum;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonaStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field public static final enum PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PERSONA_STATUS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    new-instance v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v3, "PERSONA_STATUS_PENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    new-instance v3, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v5, "PERSONA_STATUS_ACTIVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    new-instance v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v7, "PERSONA_STATUS_DEACTIVATED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    new-instance v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v9, "PERSONA_STATUS_DISABLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    new-instance v9, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v11, "PERSONA_STATUS_DELETED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    new-instance v11, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v13, "PERSONA_STATUS_BANNED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 1

    const-class v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 1

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-object v0
.end method
