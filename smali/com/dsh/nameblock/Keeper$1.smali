.class Lcom/dsh/nameblock/Keeper$1;
.super Ljava/lang/Object;
.source "Keeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dsh/nameblock/Keeper;->ensure(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/dsh/nameblock/Keeper$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dsh/nameblock/Keeper$1;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    .line 66
    :try_start_1
    iget-object v1, p0, Lcom/dsh/nameblock/Keeper$1;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "enabled_accessibility_services"

    # keep other accessibility services: read the current list, never overwrite it
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :have_value

    const-string v3, ""

    :have_value
    const-string v4, "com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :do_put

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :append

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":com.dsh.nameblock/com.dsh.nameblock.NameGuardService"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :append
    :do_put
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    iget-object v1, p0, Lcom/dsh/nameblock/Keeper$1;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    iget-object p0, p0, Lcom/dsh/nameblock/Keeper$1;->val$app:Landroid/content/Context;

    const-string v1, "keeper"

    const-string v2, "rebound"

    invoke-static {p0, v1, v2}, Lcom/dsh/nameblock/Diag;->log(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1b

    .line 73
    :catchall_1b
    invoke-static {v0}, Lcom/dsh/nameblock/Keeper;->-$$Nest$sfputpendingRebind(Z)V

    return-void
.end method
