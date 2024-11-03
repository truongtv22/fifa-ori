.class public Lcom/ea/nimble/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"

# interfaces
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/Persistence$Storage;
    }
.end annotation


# static fields
.field private static PERSISTENCE_VERSION:I = 0x65

.field static final s_dataLock:Ljava/lang/Object;


# instance fields
.field private m_backUp:Z

.field private m_changed:Z

.field private m_content:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private m_encryption:Z

.field private m_encryptor:Lcom/ea/nimble/Encryptor;

.field private m_identifier:Ljava/lang/String;

.field private m_storage:Lcom/ea/nimble/Persistence$Storage;

.field private m_synchronizeTimer:Lcom/ea/nimble/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/ea/nimble/Persistence;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/Persistence$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/Persistence$1;-><init>(Lcom/ea/nimble/Persistence;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object p2, p1, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    iget-object p2, p1, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    iget-boolean p2, p1, Lcom/ea/nimble/Persistence;->m_encryption:Z

    iput-boolean p2, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    iget-boolean p1, p1, Lcom/ea/nimble/Persistence;->m_backUp:Z

    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Lcom/ea/nimble/Encryptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ea/nimble/Timer;

    new-instance v1, Lcom/ea/nimble/Persistence$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/Persistence$1;-><init>(Lcom/ea/nimble/Persistence;)V

    invoke-direct {v0, v1}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    iput-object p1, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    iput-object p3, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_changed:Z

    return-void
.end method

.method private clearSynchronizeTimer()V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v1}, Lcom/ea/nimble/Timer;->cancel()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private flagChange()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_changed:Z

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->clearSynchronizeTimer()V

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_synchronizeTimer:Lcom/ea/nimble/Timer;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;)Ljava/io/File;
    .locals 8

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    sget-object v1, Lcom/ea/nimble/Persistence$2;->$SwitchMap$com$ea$nimble$Persistence$Storage:[I

    invoke-virtual {p0}, Lcom/ea/nimble/Persistence$Storage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Persistence"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    const/4 v7, 0x3

    if-eq v1, v7, :cond_0

    const-string p0, "Unknown storage type"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getTempPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getCachePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "persistence"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v6

    const-string p0, "Cannot create persistence folder in storage(%s) %s"

    invoke-static {v4, p0, v0}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_3
    return-object v1
.end method

.method static getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/io/File;
    .locals 7

    sget-object v0, Lcom/ea/nimble/Persistence$2;->$SwitchMap$com$ea$nimble$Persistence$Storage:[I

    invoke-virtual {p0}, Lcom/ea/nimble/Persistence$Storage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "Nimble"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const-string p0, "Persistence : Unknown storage type"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v4

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-array p1, v2, [Ljava/lang/Object;

    aput-object p0, p1, v0

    const-string p0, "Persistence : Could not build base path for storage(%s)"

    invoke-static {v3, p0, p1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_3
    const-string v5, "com.ea.nimble.configuration"

    invoke-static {v5}, Lcom/ea/nimble/NimbleApplicationConfiguration;->getConfigValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "persistence"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v5, Lcom/ea/nimble/Persistence$Storage;->TEMP:Lcom/ea/nimble/Persistence$Storage;

    if-ne p0, v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "temp"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v2

    const-string p0, "Persistence : Cannot create persistence folder in storage(%s) %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    return-object v5
.end method

.method static getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/ea/nimble/Persistence;->getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/ea/nimble/Persistence;->getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".dat"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private loadPersistenceData(ZLandroid/content/Context;)V
    .locals 9

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p2, v0}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v0, v1, p2}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v5, "Loading persistence file size %d"

    invoke-static {p0, v5, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    sget v6, Lcom/ea/nimble/Persistence;->PERSISTENCE_VERSION:I

    if-ne v1, v6, :cond_5

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    if-nez p1, :cond_4

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    invoke-virtual {v1, p1}, Lcom/ea/nimble/Encryptor;->encryptInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    :goto_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    const-string v1, "Persistence file for id[%s] restored from storage %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v7}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p0, v1, v6}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    :cond_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :cond_5
    :try_start_3
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "com.ea.nimble.Persistence"

    const-string v1, "Persistence version doesn\'t match"

    invoke-direct {p1, v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    move-object v1, v5

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_2
    :try_start_4
    const-string v0, "Can\'t read persistence (%s) file, %s: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v6, v5, v4

    aput-object p2, v5, v3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v2

    invoke-static {p0, v0, v5}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_7
    throw p1

    :cond_8
    :goto_5
    new-array p1, v2, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object p2, p1, v4

    iget-object p2, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {p2}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "No persistence file for id[%s] to restore from storage %s"

    invoke-static {p0, p2, p1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    :cond_0
    return-void
.end method

.method private savePersistenceData()V
    .locals 13

    const-string v0, "Fail to save persistence file for id[%s] in storage %s: %s"

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget v8, Lcom/ea/nimble/Persistence;->PERSISTENCE_VERSION:I

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-boolean v8, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v8, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    invoke-virtual {v6, v8}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-boolean v9, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/ea/nimble/Persistence;->m_encryptor:Lcom/ea/nimble/Encryptor;

    invoke-virtual {v9, v8}, Lcom/ea/nimble/Encryptor;->encryptOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;

    move-result-object v8

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v9

    :goto_0
    iget-object v9, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-virtual {v8, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    const-string v9, "Synchronize persistence for id[%s] in storage %s"

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v11, v10, v5

    iget-object v11, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v11}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {p0, v9, v10}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v6, v7

    goto :goto_5

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_2
    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v8, v1, v5

    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v8}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    if-eqz v7, :cond_2

    goto :goto_1

    :catch_3
    move-exception v7

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v8, v1, v5

    iget-object v8, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v8}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_1

    :catch_4
    :cond_2
    :goto_4
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "Saving persistence file size %d"

    invoke-static {p0, v1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_5
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :catch_5
    :cond_3
    throw v0
.end method


# virtual methods
.method public varargs addEntries([Ljava/lang/Object;)V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    rem-int/lit8 v4, v3, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    if-nez v4, :cond_1

    :try_start_1
    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid key"

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string p1, "Invalid key in NimblePersistence.addEntries at index %d, not a string"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    aget-object v4, p1, v3

    check-cast v4, Ljava/io/Serializable;

    invoke-direct {p0, v2, v4}, Lcom/ea/nimble/Persistence;->putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    :try_start_4
    const-string p1, "Invalid value for key %s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {p0, p1, v4}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Invalid value in NimblePersistence.addEntries at index %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p0, p1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public addEntriesFromMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string v1, "Invalid key %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Invalid key in NimblePersistence.addEntriesInDictionary, not a string, skip it"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-direct {p0, v2, v1}, Lcom/ea/nimble/Persistence;->putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_1
    :try_start_2
    const-string v1, "Invalid key %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {p0, v1, v3}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Invalid value in NimblePersistence.addEntries for key"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public clean()V
    .locals 6

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->clearSynchronizeTimer()V

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v1, v2}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Fail to clean persistence file for id[%s] in storage %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v3}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "Could not get path to persistence for id[%s] in storage %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {v3}, Lcom/ea/nimble/Persistence$Storage;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {p0, v1, v4}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBackUp()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    return v0
.end method

.method public getBoolValue(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Invalid value type for getBoolValue"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getEncryption()Z
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Persistence"

    return-object v0
.end method

.method public getStorage()Lcom/ea/nimble/Persistence$Storage;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/ea/nimble/Persistence;->getValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :try_start_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Invalid value type for getStringValueCall"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 5

    const-string v0, "PERSIST: Exception getting value, "

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v1, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method merge(Lcom/ea/nimble/Persistence;Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;)V
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence$2;->$SwitchMap$com$ea$nimble$PersistenceService$PersistenceMergePolicy:[I

    invoke-virtual {p2}, Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    iget-object v2, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    iget-object p1, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-direct {p2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    :cond_4
    :goto_1
    return-void
.end method

.method restore(ZLandroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/Persistence;->loadPersistenceData(ZLandroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBackUp(Z)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    sget-object v1, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error: Backup flag not supported for storage: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ea/nimble/Persistence;->m_storage:Lcom/ea/nimble/Persistence$Storage;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    return-void
.end method

.method public setEncryption(Z)V
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/ea/nimble/Persistence;->m_encryption:Z

    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 5

    const-string v0, "Value "

    const-string v1, "Key "

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v2, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid string"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "NimblePersistence cannot accept an invalid string as key"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v2

    return-void

    :cond_0
    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ea/nimble/Persistence;->m_content:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->flagChange()V

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/Persistence;->putValue(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was unable to be archived"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "NimblePersistence cannot archive value"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public synchronize()V
    .locals 5

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    sget-object v0, Lcom/ea/nimble/Persistence;->s_dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/ea/nimble/Persistence;->m_changed:Z

    if-nez v1, :cond_0

    const-string v1, "Not synchronizing to persistence for id[%s] since there is no change"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/Persistence;->m_identifier:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->clearSynchronizeTimer()V

    invoke-direct {p0}, Lcom/ea/nimble/Persistence;->savePersistenceData()V

    iget-boolean v1, p0, Lcom/ea/nimble/Persistence;->m_backUp:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/app/backup/BackupManager;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v2

    invoke-interface {v2}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
