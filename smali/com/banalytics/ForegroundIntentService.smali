.class public abstract Lcom/banalytics/ForegroundIntentService;
.super Landroid/app/IntentService;
.source "ForegroundIntentService.java"


# static fields
.field private static final NOTIFICATION_CHANNEL:Ljava/lang/String; = "seagroup.android.logger"

.field private static final NOTIFICATION_CHANNEL_DESCRIPTION:Ljava/lang/String; = "For logging purpose"

.field private static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Logger"

.field private static final NOTIFICATION_CONTENT:Ljava/lang/String; = "Recording logs"

.field private static final NOTIFICATION_ID:I = 0xf423f

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "Logging"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/banalytics/ForegroundIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Logger"

    const/4 v3, 0x1

    const-string v4, "seagroup.android.logger"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v2, "For logging purpose"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "Logging"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "Recording logs"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0xf423f

    invoke-virtual {p0, v1, v0}, Lcom/banalytics/ForegroundIntentService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
