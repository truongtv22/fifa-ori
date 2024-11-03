.class public Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringResult"
.end annotation


# instance fields
.field public final hasTimedOut:Z

.field public final response:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->response:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;->hasTimedOut:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/beetalk/sdk/networking/HttpRequestTask$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/beetalk/sdk/networking/HttpRequestTask$StringResult;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
