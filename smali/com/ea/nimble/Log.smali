.class public Lcom/ea/nimble/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/Log$Helper;
    }
.end annotation


# static fields
.field public static final COMPONENT_ID:Ljava/lang/String; = "com.ea.nimble.NimbleLog"

.field public static final LEVEL_ALL:I = 0x0

.field public static final LEVEL_DEBUG:I = 0xc8

.field public static final LEVEL_ERROR:I = 0x1f4

.field public static final LEVEL_FATAL:I = 0x258

.field public static final LEVEL_INFO:I = 0x12c

.field public static final LEVEL_SILENT:I = 0x2bc

.field public static final LEVEL_VERBOSE:I = 0x64

.field public static final LEVEL_WARN:I = 0x190

.field private static s_instance:Lcom/ea/nimble/ILog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getComponent()Lcom/ea/nimble/ILog;
    .locals 2

    const-class v0, Lcom/ea/nimble/Log;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ea/nimble/Log;->s_instance:Lcom/ea/nimble/ILog;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ea/nimble/LogImpl;

    invoke-direct {v1}, Lcom/ea/nimble/LogImpl;-><init>()V

    sput-object v1, Lcom/ea/nimble/Log;->s_instance:Lcom/ea/nimble/ILog;

    :cond_0
    sget-object v1, Lcom/ea/nimble/Log;->s_instance:Lcom/ea/nimble/ILog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
