.class Lcom/car/btphone/BTPhoneService$3;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/BTPhoneService;->createShortCutCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$3;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget v4, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->state:I

    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v4, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$3;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v5, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/car/btphone/BTPhoneService;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    :cond_2
    invoke-static {v7}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget v4, v2, Landroid/os/Message;->what:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$3;->this$0:Lcom/car/btphone/BTPhoneService;

    iget v5, v2, Landroid/os/Message;->what:I

    iget-object v6, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Lcom/car/btphone/BTPhoneService;->startMainActivity(ILjava/lang/String;Z)V

    goto :goto_0
.end method
