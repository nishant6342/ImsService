.class public Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;
.super Lcom/mediatek/ims/rcsua/AcsEventCallback;
.source "MtkImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/MtkImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RcsEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/config/MtkImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/config/MtkImsConfigImpl;

    .line 154
    iput-object p1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/AcsEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcsConnected()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const-string v1, "onAcsConnected"

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public onAcsDisconnected()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    const-string v1, "onAcsDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationErrorReceived errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationErrorReceived error! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onConfigurationStatusChanged(ZI)V
    .locals 6
    .param p1, "valid"    # Z
    .param p2, "version"    # I

    .line 157
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationStatusChanged: valid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$000(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v0, p1, p2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$100(Lcom/mediatek/ims/config/MtkImsConfigImpl;ZI)V

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "needDeactivate":Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v2}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    const-string v3, "ACS_VALIDITY"

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "validity":Ljava/lang/String;
    if-ne p2, v1, :cond_0

    const-string v1, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 166
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->deactivate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    const/4 v0, 0x1

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCapabilities exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 172
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-virtual {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationRemoved()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 175
    goto :goto_1

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRcsAutoConfigurationRemoved exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "validity":Ljava/lang/String;
    :cond_0
    :goto_1
    goto :goto_2

    .line 177
    :catch_2
    move-exception v1

    .line 178
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationStatusChanged exception! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    if-nez v0, :cond_3

    .line 184
    :try_start_5
    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->isActivated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    invoke-static {v1}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$200(Lcom/mediatek/ims/config/MtkImsConfigImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->activate()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    :cond_2
    goto :goto_3

    .line 185
    :catch_3
    move-exception v1

    .line 186
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mediatek/ims/config/MtkImsConfigImpl$RcsEventCallback;->this$0:Lcom/mediatek/ims/config/MtkImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uaservice activate exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/ims/config/MtkImsConfigImpl;->access$300(Lcom/mediatek/ims/config/MtkImsConfigImpl;Ljava/lang/String;)V

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void
.end method
