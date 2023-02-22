.class public final synthetic Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

    iput p3, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$3:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$1:Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

    iget v2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda1;->f$3:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->lambda$onPlmnCarrierConfigChanged$1$android-telephony-TelephonyCallbackExt$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method
