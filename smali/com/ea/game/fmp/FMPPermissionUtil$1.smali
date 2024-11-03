.class Lcom/ea/game/fmp/FMPPermissionUtil$1;
.super Ljava/lang/Object;
.source "FMPPermissionUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/game/fmp/FMPPermissionUtil;->doRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$final_code:I

.field final synthetic val$final_result:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lcom/ea/game/fmp/FMPPermissionUtil$1;->val$final_code:I

    iput-boolean p2, p0, Lcom/ea/game/fmp/FMPPermissionUtil$1;->val$final_result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "FMP_PermissionUtil_Java"

    const-string v1, "Call Permission callback function in UIThread!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ea/game/fmp/FMPPermissionUtil$1;->val$final_code:I

    iget-boolean v1, p0, Lcom/ea/game/fmp/FMPPermissionUtil$1;->val$final_result:Z

    invoke-static {v0, v1}, Lcom/ea/game/fmp/FMPPermissionUtil;->JniCallback(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
