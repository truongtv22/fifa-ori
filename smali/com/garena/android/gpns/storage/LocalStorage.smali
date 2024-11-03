.class public final Lcom/garena/android/gpns/storage/LocalStorage;
.super Ljava/lang/Object;
.source "LocalStorage.java"


# static fields
.field private static final ACK_MSG_LIST:Ljava/lang/String; = "ACK_MSG_LIST"

.field private static final CONNECTION_ADDRESS:Ljava/lang/String; = "CONNECTION_ADDRESS"

.field private static final CONNECTION_ID:Ljava/lang/String; = "CONNECTION_ID"

.field private static final DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field private static final LAST_REGION_REFRESH_TIME:Ljava/lang/String; = "LAST_REGION_REFRESH_TIME"

.field private static final REGIONAL_SERVER_ADDRESS:Ljava/lang/String; = "REGIONAL_SERVER_ADDRESS"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcknowledgedMsgList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v1, "ACK_MSG_LIST"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAuthServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "REGIONAL_SERVER_ADDRESS"

    const-string v1, "gpushsg1.beetalkmobile.com:10086"

    invoke-virtual {p0, v0, v1}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "CONNECTION_ADDRESS"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionId(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "CONNECTION_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceId(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "DEVICE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceIdString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/garena/android/gpns/storage/LocalStorage;->getDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getRegionRequestTime(Landroid/content/Context;)J
    .locals 3

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "LAST_REGION_REFRESH_TIME"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static putAcknowledgedMsgList(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string p1, "ACK_MSG_LIST"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveConnectionAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "CONNECTION_ADDRESS"

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveConnectionId(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "CONNECTION_ID"

    invoke-virtual {p0, v0, p1, p2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setAuthServerAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "REGIONAL_SERVER_ADDRESS"

    invoke-virtual {p0, v0, p1}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDeviceId(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "DEVICE_ID"

    invoke-virtual {p0, v0, p1, p2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static updateRegionRequestTime(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    move-result-object p0

    const-string v0, "LAST_REGION_REFRESH_TIME"

    invoke-virtual {p0, v0, p1, p2}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->putLong(Ljava/lang/String;J)V

    return-void
.end method
