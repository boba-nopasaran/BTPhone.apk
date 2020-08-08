.class public Lcom/car/btphone/ListSectionIndexer;
.super Ljava/lang/Object;
.source "ListSectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/car/btphone/ListSectionIndexer;->SetSectionIndexer([Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public SetSectionIndexer([Ljava/lang/String;[I)V
    .locals 5

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "----------------The sections and counts arrays must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput-object p1, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/car/btphone/ListSectionIndexer;->mPositions:[I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    :goto_1
    iget-object v2, p0, Lcom/car/btphone/ListSectionIndexer;->mPositions:[I

    aput v1, v2, v0

    aget v2, p2, v0

    add-int/2addr v1, v2

    const-string v2, "ListSectionIndexer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--counts["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    iget-object v3, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/car/btphone/ListSectionIndexer;->mCount:I

    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/car/btphone/ListSectionIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/car/btphone/ListSectionIndexer;->mCount:I

    if-lt p1, v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/car/btphone/ListSectionIndexer;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/ListSectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method
