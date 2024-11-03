.class final enum Lcom/ea/blast/MainActivity$LifeCycleState;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LifeCycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/blast/MainActivity$LifeCycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/blast/MainActivity$LifeCycleState;

.field public static final enum Running:Lcom/ea/blast/MainActivity$LifeCycleState;

.field public static final enum Stopped:Lcom/ea/blast/MainActivity$LifeCycleState;

.field public static final enum Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/ea/blast/MainActivity$LifeCycleState;

    const-string v1, "Running"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/blast/MainActivity$LifeCycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->Running:Lcom/ea/blast/MainActivity$LifeCycleState;

    new-instance v1, Lcom/ea/blast/MainActivity$LifeCycleState;

    const-string v3, "Suspended"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/blast/MainActivity$LifeCycleState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/blast/MainActivity$LifeCycleState;->Suspended:Lcom/ea/blast/MainActivity$LifeCycleState;

    new-instance v3, Lcom/ea/blast/MainActivity$LifeCycleState;

    const-string v5, "Stopped"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/blast/MainActivity$LifeCycleState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/blast/MainActivity$LifeCycleState;->Stopped:Lcom/ea/blast/MainActivity$LifeCycleState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ea/blast/MainActivity$LifeCycleState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/ea/blast/MainActivity$LifeCycleState;->$VALUES:[Lcom/ea/blast/MainActivity$LifeCycleState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/blast/MainActivity$LifeCycleState;
    .locals 1

    const-class v0, Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/blast/MainActivity$LifeCycleState;

    return-object p0
.end method

.method public static values()[Lcom/ea/blast/MainActivity$LifeCycleState;
    .locals 1

    sget-object v0, Lcom/ea/blast/MainActivity$LifeCycleState;->$VALUES:[Lcom/ea/blast/MainActivity$LifeCycleState;

    invoke-virtual {v0}, [Lcom/ea/blast/MainActivity$LifeCycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/blast/MainActivity$LifeCycleState;

    return-object v0
.end method
