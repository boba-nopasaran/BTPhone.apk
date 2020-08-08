.class public Lcom/car/btphone/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAdapter:Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v7, "PinnedHeaderListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configureHeaderView() position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mAdapter:Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v7, p1}, Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v10, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mAdapter:Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v8, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    const/16 v9, 0xff

    invoke-interface {v7, v8, p1, v9}, Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v8, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewWidth:I

    iget v9, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_1
    iput-boolean v11, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v10}, Lcom/car/btphone/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_3

    sub-int v6, v1, v3

    add-int v7, v3, v6

    mul-int/lit16 v7, v7, 0xff

    div-int v0, v7, v3

    :goto_1
    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mAdapter:Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v8, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v7, v8, p1, v0}, Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v7, v6, :cond_2

    iget-object v7, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v8, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewWidth:I

    iget v9, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewHeight:I

    add-int/2addr v9, v6

    invoke-virtual {v7, v10, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v11, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/16 v0, 0xff

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/car/btphone/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/car/btphone/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewWidth:I

    iget v2, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/car/btphone/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/car/btphone/PinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/car/btphone/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewWidth:I

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderViewHeight:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/car/btphone/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object p1, p0, Lcom/car/btphone/PinnedHeaderListView;->mAdapter:Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;

    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/car/btphone/PinnedHeaderListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/btphone/PinnedHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/car/btphone/PinnedHeaderListView;->requestLayout()V

    return-void
.end method
