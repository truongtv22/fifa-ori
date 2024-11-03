.class public Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
.super Ljava/lang/Object;
.source "TwitterPostItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/twitter/TwitterPostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private imagePath:Ljava/lang/String;

.field private link:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/twitter/TwitterPostItem;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/twitter/TwitterPostItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/twitter/TwitterPostItem;-><init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;Lcom/beetalk/sdk/twitter/TwitterPostItem$1;)V

    return-object v0
.end method

.method public imagePath(Ljava/lang/String;)Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->imagePath:Ljava/lang/String;

    return-object p0
.end method

.method public link(Ljava/lang/String;)Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method public videoPath(Ljava/lang/String;)Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->videoPath:Ljava/lang/String;

    return-object p0
.end method
