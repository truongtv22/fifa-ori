.class public Lcom/beetalk/sdk/vk/VKPostItem$Builder;
.super Ljava/lang/Object;
.source "VKPostItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/vk/VKPostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private imageData:[B

.field private link:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)[B
    .locals 0

    iget-object p0, p0, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->imageData:[B

    return-object p0
.end method


# virtual methods
.method public build()Lcom/beetalk/sdk/vk/VKPostItem;
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/vk/VKPostItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/beetalk/sdk/vk/VKPostItem;-><init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;Lcom/beetalk/sdk/vk/VKPostItem$1;)V

    return-object v0
.end method

.method public imageData([B)Lcom/beetalk/sdk/vk/VKPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->imageData:[B

    return-object p0
.end method

.method public link(Ljava/lang/String;)Lcom/beetalk/sdk/vk/VKPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/beetalk/sdk/vk/VKPostItem$Builder;
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->message:Ljava/lang/String;

    return-object p0
.end method
