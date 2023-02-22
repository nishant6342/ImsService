.class public Landroid/telephony/TelephonyRegistryManagerExt;
.super Ljava/lang/Object;
.source "TelephonyRegistryManagerExt.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyRegistryManagerExt"

.field public static final blacklist TELEPHONY_REGISTRY_EXT:Ljava/lang/String; = "telephony_registry_ext"

.field private static blacklist sRegistry:Lcom/android/internal/telephony/ITelephonyRegistryExt;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/telephony/TelephonyRegistryManagerExt;->mContext:Landroid/content/Context;

    .line 51
    sget-object v0, Landroid/telephony/TelephonyRegistryManagerExt;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistryExt;

    if-nez v0, :cond_0

    .line 52
    nop

    .line 53
    const-string v0, "telephony_registry_ext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistryExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryExt;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyRegistryManagerExt;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistryExt;

    .line 55
    :cond_0
    return-void
.end method

.method private blacklist getEventsFromCallback(Landroid/telephony/TelephonyCallbackExt;)Ljava/util/Set;
    .locals 2
    .param p1, "telephonyCallback"    # Landroid/telephony/TelephonyCallbackExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyCallbackExt;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 82
    .local v0, "eventList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    instance-of v1, p1, Landroid/telephony/TelephonyCallbackExt$PlmnCarrierConfigListener;

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    instance-of v1, p1, Landroid/telephony/TelephonyCallbackExt$ImsRemainTimeListener;

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    return-object v0
.end method

.method static synthetic blacklist lambda$registerTelephonyCallbackExt$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 135
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private blacklist listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;[IZ)Z
    .locals 11
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "slotId"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "telephonyCallback"    # Landroid/telephony/TelephonyCallbackExt;
    .param p7, "events"    # [I
    .param p8, "notifyNow"    # Z

    .line 72
    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyRegistryManagerExt;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistryExt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p6

    :try_start_1
    iget-object v7, v10, Landroid/telephony/TelephonyCallbackExt;->callback:Lcom/android/internal/telephony/IPhoneStateListenerExt;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephonyRegistryExt;->listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListenerExt;[IZ)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v10, p6

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist notifyForRemainTimeReported(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "remainTimeData"    # Ljava/lang/String;

    .line 172
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManagerExt;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistryExt;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistryExt;->notifyForRemainTimeReported(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 176
    :goto_0
    return-void
.end method

.method public blacklist notifyPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "result"    # Landroid/os/PersistableBundle;

    .line 158
    :try_start_0
    sget-object v0, Landroid/telephony/TelephonyRegistryManagerExt;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistryExt;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistryExt;->notifyPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 162
    :goto_0
    return-void
.end method

.method public blacklist registerTelephonyCallbackExt(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;Z)Z
    .locals 12
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "slotId"    # I
    .param p5, "pkgName"    # Ljava/lang/String;
    .param p6, "attributionTag"    # Ljava/lang/String;
    .param p7, "callback"    # Landroid/telephony/TelephonyCallbackExt;
    .param p8, "notifyNow"    # Z

    .line 128
    move-object/from16 v9, p7

    if-nez v9, :cond_0

    .line 129
    const-string v0, "TelephonyRegistryManagerExt"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    move-object v10, p3

    invoke-virtual {v9, p3}, Landroid/telephony/TelephonyCallbackExt;->init(Ljava/util/concurrent/Executor;)V

    .line 133
    nop

    .line 135
    move-object v11, p0

    invoke-direct {p0, v9}, Landroid/telephony/TelephonyRegistryManagerExt;->getEventsFromCallback(Landroid/telephony/TelephonyCallbackExt;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyRegistryManagerExt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/TelephonyRegistryManagerExt$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 133
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/telephony/TelephonyRegistryManagerExt;->listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;[IZ)Z

    move-result v0

    return v0
.end method

.method public blacklist unregisterTelephonyCallbackExt(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;Z)Z
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/telephony/TelephonyCallbackExt;
    .param p5, "notifyNow"    # Z

    .line 145
    const/4 v0, 0x0

    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v9, p5

    invoke-direct/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManagerExt;->listenFromCallback(ZZILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;[IZ)Z

    move-result v0

    return v0
.end method
