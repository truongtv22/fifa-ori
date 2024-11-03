.class public Lcom/beetalk/sdk/AuthClient$AuthClientRequest;
.super Ljava/lang/Object;
.source "AuthClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/AuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthClientRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private final applicationKey:Ljava/lang/String;

.field private authId:Ljava/lang/String;

.field private mAuthToken:Lcom/beetalk/sdk/data/AuthToken;

.field private mSessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

.field private requestCode:I

.field private final transient startActivityDelegate:Lcom/beetalk/sdk/ActivityLauncher;


# direct methods
.method public constructor <init>(Lcom/beetalk/sdk/ActivityLauncher;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->startActivityDelegate:Lcom/beetalk/sdk/ActivityLauncher;

    iput-object p2, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->authId:Ljava/lang/String;

    iput p3, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->requestCode:I

    iput-object p4, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->applicationId:Ljava/lang/String;

    iput-object p5, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->applicationKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->applicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken()Lcom/beetalk/sdk/data/AuthToken;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->mAuthToken:Lcom/beetalk/sdk/data/AuthToken;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->requestCode:I

    return v0
.end method

.method public getSessionProvider()Lcom/beetalk/sdk/GGLoginSession$SessionProvider;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->mSessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object v0
.end method

.method public getStartActivityDelegate()Lcom/beetalk/sdk/ActivityLauncher;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->startActivityDelegate:Lcom/beetalk/sdk/ActivityLauncher;

    return-object v0
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->authId:Ljava/lang/String;

    return-void
.end method

.method public setAuthToken(Lcom/beetalk/sdk/data/AuthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->mAuthToken:Lcom/beetalk/sdk/data/AuthToken;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->requestCode:I

    return-void
.end method

.method public setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/AuthClient$AuthClientRequest;->mSessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-void
.end method
