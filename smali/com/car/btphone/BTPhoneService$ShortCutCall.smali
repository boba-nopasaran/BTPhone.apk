.class Lcom/car/btphone/BTPhoneService$ShortCutCall;
.super Ljava/lang/Object;
.source "BTPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/BTPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShortCutCall"
.end annotation


# instance fields
.field mAcceptBtn:Landroid/widget/ImageButton;

.field mChronometer:Landroid/widget/Chronometer;

.field mHangupBtn:Landroid/widget/ImageButton;

.field mNameNum:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/car/btphone/BTPhoneService;


# direct methods
.method constructor <init>(Lcom/car/btphone/BTPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$ShortCutCall;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
