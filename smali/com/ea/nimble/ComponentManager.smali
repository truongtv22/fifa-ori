.class Lcom/ea/nimble/ComponentManager;
.super Ljava/lang/Object;
.source "ComponentManager.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ComponentManager$Stage;
    }
.end annotation


# instance fields
.field private m_components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/Component;",
            ">;"
        }
    .end annotation
.end field

.field private m_stage:Lcom/ea/nimble/ComponentManager$Stage;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Component;

    invoke-virtual {v1}, Lcom/ea/nimble/Component;->cleanup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/Component;

    return-object p1
.end method

.method getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ea/nimble/Component;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/ea/nimble/Component;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/ea/nimble/Component;

    return-object p1
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Component"

    return-object v0
.end method

.method public getStage()Lcom/ea/nimble/ComponentManager$Stage;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    return-object v0
.end method

.method registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Cannot register component without valid componentId"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Try to register invalid component with id: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/Component;

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Register module: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Register module(overwrite): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {p2, v1}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-gez p2, :cond_3

    return-void

    :cond_3
    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {p2, v1}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_5

    iget-object p2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {p2, v1}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_4

    invoke-virtual {v0}, Lcom/ea/nimble/Component;->resume()V

    :cond_4
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->cleanup()V

    :cond_5
    invoke-virtual {v0}, Lcom/ea/nimble/Component;->teardown()V

    :cond_6
    invoke-virtual {p1}, Lcom/ea/nimble/Component;->setup()V

    iget-object p2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {p2, v0}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_7

    invoke-virtual {p1}, Lcom/ea/nimble/Component;->restore()V

    iget-object p2, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {p2, v0}, Lcom/ea/nimble/ComponentManager$Stage;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-ltz p2, :cond_7

    invoke-virtual {p1}, Lcom/ea/nimble/Component;->suspend()V

    :cond_7
    return-void
.end method

.method restore()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Component;

    invoke-virtual {v1}, Lcom/ea/nimble/Component;->restore()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method resume()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Component;

    invoke-virtual {v1}, Lcom/ea/nimble/Component;->resume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setup()V
    .locals 2

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    iget-object v0, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Component;

    invoke-virtual {v1}, Lcom/ea/nimble/Component;->setup()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method suspend()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Component;

    invoke-virtual {v1}, Lcom/ea/nimble/Component;->suspend()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method teardown()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_components:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    iput-object v1, p0, Lcom/ea/nimble/ComponentManager;->m_stage:Lcom/ea/nimble/ComponentManager$Stage;

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Component;

    invoke-virtual {v1}, Lcom/ea/nimble/Component;->teardown()V

    goto :goto_0

    :cond_0
    return-void
.end method
