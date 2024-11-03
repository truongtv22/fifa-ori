.class Lcom/vk/sdk/api/methods/VKApiUsers$2;
.super Lcom/vk/sdk/api/VKParameters;
.source "VKApiUsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/methods/VKApiUsers;->isAppUser(I)Lcom/vk/sdk/api/VKRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x67823d677585a667L


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/methods/VKApiUsers;

.field final synthetic val$userID:I


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/methods/VKApiUsers;I)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/methods/VKApiUsers$2;->this$0:Lcom/vk/sdk/api/methods/VKApiUsers;

    iput p2, p0, Lcom/vk/sdk/api/methods/VKApiUsers$2;->val$userID:I

    invoke-direct {p0}, Lcom/vk/sdk/api/VKParameters;-><init>()V

    const-string p1, "user_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/methods/VKApiUsers$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
