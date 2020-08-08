.class Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver$1;->this$1:Lcom/car/btphone/BTPhoneService$BTBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->isAudioConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    const-string v0, "BTP.BTPhoneService"

    const-string v1, "setAudioState false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->isAudioConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    const-string v0, "BTP.BTPhoneService"

    const-string v1, "setAudioState true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->isAudioConnect()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_1
    return-void
.end method
