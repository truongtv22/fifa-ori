.class public interface abstract Lcom/garena/android/gpns/network/NetworkResponseListener;
.super Ljava/lang/Object;
.source "NetworkResponseListener.java"


# virtual methods
.method public abstract onConnectionDropped(I)V
.end method

.method public abstract onConnectionOK(I)V
.end method

.method public abstract onPacketFailed(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
.end method

.method public abstract onResponseArrived(Lcom/garena/android/gpns/network/tcp/TCPPacket;)V
.end method

.method public abstract onUnableToConnect(I)V
.end method
