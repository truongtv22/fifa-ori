.class public final enum Lcom/facebook/gamingservices/internal/TournamentScoreType;
.super Ljava/lang/Enum;
.source "TournamentScoreType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/gamingservices/internal/TournamentScoreType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/facebook/gamingservices/internal/TournamentScoreType;",
        "",
        "(Ljava/lang/String;I)V",
        "NUMERIC",
        "TIME",
        "facebook-gamingservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/gamingservices/internal/TournamentScoreType;

.field public static final enum NUMERIC:Lcom/facebook/gamingservices/internal/TournamentScoreType;

.field public static final enum TIME:Lcom/facebook/gamingservices/internal/TournamentScoreType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/gamingservices/internal/TournamentScoreType;

    new-instance v1, Lcom/facebook/gamingservices/internal/TournamentScoreType;

    const-string v2, "NUMERIC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/gamingservices/internal/TournamentScoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/gamingservices/internal/TournamentScoreType;->NUMERIC:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/gamingservices/internal/TournamentScoreType;

    const-string v2, "TIME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/facebook/gamingservices/internal/TournamentScoreType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/gamingservices/internal/TournamentScoreType;->TIME:Lcom/facebook/gamingservices/internal/TournamentScoreType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/gamingservices/internal/TournamentScoreType;->$VALUES:[Lcom/facebook/gamingservices/internal/TournamentScoreType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/gamingservices/internal/TournamentScoreType;
    .locals 1

    const-class v0, Lcom/facebook/gamingservices/internal/TournamentScoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/gamingservices/internal/TournamentScoreType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/gamingservices/internal/TournamentScoreType;
    .locals 1

    sget-object v0, Lcom/facebook/gamingservices/internal/TournamentScoreType;->$VALUES:[Lcom/facebook/gamingservices/internal/TournamentScoreType;

    invoke-virtual {v0}, [Lcom/facebook/gamingservices/internal/TournamentScoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/gamingservices/internal/TournamentScoreType;

    return-object v0
.end method
