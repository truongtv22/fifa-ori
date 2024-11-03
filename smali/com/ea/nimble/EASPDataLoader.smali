.class public Lcom/ea/nimble/EASPDataLoader;
.super Ljava/lang/Object;
.source "EASPDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/EASPDataLoader$LogEvent;,
        Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDatFile(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static getTrackingDatFilePath()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "EASP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Tracking"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "tracking.dat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Legacy"

    const-string v2, "Could not get Android files directory"

    invoke-static {v1, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Exception closing buffer, for file, %s."

    const-string v3, "Exception closing file stream, for file, %s."

    const/4 v4, 0x0

    const-string v5, "Legacy"

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v6

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, "Attempt to read EASP data file, %s, size %d."

    invoke-static {v5, v9, v8}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v0, v11

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const-string v11, "AES/CBC/NoPadding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v11

    const/16 v12, 0x20

    new-array v12, v12, [B

    const/16 v13, -0x19

    aput-byte v13, v12, v6

    const/16 v14, -0x11

    aput-byte v14, v12, v10

    const/16 v14, -0x7a

    aput-byte v14, v12, v7

    const/4 v14, 0x3

    const/16 v15, 0x5b

    aput-byte v15, v12, v14

    const/4 v14, 0x4

    const/16 v15, 0x6d

    aput-byte v15, v12, v14

    const/4 v14, 0x5

    const/16 v15, -0x57

    aput-byte v15, v12, v14

    const/4 v14, 0x6

    const/16 v15, 0xa

    aput-byte v15, v12, v14

    const/4 v14, 0x7

    const/16 v16, 0x3d

    aput-byte v16, v12, v14

    const/16 v14, 0x39

    const/16 v6, 0x8

    aput-byte v14, v12, v6

    const/16 v14, 0x9

    const/16 v17, 0x32

    aput-byte v17, v12, v14

    const/16 v14, 0xe

    aput-byte v14, v12, v15

    const/16 v15, 0xb

    const/16 v17, -0x5

    aput-byte v17, v12, v15

    const/16 v15, 0xc

    const/16 v17, -0x6c

    aput-byte v17, v12, v15

    const/16 v15, 0xd

    const/16 v10, 0x18

    aput-byte v10, v12, v15

    const/16 v15, -0x1c

    aput-byte v15, v12, v14

    const/16 v14, 0xf

    aput-byte v13, v12, v14

    const/16 v13, -0x3a

    const/16 v14, 0x10

    aput-byte v13, v12, v14

    const/16 v13, 0x11

    const/16 v15, 0x14

    aput-byte v15, v12, v13

    const/16 v13, 0x12

    aput-byte v10, v12, v13

    const/16 v13, 0x13

    const/16 v18, 0x7f

    aput-byte v18, v12, v13

    const/16 v13, 0x3b

    aput-byte v13, v12, v15

    const/16 v13, 0x15

    const/16 v15, -0x6b

    aput-byte v15, v12, v13

    const/16 v13, 0x16

    const/16 v15, -0x7b

    aput-byte v15, v12, v13

    const/16 v13, 0x17

    const/16 v15, -0x26

    aput-byte v15, v12, v13

    const/16 v13, 0x65

    aput-byte v13, v12, v10

    const/16 v13, 0x19

    const/16 v15, 0x2b

    aput-byte v15, v12, v13

    const/16 v13, 0x1a

    const/16 v15, -0x52

    aput-byte v15, v12, v13

    const/16 v13, 0x75

    const/16 v15, 0x1b

    aput-byte v13, v12, v15

    const/16 v13, 0x1c

    aput-byte v15, v12, v13

    const/16 v13, 0x1d

    const/16 v15, -0x3e

    aput-byte v15, v12, v13

    const/16 v13, 0x1e

    const/16 v15, -0x66

    aput-byte v15, v12, v13

    const/16 v13, 0x1f

    const/16 v15, 0x37

    aput-byte v15, v12, v13

    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    const-string v15, "AES"

    invoke-direct {v13, v12, v15}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v12, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v12, v0, v6, v14}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v11, v7, v13, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    sub-int/2addr v4, v10

    invoke-virtual {v11, v0, v10, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {v6, v4, v0}, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v0, v7

    invoke-static {v5, v3, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v7

    invoke-static {v5, v2, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v9, v4

    :goto_2
    move-object v4, v8

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v9, v4

    :goto_3
    move-object v4, v8

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v9, v4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v9, v4

    :goto_4
    :try_start_5
    const-string v6, "Exception reading EASP data file, %s: %s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :goto_5
    if-eqz v4, :cond_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v3, v6}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_0
    :goto_6
    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_7
    if-eqz v9, :cond_1

    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {v5, v2, v3}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_8
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t find EASP data file, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Non-existent or empty file, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "Empty path passed to loadLegacyEASPDatFile"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4
.end method

.method public static loadEADeviceId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/EASP/commoninfo.dat"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->loadDatFile(Ljava/lang/String;)Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;

    move-result-object v0

    iget-object v1, v0, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    const-string v2, "1.00.02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readBooleanByte(Ljava/nio/ByteBuffer;)Z

    invoke-static {v0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Legacy"

    const-string v2, "Exception when trying to load EASP data: %s"

    invoke-static {v0, v2, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_1
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readBooleanByte(Ljava/nio/ByteBuffer;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readLogEvent(Ljava/nio/ByteBuffer;)Lcom/ea/nimble/EASPDataLoader$LogEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;

    invoke-direct {v0}, Lcom/ea/nimble/EASPDataLoader$LogEvent;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readBooleanByte(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_type:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_indexInsideSession:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_dateTimeInNanoseconds:J

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_EAUID:I

    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_randomPart:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_keyType01:I

    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_value01:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_keyType02:I

    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_value02:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_timestamp:J

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_keyType03:I

    invoke-static {p0}, Lcom/ea/nimble/EASPDataLoader;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_value03:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/ea/nimble/EASPDataLoader$LogEvent;->m_userLevel:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception reading LogEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Legacy"

    invoke-static {v2, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const-string v3, "Legacy"

    const/4 v4, 0x0

    if-gt v0, v2, :cond_1

    new-array v2, v0, [B

    invoke-virtual {p0, v2, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p0, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "Read string (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v3, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGDS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Read string exception: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v1

    :goto_1
    return-object p0

    :cond_1
    const-string p0, "String length greater than buffer remaining bytes."

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "String length uint32 corrupt, longer than remaining bytes."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
