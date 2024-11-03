.class public Lcom/ea/nimble/LogImpl;
.super Lcom/ea/nimble/Component;
.source "LogImpl.java"

# interfaces
.implements Lcom/ea/nimble/ILog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/LogImpl$LogRecord;,
        Lcom/ea/nimble/LogImpl$GuardTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHECK_INTERVAL:I = 0xe10

.field private static final DEFAULT_CONSOLE_OUTPUT_LIMIT:I = 0xfa0

.field private static final DEFAULT_MESSAGE_LENGTH_LIMIT:I = 0x3e8

.field private static final DEFAULT_SIZE_LIMIT:I = 0x400


# instance fields
.field private m_cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ea/nimble/LogImpl$LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private m_callback:Lcom/ea/nimble/ILog$LogCallback;

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_filePath:Ljava/io/File;

.field private m_format:Ljava/text/DateFormat;

.field private m_guardTimer:Lcom/ea/nimble/Timer;

.field private m_interval:I

.field private m_level:I

.field private m_logFileStream:Ljava/io/FileOutputStream;

.field private m_messageLengthLimit:I

.field private m_sizeLimit:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    iput v1, p0, Lcom/ea/nimble/LogImpl;->m_interval:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_callback:Lcom/ea/nimble/ILog$LogCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/LogImpl;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ea/nimble/LogImpl;)I
    .locals 0

    iget p0, p0, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    return p0
.end method

