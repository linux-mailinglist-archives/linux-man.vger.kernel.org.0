Return-Path: <linux-man+bounces-5602-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Ls8bEIikFWqJXAcAu9opvQ
	(envelope-from <linux-man+bounces-5602-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:47:52 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 939C85D6D12
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 15:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DC503035E65
	for <lists+linux-man@lfdr.de>; Tue, 26 May 2026 13:42:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F3F3ACA5D;
	Tue, 26 May 2026 13:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="VMqmjAY/";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="W69Qr6Ko"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-c5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785403B6BE8
	for <linux-man@vger.kernel.org>; Tue, 26 May 2026 13:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779802931; cv=none; b=hfqWFBwvH6pjQXaJEtJ43nUG+Q6/KoYxvl/21eT7Ta5npQaAHhXiAUlcW2A6E/SzHO1nBbNSyKqynaOkLRU6jo24SPpTfwHCMbRR2r75KPn+kI/Ihdws8TX6xXxGCdhhC8pn398PwI5GIoEjM4k8seaML7rmHDnQIUuQ/YDEv0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779802931; c=relaxed/simple;
	bh=N99ZmQXLttl/01bGc06+oVM6s/HLV/V8Vu07iEIX37Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JDgH+EMpxvFm6EPhLSCxKv01/PEr5GjLU3v+zbP6ggzfc3nkKYczPaIpt7vFhaNLFJpoTid4RwYhNN6CXQCTopceUgWAfJHQhx16S7qOlQF3pSzqpeY9PN5BM5XiniqaYcGv3NqYtx44xBcqfG7BrHnXIcsUiZ4EhYvG6UOCdyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=VMqmjAY/; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=W69Qr6Ko; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 677FD7A019A;
	Tue, 26 May 2026 09:42:09 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Tue, 26 May 2026 09:42:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779802929; x=
	1779889329; bh=73N6vexTHGilGLYWVcdfvVVX3SK7Uz3VpE0ARvS/d2U=; b=V
	MqmjAY/ms0J8FObkTcmawJpgURVTkufqZx0rw2sOeLtiJcqTnzvRCFz5Jem5ZvHG
	llux0JT6bGMFlkBxOpueuXra4DlQcGIIOcDBnXmhNROt4UNrgjC64W4X2xULwTvg
	4IEhKP381lbg8uPiUx7PUG4Xpltd4nUDCwgRhi1pPWNx2m86gbWkaF/CGYrxxqPC
	Vo6ZEsjwEM/IR6wJmpzSaYo9kZQBDQTK1ZAE6f9fTy7x6B7MIxIIpRIYFfrv7rCH
	Lr9PJMXG5tL1vzRDCJNR0FqeYeCiY8Spn0UUC6T7cZSSDytxv1BR8MpwSUV6O9uJ
	KjSFVolfkn91F7lGwP7Gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779802929; x=1779889329; bh=7
	3N6vexTHGilGLYWVcdfvVVX3SK7Uz3VpE0ARvS/d2U=; b=W69Qr6Ko3fWwhmlwD
	da0wfLlk7SZd+dNFMRp/atBWpXdQbgCFd+A1Qb8uSq7l/gqKPxIE82GnrJ7dw3bu
	zCikejrstHHyOd/0nvpzVUez59a/3SVY/5Z+yBLfd5BrtaY3dsMapoIp82SiEyuA
	Wyi0tgH/QgL818uy9QTsHWE2u2/AjPDXwN5AIlvY5bjue8vzSgY2sj6Z2G0UYBVq
	8bTvbb9VxKyBFYQx+vlueWyyOfF3O1E3l8n9rpjU1aWECHADBDicjEkJdODX8r8T
	JlSCPoX+f7TSff/rArF9zYX0V2bj3ZPMLTWLODzfYucPYShVjfrRcVxbocRU7nR5
	7MejA==
X-ME-Sender: <xms:MaMVaj85hkflsAlHWlKnT-zeRZBEDIJq-FrMfBxPrijbPdqIMSIXAA>
    <xme:MaMVasTgdOsoS9516xpPyu8sfNhFM8UjyTqqKR9Vxk_r8nEZAwG3FwUWjWIrHHvwi
    00ubiKnhlBHU49WJBa3-nn_PV1j-fsbZKty2lYzcpPVwM0K_20RBrX_>
X-ME-Received: <xmr:MaMValcECuPcDfkcGVGox_uNbdp8CbjwILz5t7XYA0sx_Jgw4YB9X6Qr_VxiLg>
X-ME-Proxy-Cause: dmFkZTFxd05FKSwjYK98sxjZfnEaguNgmbkO96E9/sUnrZGjGgye4wZmt/Ic6rtJdcHZIW
    3//FyXDnAPZWcDl/2m+5C5IsDZPk+GLuu2B8rI+uRVdcLjBSQaOOZLOa+wj1oQtkVV8Bhp
    WtmpanqdGSitjyrzT2b6Pkutw5p5iBbq4Ria8BSGQgx/cneWSFK1H5BjkBZc7xkAcAMQ+/
    Rv2g5eDEYnTPqdUCqfDdBxWdlbC/8jofdT6MpQF8/jX84rElnpbBbagNC4dRH4Bg8YdXPs
    U1r7XWojbr+m14NCpvSu3BQS5JVzG4ZMz6Z/lJcP/h1EeFr3j6rrld2ilI9JN6jONfrTWY
    h5jgG57OvSsTJP98VgzxiR6A/Ti6GNrLzj3ZUiU3HTYoghpckaYhxGKTCprImHkPTF6h7w
    mZ+RcKw3+777zIaE/hgVebM3qgSGtBWeRmcm+/tZw/uiBsxf+xV30hJmxjO4c4wPzSuzdD
    U8SXX783FMUHBtd/ksznxlW7k7q2gqr05CUQdImoXZBHLqbihchej5uRre05nxGUL8yn+0
    hNi6/n5/bXR+WLo0kLvZEgmud19TVV37WiiMv8AcmsgterlaIuPEe3RYqaf7YXXNtUUErh
    pfi2FUkxnR0ko+LN3hH1JDOCM/SV0hHfQ0ZqGdJs82nb8NsSqpbh1MQ2q+dg
X-ME-Proxy: <xmx:MaMVamQE003TMNpPFEsDze83sY5ZOeZiH4wapTgTznoXsVvuHrpDaw>
    <xmx:MaMVapKOGNkF1uXDZCpM8oosYOrjRppeRySf1K4lT1DrnEC5wxWZeQ>
    <xmx:MaMVarJXJmPbUnqvgdQYKT3p72Yitci8A20Fg-GM0uwzTzil3O_2tQ>
    <xmx:MaMVasir9XE9CkPCXtTk_mIZigqjFNR988Y5aeFb3zhgGVAJhsnPLA>
    <xmx:MaMVanLODgeGqZB2ZFPbxcolUGakPF7vJEWRbQudPttrFGBWfqpqLuYq>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 26 May 2026 09:42:08 -0400 (EDT)
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
Subject: [PATCH v2 2/6] UFFDIO_RWPROTECT.2const: New page
Date: Tue, 26 May 2026 14:41:45 +0100
Message-ID: <20260526134149.2831720-3-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5602-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[shutemov.name:mid,shutemov.name:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,messagingengine.com:dkim]
X-Rspamd-Queue-Id: 939C85D6D12
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
Acked-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
---
 man/man2const/UFFDIO_RWPROTECT.2const | 122 ++++++++++++++++++++++++++
 1 file changed, 122 insertions(+)
 create mode 100644 man/man2const/UFFDIO_RWPROTECT.2const

diff --git a/man/man2const/UFFDIO_RWPROTECT.2const b/man/man2const/UFFDIO_RWPROTECT.2const
new file mode 100644
index 000000000000..42654a834cd5
--- /dev/null
+++ b/man/man2const/UFFDIO_RWPROTECT.2const
@@ -0,0 +1,122 @@
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
+the ioctl installs read-write protection
+on every page present in the range specified by
+.IR range .
+Otherwise the ioctl removes read-write protection from the range,
+which is also how a fault handler resolves an
+.B UFFD_PAGEFAULT_FLAG_RWP
+notification.
+.TP
+.B UFFDIO_RWPROTECT_MODE_DONTWAKE
+When this mode bit is set,
+do not wake up any thread
+that waits for page-fault resolution after the operation.
+This can be specified only if
+.B UFFDIO_RWPROTECT_MODE_RWP
+is not specified.
+.P
+Read-write protection only affects pages
+that are currently populated in the range;
+unmapped addresses are left untouched.
+For anonymous mappings,
+protection is preserved across page reclaim
+(the marker rides on the swap entry)
+and migration.
+For shmem and file-backed mappings,
+protection is dropped when the backing page is reclaimed.
+Callers must also re-arm a range with
+.B UFFDIO_RWPROTECT
+after any operation that explicitly drops the underlying page:
+.B MADV_DONTNEED
+on anonymous memory,
+hole-punch on shmem,
+truncation of a file mapping.
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


