.class Lcom/ea/nimble/LogImpl$LogRecord;
.super Ljava/lang/Object;
.source "LogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/LogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecord"
.end annotation


# instance fields
.field public level:I

.field public message:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/nimble/LogImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/LogImpl$LogRecord;-><init>()V

    return-void
.end method
