.class public final enum Lcom/beetalk/sdk/request/ResponseType;
.super Ljava/lang/Enum;
.source "ResponseType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/request/ResponseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/request/ResponseType;

.field public static final enum CODE:Lcom/beetalk/sdk/request/ResponseType;

.field public static final enum TOKEN:Lcom/beetalk/sdk/request/ResponseType;


# instance fields
.field mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/beetalk/sdk/request/ResponseType;

    const-string v1, "code"

    const-string v2, "CODE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/beetalk/sdk/request/ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/beetalk/sdk/request/ResponseType;->CODE:Lcom/beetalk/sdk/request/ResponseType;

    new-instance v1, Lcom/beetalk/sdk/request/ResponseType;

    const-string/jumbo v2, "token"

    const-string v4, "TOKEN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/beetalk/sdk/request/ResponseType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/beetalk/sdk/request/ResponseType;->TOKEN:Lcom/beetalk/sdk/request/ResponseType;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/beetalk/sdk/request/ResponseType;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/beetalk/sdk/request/ResponseType;->$VALUES:[Lcom/beetalk/sdk/request/ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/beetalk/sdk/request/ResponseType;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/request/ResponseType;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/request/ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/request/ResponseType;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/request/ResponseType;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/request/ResponseType;->$VALUES:[Lcom/beetalk/sdk/request/ResponseType;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/request/ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/request/ResponseType;

    return-object v0
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/request/ResponseType;->mValue:Ljava/lang/String;

    return-object v0
.end method
