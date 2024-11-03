.class final Lcom/linecorp/linesdk/a/a/b$b;
.super Lcom/linecorp/linesdk/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/linecorp/linesdk/a/a/a<",
        "Lcom/linecorp/linesdk/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/a/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/linecorp/linesdk/a/a/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/linecorp/linesdk/a/f;

    const-string v1, "otpId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "otp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/linecorp/linesdk/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
