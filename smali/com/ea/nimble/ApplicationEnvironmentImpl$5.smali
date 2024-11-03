.class Lcom/ea/nimble/ApplicationEnvironmentImpl$5;
.super Ljava/lang/Object;
.source "ApplicationEnvironmentImpl.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/nimble/ApplicationEnvironmentImpl;->requestSafetyNetAttestation([BLcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

.field final synthetic val$listener:Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;


# direct methods
.method constructor <init>(Lcom/ea/nimble/ApplicationEnvironmentImpl;Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$5;->this$0:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    iput-object p2, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$5;->val$listener:Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Lcom/ea/nimble/ApplicationEnvironmentImpl$5;->val$listener:Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;

    new-instance v1, Lcom/ea/nimble/Error;

    sget-object v2, Lcom/ea/nimble/Error$Code;->UNKNOWN:Lcom/ea/nimble/Error$Code;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "SafetyNet Attest Request failed\nCause:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/ea/nimble/Error;-><init>(Lcom/ea/nimble/Error$Code;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ea/nimble/IApplicationEnvironment$SafetyNetAttestationCallback;->onCallback(Ljava/lang/String;Lcom/ea/nimble/Error;)V

    return-void
.end method
