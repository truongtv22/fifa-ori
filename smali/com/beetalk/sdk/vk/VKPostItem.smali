.class public Lcom/beetalk/sdk/vk/VKPostItem;
.super Ljava/lang/Object;
.source "VKPostItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/vk/VKPostItem$Builder;
    }
.end annotation


# instance fields
.field public final imageData:[B

.field public final link:Ljava/lang/String;

.field public final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->access$000(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/vk/VKPostItem;->message:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->access$100(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/vk/VKPostItem;->link:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/vk/VKPostItem$Builder;->access$200(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/vk/VKPostItem;->imageData:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;Lcom/beetalk/sdk/vk/VKPostItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/vk/VKPostItem;-><init>(Lcom/beetalk/sdk/vk/VKPostItem$Builder;)V

    return-void
.end method
