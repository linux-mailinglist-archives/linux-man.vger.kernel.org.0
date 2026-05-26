Return-Path: <linux-man+bounces-5601-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kL33BUukFWprWwcAu9opvQ
	(envelope-from <linux-man+bounces-5601-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:46:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1445D6CCC
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:46:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91F823065EAC
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222E83A6B8D;
	Tue, 26 May 2026 13:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="M/hO74IN";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="vAfkACyb"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-c3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1103B6BE8
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802929; cv=none; b=lpNBB7Ti00J8KL+Xt/m/dAyVqpjhghM22dLWxJ5S7wvc90SEbT4L3LcZ0gJQodaSsSHLbTRLxCsTXsmCxz1nvBAwmCmO4bvzX17t2mMpgmrAca1dAJh6XCTM/UMT3bsKPBZRtNg3Ax2i+AoewbZ6Jwb174Prml0EIyPTe1bFpsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802929; c=relaxed/simple;
	bh=fEDb7MpaQ7Zqifu5deUVHUr+Ab3FYC7K4XYWWmqca38=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JZHEX57GRg46yDQv/wDkWcTaDhPx1pTSd7gSr30WOdGmJPDSBJneB7ty7uhqIZ20xpAHZNnC+08Jg7+6NSkzafSrzPAMPGY+Kj0L4b0kOvmwgDLwymMkGy0zXj7tl7UCnTlFLAUmoctRkJeuYV4p6QA7J2PwH+xwO486u48fPu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=M/hO74IN; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=vAfkACyb; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfout.stl.internal (Postfix) with ESMTP id 5F3151D0011C;
	Tue, 26 May 2026 09:42:07 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Tue, 26 May 2026 09:42:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779802927; x=
	1779889327; bh=tQ8zo6ePeQ8e0mgFF9YwviRxnOrTPc84EtwiEk4DZu4=; b=M
	/hO74INtUjFD0ZbYbIa4DSzJKhTCCjQrokUxfkjXTNWpNze9JH3qY/QPrDXrkwrI
	XTRCLa/fc2q8d9pjCBg0tzj/V+UrqpEGAuKleYlp6Fdf7sE9BSfAVFRsYoovmrf9
	U2Ylip+3zQnJZmKg/bgmzbvbgI1RYv+WsxJRqoz9bdEXrIK0yFa3cVzth9DafH5l
	AJWpuJYE7U7SK89YnbtwBNy2yy7KC7Fmqjra9JfdP15vqQrSRzXHC227TqFBuyUB
	qGzGNR0ti+Qj885vH/1t/RDNZ6awcEe/bb2T1srBXWLLbDz8W9UjwF3mIaGvOrGh
	WTkMLO5fynINBf/sys21w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779802927; x=1779889327; bh=t
	Q8zo6ePeQ8e0mgFF9YwviRxnOrTPc84EtwiEk4DZu4=; b=vAfkACybs+4kgWmSn
	hV7XBuuI3W7g4iz5mKqHfs6Ax6VZm1Ydb0UfHTNSA3D/8Y4bJoUqYYEM8KLRlukK
	ok8UMLGXhkFIVUbPg4MpJ3I9yGr3HEWiOsjzKzk4zl7AhUDyRnP80sReTisVehZ+
	E3N1bkUp3BqUdEZNUhY1fGaRkcNEtrHtwPtdUlu36yYPT7jx5pL5bLKJeOaVFsyF
	8sh1qDvuK42bacOZAz86Yu0ZKrHXkMXU6i7G9CTDHKFnk7L2kLS+T7o6wYFLECIh
	4IHlptywvpLX1uq3l223eleOvTsatCbSnrHxVsXeqFcuOPEhF6saRAtDECw1Nc/w
	xbbYA==
X-ME-Sender: <xms:L6MVaprqzHCs-3z5wija5jsfc0ycfITk15_Yht6Upsvd3d1FZu-M0g>
    <xme:L6MVauMfsiZXrybFEjrrad6Y-bdMPj1oQpQOKM4ga-e6clYek6xAeblMnl0YplC_e
    I8x0wafgVh-I322_d2KG7-ToRBkkCBhJMha_ssVPsNiiZVIz7kmYjI>
X-ME-Received: <xmr:L6MVap1a30jJrZMdXbBr_afa7E-2tgeFna31H_nnV-heYPMrTx8noBXxU-4WVA>
X-ME-Proxy-Cause: dmFkZTEKmmmfXFMqzBs7jiifbVegvNCJMVjirpcHlqYkdZGf2vrG6uVXAFSg1d6Q0td17G
    BHi0Udk8wZxn4GNKQn0i0qKJVhV28Siuoy4sYJQthpVYTvIdem3xKUu82LLvmo/fRR2idc
    E/LNl071KFayMqGvv4PhVSsTfRiLzAahkciooLFgU6KxnQ+B1GpIDtHxzLYepxSOTOuoB2
    Jd310wilmlqycHv6nAP4aVmA68fCVq27y7NLY62QiKr3TqEQlhss6i3AfD+YtRux8QVtEP
    BSq3XlZYZPRjKlQoiTY0UC2u7pxjmzfGltvfKqMI1QHBcBwF4AwCgyEi3Yivk9I8a0Cjp1
    aq7Rgo2iTvIVEMB6gomogvKnxfS3PgajbODpWSC9MTBZJXGSM1fOko/LDjUQOMx9gOQv0v
    3zs+Rvv2qXSiD1EmASCjcYfTRlvA2DN1gfCrsKD9Zyk84QnhFChL5qwaoKHdCZMBI72JcO
    QHr50QSYUwAfhB4RrSRT4BXmv4Rn+Jk+aGbYPvKG+muXWzH4KNOJh4qd4y/+TmrpP7HRw8
    2nQXTAlAb4NQWh/bpXwBDGFHPR1QGixkYVCC/9KDYbYKLP/Mv0+I0AJ9HP4zLQDGaOtbRv
    55wACmSeU7Cnzinlv1UnzPPuW/KVLfjTzKMyZnHCNa0z64AKERkZTDFhpnjQ
X-ME-Proxy: <xmx:L6MValBYy24u9HfuLLo-kY1pFycAJrU0-O4G9ETsqYfbWMrDXcBtWg>
    <xmx:L6MVauKpLCmMcec3Xnlv_zct2gsTdS6Spvzyn8SEL6mOu7skoBIx0A>
    <xmx:L6MVamkXn1KuDqKlkyC8rGMWHksqxvvhHF3Q4GaRaIb86P0UYTbe4A>
    <xmx:L6MVavZJmIgFiWSHqCD2wgqvTuX0rHEN-cI-J6pTO6Pajy2o-HQU_w>
    <xmx:L6MVaocbmHJ5wYufmuFbFkuNKIApfHRmiDBa7Z82caIG1lxi7oDmUDnl>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:06 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	"Kiryl Shutsemau (Meta)" <kas@kernel.org>
Subject: [PATCH v2 1/6] userfaultfd.2: Add read-write-protect mode
Date: Tue, 26 May 2026 14:41:44 +0100
Message-ID: <20260526134149.2831720-2-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260526134149.2831720-1-kirill@shutemov.name>
References: <20260526134149.2831720-1-kirill@shutemov.name>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5601-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[messagingengine.com:dkim,shutemov.name:mid,shutemov.name:dkim,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 6D1445D6CCC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: "Kiryl Shutsemau (Meta)" <kas@kernel.org>

Read-write protect mode (UFFDIO_REGISTER_MODE_RWP) is supported starting
from Linux 7.2. It traps every access -- read or write -- to a present
page within a registered range. The matching UAPI consists of:

  - UFFDIO_REGISTER_MODE_RWP   registration-mode bit
  - UFFD_FEATURE_RWP           capability bit
  - UFFD_FEATURE_RWP_ASYNC     async (in-kernel) fault resolution
  - UFFDIO_RWPROTECT           install / remove RWP on a range
  - UFFDIO_SET_MODE            runtime sync/async toggle
  - UFFD_PAGEFAULT_FLAG_RWP    new pagefault.flags bit

Document the new registration-mode entry, the "Userfaultfd read-write
protect mode" section, the new pagefault flag, and a VERSIONS line.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 man/man2/userfaultfd.2 | 174 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 170 insertions(+), 4 deletions(-)

diff --git a/man/man2/userfaultfd.2 b/man/man2/userfaultfd.2
index 6d56085f1534..c395bf9bb332 100644
--- a/man/man2/userfaultfd.2
+++ b/man/man2/userfaultfd.2
@@ -111,6 +111,32 @@ .SH DESCRIPTION
 until user-space write-unprotects the page using an
 .B UFFDIO_WRITEPROTECT
 ioctl.
+.TP
+.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
+When registered with
+.B UFFDIO_REGISTER_MODE_RWP
+mode,
+user space will receive a page-fault notification on any access
+\[em]read or write\[em]
+to a page present within the range.
+By default,
+the faulted thread will be stopped from execution
+until user space removes the protection using a
+.B UFFDIO_RWPROTECT
+ioctl;
+if
+.B UFFD_FEATURE_RWP_ASYNC
+was negotiated,
+the kernel restores access in place
+and the faulted thread continues without blocking.
+.IP
+.B UFFDIO_REGISTER_MODE_RWP
+and
+.B UFFDIO_REGISTER_MODE_WP
+cannot be combined on the same range;
+attempting to register with both bits set fails with
+.BR EINVAL .
+See the "Userfaultfd read-write-protect mode" section below.
 .P
 Multiple modes can be enabled at the same time for the same memory range.
 .P
@@ -192,6 +218,24 @@ .SS Usage
 kicking the faulted thread to continue.
 For more information,
 please refer to the "Userfaultfd write-protect mode" section.
+.P
+Since Linux 7.2,
+userfaultfd can do read-write-protection tracking,
+which traps every access
+(read or write)
+to a page present within a registered range.
+One should check against the feature bit
+.B UFFD_FEATURE_RWP
+before using this feature,
+and optionally negotiate
+.B UFFD_FEATURE_RWP_ASYNC
+to have the kernel auto-restore page permissions on fault
+without delivering a notification.
+This mode is intended for working-set tracking
+by VM memory managers and similar callers;
+cold pages can then be evicted using independent kernel interfaces.
+For more information,
+please refer to the "Userfaultfd read-write-protect mode" section.
 .\"
 .SS Userfaultfd operation
 After the userfaultfd object is created with
@@ -387,6 +431,113 @@ .SS Userfaultfd minor fault mode (since Linux 5.13)
 Minor fault mode supports only hugetlbfs-backed (since Linux 5.13)
 and shmem-backed (since Linux 5.14) memory.
 .\"
+.SS Userfaultfd read-write-protect mode (since Linux 7.2)
+Since Linux 7.2,
+userfaultfd supports read-write-protect mode.
+Unlike write-protect mode,
+every access
+\[em]read or write\[em]
+to a protected page generates a userfaultfd notification.
+It works on anonymous, shmem, and hugetlbfs mappings.
+.P
+The user needs to first check availability of this feature using the
+.B UFFDIO_API
+ioctl against the feature bit
+.B UFFD_FEATURE_RWP
+before using this mode.
+See
+.BR UFFDIO_API (2const)
+for the recommended discovery sequence.
+.P
+To register with userfaultfd read-write-protect mode,
+the user needs to initiate the
+.B UFFDIO_REGISTER
+ioctl with mode
+.B UFFDIO_REGISTER_MODE_RWP
+set.
+.B UFFDIO_REGISTER_MODE_RWP
+cannot be combined with
+.BR UFFDIO_REGISTER_MODE_WP ;
+however it can be combined with
+.B UFFDIO_REGISTER_MODE_MISSING
+when the caller also wants notifications for fresh page populations.
+.P
+After registration,
+the user can read-write-protect any existing memory within the range using the
+.B UFFDIO_RWPROTECT
+ioctl where
+.I uffdio_rwprotect.mode
+is set to
+.BR UFFDIO_RWPROTECT_MODE_RWP .
+Read-write protection only affects pages
+that are currently populated in the range;
+unpopulated addresses remain unpopulated
+and fall through to the normal missing-page path on first access.
+.P
+For anonymous mappings,
+protection is preserved across page reclaim
+(the marker rides on the swap entry)
+and migration.
+For shmem and file-backed mappings,
+protection is dropped when the backing page is reclaimed
+and must be re-armed by the caller.
+Protection is also
+.I not
+preserved across operations that explicitly drop the underlying page:
+.B MADV_DONTNEED
+on anonymous memory,
+hole-punch on shmem,
+truncation of a file mapping.
+Callers must re-arm the range with
+.B UFFDIO_RWPROTECT
+after any such operation.
+.P
+When an access fault happens against a protected page,
+user space will receive a page-fault notification whose
+.I uffd_msg.pagefault.flags
+field has the
+.B UFFD_PAGEFAULT_FLAG_RWP
+bit set.
+.P
+To resolve a read-write-protect page fault,
+the user initiates another
+.B UFFDIO_RWPROTECT
+ioctl whose
+.I uffdio_rwprotect.mode
+has the
+.B UFFDIO_RWPROTECT_MODE_RWP
+flag cleared.
+This restores the original VMA permissions on the affected pages
+and wakes any blocked threads
+(unless
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+is also set).
+.P
+If
+.B UFFD_FEATURE_RWP_ASYNC
+was negotiated alongside
+.BR UFFD_FEATURE_RWP ,
+the kernel resolves access faults in place
+without delivering a notification:
+page permissions are restored automatically
+and the faulting thread continues.
+Callers can later reconstruct which pages were touched
+by inspecting the
+.B PAGE_IS_ACCESSED
+bit returned by the
+.B PAGEMAP_SCAN
+ioctl described in
+.BR ioctl_userfaultfd (2)
+and
+.IR Documentation/admin\-guide/mm/pagemap.rst
+in the Linux kernel source.
+.P
+The async mode can be toggled at runtime using the
+.B UFFDIO_SET_MODE
+ioctl,
+which lets a single userfaultfd switch between async detection
+and synchronous eviction without re-registering the range.
+.\"
 .SS Reading from the userfaultfd structure
 Each
 .BR read (2)
@@ -531,13 +682,17 @@ .SS Reading from the userfaultfd structure
 .B UFFD_PAGEFAULT_FLAG_MINOR
 If this flag is set, then the fault was a minor fault.
 .TP
+.BR UFFD_PAGEFAULT_FLAG_RWP " (since Linux 7.2)"
+If this flag is set, then the fault was a read-write-protect fault.
+.TP
 .B UFFD_PAGEFAULT_FLAG_WRITE
 If this flag is set, then the fault was a write fault.
 .P
-If neither
-.B UFFD_PAGEFAULT_FLAG_WP
-nor
-.B UFFD_PAGEFAULT_FLAG_MINOR
+If none of
+.BR UFFD_PAGEFAULT_FLAG_WP ,
+.BR UFFD_PAGEFAULT_FLAG_MINOR ,
+or
+.B UFFD_PAGEFAULT_FLAG_RWP
 are set, then the fault was a missing fault.
 .RE
 .TP
@@ -640,6 +795,17 @@ .SH HISTORY
 .P
 Support for hugetlbfs and shared memory areas and
 non-page-fault events was added in Linux 4.11
+.P
+Read-write-protect mode
+.RB ( UFFDIO_REGISTER_MODE_RWP ,
+.BR UFFD_FEATURE_RWP ,
+.BR UFFDIO_RWPROTECT )
+was added in Linux 7.2,
+together with
+.B UFFD_FEATURE_RWP_ASYNC
+and the
+.B UFFDIO_SET_MODE
+runtime mode toggle.
 .SH NOTES
 The userfaultfd mechanism can be used as an alternative to
 traditional user-space paging techniques based on the use of the
-- 
2.54.0


