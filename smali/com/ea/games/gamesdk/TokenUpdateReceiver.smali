.class public Lcom/ea/games/gamesdk/TokenUpdateReceiver;
.super Lcom/garena/android/BaseTokenUpdateReceiver;
.source "TokenUpdateReceiver.java"


# static fields
.field public static pushAppKey:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/garena/android/BaseTokenUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPushAppKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ea/games/gamesdk/TokenUpdateReceiver;->pushAppKey:Ljava/lang/String;

    return-object v0
.end method
