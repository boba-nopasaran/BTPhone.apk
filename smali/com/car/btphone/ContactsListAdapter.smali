.class public Lcom/car/btphone/ContactsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsListAdapter.java"

# interfaces
.implements Lcom/car/btphone/PinnedHeaderListView$PinnedHeaderAdapter;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/btphone/ContactsListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BTP.ContactsListAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndexer:Lcom/car/btphone/ListSectionIndexer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/btphone/ContactsListAdapter;->mLocationPosition:I

    iput-object p1, p0, Lcom/car/btphone/ContactsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/car/btphone/ListSectionIndexer;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;",
            "Lcom/car/btphone/ListSectionIndexer;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/car/btphone/ContactsListAdapter;->mLocationPosition:I

    iput-object p1, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    iput-object p2, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    iput-object p3, p0, Lcom/car/btphone/ContactsListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public configurePinnedHeader(Landroid/view/View;II)V
    .locals 4

    move v0, p2

    iget-object v3, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    invoke-virtual {v3, v0}, Lcom/car/btphone/ListSectionIndexer;->getSectionForPosition(I)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    invoke-virtual {v3}, Lcom/car/btphone/ListSectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/String;

    const v3, 0x7f080058

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPinnedHeaderState(I)I
    .locals 6

    const/4 v5, -0x1

    move v1, p1

    if-ltz v1, :cond_0

    iget v3, p0, Lcom/car/btphone/ContactsListAdapter;->mLocationPosition:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/car/btphone/ContactsListAdapter;->mLocationPosition:I

    if-ne v3, v1, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iput v5, p0, Lcom/car/btphone/ContactsListAdapter;->mLocationPosition:I

    iget-object v3, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    invoke-virtual {v3, v1}, Lcom/car/btphone/ListSectionIndexer;->getSectionForPosition(I)I

    move-result v2

    iget-object v3, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/car/btphone/ListSectionIndexer;->getPositionForSection(I)I

    move-result v0

    if-eq v0, v5, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/car/btphone/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030009

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/car/btphone/ContactsListAdapter$ViewHolder;-><init>()V

    const v4, 0x7f080058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->group_title:Landroid/widget/TextView;

    const v4, 0x7f08005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v4, 0x7f08005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->phone_number:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/BTContact;

    iget-object v4, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    invoke-virtual {v4, p1}, Lcom/car/btphone/ListSectionIndexer;->getSectionForPosition(I)I

    move-result v2

    iget-object v4, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    invoke-virtual {v4, v2}, Lcom/car/btphone/ListSectionIndexer;->getPositionForSection(I)I

    move-result v4

    if-ne v4, p1, :cond_1

    iget-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->group_title:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->group_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/car/btphone/BTContact;->getSortKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/car/btphone/BTContact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->phone_number:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/car/btphone/BTContact;->getPhoneNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3

    :cond_0
    move-object v3, p2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/car/btphone/ContactsListAdapter$ViewHolder;->group_title:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    instance-of v0, p1, Lcom/car/btphone/PinnedHeaderListView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/car/btphone/PinnedHeaderListView;

    invoke-virtual {p1, p2}, Lcom/car/btphone/PinnedHeaderListView;->configureHeaderView(I)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setContactList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public setSection(Lcom/car/btphone/ListSectionIndexer;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/ContactsListAdapter;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    return-void
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/car/btphone/ContactsListAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/car/btphone/ContactsListAdapter;->notifyDataSetChanged()V

    return-void
.end method
