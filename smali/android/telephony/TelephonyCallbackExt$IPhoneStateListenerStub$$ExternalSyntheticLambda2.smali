.class public final synthetic Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

.field public final synthetic blacklist f$1:Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

    iput-object p2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

    iput-object p3, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

    iget-object v1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

    iget-object v2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->lambda$onImsRemainTimeReported$3$android-telephony-TelephonyCallbackExt$IPhoneStateListenerStub(Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;Ljava/lang/String;)V

    return-void
.end method
