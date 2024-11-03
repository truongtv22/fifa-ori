.class public Lcom/ea/blast/NearFieldCommunicationAndroid;
.super Ljava/lang/Object;
.source "NearFieldCommunicationAndroid.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# instance fields
.field private mAAREnabled:Z

.field private mMimeType:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public mUserData:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public EnableAAR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mAAREnabled:Z

    return-void
.end method

.method public Exit()V
    .locals 5

    iget-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v4, v1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    return-void
.end method

.method public GetPendingNFC()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NdefMessage;

    sget-object v2, Lcom/ea/blast/MainActivity;->mPendingNFCList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public Init()Z
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mAAREnabled:Z

    invoke-virtual {p0}, Lcom/ea/blast/NearFieldCommunicationAndroid;->IsAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v3, "nfc"

    invoke-virtual {v2, v3}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/NfcManager;

    invoke-virtual {v2}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_1

    return v0

    :cond_1
    sget-object v3, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v4, v0, [Landroid/app/Activity;

    invoke-virtual {v2, p0, v3, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v3, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    new-array v0, v0, [Landroid/app/Activity;

    invoke-virtual {v2, p0, v3, v0}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    return v1
.end method

.method public IsAvailable()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public RegisterUserData(I)V
    .locals 0

    iput p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    return-void
.end method

.method public SetMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public native cbNFCCompletedTX(I)V
.end method

.method public native cbNFCProximityTX(I)Ljava/lang/String;
.end method

.method public createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 3

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, v1, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 6

    iget p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    invoke-virtual {p0, p1}, Lcom/ea/blast/NearFieldCommunicationAndroid;->cbNFCProximityTX(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mAAREnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/nfc/NdefRecord;

    iget-object v5, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/ea/blast/NearFieldCommunicationAndroid;->createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p1

    aput-object p1, v4, v2

    sget-object p1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {p1}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-direct {v0, v4}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    iget-object v4, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/ea/blast/NearFieldCommunicationAndroid;->createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-direct {v0, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    :catch_0
    return-object v1
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 0

    iget p1, p0, Lcom/ea/blast/NearFieldCommunicationAndroid;->mUserData:I

    invoke-virtual {p0, p1}, Lcom/ea/blast/NearFieldCommunicationAndroid;->cbNFCCompletedTX(I)V

    return-void
.end method
