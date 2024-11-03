.class public final enum Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
.super Ljava/lang/Enum;
.source "SDKConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/SDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GGEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/beetalk/sdk/SDKConstants$GGEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

.field public static final enum PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

.field public static final enum TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v1, "PRODUCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->PRODUCTION:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    new-instance v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const-string v3, "TEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->TEST:Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->$VALUES:[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1

    const-class v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    return-object p0
.end method

.method public static values()[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;
    .locals 1

    sget-object v0, Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->$VALUES:[Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    invoke-virtual {v0}, [Lcom/beetalk/sdk/SDKConstants$GGEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/beetalk/sdk/SDKConstants$GGEnvironment;

    return-object v0
.end method
