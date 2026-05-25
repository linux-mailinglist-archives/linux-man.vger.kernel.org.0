Return-Path: <linux-man+bounces-5590-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MXvD8VAFGo3LQcAu9opvQ
	(envelope-from <linux-man+bounces-5590-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:57 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DCED85CA819
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 14:29:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71CCE301CA65
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2026 12:28:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60E6237D134;
	Mon, 25 May 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b="j/8/1yYN";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="k8W8e66r"
X-Original-To: linux-man@vger.kernel.org
Received: from fhigh-b5-smtp.messagingengine.com (fhigh-b5-smtp.messagingengine.com [202.12.124.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23D3381AE0
	for <linux-man@vger.kernel.org>; Mon, 25 May 2026 12:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.12.124.156
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712114; cv=none; b=N3LeDh8A0oUkekVxk/2HZPrDI/5Thu082z2oH9UrNWtDWZoa+iR2UazpclN5bPY1ls7qkjCZ++ex9HKh9Eyj+oSPEps0xdL+WdO9thdb9mJJG78qiqRmomQQRdq9sNw7GcqgdEN+9o/1DZxMgc2zMWC16JBnwXPfhIFN78XpsVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712114; c=relaxed/simple;
	bh=eoHWZttMlQS/CASB/gdIcaps3i/LZI9IHs6PNizQR4I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nQxouyGejIc/keyqJ5C250HhoGxPIDBQByZP8g+o2cuyTsU/RA5276GdsUstb1mAXjrZ4h+q5O0vgpMK33s4Jp0tXiPaOcYmZpB2fMQ/mWDWs9/dCVzMm+bXFiO17Fe0x3ldwrOCO2A0JQJoyhnBqi1yZr3tQz8GYbezdrvWqu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name; spf=pass smtp.mailfrom=shutemov.name; dkim=pass (2048-bit key) header.d=shutemov.name header.i=@shutemov.name header.b=j/8/1yYN; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=k8W8e66r; arc=none smtp.client-ip=202.12.124.156
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shutemov.name
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=shutemov.name
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.stl.internal (Postfix) with ESMTP id E82E97A00CF;
	Mon, 25 May 2026 08:28:31 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 25 May 2026 08:28:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=shutemov.name;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1779712111; x=
	1779798511; bh=oWAtVzL13T+cD671ds/HWNR7tnLl0jiU3ofJvVua5e4=; b=j
	/8/1yYNg/Fh1rNb3qT3qSnfhFjiB6ZU3jvkDxbhJW4fz02RbwiADXmVAxEuo3NOa
	gtCSaycKTOuw3M/t8bSUs/Kx2h0/ZehnSYlYO3/zNKMKY+2U3BbCLEkPehAKj1jL
	OOX4Sbz70ZZlfTXp6uV+ueUk0579ax1bidw8uAm3P4jT8vVChhDqTmEBKq2JIF3g
	lE+oSnbeliy9E2jvvDXGV0XIBgirtu5xq/FbLysmj9RrqTg+YX02p7kX1QqSCTyY
	0P8fq//9u3WD/QC5npIev01+4PMIeUk4iCd0Mg+M5ZTwS2SNYMRjWR8sGbV0euai
	HqZ2uMucf4Un28IOzzVSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1779712111; x=1779798511; bh=o
	WAtVzL13T+cD671ds/HWNR7tnLl0jiU3ofJvVua5e4=; b=k8W8e66r5xQPhQctj
	/UaGYkqTjRrd7qm2moxOkdM+kxW1uvnnziwSsewFHKBNRTfcp3atzbmV0CmjyRYj
	M/C0y7r2kRoiTuqmwvvPdZOewTthrU5QpdV+ahNuYx9hMjkqyvnnL228vt7LH9SS
	fIQC9Vj87EQROahCw4Az0eWK4YzE93DA/ItLBy6XQ+c+bdqDtChVzkmKHSuslOoj
	4cwriTZ3DZbBEsovVNUAS/372Bx/DaGezYFK06aybcgDwVNQZt4ylbuChigIsWjT
	nACIZKcTSzvhKpiT27j+5ehATsGQ+f0t28PJ7mpbwChtqTVQbfQ4wAyvA2OqAhsF
	kY2/A==
X-ME-Sender: <xms:b0AUatRbdCqQZn8Tnh7qIJIq3H1mwIIJWmw8LR-ZIdDeH4CFSv2jRQ>
    <xme:b0AUajV4R5Uy6EHT5FWWWqF82yTSAmY0ULT4dEJ9ZM-8jFHK-sPRnotJtOqToGG11
    MmaNgNUPvaWT_KFzQlVMGkDr_vwHdT7oCbnV941f6NDo-phbeiyDQ>
X-ME-Received: <xmr:b0AUanQF8P-NGEXea0btlWMoHAsOcziLM5A5lxuAI3F-CQbwWSgxMSZO8VXfxg>
X-ME-Proxy-Cause: dmFkZTFmLVSfYhEWaVm8N1lz0MjOBghKLhOnNQasw0tsXAFLPpbR/4+mrCYwWk/E423Vc2
    6B1s9iPuQgs3hGAiq/KhPqohuBMRIerNkWvsfuc3WkOHbHUNY5UmaGor5ig336hIeD+vak
    qB6bs2DTG0sfepDSzSArpLeFa7+n1qOspSUGgNQVB9KbSSFSgvHhLwD2o5NL2Su7Xc1htX
    UOwFpxHBdUGOki2ZYo2cYxe64jTF4NfawVkw4Ja9Vghy7E0XBO4BxqVYRhKiY6uJ4G3d/o
    hkvinoVmY3c44Mzh6S5sf4JfJ6aY+LIcesX0uapyNnoENtY2BlNnzIGDNJPpi4n9s/a/cp
    dGIPzZRA64G4ZAIPAYLfRN6pIEXS0Yp6q9bnSVTyiM3X7+wx6l7WNFtMGwKRe9tCQ/kLqQ
    16PuD5AigcCzgUkTq5xSKcL9CbeTh5Be3as4zl8Oa2dmAVcT0Y7i3Dwgb668+yVPQhnF6Q
    RqZC8FzAykAzjD3Niqbo1pFLQEGONQ5nppa1MuTzW/2h8guwKHJH8hAC3WJmLyOH/RxCLx
    T4P5KpQsUyqkoIi5wPYmJql2fvJJjcowv7vkRVm+0qpLMcmKrtGcolVV9zpe84a0H8bcY+
    NhwGHm7YlTzeq+mW1or0u+T9O3qtlz/D0TX8HjBmGPSpCaIhh0jPnKKqzTBQ
X-ME-Proxy: <xmx:b0AUar2LfW2WekHs58x5JjcrYW3JdqqhUXtySL_gTexMVl1DBstgtQ>
    <xmx:b0AUanclWn7MKKx6wEoRKe5fEr2XTezEKcAhRBIOCaMVL5ZW8IB8pQ>
    <xmx:b0AUajNVwV4iae7VE4OrSIpipxk__D_jcVE2kt76rHZ4L01cVt0Hlw>
    <xmx:b0AUarWBoWPO-zuBv19RaQW2eFCNdO_ztzM_Ty3FuNBO_UzIeWX3SQ>
    <xmx:b0AUaiOU78QRqKhiPDcg7kIDa0LlEdPqdbKuCjYSZ9VpUM_99yWLIZez>
Feedback-ID: ie3994620:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 25 May 2026 08:28:31 -0400 (EDT)
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
Subject: [PATCH man-pages v1 3/6] UFFDIO_SET_MODE.2const: New page
Date: Mon, 25 May 2026 13:28:13 +0100
Message-ID: <20260525122816.1956804-4-kirill@shutemov.name>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[shutemov.name:s=fm2,messagingengine.com:s=fm3];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[shutemov.name:+,messagingengine.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5590-lists,linux-man=lfdr.de];
	DMARC_NA(0.00)[shutemov.name];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kirill@shutemov.name,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,shutemov.name:mid,shutemov.name:dkim,messagingengine.com:dkim]
X-Rspamd-Queue-Id: DCED85CA819
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the UFFDIO_SET_MODE ioctl (since Linux 7.2). It toggles
userfaultfd feature bits at runtime; currently only UFFD_FEATURE_RWP_ASYNC
is toggleable, and enabling it requires UFFD_FEATURE_RWP to have been
negotiated at UFFDIO_API time.

Describe the uffdio_set_mode struct (enable/disable pair, must not
overlap), the serialization against in-flight page faults that lets a
single userfaultfd switch between async detection and synchronous
eviction without re-registering its ranges, and the EINVAL/EFAULT
errors returned by the kernel.

Signed-off-by: Kiryl Shutsemau <kas@kernel.org>
---
 man/man2const/UFFDIO_SET_MODE.2const | 95 ++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 man/man2const/UFFDIO_SET_MODE.2const

diff --git a/man/man2const/UFFDIO_SET_MODE.2const b/man/man2const/UFFDIO_SET_MODE.2const
new file mode 100644
index 000000000000..f97935a176e3
--- /dev/null
+++ b/man/man2const/UFFDIO_SET_MODE.2const
@@ -0,0 +1,95 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH UFFDIO_SET_MODE 2const (date) "Linux man-pages (unreleased)"
+.SH NAME
+UFFDIO_SET_MODE
+\-
+toggle userfaultfd runtime mode bits
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " constants */"
+.B #include <sys/ioctl.h>
+.P
+.BI "int ioctl(int " fd ", UFFDIO_SET_MODE, struct uffdio_set_mode *" argp );
+.P
+.B #include <linux/userfaultfd.h>
+.P
+.fi
+.EX
+.B struct uffdio_set_mode {
+.BR "    __u64  enable;" "   /* Feature bits to set */"
+.BR "    __u64  disable;" "  /* Feature bits to clear */"
+.B };
+.EE
+.SH DESCRIPTION
+Toggle userfaultfd features that may be flipped at runtime.
+.P
+Bits set in
+.I enable
+turn the named features on; bits set in
+.I disable
+turn them off.
+The two fields must not overlap.
+Today only
+.B UFFD_FEATURE_RWP_ASYNC
+is a valid bit in either field; any other bit causes the ioctl to
+return
+.BR EINVAL .
+Enabling
+.B UFFD_FEATURE_RWP_ASYNC
+also requires
+.B UFFD_FEATURE_RWP
+to have been negotiated at
+.BR UFFDIO_API (2const)
+time.
+.P
+The operation is serialized against in-flight page faults, so the new
+mode takes effect only after every fault that started before the call
+has finished, and any fault that starts after the call observes the
+new mode.
+This allows a single userfaultfd to switch between lightweight async
+detection and synchronous eviction without re-registering its ranges.
+.SH RETURN VALUE
+On success,
+0 is returned.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+A bit other than
+.B UFFD_FEATURE_RWP_ASYNC
+was specified in
+.I enable
+or
+.IR disable ;
+the two fields overlap;
+or
+.B UFFD_FEATURE_RWP_ASYNC
+was requested without
+.B UFFD_FEATURE_RWP
+having been negotiated.
+.TP
+.B EFAULT
+.I argp
+refers to an address that is outside the calling process's
+accessible address space.
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


