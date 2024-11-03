.class public final Lcom/garena/android/push/NotificationData$NotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/garena/android/push/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotificationBuilder"
.end annotation


# instance fields
.field private defaults:I

.field private message:Ljava/lang/String;

.field private notificationId:I

.field private packageName:Ljava/lang/String;

.field private priority:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->defaults:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->priority:I

    return-void
.end method


# virtual methods
.method public build()Lcom/garena/android/push/NotificationData;
    .locals 8

    new-instance v7, Lcom/garena/android/push/NotificationData;

    iget-object v1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->notificationId:I

    iget-object v4, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->title:Ljava/lang/String;

    iget v5, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->priority:I

    iget v6, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->defaults:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/garena/android/push/NotificationData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v7
.end method

.method public setDefaults(I)Lcom/garena/android/push/NotificationData$NotificationBuilder;
    .locals 0

    iput p1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->defaults:I

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/garena/android/push/NotificationData$NotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setNotificationId(I)Lcom/garena/android/push/NotificationData$NotificationBuilder;
    .locals 0

    iput p1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->notificationId:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/garena/android/push/NotificationData$NotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPriority(I)Lcom/garena/android/push/NotificationData$NotificationBuilder;
    .locals 0

    iput p1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->priority:I

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/garena/android/push/NotificationData$NotificationBuilder;
    .locals 0

    iput-object p1, p0, Lcom/garena/android/push/NotificationData$NotificationBuilder;->title:Ljava/lang/String;

    return-object p0
.end method
