.class Lcom/car/btphone/CallingFragment$1;
.super Ljava/lang/Object;
.source "CallingFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/btphone/CallingFragment;->showDtmf(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/btphone/CallingFragment;


# direct methods
.method constructor <init>(Lcom/car/btphone/CallingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/car/btphone/CallingFragment$1;->this$0:Lcom/car/btphone/CallingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v1, p0, Lcom/car/btphone/CallingFragment$1;->this$0:Lcom/car/btphone/CallingFragment;

    iget-object v1, v1, Lcom/car/btphone/CallingFragment;->mOptionView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/car/btphone/CallingFragment$1;->this$0:Lcom/car/btphone/CallingFragment;

    invoke-virtual {v1}, Lcom/car/btphone/CallingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080030

    iget-object v3, p0, Lcom/car/btphone/CallingFragment$1;->this$0:Lcom/car/btphone/CallingFragment;

    iget-object v3, v3, Lcom/car/btphone/CallingFragment;->mDtmfpadFragment:Lcom/car/btphone/DialpadFragment;

    const-string v4, "dtmfkeyboard_fragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
