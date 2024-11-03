.class public Lcom/garena/android/gpns/strategy/ServiceLoader;
.super Ljava/lang/Object;
.source "ServiceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;
    }
.end annotation


# static fields
.field private static mApplicationContext:Landroid/content/Context;


# instance fields
.field private mListener:Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;

.field private final strategyListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/garena/android/gpns/strategy/ServiceLoader$1;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/strategy/ServiceLoader$1;-><init>(Lcom/garena/android/gpns/strategy/ServiceLoader;)V

    iput-object v0, p0, Lcom/garena/android/gpns/strategy/ServiceLoader;->strategyListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    sput-object p1, Lcom/garena/android/gpns/strategy/ServiceLoader;->mApplicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/garena/android/gpns/strategy/ServiceLoader;->mListener:Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;

    return-void
.end method

.method static synthetic access$000(Lcom/garena/android/gpns/strategy/ServiceLoader;)Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;
    .locals 0

    iget-object p0, p0, Lcom/garena/android/gpns/strategy/ServiceLoader;->mListener:Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;

    return-object p0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/garena/android/gpns/strategy/ServiceLoader;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public loadService()V
    .locals 3

    new-instance v0, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;

    iget-object v1, p0, Lcom/garena/android/gpns/strategy/ServiceLoader;->strategyListener:Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;

    invoke-direct {v0, v1}, Lcom/garena/android/gpns/strategy/CompetitiveBootStrategy;-><init>(Lcom/garena/android/gpns/strategy/BootStrategy$BootStrategyListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fire strategy by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/garena/android/gpns/strategy/ServiceLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/garena/android/gpns/utility/AppLogger;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/garena/android/gpns/strategy/ServiceLoader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/garena/android/gpns/strategy/BootStrategy;->fireStrategy(Landroid/content/Context;)V

    return-void
.end method

.method public setListener(Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/garena/android/gpns/strategy/ServiceLoader;->mListener:Lcom/garena/android/gpns/strategy/ServiceLoader$ServiceStatusListener;

    return-void
.end method
