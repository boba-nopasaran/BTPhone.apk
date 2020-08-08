.class public Lcom/car/btphone/BTInfoFragment;
.super Landroid/app/Fragment;
.source "BTInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field static final TAG:Ljava/lang/String; = "BTP.BTInfoFragment"

.field static mContext:Landroid/content/Context;


# instance fields
.field m16kRadio:Landroid/widget/RadioButton;

.field m8kRadio:Landroid/widget/RadioButton;

.field mAlertDialog:Landroid/app/AlertDialog;

.field mAutoRadio:Landroid/widget/RadioButton;

.field mBtStatus:Landroid/widget/TextView;

.field mConnectedDev:Landroid/widget/TextView;

.field mDevConnected:Z

.field mDeviceNameView:Landroid/widget/TextView;

.field mNameText:Landroid/widget/TextView;

.field mOKBtn:Landroid/widget/Button;

.field mOnOffBtn:Landroid/widget/ImageButton;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRenameBtn:Landroid/widget/ImageButton;

.field mRepair:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/car/btphone/BTInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/car/btphone/BTInfoFragment$1;-><init>(Lcom/car/btphone/BTInfoFragment;)V

    iput-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/car/btphone/BTInfoFragment;
    .locals 4

    const-class v3, Lcom/car/btphone/BTInfoFragment;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/car/btphone/BTInfoFragment;

    invoke-direct {v1}, Lcom/car/btphone/BTInfoFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/car/btphone/BTInfoFragment;->setArguments(Landroid/os/Bundle;)V

    sput-object p0, Lcom/car/btphone/BTInfoFragment;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private repairButtonEnable(Z)V
    .locals 3

    const/4 v2, -0x1

    const v1, -0x7f7f80

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mRepair:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mRepair:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method checkBondedDevices()Landroid/bluetooth/BluetoothDevice;
    .locals 7

    const/4 v3, 0x0

    sget-object v4, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-object v4, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    const-string v4, "BTP.BTInfoFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bonded device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/car/btphone/BTPhoneService;->sBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method isWhatMode(Ljava/lang/String;)I
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "mode"

    aput-object v3, v2, v6

    const-string v3, "mac=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "mode"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    goto :goto_0
.end method

.method myView()Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mDeviceNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mDeviceNameView:Landroid/widget/TextView;

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mDeviceNameView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "BTP.BTInfoFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New mode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/car/btphone/BTInfoFragment;->setAudioMode(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->m8kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v0, v2, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->m16kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/16 v1, 0x10

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mRenameBtn:Landroid/widget/ImageButton;

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    if-ne p1, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->showRenameDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mOnOffBtn:Landroid/widget/ImageButton;

    if-ne p1, v3, :cond_4

    const/4 v0, 0x0

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/car/btphone/BTInfoFragment;->showBTSwitch(Z)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/car/btphone/BTPhoneService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "ActiveBT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "enable"

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mRepair:Landroid/widget/TextView;

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->disconnectHost()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mRenameBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mRenameBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mConnectedDev:Landroid/widget/TextView;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mOnOffBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mOnOffBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mRepair:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mRepair:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAutoRadio:Landroid/widget/RadioButton;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m8kRadio:Landroid/widget/RadioButton;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m16kRadio:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mBtStatus:Landroid/widget/TextView;

    return-object v0
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

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    :cond_0
    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/car/btphone/BTInfoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->updateBTName()V

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->checkBondedDevices()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/car/btphone/BTInfoFragment;->updateConnectedDevInfo(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v3}, Lcom/car/btphone/BTInfoFragment;->updateAudioMode(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/car/btphone/BTInfoFragment;->repairButtonEnable(Z)V

    :goto_1
    return-void

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/car/btphone/BTInfoFragment;->repairButtonEnable(Z)V

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method setAudioMode(Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "mode"

    aput-object v3, v2, v9

    const-string v3, "mac=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "mac"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/car/btphone/BTInfoFragment;->isWhatMode(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/btphone/BTPhoneService;->URI:Landroid/net/Uri;

    const-string v2, "mac=?"

    new-array v3, v10, [Ljava/lang/String;

    aput-object p1, v3, v9

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method setBTName(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setFullscreen()V
    .locals 3

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

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
    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public showBTSwitch(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mOnOffBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mOnOffBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const v0, 0x7f02004d

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v3, p0, Lcom/car/btphone/BTInfoFragment;->mRenameBtn:Landroid/widget/ImageButton;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-nez p1, :cond_3

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/car/btphone/BTInfoFragment;->repairButtonEnable(Z)V

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    if-nez p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const v0, 0x7f02004e

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4
.end method

.method showRenameDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/car/btphone/BTInfoFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->myView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/car/btphone/BTInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/car/btphone/BTInfoFragment$2;-><init>(Lcom/car/btphone/BTInfoFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/btphone/BTInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/car/btphone/BTInfoFragment;->mOKBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public updateAudioMode(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m8kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m16kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m8kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m16kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/car/btphone/BTInfoFragment;->isWhatMode(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mAutoRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m8kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->m16kRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method updateBTName()V
    .locals 3

    sget-object v1, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/btphone/BTInfoFragment;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateConnectedDevInfo(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mConnectedDev:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iput-boolean v6, p0, Lcom/car/btphone/BTInfoFragment;->mDevConnected:Z

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mConnectedDev:Landroid/widget/TextView;

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mConnectedDev:Landroid/widget/TextView;

    const/16 v3, 0xf9

    const/16 v4, 0x63

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mBtStatus:Landroid/widget/TextView;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    const/4 v1, 0x0

    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    :cond_1
    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {p0, v7}, Lcom/car/btphone/BTInfoFragment;->showBTSwitch(Z)V

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/car/btphone/BTInfoFragment;->mDevConnected:Z

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mConnectedDev:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mConnectedDev:Landroid/widget/TextView;

    const/16 v3, 0x91

    const/16 v4, 0xd3

    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/car/btphone/BTInfoFragment;->mBtStatus:Landroid/widget/TextView;

    const v3, 0x7f070013

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/car/btphone/BTPhoneService;->sBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v6}, Lcom/car/btphone/BTInfoFragment;->showBTSwitch(Z)V

    goto :goto_0
.end method
