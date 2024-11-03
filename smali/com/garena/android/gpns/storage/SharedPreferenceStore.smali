.class final Lcom/garena/android/gpns/storage/SharedPreferenceStore;
.super Ljava/lang/Object;
.source "SharedPreferenceStore.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "SERVICE_PREF"

.field private static mInstance:Lcom/garena/android/gpns/storage/SharedPreferenceStore;


# instance fields
.field private final mPreference:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SERVICE_PREF"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/garena/android/gpns/storage/SharedPreferenceStore;
    .locals 1

    sget-object v0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mInstance:Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    invoke-direct {v0, p0}, Lcom/garena/android/gpns/storage/SharedPreferenceStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mInstance:Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    :cond_0
    sget-object p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mInstance:Lcom/garena/android/gpns/storage/SharedPreferenceStore;

    return-object p0
.end method


# virtual methods
.method getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method getInt(Ljava/lang/String;I)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method getLong(Ljava/lang/String;J)J
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method putBoolean(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method putInt(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method putLong(Ljava/lang/String;J)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/garena/android/gpns/storage/SharedPreferenceStore;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
