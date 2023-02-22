.class Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListenerExt$Stub;
.source "TelephonyCallbackExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallbackExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyCallbackExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyCallbackExt;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "telephonyCallbackExt"    # Landroid/telephony/TelephonyCallbackExt;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListenerExt$Stub;-><init>()V

    .line 204
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 205
    iput-object p2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 206
    return-void
.end method

.method static synthetic blacklist lambda$onImsRemainTimeReported$2(Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;
    .param p1, "remainTimeData"    # Ljava/lang/String;

    .line 229
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;->onImsRemainTimeReported(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onPlmnCarrierConfigChanged$0(Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;
    .param p1, "slotId"    # I
    .param p2, "result"    # Landroid/os/PersistableBundle;

    .line 216
    invoke-interface {p0, p1, p2}, Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;->onPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onImsRemainTimeReported$3$android-telephony-TelephonyCallbackExt$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;
    .param p2, "remainTimeData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onPlmnCarrierConfigChanged$1$android-telephony-TelephonyCallbackExt$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;
    .param p2, "slotId"    # I
    .param p3, "result"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onImsRemainTimeReported(Ljava/lang/String;)V
    .locals 2
    .param p1, "remainTimeData"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

    .line 225
    .local v0, "listener":Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;
    if-nez v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 230
    return-void
.end method

.method public blacklist onPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "result"    # Landroid/os/PersistableBundle;

    .line 210
    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->mTelephonyCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

    .line 211
    .local v0, "listener":Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;
    if-nez v0, :cond_0

    .line 212
    return-void

    .line 215
    :cond_0
    new-instance v1, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 217
    return-void
.end method
