.class public Lcom/car/btphone/DialpadFragment;
.super Landroid/app/Fragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "BTP.DialpadFragment"

.field private static final mDTMFMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDTMFToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDelBtn:Landroid/widget/ImageButton;

.field mDialBtn:Landroid/widget/ImageButton;

.field mDialHangupLayout:Landroid/widget/LinearLayout;

.field private mDtmfDialerField:Landroid/widget/EditText;

.field mInitNumber:Ljava/lang/String;

.field mIsDtmfIng:Z

.field mNum0:Landroid/widget/TextView;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x7f08004c

    const v6, 0x7f08004b

    const v5, 0x7f080049

    const v4, 0x7f080048

    const v3, 0x7f080047

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f08004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f08004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f080050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f080051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f080054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f080055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f080053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f08004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f08004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f080050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f080051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f080054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f080055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    const v1, 0x7f080053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f08004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f08004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f080050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f080051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f080054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f080055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    const v1, 0x7f080053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/car/btphone/DialpadFragment;->mInitNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/car/btphone/DialpadFragment;->mIsDtmfIng:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/car/btphone/DialpadFragment;
    .locals 4

    const-class v3, Lcom/car/btphone/DialpadFragment;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/car/btphone/DialpadFragment;

    invoke-direct {v1}, Lcom/car/btphone/DialpadFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/car/btphone/DialpadFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public clearDtmfField()V
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method digitPressed(I)V
    .locals 2

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v1, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return-void
.end method

.method public getInputNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method initTextView(Landroid/widget/TextView;III)V
    .locals 4

    const/16 v3, 0x21

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0, p2}, Lcom/car/btphone/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0, v1, p3, p4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, p3, p4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isDtmfMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/btphone/DialpadFragment;->mIsDtmfIng:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mDelBtn:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mDialBtn:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lcom/car/btphone/DialpadFragment;->setDialClick()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/car/btphone/DialpadFragment;->digitPressed(I)V

    iget-boolean v2, p0, Lcom/car/btphone/DialpadFragment;->mIsDtmfIng:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/car/btphone/DialpadFragment;->mDTMFMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/car/btphone/DialpadFragment;->mDTMFToneMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/car/btphone/DialpadFragment;->playTone(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const v6, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f080054

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableString;

    const v6, 0x7f070026

    invoke-virtual {p0, v6}, Lcom/car/btphone/DialpadFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x21

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v7, 0x3e99999a    # 0.3f

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x777778

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/16 v9, 0x21

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f080044

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const v6, 0x7f080045

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDelBtn:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v6, 0x7f080057

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDialBtn:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDialBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f080056

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDialHangupLayout:Landroid/widget/LinearLayout;

    iget-boolean v6, p0, Lcom/car/btphone/DialpadFragment;->mIsDtmfIng:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDelBtn:Landroid/widget/ImageButton;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDialBtn:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDialHangupLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mInitNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/car/btphone/DialpadFragment;->mInitNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/car/btphone/DialpadFragment;->mInitNumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    sget-object v6, Lcom/car/btphone/DialpadFragment;->mKeyCodeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v1, p0, Lcom/car/btphone/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDetach()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    :try_start_0
    const-class v2, Landroid/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/car/btphone/DialpadFragment;->mDelBtn:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/car/btphone/DialpadFragment;->clearDtmfField()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080054

    if-ne v1, v2, :cond_1

    const/16 v1, 0x51

    invoke-virtual {p0, v1}, Lcom/car/btphone/DialpadFragment;->digitPressed(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method playTone(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/car/btphone/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/car/btphone/DialpadFragment;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/car/btphone/DialpadFragment;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v4, 0x96

    invoke-virtual {v2, p1, v4}, Landroid/media/ToneGenerator;->startTone(II)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setDialClick()V
    .locals 7

    sget-object v5, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-gtz v5, :cond_3

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sCallRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/btphone/CallRecord;

    iget v5, v0, Lcom/car/btphone/CallRecord;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/car/btphone/CallRecord;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xf

    iput v5, v4, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method setDtmfMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/car/btphone/DialpadFragment;->mIsDtmfIng:Z

    return-void
.end method

.method public setInitNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/btphone/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/car/btphone/DialpadFragment;->mInitNumber:Ljava/lang/String;

    goto :goto_0
.end method
