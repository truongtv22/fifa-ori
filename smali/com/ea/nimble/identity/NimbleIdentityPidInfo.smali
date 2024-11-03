.class public Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
.super Ljava/lang/Object;
.source "NimbleIdentityPidInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private anonymousPid:Ljava/lang/String;

.field private authenticationSource:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private dateCreated:Ljava/lang/String;

.field private dateModified:Ljava/lang/String;

.field private dob:Ljava/lang/String;

.field private expiryTime:Ljava/util/Date;

.field private language:Ljava/lang/String;

.field private lastAuthDate:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private reasonCode:Ljava/lang/String;

.field private registrationSource:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private strength:Ljava/lang/String;

.field private tosVersion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v0, "pid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v0, "pidId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    const-string v0, "anonymousPid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    const-string v0, "authenticationSource"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    const-string v0, "country"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    const-string v0, "dateCreated"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    const-string v0, "dateModified"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    const-string v0, "dob"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    const-string v0, "language"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    const-string v0, "lastAuthDate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    const-string v0, "locale"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    const-string v0, "reasonCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    const-string v0, "registrationSource"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    const-string v0, "strength"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    const-string/jumbo v0, "tosVersion"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    iget-object p1, p1, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getAnonymousPid()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationSource()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    return-object v0
.end method

.method public getDob()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAuthDate()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationSource()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStrength()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersion()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public setAnonymousPid(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->anonymousPid:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticationSource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->authenticationSource:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateCreated:Ljava/lang/String;

    return-void
.end method

.method public setDateModified(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dateModified:Ljava/lang/String;

    return-void
.end method

.method public setDob(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->dob:Ljava/lang/String;

    return-void
.end method

.method setExpiryTime(Ljava/util/Date;)V
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->expiryTime:Ljava/util/Date;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->language:Ljava/lang/String;

    return-void
.end method

.method public setLastAuthDate(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->lastAuthDate:Ljava/lang/String;

    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->locale:Ljava/lang/String;

    return-void
.end method

.method public setPidId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->pid:Ljava/lang/String;

    return-void
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->reasonCode:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationSource(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->registrationSource:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->status:Ljava/lang/String;

    return-void
.end method

.method public setStrength(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->strength:Ljava/lang/String;

    return-void
.end method

.method public setTosVersion(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPidInfo;->tosVersion:Ljava/lang/String;

    return-void
.end method
