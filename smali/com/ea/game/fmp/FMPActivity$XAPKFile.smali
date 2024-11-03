.class Lcom/ea/game/fmp/FMPActivity$XAPKFile;
.super Ljava/lang/Object;
.source "FMPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/game/fmp/FMPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XAPKFile"
.end annotation


# instance fields
.field public final mFileSize:J

.field public final mFileVersion:I

.field public final mIsMain:Z


# direct methods
.method constructor <init>(ZIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/ea/game/fmp/FMPActivity$XAPKFile;->mIsMain:Z

    iput p2, p0, Lcom/ea/game/fmp/FMPActivity$XAPKFile;->mFileVersion:I

    iput-wide p3, p0, Lcom/ea/game/fmp/FMPActivity$XAPKFile;->mFileSize:J

    return-void
.end method
