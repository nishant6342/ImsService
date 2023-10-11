.class public Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;
.super Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;
.source "MtkSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/MtkSipTransportImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransportStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    .line 284
    iput-object p1, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-direct {p0}, Lcom/mediatek/ims/rcs/UaServiceManager$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregisterInd(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 319
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 320
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationDeregistering(I)V

    .line 321
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public onDeregistered(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 305
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 306
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationDeregistered()V

    .line 307
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method public onDeregistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 301
    return-void
.end method

.method public onRegistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 292
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$100(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcs/UaServiceManager;->imsRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 294
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$100(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 295
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method public onRegistering(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 287
    return-void
.end method

.method public onReregistered(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 312
    iget-object v0, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v0}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$200(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/MtkSipDelegate;

    .line 313
    .local v1, "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    iget-object v2, p0, Lcom/mediatek/ims/rcs/MtkSipTransportImpl$TransportStateCallback;->this$0:Lcom/mediatek/ims/rcs/MtkSipTransportImpl;

    invoke-static {v2}, Lcom/mediatek/ims/rcs/MtkSipTransportImpl;->access$100(Lcom/mediatek/ims/rcs/MtkSipTransportImpl;)Lcom/mediatek/ims/rcs/UaServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->getRegistrationInfo()Lcom/mediatek/ims/rcsua/RegistrationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/MtkSipDelegate;->notifyRegistrationRegistered(Lcom/mediatek/ims/rcsua/RegistrationInfo;)V

    .line 314
    .end local v1    # "delegate":Lcom/mediatek/ims/rcs/MtkSipDelegate;
    goto :goto_0

    .line 315
    :cond_0
    return-void
.end method
