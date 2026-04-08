Return-Path: <linux-man+bounces-5311-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kG3wOfgd1mluBAgAu9opvQ
	(envelope-from <linux-man+bounces-5311-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:20:56 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 760D83B9C8B
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:20:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 710D2302D0A2
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 09:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F071C390220;
	Wed,  8 Apr 2026 09:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUDHhmvG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B29A1385528
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 09:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639935; cv=none; b=Od/lf0CYfEKBz60ocOHkG1+7kexmHnzJ8QlTNQ140vpmRdhlUvDLe+8IdryRxKkLQiOqwd7dg6J2/rOau8n9530QmEBZNIIVce/P86JdELwXn8e5T3i8MeqnEV9cRN/E4pnTdc3zsrrnBCp1b0la3g71Hb3e9T/5Vs1SlrWioD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639935; c=relaxed/simple;
	bh=DIwdz+P41LdclakCAp8Fc0pKxIFQnq+Y2xQ8UQhihuQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a2pM9xi0SZ6itCMUFeu8sy82pHLo77qQDqQtg7na4nlTwDKtLE8yzWm5YHtX2sCf7egUv4KmwDwDZNhYcooL3YC7guEEMlfPOgy6C6fr3EBdTsPwnIZcKzMKSb4oP9D6K3ygl7EIjcFD3bcb4cFU3R4jQ05RXseh7sHvtd1VGP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUDHhmvG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC1F4C19421;
	Wed,  8 Apr 2026 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639935;
	bh=DIwdz+P41LdclakCAp8Fc0pKxIFQnq+Y2xQ8UQhihuQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sUDHhmvGgROMQgzYg9yubvxtwV+bMFVGeYF9/HsJChXclysIcmF6FU3TlBAbA+8IQ
	 ogO6G0b7m7r/7h5DfUQieFeKFceOODe47xjjfhSFqe1dvQDU+RNwnZZU12XcuNhPCj
	 ePeZZa3q8jZ2V1Kefy27PhxiONVqakUW+VPhYvHDww2wc8AOMavdtlDI/IzV578eoR
	 ulAW4jBo3Hk8SbwWdjYuAHp95ndfWu7etVpW7QNmA+K5s60YLS3U+nxWnXTTdJMvJv
	 hWR+TVtJNtjtVZ5iRHJp+2JKYcVzox54glc1xq12yJlazyM6RP6c8n/rm/kHZ/RnGZ
	 XAdzpBt7VuAIQ==
Date: Wed, 8 Apr 2026 11:18:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Guillem Jover <guillem@debian.org>, 
	linux-aio@kvack.org
Subject: [PATCH v1 6/6] man/man*/io_setup.[23]: Split io_setup(3) from
 io_setup.2
Message-ID: <c6fcae43d95ef9d96e156d295ee72a2b5563dbce.1775639353.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
References: <cover.1775639353.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1775639353.git.alx@kernel.org>
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5311-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fedorahosted.org:url,pagure.io:url,kvack.org:email]
X-Rspamd-Queue-Id: 760D83B9C8B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This simplifies the documentation of the system call.
Let the wrapper be documented as io_setup(3).

Cc: Guillem Jover <guillem@debian.org>
Cc: <linux-aio@kvack.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man2/io_setup.2 | 60 ++++++++++++---------------------------------
 man/man3/io_setup.3 | 40 ++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+), 44 deletions(-)
 create mode 100644 man/man3/io_setup.3

diff --git a/man/man2/io_setup.2 b/man/man2/io_setup.2
index 398101fb..f58cb45b 100644
--- a/man/man2/io_setup.2
+++ b/man/man2/io_setup.2
@@ -9,10 +9,6 @@ .SH NAME
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
-.P
-Alternatively, Asynchronous I/O library
-.RI ( libaio ,\~ \-laio );
-see VERSIONS.
 .SH SYNOPSIS
 .nf
 .B #include <linux/aio_abi.h>
