.class public final Lcom/beetalk/sdk/helper/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beetalk/sdk/helper/PermissionUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/beetalk/sdk/helper/PermissionUtils;",
        "",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkReadPhoneStatePermission(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->checkReadPhoneStatePermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final checkWriteExternalStoragePermission(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->checkWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)Z
    .locals 1
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

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;I)Z
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

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static final requestPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final requestPermission(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static final requestPermission(Landroid/app/Activity;Ljava/lang/String;II)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static final requestWriteExternalStoragePermission(Landroid/app/Activity;II)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestWriteExternalStoragePermission(Landroid/app/Activity;II)Z

    move-result p0

    return p0
.end method

.method public static final requestWriteExternalStoragePermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;I)Z
    .locals 1
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

    sget-object v0, Lcom/beetalk/sdk/helper/PermissionUtils;->Companion:Lcom/beetalk/sdk/helper/PermissionUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestWriteExternalStoragePermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    move-result p0

    return p0
.end method
