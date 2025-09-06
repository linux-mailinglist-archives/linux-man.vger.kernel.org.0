Return-Path: <linux-man+bounces-3837-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5D2B474FB
	for <lists+linux-man@lfdr.de>; Sat,  6 Sep 2025 18:52:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD5AA1B24C52
	for <lists+linux-man@lfdr.de>; Sat,  6 Sep 2025 16:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A9A21ABB9;
	Sat,  6 Sep 2025 16:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b="JEo7teOx"
X-Original-To: linux-man@vger.kernel.org
Received: from sender-op-o14.zoho.eu (sender-op-o14.zoho.eu [136.143.169.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3105F1EFF96
	for <linux-man@vger.kernel.org>; Sat,  6 Sep 2025 16:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757177538; cv=pass; b=BBp6crIt0vTicFowX8z+hTO9BE8eT81EIC4Tgf6H2UP+5SKZpWz674daIfT1cJRwRvDbrAVz0BMJa8qJtra62rEjSK0dHWlVZU4jSB0RKpY+1NvHzoEv6Z5/GDIXn3qWDC3bR/BjT543IAqKL/AdnRlOqrtV8XTRPCxq73VbqsM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757177538; c=relaxed/simple;
	bh=pTWpCu6JWACV/aYnX7s1IsY7HGQ8Yu2xWglo5SULXXc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f5UOmR82ht1NrnAbeMqSRiWtpY/HM9LW/G47KSlVtvSOIFI6htfWt+OQBxVuznq7aVbxoPJ6eoTs2MLoEBSjJUfejf2dtk9Tl+AXEQJWIS8W2QRxAOL0lV5U25JQULL+6ojlhd+snryeAkhXaQUkXsTSsliP5dgnbANMDNZShwY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm; spf=pass smtp.mailfrom=r9.pm; dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b=JEo7teOx; arc=pass smtp.client-ip=136.143.169.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=r9.pm
ARC-Seal: i=1; a=rsa-sha256; t=1757177515; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=gH5mviG4hmEvKYnG9CKFxIjqUtgoubTDV5TpuVeEiuCmvvAhY3U4biCefdE73W8+mgIDgLq1ReaafCSlpOsPQ1yu/NvrpzHQShel1Nv96NxFUxRX6KT/8+qhbRH9a92usHmHArT4I8ONK9d+ASotjhccCLWIiTGA0Z3e5irxx1A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1757177515; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hbEk8/xRxZmnjz/Bmkt4/YB2xjLduil7QwE+s00LVRE=; 
	b=i8PXP5BP9wpZGUqKnF5MYby0ca3uogb9sqCPCLHhvi1ZEEzJaRWKGQoHgluIcVGG/ux4PL68jo99JcUxq8NaLF7b+yMW+b0HyMRo4WH9Lkl96nGTEILGD5dS1uMFa0CWB2dybDvCks7XvJW4x5SQrrMUU+F+kL7Tme4RfeFSlLA=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=r9.pm;
	spf=pass  smtp.mailfrom=trillian@r9.pm;
	dmarc=pass header.from=<trillian@r9.pm>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757177515;
	s=sel; d=r9.pm; i=trillian@r9.pm;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=hbEk8/xRxZmnjz/Bmkt4/YB2xjLduil7QwE+s00LVRE=;
	b=JEo7teOx97x3rtohzn7jN0kTd4BFBEZ6X1fMLKSj4nh/TMexT6MKy/3daSyLpxdY
	ZN2ogbPW/faV/sVqOCqnaLaCb+rgdGj6BVeUZJuCzsnHSSu/RSYotihlpGTabsUFX7C
	dLEwIfLGVCCJ3aCkOYAde0HV3CX21vvzPsV7RfdgY5M7URfnlhQpIMPjwucQl2tseba
	Z02WuDCFgw426dtsY7RQeMXpQSSnmM7aID7TYsXjTjlX510lxmYUe7w+t7a9rYz9fuq
	Ps6eYpQM09PR0lVGuzX3aaISE/NzumTtALgUK4kLXZLLjZiKWZdQp/uHZqYfhLI5XqY
	mibEQcNQKQ==
Received: by mx.zoho.eu with SMTPS id 1757177512474533.4569292481652;
	Sat, 6 Sep 2025 18:51:52 +0200 (CEST)
From: trillian <trillian@r9.pm>
To: Alejandro Colomar <alx@kernel.org>
Cc: trillian <trillian@r9.pm>,
	linux-man@vger.kernel.org,
	Jan Kara <jack@suse.cz>
Subject: [PATCH v2] man/man2/: Document quotactl_fd syscall
Date: Sat,  6 Sep 2025 19:01:37 +0300
Message-ID: <d89a3f923f2954d161a8d60e3002e1496d3327d5.1757174497.git.trillian@r9.pm>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
References: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

I based these changes on kernel commits [1], [2]. Man-page wording
changes inspired by [3]. Rationale for the syscall itself is from [4].

[1] linux.git 9dfa23c8de925041b7b45637a1a80a98a22f19dd
("quota: Add mountpath based quota support")
[2] linux.git 64c2c2c62f92339b176ea24403d8db16db36f9e6
("quota: Change quotactl_path() systcall to an fd-based one")
[3] <https://lore.kernel.org/all/20210304123541.30749-4-s.hauer@pengutronix.de/>
[4] <https://lwn.net/Articles/859679/>

Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: trillian <trillian@r9.pm>
---

Alejandro,

Changes from previous version:
* I tried to make the newlines a bit more semantic, as you requested.
* Also, I changed my use of the word "syscall" to "system call", as this
  seems to be the wording other manpages use. (Should this perhaps be
  added to the "preferred terms" section in man-pages(7)?)

Regarding your comment on the previous version:

> > +The
> > +.BR quotactl_fd ()
> > +variant of this syscall ignores the
> > +.IR addr
> > +and
> > +.IR id
> > +arguments, so the
> 
> Are these ignored for all operations, or only for this operation?
> I guess only for this operation, right?

Indeed they are only ignored for Q_QUOTAON. I thought it was clear
enough from the sentence being in the section about Q_QUOTAON, but if
you want, I can try to reword it to be more explicit.

Let me know if there's anything else I should change :)
~trillian

 man/man2/quotactl.2    | 78 +++++++++++++++++++++++++++++++++++++++---
 man/man2/quotactl_fd.2 |  1 +
 2 files changed, 74 insertions(+), 5 deletions(-)
 create mode 100644 man/man2/quotactl_fd.2

diff --git a/man/man2/quotactl.2 b/man/man2/quotactl.2
index 126426b8a..dcc0aeab9 100644
--- a/man/man2/quotactl.2
+++ b/man/man2/quotactl.2
@@ -4,7 +4,7 @@
 .\"
 .TH quotactl 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
-quotactl \- manipulate disk quotas
+quotactl, quotactl_fd \- manipulate disk quotas
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -17,7 +17,19 @@ Standard C library
 .P
 .BI "int quotactl(int " op ", const char *_Nullable " special ", int " id ,
 .BI "             caddr_t " addr );
+.P
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.P
+.BI "int syscall(SYS_quotactl_fd, int " fd ", int " op ", int " id \
+", caddr_t " addr );
 .fi
