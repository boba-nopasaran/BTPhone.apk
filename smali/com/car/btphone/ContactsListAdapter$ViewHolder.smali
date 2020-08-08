.class public Lcom/car/btphone/ContactsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/btphone/ContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public contact_name:Landroid/widget/TextView;

.field public group_title:Landroid/widget/TextView;

.field public phone_number:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
