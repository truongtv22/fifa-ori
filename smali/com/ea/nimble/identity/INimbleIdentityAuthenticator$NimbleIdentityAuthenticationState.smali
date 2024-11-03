.class public final enum Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
.super Ljava/lang/Enum;
.source "INimbleIdentityAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NimbleIdentityAuthenticationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field public static final enum NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field public static final enum NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field public static final enum NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field public static final enum NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

.field public static final enum NIMBLE_IDENTITY_AUTHENTICATION_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const-string v1, "NIMBLE_IDENTITY_AUTHENTICATION_UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_UNAVAILABLE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    new-instance v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const-string v3, "NIMBLE_IDENTITY_AUTHENTICATION_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_NONE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    new-instance v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const-string v5, "NIMBLE_IDENTITY_AUTHENTICATION_GOING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_GOING:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    new-instance v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const-string v7, "NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_SUCCESS:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    new-instance v7, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const-string v9, "NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->NIMBLE_IDENTITY_AUTHENTICATION_OFFLINE:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->$VALUES:[Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    .locals 1

    const-class v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    .locals 1

    sget-object v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->$VALUES:[Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;

    return-object v0
.end method
