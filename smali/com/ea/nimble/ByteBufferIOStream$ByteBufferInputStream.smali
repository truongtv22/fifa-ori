.class public Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferIOStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ByteBufferIOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ByteBufferInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ByteBufferIOStream;


# direct methods
.method protected constructor <init>(Lcom/ea/nimble/ByteBufferIOStream;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-boolean v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    mul-int/lit16 v0, v0, 0x1000

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ByteBufferIOStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->closeIOStream()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    const/4 v2, 0x0

    iput v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Nothing to read in ByteBufferIOStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    const/16 v1, 0x1000

    rsub-int v0, v0, 0x1000

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget p2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v3, v3, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v3, v3, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sub-int v2, p3, v0

    add-int/2addr p2, v0

    div-int/lit16 v0, v2, 0x1000

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v6, v6, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v2, v2, -0x1000

    add-int/lit16 p2, p2, 0x1000

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput v2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget p2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    :goto_1
    return p3

    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "The reading range of out of buffer boundary."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    long-to-int v0, p1

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    rsub-int v1, v1, 0x1000

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v3, v3, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v1

    div-int/lit16 v1, v0, 0x1000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v3, v3, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit16 v0, v0, -0x1000

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput v0, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_readPosition:I

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferInputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v2, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    :goto_1
    return-wide p1
.end method
