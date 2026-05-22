Return-Path: <linux-man+bounces-5579-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAgTFqFgEGpAWwYAu9opvQ
	(envelope-from <linux-man+bounces-5579-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 15:56:49 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7325B5A63
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 15:56:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCAED307A8CF
	for <lists+linux-man@lfdr.de>; Fri, 22 May 2026 13:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB34642848B;
	Fri, 22 May 2026 13:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="YKVD0Pkm";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="G3hnXIQo"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b2-smtp.messagingengine.com (fout-b2-smtp.messagingengine.com [202.12.124.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269DD426698;
	Fri, 22 May 2026 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.145
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457198; cv=none; b=LF3rZpBF9+gOou3fAZEab0DHcGnWSh+/M8O58exDJ6SjkCZSWnPlUS3GkGhERtYa6ioDYklm1OWt5V0ySkCO8RLmLYebbYtV6DnB6Zzce1oTsixPVl1NcM3MkfWp/z7RIiJ+hrSUIZAYnWGfNTsOWIUgyXPgMWnkE9xCC1WqL/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457198; c=relaxed/simple;
	bh=TEqPgLUiRZaE7mXk2aN0BftwZLiu9WMEYyGFFeFTaeU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Gido8Jgqm61It5YXjnqC6WeXM9Tl+Aj66hQdsGnL3d195FAod/ucKsvfcTg0PVzUGtWwm+O8EsIDDbYmZTeCPDlNhWzLpaV82w6spOHrVotSmau/dqnPiHlKN4ouhAHgvdpRgIf13qtuWZm0B5mfd0UjVA9V3EpDGT2g/91dMJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=YKVD0Pkm; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=G3hnXIQo; arc=none smtp.client-ip=202.12.124.145
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id EDD3B1D0007E;
	Fri, 22 May 2026 09:39:51 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Fri, 22 May 2026 09:39:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779457191; x=
	1779543591; bh=6f33nVxWenecAKHuGCYX/tM08lTeil0fVmlJgDKyP14=; b=Y
	KVD0PkmfqRxwatoU5rNl5Xma/HNhtXw0Yz6QlpRXqghQWK628IuyESKrrmaOENjy
	uWj3fRGWoiJ80fyqJDwf6r6v8b4j85bGpCFXnGattnMvepge0SokqWXOlSxFOM6y
	4/QwA0gl9uSFxbeUVLWCNUM4uJJyje/GRgHLrvC7W5XHqSOKGxWKAUvqRHSfCvvE
	sK4M83K/g6Xlw5rkGYhARHTux8gqMy+W93akKoa9izpyyGJWQVe7w+4IckI5DRmO
	uKhS8aJhz9wMQayAyFF04Ux79U5Fc31jArFTt/NgzWk72aTc1mfAcK2OJfxTM1pO
	9xnzaaQyGp7BFOHQpYRnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779457191; x=1779543591; bh=6
	f33nVxWenecAKHuGCYX/tM08lTeil0fVmlJgDKyP14=; b=G3hnXIQomGxQpiG2/
	YFEaBDm0T1LQG3WbeVDK+p3At83gdAXPZS8lWj7HvQGzE5mgtGCVRYSvhzza8+Y9
	FnnhSat3HWQNRaSQqvQrjmv52EYLCBf6Lzo4/myWV2DdkuvOnoAGcepaKrCA3Wtq
	NL7nZ3QkrHXG0OWiEDHoBLsRd97fQ65Je+uQDCBMM7B08mshxNw5p3apxOVyA4qU
	KSvjfDDEK1Lp8DjxZiqe5bmSUJ1ZB9kJj7Rl9l1k2FKpoafCBQdq113JbfFaLzPe
	LZCnw3GGpp7MYy4Zg7G33yw7Uv2Cs+DyiAYmQRg/0v5JVccgsahfgMXfuo6VGJF+
	dG4LQ==
X-ME-Sender: <xms:p1wQar8vkn5I6zyKzsCWsJYnMvWBTRN_m1slQ6_xzhyfNypVlUBTPg>
    <xme:p1wQaoyl6MjJs8FnbsRpy4iLeohzTMEIOhjT73VpWvyMTAF3Kn_yWdebBd-0J5ZXV
    1XWqL54wxEPYRz6MnuxzkyDAM9DHeqxJDvLQnbHJhRnOCvUuum6qLA>
X-ME-Received: <xmr:p1wQar8ZYssG4l_EauFiCSgCljjSMsHt--Hlh8Ws0btnqrx9n1KziiIaDP0Lwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgdduhedtfedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
    ertddtnecuhfhrohhmpefmihhrhihlucfuhhhuthhsvghmrghuuceokhhirhhilhhlsehs
    hhhuthgvmhhovhdrnhgrmhgvqeenucggtffrrghtthgvrhhnpedtteefjeetgfdvkedtfe
    eftedthfehvedukeehudeikeeutdfgiefhvdelkeeufeenucffohhmrghinhepfhgvrght
    rdhpihgunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epkhhirhhilhhlsehshhhuthgvmhhovhdrnhgrmhgvpdhnsggprhgtphhtthhopedviedp
    mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprghkphhmsehlihhnuhigqdhfohhunh
    gurghtihhonhdrohhrghdprhgtphhtthhopehrphhptheskhgvrhhnvghlrdhorhhgpdhr
    tghpthhtohepphgvthgvrhigsehrvgguhhgrthdrtghomhdprhgtphhtthhopegurghvih
    gusehkvghrnhgvlhdrohhrghdprhgtphhtthhopehljhhssehkvghrnhgvlhdrohhrghdp
    rhgtphhtthhopehsuhhrvghnsgesghhoohhglhgvrdgtohhmpdhrtghpthhtohepvhgsrg
    gskhgrsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihgrmhdrhhhofihlvghtthes
    ohhrrggtlhgvrdgtohhmpdhrtghpthhtohepiihihiesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:p1wQalLW1GwubAkuhLOl5FQz8hwZEds5kwRutzURfsDsbtWk0FQ_kQ>
    <xmx:p1wQao-oFV0yWBSyEBn_zpKImyJLAOC4Yu3lO6eH-7tOVIGvmT6hzA>
    <xmx:p1wQapHXwecV9q0ZKuMnJtc8AJb9MpbJRW460lA6al8WgUjdbBZE9g>
    <xmx:p1wQagNnpXd_fnYP75NrIT19vRdX44DAHi1ZSf2qbGQXIcFhw2OFAw>
    <xmx:p1wQavyXHZDz4xtHM6xuedLXBTMHcXT2h1y_zwWiqQFrpmDuAmMZhZK3>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 May 2026 09:39:50 -0400 (EDT)
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
Subject: [PATCH v3 15/16] userfaultfd.2: Add read-write protect mode
Date: Fri, 22 May 2026 14:38:56 +0100
Message-ID: <20260522133857.552279-16-kirill@shutemov.name>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260522133857.552279-1-kirill@shutemov.name>
References: <20260522133857.552279-1-kirill@shutemov.name>
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
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5579-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[linux-man];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 0F7325B5A63
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
---
 man2/userfaultfd.2 | 147 ++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 146 insertions(+), 1 deletion(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index cee7c01d2512..0e702f2f4969 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -24,7 +24,7 @@
 .\" the source, must acknowledge the copyright and authors of this work.
 .\" %%%LICENSE_END
 .\"
-.TH USERFAULTFD 2 2021-03-22 "Linux" "Linux Programmer's Manual"
+.TH USERFAULTFD 2 2026-05-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 userfaultfd \- create a file descriptor for handling page faults in user space
 .SH SYNOPSIS
@@ -105,6 +105,28 @@ The faulted thread will be stopped from execution
 until user-space write-unprotects the page using an
 .B UFFDIO_WRITEPROTECT
 ioctl.
+.TP
+.BR UFFDIO_REGISTER_MODE_RWP " (since Linux 7.2)"
+When registered with
+.B UFFDIO_REGISTER_MODE_RWP
+mode, user-space will receive a page-fault notification
+on any access \(em read or write \(em to a present page within the range.
+By default the faulted thread will be stopped from execution until
+user-space removes the protection using a
+.B UFFDIO_RWPROTECT
+ioctl;
+if
+.B UFFD_FEATURE_RWP_ASYNC
+was negotiated, the kernel restores access in place and the faulted
+thread continues without blocking.
+.IP
+.B UFFDIO_REGISTER_MODE_RWP
+and
+.B UFFDIO_REGISTER_MODE_WP
+cannot be combined on the same range; attempting to register with both
+bits set returns
+.BR EINVAL .
+See the "Userfaultfd read-write protect mode" section below.
 .PP
 Multiple modes can be enabled at the same time for the same memory range.
 .PP
@@ -186,6 +208,21 @@ The user needs to resolve the page fault by unprotecting the faulted page and
 kicking the faulted thread to continue.
 For more information,
 please refer to the "Userfaultfd write-protect mode" section.
+.PP
+Since Linux 7.2, userfaultfd can do read-write protection tracking, which
+traps every access (read or write) to a present page within a registered
+range.
+One should check against the feature bit
+.B UFFD_FEATURE_RWP
+before using this feature, and optionally negotiate
+.B UFFD_FEATURE_RWP_ASYNC
+to have the kernel auto-restore page permissions on fault without
+delivering a notification.
+This mode is intended for working-set tracking by VM memory managers and
+similar callers; cold pages can then be evicted using independent kernel
+interfaces.
+For more information,
+please refer to the "Userfaultfd read-write protect mode" section.
 .\"
 .SS Userfaultfd operation
 After the userfaultfd object is created with
@@ -322,6 +359,98 @@ should have the flag
 cleared upon the faulted page or range.
 .PP
 Write-protect mode supports only private anonymous memory.
+.SS Userfaultfd read-write protect mode (since Linux 7.2)
+Since Linux 7.2, userfaultfd supports read-write protect mode.
+Unlike write-protect mode, every access \(em read or write \(em to a
+protected present page generates a userfaultfd notification.
+It works on anonymous, shmem, and hugetlbfs mappings.
+.PP
+The user needs to first check availability of this feature using the
+.B UFFDIO_API
+ioctl against the feature bit
+.B UFFD_FEATURE_RWP
+before using this mode.
+On kernels or architectures that cannot support read-write protection,
+the bit is masked out from
+.I uffdio_api.features
+on return from
+.BR UFFDIO_API ;
+callers should inspect the returned features and fall back to another
+tracking mechanism when the bit is absent.
+.PP
+To register with userfaultfd read-write protect mode, the user needs to
+initiate the
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
+.PP
+After registration, the user can read-write-protect any existing memory
+within the range using the
+.B UFFDIO_RWPROTECT
+ioctl where
+.I uffdio_rwprotect.mode
+is set to
+.BR UFFDIO_RWPROTECT_MODE_RWP .
+Read-write protection only affects pages that are currently populated
+in the range; unpopulated addresses remain unpopulated and fall through
+to the normal missing-page path on first access.
+.PP
+Protection is preserved across page reclaim and migration; it is
+.I not
+preserved across operations that drop the underlying page
+.RB ( "MADV_DONTNEED " "on anonymous memory, hole-punch on shmem,"
+truncation of a file mapping).
+Callers must re-arm the range with
+.B UFFDIO_RWPROTECT
+after any such operation.
+.PP
+When an access fault happens against a protected page, user-space will
+receive a page-fault notification whose
+.I uffd_msg.pagefault.flags
+field has the
+.B UFFD_PAGEFAULT_FLAG_RWP
+bit set.
+.PP
+To resolve a read-write-protect page fault, the user initiates another
+.B UFFDIO_RWPROTECT
+ioctl whose
+.I uffdio_rwprotect.mode
+has the
+.B UFFDIO_RWPROTECT_MODE_RWP
+flag cleared.
+This restores the original VMA permissions on the affected pages and
+wakes any blocked threads (unless
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+is also set).
+.PP
+If
+.B UFFD_FEATURE_RWP_ASYNC
+was negotiated alongside
+.BR UFFD_FEATURE_RWP ,
+the kernel resolves access faults in place without delivering a
+notification: page permissions are restored automatically and the
+faulting thread continues.
+Callers can later reconstruct which pages were touched by inspecting the
+.B PAGE_IS_ACCESSED
+bit returned by the
+.B PAGEMAP_SCAN
+ioctl described in
+.BR ioctl_userfaultfd (2)
+and
+.IR Documentation/admin\-guide/mm/pagemap.rst
+in the Linux kernel source.
+.PP
+The async mode can be toggled at runtime using the
+.B UFFDIO_SET_MODE
+ioctl, which lets a single userfaultfd switch between async detection
+and synchronous eviction without re-registering the range.
 .SS Reading from the userfaultfd structure
 Each
 .BR read (2)
@@ -473,6 +602,12 @@ If the address is in a range that was registered with the
 .B UFFDIO_REGISTER_MODE_WP
 flag, when this bit is set, it means it is a write-protect fault.
 Otherwise it is a page-missing fault.
+.TP
+.BR UFFD_PAGEFAULT_FLAG_RWP " (since Linux 7.2)"
+If the address is in a range that was registered with the
+.B UFFDIO_REGISTER_MODE_RWP
+flag, this bit indicates that the fault was triggered by an access to a
+read-write-protected page (either a read or a write).
 .RE
 .TP
 .I pagefault.feat.pid
@@ -574,6 +709,16 @@ system call first appeared in Linux 4.3.
 .PP
 The support for hugetlbfs and shared memory areas and
 non-page-fault events was added in Linux 4.11
+.PP
+Read-write protect mode
+.RB ( UFFDIO_REGISTER_MODE_RWP ", " UFFD_FEATURE_RWP ", "
+.BR UFFDIO_RWPROTECT )
+was added in Linux 7.2,
+together with
+.B UFFD_FEATURE_RWP_ASYNC
+and the
+.B UFFDIO_SET_MODE
+runtime mode toggle.
 .SH CONFORMING TO
 .BR userfaultfd ()
 is Linux-specific and should not be used in programs intended to be
-- 
2.51.2


