.class public Lcom/beetalk/sdk/twitter/TwitterPostItem;
.super Ljava/lang/Object;
.source "TwitterPostItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;
    }
.end annotation


# instance fields
.field public final imagePath:Ljava/lang/String;

.field public final link:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->access$000(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->link:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->access$100(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->access$200(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;->access$300(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;Lcom/beetalk/sdk/twitter/TwitterPostItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/beetalk/sdk/twitter/TwitterPostItem;-><init>(Lcom/beetalk/sdk/twitter/TwitterPostItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->link:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getVideoUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/beetalk/sdk/twitter/TwitterPostItem;->videoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/beetalk/sdk/helper/FileUtil;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method
