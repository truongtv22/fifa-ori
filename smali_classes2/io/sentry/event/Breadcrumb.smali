.class public Lio/sentry/event/Breadcrumb;
.super Ljava/lang/Object;
.source "Breadcrumb.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/event/Breadcrumb$Type;,
        Lio/sentry/event/Breadcrumb$Level;
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final level:Lio/sentry/event/Breadcrumb$Level;

.field private final message:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;

.field private final type:Lio/sentry/event/Breadcrumb$Type;


# direct methods
.method constructor <init>(Lio/sentry/event/Breadcrumb$Type;Ljava/util/Date;Lio/sentry/event/Breadcrumb$Level;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/event/Breadcrumb$Type;",
            "Ljava/util/Date;",
            "Lio/sentry/event/Breadcrumb$Level;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    :cond_0
    if-nez p4, :cond_2

    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "one of \'message\' or \'data\' must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    iput-object p2, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    iput-object p3, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    iput-object p4, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    iput-object p5, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    iput-object p6, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lio/sentry/event/Breadcrumb;

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    iget-object v3, p1, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    iget-object v3, p1, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    iget-object v3, p1, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    iget-object p1, p1, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getLevel()Lio/sentry/event/Breadcrumb$Level;
    .locals 1

    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Lio/sentry/event/Breadcrumb$Type;
    .locals 1

    iget-object v0, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->type:Lio/sentry/event/Breadcrumb$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->timestamp:Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->level:Lio/sentry/event/Breadcrumb$Level;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->message:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->category:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lio/sentry/event/Breadcrumb;->data:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
