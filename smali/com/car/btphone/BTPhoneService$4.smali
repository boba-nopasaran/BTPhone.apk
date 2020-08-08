.class Lcom/car/btphone/BTPhoneService$4;
.super Ljava/lang/Object;
.source "BTPhoneService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v2, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$000(Lcom/car/btphone/BTPhoneService;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v3, "BTP.BTPhoneService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "l="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-static {v3, v4}, Lcom/car/btphone/BTPhoneService;->access$102(Lcom/car/btphone/BTPhoneService;F)F

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/car/btphone/BTPhoneService;->access$202(Lcom/car/btphone/BTPhoneService;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return v2

    :pswitch_0
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$100(Lcom/car/btphone/BTPhoneService;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v4}, Lcom/car/btphone/BTPhoneService;->access$000(Lcom/car/btphone/BTPhoneService;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/btphone/BTPhoneService;->access$302(Lcom/car/btphone/BTPhoneService;F)F

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$200(Lcom/car/btphone/BTPhoneService;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/car/btphone/BTPhoneService;->access$402(Lcom/car/btphone/BTPhoneService;F)F

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/btphone/BTPhoneService;->access$502(Lcom/car/btphone/BTPhoneService;F)F

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v2, v3}, Lcom/car/btphone/BTPhoneService;->access$602(Lcom/car/btphone/BTPhoneService;F)F

    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/car/btphone/BTPhoneService;->access$702(Lcom/car/btphone/BTPhoneService;J)J

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v2}, Lcom/car/btphone/BTPhoneService;->access$800(Lcom/car/btphone/BTPhoneService;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$800(Lcom/car/btphone/BTPhoneService;)V

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$100(Lcom/car/btphone/BTPhoneService;)F

    move-result v3

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v4}, Lcom/car/btphone/BTPhoneService;->access$500(Lcom/car/btphone/BTPhoneService;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$200(Lcom/car/btphone/BTPhoneService;)F

    move-result v3

    iget-object v4, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v4}, Lcom/car/btphone/BTPhoneService;->access$600(Lcom/car/btphone/BTPhoneService;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/car/btphone/BTPhoneService$4;->this$0:Lcom/car/btphone/BTPhoneService;

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->access$700(Lcom/car/btphone/BTPhoneService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
