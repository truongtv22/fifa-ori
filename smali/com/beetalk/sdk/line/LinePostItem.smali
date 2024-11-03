.class public Lcom/beetalk/sdk/line/LinePostItem;
.super Ljava/lang/Object;
.source "LinePostItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/line/LinePostItem$Builder;,
        Lcom/beetalk/sdk/line/LinePostItem$PostType;
    }
.end annotation


# instance fields
.field public final imagePath:Ljava/lang/String;

.field public final link:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

.field public final videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->access$000(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Lcom/beetalk/sdk/line/LinePostItem$PostType;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->type:Lcom/beetalk/sdk/line/LinePostItem$PostType;

    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->access$100(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->message:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->access$200(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->link:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->access$300(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/line/LinePostItem;->imagePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/line/LinePostItem$Builder;->access$400(Lcom/beetalk/sdk/line/LinePostItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/line/LinePostItem;->videoPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;Lcom/beetalk/sdk/line/LinePostItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/line/LinePostItem;-><init>(Lcom/beetalk/sdk/line/LinePostItem$Builder;)V

    return-void
.end method
