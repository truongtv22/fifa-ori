.class public final enum Lcom/ea/nimble/ComponentManager$Stage;
.super Ljava/lang/Enum;
.source "ComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/ComponentManager$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum CREATE:Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum READY:Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum SETUP:Lcom/ea/nimble/ComponentManager$Stage;

.field public static final enum SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ComponentManager$Stage;->CREATE:Lcom/ea/nimble/ComponentManager$Stage;

    new-instance v1, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v3, "SETUP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/ComponentManager$Stage;->SETUP:Lcom/ea/nimble/ComponentManager$Stage;

    new-instance v3, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/ComponentManager$Stage;->READY:Lcom/ea/nimble/ComponentManager$Stage;

    new-instance v5, Lcom/ea/nimble/ComponentManager$Stage;

    const-string v7, "SUSPEND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/ComponentManager$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/ComponentManager$Stage;->SUSPEND:Lcom/ea/nimble/ComponentManager$Stage;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ea/nimble/ComponentManager$Stage;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ea/nimble/ComponentManager$Stage;->$VALUES:[Lcom/ea/nimble/ComponentManager$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/ComponentManager$Stage;
    .locals 1

    const-class v0, Lcom/ea/nimble/ComponentManager$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/ComponentManager$Stage;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/ComponentManager$Stage;
    .locals 1

    sget-object v0, Lcom/ea/nimble/ComponentManager$Stage;->$VALUES:[Lcom/ea/nimble/ComponentManager$Stage;

    invoke-virtual {v0}, [Lcom/ea/nimble/ComponentManager$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/ComponentManager$Stage;

    return-object v0
.end method
