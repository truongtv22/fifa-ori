.class public Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
.super Ljava/lang/Object;
.source "NimbleIdentityUserInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private avatarUri:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expiryTime:Ljava/util/Date;

.field private pid:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->clone()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUri()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->avatarUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->expiryTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->expiryTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getuserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUri(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->avatarUri:Ljava/lang/String;

    return-void
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->dateOfBirth:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method setExpiryTime(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->expiryTime:Ljava/util/Date;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->pid:Ljava/lang/String;

    return-void
.end method

.method setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityUserInfo;->userName:Ljava/lang/String;

    return-void
.end method
