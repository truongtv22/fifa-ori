.class public Lcom/ea/nimble/Base;
.super Ljava/lang/Object;
.source "Base.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/BaseCore;->getChimbleSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->activeValidate()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->activeValidate()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/ComponentManager;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object p0

    return-object p0
.end method

.method public static getConfiguration()Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    return-void
.end method

.method public static restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->activeValidate()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/BaseCore;->restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V

    :cond_0
    return-void
.end method

.method public static setupNimble()V
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->setup()V

    return-void
.end method

.method public static teardownNimble()V
    .locals 1

    const-string v0, "Base"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->teardown()V

    return-void
.end method
