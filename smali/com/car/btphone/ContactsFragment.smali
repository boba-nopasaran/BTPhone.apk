.class public Lcom/car/btphone/ContactsFragment;
.super Landroid/app/Fragment;
.source "ContactsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static ALL_CHARACTER:Ljava/lang/String; = null

.field private static final MSG_QUERY_FINISH:I = 0xa

.field private static final MSG_QUERY_START:I = 0x9

.field static final TAG:Ljava/lang/String; = "BTP.ContactsFragment"

.field private static mBTContactsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;"
        }
    .end annotation
.end field

.field static mContext:Landroid/content/Context;

.field private static mCounts:[I

.field private static mSections:[Ljava/lang/String;


# instance fields
.field mBladeView:Lcom/car/btphone/BladeView;

.field mClearName:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIndexer:Lcom/car/btphone/ListSectionIndexer;

.field private mListAdapter:Lcom/car/btphone/ContactsListAdapter;

.field private mListView:Lcom/car/btphone/PinnedHeaderListView;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mSearchEditText:Landroid/widget/EditText;

.field mSyncErr:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sput-object v0, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    .line 44
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

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

    sput-object v0, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/car/btphone/ContactsFragment;->mCounts:[I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/car/btphone/ContactsFragment;->mBTContactsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Lcom/car/btphone/ContactsFragment$1;

    invoke-direct {v0, p0}, Lcom/car/btphone/ContactsFragment$1;-><init>(Lcom/car/btphone/ContactsFragment;)V

    iput-object v0, p0, Lcom/car/btphone/ContactsFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/car/btphone/ContactsFragment;->mBTContactsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 36
    sput-object p0, Lcom/car/btphone/ContactsFragment;->mBTContactsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/car/btphone/ContactsFragment;->freshCharacterSections(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/car/btphone/ContactsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ListSectionIndexer;
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/car/btphone/ContactsFragment;Lcom/car/btphone/ListSectionIndexer;)Lcom/car/btphone/ListSectionIndexer;
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;
    .param p1, "x1"    # Lcom/car/btphone/ListSectionIndexer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/car/btphone/ContactsFragment;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    return-object p1
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/car/btphone/ContactsFragment;->mCounts:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/ContactsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mListAdapter:Lcom/car/btphone/ContactsListAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/car/btphone/ContactsFragment;Lcom/car/btphone/ContactsListAdapter;)Lcom/car/btphone/ContactsListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;
    .param p1, "x1"    # Lcom/car/btphone/ContactsListAdapter;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/car/btphone/ContactsFragment;->mListAdapter:Lcom/car/btphone/ContactsListAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/car/btphone/ContactsFragment;)Lcom/car/btphone/PinnedHeaderListView;
    .locals 1
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mListView:Lcom/car/btphone/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/car/btphone/ContactsFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/car/btphone/ContactsFragment;->filterData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/car/btphone/ContactsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/car/btphone/ContactsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/car/btphone/ContactsFragment;->hideSoftInput()V

    return-void
.end method

.method private filterData(Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .param p1, "infilterStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "curList":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, "contactsList":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 110
    :cond_0
    move-object/from16 v4, p2

    .line 145
    :cond_1
    iget-object v11, p0, Lcom/car/btphone/ContactsFragment;->mListAdapter:Lcom/car/btphone/ContactsListAdapter;

    if-eqz v11, :cond_3

    .line 148
    invoke-static {v4}, Lcom/car/btphone/ContactsFragment;->freshCharacterSections(Ljava/util/List;)V

    .line 149
    iget-object v11, p0, Lcom/car/btphone/ContactsFragment;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    if-eqz v11, :cond_2

    .line 150
    iget-object v11, p0, Lcom/car/btphone/ContactsFragment;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    sget-object v12, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    sget-object v13, Lcom/car/btphone/ContactsFragment;->mCounts:[I

    invoke-virtual {v11, v12, v13}, Lcom/car/btphone/ListSectionIndexer;->SetSectionIndexer([Ljava/lang/String;[I)V

    .line 151
    iget-object v11, p0, Lcom/car/btphone/ContactsFragment;->mListAdapter:Lcom/car/btphone/ContactsListAdapter;

    iget-object v12, p0, Lcom/car/btphone/ContactsFragment;->mIndexer:Lcom/car/btphone/ListSectionIndexer;

    invoke-virtual {v11, v12}, Lcom/car/btphone/ContactsListAdapter;->setSection(Lcom/car/btphone/ListSectionIndexer;)V

    .line 153
    :cond_2
    const-string v11, "BTP.ContactsFragment"

    const-string v12, "reset contactsList "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v11, p0, Lcom/car/btphone/ContactsFragment;->mListAdapter:Lcom/car/btphone/ContactsListAdapter;

    invoke-virtual {v11, v4}, Lcom/car/btphone/ContactsListAdapter;->updateListView(Ljava/util/List;)V

    .line 157
    :cond_3
    return-void

    .line 113
    :cond_4
	
#by boba 31.10.2019
#national search
#    invoke-static {p1}, Lcom/car/common/pinyin/HanziToPinyin;->hanzi2Pinyin(Ljava/lang/String;)Ljava/lang/String;
invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, "filter":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 117
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/car/btphone/BTContact;

    .line 118
    .local v3, "contact":Lcom/car/btphone/BTContact;
    invoke-virtual {v3}, Lcom/car/btphone/BTContact;->getSortKeyString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "Pinyin":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/car/btphone/BTContact;->getSortKey()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "SortKey":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 122
    :cond_7
    const/4 v10, 0x0

    .line 123
    .local v10, "unfind":Z
    move-object v9, v0

    .line 124
    .local v9, "tmpPinyin":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "cch":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 127
    .local v8, "pos":I
    if-gez v8, :cond_9

    .line 128
    const/4 v10, 0x1

    .line 138
    .end local v2    # "cch":Ljava/lang/String;
    .end local v8    # "pos":I
    :cond_8
    if-nez v10, :cond_5

    .line 139
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .restart local v2    # "cch":Ljava/lang/String;
    .restart local v8    # "pos":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 133
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_a

    .line 134
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 124
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method private static freshCharacterSections(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/car/btphone/BTContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "contactsList":Ljava/util/List;, "Ljava/util/List<Lcom/car/btphone/BTContact;>;"
    const/4 v0, 0x0

    .line 162
    .local v0, "allcharacter":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/btphone/BTContact;

    .line 163
    .local v1, "btcontact":Lcom/car/btphone/BTContact;
    invoke-virtual {v1}, Lcom/car/btphone/BTContact;->getSortKey()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "ch":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 166
    if-nez v0, :cond_1

    .line 167
    move-object v0, v2

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    .end local v1    # "btcontact":Lcom/car/btphone/BTContact;
    .end local v2    # "ch":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 179
    sput-object v0, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    .line 185
    :goto_1
    sget-object v7, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    sput-object v7, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    .line 186
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget-object v7, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 187
    sget-object v7, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 188
    .local v2, "ch":C
    sget-object v7, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 186
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 182
    .end local v2    # "ch":C
    .end local v4    # "i":I
    :cond_3
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    sput-object v7, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    goto :goto_1

    .line 191
    .restart local v4    # "i":I
    :cond_4
    sget-object v7, Lcom/car/btphone/ContactsFragment;->mSections:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lcom/car/btphone/ContactsFragment;->mCounts:[I

    .line 192
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/btphone/BTContact;

    .line 193
    .restart local v1    # "btcontact":Lcom/car/btphone/BTContact;
    invoke-virtual {v1}, Lcom/car/btphone/BTContact;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "firstCharacter":Ljava/lang/String;
    if-nez v3, :cond_5

    .line 195
    const-string v7, "BTP.ContactsFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSortKey=null  sort_key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/car/btphone/BTContact;->getSortKeyString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 199
    :cond_5
    sget-object v7, Lcom/car/btphone/ContactsFragment;->ALL_CHARACTER:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 200
    .local v6, "index":I
    if-gez v6, :cond_6

    .line 201
    const-string v7, "BTP.ContactsFragment"

    const-string v8, "freshCharacterSections Error !!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 204
    :cond_6
    sget-object v7, Lcom/car/btphone/ContactsFragment;->mCounts:[I

    aget v8, v7, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v6

    goto :goto_3

    .line 206
    .end local v1    # "btcontact":Lcom/car/btphone/BTContact;
    .end local v3    # "firstCharacter":Ljava/lang/String;
    .end local v6    # "index":I
    :cond_7
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/car/btphone/ContactsFragment;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 219
    const-class v3, Lcom/car/btphone/ContactsFragment;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/car/btphone/ContactsFragment;

    invoke-direct {v1}, Lcom/car/btphone/ContactsFragment;-><init>()V

    .line 220
    .local v1, "instance":Lcom/car/btphone/ContactsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/car/btphone/ContactsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 222
    sput-object p0, Lcom/car/btphone/ContactsFragment;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit v3

    return-object v1

    .line 219
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "instance":Lcom/car/btphone/ContactsFragment;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 307
    sget-object v2, Lcom/car/btphone/ContactsFragment;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/car/btphone/ContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 310
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 314
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mClearName:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mSearchEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 229
    const v2, 0x7f030004

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "parent":Landroid/view/View;
    const v2, 0x7f08003f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/car/btphone/PinnedHeaderListView;

    iput-object v2, p0, Lcom/car/btphone/ContactsFragment;->mListView:Lcom/car/btphone/PinnedHeaderListView;

    .line 231
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mListView:Lcom/car/btphone/PinnedHeaderListView;

    invoke-virtual {v2, p0}, Lcom/car/btphone/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 233
    const v2, 0x7f08003a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/car/btphone/ContactsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 234
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 236
    const v2, 0x7f08003b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/car/btphone/ContactsFragment;->mSyncErr:Landroid/widget/TextView;

    .line 237
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mSyncErr:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    const v2, 0x7f08003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/car/btphone/ContactsFragment;->mSearchEditText:Landroid/widget/EditText;

    .line 240
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mSearchEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/car/btphone/ContactsFragment$2;

    invoke-direct {v3, p0}, Lcom/car/btphone/ContactsFragment$2;-><init>(Lcom/car/btphone/ContactsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mSearchEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/car/btphone/ContactsFragment$3;

    invoke-direct {v3, p0}, Lcom/car/btphone/ContactsFragment$3;-><init>(Lcom/car/btphone/ContactsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 263
    const v2, 0x7f08003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 264
    .local v1, "parentview":Landroid/view/View;
    const v2, 0x7f080040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/car/btphone/BladeView;

    iput-object v2, p0, Lcom/car/btphone/ContactsFragment;->mBladeView:Lcom/car/btphone/BladeView;

    .line 265
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mBladeView:Lcom/car/btphone/BladeView;

    invoke-virtual {v2, v1}, Lcom/car/btphone/BladeView;->setParent(Landroid/view/View;)V

    .line 266
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mBladeView:Lcom/car/btphone/BladeView;

    new-instance v3, Lcom/car/btphone/ContactsFragment$4;

    invoke-direct {v3, p0}, Lcom/car/btphone/ContactsFragment$4;-><init>(Lcom/car/btphone/ContactsFragment;)V

    invoke-virtual {v2, v3}, Lcom/car/btphone/BladeView;->setOnMyItemClickListener(Lcom/car/btphone/BladeView$OnMyItemClickListener;)V

    .line 283
    const v2, 0x7f08003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/car/btphone/ContactsFragment;->mClearName:Landroid/widget/ImageView;

    .line 284
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mClearName:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {p0, v4}, Lcom/car/btphone/ContactsFragment;->refreshList(Z)V

    .line 287
    return-object v0
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 320
    :try_start_0
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 322
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 323
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 329
    return-void

    .line 324
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 326
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/car/btphone/ContactsFragment;->mListAdapter:Lcom/car/btphone/ContactsListAdapter;

    invoke-virtual {v2, p3}, Lcom/car/btphone/ContactsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/BTContact;

    .line 335
    .local v0, "contact":Lcom/car/btphone/BTContact;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.car.btphone.CALL_OUTGOING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "callnum"

    iget-object v3, v0, Lcom/car/btphone/BTContact;->phoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0}, Lcom/car/btphone/ContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lcom/car/btphone/ContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/car/btphone/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 339
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public refreshList(Z)V
    .locals 4
    .param p1, "syncErr"    # Z

    .prologue
    const/4 v3, 0x0

    .line 291
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    sget-object v0, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    sget v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v1, 0x3ec

    if-ge v0, v1, :cond_2

    .line 295
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mSyncErr:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/car/btphone/ContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/btphone/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    iget-object v0, p0, Lcom/car/btphone/ContactsFragment;->mSyncErr:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
