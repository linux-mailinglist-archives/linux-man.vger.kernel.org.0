Return-Path: <linux-man+bounces-5572-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oIFGBo1fEGobWwYAu9opvQ
	(envelope-from <linux-man+bounces-5572-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 15:52:13 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5705B58D7
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 15:52:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F073306CCEC
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:41:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 290C440F8E4;
	Fri, 22 May 2026 13:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="e3lHq3fk";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="gLzE7b0K"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b1-smtp.messagingengine.com (fhigh-b1-smtp.messagingengine.com [202.12.124.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7C9409125;
	Fri, 22 May 2026 13:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457175; cv=none; b=PZx5gQRekyPvZ3cb9Ffi/gCzv8zi9qAS+IkZonvb7xrZmmUzR3pXOqzHQG2hHkE7idW7XP2yNPEtRRYHlmKpTytAAD9ML10xwqLAPNzX2OrpRItbyuS2Wv1ivh8a0o58MuwM+d0EkbyQcmjIrltixLj+IAPprzrgCmp2ywbmr74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457175; c=relaxed/simple;
	bh=VxGypuR29qqNO8WwK9IzRx9znnwqZSglg1pQPlofjxI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=la1iwWyuxQt8oip1wecMro0guY48vDECSzau+wS1O/hbyFitnoznIROX5UovZ9i0rc6WCOW5BCvRpgVNsmz2vVrN6oWSniIqYIsYxlsnqh4r1hJKWs1h2eka8mYB9DkVz4wPgSMBGaw7JYkVukEgxWtY9II4I+zxEEmOUgqtdZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=e3lHq3fk; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=gLzE7b0K; arc=none smtp.client-ip=202.12.124.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 4D4BF7A00C1;
	Fri, 22 May 2026 09:39:32 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Fri, 22 May 2026 09:39:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1779457172; x=1779543572; bh=NUSWa0bvq0cSrOhIFYJlo/a/b9wxl4km
	1riDjIieggs=; b=e3lHq3fkS+203s+13cR5G363ZG9VUqc3L5P9PT/EtvcnyInb
	jiVXCDnpW2rvStoNbPz7GGjiAX7GkKImcTbj+/Dji36cWWd+bqeASaGgumoweD0z
	+s22N48+H2dTMDLygiBhFYjWOH7Y/MkBYqD/TgMm4GBM/nL6fHVicK4aSJNN0aot
	je7Zwsk/j1gybcoAvNTu+oAiOZN1E+U13TZ2q0uXavA2JLOGxC5mBvHt0pMLENey
	smA3c8thkGBCspA6EYha5kPFynIKhK2Dj6I4BRbdyCxoa1b9hnl+NsxEoYDeGA+A
	76ddjXEjdXy9IBq3kN7+6SjUo/wGq1TKKZJOqQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1779457172; x=
	1779543572; bh=NUSWa0bvq0cSrOhIFYJlo/a/b9wxl4km1riDjIieggs=; b=g
	LzE7b0KJffZWCz1bmPiL7sPhcT/lL8EwWAylNYgRqu9kqfCe8iV3pgRXYRr7VO9S
	9sokZO8gMWdapn6vAokeG1xbq+y2PeX87ionvysZIJnc8x9JjI4jiUygUug3VM5S
	uSl6kIZQdKDfSjAS39pXz+bumWkKv37185KKkigJYbcDzP/pgNQnwKJHiljcwTVe
	vvmxJT3W8oX6YODHfbcQfcldZDeFIylpKoB/FW85FjLOmL6bZbnsebetPPqPmzCE
	V5DjyS71mD+GULFSasYFmecYcLyKkmx6iBmaut8onHbdnz9pVrvSWFS+Hyi+Btdp
	ZExCFom9VNfpKQ0QgOZow==
X-ME-Sender: <xms:lFwQat3xCXyryHj7LBt68o3oGOI0qburBxRnUCevd_8z_V1cPxlg-g>
    <xme:lFwQalJA9USwxfa4mV25rPFV88wl6Jb9jWM4kmyOzApYCr7AK9lqGVhi99s3JgbvS
    PXrpLTt1Ofu1m_gwBR14GgnJhsYNY_PyEgXMf-7npZy8ersf7sPqg>
X-ME-Received: <xmr:lFwQag3kVVLfSm_4drIrfXrfG9PPvv4VO9cmr3HH1YY3BaGwMO1GxBsrW5cEBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduhedtfeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfgggtgfesthekre
    dtredtjeenucfhrhhomhepmfhirhihlhcuufhhuhhtshgvmhgruhcuoehkihhrihhllhes
    shhhuhhtvghmohhvrdhnrghmvgeqnecuggftrfgrthhtvghrnhepteefveejgeffleefff
    egiedtieegiedugeekudehtedvjeetvdegieeikefffeevnecuvehluhhsthgvrhfuihii
    vgepudenucfrrghrrghmpehmrghilhhfrhhomhepkhhirhhilhhlsehshhhuthgvmhhovh
    drnhgrmhgvpdhnsggprhgtphhtthhopedviedpmhhouggvpehsmhhtphhouhhtpdhrtghp
    thhtoheprghkphhmsehlihhnuhigqdhfohhunhgurghtihhonhdrohhrghdprhgtphhtth
    hopehrphhptheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgvthgvrhigsehrvggu
    hhgrthdrtghomhdprhgtphhtthhopegurghvihgusehkvghrnhgvlhdrohhrghdprhgtph
    htthhopehljhhssehkvghrnhgvlhdrohhrghdprhgtphhtthhopehsuhhrvghnsgesghho
    ohhglhgvrdgtohhmpdhrtghpthhtohepvhgsrggskhgrsehkvghrnhgvlhdrohhrghdprh
    gtphhtthhopehlihgrmhdrhhhofihlvghtthesohhrrggtlhgvrdgtohhmpdhrtghpthht
    ohepiihihiesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:lFwQaogNTA7JkVw0fOuiS407IsBgVi2elFuKzW2ODPWmGHRVAqaqCA>
    <xmx:lFwQao2uOvLPsUj-td_-xiZj2tInqNamELbmkZlmZbVVgILy3iuyrw>
    <xmx:lFwQareYD3aNUHpS9EdJVXwXkzzRG9YL-hZPuhuS4tsNjq1H2WklcQ>
    <xmx:lFwQajHIUO1B65Pe4SrAWqhdhBtX6ZEz76usB3FYw5KJh9vCehrLkQ>
    <xmx:lFwQatppCJrG3ysLne0kquSDGagiHF62XktA2OqSr0_SI9KSAhA8WnRB>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:31 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org
Cc: ljs@kernel.org,
	surenb@google.com,
	vbabka@kernel.org,
	Liam.Howlett@oracle.com,
	ziy@nvidia.com,
	corbet@lwn.net,
	skhan@linuxfoundation.org,
	seanjc@google.com,
	pbonzini@redhat.com,
	jthoughton@google.com,
	aarcange@redhat.com,
	sj@kernel.org,
	usama.arif@linux.dev,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	kvm@vger.kernel.org,
	kernel-team@meta.com,
	linux-man@vger.kernel.org,
	alx@kernel.org,
	"Kiryl Shutsemau (Meta)" <kas@kernel.org>
Subject: [PATCH v3 08/16] userfaultfd: add UFFDIO_REGISTER_MODE_RWP and UFFDIO_RWPROTECT plumbing
Date: Fri, 22 May 2026 14:38:49 +0100
Message-ID: <20260522133857.552279-9-kirill@shutemov.name>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522133857.552279-1-kirill@shutemov.name>
References: <20260522133857.552279-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5572-lists,linux-man=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[shutemov.name];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: AC5705B58D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

Add the userspace interface for read-write protection tracking:

  - UFFDIO_REGISTER_MODE_RWP      register a range for RWP tracking
  - UFFD_FEATURE_RWP              capability bit
  - UFFDIO_RWPROTECT              install / remove RWP on a range

Introduce CONFIG_USERFAULTFD_RWP, auto-selected on 64-bit kernels with
ARCH_HAS_PTE_PROTNONE and HAVE_ARCH_USERFAULTFD_WP. The symbol gates
VM_UFFD_RWP (previously aliased to VM_NONE) and the smaps/trace-flag
hooks added in the preparatory patches; without it the UAPI bits added
here have nothing to drive and would be unreachable.

Registration sets VM_UFFD_RWP on the VMA. Combining MODE_WP with
MODE_RWP is rejected because both modes claim the uffd PTE bit.

UFFDIO_RWPROTECT is the bidirectional counterpart of
UFFDIO_WRITEPROTECT:

  - MODE_RWP              change_protection() with MM_CP_UFFD_RWP
                          installs PAGE_NONE and sets the uffd bit on
                          present PTEs
  - !MODE_RWP             change_protection() with MM_CP_UFFD_RWP_RESOLVE
                          restores vma->vm_page_prot and clears the bit

userfaultfd_clear_vma() runs the same resolve pass on unregister so
RWP state cannot outlive the uffd.

Re-registering a range must not drop a mode that installs per-PTE
markers (WP or RWP); doing so returns -EBUSY. This also closes a
pre-existing window where re-registering without MODE_WP would strand
uffd-wp markers: before, those caused extra write-faults but were
otherwise benign; with RWP preservation in place, a subsequent
mprotect() on a VM_UFFD_RWP VMA would silently promote the stale
markers to RWP.

The feature is not yet advertised. UFFDIO_REGISTER_MODE_RWP,
UFFD_FEATURE_RWP, and _UFFDIO_RWPROTECT are intentionally absent from
UFFD_API_REGISTER_MODES, UFFD_API_FEATURES, and UFFD_API_RANGE_IOCTLS,
so UFFDIO_API masks them out and the register-mode validator rejects
the bit. The follow-up patch adds fault dispatch and exposes the UAPI.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Assisted-by: Claude:claude-opus-4-6
Reviewed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 Documentation/admin-guide/mm/userfaultfd.rst | 10 ++
 fs/userfaultfd.c                             | 84 +++++++++++++++++
 include/linux/userfaultfd_k.h                |  2 +
 include/uapi/linux/userfaultfd.h             | 19 ++++
 mm/Kconfig                                   |  9 ++
 mm/userfaultfd.c                             | 96 +++++++++++++++++++-
 6 files changed, 217 insertions(+), 3 deletions(-)

diff --git a/Documentation/admin-guide/mm/userfaultfd.rst b/Documentation/admin-guide/mm/userfaultfd.rst
index e5cc8848dcb3..1e533639fd50 100644
--- a/Documentation/admin-guide/mm/userfaultfd.rst
+++ b/Documentation/admin-guide/mm/userfaultfd.rst
@@ -131,6 +131,16 @@ userfaults on the range registered. Not all ioctls will necessarily be
 supported for all memory types (e.g. anonymous memory vs. shmem vs.
 hugetlbfs), or all types of intercepted faults.
 
+.. note::
+
+   Re-registering an already-registered range must not drop any of the
+   modes that install per-PTE markers — currently
+   ``UFFDIO_REGISTER_MODE_WP`` and ``UFFDIO_REGISTER_MODE_RWP``. Doing
+   so would strand markers with no flag to describe them, so the call
+   is rejected with ``-EBUSY``; userspace must issue
+   ``UFFDIO_UNREGISTER`` first. This differs from older kernels, which
+   silently replaced the mode bits on re-registration.
+
 Userland can use the ``uffdio_register.ioctls`` to manage the virtual
 address space in the background (to add or potentially also remove
 memory from the ``userfaultfd`` registered range). This means a userfault
diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
index 0fdf28f62702..f2097c558165 100644
--- a/fs/userfaultfd.c
+++ b/fs/userfaultfd.c
@@ -215,6 +215,8 @@ static inline struct uffd_msg userfault_msg(unsigned long address,
 		msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_WRITE;
 	if (reason & VM_UFFD_WP)
 		msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_WP;
+	if (reason & VM_UFFD_RWP)
+		msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_RWP;
 	if (reason & VM_UFFD_MINOR)
 		msg.arg.pagefault.flags |= UFFD_PAGEFAULT_FLAG_MINOR;
 	if (features & UFFD_FEATURE_THREAD_ID)
@@ -1292,6 +1294,22 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
 
 		vm_flags |= VM_UFFD_WP;
 	}
+	if (uffdio_register.mode & UFFDIO_REGISTER_MODE_RWP) {
+		if (!pgtable_supports_uffd() || VM_UFFD_RWP == VM_NONE)
+			goto out;
+		if (!(ctx->features & UFFD_FEATURE_RWP))
+			goto out;
+		vm_flags |= VM_UFFD_RWP;
+	}
+
+	/*
+	 * WP and RWP share the uffd PTE bit and
+	 * cannot coexist in the same VMA — the bit would carry ambiguous
+	 * semantics. Reject the combination up front.
+	 */
+	if ((vm_flags & VM_UFFD_WP) && (vm_flags & VM_UFFD_RWP))
+		goto out;
+
 	if (uffdio_register.mode & UFFDIO_REGISTER_MODE_MINOR) {
 #ifndef CONFIG_HAVE_ARCH_USERFAULTFD_MINOR
 		goto out;
@@ -1385,6 +1403,16 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
 		    cur->vm_userfaultfd_ctx.ctx != ctx)
 			goto out_unlock;
 
+		/*
+		 * Mode switches that drop VM_UFFD_WP or VM_UFFD_RWP would
+		 * leave PTE markers without the flag that describes them;
+		 * subsequent mprotect() would then promote stale markers
+		 * into the other mode. Require an unregister first.
+		 */
+		if (cur->vm_userfaultfd_ctx.ctx == ctx &&
+		    cur->vm_flags & (VM_UFFD_WP | VM_UFFD_RWP) & ~vm_flags)
+			goto out_unlock;
+
 		/*
 		 * Note vmas containing huge pages
 		 */
@@ -1418,6 +1446,10 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
 		if (!(uffdio_register.mode & UFFDIO_REGISTER_MODE_MINOR))
 			ioctls_out &= ~((__u64)1 << _UFFDIO_CONTINUE);
 
+		/* RWPROTECT is only supported for RWP ranges */
+		if (!(uffdio_register.mode & UFFDIO_REGISTER_MODE_RWP))
+			ioctls_out &= ~((__u64)1 << _UFFDIO_RWPROTECT);
+
 		/*
 		 * Now that we scanned all vmas we can already tell
 		 * userland which ioctls methods are guaranteed to
@@ -1765,6 +1797,55 @@ static int userfaultfd_writeprotect(struct userfaultfd_ctx *ctx,
 	return ret;
 }
 
+static int userfaultfd_rwprotect(struct userfaultfd_ctx *ctx,
+				 unsigned long arg)
+{
+	int ret;
+	struct uffdio_rwprotect uffdio_rwp;
+	struct userfaultfd_wake_range range;
+	bool mode_rwp, mode_dontwake;
+
+	if (atomic_read(&ctx->mmap_changing))
+		return -EAGAIN;
+
+	if (copy_from_user(&uffdio_rwp, (void __user *)arg,
+			   sizeof(uffdio_rwp)))
+		return -EFAULT;
+
+	ret = validate_range(ctx->mm, uffdio_rwp.range.start,
+			     uffdio_rwp.range.len);
+	if (ret)
+		return ret;
+
+	if (uffdio_rwp.mode & ~(UFFDIO_RWPROTECT_MODE_DONTWAKE |
+				UFFDIO_RWPROTECT_MODE_RWP))
+		return -EINVAL;
+
+	mode_rwp = uffdio_rwp.mode & UFFDIO_RWPROTECT_MODE_RWP;
+	mode_dontwake = uffdio_rwp.mode & UFFDIO_RWPROTECT_MODE_DONTWAKE;
+
+	if (mode_rwp && mode_dontwake)
+		return -EINVAL;
+
+	if (mmget_not_zero(ctx->mm)) {
+		ret = mrwprotect_range(ctx, uffdio_rwp.range.start,
+				       uffdio_rwp.range.len, mode_rwp);
+		mmput(ctx->mm);
+	} else {
+		return -ESRCH;
+	}
+
+	if (ret)
+		return ret;
+
+	if (!mode_rwp && !mode_dontwake) {
+		range.start = uffdio_rwp.range.start;
+		range.len = uffdio_rwp.range.len;
+		wake_userfault(ctx, &range);
+	}
+	return ret;
+}
+
 static int userfaultfd_continue(struct userfaultfd_ctx *ctx, unsigned long arg)
 {
 	__s64 ret;
@@ -2071,6 +2152,9 @@ static long userfaultfd_ioctl(struct file *file, unsigned cmd,
 	case UFFDIO_POISON:
 		ret = userfaultfd_poison(ctx, arg);
 		break;
+	case UFFDIO_RWPROTECT:
+		ret = userfaultfd_rwprotect(ctx, arg);
+		break;
 	}
 	return ret;
 }
diff --git a/include/linux/userfaultfd_k.h b/include/linux/userfaultfd_k.h
index 07766398d592..d46974be864e 100644
--- a/include/linux/userfaultfd_k.h
+++ b/include/linux/userfaultfd_k.h
@@ -162,6 +162,8 @@ extern int mwriteprotect_range(struct userfaultfd_ctx *ctx, unsigned long start,
 			       unsigned long len, bool enable_wp);
 extern long uffd_wp_range(struct vm_area_struct *vma,
 			  unsigned long start, unsigned long len, bool enable_wp);
+extern int mrwprotect_range(struct userfaultfd_ctx *ctx, unsigned long start,
+			    unsigned long len, bool enable_rwp);
 
 /* move_pages */
 void double_pt_lock(spinlock_t *ptl1, spinlock_t *ptl2);
diff --git a/include/uapi/linux/userfaultfd.h b/include/uapi/linux/userfaultfd.h
index 2841e4ea8f2c..7b78aa3b5318 100644
--- a/include/uapi/linux/userfaultfd.h
+++ b/include/uapi/linux/userfaultfd.h
@@ -79,6 +79,7 @@
 #define _UFFDIO_WRITEPROTECT		(0x06)
 #define _UFFDIO_CONTINUE		(0x07)
 #define _UFFDIO_POISON			(0x08)
+#define _UFFDIO_RWPROTECT		(0x09)
 #define _UFFDIO_API			(0x3F)
 
 /* userfaultfd ioctl ids */
@@ -103,6 +104,8 @@
 				      struct uffdio_continue)
 #define UFFDIO_POISON		_IOWR(UFFDIO, _UFFDIO_POISON, \
 				      struct uffdio_poison)
+#define UFFDIO_RWPROTECT	_IOWR(UFFDIO, _UFFDIO_RWPROTECT,	\
+				      struct uffdio_rwprotect)
 
 /* read() structure */
 struct uffd_msg {
@@ -158,6 +161,7 @@ struct uffd_msg {
 #define UFFD_PAGEFAULT_FLAG_WRITE	(1<<0)	/* If this was a write fault */
 #define UFFD_PAGEFAULT_FLAG_WP		(1<<1)	/* If reason is VM_UFFD_WP */
 #define UFFD_PAGEFAULT_FLAG_MINOR	(1<<2)	/* If reason is VM_UFFD_MINOR */
+#define UFFD_PAGEFAULT_FLAG_RWP		(1<<3)	/* If reason is VM_UFFD_RWP */
 
 struct uffdio_api {
 	/* userland asks for an API number and the features to enable */
@@ -230,6 +234,11 @@ struct uffdio_api {
 	 *
 	 * UFFD_FEATURE_MOVE indicates that the kernel supports moving an
 	 * existing page contents from userspace.
+	 *
+	 * UFFD_FEATURE_RWP indicates that the kernel supports
+	 * UFFDIO_REGISTER_MODE_RWP for read-write protection tracking.
+	 * Pages are made inaccessible via UFFDIO_RWPROTECT and faults
+	 * are delivered when the pages are re-accessed.
 	 */
 #define UFFD_FEATURE_PAGEFAULT_FLAG_WP		(1<<0)
 #define UFFD_FEATURE_EVENT_FORK			(1<<1)
@@ -248,6 +257,7 @@ struct uffdio_api {
 #define UFFD_FEATURE_POISON			(1<<14)
 #define UFFD_FEATURE_WP_ASYNC			(1<<15)
 #define UFFD_FEATURE_MOVE			(1<<16)
+#define UFFD_FEATURE_RWP			(1<<17)
 	__u64 features;
 
 	__u64 ioctls;
@@ -263,6 +273,7 @@ struct uffdio_register {
 #define UFFDIO_REGISTER_MODE_MISSING	((__u64)1<<0)
 #define UFFDIO_REGISTER_MODE_WP		((__u64)1<<1)
 #define UFFDIO_REGISTER_MODE_MINOR	((__u64)1<<2)
+#define UFFDIO_REGISTER_MODE_RWP	((__u64)1<<3)
 	__u64 mode;
 
 	/*
@@ -356,6 +367,14 @@ struct uffdio_poison {
 	__s64 updated;
 };
 
+struct uffdio_rwprotect {
+	struct uffdio_range range;
+	/* !RWP means undo RWP-protection */
+#define UFFDIO_RWPROTECT_MODE_RWP		((__u64)1<<0)
+#define UFFDIO_RWPROTECT_MODE_DONTWAKE		((__u64)1<<1)
+	__u64 mode;
+};
+
 struct uffdio_move {
 	__u64 dst;
 	__u64 src;
diff --git a/mm/Kconfig b/mm/Kconfig
index e8bf1e9e6ad9..ccf534a8cbc9 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -1347,6 +1347,15 @@ config HAVE_ARCH_USERFAULTFD_MINOR
 	help
 	  Arch has userfaultfd minor fault support
 
+config USERFAULTFD_RWP
+	def_bool y
+	depends on 64BIT && ARCH_HAS_PTE_PROTNONE && HAVE_ARCH_USERFAULTFD_WP
+	help
+	  Userfaultfd read-write protection (UFFDIO_RWPROTECT) delivers a
+	  userfaultfd notification on every access -- read or write -- to a
+	  protected range, letting userspace observe the working set of a
+	  process.
+
 menuconfig USERFAULTFD
 	bool "Enable userfaultfd() system call"
 	depends on MMU
diff --git a/mm/userfaultfd.c b/mm/userfaultfd.c
index d4a1d340dab3..c13452cb092b 100644
--- a/mm/userfaultfd.c
+++ b/mm/userfaultfd.c
@@ -1072,6 +1072,75 @@ int mwriteprotect_range(struct userfaultfd_ctx *ctx, unsigned long start,
 	return err;
 }
 
+int mrwprotect_range(struct userfaultfd_ctx *ctx, unsigned long start,
+		     unsigned long len, bool enable_rwp)
+{
+	struct mm_struct *dst_mm = ctx->mm;
+	unsigned long end = start + len;
+	struct vm_area_struct *dst_vma;
+	unsigned int mm_cp_flags;
+	struct mmu_gather tlb;
+	bool found = false;
+	VMA_ITERATOR(vmi, dst_mm, start);
+
+	VM_WARN_ON_ONCE(start & ~PAGE_MASK);
+	VM_WARN_ON_ONCE(len & ~PAGE_MASK);
+	VM_WARN_ON_ONCE(start + len <= start);
+
+	guard(mmap_read_lock)(dst_mm);
+	guard(rwsem_read)(&ctx->map_changing_lock);
+
+	if (atomic_read(&ctx->mmap_changing))
+		return -EAGAIN;
+
+	if (enable_rwp)
+		mm_cp_flags = MM_CP_UFFD_RWP;
+	else
+		mm_cp_flags = MM_CP_UFFD_RWP_RESOLVE;
+
+	/*
+	 * Pre-scan the range: validate every spanned VMA before applying
+	 * any change_protection() so a partial failure cannot leave the
+	 * process with only a prefix of the range re-protected.
+	 */
+	for_each_vma_range(vmi, dst_vma, end) {
+		if (!userfaultfd_rwp(dst_vma))
+			return -ENOENT;
+
+		if (is_vm_hugetlb_page(dst_vma)) {
+			unsigned long page_mask;
+
+			page_mask = vma_kernel_pagesize(dst_vma) - 1;
+			if ((start & page_mask) || (len & page_mask))
+				return -EINVAL;
+		}
+		found = true;
+	}
+	if (!found)
+		return -ENOENT;
+
+	vma_iter_set(&vmi, start);
+	tlb_gather_mmu(&tlb, dst_mm);
+	for_each_vma_range(vmi, dst_vma, end) {
+		unsigned long vma_start = max(dst_vma->vm_start, start);
+		unsigned long vma_end = min(dst_vma->vm_end, end);
+		unsigned int flags = mm_cp_flags;
+
+		/*
+		 * On resolve, try to upgrade writability per-VMA --
+		 * MM_CP_TRY_CHANGE_WRITABLE WARNs in
+		 * maybe_change_pte_writable() if the VMA is not VM_WRITE,
+		 * and RWP can be registered on PROT_READ-only mappings.
+		 */
+		if (!enable_rwp && vma_wants_manual_pte_write_upgrade(dst_vma))
+			flags |= MM_CP_TRY_CHANGE_WRITABLE;
+
+		change_protection(&tlb, dst_vma, vma_start, vma_end, flags);
+	}
+	tlb_finish_mmu(&tlb);
+
+	return 0;
+}
 
 void double_pt_lock(spinlock_t *ptl1,
 		    spinlock_t *ptl2)
@@ -2109,9 +2178,22 @@ struct vm_area_struct *userfaultfd_clear_vma(struct vma_iterator *vmi,
 	if (start == vma->vm_start && end == vma->vm_end)
 		give_up_on_oom = true;
 
-	/* Reset ptes for the whole vma range if wr-protected */
-	if (userfaultfd_wp(vma))
-		uffd_wp_range(vma, start, end - start, false);
+	/* Clear the uffd bit and/or restore protnone PTEs */
+	if (userfaultfd_protected(vma)) {
+		unsigned int mm_cp_flags = 0;
+		struct mmu_gather tlb;
+
+		if (userfaultfd_wp(vma))
+			mm_cp_flags |= MM_CP_UFFD_WP_RESOLVE;
+		if (userfaultfd_rwp(vma))
+			mm_cp_flags |= MM_CP_UFFD_RWP_RESOLVE;
+		if (vma_wants_manual_pte_write_upgrade(vma))
+			mm_cp_flags |= MM_CP_TRY_CHANGE_WRITABLE;
+
+		tlb_gather_mmu(&tlb, vma->vm_mm);
+		change_protection(&tlb, vma, start, end, mm_cp_flags);
+		tlb_finish_mmu(&tlb);
+	}
 
 	ret = vma_modify_flags_uffd(vmi, prev, vma, start, end,
 				    &new_vma_flags, NULL_VM_UFFD_CTX,
@@ -2160,6 +2242,14 @@ int userfaultfd_register_range(struct userfaultfd_ctx *ctx,
 		    vma_test_all_mask(vma, vma_flags))
 			goto skip;
 
+		/*
+		 * Pre-scan in userfaultfd_register() already rejected mode
+		 * switches that would drop VM_UFFD_WP or VM_UFFD_RWP, so a
+		 * stray bit here is a bug.
+		 */
+		VM_WARN_ON_ONCE(vma->vm_userfaultfd_ctx.ctx == ctx &&
+				vma->vm_flags & (VM_UFFD_WP | VM_UFFD_RWP) & ~vm_flags);
+
 		if (vma->vm_start > start)
 			start = vma->vm_start;
 		vma_end = min(end, vma->vm_end);
-- 
2.51.2


