Return-Path: <linux-man+bounces-5589-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMQIJ8RAFGo3LQcAu9opvQ
	(envelope-from <linux-man+bounces-5589-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEB25CA812
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FD30301C89B
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 12:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1E837F758;
	Mon, 25 May 2026 12:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="k2NKuURz";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="IzSjLCgC"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-b3-smtp.messagingengine.com (fout-b3-smtp.messagingengine.com [202.12.124.146])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C776381AFE
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 12:28:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712112; cv=none; b=jhdk1/RKSGqQDCOEXvtY7OmwjZdZWJCIhBdyLIbiNIFA2beINRBchJxv0W+ZvJ1uKYNBHX80DpDXRznfjmkkF4f95Q9lXYlKfRYBtomUGTM5ygRa4NWGQoKexlDzmRdaWILRWgZy/yaUxfuPimWBj14xwAHF+EyjxNcYZPYkric=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712112; c=relaxed/simple;
	bh=MRcZWHV5QoWQNGmsbJJbxNESAEgpIyxcCffJYGogkLY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mV829GBLwPksg3WSttshdOlSWV/NOR9vBqSNkSs6CbldZfgQjO4ckIX1iHTIu/ifjdtucoM9fu7KpgjGwZMu20ZJFAeXFl3M9/vQ8PYuXiEvyMr/nw1gWisYzRlF1wmxePpUECpAlORbn3nMBAQ7XPQs6VgEqJ7Nq2AGf7ahJ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=k2NKuURz; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=IzSjLCgC; arc=none smtp.client-ip=202.12.124.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id AFD271D000FB;
	Mon, 25 May 2026 08:28:29 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Mon, 25 May 2026 08:28:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779712109; x=
	1779798509; bh=bZ42hooG9YxjgaN4BxNNdCHXBV/6AiQqjefEQ2hTKfI=; b=k
	2NKuURzASvI5SUPfIgWHkwRJKr+ZP5Pl03FUueq8yPzLujDJz75cxI3URuOlnHrf
	OPy1yRqSQzkpoq2NS7zYZYNzoeERlX7/Jro/Nd1Ojj6qAixXb7T2bkEycuIMTIu0
	6IYxbkRhlrNGinXhj0nVBBXsB1YlL2h54t+pWECdrXL7CrCrphenWor3tnbx7JSE
	OeRtGmsT9t9ES6yNU9Io+IE7Y3/Nf1Wg3k+0T2PgZkdfBkE8m/d24e/jaKtLhhJH
	L7IXeddjYy0dt9o0DqVoKG5LSBG6TklHqRkrohyBo5EELr1GezyMXO4sDAv7DdJQ
	iXlgnAAuc6Kg5S5yOZDFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779712109; x=1779798509; bh=b
	Z42hooG9YxjgaN4BxNNdCHXBV/6AiQqjefEQ2hTKfI=; b=IzSjLCgCoKDKeIFSZ
	8054G3VExM/972NoW1P7tsiPA4eez24luxCj5qUi2wx2tXBoq4hpIRL6isv/hr+6
	IJgUs/kH8DMG6H/NIeZs0cKNd4HtZe+DRBfAv/7F2/yTVfqq73bEEFrExcuYIP7R
	qzUq7QlDqUTOFonI38XXPISTvVn28Cxl7ekCH1rv56P810DhetZGM18Qg+EOvnVl
	YrYSZgwti1a0cgBvZx6dvu3uzSAltnNLy5rRzXtNfkqf9B64Y1eWwOdpacuV/Qzm
	5HykfqpeJGtuW4tzJiPijkWDo2trZ3wLmiS59uPN72MG6jKZR2YvCUHbyzJOgciZ
	6ctGA==
X-ME-Sender: <xms:bUAUasGyG37UCZYGt15sEyNAdD49XfLRivXbOI9IKmCpNNnaKULOcg>
    <xme:bUAUah5pHDR5VLrR-vXElSV8iFS-S5WzVvnzYLm4IHjypfPJ-Qql80hNacNOvkwM6
    shGm-43a_xB3dyN-g0KdhJ6P0XwgsyvfecuPripZCaPA-Ki_XGnbQ>
X-ME-Received: <xmr:bUAUaqnu1xUmLg2WSGf4S3t8bgNtcTVflFUvr2Ba6IjYPkagnw309uBxYYOzww>
X-ME-Proxy-Cause: dmFkZTFmLVSfYhEWaVm8N1lz0MjOBghKLhOnNQasw0tsXAFLPpbR/4+mrCYwWk/E423Vc2
    6B1s9iPuQgs3hGAiq/KhPqohuBMRIerNkWvsfuc3WkOHbHUNY5UmaGor5ig336hIeD+vak
    qB6bs2DTG0sfepDSzSArpLeFa7+n1qOspSUGgNQVB9KbSSFSgvHhLwD2o5NL2Su7Xc1htX
    UOwFpxHBdUGOki2ZYo2cYxe64jTF4NfawVkw4Ja9Vghy7E0XBO4BxqVYRhKiY6uJ4G3d/o
    hkvinoVmY3c44Mzh6S5sf4JfJ6aY+LIcesX0uapyNnoENtY2BlNnzIGDNJPpi4n9s/a/tn
    oLpYvXmD0Kbv8qg7zxheJnwp0M9eF6AsNnmI/VWks2T8m3ySv6QZuWgJP+w0LeN8ncY2qm
    wDJMsHrts7imN6U9A0/nPLq6pTjtvEkrSDdnBSM5N5cDg3wbbBZbonG0av9a6MTWfX2IeC
    F5wD8UMc9wU7PIQZaY31eHQTIxFZE1cES63ytYLFUoK2thuBbl1xRrKzRvailQKkx/lJWr
    7fO0Vjf1cEkBfCAufTmQUnu5+4sZGfiwxHpSus6Ir5aOsbmNaCbBOmxiQSiTG31nxd7+Au
    ZY+8UQhNh8MjApqGlEoMTw46YJ/tmGmUV5t4NEuYQDL8j9bv7NR5LYl/334Q
X-ME-Proxy: <xmx:bUAUak51nQ_PpGm5QmNmLwT8fxVW80eH9O6Q-WDgRU1xiTqP5_LteA>
    <xmx:bUAUajTedEE-lKQHfnKgX01ec1nWmKIb7ff7VcaeOqOKLbryNs5kCg>
    <xmx:bUAUaqzLV6dakCygYy6QSpWGMADwZ7Hz7jH1vstxQbNjUQNcbM88QA>
    <xmx:bUAUajqprp_XlZXdtn6nBR9RnKZjelftDDVrMVx0RvU3fzsW15DMHw>
    <xmx:bUAUakQ1jjGvIt8KoHsku49t_WVZUBioPgU8tsRG6Cra6HU3renCLUrJ>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 May 2026 08:28:29 -0400 (EDT)
From: Kiryl Shutsemau <kirill@shutemov.name>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	linux-mm@kvack.org,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	peterx@redhat.com,
	david@kernel.org,
	kernel-team@meta.com,
	Kiryl Shutsemau <kirill@shutemov.name>,
	Kiryl Shutsemau <kas@kernel.org>
Subject: [PATCH man-pages v1 2/6] UFFDIO_RWPROTECT.2const: New page
Date: Mon, 25 May 2026 13:28:12 +0100
Message-ID: <20260525122816.1956804-3-kirill@shutemov.name>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260525122816.1956804-1-kirill@shutemov.name>
References: <20260525122816.1956804-1-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5589-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 3EEB25CA812
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the UFFDIO_RWPROTECT ioctl (since Linux 7.2). It installs or
removes read-write protection on a range that was registered with
UFFDIO_REGISTER_MODE_RWP, and is also how a handler resolves an
UFFD_PAGEFAULT_FLAG_RWP notification.

Cover the two mode bits (UFFDIO_RWPROTECT_MODE_RWP and
UFFDIO_RWPROTECT_MODE_DONTWAKE, mutually exclusive), the populated-
pages-only semantics, the anon vs file-backed reclaim behaviour, the
explicit-drop list (MADV_DONTNEED, hole-punch, truncation), and the
EINVAL/EAGAIN/ENOENT/EFAULT errors returned by the kernel.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
---
 man/man2const/UFFDIO_RWPROTECT.2const | 117 ++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)
 create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const

