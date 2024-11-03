.class Lcom/ea/nimble/Encryptor;
.super Ljava/lang/Object;
.source "Encryptor.java"


# static fields
.field private static ENCRYPTION_KEY_LENGHT:I = 0x80

.field private static ENCRYPTION_KEY_ROUND:I = 0x3e5


# instance fields
.field private m_decryptor:Ljavax/crypto/Cipher;

.field private m_encryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    return-void
.end method

.method private initialize()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "PBEWithMD5AndDES"

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cryptor Provider: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider$Service;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Cryptor Algorithm: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/ea/nimble/Log$Helper;->LOGIS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationBundleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/ea/nimble/IApplicationEnvironment;->getMACAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    if-nez v1, :cond_5

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_3
    array-length v10, v7

    if-ge v9, v10, :cond_3

    const-string v10, "%02X:"

    new-array v11, v4, [Ljava/lang/Object;

    aget-byte v12, v7, v9

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    nop

    :cond_5
    if-eqz v1, :cond_8

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v6, 0x8

    new-array v7, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v8, v6, :cond_7

    add-int/lit8 v10, v9, 0x1

    rem-int/lit8 v11, v10, 0x3

    if-nez v11, :cond_6

    move v9, v10

    :cond_6
    aget-byte v10, v1, v9

    aput-byte v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v6, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sget v8, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_ROUND:I

    sget v9, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_LENGHT:I

    invoke-direct {v6, v2, v7, v8, v9}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v1, v6}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    sget v6, Lcom/ea/nimble/Encryptor;->ENCRYPTION_KEY_ROUND:I

    invoke-direct {v2, v7, v6}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    iput-object v6, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    invoke-virtual {v6, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t initialize Encryptor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGFS(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public encryptInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/Encryptor;->initialize()V

    :cond_1
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    iget-object v2, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public encryptOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/Encryptor;->m_decryptor:Ljavax/crypto/Cipher;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ea/nimble/Encryptor;->initialize()V

    :cond_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    iget-object v2, p0, Lcom/ea/nimble/Encryptor;->m_encryptor:Ljavax/crypto/Cipher;

    invoke-direct {v1, p1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
