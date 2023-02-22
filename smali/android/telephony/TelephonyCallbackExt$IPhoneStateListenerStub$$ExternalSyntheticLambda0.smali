.class public final synthetic Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

    iput p2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;->f$2:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

    iget v1, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub$$ExternalSyntheticLambda0;->f$2:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;->lambda$onPlmnCarrierConfigChanged$0(Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method
