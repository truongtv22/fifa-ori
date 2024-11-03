.class public final Lcom/ea/games/measuresdk/MeasureEvent;
.super Ljava/lang/Object;
.source "MeasureEvent.java"


# instance fields
.field private mEventName:Ljava/lang/String;

.field private mRevenue:F

.field private mRevenueCU:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mEventName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenue:F

    iput-object v0, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenueCU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Event()V
    .locals 0

    return-void
.end method

.method public Event(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mEventName:Ljava/lang/String;

    return-void
.end method

.method public Event(Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mEventName:Ljava/lang/String;

    iput p2, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenue:F

    iput-object p3, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenueCU:Ljava/lang/String;

    return-void
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getRevenue()F
    .locals 1

    iget v0, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenue:F

    return v0
.end method

.method public getRevenueCU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenueCU:Ljava/lang/String;

    return-object v0
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mEventName:Ljava/lang/String;

    return-void
.end method

.method public setRevenue(FLjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenue:F

    iput-object p2, p0, Lcom/ea/games/measuresdk/MeasureEvent;->mRevenueCU:Ljava/lang/String;

    return-void
.end method
