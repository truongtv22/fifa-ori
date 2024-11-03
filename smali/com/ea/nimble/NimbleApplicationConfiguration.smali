.class public Lcom/ea/nimble/NimbleApplicationConfiguration;
.super Ljava/lang/Object;
.source "NimbleApplicationConfiguration.java"


# static fields
.field private static final LOG_TITLE:Ljava/lang/String; = "AppConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configValueExists(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Config value of key \'%s\' cannot be retrieved."

    invoke-static {v0, p0, v2}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public static getConfigValueAsBoolean(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getConfigValueAsBoolean(Ljava/lang/String;Z)Z
    .locals 4

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Config value of key \'%s\' cannot be retrieved."

    invoke-static {v0, p0, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public static getConfigValueAsDouble(Ljava/lang/String;)D
    .locals 2

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getConfigValueAsDouble(Ljava/lang/String;D)D
    .locals 4

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Config value of key \'%s\' cannot be retrieved."

    invoke-static {v0, p0, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-wide p1
.end method

.method public static getConfigValueAsInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getConfigValueAsInt(Ljava/lang/String;I)I
    .locals 4

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Config value of key \'%s\' cannot be retrieved."

    invoke-static {v0, p0, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public static getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigValueAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "AppConfig"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Config value of key \'%s\' cannot be retrieved."

    invoke-static {v0, p0, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method
