.class final Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;
.super Ljava/lang/Object;
.source "BackupHostFinder.kt"

# interfaces
.implements Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleBackupHostBuilder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;",
        "Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$BackupHostBuilder;",
        "backupHost",
        "",
        "(Ljava/lang/String;)V",
        "build",
        "ChimbleGarena-GarenaMSDK_android-arm64-clang-opt"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final backupHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "backupHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;->backupHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/networking/interceptor/BackupHostFinder$SimpleBackupHostBuilder;->backupHost:Ljava/lang/String;

    return-object v0
.end method