@@ -21,19 +17,13 @@ .SH SYNOPSIS
 .P
 .BI "long\~syscall(SYS_io_setup, unsigned int " n ", aio_context_t *" ctx_idp );
 .fi
-.P
-.IR Note :
-There is no glibc wrapper for this system call;
-see VERSIONS.
 .SH DESCRIPTION
 .IR Note :
-this page describes the raw Linux system call interface.
-The wrapper function provided by
-.I libaio
-uses a different type for the
-.I ctx_idp
-argument.
-See VERSIONS.
+you probably want to use the
+.BR io_setup (3)
+wrapper function provided by
+.IR libaio ;
+see VERSIONS.
 .P
 The
 .BR io_setup ()
@@ -53,7 +43,11 @@ .SH RETURN VALUE
 On success,
 .BR io_setup ()
 returns 0.
-For the failure return, see VERSIONS.
+On error,
+\-1 is returned,
+and
+.I errno
+is set to indicate the error.
 .SH ERRORS
 .TP
 .B EAGAIN
@@ -87,35 +81,12 @@ .SH ERRORS
 .BR io_setup ()
 is not implemented on this architecture.
 .SH VERSIONS
-glibc does not provide a wrapper for this system call.
-You could invoke it using
-.BR syscall (2).
-But instead, you probably want to use the
-.BR io_setup ()
-wrapper function provided by
-.\" http://git.fedorahosted.org/git/?p=libaio.git
-.IR libaio .
-.P
-Note that the
+.UR https://pagure.io/libaio
 .I libaio
-wrapper function uses a different type
-.RI ( "io_context_t\ *" )
-.\" But glibc is confused, since <libaio.h> uses 'io_context_t' to declare
-.\" the system call.
-for the
-.I ctx_idp
-argument.
-Note also that the
-.I libaio
-wrapper does not follow the usual C library conventions for indicating errors:
-on error it returns a negated error number
-(the negative of one of the values listed in ERRORS).
-If the system call is invoked via
-.BR syscall (2),
-then the return value follows the usual conventions for
-indicating an error: \-1, with
-.I errno
-set to a (positive) value that indicates the error.
+.UE
+provides a wrapper function with the same name,
+but different prototype and return value.
+You probably want to use that wrapper.
 .SH STANDARDS
 Linux.
 .SH HISTORY
@@ -125,6 +96,7 @@ .SH SEE ALSO
 .BR io_destroy (2),
 .BR io_getevents (2),
 .BR io_submit (2),
+.BR io_setup (3),
 .BR aio (7)
 .\" .SH AUTHOR
 .\" Kent Yoder.
diff --git a/man/man3/io_setup.3 b/man/man3/io_setup.3
new file mode 100644
index 00000000..28b59550
--- /dev/null
+++ b/man/man3/io_setup.3
@@ -0,0 +1,40 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: GPL-2.0-or-later
+.\"
+.TH io_setup 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+io_setup \- create an asynchronous I/O context
+.SH LIBRARY
+Asynchronous I/O library
+.RI ( libaio ,\~ \-laio )
+.SH SYNOPSIS
+.nf
+.B #include <libaio.h>
+.P
+.BI "long\~io_setup(unsigned int " n ", io_context_t *" ctx_idp );
+.fi
+.SH DESCRIPTION
+.BR io_setup ()
+creates an asynchronous I/O context suitable for concurrently processing
+.I n
+operations.
+.SH RETURN VALUE
+On success,
+.BR io_setup ()
+returns 0.
+On error,
+a negative error code is returned to indicate the error.
+.SH ERRORS
+See
+.BR io_setup (2).
+.SH STANDARDS
+libaio.
+.SH HISTORY
+libaio.
+.SH SEE ALSO
+.BR io (3),
+.BR io_setup (2),
+.BR aio (7)
+.\" .SH AUTHOR
+.\" Kent Yoder.
-- 
2.53.0


