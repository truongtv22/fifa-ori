.class public Lcom/ea/nimble/identity/NimbleIdentityPersona;
.super Ljava/lang/Object;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;,
        Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;,
        Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    }
.end annotation


# instance fields
.field private dateCreated:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private expiryTime:Ljava/util/Date;

.field private isVisible:Ljava/lang/String;

.field private lastAuthenticated:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private namespaceName:Ljava/lang/String;

.field private personaId:J

.field private pidId:Ljava/lang/String;

.field private showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

.field private status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

.field private statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    const-string v0, "personaId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->getLongFromObject(Ljava/lang/Object;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->personaId:J

    const-string v0, "pidId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->pidId:Ljava/lang/String;

    const-string v0, "displayName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->displayName:Ljava/lang/String;

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->name:Ljava/lang/String;

    const-string v0, "namespaceName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->namespaceName:Ljava/lang/String;

    const-string v0, "status"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->toEnumPersonaStatus(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v0, "statusReasonCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->toEnumPersonaStatusReasonCodes(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v0, "showPersona"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ea/nimble/identity/NimbleIdentityPersona;->toEnumPersonaPrivacyLevel(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    const-string v0, "dateCreated"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->dateCreated:Ljava/lang/String;

    const-string v0, "lastAuthenticated"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->lastAuthenticated:Ljava/lang/String;

    const-string v0, "isVisible"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "true"

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "false"

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    :cond_2
    :goto_0
    new-instance p1, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->expiryTime:Ljava/util/Date;

    return-void
.end method

.method private getLongFromObject(Ljava/lang/Object;)J
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGFUNC(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t convert object of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to long"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Identity"

    invoke-static {v1, p1, v0}, Lcom/ea/nimble/Log$Helper;->LOGES(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static toEnumPersonaPrivacyLevel(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;
    .locals 2

    const-string v0, "NimbleIdentityPersona"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    const-string v1, "NO_ONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_NO_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    goto :goto_0

    :cond_0
    const-string v1, "EVERYONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_EVERYONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    goto :goto_0

    :cond_1
    const-string v1, "FRIENDS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_FRIENDS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    goto :goto_0

    :cond_2
    const-string v1, "FRIENDS_OF_FRIENDS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_FRIENDS_OF_FRIENDS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static toEnumPersonaStatus(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 2

    const-string v0, "NimbleIdentityPersona"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    const-string v1, "PENDING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    :cond_0
    const-string v1, "ACTIVE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    :cond_1
    const-string v1, "DEACTIVATED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    :cond_2
    const-string v1, "DISABLE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    :cond_3
    const-string v1, "DELETED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    goto :goto_0

    :cond_4
    const-string v1, "BANNED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static toEnumPersonaStatusReasonCodes(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 2

    const-string v0, "NimbleIdentityPersona"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_NONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    const-string v1, "CODES_ONE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_0
    const-string v1, "REACTIVATED_CUSTOMER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_1
    const-string v1, "INVALID_EMAIL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_2
    const-string v1, "PRIVACY_POLICY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_3
    const-string v1, "PARENTS_REQUEST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_4
    const-string v1, "SUSPENDED_MISCONDUCT_GENERAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_5
    const-string v1, "SUSPENDED_MISCONDUCT_HARASSMENT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_6
    const-string v1, "SUSPENDED_MISCONDUCT_MACROING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_7
    const-string v1, "SUSPENDED_MISCONDUCT_EXPLOITATION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_8
    const-string v1, "SUSPENDED_FRAUD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto/16 :goto_0

    :cond_9
    const-string v1, "CUSTOMER_OPT_OUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_a
    const-string v1, "CUSTOMER_UNDER_AGE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_b
    const-string v1, "EMAIL_CONFIRMATION_REQUIRED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_c
    const-string v1, "MISTYPED_ID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_d
    const-string v1, "ABUSED_ID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_e
    const-string v1, "DEACTIVATED_EMAIL_LINK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_f
    const-string v1, "DEACTIVATED_CS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_10
    const-string v1, "CLAIMED_BY_TRUE_OWNER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_11
    const-string v1, "BANNED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    goto :goto_0

    :cond_12
    const-string v1, "DEACTIVATED_AFFILIATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    :cond_13
    :goto_0
    return-object v0
.end method

.method public static toStringPersonaPrivacyLevel(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;)Ljava/lang/String;
    .locals 1

    const-string v0, "NimbleIdentityPersona"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "FRIENDS_OF_FRIENDS"

    goto :goto_0

    :cond_1
    const-string p0, "FRIENDS"

    goto :goto_0

    :cond_2
    const-string p0, "EVERYONE"

    goto :goto_0

    :cond_3
    const-string p0, "NO_ONE"

    :goto_0
    return-object p0
.end method

.method public static toStringPersonaStatus(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;)Ljava/lang/String;
    .locals 1

    const-string v0, "NimbleIdentityPersona"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "BANNED"

    goto :goto_0

    :pswitch_1
    const-string p0, "DELETED"

    goto :goto_0

    :pswitch_2
    const-string p0, "DISABLED"

    goto :goto_0

    :pswitch_3
    const-string p0, "DEACTIVATED"

    goto :goto_0

    :pswitch_4
    const-string p0, "ACTIVE"

    goto :goto_0

    :pswitch_5
    const-string p0, "PENDING"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toStringPersonaStatusReasonCodes(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;)Ljava/lang/String;
    .locals 1

    const-string v0, "NimbleIdentityPersona"

    invoke-static {v0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNCS(Ljava/lang/String;)V

    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    invoke-virtual {p0}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    :pswitch_0
    const-string p0, "DEACTIVATED_AFFILIATE"

    goto :goto_0

    :pswitch_1
    const-string p0, "BANNED"

    goto :goto_0

    :pswitch_2
    const-string p0, "CLAIMED_BY_TRUE_OWNER"

    goto :goto_0

    :pswitch_3
    const-string p0, "DEACTIVATED_CS"

    goto :goto_0

    :pswitch_4
    const-string p0, "DEACTIVATED_EMAIL_LINK"

    goto :goto_0

    :pswitch_5
    const-string p0, "ABUSED_ID"

    goto :goto_0

    :pswitch_6
    const-string p0, "MISTYPED_ID"

    goto :goto_0

    :pswitch_7
    const-string p0, "EMAIL_CONFIRMATION_REQUIRED"

    goto :goto_0

    :pswitch_8
    const-string p0, "CUSTOMER_UNDER_AGE"

    goto :goto_0

    :pswitch_9
    const-string p0, "CUSTOMER_OPT_OUT"

    goto :goto_0

    :pswitch_a
    const-string p0, "SUSPENDED_FRAUD"

    goto :goto_0

    :pswitch_b
    const-string p0, "SUSPENDED_MISCONDUCT_EXPLOITATION"

    goto :goto_0

    :pswitch_c
    const-string p0, "SUSPENDED_MISCONDUCT_MACROING"

    goto :goto_0

    :pswitch_d
    const-string p0, "SUSPENDED_MISCONDUCT_HARASSMENT"

    goto :goto_0

    :pswitch_e
    const-string p0, "SUSPENDED_MISCONDUCT_GENERAL"

    goto :goto_0

    :pswitch_f
    const-string p0, "PARENTS_REQUEST"

    goto :goto_0

    :pswitch_10
    const-string p0, "PRIVACY_POLICY"

    goto :goto_0

    :pswitch_11
    const-string p0, "INVALID_EMAIL"

    goto :goto_0

    :pswitch_12
    const-string p0, "REACTIVATED_CUSTOMER"

    goto :goto_0

    :pswitch_13
    const-string p0, "CODES_ONE"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDateCreated()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->dateCreated:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 3

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->expiryTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->expiryTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLastAuthenticated()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->lastAuthenticated:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->namespaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaId()J
    .locals 2

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->personaId:J

    return-wide v0
.end method

.method public getPidId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->pidId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowPersona()Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    return-object v0
.end method

.method public getStatusReasonCode()Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-object v0
.end method

.method public getStauts()Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-object v0
.end method

.method public getVisible()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    return-object v0
.end method

.method public setDateCreated(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->dateCreated:Ljava/lang/String;

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setLastAuthenticated(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->lastAuthenticated:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamespaceName(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->namespaceName:Ljava/lang/String;

    return-void
.end method

.method public setPersonaId(J)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->personaId:J

    return-void
.end method

.method public setPidId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->pidId:Ljava/lang/String;

    return-void
.end method

.method public setShowPersona(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->showPersona:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    return-void
.end method

.method public setStatusReasonCode(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->statusReasonCode:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    return-void
.end method

.method public setStauts(Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->status:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    return-void
.end method

.method public setVisible(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ea/nimble/Log$Helper;->LOGPUBLICFUNC(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityPersona;->isVisible:Ljava/lang/String;

    return-void
.end method
