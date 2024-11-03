.class public final enum Lcom/garena/pay/android/GGErrorCode;
.super Ljava/lang/Enum;
.source "GGErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/garena/pay/android/GGErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ACCESS_TOKEN_EXPIRED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ACCESS_TOKEN_INSPECTION_FAILED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ALREADY_REDEEMED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum BATCH_SIZE_EXCEEDED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum BIND_FAILED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum CANNOT_GET_RESULT:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum DECODE_IMAGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ERROR:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ERROR_GUEST_LOGIN:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum GUEST_ACCOUNT_INVALID:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_BUNDLE_RESULT_INVALID:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_ERROR_IN_SCOPE:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_ERROR_IN_TOKEN:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_ERROR_PENDING_TRANSACTION:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_ERROR_SUBSCRIPTION_BINDING:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_GENERAL_ERROR:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_INVALID_SERVER_RESPONSE:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_NO_ERROR:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_REQUEST_ID_MISMATCH:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum REDEEM_LIMIT_REACHED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum REDEEM_NOT_AVAILABLE:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum REFRESH_TOKEN_SUCCESS:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum REQUEST_ID_MISMATCH:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum SUCCESS:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

.field public static final enum USER_DENIED_REQUEST:Lcom/garena/pay/android/GGErrorCode;


