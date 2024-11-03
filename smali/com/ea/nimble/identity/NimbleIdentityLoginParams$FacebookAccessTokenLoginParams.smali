.class public Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;
.super Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.source "NimbleIdentityLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FacebookAccessTokenLoginParams"
.end annotation


# instance fields
.field private expiryDate:Ljava/util/Date;

.field private facebookAccessToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->expiryDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method getExpiryDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->expiryDate:Ljava/util/Date;

    return-object v0
.end method

.method getFacebookAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$FacebookAccessTokenLoginParams;->facebookAccessToken:Ljava/lang/String;

    return-object v0
.end method
