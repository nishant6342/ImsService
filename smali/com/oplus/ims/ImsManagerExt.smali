.class public Lcom/oplus/ims/ImsManagerExt;
.super Lcom/oplus/telephony/BaseManagerExt;
.source "ImsManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;,
        Lcom/oplus/ims/ImsManagerExt$IListenerExternal;
    }
.end annotation


# static fields
.field public static final whitelist IIMS_EXT:Ljava/lang/String; = "iims_ext"

.field private static final blacklist TAG:Ljava/lang/String; = "ImsManagerExt"

.field private static blacklist sInstance:Lcom/oplus/ims/ImsManagerExt;


# instance fields
.field private blacklist mConnectorListener:Landroid/telephony/ims/ImsRilConnector$IListener;

.field private blacklist mIImsExt:Lcom/oplus/ims/IImsExt;

.field private blacklist mImsRilConnector:Landroid/telephony/ims/ImsRilConnector;

.field private blacklist mImsRilManager:Landroid/telephony/ims/ImsRilManager;

.field private blacklist mIsBinderAvailable:Z

.field private blacklist mIsPendingConnect:Z

.field private blacklist mListenerExternalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/ims/ImsManagerExt$IListenerExternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmImsRilManager(Lcom/oplus/ims/ImsManagerExt;Landroid/telephony/ims/ImsRilManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/ims/ImsManagerExt;->mImsRilManager:Landroid/telephony/ims/ImsRilManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsBinderAvailable(Lcom/oplus/ims/ImsManagerExt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/ims/ImsManagerExt;->mIsBinderAvailable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPendingConnect(Lcom/oplus/ims/ImsManagerExt;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/ims/ImsManagerExt;->mIsPendingConnect:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConnectionAvailable(Lcom/oplus/ims/ImsManagerExt;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/ims/ImsManagerExt;->notifyConnectionAvailable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConnectionUnavailable(Lcom/oplus/ims/ImsManagerExt;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/ims/ImsManagerExt;->notifyConnectionUnavailable()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0, p1}, Lcom/oplus/telephony/BaseManagerExt;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/ims/ImsManagerExt;->mIsBinderAvailable:Z

    .line 59
    iput-boolean v0, p0, Lcom/oplus/ims/ImsManagerExt;->mIsPendingConnect:Z

    .line 66
    return-void
.end method

.method public static blacklist from(Landroid/content/Context;)Lcom/oplus/ims/ImsManagerExt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    const-string v0, "iims_ext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/ims/ImsManagerExt;

    return-object v0
.end method

.method private blacklist getIImsExt()Lcom/oplus/ims/IImsExt;
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/ims/ImsManagerExt;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mIImsExt:Lcom/oplus/ims/IImsExt;

    .line 237
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mImsRilManager:Landroid/telephony/ims/ImsRilManager;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v1}, Landroid/telephony/ims/ImsRilManager;->getImsExt()Lcom/oplus/ims/IImsExt;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .local v1, "temp":Lcom/oplus/ims/IImsExt;
    if-eqz v1, :cond_0

    .line 241
    :try_start_1
    iput-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mIImsExt:Lcom/oplus/ims/IImsExt;

    .line 242
    invoke-interface {v1}, Lcom/oplus/ims/IImsExt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/ims/ImsManagerExt;->setIBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ImsManagerExt"

    const-string v4, "getIImsExt failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v1    # "temp":Lcom/oplus/ims/IImsExt;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mIImsExt:Lcom/oplus/ims/IImsExt;

    monitor-exit v0

    return-object v1

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lcom/oplus/ims/ImsManagerExt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    const-class v0, Lcom/oplus/ims/ImsManagerExt;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/oplus/ims/ImsManagerExt;->sInstance:Lcom/oplus/ims/ImsManagerExt;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/oplus/ims/ImsManagerExt;

    invoke-direct {v1, p0}, Lcom/oplus/ims/ImsManagerExt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/ims/ImsManagerExt;->sInstance:Lcom/oplus/ims/ImsManagerExt;

    .line 89
    :cond_0
    sget-object v1, Lcom/oplus/ims/ImsManagerExt;->sInstance:Lcom/oplus/ims/ImsManagerExt;

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist notifyConnectionAvailable()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/ims/ImsManagerExt$IListenerExternal;

    .line 135
    .local v2, "iListenerExternal":Lcom/oplus/ims/ImsManagerExt$IListenerExternal;
    invoke-interface {v2}, Lcom/oplus/ims/ImsManagerExt$IListenerExternal;->onConnectionAvailable()V

    .line 136
    .end local v2    # "iListenerExternal":Lcom/oplus/ims/ImsManagerExt$IListenerExternal;
    goto :goto_0

    .line 137
    :cond_0
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist notifyConnectionUnavailable()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/ims/ImsManagerExt$IListenerExternal;

    .line 143
    .local v2, "iListenerExternal":Lcom/oplus/ims/ImsManagerExt$IListenerExternal;
    invoke-interface {v2}, Lcom/oplus/ims/ImsManagerExt$IListenerExternal;->onConnectionUnavailable()V

    .line 144
    .end local v2    # "iListenerExternal":Lcom/oplus/ims/ImsManagerExt$IListenerExternal;
    goto :goto_0

    .line 145
    :cond_0
    monitor-exit v0

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist connect()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mConnectorListener:Landroid/telephony/ims/ImsRilConnector$IListener;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;-><init>(Lcom/oplus/ims/ImsManagerExt;Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener-IA;)V

    iput-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mConnectorListener:Landroid/telephony/ims/ImsRilConnector$IListener;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mImsRilConnector:Landroid/telephony/ims/ImsRilConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 161
    :try_start_1
    new-instance v1, Landroid/telephony/ims/ImsRilConnector;

    iget-object v2, p0, Lcom/oplus/ims/ImsManagerExt;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/ims/ImsManagerExt;->mConnectorListener:Landroid/telephony/ims/ImsRilConnector$IListener;

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsRilConnector;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsRilConnector$IListener;)V

    iput-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mImsRilConnector:Landroid/telephony/ims/ImsRilConnector;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "ImsManagerExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect imsext failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/oplus/ims/ImsManagerExt;->mIsBinderAvailable:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/oplus/ims/ImsManagerExt;->mIsPendingConnect:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mImsRilConnector:Landroid/telephony/ims/ImsRilConnector;

    if-eqz v1, :cond_2

    .line 167
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsRilConnector;->connect(Z)Z

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/ims/ImsManagerExt;->mIsPendingConnect:Z

    .line 171
    :cond_2
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist disconnect()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mImsRilConnector:Landroid/telephony/ims/ImsRilConnector;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/telephony/ims/ImsRilConnector;->disconnect()V

    .line 184
    :cond_0
    return-void
.end method

.method public blacklist isBinderAlive()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/oplus/ims/ImsManagerExt;->mIsBinderAvailable:Z

    return v0
.end method

.method public blacklist registerListenerExternal(Lcom/oplus/ims/ImsManagerExt$IListenerExternal;)V
    .locals 2
    .param p1, "listenerExternal"    # Lcom/oplus/ims/ImsManagerExt$IListenerExternal;

    .line 205
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Lcom/oplus/ims/ImsManagerExt;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/oplus/ims/ImsManagerExt$IListenerExternal;->onConnectionAvailable()V

    .line 212
    :cond_0
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unregisterListenerExternal(Lcom/oplus/ims/ImsManagerExt$IListenerExternal;)V
    .locals 2
    .param p1, "listenerExternal"    # Lcom/oplus/ims/ImsManagerExt$IListenerExternal;

    .line 223
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/oplus/ims/ImsManagerExt;->mListenerExternalList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0}, Lcom/oplus/ims/ImsManagerExt;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-interface {p1}, Lcom/oplus/ims/ImsManagerExt$IListenerExternal;->onConnectionUnavailable()V

    .line 230
    :cond_0
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
