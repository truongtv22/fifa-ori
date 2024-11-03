.class public Lcom/beetalk/sdk/facebook/FBPostItem;
.super Ljava/lang/Object;
.source "FBPostItem.java"


# instance fields
.field public caption:Ljava/lang/String;

.field public data:[B

.field public description:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field public mediaTagName:Ljava/lang/String;

.field public mediaUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->videoPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->caption:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->link:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->caption:Ljava/lang/String;

    iput-object p3, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->link:Ljava/lang/String;

    iput-object p5, p0, Lcom/beetalk/sdk/facebook/FBPostItem;->mediaUrl:Ljava/lang/String;

    return-void
.end method