.method static synthetic access$200(Lcom/ea/nimble/LogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->clearLog()V

    return-void
.end method

.method private clearLog()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Nimble"

    const-string v1, "LOG: Can\'t clear log file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private configure()V
    .locals 10

    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    const-string v4, "setting::log"

    invoke-virtual {v3, v4}, Lcom/ea/nimble/BaseCore;->getSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "Nimble"

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->parseLevel(Ljava/lang/String;)I

    move-result v0

    iget v3, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    if-eq v0, v3, :cond_1

    iput v0, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "LOG: Default Log level(%d) without log configuration file"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v6, "Level"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/ea/nimble/LogImpl;->parseLevel(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    if-eq v6, v7, :cond_3

    iput v6, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v2

    const-string v6, "LOG: Log level(%d)"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v6, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    const/16 v7, 0x64

    if-gt v6, v7, :cond_4

    iput v2, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    goto :goto_1

    :cond_4
    const-string v6, "MessageLengthLimit"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x3e8

    if-nez v6, :cond_5

    iput v7, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    if-gez v6, :cond_6

    iput v7, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput v7, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    :cond_6
    :goto_1
    const-string v6, "File"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    if-eqz v0, :cond_8

    :cond_7
    iput-object v5, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    iput-object v5, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    iput v2, p0, Lcom/ea/nimble/LogImpl;->m_interval:I

    const-string v0, "LOG: Disable log to file since no filename provided"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    const-string v0, "Location"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v8

    invoke-interface {v8}, Lcom/ea/nimble/IApplicationEnvironment;->getCachePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "external"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v8, "mounted"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_a
    :goto_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v2, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    :cond_b
    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    if-eq v0, v2, :cond_d

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LOG: File path: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LOG: Can\'t create log file at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    return-void

    :cond_d
    :goto_3
    const-string v0, "DateFormat"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    :goto_4
    const/16 v0, 0xe10

    :try_start_3
    const-string v2, "FileCheckInterval"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ea/nimble/LogImpl;->m_interval:I

    if-gtz v2, :cond_f

    iput v0, p0, Lcom/ea/nimble/LogImpl;->m_interval:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    iput v0, p0, Lcom/ea/nimble/LogImpl;->m_interval:I

    :cond_f
    :goto_5
    const/16 v0, 0x400

    :try_start_4
    const-string v2, "MaxFileSize"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    if-gtz v2, :cond_10

    iput v0, p0, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    iput v0, p0, Lcom/ea/nimble/LogImpl;->m_sizeLimit:I

    :cond_10
    :goto_6
    new-instance v0, Lcom/ea/nimble/LogImpl$GuardTask;

    invoke-direct {v0, p0, v5}, Lcom/ea/nimble/LogImpl$GuardTask;-><init>(Lcom/ea/nimble/LogImpl;Lcom/ea/nimble/LogImpl$1;)V

    invoke-virtual {v0}, Lcom/ea/nimble/LogImpl$GuardTask;->run()V

    new-instance v2, Lcom/ea/nimble/Timer;

    invoke-direct {v2, v0}, Lcom/ea/nimble/Timer;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_interval:I

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/ea/nimble/Timer;->schedule(DZ)V

    return-void
.end method

.method private flushCache()V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ea/nimble/LogImpl$LogRecord;

    iget v2, v1, Lcom/ea/nimble/LogImpl$LogRecord;->level:I

    iget-object v1, v1, Lcom/ea/nimble/LogImpl$LogRecord;->message:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/ea/nimble/LogImpl;->writeLine(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    return-void
.end method

.method private formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    if-eqz v0, :cond_0

    sub-int/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ea/nimble/LogImpl;->m_messageLengthLimit:I

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "... and %d chars more"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    :cond_0
    int-to-double v2, p2

    const-wide v4, 0x40af400000000000L    # 4000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    if-ge v1, p2, :cond_2

    add-int/lit16 v2, v1, 0xfa0

    if-ge v2, p2, :cond_1

    div-int/lit16 v3, v1, 0xfa0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_1

    :cond_1
    div-int/lit16 v3, v1, 0xfa0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private outputMessageToFile(Ljava/lang/String;)V
    .locals 4

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ea/nimble/LogImpl;->m_format:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error writing to log file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Nimble"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private parseLevel(Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x1f4

    const/16 v1, 0x64

    :try_start_0
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_7

    return p1

    :catch_0
    nop

    const-string v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string/jumbo v2, "verbose"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "debug"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 p1, 0xc8

    return p1

    :cond_2
    const-string v2, "info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p1, 0x12c

    return p1

    :cond_3
    const-string/jumbo v2, "warn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 p1, 0x190

    return p1

    :cond_4
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    const-string v2, "fatal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 p1, 0x258

    return p1

    :cond_6
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x2bc

    return p1

    :cond_7
    iget-object p1, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object p1

    sget-object v2, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    if-eq p1, v2, :cond_9

    iget-object p1, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object p1

    sget-object v2, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    if-ne p1, v2, :cond_8

    goto :goto_0

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method private write(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p3, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    new-instance p3, Lcom/ea/nimble/LogImpl$LogRecord;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/ea/nimble/LogImpl$LogRecord;-><init>(Lcom/ea/nimble/LogImpl$1;)V

    iput p1, p3, Lcom/ea/nimble/LogImpl$LogRecord;->level:I

    iput-object p2, p3, Lcom/ea/nimble/LogImpl$LogRecord;->message:Ljava/lang/String;

    iget-object p1, p0, Lcom/ea/nimble/LogImpl;->m_cache:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ea/nimble/LogImpl;->writeLine(ILjava/lang/String;)V

    return-void
.end method

.method private writeLine(ILjava/lang/String;)V
    .locals 7

    const/16 v0, 0x258

    const-string v1, "Nimble"

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    const/16 v3, 0x64

    if-eq p1, v3, :cond_7

    const/16 v3, 0xc8

    if-eq p1, v3, :cond_6

    const/16 v3, 0x12c

    if-eq p1, v3, :cond_5

    const/16 v3, 0x190

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1f4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "NIM(%d)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    :goto_0
    array-length v6, v4

    sub-int/2addr v6, v3

    if-ge v2, v6, :cond_0

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v2

    goto :goto_0

    :cond_0
    invoke-static {v1, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    const-string v4, "NIM_FATAL"

    invoke-direct {p0, v4, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    :goto_1
    array-length v6, v4

    sub-int/2addr v6, v3

    if-ge v2, v6, :cond_2

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    aget-object v5, v4, v2

    goto :goto_1

    :cond_2
    invoke-static {v1, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_3
    const-string v3, "NIM_ERROR"

    invoke-direct {p0, v3, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "NIM_WARN"

    invoke-direct {p0, v3, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_3
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const-string v3, "NIM_INFO"

    invoke-direct {p0, v3, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const-string v3, "NIM_DEBUG"

    invoke-direct {p0, v3, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_5
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-string v3, "NIM_VERBOSE"

    invoke-direct {p0, v3, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_6
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const-string v3, "NIM_ALL"

    invoke-direct {p0, v3, p2}, Lcom/ea/nimble/LogImpl;->formatLine(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_7
    if-ge v2, v4, :cond_9

    aget-object v5, v3, v2

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/ea/nimble/LogImpl;->outputMessageToFile(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    if-lt p1, v0, :cond_b

    iget-object p1, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->INTEGRATION:Lcom/ea/nimble/NimbleConfiguration;

    if-eq p1, v0, :cond_a

    iget-object p1, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p1}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->STAGE:Lcom/ea/nimble/NimbleConfiguration;

    if-eq p1, v0, :cond_a

    goto :goto_9

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_b
    :goto_9
    return-void
.end method


# virtual methods
.method protected connectToCore(Lcom/ea/nimble/BaseCore;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->configure()V

    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->flushCache()V

    return-void
.end method

.method protected disconnectFromCore()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/LogImpl;->m_core:Lcom/ea/nimble/BaseCore;

    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ea.nimble.NimbleLog"

    return-object v0
.end method

.method public getLogFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_filePath:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThresholdLevel()I
    .locals 1

    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    return v0
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->fire()V

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->resume()V

    :cond_0
    return-void
.end method

.method public setLogCallback(Lcom/ea/nimble/ILog$LogCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/LogImpl;->m_callback:Lcom/ea/nimble/ILog$LogCallback;

    return-void
.end method

.method public setThresholdLevel(I)V
    .locals 0

    iput p1, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    return-void
.end method

.method public setup()V
    .locals 0

    invoke-direct {p0}, Lcom/ea/nimble/LogImpl;->configure()V

    return-void
.end method

.method public suspend()V
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->pause()V

    :cond_0
    return-void
.end method

.method public teardown()V
    .locals 3

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ea/nimble/Timer;->cancel()V

    iput-object v1, p0, Lcom/ea/nimble/LogImpl;->m_guardTimer:Lcom/ea/nimble/Timer;

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Nimble"

    const-string v2, "LOG: Can\'t close log file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Lcom/ea/nimble/LogImpl;->m_logFileStream:Ljava/io/FileOutputStream;

    :cond_1
    return-void
.end method

.method public varargs writeWithSource(ILjava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/ea/nimble/LogSource;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/ea/nimble/LogSource;

    invoke-interface {p2}, Lcom/ea/nimble/LogSource;->getLogSourceTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ea/nimble/LogImpl;->writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs writeWithTitle(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p3}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/LogImpl;->m_callback:Lcom/ea/nimble/ILog$LogCallback;

    if-eqz v0, :cond_3

    :cond_0
    array-length v0, p4

    if-lez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    iget p4, p0, Lcom/ea/nimble/LogImpl;->m_level:I

    if-lt p1, p4, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/ea/nimble/LogImpl;->write(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p4, p0, Lcom/ea/nimble/LogImpl;->m_callback:Lcom/ea/nimble/ILog$LogCallback;

    if-eqz p4, :cond_3

    invoke-interface {p4, p1, p2, p3}, Lcom/ea/nimble/ILog$LogCallback;->callback(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
