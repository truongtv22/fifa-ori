.class public interface abstract Lcom/ea/nimble/ISynergyRequest;
.super Ljava/lang/Object;
.source "ISynergyRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ISynergyRequest$IJsonData;
    }
.end annotation


# virtual methods
.method public abstract getApi()Ljava/lang/String;
.end method

.method public abstract getBaseUrl()Ljava/lang/String;
.end method

.method public abstract getHttpRequest()Lcom/ea/nimble/IHttpRequest;
.end method

.method public abstract getJsonData()Lcom/ea/nimble/ISynergyRequest$IJsonData;
.end method

.method public abstract getUrlParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
