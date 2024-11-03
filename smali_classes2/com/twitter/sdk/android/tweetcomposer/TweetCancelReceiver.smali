.class public Lcom/twitter/sdk/android/tweetcomposer/TweetCancelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TweetCancelReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "TweetCancelReceiver"

    const-string p2, "User cancelled compose tweet"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
