.class public final enum Lcom/facebook/share/internal/CameraEffectFeature;
.super Ljava/lang/Enum;
.source "CameraEffectFeature.kt"

# interfaces
.implements Lcom/facebook/internal/DialogFeature;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/share/internal/CameraEffectFeature;",
        ">;",
        "Lcom/facebook/internal/DialogFeature;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/share/internal/CameraEffectFeature;",
        "",
        "Lcom/facebook/internal/DialogFeature;",
        "minVersion",
        "",
        "(Ljava/lang/String;II)V",
        "getAction",
        "",
        "getMinVersion",
        "SHARE_CAMERA_EFFECT",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/internal/CameraEffectFeature;

.field public static final enum SHARE_CAMERA_EFFECT:Lcom/facebook/share/internal/CameraEffectFeature;


# instance fields
.field private final minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/share/internal/CameraEffectFeature;

    new-instance v1, Lcom/facebook/share/internal/CameraEffectFeature;

    const-string v2, "SHARE_CAMERA_EFFECT"

    const v3, 0x133c6b1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/facebook/share/internal/CameraEffectFeature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/share/internal/CameraEffectFeature;->SHARE_CAMERA_EFFECT:Lcom/facebook/share/internal/CameraEffectFeature;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/share/internal/CameraEffectFeature;->$VALUES:[Lcom/facebook/share/internal/CameraEffectFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/share/internal/CameraEffectFeature;->minVersion:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/internal/CameraEffectFeature;
    .locals 1

    const-class v0, Lcom/facebook/share/internal/CameraEffectFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/internal/CameraEffectFeature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/share/internal/CameraEffectFeature;
    .locals 1

    sget-object v0, Lcom/facebook/share/internal/CameraEffectFeature;->$VALUES:[Lcom/facebook/share/internal/CameraEffectFeature;

    invoke-virtual {v0}, [Lcom/facebook/share/internal/CameraEffectFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/internal/CameraEffectFeature;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.facebook.platform.action.request.CAMERA_EFFECT"

    return-object v0
.end method

.method public getMinVersion()I
    .locals 1

    iget v0, p0, Lcom/facebook/share/internal/CameraEffectFeature;->minVersion:I

    return v0
.end method
