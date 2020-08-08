.class public Lcom/car/btphone/CallLogAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/CallLogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mCallRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/CallRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCtx:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/CallLogAdapter;->mCallRecord:Ljava/util/List;

    iput-object p1, p0, Lcom/car/btphone/CallLogAdapter;->mCtx:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/btphone/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/CallLogAdapter;->mCallRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/CallLogAdapter;->mCallRecord:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/16 v8, 0xf9

    const/16 v7, 0x63

    const/4 v6, 0x7

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/car/btphone/CallLogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/car/btphone/CallLogAdapter$ViewHolder;-><init>()V

    const v3, 0x7f080028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_number:Landroid/widget/TextView;

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    const v3, 0x7f08002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_date:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/car/btphone/CallLogAdapter;->mCallRecord:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/CallRecord;

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_number:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_date:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget v3, v0, Lcom/car/btphone/CallRecord;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/car/btphone/CallLogAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    invoke-static {v8, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    invoke-static {v8, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_number:Landroid/widget/TextView;

    invoke-static {v8, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_date:Landroid/widget/TextView;

    invoke-static {v8, v7, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_1
    iget-object v3, v0, Lcom/car/btphone/CallRecord;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/car/btphone/CallRecord;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_number:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_date:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/car/btphone/CallRecord;->date:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_1
    move-object v2, p2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    iget v3, v0, Lcom/car/btphone/CallRecord;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/car/btphone/CallLogAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/car/btphone/CallRecord;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/car/btphone/CallLogAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_type:Landroid/widget/TextView;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_number:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/car/btphone/CallRecord;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/car/btphone/CallLogAdapter$ViewHolder;->log_number:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/car/btphone/CallRecord;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/car/btphone/CallRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/btphone/CallLogAdapter;->mCallRecord:Ljava/util/List;

    return-void
.end method
