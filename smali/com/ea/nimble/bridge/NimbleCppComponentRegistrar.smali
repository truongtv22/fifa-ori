.class public Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;
.super Lcom/ea/nimble/Component;
.source "NimbleCppComponentRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar$NimbleCppComponent;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.bridge.NimbleCppComponentRegistrar"

.field static m_baseComponentSetupComplete:Z

.field static m_components:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;->m_components:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    return-void
.end method

.method public static getComponentId(Lcom/ea/nimble/Component;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/ea/nimble/Component;->getComponentId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initialize()V
    .locals 3

    new-instance v0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;

    invoke-direct {v0}, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;-><init>()V

    const-string v1, "com.ea.nimble.bridge.NimbleCppComponentRegistrar"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;->m_baseComponentSetupComplete:Z

    sget-object v0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;->m_components:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/Component;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;->m_components:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar$NimbleCppComponent;

    invoke-direct {v0, p0}, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar$NimbleCppComponent;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;->m_baseComponentSetupComplete:Z

    if-eqz v1, :cond_0

    invoke-static {v0, p0}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;->m_components:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.bridge.NimbleCppComponentRegistrar"

    return-object v0
.end method
