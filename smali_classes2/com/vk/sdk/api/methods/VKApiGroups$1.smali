.class Lcom/vk/sdk/api/methods/VKApiGroups$1;
.super Lcom/vk/sdk/api/VKParameters;
.source "VKApiGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/sdk/api/methods/VKApiGroups;->leave(I)Lcom/vk/sdk/api/VKRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/sdk/api/methods/VKApiGroups;

.field final synthetic val$group_id:I


# direct methods
.method constructor <init>(Lcom/vk/sdk/api/methods/VKApiGroups;I)V
    .locals 0

    iput-object p1, p0, Lcom/vk/sdk/api/methods/VKApiGroups$1;->this$0:Lcom/vk/sdk/api/methods/VKApiGroups;

    iput p2, p0, Lcom/vk/sdk/api/methods/VKApiGroups$1;->val$group_id:I

    invoke-direct {p0}, Lcom/vk/sdk/api/VKParameters;-><init>()V

    const-string p1, "group_id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/methods/VKApiGroups$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
