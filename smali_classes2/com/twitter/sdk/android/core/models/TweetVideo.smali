.class public Lcom/twitter/sdk/android/core/models/TweetVideo;
.super Ljava/lang/Object;
.source "TweetVideo.java"


# instance fields
.field public final videoType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/TweetVideo;->videoType:Ljava/lang/String;

    return-void
.end method
