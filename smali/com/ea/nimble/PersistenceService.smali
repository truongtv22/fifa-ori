.class public Lcom/ea/nimble/PersistenceService;
.super Ljava/lang/Object;
.source "PersistenceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/PersistenceService$PersistenceBackupAgent;,
        Lcom/ea/nimble/PersistenceService$PersistenceMergePolicy;
    }
.end annotation


# static fields
.field private static final APPLICATION_PERSISTENCE_ID:Ljava/lang/String; = "[APPLICATION]"

.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.persistence"

.field private static final NIMBLE_COMPONENT_PERSISTENCE_ID_TEMPLATE:Ljava/lang/String; = "[COMPONENT]%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanReferenceToPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid componentId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for component persistence"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Persistence"

    invoke-static {v0, p0, p1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "[COMPONENT]%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IPersistenceService;->cleanPersistenceReference(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    return-void
.end method

.method public static getAppPersistence(Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
    .locals 2

    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    const-string v1, "[APPLICATION]"

    invoke-interface {v0, v1, p0}, Lcom/ea/nimble/IPersistenceService;->getPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p0

    return-object p0
.end method

.method public static getComponent()Lcom/ea/nimble/IPersistenceService;
    .locals 1

    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getPersistenceService()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    return-object v0
.end method

.method public static getPersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid componentId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for component persistence"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Persistence"

    invoke-static {v0, p0, p1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "[COMPONENT]%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IPersistenceService;->getPersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)Lcom/ea/nimble/Persistence;

    move-result-object p0

    return-object p0
.end method

.method static readBackup(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    sget-object v0, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {p1, v0, p3}, Lcom/ea/nimble/Persistence;->getPersistencePath(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw p0

    :cond_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->isMainApplicationRunning()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object p0

    check-cast p0, Lcom/ea/nimble/PersistenceServiceImpl;

    iget-object p0, p0, Lcom/ea/nimble/PersistenceServiceImpl;->m_persistences:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ea/nimble/Persistence;

    invoke-virtual {p1}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, v0, p2}, Lcom/ea/nimble/Persistence;->restore(ZLandroid/content/Context;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static removePersistenceForNimbleComponent(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid componentId "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " for component persistence"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Persistence"

    invoke-static {v0, p0, p1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "[COMPONENT]%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ea/nimble/PersistenceService;->getComponent()Lcom/ea/nimble/IPersistenceService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/ea/nimble/IPersistenceService;->removePersistence(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;)V

    return-void
.end method

.method static writeBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_0
    throw v0

    :catch_1
    nop

    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_1
    move-wide v8, v4

    const/4 v6, 0x0

    :goto_2
    sget-object v7, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-static {v7, v1}, Lcom/ea/nimble/Persistence;->getPersistenceDirectory(Lcom/ea/nimble/Persistence$Storage;Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "Could not write backup"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "PersistenceService"

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v14, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :goto_4
    new-instance v15, Lcom/ea/nimble/Persistence;

    sget-object v3, Lcom/ea/nimble/Persistence$Storage;->DOCUMENT:Lcom/ea/nimble/Persistence$Storage;

    invoke-direct {v15, v14, v3, v2}, Lcom/ea/nimble/Persistence;-><init>(Ljava/lang/String;Lcom/ea/nimble/Persistence$Storage;Lcom/ea/nimble/Encryptor;)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3, v1}, Lcom/ea/nimble/Persistence;->restore(ZLandroid/content/Context;)V

    invoke-virtual {v15}, Lcom/ea/nimble/Persistence;->getBackUp()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v3, v13, v4

    if-lez v3, :cond_4

    move-wide v4, v13

    :cond_4
    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    :goto_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    if-ne v12, v6, :cond_7

    cmp-long v1, v8, v4

    if-eqz v1, :cond_a

    :cond_7
    const/4 v3, 0x0

    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/Persistence;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v9, v8

    new-array v8, v9, [B

    :try_start_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v11, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    if-lez v6, :cond_8

    invoke-virtual {v1}, Lcom/ea/nimble/Persistence;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v0, v8, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v11

    goto :goto_7

    :catchall_3
    move-exception v0

    :goto_7
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_9
    throw v0

    :cond_a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_4
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-virtual {v1, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    return-void

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_5
    move-exception v0

    :goto_8
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_b
    throw v0
.end method
