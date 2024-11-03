.class public Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "ByteBufferIOStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/ByteBufferIOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ByteBufferOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ByteBufferIOStream;


# direct methods
.method protected constructor <init>(Lcom/ea/nimble/ByteBufferIOStream;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    invoke-virtual {v0}, Lcom/ea/nimble/ByteBufferIOStream;->closeIOStream()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-boolean v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget p1, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    const/4 v0, 0x0

    iput v0, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "ByteBufferIOStream is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-boolean v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_closed:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v0, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    const/16 v1, 0x1000

    rsub-int v0, v0, 0x1000

    iget-object v2, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v2, v2, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    if-ge v4, v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v1, v1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget p2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v5, v5, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v4, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput v3, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    :goto_1
    if-lez p3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_2

    :cond_2
    new-array v0, v1, [B

    iget-object v4, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget-object v4, v4, Lcom/ea/nimble/ByteBufferIOStream;->m_buffer:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-ge p3, v1, :cond_3

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iput p3, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_writePosition:I

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    invoke-static {p1, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit16 p3, p3, -0x1000

    add-int/lit16 p2, p2, 0x1000

    iget-object v0, p0, Lcom/ea/nimble/ByteBufferIOStream$ByteBufferOutputStream;->this$0:Lcom/ea/nimble/ByteBufferIOStream;

    iget v4, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/ea/nimble/ByteBufferIOStream;->m_availableSegment:I

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "ByteBufferIOStream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "The writing range is out of buffer boundary."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
