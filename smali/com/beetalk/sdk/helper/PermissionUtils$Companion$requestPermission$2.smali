.class final Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PermissionUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/helper/PermissionUtils$Companion;->requestPermission(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "shouldShowRationale",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $denyTipRes:I

.field final synthetic $launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $permission:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/Activity;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$denyTipRes:I

    iput-object p2, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$launcher:Landroidx/activity/result/ActivityResultLauncher;

    iput-object p4, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$permission:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$denyTipRes:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$activity:Landroid/app/Activity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$launcher:Landroidx/activity/result/ActivityResultLauncher;

    iget-object v0, p0, Lcom/beetalk/sdk/helper/PermissionUtils$Companion$requestPermission$2;->$permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
