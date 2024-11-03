.class public final enum Lcom/ea/nimble/NimbleConfiguration;
.super Ljava/lang/Enum;
.source "NimbleConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/NimbleConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum LIVE:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum MANUAL:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum STAGE:Lcom/ea/nimble/NimbleConfiguration;

.field public static final enum UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/ea/nimble/NimbleConfiguration;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v1, Lcom/ea/nimble/NimbleConfiguration;

    const-string v3, "INTEGRATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v3, Lcom/ea/nimble/NimbleConfiguration;

    const-string v5, "STAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v5, Lcom/ea/nimble/NimbleConfiguration;

    const-string v7, "LIVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v7, Lcom/ea/nimble/NimbleConfiguration;

    const-string v9, "CUSTOMIZED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

    new-instance v9, Lcom/ea/nimble/NimbleConfiguration;

    const-string v11, "MANUAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ea/nimble/NimbleConfiguration;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ea/nimble/NimbleConfiguration;->MANUAL:Lcom/ea/nimble/NimbleConfiguration;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/ea/nimble/NimbleConfiguration;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/ea/nimble/NimbleConfiguration;->$VALUES:[Lcom/ea/nimble/NimbleConfiguration;

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

.method public static fromName(Ljava/lang/String;)Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    return-object p0

    :cond_0
    const-string v0, "stage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    return-object p0

    :cond_1
    const-string v0, "live"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    return-object p0

    :cond_2
    const-string v0, "custom"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;

    return-object p0

    :cond_3
    const-string v0, "manual"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/ea/nimble/NimbleConfiguration;->MANUAL:Lcom/ea/nimble/NimbleConfiguration;

    return-object p0

    :cond_4
    sget-object p0, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    const-class v0, Lcom/ea/nimble/NimbleConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/NimbleConfiguration;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->$VALUES:[Lcom/ea/nimble/NimbleConfiguration;

    invoke-virtual {v0}, [Lcom/ea/nimble/NimbleConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/NimbleConfiguration;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ea/nimble/NimbleConfiguration$1;->$SwitchMap$com$ea$nimble$NimbleConfiguration:[I

    invoke-virtual {p0}, Lcom/ea/nimble/NimbleConfiguration;->ordinal()I

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

    const-string/jumbo v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "manual"

    return-object v0

    :cond_1
    const-string v0, "custom"

    return-object v0

    :cond_2
    const-string v0, "live"

    return-object v0

    :cond_3
    const-string v0, "stage"

    return-object v0

    :cond_4
    const-string v0, "int"

    return-object v0
.end method
