.class Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;
.super Landroid/os/AsyncTask;
.source "FMPActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/game/fmp/FMPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoAsyncDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/game/fmp/FMPActivity;


# direct methods
.method private constructor <init>(Lcom/ea/game/fmp/FMPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ea/game/fmp/FMPActivity;Lcom/ea/game/fmp/FMPActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;-><init>(Lcom/ea/game/fmp/FMPActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 45

    move-object/from16 v1, p0

    const-string v2, "-"

    const-string v3, "checksum"

    const-string/jumbo v4, "url"

    const-string v5, ", "

    const-string v6, "@@@@@@@@@@@@@@@ doInBackground"

    const-string v7, "FMPActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    aget-object v8, p1, v6

    const/4 v9, 0x1

    aget-object v10, p1, v9

    const-string v11, "--:--"

    const-wide/16 v12, 0x1

    const/16 v16, 0x3

    const/4 v15, 0x2

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    new-instance v12, Lorg/json/JSONObject;

    aget-object v13, p1, v15

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v13, "files"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_33

    if-lez v13, :cond_19

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2f

    const-string v6, "size"

    if-le v9, v13, :cond_0

    :try_start_2
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v15, v6

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_1
    move-object/from16 v23, v11

    goto/16 :goto_2f

    :catch_1
    move-exception v0

    move-object v2, v0

    :goto_2
    move-object/from16 v23, v11

    goto/16 :goto_30

    :cond_0
    :try_start_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v13, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2f

    move/from16 p1, v15

    int-to-long v14, v9

    :try_start_4
    invoke-virtual {v13}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    move-object v13, v10

    int-to-long v9, v9

    mul-long v14, v14, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@@@@@@@@@@@@@@@ free: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2d

    move/from16 v9, p1

    move-object v10, v7

    move-object/from16 v20, v8

    int-to-long v7, v9

    cmp-long v21, v14, v7

    if-gez v21, :cond_1

    const/4 v7, 0x4

    :try_start_5
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PATCH_ERROR7"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    aput-object v11, v2, v16

    invoke-virtual {v1, v2}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    move-object v2, v0

    move v15, v9

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v0

    move v15, v9

    goto :goto_2

    :cond_1
    move-object v14, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    :try_start_6
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-le v15, v8, :cond_17

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->isCancelled()Z

    move-result v15

    if-nez v15, :cond_16

    sget v15, Lcom/ea/game/fmp/FMPActivity;->activeInternetConnection:I

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-static {v2}, Lcom/ea/game/fmp/FMPActivity;->access$300(Lcom/ea/game/fmp/FMPActivity;)I

    move-result v2
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2b

    if-eq v15, v2, :cond_3

    :try_start_7
    iget-object v2, v1, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-static {v2}, Lcom/ea/game/fmp/FMPActivity;->access$300(Lcom/ea/game/fmp/FMPActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "PATCH_ERROR6"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v4, v3

    aput-object v11, v4, v16

    invoke-virtual {v1, v4}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_5

    :cond_2
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "PATCH_ERROR8"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    aput-object v11, v3, v16

    invoke-virtual {v1, v3}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    :goto_5
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    return-object v2

    :catch_4
    move-exception v0

    move-object v2, v0

    move v4, v7

    move v15, v9

    move-object/from16 v23, v11

    goto/16 :goto_32

    :catch_5
    move-exception v0

    move-object v2, v0

    move v4, v7

    move v15, v9

    move-object/from16 v23, v11

    goto/16 :goto_34

    :cond_3
    :try_start_8
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 p1, v12

    const/4 v15, 0x4

    new-array v12, v15, [Ljava/lang/String;

    const-string v15, "PATCH_CHECK_DOWNLOAD"

    const/16 v19, 0x0

    aput-object v15, v12, v19

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x1

    aput-object v15, v12, v18

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v12, v17

    aput-object v14, v12, v16

    invoke-virtual {v1, v12}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v15, v20

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v14

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v15

    const-string v15, "localization/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2b

    move-object/from16 v23, v11

    const/16 v11, 0x2f

    if-eqz v15, :cond_4

    :try_start_9
    invoke-virtual {v14, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v18, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "localization fullDest"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v0

    move v4, v7

    move v15, v9

    goto/16 :goto_32

    :catch_7
    move-exception v0

    move-object v2, v0

    move v4, v7

    move v15, v9

    goto/16 :goto_34

    :cond_4
    :try_start_a
    invoke-virtual {v14, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_27

    if-ltz v15, :cond_5

    add-int/lit8 v15, v15, 0x1

    :try_start_b
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fullDest"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_6

    :cond_5
    :try_start_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "urlfullDest"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "temp/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    const/16 v3, 0x2f

    invoke-virtual {v14, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_28
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_27

    if-ltz v4, :cond_6

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :cond_6
    const/16 v3, 0x2f

    :try_start_e
    invoke-virtual {v11, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_27

    if-ltz v3, :cond_7

    const/4 v4, 0x0

    :try_start_f
    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    :cond_7
    :try_start_10
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_27

    move-object/from16 v24, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    :try_start_11
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v27

    move-object v6, v5

    int-to-long v4, v15

    cmp-long v29, v27, v4

    if-ltz v29, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    const/4 v3, 0x1

    :goto_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    move/from16 v29, v3

    const/4 v3, 0x1

    if-ne v5, v3, :cond_9

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    :cond_9
    move-wide/from16 v3, v27

    move/from16 v5, v29

    move-object/from16 v27, v13

    goto :goto_8

    :cond_a
    move-object v6, v5

    move-object/from16 v27, v13

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_8
    :try_start_12
    new-instance v13, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_26
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_25
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_28

    move/from16 v28, v8

    :try_start_13
    invoke-virtual {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_23
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_28

    move-object/from16 v29, v6

    :try_start_14
    const-string v6, "http.connection.timeout"

    const/16 v30, 0x3a98

    move-object/from16 v31, v11

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v6, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    const-string v8, "http.socket.timeout"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v8, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullAdress: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_21
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_28

    const/4 v8, 0x1

    if-ne v5, v8, :cond_b

    :try_start_15
    const-string v8, "Range"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v12

    const-string v12, "bytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_15
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_7

    move-object/from16 v12, v21

    :try_start_16
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v8, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loading....Continue: bytes="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_7

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v2, v0

    move v13, v9

    move-object v3, v10

    move-object/from16 v21, v12

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v2, v0

    move v13, v9

    move-object v3, v10

    move-object/from16 v21, v12

    goto :goto_c

    :catch_a
    move-exception v0

    move-object v2, v0

    move v13, v9

    :goto_9
    move-object v3, v10

    :goto_a
    move-object/from16 v14, v20

    move-object/from16 v4, v29

    goto/16 :goto_26

    :catch_b
    move-exception v0

    move-object v2, v0

    move v13, v9

    :goto_b
    move-object v3, v10

    :goto_c
    move-object/from16 v14, v20

    move-object/from16 v4, v29

    goto/16 :goto_2a

    :cond_b
    move-object/from16 v30, v12

    move-object/from16 v12, v21

    :goto_d
    :try_start_17
    invoke-virtual {v13, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_17} :catch_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_28

    move-object/from16 v21, v12

    :try_start_18
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v2

    const-string v2, "Lenght of file: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v11, 0x1000

    new-array v11, v11, [B
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_18} :catch_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_21
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_28

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v5, v13, :cond_d

    :try_start_19
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_28

    move-object/from16 v33, v10

    :goto_e
    :try_start_1a
    invoke-virtual {v13, v11}, Ljava/io/InputStream;->read([B)I

    move-result v10
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_28

    if-eq v10, v12, :cond_c

    const/4 v12, 0x0

    :try_start_1b
    invoke-virtual {v2, v11, v12, v10}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_7

    const/4 v12, -0x1

    goto :goto_e

    :catch_c
    move-exception v0

    move-object v2, v0

    move v13, v9

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v2, v0

    move v13, v9

    goto :goto_13

    :cond_c
    const/4 v12, 0x0

    :try_start_1c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_28

    move v13, v9

    int-to-long v9, v12

    add-long/2addr v9, v3

    long-to-int v3, v9

    goto :goto_15

    :catch_e
    move-exception v0

    move v13, v9

    :goto_f
    move-object v2, v0

    :goto_10
    move-object/from16 v14, v20

    :goto_11
    move-object/from16 v4, v29

    move-object/from16 v3, v33

    goto/16 :goto_26

    :catch_f
    move-exception v0

    move v13, v9

    :goto_12
    move-object v2, v0

    :goto_13
    move-object/from16 v14, v20

    :goto_14
    move-object/from16 v4, v29

    move-object/from16 v3, v33

    goto/16 :goto_2a

    :catch_10
    move-exception v0

    move v13, v9

    move-object v2, v0

    goto/16 :goto_9

    :catch_11
    move-exception v0

    move v13, v9

    move-object v2, v0

    goto :goto_b

    :cond_d
    move v13, v9

    move-object/from16 v33, v10

    const/4 v3, 0x0

    :goto_15
    :try_start_1d
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v34, 0x3e8

    add-long v36, v9, v34

    move-object/from16 v39, v14

    move-wide/from16 v37, v36

    const/4 v5, 0x1

    const/4 v12, 0x0

    move/from16 v36, v15

    const/4 v15, 0x0

    :goto_16
    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14
    :try_end_1d
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_1d} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_2a

    move-object/from16 v40, v4

    const/4 v4, -0x1

    if-eq v14, v4, :cond_11

    add-int/2addr v3, v14

    const/4 v4, 0x0

    :try_start_1e
    invoke-virtual {v8, v11, v4, v14}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2, v11, v4, v14}, Ljava/security/MessageDigest;->update([BII)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    add-int v4, v12, v14

    cmp-long v12, v37, v41

    if-gtz v12, :cond_f

    sub-long v9, v41, v9

    move-object v14, v11

    int-to-long v11, v4

    mul-long v11, v11, v34

    div-long/2addr v11, v9

    long-to-int v4, v11

    add-long v9, v41, v34

    int-to-float v11, v4

    int-to-float v12, v5

    const/high16 v37, 0x3f800000    # 1.0f

    sub-float v12, v12, v37

    div-float/2addr v11, v12

    int-to-float v15, v15

    div-float v12, v37, v12

    sub-float v37, v37, v12

    mul-float v15, v15, v37

    add-float/2addr v11, v15

    float-to-int v11, v11

    if-gtz v11, :cond_e

    move v15, v4

    goto :goto_17

    :cond_e
    move v15, v11

    :goto_17
    add-int/lit8 v5, v5, 0x1

    add-int v4, v7, v3

    sub-int v4, v13, v4

    div-int/2addr v4, v15

    div-int/lit8 v11, v4, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    const-string v12, "%d:%02d"

    move/from16 v37, v5

    move-wide/from16 v43, v9

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v9, v5

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    move/from16 v5, v37

    move-wide/from16 v9, v41

    move-wide/from16 v37, v43

    const/4 v12, 0x0

    goto :goto_18

    :cond_f
    move-object v14, v11

    move v12, v4

    :goto_18
    add-int v4, v7, v3

    move/from16 v41, v3

    const/4 v11, 0x4

    new-array v3, v11, [Ljava/lang/String;

    const-string v11, "PATCH_DOWNLOADING"

    const/16 v19, 0x0

    aput-object v11, v3, v19

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v3, v11

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x2

    aput-object v4, v3, v11

    aput-object v20, v3, v16

    invoke-virtual {v1, v3}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->isCancelled()Z

    move-result v3
    :try_end_1e
    .catch Ljava/net/MalformedURLException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_12
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_2a

    if-eqz v3, :cond_10

    move-object/from16 v14, v20

    move/from16 v3, v41

    goto :goto_19

    :cond_10
    move-object v11, v14

    move-object/from16 v4, v40

    move/from16 v3, v41

    goto/16 :goto_16

    :catch_12
    move-exception v0

    goto/16 :goto_f

    :catch_13
    move-exception v0

    goto/16 :goto_12

    :cond_11
    move-object/from16 v14, v20

    :goto_19
    :try_start_1f
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_1f .. :try_end_1f} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_2a

    :try_start_20
    invoke-virtual/range {v40 .. v40}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_20 .. :try_end_20} :catch_15
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_14
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_2a

    goto :goto_1a

    :catch_14
    move-exception v0

    move-object v2, v0

    goto/16 :goto_11

    :catch_15
    move-exception v0

    move-object v2, v0

    goto/16 :goto_14

    :catch_16
    move-exception v0

    move-object v4, v0

    :try_start_21
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_1b
    move-object/from16 v4, v29

    move-object/from16 v3, v33

    goto/16 :goto_2c

    :cond_12
    add-int v4, v7, v3

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "PATCH_CHECK_DOWNLOADED_DATA"

    const/4 v8, 0x0

    aput-object v5, v6, v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v6, v5

    aput-object v14, v6, v16

    invoke-virtual {v1, v6}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x0

    :goto_1c
    array-length v6, v2
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_21 .. :try_end_21} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_2a

    if-ge v5, v6, :cond_13

    :try_start_22
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_22
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_22} :catch_15
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_14
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_2a

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_13
    :try_start_23
    new-instance v2, Ljava/io/File;

    move-object/from16 v5, v39

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_23} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_23} :catch_2a

    move/from16 v5, v36

    if-ne v3, v5, :cond_15

    :try_start_24
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    int-to-long v10, v5

    cmp-long v6, v8, v10

    if-nez v6, :cond_15

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, v32

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_1d

    :cond_14
    new-instance v3, Ljava/io/File;

    move-object/from16 v11, v31

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_24
    .catch Ljava/net/MalformedURLException; {:try_start_24 .. :try_end_24} :catch_15
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_14
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_2a

    add-int/2addr v7, v5

    goto :goto_1b

    :cond_15
    move-object/from16 v8, v32

    :goto_1d
    const/4 v6, 0x2

    :try_start_25
    new-array v9, v6, [Ljava/lang/String;

    const-string v6, "PATCH_ERROR4"

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v30, v9, v6

    invoke-virtual {v1, v9}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file integrity failed!!!: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_25} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_1b
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_25} :catch_2a

    move-object/from16 v4, v29

    :try_start_26
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Ljava/net/MalformedURLException; {:try_start_26 .. :try_end_26} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_19
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_2a

    move-object/from16 v3, v33

    :try_start_27
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_27 .. :try_end_27} :catch_18
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_17
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_27} :catch_2a

    return-object v2

    :catch_17
    move-exception v0

    goto :goto_1f

    :catch_18
    move-exception v0

    goto :goto_21

    :catch_19
    move-exception v0

    goto :goto_1e

    :catch_1a
    move-exception v0

    goto :goto_20

    :catch_1b
    move-exception v0

    move-object/from16 v4, v29

    :goto_1e
    move-object/from16 v3, v33

    :goto_1f
    move-object v2, v0

    goto :goto_26

    :catch_1c
    move-exception v0

    move-object/from16 v4, v29

    :goto_20
    move-object/from16 v3, v33

    :goto_21
    move-object v2, v0

    goto/16 :goto_2a

    :catch_1d
    move-exception v0

    move-object/from16 v4, v29

    move-object/from16 v3, v33

    goto :goto_25

    :catch_1e
    move-exception v0

    move-object/from16 v4, v29

    move-object/from16 v3, v33

    goto :goto_29

    :catch_1f
    move-exception v0

    move v13, v9

    move-object v3, v10

    move-object/from16 v21, v12

    goto :goto_22

    :catch_20
    move-exception v0

    move v13, v9

    move-object v3, v10

    move-object/from16 v21, v12

    goto :goto_23

    :catch_21
    move-exception v0

    move v13, v9

    move-object v3, v10

    :goto_22
    move-object/from16 v4, v29

    goto :goto_25

    :catch_22
    move-exception v0

    move v13, v9

    move-object v3, v10

    :goto_23
    move-object/from16 v4, v29

    goto :goto_29

    :catch_23
    move-exception v0

    move-object v4, v6

    goto :goto_24

    :catch_24
    move-exception v0

    move-object v4, v6

    goto :goto_28

    :catch_25
    move-exception v0

    move-object v4, v6

    move/from16 v28, v8

    :goto_24
    move v13, v9

    move-object v3, v10

    :goto_25
    move-object v2, v0

    move-object/from16 v14, v20

    :goto_26
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    const/4 v2, 0x4

    goto :goto_2b

    :catch_26
    move-exception v0

    move-object v4, v6

    move/from16 v28, v8

    :goto_28
    move v13, v9

    move-object v3, v10

    :goto_29
    move-object v2, v0

    move-object/from16 v14, v20

    :goto_2a
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_27

    :goto_2b
    new-array v5, v2, [Ljava/lang/String;

    const-string v2, "PATCH_DOWNLOAD_FAILED"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    aput-object v14, v5, v16

    invoke-virtual {v1, v5}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v5, 0xfa0

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v12, p1

    move-object v10, v3

    move-object v5, v4

    move v9, v13

    move-object/from16 v2, v21

    move-object/from16 v20, v22

    move-object/from16 v11, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v13, v27

    move/from16 v8, v28

    goto/16 :goto_4

    :catch_27
    move-exception v0

    move v13, v9

    goto/16 :goto_2d

    :catch_28
    move-exception v0

    move v13, v9

    goto/16 :goto_2e

    :cond_16
    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object v4, v5

    move-object/from16 v24, v6

    move/from16 v28, v8

    move-object v3, v10

    move-object/from16 v23, v11

    move-object/from16 p1, v12

    move-object/from16 v27, v13

    move-object/from16 v22, v20

    move v13, v9

    move-object/from16 v20, v14

    :goto_2c
    add-int/lit8 v8, v28, 0x1

    move-object/from16 v12, p1

    move-object v10, v3

    move-object v5, v4

    move v9, v13

    move-object/from16 v2, v21

    move-object/from16 v20, v22

    move-object/from16 v11, v23

    move-object/from16 v6, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v13, v27

    goto/16 :goto_3

    :cond_17
    move v13, v9

    move-object/from16 v23, v11

    invoke-virtual/range {p0 .. p0}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "PATCH_COMPLETED"

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    aput-object v23, v3, v16

    invoke-virtual {v1, v3}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    :cond_18
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_29

    return-object v2

    :catch_29
    move-exception v0

    goto :goto_2d

    :catch_2a
    move-exception v0

    goto :goto_2e

    :catch_2b
    move-exception v0

    move v13, v9

    move-object/from16 v23, v11

    :goto_2d
    move-object v2, v0

    move v4, v7

    move v15, v13

    goto :goto_32

    :catch_2c
    move-exception v0

    move v13, v9

    move-object/from16 v23, v11

    :goto_2e
    move-object v2, v0

    move v4, v7

    move v15, v13

    goto :goto_34

    :catch_2d
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v23, v11

    move-object v2, v0

    move v15, v13

    goto :goto_2f

    :catch_2e
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v23, v11

    move-object v2, v0

    move v15, v13

    goto :goto_30

    :catch_2f
    move-exception v0

    move-object/from16 v23, v11

    move v13, v15

    move-object v2, v0

    :goto_2f
    const/4 v4, 0x0

    goto :goto_32

    :catch_30
    move-exception v0

    move-object/from16 v23, v11

    move v13, v15

    move-object v2, v0

    :goto_30
    const/4 v4, 0x0

    goto :goto_34

    :cond_19
    move-object/from16 v23, v11

    :try_start_29
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "invalid filesData"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_32
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_31

    :catch_31
    move-exception v0

    goto :goto_31

    :catch_32
    move-exception v0

    goto :goto_33

    :catch_33
    move-exception v0

    move-object/from16 v23, v11

    :goto_31
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_32
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    :catch_34
    move-exception v0

    move-object/from16 v23, v11

    :goto_33
    move-object v2, v0

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_34
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_35
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "PATCH_ERROR5"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    aput-object v23, v2, v16

    invoke-virtual {v1, v2}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 3

    const-string v0, "FMPActivity"

    const-string v1, "@@@@@@@@@@@@@@@ onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/game/fmp/FMPActivity;->access$402(Lcom/ea/game/fmp/FMPActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    const/4 v1, 0x0

    const-string v2, "PATCH_CANCELLED@0@0@--:--"

    invoke-virtual {v0, v1, v2}, Lcom/ea/game/fmp/FMPActivity;->asyncDownloadEvent(ZLjava/lang/String;)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2

    const-string p1, "FMPActivity"

    const-string v0, "@@@@@@@@@@@@@@@ onPostExecute"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    const/4 v0, 0x0

    const-string v1, "PATCH_POSTEXECUTE"

    invoke-virtual {p1, v0, v1}, Lcom/ea/game/fmp/FMPActivity;->asyncDownloadEvent(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ea/game/fmp/FMPActivity;->access$402(Lcom/ea/game/fmp/FMPActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "FMPActivity"

    const-string v1, "@@@@@@@@@@@@@@@ onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "PATCH_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "PATCH_ERROR4"

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    const-string v4, "PATCH_CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    const-string v4, "PATCH_ERROR5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    const-string v4, "PATCH_ERROR6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    const-string v4, "PATCH_ERROR8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    aget-object v1, p1, v0

    const-string v4, "PATCH_ERROR7"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    aget-object v4, p1, v0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "@"

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "onProgressUpdate.. Patch error. file: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "FMPActivity"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/ea/game/fmp/FMPActivity$DoAsyncDownloadTask;->this$0:Lcom/ea/game/fmp/FMPActivity;

    invoke-virtual {v0, v1, p1}, Lcom/ea/game/fmp/FMPActivity;->asyncDownloadEvent(ZLjava/lang/String;)V

    return-void
.end method
