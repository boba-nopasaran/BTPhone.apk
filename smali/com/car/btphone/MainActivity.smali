.class public Lcom/car/btphone/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/car/btphone/MainHandler$PhoneCallBack;


# static fields
.field static final BTSET_ID:I = 0x1

.field static CALLING_ID:I = 0x0

.field static CONTACTS_ID:I = 0x0

.field static final DIALING_TIMEOUT:I = 0x64

.field static DIALPAD_ID:I = 0x0

.field private static final LEFT_BAR_WIDTH:I

.field static final RECORD_ID:I = 0x2

.field private static final RIGHT_BAR_WIDTH:I

.field static final TAG:Ljava/lang/String; = "BTP.MainActivity"

.field public static final isWithDialer:Z


# instance fields
.field mBackBtn:Landroid/widget/ImageButton;

.field mBackLayout:Landroid/widget/LinearLayout;

.field mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

.field mBtSetBtn:Landroid/widget/ImageButton;

.field mBtSetLayout:Landroid/widget/LinearLayout;

.field mBtSetText:Landroid/widget/TextView;

.field mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field mCallStatus:I

.field mCallTermExit:Z

.field mCallingFragment:Lcom/car/btphone/CallingFragment;

.field mContactsBtn:Landroid/widget/ImageButton;

.field mContactsFragment:Lcom/car/btphone/ContactsFragment;

.field mContactsLayout:Landroid/widget/LinearLayout;

.field mContactsText:Landroid/widget/TextView;

.field mCurFrag:I

.field mDialpadBtn:Landroid/widget/ImageButton;

.field mDialpadFragment:Lcom/car/btphone/DialpadFragment;

.field mDialpadLayout:Landroid/widget/LinearLayout;

.field mDialpadText:Landroid/widget/TextView;

.field mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mFromCreate:Z

.field mLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field mMainHandler:Lcom/car/btphone/MainHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRecordBtn:Landroid/widget/ImageButton;

.field mRecordFragment:Lcom/car/btphone/RecordFragment;

.field mRecordLayout:Landroid/widget/LinearLayout;

.field mRecordText:Landroid/widget/TextView;

.field mTextList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidescreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    sput v0, Lcom/car/btphone/MainActivity;->CONTACTS_ID:I

    const/4 v0, 0x4

    sput v0, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    const/4 v0, 0x5

    sput v0, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    const-string v0, "persist.leftbar.width"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/btphone/MainActivity;->LEFT_BAR_WIDTH:I

    const-string v0, "persist.rightbar.width"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/car/btphone/MainActivity;->RIGHT_BAR_WIDTH:I

    const-string v0, "ro.call.withdialer"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/car/btphone/MainActivity;->isWithDialer:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/car/btphone/MainActivity;->mCallStatus:I

    sget v0, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    iput v0, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    iput-boolean v1, p0, Lcom/car/btphone/MainActivity;->mFromCreate:Z

    iput-boolean v1, p0, Lcom/car/btphone/MainActivity;->mCallTermExit:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    new-instance v0, Lcom/car/btphone/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/car/btphone/MainActivity$1;-><init>(Lcom/car/btphone/MainActivity;)V

    iput-object v0, p0, Lcom/car/btphone/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/car/btphone/MainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    return v0
.end method


# virtual methods
.method bgSwitch(I)V
    .locals 5

    const/4 v4, 0x0

    sget v1, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ne v0, p1, :cond_1

    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x91

    const/16 v3, 0xd3

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method enableBTOptions(Z)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget v0, Lcom/car/btphone/BTPhoneService;->sContactSyncStatus:I

    const/16 v4, 0x3ea

    if-ge v0, v4, :cond_0

    const-string v0, "BTP.MainActivity"

    const-string v3, "Database is syncing, query of contact\'s name is not supported now."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    :goto_0
    return-object v7

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "BTP.MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v6

    goto :goto_0
.end method