diff --git a/man/man2const/UFFDIO_RWPROTECT.2const b/man/man2const/UFFDIO_RWPROTECT.2const
new file mode 100644
index 000000000000..4ebe0a8648f3
--- /dev/null
+++ b/man/man2const/UFFDIO_RWPROTECT.2const
@@ -0,0 +1,117 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH UFFDIO_RWPROTECT 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+UFFDIO_RWPROTECT
+\-
+read-write-protect or un-protect a userfaultfd-registered memory range
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " constants */"
+.B #include <sys/ioctl.h>
+.P
+.BI "int ioctl(int " fd ", UFFDIO_RWPROTECT, struct uffdio_rwprotect *" argp );
+.P
+.B #include <linux/userfaultfd.h>
+.P
+.fi
+.EX
+.B struct uffdio_rwprotect {
+.BR "    struct uffdio_range  range;" "  /* Range to change RWP on */"
+.BR "    __u64                mode;" "   /* Mode flags */"
+.B };
+.EE
+.SH DESCRIPTION
+Read-write-protect or un-protect a userfaultfd-registered memory range
+registered with mode
+.BR UFFDIO_REGISTER_MODE_RWP .
+.P
+The following mode bits are supported:
+.TP
+.B UFFDIO_RWPROTECT_MODE_RWP
+When this mode bit is set,
+the ioctl installs read-write protection on every present page in the
+range specified by
+.IR range .
+Otherwise the ioctl removes read-write protection from the range, which
+is also how a faulted handler resolves an
+.B UFFD_PAGEFAULT_FLAG_RWP
+notification.
+.TP
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+When this mode bit is set,
+do not wake up any thread that waits for page-fault resolution after
+the operation.
+This can be specified only if
+.B UFFDIO_RWPROTECT_MODE_RWP
+is not specified.
+.P
+Read-write protection only affects pages that are currently populated
+in the range; unmapped addresses are left untouched.
+For anonymous mappings, protection is preserved across page reclaim
+(the marker rides on the swap entry) and migration.
+For shmem and file-backed mappings, protection is dropped when the
+backing page is reclaimed.
+Callers must also re-arm a range with
+.B UFFDIO_RWPROTECT
+after any operation that explicitly drops the underlying page
+.RB ( "MADV_DONTNEED " "on anonymous memory, hole-punch on shmem,"
+truncation of a file mapping).
+.SH RETURN VALUE
+On success,
+0 is returned.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+The
+.I start
+or the
+.I len
+field of the
+.I uffdio_range
+structure was not a multiple of the system page size;
+or
+.I len
+was zero;
+or the specified range was otherwise invalid;
+or an invalid mode bit was specified;
+or
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+was specified together with
+.BR UFFDIO_RWPROTECT_MODE_RWP .
+.TP
+.B EAGAIN
+The process was interrupted;
+retry this call.
+.TP
+.B ENOENT
+The range specified in
+.I range
+is not valid.
+For example, the virtual address does not exist,
+or part of the range is not registered with
+.BR UFFDIO_REGISTER_MODE_RWP .
+.TP
+.B EFAULT
+Encountered a generic fault during processing.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 7.2.
+.SH EXAMPLES
+See
+.BR userfaultfd (2).
+.SH SEE ALSO
+.BR ioctl (2),
+.BR ioctl_userfaultfd (2),
+.BR userfaultfd (2)
+.P
+.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
-- 
2.54.0


