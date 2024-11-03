.class Lcom/beetalk/sdk/GGPlatform$7;
.super Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;
.source "GGPlatform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beetalk/sdk/GGPlatform;->GGSendRequestInvitationToFacebook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/beetalk/sdk/plugin/GGPluginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$aMessage:Ljava/lang/String;

.field final synthetic val$aTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$7;->val$aTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$7;->val$aMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/beetalk/sdk/plugin/impl/fb/FBInvitePlugin$FBInviteData;-><init>()V

    iput-object p1, p0, Lcom/beetalk/sdk/GGPlatform$7;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/beetalk/sdk/GGPlatform$7;->message:Ljava/lang/String;

    return-void
.end method
