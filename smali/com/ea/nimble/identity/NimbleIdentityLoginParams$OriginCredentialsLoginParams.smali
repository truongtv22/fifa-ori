.class public Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;
.super Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.source "NimbleIdentityLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityLoginParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginCredentialsLoginParams"
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/identity/NimbleIdentityLoginParams;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->password:Ljava/lang/String;

    return-object v0
.end method

.method getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityLoginParams$OriginCredentialsLoginParams;->username:Ljava/lang/String;

    return-object v0
.end method
