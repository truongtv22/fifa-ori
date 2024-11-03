.class Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;
.super Ljava/lang/Object;
.source "NimbleIdentityMigrationObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_currentAuthenticatorId:Ljava/lang/String;

.field m_currentAuthenticatorPid:Ljava/lang/String;

.field m_migrationGUID:Ljava/lang/String;

.field m_newAuthenticatorId:Ljava/lang/String;

.field m_newAuthenticatorPid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_migrationGUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorPid:Ljava/lang/String;

    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorPid:Ljava/lang/String;

    return-void
.end method
