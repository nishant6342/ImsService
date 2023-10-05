.class Lcom/mediatek/ims/ImsService$MyHandler;
.super Landroid/os/Handler;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field mSocketId:I

.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsService;I)V
    .locals 1
    .param p2, "socketId"    # I

    .line 2446
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2447
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;Z)V

    .line 2448
    iput p2, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2449
    return-void
.end method

.method private isRttSupported(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 3203
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3204
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isRttSupported()Z

    move-result v1

    return v1
.end method

.method private setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 8
    .param p1, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p2, "phoneId"    # I

    .line 3178
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v0, p2}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 3179
    .local v0, "subId":I
    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->isRttSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3180
    return-void

    .line 3182
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rtt_calling_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3184
    .local v1, "isRttEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    const-string v6, "ignore_rtt_mode_setting_bool"

    invoke-static {v4, v5, v6}, Lcom/mediatek/ims/ImsService;->access$6500(Lcom/mediatek/ims/ImsService;ILjava/lang/String;)Z

    move-result v4

    .line 3186
    .local v4, "isRttAlwaysOnCarrierConfig":Z
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRttEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "phoneId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CarrierConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3189
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    :goto_1
    move v1, v2

    .line 3190
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_4

    .line 3191
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v5, "setRttModeForIncomingCall: mode = 2"

    invoke-static {v3, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3192
    iget-object v3, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-interface {v3, v5, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    goto :goto_2

    .line 3194
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v6, "setRttModeForIncomingCall: mode = 0"

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3195
    iget-object v5, p0, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    invoke-interface {v5, v3, v2}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setRttMode(ILandroid/os/Message;)V

    .line 3200
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .line 2456
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0xa

    const/16 v6, 0xe

    const/16 v7, 0x10

    const/16 v8, 0x2a

    const/16 v9, 0x29

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1a

    .line 3056
    :pswitch_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive EVENT_CC_CAPABILITY_CHANGE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3057
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3058
    goto/16 :goto_1a

    .line 3154
    :pswitch_2
    const/16 v0, 0x2b

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3155
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3159
    :cond_0
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2200(Lcom/mediatek/ims/ImsService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3160
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "rechecking vowifi registration"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1a

    .line 3163
    :cond_1
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "vowifi registration check pass"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3165
    goto/16 :goto_1a

    .line 3144
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3145
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 3147
    :cond_2
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "Query ims registration via enable report"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3149
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    const/16 v3, 0x15

    .line 3150
    invoke-virtual {v1, v3}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3149
    invoke-interface {v0, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setImsRegistrationReport(Landroid/os/Message;)V

    .line 3151
    goto/16 :goto_1a

    .line 2604
    :pswitch_4
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage(), EIMSUI time out:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2605
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2604
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$2900(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2606
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-nez v0, :cond_43

    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2607
    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-ne v0, v14, :cond_43

    .line 2608
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v0, v3

    .line 2609
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v0, v3

    .line 2610
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2611
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2612
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 2614
    .local v0, "oemPlugin2":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v0, :cond_3

    .line 2615
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2616
    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    .line 2615
    invoke-interface {v0, v3}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_0

    .line 2616
    :cond_3
    nop

    :goto_0
    move-object v3, v11

    .line 2617
    .local v3, "imsRegOemPlugin2":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v3, :cond_4

    .line 2618
    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2619
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    .line 2618
    invoke-interface {v3, v4, v5, v13}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2621
    .end local v0    # "oemPlugin2":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v3    # "imsRegOemPlugin2":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_4
    goto/16 :goto_1a

    .line 2572
    :pswitch_5
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2573
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2575
    :cond_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2576
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v13

    if-eq v3, v14, :cond_6

    .line 2577
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage(), EIMSUI flag is not 1"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2900(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2578
    return-void

    .line 2579
    :cond_6
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v3, v3, v4

    if-nez v3, :cond_7

    .line 2580
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage(), EIMSUI ims already reg"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2900(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2581
    return-void

    .line 2583
    :cond_7
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v3, v4

    .line 2584
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v3, v4

    .line 2585
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    or-int/2addr v5, v14

    aput v5, v3, v4

    .line 2586
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage(), EIMSUI Reg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2587
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2586
    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2588
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5, v13}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2589
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    invoke-static {v3, v4, v5, v13}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2590
    const/4 v3, 0x0

    .line 2591
    .local v3, "isWfc":Z
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v4

    .line 2593
    .local v4, "oemPlugin1":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v4, :cond_8

    .line 2594
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2595
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v5

    .line 2594
    invoke-interface {v4, v5}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_1

    .line 2595
    :cond_8
    nop

    :goto_1
    move-object v5, v11

    .line 2596
    .local v5, "imsRegOemPlugin1":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v5, :cond_9

    .line 2597
    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2598
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v7, v7, v8

    .line 2597
    invoke-interface {v5, v6, v7, v3}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2600
    :cond_9
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x2710

    invoke-virtual {v1, v6, v7, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2602
    goto/16 :goto_1a

    .line 3111
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "isWfc":Z
    .end local v4    # "oemPlugin1":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v5    # "imsRegOemPlugin1":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :pswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3112
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 3115
    .local v4, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    .line 3116
    .local v5, "rat":I
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v14, :cond_a

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_a

    .line 3126
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3130
    :cond_a
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive EVENT_DETAIL_IMS_REGISTRATION_IND, phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rat = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3133
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v6, v5}, Lcom/mediatek/ims/ImsService;->access$6300(Lcom/mediatek/ims/ImsService;II)V

    .line 3136
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_43

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_43

    .line 3137
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const/16 v6, 0x11

    invoke-static {v3, v6}, Lcom/mediatek/ims/ImsService;->access$6400(Lcom/mediatek/ims/ImsService;I)V

    goto/16 :goto_1a

    .line 3081
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "rat":I
    :pswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3082
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/mediatek/ims/ImsRegInfo;

    .line 3083
    .local v3, "info":Lcom/mediatek/ims/ImsRegInfo;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$6100(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ImsRegInfo;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v3, v4, v5

    .line 3084
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4, v3, v11, v5}, Lcom/mediatek/ims/ImsService;->access$6200(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;I)V

    .line 3085
    goto/16 :goto_1a

    .line 2677
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "info":Lcom/mediatek/ims/ImsRegInfo;
    :pswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2678
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2679
    .local v3, "incomingCallInfo":[Ljava/lang/String;
    aget-object v4, v3, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2680
    .local v4, "type":I
    const/16 v5, 0x64

    if-ne v4, v5, :cond_43

    .line 2681
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->access$3600(Lcom/mediatek/ims/ImsService;I[Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3062
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "incomingCallInfo":[Ljava/lang/String;
    .end local v4    # "type":I
    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3063
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_c

    .line 3064
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_b

    .line 3065
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v13

    .line 3066
    .local v3, "vops":I
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_VOPS_STATUS_IND, vops = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3068
    .end local v3    # "vops":I
    goto/16 :goto_1a

    .line 3069
    :cond_b
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive EVENT_VOPS_STATUS_IND, ar.result is null,  phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 3072
    :cond_c
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive EVENT_VOPS_STATUS_IND, ar is null,  phoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$2400(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3074
    goto/16 :goto_1a

    .line 3077
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->notifyImsServiceReady()V

    .line 3078
    goto/16 :goto_1a

    .line 3042
    :pswitch_b
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v4}, Lcom/mediatek/ims/ImsService;->access$6000(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 3043
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v13, v12}, Lcom/mediatek/ims/ImsService;->acknowledgeLastIncomingCdmaSms(IZI)V

    goto/16 :goto_1a

    .line 3029
    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3030
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_43

    .line 3031
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3032
    .local v3, "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_NEW_SMS, mSocketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3033
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 3034
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newImsSmsInd([BLjava/lang/String;)V

    .line 3037
    .end local v3    # "pdu":[B
    :cond_d
    goto/16 :goto_1a

    .line 3017
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3018
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_43

    .line 3019
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    .line 3020
    .restart local v3    # "pdu":[B
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_IMS_SMS_STATUS_REPORT, mSocketId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3021
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 3022
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    const-string v5, "3gpp"

    invoke-interface {v4, v3, v5}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->newStatusReportInd([BLjava/lang/String;)V

    .line 3025
    .end local v3    # "pdu":[B
    :cond_e
    goto/16 :goto_1a

    .line 3050
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive EVENT_UT_CAPABILITY_CHANGE, phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3051
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v2, Landroid/os/Message;->arg1:I

    aget v4, v4, v5

    invoke-static {v0, v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 3052
    goto/16 :goto_1a

    .line 2975
    :pswitch_f
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 2976
    .local v0, "phone_id":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 2978
    .local v3, "token":I
    const/4 v4, 0x0

    .line 2979
    .local v4, "messageRef":I
    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    .line 2981
    .local v5, "ar":Landroid/os/AsyncResult;
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_f

    .line 2982
    iget-object v6, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/mediatek/ims/MtkSmsResponse;

    iget v4, v6, Lcom/mediatek/ims/MtkSmsResponse;->mMessageRef:I

    goto :goto_2

    .line 2984
    :cond_f
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : MtkSmsResponse was null"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2987
    :goto_2
    iget-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_10

    .line 2988
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : SMS send complete, messageRef: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2989
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 2990
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v6, v3, v4, v14, v13}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    goto :goto_4

    .line 2995
    :cond_10
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v7, "handleMessage() : SMS send failed"

    invoke-static {v6, v7}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2996
    const/4 v6, 0x2

    .line 2997
    .local v6, "status":I
    const/4 v7, 0x1

    .line 2998
    .local v7, "reason":I
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_11

    .line 3004
    const/4 v6, 0x4

    goto :goto_3

    .line 3005
    :cond_11
    iget-object v8, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v8, v9, :cond_12

    .line 3007
    const/4 v7, 0x6

    .line 3009
    :cond_12
    :goto_3
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 3010
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5900()Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;

    invoke-interface {v8, v3, v4, v6, v7}, Lcom/mediatek/ims/ImsService$IMtkMmTelFeatureCallback;->sendSmsRsp(IIII)V

    .line 3015
    .end local v0    # "phone_id":I
    .end local v3    # "token":I
    .end local v4    # "messageRef":I
    .end local v6    # "status":I
    .end local v7    # "reason":I
    :cond_13
    :goto_4
    goto/16 :goto_1a

    .line 2930
    .end local v5    # "ar":Landroid/os/AsyncResult;
    :pswitch_10
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : Start init call session proxy"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2932
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 2933
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "callId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2934
    .local v3, "callId":Ljava/lang/String;
    const-string v4, "phoneId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2935
    .local v4, "phoneId":I
    const-string v5, "seqNum"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2937
    .local v5, "seqNum":I
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    new-instance v7, Lcom/mediatek/ims/MtkImsCallSessionProxy;

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2938
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v15

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v8

    aget-object v16, v8, v4

    const/16 v17, 0x0

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2939
    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v9

    aget-object v19, v9, v4

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v9

    aget-object v20, v9, v4

    move-object v14, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v3

    move/from16 v22, v4

    invoke-direct/range {v14 .. v22}, Lcom/mediatek/ims/MtkImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    aput-object v7, v6, v4

    .line 2941
    new-instance v6, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2942
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v15

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5800(Lcom/mediatek/ims/ImsService;)[Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    aget-object v16, v7, v4

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2943
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v19, v8, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v8

    aget-object v20, v8, v4

    move-object v14, v6

    move-object/from16 v18, v7

    invoke-direct/range {v14 .. v22}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2945
    .local v6, "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setAospCallSessionProxy(Lcom/mediatek/ims/ImsCallSessionProxy;)V

    .line 2946
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/ImsCallSessionProxy;->setMtkCallSessionProxy(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V

    .line 2948
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v7

    .line 2949
    invoke-virtual {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2950
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v9

    aget-object v9, v9, v4

    .line 2948
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    aget-object v7, v7, v4

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-interface {v7, v8}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->unregisterForCallInfo(Landroid/os/Handler;)V

    .line 2953
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    aget-object v7, v7, v4

    .line 2955
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2953
    invoke-interface {v7, v13, v8, v5, v13}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->setCallIndication(IIII)V

    .line 2959
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_43

    .line 2961
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v8, "handleMessage() : Start deal with pending 133"

    invoke-static {v7, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2963
    invoke-virtual {v6}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v7

    .line 2964
    .local v7, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 2965
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    :cond_14
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 2969
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v8, v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 2970
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v8

    aput-object v11, v8, v4

    .line 2971
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v8, v9

    .line 2972
    .end local v7    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    goto/16 :goto_1a

    .line 2858
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "callId":Ljava/lang/String;
    .end local v4    # "phoneId":I
    .end local v5    # "seqNum":I
    .end local v6    # "imsCallSessionProxy":Lcom/mediatek/ims/ImsCallSessionProxy;
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 2859
    .local v3, "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    aget v4, v0, v13

    .line 2860
    .local v4, "eccSupport":I
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receive EVENT_IMS_SUPPORT_ECC_URC, enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2866
    if-nez v4, :cond_15

    .line 2867
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    and-int/lit8 v6, v6, -0x2

    aput v6, v0, v5

    goto :goto_5

    .line 2868
    :cond_15
    if-ne v4, v14, :cond_16

    .line 2869
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    or-int/2addr v6, v14

    aput v6, v0, v5

    goto :goto_5

    .line 2870
    :cond_16
    if-ne v4, v12, :cond_17

    .line 2871
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    and-int/lit8 v6, v6, -0x11

    aput v6, v0, v5

    goto :goto_5

    .line 2872
    :cond_17
    if-ne v4, v10, :cond_18

    .line 2873
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v0, v5

    or-int/2addr v6, v7

    aput v6, v0, v5

    .line 2875
    :cond_18
    :goto_5
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$5300(Lcom/mediatek/ims/ImsService;)Ljava/util/ArrayList;

    move-result-object v0

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/HashSet;

    .line 2876
    .local v5, "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    const/4 v0, 0x0

    .line 2877
    .local v0, "resultEvent":I
    if-eqz v5, :cond_43

    .line 2878
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5200(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v7

    if-lez v6, :cond_19

    .line 2879
    const/4 v0, 0x2

    move v6, v0

    goto :goto_6

    .line 2882
    :cond_19
    const/4 v0, 0x4

    move v6, v0

    .line 2885
    .end local v0    # "resultEvent":I
    .local v6, "resultEvent":I
    :goto_6
    monitor-enter v5

    .line 2887
    :try_start_0
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/internal/IImsRegistrationListener;

    .line 2888
    .local v7, "l":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-interface {v7, v14, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationServiceCapabilityChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2890
    .end local v7    # "l":Lcom/android/ims/internal/IImsRegistrationListener;
    goto :goto_7

    .line 2893
    :cond_1a
    goto :goto_8

    .line 2894
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 2891
    :catch_0
    move-exception v0

    .line 2894
    :goto_8
    :try_start_1
    monitor-exit v5

    goto/16 :goto_1a

    :goto_9
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2846
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "eccSupport":I
    .end local v5    # "ecclisteners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/ims/internal/IImsRegistrationListener;>;"
    .end local v6    # "resultEvent":I
    :pswitch_12
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    .line 2847
    .local v0, "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2848
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    .line 2850
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 2851
    .local v4, "exui":[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5000()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : XUI_INFO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ImsService"

    aget-object v8, v4, v12

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2852
    :cond_1b
    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v4, v12

    invoke-virtual {v0, v5, v6}, Lcom/mediatek/ims/internal/ImsXuiManager;->setXui(ILjava/lang/String;)V

    .line 2854
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "exui":[Ljava/lang/String;
    :cond_1c
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v0, v4}, Lcom/mediatek/ims/ImsService;->access$5100(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/internal/ImsXuiManager;I)V

    .line 2855
    goto/16 :goto_1a

    .line 2816
    .end local v0    # "xuiManager":Lcom/mediatek/ims/internal/ImsXuiManager;
    :pswitch_13
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v3, "handleMessage() : receive EVENT_RUN_GBA: Enter messege"

    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2821
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 2822
    .restart local v3    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    .line 2823
    .local v5, "nafInfoTemp":[Ljava/lang/String;
    iget-object v0, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;

    .line 2825
    .local v6, "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    iget-object v7, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 2826
    :try_start_2
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1d

    .line 2827
    iput v10, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2828
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_ERROR"

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_a

    .line 2830
    :cond_1d
    invoke-static {}, Lcom/mediatek/ims/ImsService;->access$5000()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2831
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage() : receive EVENT_RUN_GBA: hexkey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v13

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", btid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", keylifetime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v5, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2834
    :cond_1e
    new-instance v0, Lcom/mediatek/gba/NafSessionKey;

    aget-object v8, v5, v12

    aget-object v9, v5, v13

    .line 2835
    invoke-static {v9}, Lcom/mediatek/ims/ImsCommonUtil;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v9

    aget-object v10, v5, v10

    invoke-direct {v0, v8, v9, v10}, Lcom/mediatek/gba/NafSessionKey;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 2837
    .local v0, "nafKey":Lcom/mediatek/gba/NafSessionKey;
    iput-object v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    .line 2838
    iput v4, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 2839
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v8, "handleMessage() : receive EVENT_RUN_GBA: IMS_SS_CMD_SUCCESS"

    invoke-static {v4, v8}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2841
    .end local v0    # "nafKey":Lcom/mediatek/gba/NafSessionKey;
    :goto_a
    iget-object v0, v6, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2842
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : receive EVENT_RUN_GBA: notify result"

    invoke-static {v0, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2843
    monitor-exit v7

    .line 2844
    goto/16 :goto_1a

    .line 2843
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2785
    .end local v3    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "nafInfoTemp":[Ljava/lang/String;
    .end local v6    # "result":Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
    :pswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2786
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    aget v3, v3, v13

    if-ne v3, v14, :cond_1f

    move v3, v14

    goto :goto_b

    :cond_1f
    move v3, v13

    .line 2787
    .local v3, "enable":Z
    :goto_b
    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v4

    .line 2788
    .local v4, "simState":I
    if-eq v4, v14, :cond_21

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    .line 2789
    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    const/4 v6, -0x1

    if-gt v5, v6, :cond_20

    goto :goto_c

    .line 2799
    :cond_20
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v5, v6

    goto :goto_d

    .line 2791
    :cond_21
    :goto_c
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4300(Lcom/mediatek/ims/ImsService;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 2792
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2793
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2794
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4400(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2795
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6, v14}, Lcom/mediatek/ims/ImsService;->access$4302(Lcom/mediatek/ims/ImsService;Z)Z

    .line 2797
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_22
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v5, v6

    .line 2801
    :goto_d
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4600(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v3, v5, v6

    .line 2802
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)I

    move-result v5

    if-nez v5, :cond_23

    .line 2803
    const-string v5, "vendor.ril.imsconfig.force.notify"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 2805
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string v6, "com.android.intent.action.IMS_FEATURE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2806
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4800(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2808
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_23
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)I

    move-result v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    shl-int v7, v14, v7

    or-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$4702(Lcom/mediatek/ims/ImsService;I)I

    .line 2809
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5, v6, v3}, Lcom/mediatek/ims/ImsService;->access$4900(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2810
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : Volte_Setting_Enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", register:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2811
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4500(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mWaitFeatureChange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2812
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$4700(Lcom/mediatek/ims/ImsService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2810
    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2813
    goto/16 :goto_1a

    .line 2773
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "enable":Z
    .end local v4    # "simState":I
    :pswitch_15
    goto/16 :goto_1a

    .line 2781
    :pswitch_16
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v14, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2782
    goto/16 :goto_1a

    .line 2778
    :pswitch_17
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v13, v3}, Lcom/mediatek/ims/ImsService;->updateRadioState(II)V

    .line 2779
    goto/16 :goto_1a

    .line 2767
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_DEREGISTERED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2768
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2769
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2770
    goto/16 :goto_1a

    .line 2764
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_19
    goto/16 :goto_1a

    .line 2732
    :pswitch_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2734
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2736
    .local v3, "eiusd":[Ljava/lang/String;
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_ON_USSI, m = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v14

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2738
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-virtual {v4, v14, v14, v12}, Lcom/mediatek/ims/ImsService;->onCreateCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 2740
    .local v4, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    const-string v5, "dialstring"

    invoke-virtual {v4, v5, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2742
    const-string v5, "m"

    aget-object v6, v3, v13

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    const-string v5, "str"

    aget-object v6, v3, v14

    invoke-virtual {v4, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    new-instance v5, Lcom/mediatek/ims/ImsCallSessionProxy;

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2746
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v16

    const/16 v18, 0x0

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2750
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v20, v7, v8

    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2751
    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v7

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v21, v7, v8

    const-string v22, "-1"

    move-object v15, v5

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move/from16 v23, v8

    invoke-direct/range {v15 .. v23}, Lcom/mediatek/ims/ImsCallSessionProxy;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallSessionListener;Lcom/mediatek/ims/ImsService;Landroid/os/Handler;Lcom/mediatek/ims/ril/ImsCommandsInterface;Ljava/lang/String;I)V

    .line 2755
    .local v5, "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2756
    .local v6, "ussiExtras":Landroid/os/Bundle;
    const-string v7, "android:ussd"

    invoke-virtual {v6, v7, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2757
    const-string v7, "android:imsCallID"

    const-string v8, "-1"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    const-string v7, "android:imsServiceId"

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v8, v9}, Lcom/mediatek/ims/ImsService;->mapPhoneIdToServiceId(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2760
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v7, v8, v5, v6}, Lcom/mediatek/ims/ImsService;->access$4200(Lcom/mediatek/ims/ImsService;ILandroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 2761
    goto/16 :goto_1a

    .line 2685
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "eiusd":[Ljava/lang/String;
    .end local v4    # "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    .end local v5    # "ussiSession":Lcom/mediatek/ims/ImsCallSessionProxy;
    .end local v6    # "ussiExtras":Landroid/os/Bundle;
    :pswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2686
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    .line 2691
    .local v7, "sipMessage":[Ljava/lang/String;
    if-eqz v7, :cond_43

    .line 2692
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage() : Method ="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v13, v7, v10

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " response_code ="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v13, v7, v4

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " reason_text ="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v13, v7, v3

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2695
    aget-object v8, v7, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2696
    .local v8, "sipMethod":I
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2697
    .local v4, "sipResponseCode":I
    aget-object v3, v7, v3

    .line 2698
    .local v3, "sipReasonText":Ljava/lang/String;
    if-eqz v8, :cond_24

    const/16 v9, 0x9

    if-eq v8, v9, :cond_24

    if-ne v8, v5, :cond_2b

    .line 2699
    :cond_24
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v5

    .line 2700
    .local v5, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    if-eq v9, v12, :cond_26

    if-eqz v5, :cond_25

    .line 2702
    invoke-interface {v5}, Lcom/mediatek/ims/ext/IImsServiceExt;->isWfcRegErrorCauseSupported()Z

    move-result v9

    if-eqz v9, :cond_25

    goto :goto_e

    .line 2726
    :cond_25
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v4, v6, v9

    goto/16 :goto_10

    .line 2703
    :cond_26
    :goto_e
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v13, v4, v8, v3}, Lcom/mediatek/ims/ImsService;->access$3900(Lcom/mediatek/ims/ImsService;IILjava/lang/String;)I

    move-result v13

    aput v13, v9, v10

    .line 2705
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v13

    iget v14, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v13, v13, v14

    invoke-static {v9, v10, v13}, Lcom/mediatek/ims/ImsService;->access$4000(Lcom/mediatek/ims/ImsService;II)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 2706
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v9, "triggerImsRegistrationNotify since no telephony add on"

    invoke-static {v6, v9}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    goto :goto_f

    .line 2707
    :cond_27
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    const/16 v10, 0x640

    if-ne v9, v10, :cond_28

    if-nez v8, :cond_28

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2709
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    if-eqz v9, :cond_28

    .line 2710
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v10, "handleMessage() : L-ePDG-5025 8-13. Received SIP REG 403 response, perform ImsDiscommect flow."

    invoke-static {v9, v10}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2711
    new-array v9, v12, [I

    fill-array-data v9, :array_0

    .line 2712
    .local v9, "result":[I
    new-instance v10, Landroid/os/AsyncResult;

    invoke-direct {v10, v11, v9, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2713
    .local v10, "arCip":Landroid/os/AsyncResult;
    invoke-virtual {v1, v6, v10}, Lcom/mediatek/ims/ImsService$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v11, 0x3e8

    invoke-virtual {v1, v6, v11, v12}, Lcom/mediatek/ims/ImsService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2715
    .end local v9    # "result":[I
    .end local v10    # "arCip":Landroid/os/AsyncResult;
    :cond_28
    :goto_f
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v9

    const/16 v9, 0x6a5

    if-eq v6, v9, :cond_29

    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2716
    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v6

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v6, v6, v9

    const/16 v9, 0x646

    if-ne v6, v9, :cond_2a

    .line 2718
    :cond_29
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-static {v6, v9, v10}, Lcom/mediatek/ims/ImsService;->access$4100(Lcom/mediatek/ims/ImsService;II)V

    .line 2721
    :cond_2a
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-virtual {v6, v9, v10}, Lcom/mediatek/ims/ImsService;->setWfcRegErrorCode(II)V

    .line 2722
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.imsconnection.DISCONNECTED"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2723
    .local v6, "intent":Landroid/content/Intent;
    const-string v9, "wfcErrorCode"

    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2724
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.mediatek.permission.IMS_ERR_NOTIFICATION"

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2729
    .end local v3    # "sipReasonText":Ljava/lang/String;
    .end local v4    # "sipResponseCode":I
    .end local v5    # "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "sipMethod":I
    :cond_2b
    :goto_10
    goto/16 :goto_1a

    .line 2646
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "sipMessage":[Ljava/lang/String;
    :pswitch_1c
    goto/16 :goto_1a

    .line 2643
    :pswitch_1d
    goto/16 :goto_1a

    .line 2625
    :pswitch_1e
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : [Info]receive EVENT_IMS_ENABLING_URC, socketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ExpImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2626
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2625
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2628
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v0, v0, v3

    if-eq v0, v14, :cond_2c

    .line 2629
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android:phone_id"

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2631
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2632
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : broadcast IMS_SERVICE_UP"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2634
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2c
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2636
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$400(Lcom/mediatek/ims/ImsService;)[Landroid/os/Handler;

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2638
    :cond_2d
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v0

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v0, v3

    .line 2640
    goto/16 :goto_1a

    .line 2900
    :pswitch_1f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2901
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2902
    .local v3, "callInfo":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 2903
    .local v4, "msgType":I
    aget-object v5, v3, v14

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2905
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage() : EVENT_CALL_INFO_INDICATION, msgType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2907
    const/16 v5, 0x85

    if-ne v4, v5, :cond_43

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2908
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5400(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_43

    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2909
    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5400(Lcom/mediatek/ims/ImsService;)[Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    aget-object v6, v3, v13

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 2910
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    if-eqz v5, :cond_2f

    .line 2911
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v6, "handle 133 in ImsService"

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2913
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v5, v5, v6

    .line 2914
    invoke-virtual {v5}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->getAospCallSessionProxy()Lcom/mediatek/ims/ImsCallSessionProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/ims/ImsCallSessionProxy;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v5

    .line 2915
    .local v5, "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 2916
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5600(Lcom/mediatek/ims/ImsService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2918
    :cond_2e
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->callTerminated()V

    .line 2919
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v6, v6, v7

    invoke-virtual {v6, v11}, Lcom/mediatek/ims/MtkImsCallSessionProxy;->setServiceImpl(Lcom/mediatek/ims/internal/IMtkImsCallSession;)V

    .line 2920
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5500(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/MtkImsCallSessionProxy;

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-object v11, v6, v7

    .line 2921
    iget-object v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v6}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v6

    iget v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v13, v6, v7

    .line 2922
    .end local v5    # "cs_impl":Lcom/android/ims/internal/IImsCallSession;
    goto/16 :goto_1a

    .line 2923
    :cond_2f
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$5700(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput-boolean v14, v5, v6

    goto/16 :goto_1a

    .line 2661
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "callInfo":[Ljava/lang/String;
    .end local v4    # "msgType":I
    :pswitch_20
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2662
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$3100(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_30

    .line 2663
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->access$3200(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    goto :goto_11

    .line 2666
    :cond_30
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v4, v0}, Lcom/mediatek/ims/ImsService;->access$3300(Lcom/mediatek/ims/ImsService;ILandroid/os/AsyncResult;)V

    .line 2667
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3, v0}, Lcom/mediatek/ims/ImsService;->access$3402(Lcom/mediatek/ims/ImsService;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 2668
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$3502(Lcom/mediatek/ims/ImsService;I)I

    .line 2673
    :goto_11
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v3}, Lcom/mediatek/ims/ImsService;->access$2600(Lcom/mediatek/ims/ImsService;)[Lcom/mediatek/ims/ril/ImsCommandsInterface;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget-object v3, v3, v4

    invoke-direct {v1, v3, v4}, Lcom/mediatek/ims/ImsService$MyHandler;->setRttModeForIncomingCall(Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V

    .line 2675
    goto/16 :goto_1a

    .line 2649
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_21
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage() : [Info]EVENT_IMS_DISABLED_URC: socketId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ExpImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$2500(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mImsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2650
    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2649
    invoke-static {v0, v3}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2651
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v14}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2652
    goto/16 :goto_1a

    .line 2654
    :pswitch_22
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2655
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_43

    .line 2656
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v4, "handleMessage() : turnOnIms failed, return to disabled state!"

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsService;->access$300(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2657
    iget-object v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v3, v4, v13}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;IZ)V

    goto/16 :goto_1a

    .line 2775
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_23
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v0, v3, v13}, Lcom/mediatek/ims/ImsService;->access$3000(Lcom/mediatek/ims/ImsService;IZ)V

    .line 2776
    goto/16 :goto_1a

    .line 2459
    :pswitch_24
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2461
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2463
    :cond_31
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2464
    invoke-virtual {v1, v8}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2466
    :cond_32
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ImsService$MyHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2467
    invoke-virtual {v1, v9}, Lcom/mediatek/ims/ImsService$MyHandler;->removeMessages(I)V

    .line 2483
    :cond_33
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2485
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x3

    .line 2486
    .local v3, "newImsRegInfo":I
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v13

    if-eq v4, v14, :cond_35

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$1300(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v4

    iget v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v4, v5

    if-ne v4, v14, :cond_34

    goto :goto_12

    .line 2489
    :cond_34
    const/4 v3, 0x1

    goto :goto_13

    .line 2487
    :cond_35
    :goto_12
    const/4 v3, 0x0

    .line 2492
    :goto_13
    const-string v4, "persist.vendor.ims.simulate"

    invoke-static {v4, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v14, :cond_37

    .line 2493
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$200(Lcom/mediatek/ims/ImsService;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2494
    move v4, v13

    goto :goto_14

    :cond_36
    move v4, v14

    :goto_14
    move v3, v4

    .line 2495
    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage() : Override EVENT_IMS_REGISTRATION_INFO: newImsRegInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2499
    :cond_37
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    aget v4, v4, v14

    .line 2500
    .local v4, "newImsExtInfo":I
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v13

    if-ne v5, v12, :cond_38

    .line 2501
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v4, v5, v6

    .line 2505
    :cond_38
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2506
    and-int/lit8 v5, v4, 0x10

    if-ne v5, v7, :cond_39

    .line 2507
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v12, v5, v6

    goto :goto_15

    .line 2510
    :cond_39
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v5, v6

    .line 2514
    :cond_3a
    :goto_15
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : newReg:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " oldReg:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2516
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1800(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v14, v5, v6

    .line 2518
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v3, v5, v6

    .line 2519
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v9

    invoke-static {v5, v6, v8, v13}, Lcom/mediatek/ims/ImsService;->access$1900(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2522
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage() : newRegExt:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "oldRegExt:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2524
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v5, v5, v6

    if-nez v5, :cond_3b

    .line 2525
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v4, v5, v6

    goto :goto_16

    .line 2527
    :cond_3b
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v5

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aput v13, v5, v6

    .line 2529
    :goto_16
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v5}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v8

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v8, v8, v9

    invoke-static {v5, v6, v8, v13}, Lcom/mediatek/ims/ImsService;->access$2000(Lcom/mediatek/ims/ImsService;IIZ)V

    .line 2531
    iget-object v5, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v6, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-virtual {v5, v6}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v5

    .line 2532
    .local v5, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 2534
    .local v6, "ss":Landroid/telephony/ServiceState;
    if-eqz v6, :cond_3e

    .line 2535
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    .line 2536
    .local v8, "dataState":I
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    .line 2537
    .local v9, "dataNetType":I
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "data="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " , dataNetType="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 2538
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v13

    if-nez v10, :cond_3d

    .line 2539
    if-nez v8, :cond_3c

    .line 2540
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v15

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v15, v11

    invoke-static {v10, v13, v11}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_17

    .line 2542
    :cond_3c
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10, v13, v14}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    goto :goto_17

    .line 2545
    :cond_3d
    iget-object v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v10}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v15, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v15

    invoke-static {v10, v13, v11}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    .line 2547
    .end local v8    # "dataState":I
    .end local v9    # "dataNetType":I
    :goto_17
    goto :goto_18

    .line 2548
    :cond_3e
    iget-object v8, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    iget v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    invoke-static {v8}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v10

    iget v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v10, v10, v11

    invoke-static {v8, v9, v10}, Lcom/mediatek/ims/ImsService;->access$1200(Lcom/mediatek/ims/ImsService;II)V

    .line 2552
    :goto_18
    const/4 v8, 0x0

    .line 2553
    .local v8, "isVoWiFi":Z
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$1700(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    if-ne v9, v12, :cond_3f

    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2554
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    and-int/2addr v9, v14

    if-eq v9, v14, :cond_40

    :cond_3f
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2555
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$1400(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v9

    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v9, v9, v10

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_41

    .line 2556
    :cond_40
    const/4 v8, 0x1

    .line 2559
    :cond_41
    iget-object v7, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v7}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v7

    .line 2561
    .local v7, "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    if-eqz v7, :cond_42

    .line 2562
    iget-object v9, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2563
    invoke-static {v9}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v9

    .line 2562
    invoke-interface {v7, v9}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;

    move-result-object v11

    goto :goto_19

    .line 2563
    :cond_42
    const/4 v11, 0x0

    :goto_19
    move-object v9, v11

    .line 2564
    .local v9, "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    if-eqz v9, :cond_43

    .line 2565
    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2566
    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    .line 2565
    invoke-interface {v9, v10, v11, v8}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->broadcastImsRegistration(IIZ)V

    .line 2567
    iget v10, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v11, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    .line 2568
    invoke-static {v11}, Lcom/mediatek/ims/ImsService;->access$1100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v11

    iget v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v11, v11, v12

    iget-object v12, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v12}, Lcom/mediatek/ims/ImsService;->access$2100(Lcom/mediatek/ims/ImsService;)[I

    move-result-object v12

    iget v13, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    aget v12, v12, v13

    .line 2567
    invoke-interface {v9, v10, v11, v12}, Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;->notifyImsRegStateWithType(III)V

    .line 3171
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "newImsRegInfo":I
    .end local v4    # "newImsExtInfo":I
    .end local v5    # "subId":I
    .end local v6    # "ss":Landroid/telephony/ServiceState;
    .end local v7    # "oemPlugin":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v8    # "isVoWiFi":Z
    .end local v9    # "imsRegOemPlugin":Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    :cond_43
    :goto_1a
    iget-object v0, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v0}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/ext/IImsServiceExt;

    move-result-object v0

    .line 3172
    .local v0, "opImsService":Lcom/mediatek/ims/ext/IImsServiceExt;
    if-eqz v0, :cond_44

    .line 3173
    iget v3, v1, Lcom/mediatek/ims/ImsService$MyHandler;->mSocketId:I

    iget-object v4, v1, Lcom/mediatek/ims/ImsService$MyHandler;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v4}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2}, Lcom/mediatek/ims/ext/IImsServiceExt;->notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V

    .line 3175
    :cond_44
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_0
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_24
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x10
    .end array-data
.end method
