.class Lcom/car/btphone/BTPhoneService$5;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/BTPhoneService;->clearAllCallLog()V
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

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$5;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$5;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->CALLLOG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$5;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v0, v0, Lcom/car/btphone/BTPhoneService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/btphone/BTPhoneService$5;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {v0}, Lcom/car/btphone/BTPhoneService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "type=1 or type=2 or type=3"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
