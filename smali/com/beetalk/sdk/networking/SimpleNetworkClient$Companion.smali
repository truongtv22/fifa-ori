.class public final Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;
.super Ljava/lang/Object;
.source "SimpleNetworkClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/SimpleNetworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R!\u0010\u0003\u001a\u00020\u00048FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/beetalk/sdk/networking/SimpleNetworkClient;",
        "getInstance$annotations",
        "getInstance",
        "()Lcom/beetalk/sdk/networking/SimpleNetworkClient;",
        "instance$delegate",
        "Lkotlin/Lazy;",
        "ChimbleGarena-GarenaMSDK_android-arm64-clang-opt"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/networking/SimpleNetworkClient$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/beetalk/sdk/networking/SimpleNetworkClient;
    .locals 1

    invoke-static {}, Lcom/beetalk/sdk/networking/SimpleNetworkClient;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beetalk/sdk/networking/SimpleNetworkClient;

    return-object v0
.end method