+.P
+.IR Note :
+glibc provides no wrapper for
+.BR quotactl_fd (),
+necessitating the use of
+.BR syscall (2).
 .SH DESCRIPTION
 The quota system can be used to set per-user, per-group, and per-project limits
 on the amount of disk space used on a filesystem.
@@ -31,7 +43,14 @@ after this, the soft limit counts as a hard limit.
 .P
 The
 .BR quotactl ()
-call manipulates disk quotas.
+and
+.BR quotactl_fd ()
+calls manipulate disk quotas.
+The difference between these functions is
+the way the filesystem being manipulated is specified,
+see description of the arguments below.
+See NOTES for why one variant might be preferred over the other.
+.P
 The
 .I op
 argument indicates an operation to be applied to the user or
@@ -56,11 +75,21 @@ The
 .I subop
 value is described below.
 .P
-The
+For
+.BR quotactl (),
+the
 .I special
 argument is a pointer to a null-terminated string containing the pathname
 of the (mounted) block special device for the filesystem being manipulated.
 .P
+For
+.BR quotactl_fd (),
+the
+.I fd
+argument is a file descriptor (which may be opened with the
+.B O_PATH
+flag) referring to a file or directory on the filesystem being manipulated.
+.P
 The
 .I addr
 argument is the address of an optional, operation-specific, data structure
@@ -118,6 +147,18 @@ field returned by the
 .B Q_GETINFO
 operation.
 .IP
+The
+.BR quotactl_fd ()
+variant of this system call ignores the
+.IR addr
+and
+.IR id
+arguments, so the
+.B Q_QUOTAON
+operation of
+.BR quotactl_fd ()
+is only suitable for work with hidden system inodes.
+.IP
 This operation requires privilege
 .RB ( CAP_SYS_ADMIN ).
 .TP
@@ -350,10 +391,14 @@ where the format number will be stored.
 .TP
 .B Q_SYNC
 Update the on-disk copy of quota usages for a filesystem.
-If
+For
+.BR quotactl (),
+if
 .I special
 is NULL, then all filesystems with active quotas are sync'ed.
-The
+.RB ( quotactl_fd ()
+always sync's only one filesystem.)
+In both cases, the
 .I addr
 and
 .I id
@@ -770,6 +815,7 @@ but there is no ID greater than or equal to
 .I id
 that has an active quota.
 .SH NOTES
+.SS Alternative XFS header
 Instead of
 .I <xfs/xqm.h>
 one can use
@@ -797,6 +843,28 @@ constants for the available quota types, but their values are the same as for
 constants without the
 .B XQM_
 prefix.
+.SS quotactl() versus quotactl_fd()
+The original
+.BR quotactl ()
+variant of this system call requires specifying
+the block device containing the filesystem to operate on.
+This makes it impossible to use
+in cases where the filesystem has no backing block device (e.g. tmpfs).
+Even when the block device does exist, it might be difficult to locate
+(requires scanning
+.I /proc/self/mounts
+and even some filesystem-specific parsing in the case of e.g. bcachefs).
+.BR quotactl_fd ()
+instead works on the mount point,
+which avoids this limitation and is simpler to use
+(since the filesystem to manipulate is typically specified by its mount
+point anyway).
+.SH STANDARDS
+Linux.
+.SH HISTORY
+.TP
+.BR quotactl_fd ()
+Linux 5.14.
 .SH SEE ALSO
 .BR quota (1),
 .BR getrlimit (2),
diff --git a/man/man2/quotactl_fd.2 b/man/man2/quotactl_fd.2
new file mode 100644
index 000000000..5f63187c6
--- /dev/null
+++ b/man/man2/quotactl_fd.2
@@ -0,0 +1 @@
+.so man2/quotactl.2
-- 
2.51.0


