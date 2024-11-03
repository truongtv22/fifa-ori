.class Lcom/ea/blast/NotificationAndroid;
.super Ljava/lang/Object;
.source "NotificationAndroid.java"


# static fields
.field private static final LOCAL_NOTIFICATION_SAVE_FILE:Ljava/lang/String; = "EAScheduledLocalNotifications"

.field private static final LOCAL_NOTIFICATION_SCHEDULE_INTENT:Ljava/lang/String; = "com.google.android.local.intent.SCHEDULE"

.field private static final LOG_ERROR_ENABLED:Z = true

.field private static final LOG_INFO_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/NotificationAndroid"

.field public static final NOTIFICATION_FIELD_ALERT_ACTION:Ljava/lang/String; = "alert_action"

.field public static final NOTIFICATION_FIELD_ALERT_BODY:Ljava/lang/String; = "alert_body"

.field public static final NOTIFICATION_FIELD_BADGE_NUMBER:Ljava/lang/String; = "badge_number"

.field public static final NOTIFICATION_FIELD_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final NOTIFICATION_FIELD_SOUND_NAME:Ljava/lang/String; = "sound_name"

.field private static NotificationIdLock:Ljava/lang/Object; = null

.field private static final REGISTER_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field private static final UNREGISTER_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"

.field private static mFirstPendingNotificationCheck:Z = true


# instance fields
.field private mRNG:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NotificationAndroid Constructor"

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/ea/blast/NotificationAndroid;->mRNG:Ljava/util/Random;

    return-void
.end method

