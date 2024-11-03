.class public final Lcom/beetalk/sdk/GGLoginSession$Builder;
.super Ljava/lang/Object;
.source "GGLoginSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/GGLoginSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private applicationKey:Ljava/lang/String;

.field private cache:Lcom/beetalk/sdk/cache/StorageCache;

.field private final context:Landroid/content/Context;

.field private modes:Lcom/beetalk/sdk/AuthMode;

.field private requestCode:I

.field private sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    const v0, 0xdb9d

    iput v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    sget-object v0, Lcom/beetalk/sdk/GGLoginSession$SessionProvider;->GARENA:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object v0, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/GGLoginSession;
    .locals 10

    new-instance v9, Lcom/beetalk/sdk/GGLoginSession;

    iget-object v1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->modes:Lcom/beetalk/sdk/AuthMode;

    iget v5, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    iget-object v6, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    iget-object v7, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/beetalk/sdk/GGLoginSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/AuthMode;ILcom/beetalk/sdk/GGLoginSession$SessionProvider;Lcom/beetalk/sdk/cache/StorageCache;Lcom/beetalk/sdk/GGLoginSession$1;)V

    return-object v9
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationId:Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationKey(Ljava/lang/String;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->applicationKey:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthMode(Lcom/beetalk/sdk/AuthMode;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->modes:Lcom/beetalk/sdk/AuthMode;

    return-object p0
.end method

.method public setCache(Lcom/beetalk/sdk/cache/StorageCache;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->cache:Lcom/beetalk/sdk/cache/StorageCache;

    return-object p0
.end method

.method public setRequestCode(I)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    iput p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->requestCode:I

    return-object p0
.end method

.method public setSessionProvider(Lcom/beetalk/sdk/GGLoginSession$SessionProvider;)Lcom/beetalk/sdk/GGLoginSession$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGLoginSession$Builder;->sessionProvider:Lcom/beetalk/sdk/GGLoginSession$SessionProvider;

    return-object p0
.end method
