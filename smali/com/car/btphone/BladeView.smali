.class public Lcom/car/btphone/BladeView;
.super Landroid/view/View;
.source "BladeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/BladeView$OnMyItemClickListener;
    }
.end annotation


# instance fields
.field b:[Ljava/lang/String;

.field choose:I

.field dismissRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mOnItemClickListener:Lcom/car/btphone/BladeView$OnMyItemClickListener;

.field private mParentView:Landroid/view/View;

.field private mPopupText:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field paint:Landroid/graphics/Paint;

.field showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/btphone/BladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/car/btphone/BladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/car/btphone/BladeView$1;

    invoke-direct {v0, p0}, Lcom/car/btphone/BladeView$1;-><init>(Lcom/car/btphone/BladeView;)V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/btphone/BladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/car/btphone/BladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/car/btphone/BladeView$1;

    invoke-direct {v0, p0}, Lcom/car/btphone/BladeView$1;-><init>(Lcom/car/btphone/BladeView;)V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/btphone/BladeView;->choose:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/car/btphone/BladeView;->showBkg:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/car/btphone/BladeView$1;

    invoke-direct {v0, p0}, Lcom/car/btphone/BladeView$1;-><init>(Lcom/car/btphone/BladeView;)V

    iput-object v0, p0, Lcom/car/btphone/BladeView;->dismissRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/car/btphone/BladeView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 4

    iget-object v0, p0, Lcom/car/btphone/BladeView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/car/btphone/BladeView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private performItemClicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/car/btphone/BladeView;->mOnItemClickListener:Lcom/car/btphone/BladeView$OnMyItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BladeView;->mOnItemClickListener:Lcom/car/btphone/BladeView$OnMyItemClickListener;

    iget-object v1, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Lcom/car/btphone/BladeView$OnMyItemClickListener;->onItemClick(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/car/btphone/BladeView;->showPopup(I)V

    :cond_0
    return-void
.end method

.method private showPopup(I)V
    .locals 7

    const/16 v6, 0x11

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/car/btphone/BladeView;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/car/btphone/BladeView;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    const v3, 0x7f02004f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x78

    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-direct {v2, v3, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v2, p0, Lcom/car/btphone/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    const-string v1, ""

    add-int/lit8 v2, p1, 0x41

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/btphone/BladeView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/car/btphone/BladeView;->mParentView:Landroid/view/View;

    const/16 v4, 0xc8

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v2, p0, Lcom/car/btphone/BladeView;->choose:I

    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    iget-object v5, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    array-length v5, v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v6

    :pswitch_0
    iput-boolean v6, p0, Lcom/car/btphone/BladeView;->showBkg:Z

    if-eq v2, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    invoke-direct {p0, v1}, Lcom/car/btphone/BladeView;->performItemClicked(I)V

    iput v1, p0, Lcom/car/btphone/BladeView;->choose:I

    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->invalidate()V

    goto :goto_0

    :pswitch_1
    if-eq v2, v1, :cond_0

    if-ltz v1, :cond_0

    iget-object v4, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    invoke-direct {p0, v1}, Lcom/car/btphone/BladeView;->performItemClicked(I)V

    iput v1, p0, Lcom/car/btphone/BladeView;->choose:I

    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->invalidate()V

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/car/btphone/BladeView;->showBkg:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/car/btphone/BladeView;->choose:I

    invoke-direct {p0}, Lcom/car/btphone/BladeView;->dismissPopup()V

    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v6, p0, Lcom/car/btphone/BladeView;->showBkg:Z

    if-eqz v6, :cond_0

    :cond_0
    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/car/btphone/BladeView;->getWidth()I

    move-result v3

    iget-object v6, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    const-string v7, "#FF909298"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v6, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v6, p0, Lcom/car/btphone/BladeView;->choose:I

    if-ne v1, v6, :cond_1

    iget-object v6, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    const-string v7, "#3399ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    iget-object v6, p0, Lcom/car/btphone/BladeView;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/car/btphone/BladeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnMyItemClickListener(Lcom/car/btphone/BladeView$OnMyItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BladeView;->mOnItemClickListener:Lcom/car/btphone/BladeView$OnMyItemClickListener;

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/BladeView;->mParentView:Landroid/view/View;

    return-void
.end method
