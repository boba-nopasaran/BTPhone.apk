.class public final Lcom/aispeech/c/f;
.super Lcom/aispeech/speech/d;
.source "SourceFile"


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:[Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/aispeech/speech/d;-><init>()V

    iput v1, p0, Lcom/aispeech/c/f;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/c/f;->i:Ljava/lang/String;

    const-string v0, "cloud"

    iput-object v0, p0, Lcom/aispeech/c/f;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/c/f;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/aispeech/c/f;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/aispeech/c/f;->q:Z

    const-string v0, "cn.sds"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/f;->a(Ljava/lang/String;)V

    const-string v0, "CloudSdsParams"

    invoke-virtual {p0, v0}, Lcom/aispeech/c/f;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-lez p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nbest=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/c/f;->h:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/c/f;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->m:[Ljava/lang/String;

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/aispeech/c/f;->c:I

    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->n:[Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/aispeech/c/f;->q:Z

    return-void
.end method

.method public final c([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->o:[Ljava/lang/String;

    return-void
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 7

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/aispeech/c/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/aispeech/c/f;->l(Z)V

    iget-object v0, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v2, "refText"

    iget-object v3, p0, Lcom/aispeech/c/f;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v2, "env"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aispeech/c/f;->h:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/aispeech/c/f;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, p0, Lcom/aispeech/c/f;->e:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/aispeech/c/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v4, p0, Lcom/aispeech/c/f;->f:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/aispeech/c/f;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v4, p0, Lcom/aispeech/c/f;->g:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/aispeech/c/f;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v4, p0, Lcom/aispeech/c/f;->q:Z

    if-eqz v4, :cond_4

    const-string v4, "use_pinyin=1;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v4, p0, Lcom/aispeech/c/f;->c:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/aispeech/c/f;->c:I

    if-ne v4, v5, :cond_9

    const-string v4, "use_frame_split= 1;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "use_vad_restart= 0;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "prevdomain"

    iget-object v3, p0, Lcom/aispeech/c/f;->i:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "lastServiceType"

    iget-object v3, p0, Lcom/aispeech/c/f;->j:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/aispeech/c/f;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "contextId"

    iget-object v3, p0, Lcom/aispeech/c/f;->k:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v3, "sdsExpand"

    invoke-static {v2, v3, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/aispeech/c/f;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v2, "wakeupWord"

    iget-object v3, p0, Lcom/aispeech/c/f;->l:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/aispeech/c/f;->m:[Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/aispeech/c/f;->m:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_b

    iget-object v4, p0, Lcom/aispeech/c/f;->m:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_a

    aget-object v0, v4, v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v5}, Lcom/aispeech/c/f;->l(Z)V

    iget-object v0, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v2, "refText"

    invoke-static {v0, v2}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget v4, p0, Lcom/aispeech/c/f;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const-string v4, "use_frame_split= 1;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "use_vad_restart= 1;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v3, "commonWakeupWord"

    invoke-static {v2, v3, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    iget-object v2, p0, Lcom/aispeech/c/f;->n:[Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/aispeech/c/f;->n:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_d

    iget-object v4, p0, Lcom/aispeech/c/f;->n:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_c

    aget-object v0, v4, v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v3, "commonWakeupWordPinyin"

    invoke-static {v2, v3, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    iget-object v2, p0, Lcom/aispeech/c/f;->o:[Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/aispeech/c/f;->o:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_f

    iget-object v4, p0, Lcom/aispeech/c/f;->o:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_4
    if-ge v2, v5, :cond_e

    aget-object v0, v4, v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_4

    :cond_e
    iget-object v2, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v3, "customWakeupWord"

    invoke-static {v2, v3, v0}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    iget-object v2, p0, Lcom/aispeech/c/f;->p:[Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/aispeech/c/f;->p:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/aispeech/c/f;->p:[Ljava/lang/String;

    array-length v3, v2

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_5
    if-ge v0, v3, :cond_10

    aget-object v4, v2, v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/aispeech/c/f;->a:Lorg/json/JSONObject;

    const-string v2, "customWakeupWordPinyin"

    invoke-static {v0, v2, v1}, Lcom/aispeech/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11
    invoke-super {p0}, Lcom/aispeech/speech/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final d([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->p:[Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->k:Ljava/lang/String;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->d:Ljava/lang/String;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "domain=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/c/f;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/c/f;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dlg_domain=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/c/f;->f:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/c/f;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lbs_city=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aispeech/c/f;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aispeech/c/f;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->i:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->j:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/aispeech/c/f;->l:Ljava/lang/String;

    return-void
.end method