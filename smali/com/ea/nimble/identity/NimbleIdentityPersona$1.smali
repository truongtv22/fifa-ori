.class synthetic Lcom/ea/nimble/identity/NimbleIdentityPersona$1;
.super Ljava/lang/Object;
.source "NimbleIdentityPersona.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

.field static final synthetic $SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

.field static final synthetic $SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_NO_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    invoke-virtual {v2}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

    sget-object v3, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_EVERYONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    invoke-virtual {v3}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_FRIENDS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    invoke-virtual {v4}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaPrivacyLevel:[I

    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->PERSONA_PRIVACY_LEVEL_FRIENDS_OF_FRIENDS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaPrivacyLevel;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    :try_start_4
    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ONE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_REACTIVATED_CUSTOMER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_INVALID_EMAIL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PRIVACY_POLICY:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v5}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v4, 0x5

    :try_start_8
    sget-object v5, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_PARENTS_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v5, 0x6

    :try_start_9
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_GENERAL:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_HARASSMENT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_MACROING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x8

    aput v8, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_MISCONDUCT_EXPLOITATION:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x9

    aput v8, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_SUSPENDED_FRAUD:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0xa

    aput v8, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_OPT_OUT:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0xb

    aput v8, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CUSTOMER_UNDER_AGE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0xc

    aput v8, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_EMAIL_CONFIRMATION_REQUIRED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0xd

    aput v8, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_MISTYPED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0xe

    aput v8, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_ABUSED_ID:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0xf

    aput v8, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_EMAIL_LINK:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x10

    aput v8, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_CS:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x11

    aput v8, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_CLAIMED_BY_TRUE_OWNER:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x12

    aput v8, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x13

    aput v8, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatusReasonCodes:[I

    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->PERSONA_STATUS_REASON_CODES_DEACTIVATED_AFFILIATE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatusReasonCodes;->ordinal()I

    move-result v7

    const/16 v8, 0x14

    aput v8, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->values()[Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    :try_start_18
    sget-object v7, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_PENDING:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v7}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    sget-object v6, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_ACTIVE:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v6}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v6

    aput v0, v1, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DEACTIVATED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DISABLED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_DELETED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityPersona$1;->$SwitchMap$com$ea$nimble$identity$NimbleIdentityPersona$PersonaStatus:[I

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->PERSONA_STATUS_BANNED:Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;

    invoke-virtual {v1}, Lcom/ea/nimble/identity/NimbleIdentityPersona$PersonaStatus;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
