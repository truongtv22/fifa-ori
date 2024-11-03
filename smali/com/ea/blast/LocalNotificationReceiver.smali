.class public Lcom/ea/blast/LocalNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalNotificationReceiver.java"


# static fields
.field public static final ACTION_SCHEDULE:Ljava/lang/String; = "com.google.android.local.intent.SCHEDULE"

.field public static final LOCAL_NOTIFICATION_BACKGROUND_TAG:Ljava/lang/String; = "local-notification-background-tag"

.field public static final LOCAL_NOTIFICATION_STARTUP_TAG:Ljava/lang/String; = "local-notification-startup-tag"

.field private static final LOG_ERROR_ENABLED:Z = true

.field private static final LOG_INFO_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/LocalNotificationReceiver"

.field public static instance:Lcom/ea/blast/LocalNotificationReceiver;

.field private static sUnhandledBackgroundMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnhandledStartupMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public notificationChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/blast/LocalNotificationReceiver;->notificationChannelId:Ljava/lang/String;

    const-string v0, "LocalNotificationReceiver Constructor"

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    sput-object p0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    return-void
.end method

.method private ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    :goto_0
    if-lez p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private GetPendingIntentFlag(I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    const/high16 v0, 0x4000000

    or-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private static LogError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EAMCore/LocalNotificationReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static LogInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EAMCore/LocalNotificationReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native NativeOnLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method private static native NativeOnPendingLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V
.end method

.method public static createNotificationChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "fo4m_local_push_id"

    const-string v3, "Alarm"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "FIFA Online 4 M"

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object v2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public ClearOSNotificationBarBackground(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "local-notification-background-tag"

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public ClearOSNotificationBarStartup(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "local-notification-startup-tag"

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public ClearPendingBackgroundMessages()V
    .locals 1

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public ClearPendingStartupMessages()V
    .locals 1

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected GenerateNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GenerateNotification iconId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notificationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/blast/LocalNotificationReceiver;->notificationChannelId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ea/blast/LocalNotificationReceiver;->createNotificationChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/LocalNotificationReceiver;->notificationChannelId:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification"

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/ea/blast/LocalNotificationReceiver;->notificationChannelId:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    invoke-direct {p0, v2}, Lcom/ea/blast/LocalNotificationReceiver;->GetPendingIntentFlag(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, p5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p5

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    iget p3, p2, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Landroid/app/Notification;->flags:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, p7, p6, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method protected GenerateNotification(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 11

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "alert_body"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move v9, p3

    move-object v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/ea/blast/LocalNotificationReceiver;->GenerateNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to generate OS notification: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/LocalNotificationReceiver;->LogError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public NotifyPendingBackgroundLocalNotifications()V
    .locals 2

    const-string v0, "NotifyPendingBackgroundLocalNotifications"

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->SendNotification(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public NotifyPendingStartupLocalNotifications(JJ)V
    .locals 8

    const-string v0, "NotifyPendingStartupLocalNotifications"

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Intent;

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/ea/blast/LocalNotificationReceiver;->SendPendingNotification(Landroid/content/Intent;JJ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {p1}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected SendNotification(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "alert_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "alert_action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sound_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "badge_number"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "notification_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/ea/blast/NotificationAndroid;->RemoveNotificationIdFromSchedule(I)Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ea/blast/LocalNotificationReceiver;->NativeOnLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method protected SendPendingNotification(Landroid/content/Intent;JJ)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "alert_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "alert_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "sound_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "badge_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/ea/blast/NotificationAndroid;->RemovePendingNotificationIdFromSchedule(I)V

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lcom/ea/blast/LocalNotificationReceiver;->NativeOnPendingLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    return-void
.end method

.method protected handleLocalNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    if-nez v0, :cond_0

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "local-notification-startup-tag"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->GenerateNotification(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->IsActivityStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "local-notification-background-tag"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->GenerateNotification(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/ea/blast/LocalNotificationReceiver;->SendNotification(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/LocalNotificationReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.local.intent.SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/LocalNotificationReceiver;->handleLocalNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected action: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/LocalNotificationReceiver;->LogError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
