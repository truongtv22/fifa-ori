.class public abstract Lcom/vk/sdk/api/model/VKAttachments$VKApiAttachment;
.super Lcom/vk/sdk/api/model/VKApiModel;
.source "VKAttachments.java"

# interfaces
.implements Lcom/vk/sdk/api/model/Identifiable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/sdk/api/model/VKAttachments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VKApiAttachment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/sdk/api/model/VKApiModel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract toAttachmentString()Ljava/lang/CharSequence;
.end method
