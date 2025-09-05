Return-Path: <linux-man+bounces-3832-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAEFB45808
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 14:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D49BF3B1287
	for <lists+linux-man@lfdr.de>; Fri,  5 Sep 2025 12:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B06134DCFE;
	Fri,  5 Sep 2025 12:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b="TPGQeO1H"
X-Original-To: linux-man@vger.kernel.org
Received: from sender-op-o14.zoho.eu (sender-op-o14.zoho.eu [136.143.169.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DFD343D8D
	for <linux-man@vger.kernel.org>; Fri,  5 Sep 2025 12:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.169.14
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757076188; cv=pass; b=Q67CWuj0l8w/xPnNxYg6iYpK4aLcS3JDMEXRcSKJSPMnVf6tQfM6JepCxGycHB40BoGoa50jF+qb87oF7yYFvAa9fkvNvnwIH1cDivseNHTVQpieGhGlx15093sJWIhEGYJR1fduSbznEEX8xwjYPPfDI61Ojw82aNr6XoSS9es=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757076188; c=relaxed/simple;
	bh=57154kiolPMQsopFzQFYOLjopFUAuqXklB5vb61J9tk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KsMTiDfmlwzvtiCP/jeJCWB2V4YRp43YH443XkmHhQVBne0G8gnO5TISVukAdGzSKU3bECZQ/ASM2XH+bIwWo8kOzBZAQypBxAHH37u6b6OnAfYe4RPDLFlKexWKnmE2RzajZ0DQYe1jWj7drTITjmCDNoHg1LunCWZeuUdJPL4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm; spf=pass smtp.mailfrom=r9.pm; dkim=pass (2048-bit key) header.d=r9.pm header.i=trillian@r9.pm header.b=TPGQeO1H; arc=pass smtp.client-ip=136.143.169.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=r9.pm
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=r9.pm
ARC-Seal: i=1; a=rsa-sha256; t=1757076165; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=Z8QUfd4UILTRRsx5+fJ8T7CmmQZ46Xt7I5N2/feTpVK0qHoaiX9Zr+cCmYx35DdNbeR8oOhE/uDDmAvV2vKgUTe34gYdcA4/l5zuA/KhYNwrKJ3oeQDP112wxM9ZSo0OGNiPDyqkZFzAcKDf3rbh1VctLXfWM7R1dKot6fhtTi4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1757076165; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=+U1ZXLwA3DqE2sI9GwfaHqEV2HAln0DaJjvqWQHBS2I=; 
	b=MrTytp1A1ej72f13YFB6ngoqyHkn2/yTnI2PI3qVgY2KLYSKdHBWpXhLfVxoV9E3ZAoD/UqSmwUJ24qaVkYXflSOS2SKzAZ6R4f9DiMBTdBftAaqFbkLuPImURSKcOG10kMVvKV6XaNHAVFkuABwCJCEGuZ3ysKeJU2ieHp8iVw=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=r9.pm;
	spf=pass  smtp.mailfrom=trillian@r9.pm;
	dmarc=pass header.from=<trillian@r9.pm>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757076164;
	s=sel; d=r9.pm; i=trillian@r9.pm;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=+U1ZXLwA3DqE2sI9GwfaHqEV2HAln0DaJjvqWQHBS2I=;
	b=TPGQeO1HyIojp0206+XUtD2lzOTPGnDWDb0gdYT4Vrl1d8k3+lz2I1Y5ikQQ7mfw
	nqANAJYVB1KGyqpBMwvTbpA4ESsTYLCQze+eP+WpEVuyvDbZiCJoDF6O0chO6AbQBju
	g2hMn/l13K3L6wzbJwleNGhafeFKZm/R1gmUDQjhsfuEsdNd898uJeCG0pgwdu+vURJ
	LuDV34GJXZQDnr88yXmCIAyGpjOD6OzjdMD6kX8KZ6spfvfEc6sLxwJhqPD0cbt0ju3
	fcebF1VgOqRZmCpjP3j2+12nCbpTjdvGoHP0M3kQbNE7TofRVpDdn+JQTc6GBPAS4G+
	aL1GVvkW6g==
Received: by mx.zoho.eu with SMTPS id 1757076162036687.1630523015849;
	Fri, 5 Sep 2025 14:42:42 +0200 (CEST)
From: trillian <trillian@r9.pm>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jan Kara <jack@suse.com>,
	trillian <trillian@r9.pm>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man2/: Document quotactl_fd syscall
Date: Fri,  5 Sep 2025 15:42:19 +0300
Message-ID: <22e61e8f6c198c6a6c0468bb97b2d2add1fa0aec.1757076139.git.trillian@r9.pm>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <kcgr45epiqdxxfg3wwqvfifudaz23ten3tuwdnn4o5rp2pj7ta@27jsmwb26cze>
References: <kcgr45epiqdxxfg3wwqvfifudaz23ten3tuwdnn4o5rp2pj7ta@27jsmwb26cze>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External

Based on the earlier discussion in the linux-man list.

A few remaining questions regarding formatting:

is it enough to mention "since Linux 5.14" in the HISTORY section or
should it be mentioned elsewhere too?

Does the discussion of quotactl() vs quotactl_fd() belong in NOTES or
should it be moved somewhere else?

(Also, I've CC'd Jan Kara as the maintainer of the quota subsystem.
Should I be CC'ing anyone else too?)

I based these changes on kernel commits [1], [2]. Man-page wording
changes inspired by [3]. Rationale for the syscall itself is from [4].

[1] linux.git 9dfa23c8de925041b7b45637a1a80a98a22f19dd
("quota: Add mountpath based quota support")
[2] linux.git 64c2c2c62f92339b176ea24403d8db16db36f9e6
("quota: Change quotactl_path() systcall to an fd-based one")
[3] <https://lore.kernel.org/all/20210304123541.30749-4-s.hauer@pengutronix.de/>
[4] <https://lwn.net/Articles/859679/>

Signed-off-by: trillian <trillian@r9.pm>
---
 man/man2/quotactl.2    | 76 +++++++++++++++++++++++++++++++++++++++---
 man/man2/quotactl_fd.2 |  1 +
 2 files changed, 72 insertions(+), 5 deletions(-)
 create mode 100644 man/man2/quotactl_fd.2

diff --git a/man/man2/quotactl.2 b/man/man2/quotactl.2
index 126426b8a..8e04e93c5 100644
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
@@ -31,7 +43,13 @@ after this, the soft limit counts as a hard limit.
 .P
 The
 .BR quotactl ()
-call manipulates disk quotas.
+and
+.BR quotactl_fd ()
+calls manipulate disk quotas.
+The difference between these functions is the way the filesystem being
+manipulated is specified, see description of the arguments below.
+See NOTES for why one variant might be preferred over the other.
+.P
 The
 .I op
 argument indicates an operation to be applied to the user or
@@ -56,11 +74,21 @@ The
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
@@ -118,6 +146,18 @@ field returned by the
 .B Q_GETINFO
 operation.
 .IP
+The
+.BR quotactl_fd ()
+variant of this syscall ignores the
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
@@ -350,10 +390,14 @@ where the format number will be stored.
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
@@ -770,6 +814,7 @@ but there is no ID greater than or equal to
 .I id
 that has an active quota.
 .SH NOTES
+.SS Alternative XFS header
 Instead of
 .I <xfs/xqm.h>
 one can use
@@ -797,6 +842,27 @@ constants for the available quota types, but their values are the same as for
 constants without the
 .B XQM_
 prefix.
+.SS quotactl() versus quotactl_fd()
+The original
+.BR quotactl ()
+variant of this syscall requires specifying the block device containing the
+filesystem to operate on.
+This makes it impossible to use in cases where the filesystem has no
+backing block device (e.g. tmpfs).
+Even when the block device does exist, it might be difficult to locate
+(requires scanning
+.I /proc/self/mounts
+and even some filesystem-specific parsing in the case of e.g. bcachefs).
+.BR quotactl_fd ()
+instead works on the mount point, which avoids this limitation and is
+simpler to use (since the filesystem to manipulate is typically specified
+by its mount point anyway).
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


