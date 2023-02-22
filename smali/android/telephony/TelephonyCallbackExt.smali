.class public Landroid/telephony/TelephonyCallbackExt;
.super Ljava/lang/Object;
.source "TelephonyCallbackExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;,
        Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;,
        Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_PER_PID_REGISTRATION_LIMIT:I = 0x32

.field public static final blacklist EVENT_IMS_REG_REMAIN_TIME_IND:I = 0x4

.field public static final whitelist EVENT_PLMN_CARRIER_CONFIG_CHANGED:I = 0x1

.field public static final blacklist FLAG_PER_PID_REGISTRATION_LIMIT:Ljava/lang/String; = "phone_state_listener_per_pid_registration_limit"

.field public static final blacklist IS_REGISTRATION_LIMIT_ENABLED:Z = true

.field public static final blacklist PHONE_STATE_LISTENER_LIMIT_CHANGE_ID:J = 0x8fe4129L


# instance fields
.field public blacklist callback:Lcom/android/internal/telephony/IPhoneStateListenerExt;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 143
    if-eqz p1, :cond_0

    .line 146
    new-instance v0, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyCallbackExt$IPhoneStateListenerStub;-><init>(Landroid/telephony/TelephonyCallbackExt;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/TelephonyCallbackExt;->callback:Lcom/android/internal/telephony/IPhoneStateListenerExt;

    .line 147
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TelephonyCallbackExt Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
