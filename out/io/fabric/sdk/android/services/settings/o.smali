.class public Lio/fabric/sdk/android/services/settings/o;
.super Ljava/lang/Object;
.source "Paramount"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/SEC/SEC/Helper;->stub()V

    .line 2
    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/o;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lio/fabric/sdk/android/services/settings/o;->b:I

    .line 4
    iput p3, p0, Lio/fabric/sdk/android/services/settings/o;->c:I

    .line 5
    iput p4, p0, Lio/fabric/sdk/android/services/settings/o;->d:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/settings/o;
    .registers 7

    const-string v0, "Fabric"

    if-eqz p1, :cond_43

    .line 1
    :try_start_4
    invoke-static {p0}, Lio/fabric/sdk/android/services/common/l;->d(Landroid/content/Context;)I

    move-result v1

    .line 2
    invoke-static {}, Lio/fabric/sdk/android/f;->e()Lio/fabric/sdk/android/o;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon resource ID is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    new-instance p0, Lio/fabric/sdk/android/services/settings/o;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, v1, v3, v2}, Lio/fabric/sdk/android/services/settings/o;-><init>(Ljava/lang/String;III)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    goto :goto_44

    :catch_39
    move-exception p0

    .line 7
    invoke-static {}, Lio/fabric/sdk/android/f;->e()Lio/fabric/sdk/android/o;

    move-result-object p1

    const-string v1, "Failed to load icon"

    invoke-interface {p1, v0, v1, p0}, Lio/fabric/sdk/android/o;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    const/4 p0, 0x0

    :goto_44
    return-object p0
.end method
