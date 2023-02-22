.class Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;
.super Ljava/lang/Object;
.source "ImsManagerExt.java"

# interfaces
.implements Landroid/telephony/ims/ImsRilConnector$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ims/ImsManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsConnectorListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/ims/ImsManagerExt;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/ims/ImsManagerExt;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/ims/ImsManagerExt;Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;-><init>(Lcom/oplus/ims/ImsManagerExt;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionAvailable(Landroid/telephony/ims/ImsRilManager;)V
    .locals 2
    .param p1, "mgr"    # Landroid/telephony/ims/ImsRilManager;

    .line 117
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    invoke-static {v0, p1}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$fputmImsRilManager(Lcom/oplus/ims/ImsManagerExt;Landroid/telephony/ims/ImsRilManager;)V

    .line 118
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$fputmIsBinderAvailable(Lcom/oplus/ims/ImsManagerExt;Z)V

    .line 119
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$fputmIsPendingConnect(Lcom/oplus/ims/ImsManagerExt;Z)V

    .line 120
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    invoke-static {v0}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$mnotifyConnectionAvailable(Lcom/oplus/ims/ImsManagerExt;)V

    .line 121
    return-void
.end method

.method public blacklist onConnectionUnavailable()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$fputmIsBinderAvailable(Lcom/oplus/ims/ImsManagerExt;Z)V

    .line 126
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    invoke-static {v0, v1}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$fputmIsPendingConnect(Lcom/oplus/ims/ImsManagerExt;Z)V

    .line 127
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$fputmImsRilManager(Lcom/oplus/ims/ImsManagerExt;Landroid/telephony/ims/ImsRilManager;)V

    .line 128
    iget-object v0, p0, Lcom/oplus/ims/ImsManagerExt$ImsConnectorListener;->this$0:Lcom/oplus/ims/ImsManagerExt;

    invoke-static {v0}, Lcom/oplus/ims/ImsManagerExt;->-$$Nest$mnotifyConnectionUnavailable(Lcom/oplus/ims/ImsManagerExt;)V

    .line 129
    return-void
.end method
