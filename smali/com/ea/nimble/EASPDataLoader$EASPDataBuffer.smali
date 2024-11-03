.class public Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;
.super Ljava/lang/Object;
.source "EASPDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/EASPDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EASPDataBuffer"
.end annotation


# instance fields
.field public m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

.field public m_version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_version:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/EASPDataLoader$EASPDataBuffer;->m_decryptedByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method
