.class Lcom/ea/game/fmp/ChimblePermissionImpl;
.super Ljava/lang/Object;
.source "FMPPermissionUtil.java"

# interfaces
.implements Lcom/ea/game/fmp/IFMPPermissionImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 6

    const-string p2, "ChimblePermissionImpl.onRequestPermissionsResult"

    const-string v0, "FMP_PermissionUtil_Java"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    aget-object v2, p3, v1

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v2, p3, v1

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, p3, v1

    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-nez p3, :cond_4

    return-void

    :cond_4
    array-length p3, p4

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p3, :cond_6

    aget v2, p4, v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p2

    const-string v5, "%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x1

    :goto_4
    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x4000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public requestPermission(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/ea/nimble/GameSdk;->getComponent()Lcom/ea/nimble/INimbleGameSdk;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string/jumbo p2, "{ \"requestCode\" = %d, \"permissions\" = [ \"%s\" ], \"noExplanation\" = true }"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotifySdkRequestPermission"

    invoke-interface {p1, p3, p2}, Lcom/ea/nimble/INimbleGameSdk;->notifySdk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
