.class Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar$NimbleCppComponent;
.super Lcom/ea/nimble/Component;
.source "NimbleCppComponentRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NimbleCppComponent"
.end annotation


# instance fields
.field private m_componentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar$NimbleCppComponent;->m_componentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected native cleanup()V
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/bridge/NimbleCppComponentRegistrar$NimbleCppComponent;->m_componentId:Ljava/lang/String;

    return-object v0
.end method

.method protected native restore()V
.end method

.method protected native resume()V
.end method

.method protected native setup()V
.end method

.method protected native suspend()V
.end method

.method protected native teardown()V
.end method
