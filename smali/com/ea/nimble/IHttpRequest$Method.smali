.class public final enum Lcom/ea/nimble/IHttpRequest$Method;
.super Ljava/lang/Enum;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/IHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/IHttpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum DELETE:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum GET:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum HEAD:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum POST:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum PUT:Lcom/ea/nimble/IHttpRequest$Method;

.field public static final enum UNRECOGNIZED:Lcom/ea/nimble/IHttpRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/IHttpRequest$Method;->GET:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance v1, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/IHttpRequest$Method;->HEAD:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance v3, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/IHttpRequest$Method;->POST:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance v5, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v7, "PUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/IHttpRequest$Method;->PUT:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance v7, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v9, "DELETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/IHttpRequest$Method;->DELETE:Lcom/ea/nimble/IHttpRequest$Method;

    new-instance v9, Lcom/ea/nimble/IHttpRequest$Method;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ea/nimble/IHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ea/nimble/IHttpRequest$Method;->UNRECOGNIZED:Lcom/ea/nimble/IHttpRequest$Method;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ea/nimble/IHttpRequest$Method;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/ea/nimble/IHttpRequest$Method;->$VALUES:[Lcom/ea/nimble/IHttpRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    const-class v0, Lcom/ea/nimble/IHttpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/IHttpRequest$Method;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/IHttpRequest$Method;
    .locals 1

    sget-object v0, Lcom/ea/nimble/IHttpRequest$Method;->$VALUES:[Lcom/ea/nimble/IHttpRequest$Method;

    invoke-virtual {v0}, [Lcom/ea/nimble/IHttpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/IHttpRequest$Method;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ea/nimble/IHttpRequest$1;->$SwitchMap$com$ea$nimble$IHttpRequest$Method:[I

    invoke-virtual {p0}, Lcom/ea/nimble/IHttpRequest$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "DELETE"

    return-object v0

    :cond_1
    const-string v0, "PUT"

    return-object v0

    :cond_2
    const-string v0, "POST"

    return-object v0

    :cond_3
    const-string v0, "HEAD"

    return-object v0

    :cond_4
    const-string v0, "GET"

    return-object v0
.end method
