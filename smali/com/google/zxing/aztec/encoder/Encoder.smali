.class public final Lcom/google/zxing/aztec/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field public static final DEFAULT_AZTEC_LAYERS:I = 0x0

.field public static final DEFAULT_EC_PERCENT:I = 0x21

.field private static final MAX_NB_BITS:I = 0x20

.field private static final MAX_NB_BITS_COMPACT:I = 0x4

.field private static final WORD_SIZE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x6
        0x6
        0x8
        0x8
        0x8
        0x8
        0x8
        0x8
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
        0xc
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitsToWords(Lcom/google/zxing/common/BitArray;II)[I
    .locals 7

    new-array v2, p2, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    div-int v3, v5, p1

    :goto_0
    if-ge v0, v3, :cond_2

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    mul-int v5, v0, p1

    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    sub-int v6, p1, v1

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    :goto_2
    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private static drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p1, v0

    :goto_1
    add-int v2, p1, v0

    if-gt v1, v2, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, v0

    invoke-virtual {p0, v2, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    sub-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    sub-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    sub-int v3, p1, p2

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    sub-int v3, p1, p2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int v2, p1, p2

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    return-void
.end method

.method private static drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V
    .locals 5

    div-int/lit8 v0, p2, 0x2

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, v0, -0x3

    add-int v2, v3, v1

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v3, v1, 0x7

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_1
    rsub-int/lit8 v3, v1, 0x14

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_2
    rsub-int/lit8 v3, v1, 0x1b

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v1, v3, :cond_9

    add-int/lit8 v3, v0, -0x5

    add-int/2addr v3, v1

    div-int/lit8 v4, v1, 0x5

    add-int v2, v3, v4

    invoke-virtual {p3, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_5
    add-int/lit8 v3, v1, 0xa

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_6
    rsub-int/lit8 v3, v1, 0x1d

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v3, v0, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_7
    rsub-int/lit8 v3, v1, 0x27

    invoke-virtual {p3, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v3, v0, -0x7

    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static encode([B)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)Lcom/google/zxing/aztec/encoder/AztecCode;
    .locals 34

    new-instance v29, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;-><init>([B)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->encode()Lcom/google/zxing/common/BitArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    mul-int v29, v29, p1

    div-int/lit8 v29, v29, 0x64

    add-int/lit8 v10, v29, 0xb

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v26, v29, v10

    if-eqz p2, :cond_4

    if-gez p2, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-eqz v9, :cond_1

    const/16 v29, 0x4

    :goto_1
    move/from16 v0, v29

    if-le v14, v0, :cond_2

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Illegal value %s for layers"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/16 v29, 0x20

    goto :goto_1

    :cond_2
    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    rem-int v29, v25, v28

    sub-int v27, v25, v29

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_3
    if-eqz v9, :cond_b

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    shl-int/lit8 v30, v28, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Data to large for user specified layer"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_4
    const/16 v28, 0x0

    const/16 v24, 0x0

    const/4 v11, 0x0

    :goto_2
    const/16 v29, 0x20

    move/from16 v0, v29

    if-le v11, v0, :cond_5

    new-instance v29, Ljava/lang/IllegalArgumentException;

    const-string v30, "Data too large for an Aztec code"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_5
    const/16 v29, 0x3

    move/from16 v0, v29

    if-gt v11, v0, :cond_9

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_a

    add-int/lit8 v14, v11, 0x1

    :goto_4
    invoke-static {v14, v9}, Lcom/google/zxing/aztec/encoder/Encoder;->totalBitsInLayer(IZ)I

    move-result v25

    move/from16 v0, v26

    move/from16 v1, v25

    if-gt v0, v1, :cond_8

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v29, v29, v14

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    sget-object v29, Lcom/google/zxing/aztec/encoder/Encoder;->WORD_SIZE:[I

    aget v28, v29, v14

    move/from16 v0, v28

    invoke-static {v6, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;

    move-result-object v24

    :cond_6
    rem-int v29, v25, v28

    sub-int v27, v25, v29

    if-eqz v9, :cond_7

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    shl-int/lit8 v30, v28, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_8

    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    add-int v29, v29, v10

    move/from16 v0, v29

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    :cond_a
    move v14, v11

    goto :goto_4

    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v17

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v29

    div-int v18, v29, v28

    move/from16 v0, v18

    invoke-static {v9, v14, v0}, Lcom/google/zxing/aztec/encoder/Encoder;->generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;

    move-result-object v19

    if-eqz v9, :cond_c

    const/16 v29, 0xb

    :goto_5
    shl-int/lit8 v30, v14, 0x2

    add-int v5, v29, v30

    new-array v3, v5, [I

    if-eqz v9, :cond_d

    move/from16 v16, v5

    const/4 v11, 0x0

    :goto_6
    array-length v0, v3

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v11, v0, :cond_e

    aput v11, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_c
    const/16 v29, 0xe

    goto :goto_5

    :cond_d
    add-int/lit8 v29, v5, 0x1

    div-int/lit8 v30, v5, 0x2

    add-int/lit8 v30, v30, -0x1

    div-int/lit8 v30, v30, 0xf

    mul-int/lit8 v30, v30, 0x2

    add-int v16, v29, v30

    div-int/lit8 v21, v5, 0x2

    div-int/lit8 v7, v16, 0x2

    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v21

    if-ge v11, v0, :cond_e

    div-int/lit8 v29, v11, 0xf

    add-int v20, v11, v29

    sub-int v29, v21, v11

    add-int/lit8 v29, v29, -0x1

    sub-int v30, v7, v20

    add-int/lit8 v30, v30, -0x1

    aput v30, v3, v29

    add-int v29, v21, v11

    add-int v30, v7, v20

    add-int/lit8 v30, v30, 0x1

    aput v30, v3, v29

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    new-instance v15, Lcom/google/zxing/common/BitMatrix;

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_8
    if-ge v11, v14, :cond_16

    sub-int v29, v14, v11

    shl-int/lit8 v30, v29, 0x2

    if-eqz v9, :cond_13

    const/16 v29, 0x9

    :goto_9
    add-int v23, v30, v29

    const/4 v12, 0x0

    :goto_a
    move/from16 v0, v23

    if-ge v12, v0, :cond_15

    shl-int/lit8 v8, v12, 0x1

    const/4 v13, 0x0

    :goto_b
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ge v13, v0, :cond_14

    add-int v29, v22, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_f

    shl-int/lit8 v29, v11, 0x1

    add-int v29, v29, v13

    aget v29, v3, v29

    shl-int/lit8 v30, v11, 0x1

    add-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_f
    shl-int/lit8 v29, v23, 0x1

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_10

    shl-int/lit8 v29, v11, 0x1

    add-int v29, v29, v12

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    shl-int/lit8 v31, v11, 0x1

    sub-int v30, v30, v31

    sub-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_10
    shl-int/lit8 v29, v23, 0x2

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_11

    add-int/lit8 v29, v5, -0x1

    shl-int/lit8 v30, v11, 0x1

    sub-int v29, v29, v30

    sub-int v29, v29, v13

    aget v29, v3, v29

    add-int/lit8 v30, v5, -0x1

    shl-int/lit8 v31, v11, 0x1

    sub-int v30, v30, v31

    sub-int v30, v30, v12

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_11
    mul-int/lit8 v29, v23, 0x6

    add-int v29, v29, v22

    add-int v29, v29, v8

    add-int v29, v29, v13

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_12

    add-int/lit8 v29, v5, -0x1

    shl-int/lit8 v30, v11, 0x1

    sub-int v29, v29, v30

    sub-int v29, v29, v12

    aget v29, v3, v29

    shl-int/lit8 v30, v11, 0x1

    add-int v30, v30, v13

    aget v30, v3, v30

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    :cond_13
    const/16 v29, 0xc

    goto/16 :goto_9

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    :cond_15
    shl-int/lit8 v29, v23, 0x3

    add-int v22, v22, v29

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    :cond_16
    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v15, v9, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawModeMessage(Lcom/google/zxing/common/BitMatrix;ZILcom/google/zxing/common/BitArray;)V

    if-eqz v9, :cond_18

    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    :cond_17
    new-instance v4, Lcom/google/zxing/aztec/encoder/AztecCode;

    invoke-direct {v4}, Lcom/google/zxing/aztec/encoder/AztecCode;-><init>()V

    invoke-virtual {v4, v9}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCompact(Z)V

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setSize(I)V

    invoke-virtual {v4, v14}, Lcom/google/zxing/aztec/encoder/AztecCode;->setLayers(I)V

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/google/zxing/aztec/encoder/AztecCode;->setCodeWords(I)V

    invoke-virtual {v4, v15}, Lcom/google/zxing/aztec/encoder/AztecCode;->setMatrix(Lcom/google/zxing/common/BitMatrix;)V

    return-object v4

    :cond_18
    div-int/lit8 v29, v16, 0x2

    const/16 v30, 0x7

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v15, v0, v1}, Lcom/google/zxing/aztec/encoder/Encoder;->drawBullsEye(Lcom/google/zxing/common/BitMatrix;II)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c
    div-int/lit8 v29, v5, 0x2

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-ge v11, v0, :cond_17

    div-int/lit8 v29, v16, 0x2

    and-int/lit8 v13, v29, 0x1

    :goto_d
    move/from16 v0, v16

    if-ge v13, v0, :cond_19

    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v0, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    sub-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    div-int/lit8 v29, v16, 0x2

    add-int v29, v29, v12

    move/from16 v0, v29

    invoke-virtual {v15, v13, v0}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    add-int/lit8 v13, v13, 0x2

    goto :goto_d

    :cond_19
    add-int/lit8 v11, v11, 0xf

    add-int/lit8 v12, v12, 0x10

    goto :goto_c
.end method

.method private static generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    div-int v1, v8, p2

    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    invoke-static {p2}, Lcom/google/zxing/aztec/encoder/Encoder;->getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    div-int v6, p1, p2

    invoke-static {p0, p2, v6}, Lcom/google/zxing/aztec/encoder/Encoder;->bitsToWords(Lcom/google/zxing/common/BitArray;II)[I

    move-result-object v3

    sub-int v8, v6, v1

    invoke-virtual {v4, v3, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    rem-int v5, p1, p2

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v0, v7, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_0

    aget v2, v3, v7

    invoke-virtual {v0, v2, p2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static generateModeMessage(ZII)Lcom/google/zxing/common/BitArray;
    .locals 4

    const/4 v3, 0x4

    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-eqz p0, :cond_0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x1c

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, p2, -0x1

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v1, 0x28

    invoke-static {v0, v1, v3}, Lcom/google/zxing/aztec/encoder/Encoder;->generateCheckWords(Lcom/google/zxing/common/BitArray;II)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    goto :goto_0
.end method

.method private static getGF(I)Lcom/google/zxing/common/reedsolomon/GenericGF;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported word size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static stuffBits(Lcom/google/zxing/common/BitArray;I)Lcom/google/zxing/common/BitArray;
    .locals 8

    const/4 v7, 0x1

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    shl-int v6, v7, p1

    add-int/lit8 v2, v6, -0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_5

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    add-int v6, v0, v1

    if-ge v6, v3, :cond_0

    add-int v6, v0, v1

    invoke-virtual {p0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    sub-int/2addr v6, v1

    shl-int v6, v7, v6

    or-int/2addr v5, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    and-int v6, v5, v2

    if-ne v6, v2, :cond_3

    and-int v6, v5, v2

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    :goto_2
    add-int/2addr v0, p1

    goto :goto_0

    :cond_3
    and-int v6, v5, v2

    if-nez v6, :cond_4

    or-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4, v5, p1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private static totalBitsInLayer(IZ)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x58

    :goto_0
    shl-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    mul-int/2addr v0, p0

    return v0

    :cond_0
    const/16 v0, 0x70

    goto :goto_0
.end method
