.class public Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
.super Ljava/lang/Object;
.source "FBMessageData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentUrl:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->uid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->data:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData;-><init>(Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$1;)V

    return-object v0
.end method

.method public contentUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->contentUrl:Ljava/lang/String;

    return-object p0
.end method

.method public data(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->data:Ljava/lang/String;

    return-object p0
.end method

.method public description(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public imageUrl(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->imageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public uid(J)Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/beetalk/sdk/plugin/impl/fb/data/FBMessageData$Builder;->uid:J

    return-object p0
.end method
