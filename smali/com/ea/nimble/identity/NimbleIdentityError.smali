.class public Lcom/ea/nimble/identity/NimbleIdentityError;
.super Lcom/ea/nimble/Error;
.source "NimbleIdentityError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    }
.end annotation


# static fields
.field public static final NIMBLE_IDENTITY_ERROR_DOMAIN:Ljava/lang/String; = "NimbleIdentityError"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NimbleIdentityError"

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "NimbleIdentityError"

    invoke-virtual {p1}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ea/nimble/Error;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static createWithData(Ljava/util/Map;)Lcom/ea/nimble/identity/NimbleIdentityError;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ea/nimble/identity/NimbleIdentityError;"
        }
    .end annotation

    const-string v0, "error"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/identity/NimbleIdentityError;->parseErrorCode(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    move-result-object v1

    const-string v2, "error_description"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    new-instance p0, Lcom/ea/nimble/identity/NimbleIdentityError;

    invoke-direct {p0, v1, v0}, Lcom/ea/nimble/identity/NimbleIdentityError;-><init>(Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method private static parseErrorCode(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .locals 1

    const-string v0, "invalid_request"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object p0

    :cond_0
    const-string v0, "invalid_oauth_info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object p0
.end method


# virtual methods
.method public isError(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityError;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
