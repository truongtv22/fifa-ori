.class public Lcom/ea/game/fmp/FMPPermissionUtil;
.super Ljava/lang/Object;
.source "FMPPermissionUtil.java"


# static fields
.field public static final PERMISSION_CODE_INTERNET:I = 0x3

.field public static final PERMISSION_CODE_READ_PHONE_STATE:I = 0x1

.field public static final PERMISSION_CODE_WRITE_EXTERNAL_STORAGE:I = 0x2

.field public static final Permissions:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "FMP_PermissionUtil_Java"

.field static mActivity:Landroid/app/Activity;

.field static mPermImpl:Lcom/ea/game/fmp/IFMPPermissionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.INTERNET"

    const-string v2, ""

    const-string v3, "android.permission.READ_PHONE_STATE"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->Permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckSelfPermission(I)Z
    .locals 3

    invoke-static {p0}, Lcom/ea/game/fmp/FMPPermissionUtil;->GetPermissionFromCode(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckSelfPermission called!  permissionCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FMP_PermissionUtil_Java"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/ea/game/fmp/FMPPermissionUtil;->checkSelfPermission(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static GetCodeFromPermission(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/ea/game/fmp/FMPPermissionUtil;->Permissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static GetPermissionFromCode(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    sget-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->Permissions:[Ljava/lang/String;

    array-length v1, v0

    if-le v1, p0, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static Initialize(Landroid/app/Activity;)V
    .locals 0

    sput-object p0, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/ea/game/fmp/FMPPermissionUtil;->JniInitialise()V

    new-instance p0, Lcom/ea/game/fmp/ChimblePermissionImpl;

    invoke-direct {p0}, Lcom/ea/game/fmp/ChimblePermissionImpl;-><init>()V

    sput-object p0, Lcom/ea/game/fmp/FMPPermissionUtil;->mPermImpl:Lcom/ea/game/fmp/IFMPPermissionImpl;

    return-void
.end method

.method public static IsRuntimePermissionSupport()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "FMP_PermissionUtil_Java"

    const-string v1, "Android version is lower then 6.0 (API 23) that do not support runtime permissions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static native JniCallback(IZ)V
.end method

.method public static native JniInitialise()V
.end method

.method public static native JniRelease()V
.end method

.method public static Release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/ea/game/fmp/FMPPermissionUtil;->JniRelease()V

    return-void
.end method

.method public static RequestPermission(I)V
    .locals 3

    invoke-static {p0}, Lcom/ea/game/fmp/FMPPermissionUtil;->GetPermissionFromCode(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RequestPermissions called!  permissionCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FMP_PermissionUtil_Java"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/ea/game/fmp/FMPPermissionUtil;->requestPermission(ILjava/lang/String;)V

    return-void
.end method

.method public static ShouldShowRequestPermissionRationale(I)Z
    .locals 3

    invoke-static {p0}, Lcom/ea/game/fmp/FMPPermissionUtil;->GetPermissionFromCode(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ShouldShowRequestPermissionRationale called!  permissionCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FMP_PermissionUtil_Java"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/ea/game/fmp/FMPPermissionUtil;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkSelfPermission(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSelfPermission called! permission = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMP_PermissionUtil_Java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ea/game/fmp/FMPPermissionUtil;->IsRuntimePermissionSupport()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v2, p0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_1
    return v1
.end method

.method public static doRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget p2, p2, v1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    array-length v0, p1

    if-lez v0, :cond_1

    aget-object p1, p1, v1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received response for permission request. requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permission = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FMP_PermissionUtil_Java"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/ea/game/fmp/FMPPermissionUtil$1;

    invoke-direct {v0, p0, p2}, Lcom/ea/game/fmp/FMPPermissionUtil$1;-><init>(IZ)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    sget-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->mPermImpl:Lcom/ea/game/fmp/IFMPPermissionImpl;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/ea/game/fmp/IFMPPermissionImpl;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ea/game/fmp/FMPPermissionUtil;->doRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public static requestPermission(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestPermissions called! permission = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMP_PermissionUtil_Java"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->mPermImpl:Lcom/ea/game/fmp/IFMPPermissionImpl;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    invoke-interface {v0, v1, p0, p1}, Lcom/ea/game/fmp/IFMPPermissionImpl;->requestPermission(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ea/game/fmp/FMPPermissionUtil;->IsRuntimePermissionSupport()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array p1, v1, [I

    aput v2, p1, v2

    invoke-static {p0, v0, p1}, Lcom/ea/game/fmp/FMPPermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_0
    return-void
.end method

.method public static setPermissionImpl(Lcom/ea/game/fmp/IFMPPermissionImpl;)V
    .locals 0

    sput-object p0, Lcom/ea/game/fmp/FMPPermissionUtil;->mPermImpl:Lcom/ea/game/fmp/IFMPPermissionImpl;

    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldShowRequestPermissionRationale called!  permission = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FMP_PermissionUtil_Java"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ea/game/fmp/FMPPermissionUtil;->IsRuntimePermissionSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/ea/game/fmp/FMPPermissionUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method
