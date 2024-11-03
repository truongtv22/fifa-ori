.class public Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin$FeedbackData;
.super Ljava/lang/Object;
.source "FeedbackPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/plugin/impl/misc/FeedbackPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackData"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public feedback:Ljava/lang/String;

.field public openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