# instance fields
.field private final code:Ljava/lang/Integer;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    new-instance v0, Lcom/garena/pay/android/GGErrorCode;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "No Error"

    const-string v4, "SUCCESS"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/garena/pay/android/GGErrorCode;->SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    new-instance v2, Lcom/garena/pay/android/GGErrorCode;

    const/16 v3, 0x7d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Application is not installed"

    const-string v5, "APP_NOT_INSTALLED"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v3, v4}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v2, Lcom/garena/pay/android/GGErrorCode;->APP_NOT_INSTALLED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v3, Lcom/garena/pay/android/GGErrorCode;

    const/16 v4, 0x7d1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Unsupported API used"

    const-string v7, "UNSUPPORTED_API"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v4, v5}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v3, Lcom/garena/pay/android/GGErrorCode;->UNSUPPORTED_API:Lcom/garena/pay/android/GGErrorCode;

    new-instance v4, Lcom/garena/pay/android/GGErrorCode;

    const/16 v5, 0x7d2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "User cancelled the request"

    const-string v9, "USER_CANCELLED"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v5, v7}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v4, Lcom/garena/pay/android/GGErrorCode;->USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v5, Lcom/garena/pay/android/GGErrorCode;

    const/16 v7, 0x7d3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v9, "User denied the request"

    const-string v11, "USER_DENIED_REQUEST"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v5, Lcom/garena/pay/android/GGErrorCode;->USER_DENIED_REQUEST:Lcom/garena/pay/android/GGErrorCode;

    new-instance v7, Lcom/garena/pay/android/GGErrorCode;

    const/16 v9, 0x7d4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "Login failed"

    const-string v13, "LOGIN_FAILED"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v7, Lcom/garena/pay/android/GGErrorCode;->LOGIN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v9, Lcom/garena/pay/android/GGErrorCode;

    const/16 v11, 0x7d5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v13, "Token refreshed successfully"

    const-string v15, "REFRESH_TOKEN_SUCCESS"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v9, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_SUCCESS:Lcom/garena/pay/android/GGErrorCode;

    new-instance v11, Lcom/garena/pay/android/GGErrorCode;

    const/16 v13, 0x7d6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "Token refreshed failed"

    const-string v14, "REFRESH_TOKEN_FAILED"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v11, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v13, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7d7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Access token expired"

    const-string v12, "ACCESS_TOKEN_EXPIRED"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v13, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXPIRED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v12, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7d8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Network error."

    const-string v10, "NETWORK_EXCEPTION"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v12, Lcom/garena/pay/android/GGErrorCode;->NETWORK_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    new-instance v10, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7d9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Access token exchanged failed"

    const-string v8, "ACCESS_TOKEN_EXCHANGE_FAILED"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v10, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7da

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Server cannot be reached. Check your network connection"

    const-string v6, "NETWORK_CONNECTION_EXCEPTION"

    const/16 v1, 0xb

    invoke-direct {v8, v6, v1, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7db

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Unable to retrieve result"

    const-string v1, "CANNOT_GET_RESULT"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v1, v8, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->CANNOT_GET_RESULT:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7dc

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Error in parameters"

    const-string v8, "ERROR_IN_PARAMS"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v1, v8, v6, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7dd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Cannot start activity"

    const-string v6, "CANNOT_START_ACTIVITY"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v8, v6, v1, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x7de

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "REQUEST_ID_MISMATCH"

    const/16 v1, 0xf

    move-object/from16 v19, v8

    const-string v8, "Request ID mismatch"

    invoke-direct {v6, v15, v1, v14, v8}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->REQUEST_ID_MISMATCH:Lcom/garena/pay/android/GGErrorCode;

    new-instance v14, Lcom/garena/pay/android/GGErrorCode;

    const/16 v15, 0x7df

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v1, "Token inspection failed"

    move-object/from16 v20, v6

    const-string v6, "ACCESS_TOKEN_INSPECTION_FAILED"

    move-object/from16 v21, v10

    const/16 v10, 0x10

    invoke-direct {v14, v6, v10, v15, v1}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v14, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INSPECTION_FAILED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v6, 0x7e0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v15, "Session not initialized"

    const-string v10, "SESSION_NOT_INITIALIZED"

    move-object/from16 v22, v14

    const/16 v14, 0x11

    invoke-direct {v1, v10, v14, v6, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->SESSION_NOT_INITIALIZED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x836

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v15, "Batch size exceeded for the request"

    const-string v14, "BATCH_SIZE_EXCEEDED"

    move-object/from16 v23, v1

    const/16 v1, 0x12

    invoke-direct {v6, v14, v1, v10, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->BATCH_SIZE_EXCEEDED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v10, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x899

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Bind failed but login success"

    const-string v1, "BIND_FAILED"

    move-object/from16 v24, v6

    const/16 v6, 0x13

    invoke-direct {v10, v1, v6, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v10, Lcom/garena/pay/android/GGErrorCode;->BIND_FAILED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x89a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Fail to grant guest token"

    const-string v6, "GUEST_ACCOUNT_INVALID"

    move-object/from16 v25, v10

    const/16 v10, 0x14

    invoke-direct {v1, v6, v10, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->GUEST_ACCOUNT_INVALID:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v14, 0x900

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Redeem not available"

    const-string v10, "REDEEM_NOT_AVAILABLE"

    move-object/from16 v26, v1

    const/16 v1, 0x15

    invoke-direct {v6, v10, v1, v14, v15}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->REDEEM_NOT_AVAILABLE:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x901

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Already redeemed"

    const-string v15, "ALREADY_REDEEMED"

    move-object/from16 v27, v6

    const/16 v6, 0x16

    invoke-direct {v1, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->ALREADY_REDEEMED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x902

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Redeem limit reached"

    const-string v15, "REDEEM_LIMIT_REACHED"

    move-object/from16 v28, v1

    const/16 v1, 0x17

    invoke-direct {v6, v15, v1, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->REDEEM_LIMIT_REACHED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x903

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Error token session"

    const-string v15, "ERROR_TOKEN_SESSION"

    move-object/from16 v29, v6

    const/16 v6, 0x18

    invoke-direct {v1, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR_TOKEN_SESSION:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x904

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Network response parse failed"

    const-string v15, "NETWORK_RESPONSE_PARSE_FAIL"

    move-object/from16 v30, v1

    const/16 v1, 0x19

    invoke-direct {v6, v15, v1, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->NETWORK_RESPONSE_PARSE_FAIL:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x905

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Network request timeout"

    const-string v15, "NETWORK_REQUEST_TIME_OUT"

    move-object/from16 v31, v6

    const/16 v6, 0x1a

    invoke-direct {v1, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->NETWORK_REQUEST_TIME_OUT:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x8fc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Server error"

    const-string v15, "GOP_ERROR_SERVER"

    move-object/from16 v32, v1

    const/16 v1, 0x1b

    invoke-direct {v6, v15, v1, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SERVER:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x8fe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Invalid token"

    const-string v15, "GOP_ERROR_TOKEN"

    move-object/from16 v33, v6

    const/16 v6, 0x1c

    invoke-direct {v1, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x8ff

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Invalid scope"

    const-string v15, "GOP_ERROR_SCOPE"

    move-object/from16 v34, v1

    const/16 v1, 0x1d

    invoke-direct {v6, v15, v1, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->GOP_ERROR_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0xbb7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "General error"

    const-string v15, "ERROR"

    move-object/from16 v35, v6

    const/16 v6, 0x1e

    invoke-direct {v1, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->ERROR:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b58

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "No payment error"

    const-string v15, "PAYMENT_NO_ERROR"

    move-object/from16 v36, v1

    const/16 v1, 0x1f

    invoke-direct {v6, v15, v1, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_NO_ERROR:Lcom/garena/pay/android/GGErrorCode;

    new-instance v1, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b59

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Cannot start payment activity"

    const-string v15, "PAYMENT_CANNOT_START_ACTIVITY"

    move-object/from16 v37, v6

    const/16 v6, 0x20

    invoke-direct {v1, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v1, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_CANNOT_START_ACTIVITY:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b5a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "PAYMENT_REQUEST_ID_MISMATCH"

    const/16 v15, 0x21

    invoke-direct {v6, v14, v15, v10, v8}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_REQUEST_ID_MISMATCH:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b5b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "User cancelled payment"

    const-string v15, "PAYMENT_USER_CANCELLED"

    move-object/from16 v38, v6

    const/16 v6, 0x22

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_USER_CANCELLED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b5c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Payment recd. Invalid response from server"

    const-string v15, "PAYMENT_INVALID_SERVER_RESPONSE"

    move-object/from16 v39, v8

    const/16 v8, 0x23

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_INVALID_SERVER_RESPONSE:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b5d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Network connection exception with the server"

    const-string v15, "PAYMENT_NETWORK_CONNECTION_EXCEPTION"

    move-object/from16 v40, v6

    const/16 v6, 0x24

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_NETWORK_CONNECTION_EXCEPTION:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b5e

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Bundle result cannot be read, did you call onActivityResult?"

    const-string v15, "PAYMENT_BUNDLE_RESULT_INVALID"

    move-object/from16 v41, v8

    const/16 v8, 0x25

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_BUNDLE_RESULT_INVALID:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b5f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Invalid parameters"

    const-string v15, "PAYMENT_ERROR_IN_PARAMS"

    move-object/from16 v42, v6

    const/16 v6, 0x26

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_IN_PARAMS:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b60

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Scope does not authorize payment"

    const-string v15, "PAYMENT_ERROR_IN_SCOPE"

    move-object/from16 v43, v8

    const/16 v8, 0x27

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_IN_SCOPE:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b61

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Error in access token used for payment"

    const-string v15, "PAYMENT_ERROR_IN_TOKEN"

    move-object/from16 v44, v6

    const/16 v6, 0x28

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_IN_TOKEN:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b62

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Error when server binding subscription"

    const-string v15, "PAYMENT_ERROR_SUBSCRIPTION_BINDING"

    move-object/from16 v45, v8

    const/16 v8, 0x29

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_SUBSCRIPTION_BINDING:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1b63

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Pending transaction"

    const-string v15, "PAYMENT_ERROR_PENDING_TRANSACTION"

    move-object/from16 v46, v6

    const/16 v6, 0x2a

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_ERROR_PENDING_TRANSACTION:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x1f3f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "General payment error"

    const-string v15, "PAYMENT_GENERAL_ERROR"

    move-object/from16 v47, v8

    const/16 v8, 0x2b

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->PAYMENT_GENERAL_ERROR:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Unknown error occurred"

    const-string v15, "UNKNOWN_ERROR"

    move-object/from16 v48, v6

    const/16 v6, 0x2c

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x7e1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Access token invalid grant"

    const-string v15, "ACCESS_TOKEN_INVALID_GRANT"

    move-object/from16 v49, v8

    const/16 v8, 0x2d

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_INVALID_GRANT:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x7e2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "User banned"

    const-string v15, "ERROR_USER_BANNED"

    move-object/from16 v50, v6

    const/16 v6, 0x2e

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->ERROR_USER_BANNED:Lcom/garena/pay/android/GGErrorCode;

    new-instance v6, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x7e3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Error guest login"

    const-string v15, "ERROR_GUEST_LOGIN"

    move-object/from16 v51, v8

    const/16 v8, 0x2f

    invoke-direct {v6, v15, v8, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->ERROR_GUEST_LOGIN:Lcom/garena/pay/android/GGErrorCode;

    new-instance v8, Lcom/garena/pay/android/GGErrorCode;

    const/16 v10, 0x4e20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v14, "Failed to decode image"

    const-string v15, "DECODE_IMAGE_FAILED"

    move-object/from16 v52, v6

    const/16 v6, 0x30

    invoke-direct {v8, v15, v6, v10, v14}, Lcom/garena/pay/android/GGErrorCode;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v8, Lcom/garena/pay/android/GGErrorCode;->DECODE_IMAGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    const/16 v6, 0x31

    new-array v6, v6, [Lcom/garena/pay/android/GGErrorCode;

    const/4 v10, 0x0

    aput-object v0, v6, v10

    const/4 v0, 0x1

    aput-object v2, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v5, v6, v0

    const/4 v0, 0x5

    aput-object v7, v6, v0

    const/4 v0, 0x6

    aput-object v9, v6, v0

    const/4 v0, 0x7

    aput-object v11, v6, v0

    const/16 v0, 0x8

    aput-object v13, v6, v0

    const/16 v0, 0x9

    aput-object v12, v6, v0

    const/16 v0, 0xa

    aput-object v21, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v20, v6, v0

    const/16 v0, 0x10

    aput-object v22, v6, v0

    const/16 v0, 0x11

    aput-object v23, v6, v0

    const/16 v0, 0x12

    aput-object v24, v6, v0

    const/16 v0, 0x13

    aput-object v25, v6, v0

    const/16 v0, 0x14

    aput-object v26, v6, v0

    const/16 v0, 0x15

    aput-object v27, v6, v0

    const/16 v0, 0x16

    aput-object v28, v6, v0

    const/16 v0, 0x17

    aput-object v29, v6, v0

    const/16 v0, 0x18

    aput-object v30, v6, v0

    const/16 v0, 0x19

    aput-object v31, v6, v0

    const/16 v0, 0x1a

    aput-object v32, v6, v0

    const/16 v0, 0x1b

    aput-object v33, v6, v0

    const/16 v0, 0x1c

    aput-object v34, v6, v0

    const/16 v0, 0x1d

    aput-object v35, v6, v0

    const/16 v0, 0x1e

    aput-object v36, v6, v0

    const/16 v0, 0x1f

    aput-object v37, v6, v0

    const/16 v0, 0x20

    aput-object v1, v6, v0

    const/16 v0, 0x21

    aput-object v38, v6, v0

    const/16 v0, 0x22

    aput-object v39, v6, v0

    const/16 v0, 0x23

    aput-object v40, v6, v0

    const/16 v0, 0x24

    aput-object v41, v6, v0

    const/16 v0, 0x25

    aput-object v42, v6, v0

    const/16 v0, 0x26

    aput-object v43, v6, v0

    const/16 v0, 0x27

    aput-object v44, v6, v0

    const/16 v0, 0x28

    aput-object v45, v6, v0

    const/16 v0, 0x29

    aput-object v46, v6, v0

    const/16 v0, 0x2a

    aput-object v47, v6, v0

    const/16 v0, 0x2b

    aput-object v48, v6, v0

    const/16 v0, 0x2c

    aput-object v49, v6, v0

    const/16 v0, 0x2d

    aput-object v50, v6, v0

    const/16 v0, 0x2e

    aput-object v51, v6, v0

    const/16 v0, 0x2f

    aput-object v52, v6, v0

    const/16 v0, 0x30

    aput-object v8, v6, v0

    sput-object v6, Lcom/garena/pay/android/GGErrorCode;->$VALUES:[Lcom/garena/pay/android/GGErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/garena/pay/android/GGErrorCode;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/garena/pay/android/GGErrorCode;->code:Ljava/lang/Integer;

    return-void
.end method

.method public static getErrorFromCode(I)Lcom/garena/pay/android/GGErrorCode;
    .locals 5

    invoke-static {}, Lcom/garena/pay/android/GGErrorCode;->values()[Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    return-object p0
.end method

.method public static getErrorStringFromCode(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/garena/pay/android/GGErrorCode;->values()[Lcom/garena/pay/android/GGErrorCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    invoke-virtual {v3}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/garena/pay/android/GGErrorCode;->UNKNOWN_ERROR:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {p0}, Lcom/garena/pay/android/GGErrorCode;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFatal(I)Z
    .locals 1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXCHANGE_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->ACCESS_TOKEN_EXPIRED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->REFRESH_TOKEN_FAILED:Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, Lcom/garena/pay/android/GGErrorCode;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    const-class v0, Lcom/garena/pay/android/GGErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/garena/pay/android/GGErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/garena/pay/android/GGErrorCode;
    .locals 1

    sget-object v0, Lcom/garena/pay/android/GGErrorCode;->$VALUES:[Lcom/garena/pay/android/GGErrorCode;

    invoke-virtual {v0}, [Lcom/garena/pay/android/GGErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/garena/pay/android/GGErrorCode;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGErrorCode;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/garena/pay/android/GGErrorCode;->value:Ljava/lang/String;

    return-object v0
.end method
