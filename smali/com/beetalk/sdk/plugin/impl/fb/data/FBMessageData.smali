.class public Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;
.super Ljava/lang/Object;
.source "FBMessageData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    }
.end annotation


# instance fields
.field public final contentUrl:Ljava/lang/String;

.field public final data:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final imageUrl:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final uid:J


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->access$000(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->uid:J

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->access$100(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->title:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->access$200(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->description:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->access$300(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->contentUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->access$400(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->imageUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->access$500(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;->data:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)V

    return-void
.end method