.method private AddNotificationIdToSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddNotificationIdToSchedule notificationId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p5}, Lcom/ea/blast/NotificationAndroid;->IsNotificationIdAvailable(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "AddNotificationIdToSchedule: Notification Id already in use."

    invoke-static {p1}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v3, "EAScheduledLocalNotifications"

    invoke-virtual {v1, v3, v2}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private GeneratePendingIntentFromLocalNotificationData(I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.local.intent.SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-class v2, Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ea/blast/NotificationAndroid;->GetPendingIntentFlag(I)I

    move-result v1

    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-static {v2, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private GeneratePendingIntentFromLocalNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.local.intent.SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-class v2, Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "alert_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "alert_action"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "sound_name"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "badge_number"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "notification_id"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ea/blast/NotificationAndroid;->GetPendingIntentFlag(I)I

    move-result p1

    sget-object p2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-static {p2, p5, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
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

.method private static IsNotificationIdAvailable(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsNotificationIdAvailable notificationId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "EAScheduledLocalNotifications"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static LogError(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EAMCore/NotificationAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static LogInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EAMCore/NotificationAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native NativeOnNotifyOpenUrl(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public static RemoveNotificationIdFromSchedule(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoveNotificationIdFromSchedule notificationId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ea/blast/NotificationAndroid;->IsNotificationIdAvailable(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "RemoveNotificationIdFromSchedule: Notification Id does not exist."

    invoke-static {p0}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    monitor-exit v0

    return v2

    :cond_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v3, "EAScheduledLocalNotifications"

    invoke-virtual {v1, v3, v2}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static RemovePendingNotificationIdFromSchedule(I)V
    .locals 1

    sget-boolean v0, Lcom/ea/blast/NotificationAndroid;->mFirstPendingNotificationCheck:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/ea/blast/NotificationAndroid;->RemoveNotificationIdFromSchedule(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public CancelAllLocalNotifications()V
    .locals 6

    sget-object v0, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v2, "EAScheduledLocalNotifications"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/ea/blast/NotificationAndroid;->GeneratePendingIntentFromLocalNotificationData(I)Landroid/app/PendingIntent;

    move-result-object v3

    sget-object v4, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public CancelLocalNotification(I)Z
    .locals 2

    invoke-static {p1}, Lcom/ea/blast/NotificationAndroid;->RemoveNotificationIdFromSchedule(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "CancelLocalNotification: Failed to remove notification from schedule list."

    invoke-static {p1}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/blast/NotificationAndroid;->GeneratePendingIntentFromLocalNotificationData(I)Landroid/app/PendingIntent;

    move-result-object p1

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public GenerateUniqueNotificationId()I
    .locals 3

    sget-object v0, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/NotificationAndroid;->mRNG:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/ea/blast/NotificationAndroid;->IsNotificationIdAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public GetAllLocalNotifications()[Ljava/lang/Object;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/ea/blast/NotificationAndroid;->NotificationIdLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v3, "EAScheduledLocalNotifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ea/blast/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    :try_start_1
    new-instance v6, Lorg/json/JSONArray;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ""

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ""

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "0"

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v5, "GetAllLocalNotifications: Error parsing saved data."

    invoke-static {v5}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public NotifyPendingBackgroundLocalNotifications()V
    .locals 2

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBarBackground(Landroid/content/Context;)V

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/LocalNotificationReceiver;->NotifyPendingBackgroundLocalNotifications()V

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/LocalNotificationReceiver;->ClearPendingBackgroundMessages()V

    :cond_0
    return-void
.end method

.method public NotifyPendingBackgroundPushNotifications()V
    .locals 2

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBarBackground(Landroid/content/Context;)V

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/C2DMReceiver;->NotifyPendingBackgroundPushNotifications()V

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/C2DMReceiver;->ClearPendingBackgroundMessages()V

    :cond_0
    return-void
.end method

.method public NotifyPendingStartupLocalNotifications(JJ)V
    .locals 2

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/LocalNotificationReceiver;->ClearOSNotificationBarStartup(Landroid/content/Context;)V

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ea/blast/LocalNotificationReceiver;->NotifyPendingStartupLocalNotifications(JJ)V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/ea/blast/NotificationAndroid;->mFirstPendingNotificationCheck:Z

    :cond_0
    return-void
.end method

.method public NotifyPendingStartupPushNotifications(JJ)V
    .locals 2

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, v1}, Lcom/ea/blast/C2DMReceiver;->ClearOSNotificationBarStartup(Landroid/content/Context;)V

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ea/blast/C2DMReceiver;->NotifyPendingStartupPushNotifications(JJ)V

    :cond_0
    return-void
.end method

.method public RegisterApplicationForNotifications(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterApplicationForNotifications - Starting Registration Service, senderEmail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ea/blast/NotificationAndroid;->GetPendingIntentFlag(I)I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "app"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "sender"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public ScheduleLocalNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ea/blast/NotificationAndroid;->AddNotificationIdToSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "ScheduleLocalNotification: Failed to add notification to schedule list."

    invoke-static {p1}, Lcom/ea/blast/NotificationAndroid;->LogError(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, p5}, Ljava/util/Calendar;->add(II)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/ea/blast/NotificationAndroid;->GeneratePendingIntentFromLocalNotificationData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/app/PendingIntent;

    move-result-object p1

    sget-object p2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string p3, "alarm"

    invoke-virtual {p2, p3}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {p2, v1, p3, p4, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public UnregisterApplicationForNotifications()V
    .locals 5

    const-string v0, "UnregisterApplicationForNotifications - Starting Unregistration Service"

    invoke-static {v0}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/ea/blast/NotificationAndroid;->GetPendingIntentFlag(I)I

    move-result v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "app"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/C2DMReceiver;->ClearPendingStartupMessages()V

    sget-object v0, Lcom/ea/blast/C2DMReceiver;->instance:Lcom/ea/blast/C2DMReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/C2DMReceiver;->ClearPendingBackgroundMessages()V

    :cond_1
    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/LocalNotificationReceiver;->ClearPendingStartupMessages()V

    sget-object v0, Lcom/ea/blast/LocalNotificationReceiver;->instance:Lcom/ea/blast/LocalNotificationReceiver;

    invoke-virtual {v0}, Lcom/ea/blast/LocalNotificationReceiver;->ClearPendingBackgroundMessages()V

    :cond_2
    return-void
.end method

.method public VerifyUrlLaunch()V
    .locals 4

    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LaunchUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/ea/blast/NotificationAndroid;->NativeOnNotifyOpenUrl(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
