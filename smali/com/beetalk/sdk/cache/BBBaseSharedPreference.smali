.class public abstract Lcom/beetalk/sdk/cache/BBBaseSharedPreference;
.super Ljava/lang/Object;
.source "BBBaseSharedPreference.java"


# instance fields
.field protected m_settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->check()V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 3

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->getUserProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected abstract getApplicationContext()Landroid/content/Context;
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-wide p2

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getUserProfileName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public unset(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/beetalk/sdk/cache/BBBaseSharedPreference;->m_settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
