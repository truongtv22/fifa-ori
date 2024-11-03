.class final enum Lcom/ea/nimble/ApplicationLifecycleImpl$State;
.super Ljava/lang/Enum;
.source "ApplicationLifecycleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ApplicationLifecycleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ea/nimble/ApplicationLifecycleImpl$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

.field public static final enum SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v3, "LAUNCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v3, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v5, "RESUME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v5, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v7, "RUN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v7, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v9, "PAUSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v9, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v11, "SUSPEND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v11, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v13, "QUIT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    new-instance v13, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const-string v15, "CONFIG_CHANGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->$VALUES:[Lcom/ea/nimble/ApplicationLifecycleImpl$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/ApplicationLifecycleImpl$State;
    .locals 1

    const-class v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    return-object p0
.end method

.method public static values()[Lcom/ea/nimble/ApplicationLifecycleImpl$State;
    .locals 1

    sget-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->$VALUES:[Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v0}, [Lcom/ea/nimble/ApplicationLifecycleImpl$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    return-object v0
.end method
