.class public Lcom/car/btphone/CallingFragment;
.super Landroid/app/Fragment;
.source "CallingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static mContext:Landroid/content/Context;


# instance fields
.field mAcceptBtn:Landroid/widget/ImageButton;

.field mAudioConnected:Z

.field mCallType:I

.field mChronometer:Landroid/widget/Chronometer;

.field mDtmfBtn:Landroid/widget/ImageButton;

.field mDtmfpadFragment:Lcom/car/btphone/DialpadFragment;

.field mHangupBtn:Landroid/widget/ImageButton;

.field mHideBtn:Landroid/widget/ImageButton;

.field mIsActiveNow:Ljava/lang/Boolean;

.field mIsMute:Z

.field mIsSpeaker:Z

.field mMuteBtn:Landroid/widget/ImageButton;

.field mNumber:Landroid/widget/TextView;

.field mOptionView:Landroid/widget/LinearLayout;

.field mPhoneNum:Ljava/lang/String;

.field mSpeakerBtn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/car/btphone/CallingFragment;->mPhoneNum:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/car/btphone/CallingFragment;->mIsActiveNow:Ljava/lang/Boolean;

    iput v1, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    iput-boolean v1, p0, Lcom/car/btphone/CallingFragment;->mIsMute:Z

    iput-boolean v1, p0, Lcom/car/btphone/CallingFragment;->mIsSpeaker:Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/car/btphone/CallingFragment;
    .locals 4

    const-class v3, Lcom/car/btphone/CallingFragment;

    monitor-enter v3

    :try_start_0
    new-instance v1, Lcom/car/btphone/CallingFragment;

    invoke-direct {v1}, Lcom/car/btphone/CallingFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/car/btphone/CallingFragment;->setArguments(Landroid/os/Bundle;)V

    sput-object p0, Lcom/car/btphone/CallingFragment;->mContext:Landroid/content/Context;
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
.method public getCallType()I
    .locals 1

    iget v0, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    if-ne v4, p1, :cond_1

    invoke-static {v3}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mDtmfBtn:Landroid/widget/ImageButton;

    if-ne v4, p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/car/btphone/CallingFragment;->showDtmf(Z)V

    iget-object v2, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/car/btphone/CallingFragment;->showDtmf(Z)V

    iget-object v2, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mHangupBtn:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_5

    invoke-static {v3}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mMuteBtn:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_8

    iget-boolean v4, p0, Lcom/car/btphone/CallingFragment;->mIsMute:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mMuteBtn:Landroid/widget/ImageButton;

    const v5, 0x7f02002d

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_2
    iget-boolean v4, p0, Lcom/car/btphone/CallingFragment;->mIsMute:Z

    if-nez v4, :cond_7

    :goto_3
    iput-boolean v2, p0, Lcom/car/btphone/CallingFragment;->mIsMute:Z

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mMuteBtn:Landroid/widget/ImageButton;

    const v5, 0x7f02002c

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mSpeakerBtn:Landroid/widget/ImageButton;

    if-ne p1, v4, :cond_0

    invoke-static {v3}, Lcom/car/btphone/MainHandler;->getInstance(Z)Lcom/car/btphone/MainHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v5, v1, Landroid/os/Message;->what:I

    iget-boolean v4, p0, Lcom/car/btphone/CallingFragment;->mAudioConnected:Z

    if-eqz v4, :cond_9

    :goto_4
    iput v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_9
    move v3, v2

    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mMuteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mDtmfBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mSpeakerBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mHangupBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/car/btphone/CallingFragment;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Chronometer;

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mChronometer:Landroid/widget/Chronometer;

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mMuteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mSpeakerBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mDtmfBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mHangupBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    sget-object v1, Lcom/car/btphone/CallingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/car/btphone/DialpadFragment;->getInstance(Landroid/content/Context;)Lcom/car/btphone/DialpadFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mDtmfpadFragment:Lcom/car/btphone/DialpadFragment;

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mDtmfpadFragment:Lcom/car/btphone/DialpadFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/car/btphone/DialpadFragment;->setDtmfMode(Z)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
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

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v0

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    iget v1, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/btphone/CallingFragment;->startChronometer(Z)V

    :cond_0
    iget v1, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/car/btphone/CallingFragment;->setCallNumber(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/car/btphone/CallingFragment;->showDtmf(Z)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mHideBtn:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/car/btphone/CallingFragment;->refreshAudioState()V

    return-void

    :cond_1
    iget v1, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->msgWhat:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public refreshAudioState()V
    .locals 1

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->isAudioConnect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/car/btphone/CallingFragment;->setAudioState(Z)V

    return-void
.end method

.method public setAudioState(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/car/btphone/CallingFragment;->mAudioConnected:Z

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mSpeakerBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mSpeakerBtn:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/car/btphone/CallingFragment;->mAudioConnected:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setCallNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mNumber:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iput-object p1, p0, Lcom/car/btphone/CallingFragment;->mPhoneNum:Ljava/lang/String;

    return-void
.end method

.method public setCallType(I)V
    .locals 2

    iput p1, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/car/btphone/CallingFragment;->mCallType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/car/btphone/CallingFragment;->mAcceptBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method showDtmf(Z)V
    .locals 5

    sget-object v3, Lcom/car/btphone/CallingFragment;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f040000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-object v3, Lcom/car/btphone/CallingFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f040001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    new-instance v4, Lcom/car/btphone/CallingFragment$1;

    invoke-direct {v4, p0}, Lcom/car/btphone/CallingFragment$1;-><init>(Lcom/car/btphone/CallingFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/car/btphone/CallingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/car/btphone/CallingFragment;->mDtmfpadFragment:Lcom/car/btphone/DialpadFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v3, p0, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public startChronometer(Z)V
    .locals 4

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mChronometer:Landroid/widget/Chronometer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/car/btphone/BTPhoneService;->getCurActiveCall()Lcom/car/btphone/BTPhoneService$CallStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mChronometer:Landroid/widget/Chronometer;

    iget-wide v2, v0, Lcom/car/btphone/BTPhoneService$CallStatus;->chronometerBase:J

    invoke-virtual {v1, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->start()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mIsActiveNow:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/car/btphone/CallingFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/car/btphone/CallingFragment;->mIsActiveNow:Ljava/lang/Boolean;

    goto :goto_0
.end method
