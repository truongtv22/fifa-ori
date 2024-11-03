.class public Lcom/ea/nimble/ByteBufferIOStream;
.super Ljava/lang/Object;
.source "ByteBufferIOStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;,
        Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;
    }
.end annotation


# static fields
.field protected static final SEGMENT_SIZE:I = 0x1000


# instance fields
.field protected m_availableSegment:I

.field protected m_buffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field

.field protected m_closed:Z

.field protected m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

.field protected m_output:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

.field protected m_readPosition:I

.field protected m_writePosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ea/nimble/ByteBufferIOStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    new-instance v1, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    invoke-direct {v1, p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;-><init>(Lcom/ea/nimble/ByteBufferIOStream;)V

    iput-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    new-instance v1, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

    invoke-direct {v1, p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;-><init>(Lcom/ea/nimble/ByteBufferIOStream;)V

    iput-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_output:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    sub-int/2addr p1, v1

    const/16 v2, 0x1000

    div-int/2addr p1, v2

    add-int/2addr p1, v1

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public appendSegmentToBuffer([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    array-length v0, p1

    const/16 v2, 0x1000

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    iget v3, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    if-ge v1, v3, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    if-eq p2, v2, :cond_1

    iput p2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    :goto_1
    return-void
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    return-void
.end method

.method protected closeIOStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_input:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_output:Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;

    return-object v0
.end method

.method public growBufferBySegment()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    return-object v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad location to grow buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareSegment()[B
    .locals 2

    iget v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1000

    new-array v0, v0, [B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method
