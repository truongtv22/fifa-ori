.class public final enum Landroidx/datastore/preferences/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/datastore/preferences/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BOOL:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BOOL_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BYTES:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum BYTES_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum ENUM_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FLOAT:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MAP:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum STRING:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum STRING_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT32:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT64:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field private static final VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;


# instance fields
.field private final collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Landroidx/datastore/preferences/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 62

    new-instance v6, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v5, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v6, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v14, "INT64"

    const/4 v15, 0x2

    const/16 v16, 0x2

    sget-object v17, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v18, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->INT64:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v2, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v3, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v14, "INT32"

    const/4 v15, 0x4

    const/16 v16, 0x4

    sget-object v17, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v18, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v3, Landroidx/datastore/preferences/protobuf/FieldType;->INT32:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v4, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v4, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v5, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    const/16 v16, 0x6

    sget-object v17, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v18, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v5, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v13, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    sget-object v11, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v13, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v15, "STRING"

    const/16 v16, 0x8

    const/16 v17, 0x8

    sget-object v18, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v19, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/FieldType;->STRING:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v8, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v21, "MESSAGE"

    const/16 v22, 0x9

    const/16 v23, 0x9

    sget-object v24, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v25, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v9, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v15, "BYTES"

    const/16 v16, 0xa

    const/16 v17, 0xa

    sget-object v18, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v19, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v9, Landroidx/datastore/preferences/protobuf/FieldType;->BYTES:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v10, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v21, "UINT32"

    const/16 v22, 0xb

    const/16 v23, 0xb

    sget-object v24, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v25, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v11, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v15, "ENUM"

    const/16 v16, 0xc

    const/16 v17, 0xc

    sget-object v18, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v19, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v11, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v12, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    const/16 v23, 0xd

    sget-object v24, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v25, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v12, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v20, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v15, "SFIXED64"

    const/16 v16, 0xe

    const/16 v17, 0xe

    sget-object v18, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v19, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v20, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v14, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v22, "SINT32"

    const/16 v23, 0xf

    const/16 v24, 0xf

    sget-object v25, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v26, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v14, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v15, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v28, "SINT64"

    const/16 v29, 0x10

    const/16 v30, 0x10

    sget-object v31, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v32, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v15, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v16, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v22, "GROUP"

    const/16 v23, 0x11

    const/16 v24, 0x11

    sget-object v25, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v26, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v16, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v17, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v28, "DOUBLE_LIST"

    const/16 v29, 0x12

    const/16 v30, 0x12

    sget-object v31, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v32, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v17, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v18, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v22, "FLOAT_LIST"

    const/16 v23, 0x13

    const/16 v24, 0x13

    sget-object v25, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v26, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v21, v18

    invoke-direct/range {v21 .. v26}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v18, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v28, "INT64_LIST"

    const/16 v29, 0x14

    const/16 v30, 0x14

    sget-object v31, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v32, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v27, v19

    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v19, Landroidx/datastore/preferences/protobuf/FieldType;->INT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v22, "UINT64_LIST"

    const/16 v23, 0x15

    const/16 v24, 0x15

    sget-object v25, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v26, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v21, v27

    invoke-direct/range {v21 .. v26}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v27, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v21, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v29, "INT32_LIST"

    const/16 v30, 0x16

    const/16 v31, 0x16

    sget-object v32, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v33, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v28, v21

    invoke-direct/range {v28 .. v33}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v21, Landroidx/datastore/preferences/protobuf/FieldType;->INT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v22, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v35, "FIXED64_LIST"

    const/16 v36, 0x17

    const/16 v37, 0x17

    sget-object v38, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v39, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v34, v22

    invoke-direct/range {v34 .. v39}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v22, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v23, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v29, "FIXED32_LIST"

    const/16 v30, 0x18

    const/16 v31, 0x18

    sget-object v32, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v33, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v28, v23

    invoke-direct/range {v28 .. v33}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v23, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v24, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v35, "BOOL_LIST"

    const/16 v36, 0x19

    const/16 v37, 0x19

    sget-object v38, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v39, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v34, v24

    invoke-direct/range {v34 .. v39}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v24, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v25, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v29, "STRING_LIST"

    const/16 v30, 0x1a

    const/16 v31, 0x1a

    sget-object v32, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v33, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v28, v25

    invoke-direct/range {v28 .. v33}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v25, Landroidx/datastore/preferences/protobuf/FieldType;->STRING_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v26, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v35, "MESSAGE_LIST"

    const/16 v36, 0x1b

    const/16 v37, 0x1b

    sget-object v38, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v39, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v34, v26

    invoke-direct/range {v34 .. v39}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v26, Landroidx/datastore/preferences/protobuf/FieldType;->MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v34, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v29, "BYTES_LIST"

    const/16 v30, 0x1c

    const/16 v31, 0x1c

    sget-object v32, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v33, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v28, v34

    invoke-direct/range {v28 .. v33}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v34, Landroidx/datastore/preferences/protobuf/FieldType;->BYTES_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v28, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v36, "UINT32_LIST"

    const/16 v37, 0x1d

    const/16 v38, 0x1d

    sget-object v39, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v40, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v35, v28

    invoke-direct/range {v35 .. v40}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v28, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v29, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v42, "ENUM_LIST"

    const/16 v43, 0x1e

    const/16 v44, 0x1e

    sget-object v45, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v46, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v41, v29

    invoke-direct/range {v41 .. v46}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v29, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v30, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v36, "SFIXED32_LIST"

    const/16 v37, 0x1f

    const/16 v38, 0x1f

    sget-object v39, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v40, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v35, v30

    invoke-direct/range {v35 .. v40}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v30, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v31, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v42, "SFIXED64_LIST"

    const/16 v43, 0x20

    const/16 v44, 0x20

    sget-object v45, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v46, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v41, v31

    invoke-direct/range {v41 .. v46}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v31, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v32, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v36, "SINT32_LIST"

    const/16 v37, 0x21

    const/16 v38, 0x21

    sget-object v39, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v40, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v35, v32

    invoke-direct/range {v35 .. v40}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v32, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v33, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v42, "SINT64_LIST"

    const/16 v43, 0x22

    const/16 v44, 0x22

    sget-object v45, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v46, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v41, v33

    invoke-direct/range {v41 .. v46}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v33, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v41, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v36, "DOUBLE_LIST_PACKED"

    const/16 v37, 0x23

    const/16 v38, 0x23

    sget-object v39, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v40, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v35, v41

    invoke-direct/range {v35 .. v40}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v41, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v35, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v43, "FLOAT_LIST_PACKED"

    const/16 v44, 0x24

    const/16 v45, 0x24

    sget-object v46, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v47, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v47}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v35, Landroidx/datastore/preferences/protobuf/FieldType;->FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v36, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v49, "INT64_LIST_PACKED"

    const/16 v50, 0x25

    const/16 v51, 0x25

    sget-object v52, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v53, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v53}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v36, Landroidx/datastore/preferences/protobuf/FieldType;->INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v37, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v43, "UINT64_LIST_PACKED"

    const/16 v44, 0x26

    const/16 v45, 0x26

    sget-object v46, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v47, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v42, v37

    invoke-direct/range {v42 .. v47}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v37, Landroidx/datastore/preferences/protobuf/FieldType;->UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v38, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v49, "INT32_LIST_PACKED"

    const/16 v50, 0x27

    const/16 v51, 0x27

    sget-object v52, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v53, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v48, v38

    invoke-direct/range {v48 .. v53}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v38, Landroidx/datastore/preferences/protobuf/FieldType;->INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v39, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v43, "FIXED64_LIST_PACKED"

    const/16 v44, 0x28

    const/16 v45, 0x28

    sget-object v46, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v47, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v42, v39

    invoke-direct/range {v42 .. v47}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v39, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v40, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v49, "FIXED32_LIST_PACKED"

    const/16 v50, 0x29

    const/16 v51, 0x29

    sget-object v52, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v53, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v48, v40

    invoke-direct/range {v48 .. v53}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v40, Landroidx/datastore/preferences/protobuf/FieldType;->FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v48, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v43, "BOOL_LIST_PACKED"

    const/16 v44, 0x2a

    const/16 v45, 0x2a

    sget-object v46, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v47, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v42, v48

    invoke-direct/range {v42 .. v47}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v48, Landroidx/datastore/preferences/protobuf/FieldType;->BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v42, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v50, "UINT32_LIST_PACKED"

    const/16 v51, 0x2b

    const/16 v52, 0x2b

    sget-object v53, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v54, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v49, v42

    invoke-direct/range {v49 .. v54}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v42, Landroidx/datastore/preferences/protobuf/FieldType;->UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v43, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v56, "ENUM_LIST_PACKED"

    const/16 v57, 0x2c

    const/16 v58, 0x2c

    sget-object v59, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v60, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v55, v43

    invoke-direct/range {v55 .. v60}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v43, Landroidx/datastore/preferences/protobuf/FieldType;->ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v44, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v50, "SFIXED32_LIST_PACKED"

    const/16 v51, 0x2d

    const/16 v52, 0x2d

    sget-object v53, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v54, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v49, v44

    invoke-direct/range {v49 .. v54}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v44, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v45, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v56, "SFIXED64_LIST_PACKED"

    const/16 v57, 0x2e

    const/16 v58, 0x2e

    sget-object v59, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v60, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v55, v45

    invoke-direct/range {v55 .. v60}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v45, Landroidx/datastore/preferences/protobuf/FieldType;->SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v46, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v50, "SINT32_LIST_PACKED"

    const/16 v51, 0x2f

    const/16 v52, 0x2f

    sget-object v53, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v54, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v49, v46

    invoke-direct/range {v49 .. v54}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v46, Landroidx/datastore/preferences/protobuf/FieldType;->SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v47, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v56, "SINT64_LIST_PACKED"

    const/16 v57, 0x30

    const/16 v58, 0x30

    sget-object v59, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v60, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v55, v47

    invoke-direct/range {v55 .. v60}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v47, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v55, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v50, "GROUP_LIST"

    const/16 v51, 0x31

    const/16 v52, 0x31

    sget-object v53, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v54, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v49, v55

    invoke-direct/range {v49 .. v54}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v55, Landroidx/datastore/preferences/protobuf/FieldType;->GROUP_LIST:Landroidx/datastore/preferences/protobuf/FieldType;

    new-instance v49, Landroidx/datastore/preferences/protobuf/FieldType;

    const-string v57, "MAP"

    const/16 v58, 0x32

    const/16 v59, 0x32

    sget-object v60, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->MAP:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v61, Landroidx/datastore/preferences/protobuf/JavaType;->VOID:Landroidx/datastore/preferences/protobuf/JavaType;

    move-object/from16 v56, v49

    invoke-direct/range {v56 .. v61}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V

    sput-object v49, Landroidx/datastore/preferences/protobuf/FieldType;->MAP:Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v50, v15

    const/16 v15, 0x33

    new-array v15, v15, [Landroidx/datastore/preferences/protobuf/FieldType;

    move-object/from16 v51, v14

    const/4 v14, 0x0

    aput-object v6, v15, v14

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v51, v15, v0

    const/16 v0, 0x10

    aput-object v50, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v27, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v26, v15, v0

    const/16 v0, 0x1c

    aput-object v34, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    const/16 v0, 0x23

    aput-object v41, v15, v0

    const/16 v0, 0x24

    aput-object v35, v15, v0

    const/16 v0, 0x25

    aput-object v36, v15, v0

    const/16 v0, 0x26

    aput-object v37, v15, v0

    const/16 v0, 0x27

    aput-object v38, v15, v0

    const/16 v0, 0x28

    aput-object v39, v15, v0

    const/16 v0, 0x29

    aput-object v40, v15, v0

    const/16 v0, 0x2a

    aput-object v48, v15, v0

    const/16 v0, 0x2b

    aput-object v42, v15, v0

    const/16 v0, 0x2c

    aput-object v43, v15, v0

    const/16 v0, 0x2d

    aput-object v44, v15, v0

    const/16 v0, 0x2e

    aput-object v45, v15, v0

    const/16 v0, 0x2f

    aput-object v46, v15, v0

    const/16 v0, 0x30

    aput-object v47, v15, v0

    const/16 v0, 0x31

    aput-object v55, v15, v0

    const/16 v0, 0x32

    aput-object v49, v15, v0

    sput-object v15, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    new-array v0, v14, [Ljava/lang/reflect/Type;

    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/FieldType;->values()[Landroidx/datastore/preferences/protobuf/FieldType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Landroidx/datastore/preferences/protobuf/FieldType;

    sput-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    array-length v1, v0

    :goto_0
    if-ge v14, v1, :cond_0

    aget-object v2, v0, v14

    sget-object v3, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    iget v4, v2, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    aput-object v2, v3, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/FieldType$Collection;Landroidx/datastore/preferences/protobuf/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/datastore/preferences/protobuf/FieldType$Collection;",
            "Landroidx/datastore/preferences/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    :goto_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne p4, p1, :cond_2

    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/JavaType;->ordinal()I

    move-result p4

    aget p1, p1, p4

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->primitiveScalar:Z

    return-void
.end method

.method public static forId(I)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 2

    if-ltz p0, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    :goto_0
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_9

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_6

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_5

    aget-object v5, v3, v4

    instance-of v6, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    array-length v7, p1

    array-length v8, v6

    if-ne v7, v8, :cond_3

    const/4 v7, 0x0

    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget-object v8, v6, v7

    if-ne v5, v8, :cond_0

    aget-object v6, p1, v7

    aput-object v6, v3, v4

    const/4 v6, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_2

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to find replacement for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Type array mismatch"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    move-object p1, v3

    goto :goto_0

    :cond_6
    sget-object p1, Landroidx/datastore/preferences/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object p0, v3

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_9
    array-length p0, p1

    if-ne p0, v2, :cond_a

    aget-object p0, p1, v1

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to identify parameter type for List<T>"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->elementType:Ljava/lang/Class;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/FieldType;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Landroidx/datastore/preferences/protobuf/JavaType;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->MAP:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPacked()Z
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .locals 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    sget-object v1, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->SCALAR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .locals 2

    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->VECTOR:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldType;->collection:Landroidx/datastore/preferences/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldType;->javaType:Landroidx/datastore/preferences/protobuf/JavaType;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
