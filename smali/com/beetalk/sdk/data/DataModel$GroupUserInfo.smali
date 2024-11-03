.class public Lcom/beetalk/sdk/data/DataModel$GroupUserInfo;
.super Lcom/beetalk/sdk/data/DataModel$UserInfo;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beetalk/sdk/data/DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupUserInfo"
.end annotation


# instance fields
.field public platform:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/beetalk/sdk/data/DataModel$UserInfo;-><init>()V

    return-void
.end method
