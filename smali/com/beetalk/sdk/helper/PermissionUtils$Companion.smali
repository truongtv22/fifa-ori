.class public final Lcom/beetalk/sdk/helper/PermissionUtils$Companion;
.super Ljava/lang/Object;
.source "PermissionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/helper/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0002J0\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f2\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0003\u0010\u0010\u001a\u00020\u0011H\u0007J,\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J,\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00112\u0008\u0008\u0003\u0010\u0010\u001a\u00020\u0011H\u0007J(\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000f2\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\u0007J\"\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00112\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0011H\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/beetalk/sdk/helper/PermissionUtils$Companion;",
        "",
        "()V",
        "checkReadPhoneStatePermission",
        "",
        "context",
        "Landroid/content/Context;",
        "checkWriteExternalStoragePermission",
        "isPermissionGranted",
        "permission",
        "",
        "requestPermission",
        "activity",
        "Landroid/app/Activity;",
        "launcher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "denyTipRes",
        "",
        "requestAction",
        "Lkotlin/Function1;",
        "",
        "requestCode",
        "requestWriteExternalStoragePermission",
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

    invoke-direct {p0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;-><init>()V

    return-void
.end method

.method private final isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private final requestPermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v0
.end method

.method public static synthetic requestPermission$default(Lcom/beetalk/sdk/helper/PermissionUtils$Companion;Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic requestPermission$default(Lcom/beetalk/sdk/helper/PermissionUtils$Companion;Landroid/app/Activity;Ljava/lang/String;IIILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final checkReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final checkWriteExternalStoragePermission(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, p1, v0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission$default(Lcom/beetalk/sdk/helper/PermissionUtils$Companion;Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;IILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;-><init>(ILandroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p3, v0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public final requestPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission$default(Lcom/beetalk/sdk/helper/PermissionUtils$Companion;Landroid/app/Activity;Ljava/lang/String;IIILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final requestPermission(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission$default(Lcom/beetalk/sdk/helper/PermissionUtils$Companion;Landroid/app/Activity;Ljava/lang/String;IIILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final requestPermission(Landroid/app/Activity;Ljava/lang/String;II)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$1;-><init>(ILandroid/app/Activity;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, p2, v0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1
.end method

.method public final requestWriteExternalStoragePermission(Landroid/app/Activity;II)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public final requestWriteExternalStoragePermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
