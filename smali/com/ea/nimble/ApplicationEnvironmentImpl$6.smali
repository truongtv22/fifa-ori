.class Lcom/ea/nimble/ApplicationEnvironmentImpl$6;
.super Ljava/lang/Object;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/ApplicationEnvironmentImpl;->requestSafetyNetAttestation([BLcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

.field final synthetic val$listener:Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$6;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    iput-object p2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$6;->val$listener:Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$6;->val$listener:Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;

    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;->getJwsResult()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;->onCallback(Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;

    invoke-virtual {p0, p1}, Lcom/ea/nimble/ApplicationEnvironmentImpl$6;->onSuccess(Lcom/google/android/gms/safetynet/SafetyNetApi$AttestationResponse;)V

    return-void
.end method
