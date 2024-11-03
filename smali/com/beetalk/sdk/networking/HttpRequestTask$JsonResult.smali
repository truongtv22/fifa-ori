.class public Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;
.super Ljava/lang/Object;
.source "HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/HttpRequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonResult"
.end annotation


# instance fields
.field public final hasTimeOut:Z

.field public final response:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->response:Lorg/json/JSONObject;

    iput-boolean p2, p0, Lcom/beetalk/sdk/networking/HttpRequestTask$JsonResult;->hasTimeOut:Z

    return-void
.end method
