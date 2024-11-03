.class public Lcom/ea/EAAudioCore/AndroidEAAudioCore;
.super Ljava/lang/Object;
.source "AndroidEAAudioCore.java"


# static fields
.field public static sAudioTrack:Landroid/media/AudioTrack; = null

.field private static sInit:Z = false

.field private static sIsOtherMusicPlaying:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native Init(Landroid/media/AudioTrack;IIII)V
.end method

.method private static native Release()V
.end method

.method public static Shutdown()V
    .locals 1

    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    sget-object v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    invoke-static {}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Release()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    const/4 v0, -0x1

    sput v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    :cond_0
    return-void
.end method

.method public static Startup()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup(I)V

    return-void
.end method

.method public static Startup(I)V
    .locals 11

    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    const/4 p0, 0x2

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v1

    const/4 v9, 0x1

    if-ne p0, v9, :cond_1

    const/4 v2, 0x4

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/16 v2, 0xc

    const/16 v5, 0xc

    :goto_0
    invoke-static {v1, v5, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    new-instance v10, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x2

    move-object v2, v10

    move v4, v1

    move v7, v0

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v10, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sAudioTrack:Landroid/media/AudioTrack;

    mul-int/lit8 v2, p0, 0x2

    div-int/2addr v0, v2

    sget v2, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    invoke-static {v10, v0, p0, v1, v2}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Init(Landroid/media/AudioTrack;IIII)V

    sput-boolean v9, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    :cond_2
    return-void
.end method

.method public static Startup(Landroid/app/Activity;I)V
    .locals 1

    sget-boolean v0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sInit:Z

    if-nez v0, :cond_1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    sput p0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    sput p0, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->sIsOtherMusicPlaying:I

    :goto_0
    invoke-static {p1}, Lcom/ea/EAAudioCore/AndroidEAAudioCore;->Startup(I)V

    :cond_1
    return-void
.end method