.method isDigits(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-byte v2, v0, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    aget-byte v2, v0, v1

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    aget-byte v2, v0, v1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_1

    aget-byte v2, v0, v1

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    aget-byte v2, v0, v1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :cond_3
    return v1
.end method

.method jump2CurFragment(Z)V
    .locals 5

    const v4, 0x7f08000f

    iget v0, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    iget v2, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v2}, Lcom/car/btphone/MainActivity;->bgSwitch(I)V

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onCallMsg(Landroid/os/Message;)V
    .locals 11

    const v9, 0x7f070012

    const/16 v10, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v7, v10, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, p0, Lcom/car/btphone/MainActivity;->mCallStatus:I

    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-virtual {v7, v10}, Lcom/car/btphone/MainHandler;->removeMessages(I)V

    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v7, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    if-ne v5, v7, :cond_2

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mDialpadFragment:Lcom/car/btphone/DialpadFragment;

    invoke-virtual {v5}, Lcom/car/btphone/DialpadFragment;->setDialClick()V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v7, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    if-eq v5, v7, :cond_1

    sget v5, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    goto :goto_0

    :sswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v6, :cond_3

    move v5, v6

    :cond_3
    invoke-static {v5}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    goto :goto_0

    :sswitch_2
    iget v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v6, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5}, Lcom/car/btphone/CallingFragment;->refreshAudioState()V

    :cond_4
    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-virtual {v5, v10}, Lcom/car/btphone/MainHandler;->removeMessages(I)V

    goto :goto_0

    :sswitch_3
    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-virtual {v7, v10}, Lcom/car/btphone/MainHandler;->removeMessages(I)V

    :cond_5
    invoke-static {v5}, Lcom/car/btphone/BTPhoneService;->setAudioState(Z)V

    sget v5, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    goto :goto_0

    :sswitch_4
    sget-object v5, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_6

    iput v6, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    invoke-virtual {p0, v9}, Lcom/car/btphone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    iget v5, p1, Landroid/os/Message;->arg1:I

    int-to-char v5, v5

    invoke-static {v5}, Lcom/car/btphone/BTPhoneService;->sendDtmf(C)V

    goto :goto_0

    :sswitch_5
    sget-object v5, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_7

    iput v6, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    invoke-virtual {p0, v9}, Lcom/car/btphone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/car/btphone/BTPhoneService;->accept()V

    goto/16 :goto_0

    :sswitch_6
    sget-object v7, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_8

    iput v6, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    invoke-virtual {p0, v9}, Lcom/car/btphone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.car.btphone.useraction"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "accept"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/car/btphone/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_7
    sget-object v7, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_9

    iput v6, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    invoke-virtual {p0, v9}, Lcom/car/btphone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.car.btphone.useraction"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "accept"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/car/btphone/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v7, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v7, :cond_a

    iput v6, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    invoke-virtual {p0, v9}, Lcom/car/btphone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "BTP.MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ready to call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/car/btphone/MainActivity;->isDigits(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v6, :cond_b

    const/4 v4, 0x1

    :cond_b
    if-ltz v4, :cond_c

    sget v7, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    iput v7, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    if-lez v4, :cond_1

    iget-object v6, p0, Lcom/car/btphone/MainActivity;->mDialpadFragment:Lcom/car/btphone/DialpadFragment;

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/car/btphone/DialpadFragment;->setInitNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.car.btphone.action"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "status"

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "numbername"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v5}, Lcom/car/btphone/MainActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v3}, Lcom/car/btphone/BTPhoneService;->dial(Ljava/lang/String;)V

    const v5, 0x7f07000e

    invoke-virtual {p0, v5}, Lcom/car/btphone/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    sget v5, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v3}, Lcom/car/btphone/MainActivity;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    move-object v2, v3

    :cond_d
    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5, v2}, Lcom/car/btphone/CallingFragment;->setCallNumber(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5}, Lcom/car/btphone/CallingFragment;->getCallType()I

    move-result v5

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Lcom/car/btphone/CallingFragment;->setCallType(I)V

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v10, v6, v7}, Lcom/car/btphone/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_9
    sget v5, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/car/btphone/CallingFragment;->setCallNumber(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5}, Lcom/car/btphone/CallingFragment;->getCallType()I

    move-result v5

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Lcom/car/btphone/CallingFragment;->setCallType(I)V

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    goto/16 :goto_0

    :sswitch_a
    sget v5, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/car/btphone/CallingFragment;->setCallNumber(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5}, Lcom/car/btphone/CallingFragment;->getCallType()I

    move-result v5

    iget v7, p1, Landroid/os/Message;->what:I

    if-eq v5, v7, :cond_1

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Lcom/car/btphone/CallingFragment;->setCallType(I)V

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/car/btphone/CallingFragment;->setCallNumber(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5, v6}, Lcom/car/btphone/CallingFragment;->startChronometer(Z)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Lcom/car/btphone/CallingFragment;->setCallType(I)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v5}, Lcom/car/btphone/CallingFragment;->refreshAudioState()V

    iget v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v7, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    if-eq v5, v7, :cond_e

    sget v5, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    :cond_e
    invoke-static {}, Lcom/car/common/CarUtil;->isSp9832Platform()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p0}, Lcom/car/common/ProviderUtils;->getFMEnable(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    goto/16 :goto_0

    :sswitch_c
    iget v7, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v8, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    if-ne v7, v8, :cond_f

    iget-object v7, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v7, v5}, Lcom/car/btphone/CallingFragment;->startChronometer(Z)V

    iget-object v5, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v7}, Lcom/car/btphone/CallingFragment;->setCallType(I)V

    :cond_f
    sget v5, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    iget-boolean v5, p0, Lcom/car/btphone/MainActivity;->mCallTermExit:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_9
        0xc -> :sswitch_b
        0xe -> :sswitch_a
        0xf -> :sswitch_8
        0x10 -> :sswitch_c
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/car/btphone/MainActivity;->bgSwitch(I)V

    if-lez v2, :cond_4

    iput-boolean v0, p0, Lcom/car/btphone/MainActivity;->mCallTermExit:Z

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v2, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    iget v3, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    sget v4, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_2
    const/16 v3, 0xa

    if-lt v0, v3, :cond_2

    const/16 v3, 0x10

    if-ge v0, v3, :cond_2

    iget-object v3, v1, Lcom/car/btphone/BTPhoneService$CallStatus;->number:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/car/btphone/MainActivity;->resumeCallStatus(ILjava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    goto :goto_1

    :cond_3
    iget v0, v1, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->finish()V

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v12, 0x7f030000

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    mul-int/lit16 v12, v10, 0xa0

    iget v13, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v10, v12, v13

    sget v12, Lcom/car/btphone/MainActivity;->LEFT_BAR_WIDTH:I

    sub-int v12, v10, v12

    sget v13, Lcom/car/btphone/MainActivity;->RIGHT_BAR_WIDTH:I

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v13

    div-int/2addr v12, v13

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_0
    iput-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    iget-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-eqz v12, :cond_0

    const/4 v12, -0x1

    sput v12, Lcom/car/btphone/MainActivity;->CONTACTS_ID:I

    const/4 v12, 0x3

    sput v12, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    const/4 v12, 0x4

    sput v12, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    :cond_0
    const v12, 0x7f080001

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mBackLayout:Landroid/widget/LinearLayout;

    const v12, 0x7f080003

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mBtSetLayout:Landroid/widget/LinearLayout;

    const v12, 0x7f080006

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mRecordLayout:Landroid/widget/LinearLayout;

    const v12, 0x7f080009

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    const v12, 0x7f08000c

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mDialpadLayout:Landroid/widget/LinearLayout;

    const v12, 0x7f080002

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mBackBtn:Landroid/widget/ImageButton;

    const v12, 0x7f080004

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mBtSetBtn:Landroid/widget/ImageButton;

    const v12, 0x7f080007

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mRecordBtn:Landroid/widget/ImageButton;

    const v12, 0x7f08000a

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mContactsBtn:Landroid/widget/ImageButton;

    const v12, 0x7f08000d

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mDialpadBtn:Landroid/widget/ImageButton;

    const v12, 0x7f080005

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mBtSetText:Landroid/widget/TextView;

    const v12, 0x7f080008

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mRecordText:Landroid/widget/TextView;

    const v12, 0x7f08000b

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mContactsText:Landroid/widget/TextView;

    const v12, 0x7f08000e

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mDialpadText:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBtSetText:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBtSetText:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mRecordText:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-nez v12, :cond_1

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mContactsText:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mDialpadText:Landroid/widget/TextView;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBtSetBtn:Landroid/widget/ImageButton;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mRecordBtn:Landroid/widget/ImageButton;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mContactsBtn:Landroid/widget/ImageButton;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mDialpadBtn:Landroid/widget/ImageButton;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBtSetLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mRecordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mDialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mTextList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setClickable(Z)V

    goto :goto_2

    :cond_6
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    :cond_7
    invoke-static {p0}, Lcom/car/btphone/DialpadFragment;->getInstance(Landroid/content/Context;)Lcom/car/btphone/DialpadFragment;

    move-result-object v12

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mDialpadFragment:Lcom/car/btphone/DialpadFragment;

    invoke-static {p0}, Lcom/car/btphone/CallingFragment;->getInstance(Landroid/content/Context;)Lcom/car/btphone/CallingFragment;

    move-result-object v12

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-static {p0}, Lcom/car/btphone/BTInfoFragment;->getInstance(Landroid/content/Context;)Lcom/car/btphone/BTInfoFragment;

    move-result-object v12

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

    invoke-static {p0}, Lcom/car/btphone/ContactsFragment;->getInstance(Landroid/content/Context;)Lcom/car/btphone/ContactsFragment;

    move-result-object v12

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    invoke-static {p0}, Lcom/car/btphone/RecordFragment;->getInstance(Landroid/content/Context;)Lcom/car/btphone/RecordFragment;

    move-result-object v12

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mRecordFragment:Lcom/car/btphone/RecordFragment;

    invoke-static {p0}, Lcom/car/btphone/MySystemParams;->getInstance(Landroid/app/Activity;)Lcom/car/btphone/MySystemParams;

    move-result-object v5

    iget-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-nez v12, :cond_8

    invoke-virtual {v5}, Lcom/car/btphone/MySystemParams;->getCurrentScreenHeight()I

    move-result v12

    const/16 v13, 0x140

    if-ne v12, v13, :cond_c

    :cond_8
    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v12, 0x7f080010

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    iget-object v14, p0, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v12, v13, v14}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :goto_4
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mBtInfoFragment:Lcom/car/btphone/BTInfoFragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mRecordFragment:Lcom/car/btphone/RecordFragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v12, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mDialpadFragment:Lcom/car/btphone/DialpadFragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mFragments:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/car/btphone/MainActivity;->mFromCreate:Z

    sget-boolean v12, Lcom/car/btphone/BTPhoneService;->sIsRunning:Z

    if-nez v12, :cond_a

    new-instance v6, Landroid/content/Intent;

    const-class v12, Lcom/car/btphone/BTPhoneService;

    invoke-direct {v6, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/car/btphone/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_a
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v12

    iput-object v12, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-virtual {v12, p0}, Lcom/car/btphone/MainHandler;->setCallback(Lcom/car/btphone/MainHandler$PhoneCallBack;)V

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_b

    const-string v12, "callexit"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, p0, Lcom/car/btphone/MainActivity;->mCallTermExit:Z

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v12, "com.car.btphone.CALL_OUTGOING"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    const/16 v12, 0xf

    iput v12, v9, Landroid/os/Message;->what:I

    const-string v12, "callnum"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-virtual {v12, v9}, Lcom/car/btphone/MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    return-void

    :cond_c
    const v12, 0x7f080010

    invoke-virtual {p0, v12}, Lcom/car/btphone/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v12, p0, Lcom/car/btphone/MainActivity;->mContactsLayout:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/car/btphone/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/car/btphone/MainHandler;->reset()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, v1, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "shortcutcall_show"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "show"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/car/btphone/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->finish()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->restoreCurFragment()V

    iget-boolean v2, p0, Lcom/car/btphone/MainActivity;->mWidescreen:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/btphone/MainActivity;->mContactsFragment:Lcom/car/btphone/ContactsFragment;

    invoke-virtual {v2, v3}, Lcom/car/btphone/ContactsFragment;->refreshList(Z)V

    :cond_0
    iget-object v2, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    iget-object v2, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    invoke-virtual {v2, p0}, Lcom/car/btphone/MainHandler;->setCallback(Lcom/car/btphone/MainHandler$PhoneCallBack;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.car.bthpone.connected.notify"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.bthpone.contacts.notify"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.car.bthpone.calllog.notify"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/btphone/MainActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/car/btphone/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "shortcutcall_show"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "show"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/car/btphone/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method restoreCurFragment()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v1

    if-nez v1, :cond_4

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/car/btphone/MainActivity;->mMainHandler:Lcom/car/btphone/MainHandler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/car/btphone/MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    sget v3, Lcom/car/btphone/MainActivity;->DIALPAD_ID:I

    iput v3, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    :cond_2
    sget-object v3, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_3

    iput v5, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/car/btphone/MainActivity;->mFromCreate:Z

    if-eqz v3, :cond_6

    iput-boolean v2, p0, Lcom/car/btphone/MainActivity;->mFromCreate:Z

    invoke-virtual {p0, v2}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    :goto_2
    return-void

    :cond_4
    iget v0, v1, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    goto :goto_0

    :cond_5
    iget-object v3, v1, Lcom/car/btphone/BTPhoneService$CallStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/car/btphone/MainActivity;->resumeCallStatus(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Lcom/car/btphone/MainActivity;->jump2CurFragment(Z)V

    goto :goto_2
.end method

.method resumeCallStatus(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/car/btphone/MainActivity;->CALLING_ID:I

    iput v0, p0, Lcom/car/btphone/MainActivity;->mCurFrag:I

    iget-object v0, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v0, p1}, Lcom/car/btphone/CallingFragment;->setCallType(I)V

    iget-object v0, p0, Lcom/car/btphone/MainActivity;->mCallingFragment:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v0, p2}, Lcom/car/btphone/CallingFragment;->setCallNumber(Ljava/lang/String;)V

    return-void
.end method

.method public setFullscreen()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    or-int/lit16 v0, v0, 0x1000

    :cond_2
    invoke-virtual {p0}, Lcom/car/btphone/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
