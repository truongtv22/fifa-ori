.class public Lcom/ea/blast/C2DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMReceiver.java"


# static fields
.field public static final ACTION_RECEIVE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REGISTRATION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field public static final C2DM_NOTIFICATION_BACKGROUND_TAG:Ljava/lang/String; = "c2dm-notification-background-tag"

.field public static final C2DM_NOTIFICATION_STARTUP_TAG:Ljava/lang/String; = "c2dm-notification-startup-tag"

.field private static final LOG_ERROR_ENABLED:Z = false

.field private static final LOG_INFO_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/C2DMReceiver"

.field public static instance:Lcom/ea/blast/C2DMReceiver;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "C2DMReceiver Constructor"

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    sput-object p0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

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

.method private HandleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "handleMessage "

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->OnNotification(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    if-nez v2, :cond_0

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const-string v0, "c2dm-notification-startup-tag"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/ea/blast/C2DMReceiver;->GenerateNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2}, Lcom/ea/blast/MainActivity;->IsActivityStopped()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const-string v0, "c2dm-notification-background-tag"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/ea/blast/C2DMReceiver;->GenerateNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ea/blast/C2DMReceiver;->NativeOnMessage(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "C2DMReceiver:HandleMessage : unsatisfied link"

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private HandleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "Registered: "

    const-string v0, "Unregistered: "

    const-string v1, "Error: "

    const-string v2, "registration_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "unregistered"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_0

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ea/blast/C2DMReceiver;->NativeOnRegistrationError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-static {}, Lcom/ea/blast/C2DMReceiver;->NativeOnUnregistered()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ea/blast/C2DMReceiver;->NativeOnRegistered(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "Unexpected handleRegistration extras"

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "C2DMReceiver:HandleRegistration : unsatisfied link"

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static LogError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static LogInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static native NativeOnMessage(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method private static native NativeOnPendingMessage(Landroid/content/Intent;Ljava/lang/String;JJ)V
.end method

.method private static native NativeOnRegistered(Ljava/lang/String;)V
.end method

.method private static native NativeOnRegistrationError(Ljava/lang/String;)V
.end method

.method private static native NativeOnUnregistered()V
.end method

.method private NotifyPendingPushNotifications(Ljava/util/List;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;JJ)V"
        }
    .end annotation

    const-string v0, "NotifyPendingPushNotifications"

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pending Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/ea/blast/C2DMReceiver;->NativeOnPendingMessage(Landroid/content/Intent;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ClearOSNotificationBarBackground(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "c2dm-notification-background-tag"

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public ClearOSNotificationBarStartup(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "c2dm-notification-startup-tag"

    invoke-direct {p0, p1, v1, v0}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBar(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public ClearPendingBackgroundMessages()V
    .locals 1

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public ClearPendingStartupMessages()V
    .locals 1

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "eamobile-message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
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

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ic_stat"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_notif"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ea/blast/C2DMReceiver;->GetPendingIntentFlag(I)I

    move-result v3

    invoke-static {p1, v2, p5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

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

    const-string p3, "notification"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, p7, p6, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method protected GenerateNotification(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
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

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v9, p3

    move-object v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/ea/blast/C2DMReceiver;->GenerateNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
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

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public NotifyPendingBackgroundPushNotifications()V
    .locals 5

    const-string v0, "NotifyPendingBackgroundPushNotifications"

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledBackgroundMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ea/blast/C2DMReceiver;->NativeOnMessage(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public NotifyPendingStartupPushNotifications(JJ)V
    .locals 8

    const-string v0, "NotifyPendingStartupPushNotifications"

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->sUnhandledStartupMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/ea/blast/C2DMReceiver;->ExtractPayload(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pending Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lcom/ea/blast/C2DMReceiver;->NativeOnPendingMessage(Landroid/content/Intent;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "C2DMReceiver:NotifyPendingPushNotifications : unsatisfied link"

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected OnNotification(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
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

    invoke-static {v0}, Lcom/ea/blast/C2DMReceiver;->LogInfo(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->HandleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ea/blast/C2DMReceiver;->HandleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected action: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ea/blast/C2DMReceiver;->LogError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
