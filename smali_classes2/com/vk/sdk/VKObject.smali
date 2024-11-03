.class public Lcom/vk/sdk/VKObject;
.super Ljava/lang/Object;
.source "VKObject.java"


# static fields
.field private static final sRegisteredObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/vk/sdk/VKObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRegisteredObjectId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vk/sdk/VKObject;->sRegisteredObjects:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vk/sdk/VKObject;->mRegisteredObjectId:J

    return-void
.end method

.method public static getRegisteredObject(J)Lcom/vk/sdk/VKObject;
    .locals 1

    sget-object v0, Lcom/vk/sdk/VKObject;->sRegisteredObjects:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/VKObject;

    return-object p0
.end method


# virtual methods
.method public registerObject()J
    .locals 7

    sget-object v0, Lcom/vk/sdk/VKObject;->sRegisteredObjects:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/vk/sdk/VKObject;->mRegisteredObjectId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/vk/sdk/VKObject;->mRegisteredObjectId:J

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    sget-object v3, Lcom/vk/sdk/VKObject;->sRegisteredObjects:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v1, p0, Lcom/vk/sdk/VKObject;->mRegisteredObjectId:J

    return-wide v1
.end method

.method public unregisterObject()V
    .locals 3

    sget-object v0, Lcom/vk/sdk/VKObject;->sRegisteredObjects:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/vk/sdk/VKObject;->mRegisteredObjectId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vk/sdk/VKObject;->mRegisteredObjectId:J

    return-void
.end method
