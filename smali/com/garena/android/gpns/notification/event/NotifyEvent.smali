.class public Lcom/garena/android/gpns/notification/event/NotifyEvent;
.super Ljava/lang/Object;
.source "NotifyEvent.java"


# instance fields
.field public notifyData:Ljava/lang/Object;

.field public notifyId:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/garena/android/gpns/notification/event/NotifyEvent;->notifyId:I

    iput-object p2, p0, Lcom/garena/android/gpns/notification/event/NotifyEvent;->notifyData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/garena/android/gpns/notification/event/NotifyEvent;->notifyData:Ljava/lang/Object;

    return-void
.end method
