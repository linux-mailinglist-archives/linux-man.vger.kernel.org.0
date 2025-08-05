Return-Path: <linux-man+bounces-3329-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5366AB1B878
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:27:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28919176656
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14944275B01;
	Tue,  5 Aug 2025 16:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="OT9oSgWS"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547B872630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411222; cv=none; b=cHVppL8QGQIFmddKS4yX3lc3whS5Fo8Bge2+k96J9wFP1qoGWzzdsGr4UrL6CLn8MZ/KQ2GwJC3ZfHmv/dF+l1n55LZ7dHv8nvz6vQFGg536UCPsciinHNUrecZApoT4C9BX5Zhl0cAElVoni9TivTIO8XK3NzeIAIwOxxqfg+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411222; c=relaxed/simple;
	bh=Mu980bdkt2mo858uwhy95ERMXj8V1lcvptKtKgcvmzk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gPxtztgMZn/EYbG8HOU2OadE6kSn/caZooazMHYd27g5qFAL2rx/y4HdcetNxpoEyZ7wiyt3RTKwKt7HI80prcOwzHc7MNAsi0WBzacRGJHzyCZvXM/sd+dkmrEJkA385TwTpDecnnxmBUiAD2VtgGAn930kODX0WN+O8EhRxII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=OT9oSgWS; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4bxJjF70tjz9tPr;
	Tue,  5 Aug 2025 18:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411218;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sVryF/LU19kapnRdDIfI/8AJMGlF2cyOHv9ctLb48gs=;
	b=OT9oSgWSGNpBdolmJY7hSoNDKQtWpJ1/ffCnEDak0QRuu/cycf0tjb1kUR1xscvr8RXaWY
	y8TyB6H6OQ6B/fW65xHmN8SGsnw/Olu2j6Q0h3q4SMw+pyWGx/rk6OOmd2FoUq/o/Q7Sqk
	ce0P7WtZFvhgvh49GOz7zAVwG7e3C/BAsPpqrbu6RKTkC22r9+AshkAE2ym5yV4spxSErj
	8y6UBJFHN01UagUYyZqFdzU4iXB0Byh3meDJ25ZbWFjNCC/fj1Ya0lajL54cz4xVGI9Ssm
	K54AhmFC5bbdcL0d4mOpgjnILVkNypTF7i4oOzhenKhCkceO6bK12GL+yOrOLA==
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:55 +1000
Subject: [PATCH 10/10] open_tree_attr.2, open_tree.2: document new
 open_tree_attr() api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-10-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3706; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=Mu980bdkt2mo858uwhy95ERMXj8V1lcvptKtKgcvmzk=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMliUerll09oHRip6EQenJ/9O/Bvs6Wy0a1nnniU7n
 wf/m1Op0lHKwiDGxSArpsiyzc8zdNP8xVeSP61kg5nDygQyhIGLUwAmskCSkeFFxonuZRPY/m1P
 FrlXY7eWm+PTkklKF8w+CvzMYXh1U8aGkWHJnRQmnowZTBfN1NW3Oszkyn0YYLO1VabK5aL9axZ
 JGRYA
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386

This is a new API added in Linux 6.15, and is effectively just a minor
expansion of open_tree(2) in order to allow for MOUNT_ATTR_IDMAP to be
changed for an existing ID-mapped mount.

Glibc does not yet have a wrapper for this.

Cc: Christian Brauner <brauner@kernel.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/open_tree.2      | 75 +++++++++++++++++++++++++++++++++++++++++++++++
 man/man2/open_tree_attr.2 |  1 +
 2 files changed, 76 insertions(+)

diff --git a/man/man2/open_tree.2 b/man/man2/open_tree.2
index d58f43d96b20..a6f7d813a115 100644
--- a/man/man2/open_tree.2
+++ b/man/man2/open_tree.2
@@ -17,6 +17,19 @@ Standard C library
 "          /* Definition of " AT_* " constants */"
 .P
 .BI "int open_tree(int " dirfd ", const char *" pathname ", unsigned int " flags ");
+.P
+.BR "#include <sys/syscall.h>" "    /* Definition of " SYS_* " constants */"
+.P
+.BI "int syscall(SYS_open_tree_attr, int " dirfd ", const char *" pathname ","
+.BI "            unsigned int " flags ", struct mount_attr *" attr ", \
+size_t " size ");"
+.fi
+.P
+.IR Note :
+glibc provides no wrapper for
+.BR open_tree_attr (),
+necessitating the use of
+.BR syscall (2).
 .fi
 .SH DESCRIPTION
 The
@@ -196,6 +209,60 @@ Create a recursive bind-mount of the path
 and attach it to the file descriptor.
 This flag is only permitted in conjunction with
 .BR OPEN_TREE_CLONE .
+.SS open_tree_attr()
+The
+.BR open_tree_attr ()
+system call operates in exactly the same way as
+.BR open_tree (),
+except for the differences described here.
+.P
+After performing the same operation as with
+.BR open_tree "(),
+(before returning the resulting file descriptor)
+.BR open_tree_attr ()
+will apply the mount attributes requested in
+.I attr
+to the mount object.
+(See
+.BR mount_attr (2type)
+for a description of the
+.I mount_attr
+structure.
+As described in
+.BR mount_setattr (2),
+.I size
+must be set to
+.I sizeof(struct mount_attr)
+in order to support future extensions.)
+.P
+For the most part, the application of
+.I attr
+has identical semantics to
+.BR mount_setattr (2),
+except that it is possible to change the
+.B MOUNT_ATTR_IDMAP
+attribute for a mount object that is already configured as an ID-mapped mount.
+This is usually forbidden by
+.BR mount_setattr (2)
+and thus
+.BR open_tree_attr ()
+is the only permitted mechanism to change this attribute.
+Changing an ID-mapped mount is only permitted if a new mount object is created
+with
+.BR OPEN_TREE_CLONE .
+.P
+If
+.I flags
+contains
+.BR AT_RECURSIVE ,
+then the attributes are applied recursively (just as when
+.BR mount_setattr (2)
+is called with
+.BR AT_RECURSIVE ).
+This applies in addition to the
+.BR open_tree ()-specific
+behaviour regarding
+.BR AT_RECURSIVE .
 .SH RETURN VALUE
 On success, a new file descriptor is returned.
 On error, \-1 is returned, and
@@ -285,10 +352,18 @@ The system has too many open files to create more.
 .SH STANDARDS
 Linux.
 .SH HISTORY
+.SS open_tree()
 Linux 5.2.
 .\" commit a07b20004793d8926f78d63eb5980559f7813404
 Glibc 2.36.
+.SS open_tree_attr()
+Linux 6.15.
+.\" commit c4a16820d90199409c9bf01c4f794e1e9e8d8fd8
 .SH NOTES
+Glibc does not (yet) provide a wrapper for the
+.BR open_tree_attr ()
+system call; call it using
+.BR syscall (2).
 .SS Anonymous Mount Namespaces
 The bind-mount mount objects created by
 .BR open_tree ()
diff --git a/man/man2/open_tree_attr.2 b/man/man2/open_tree_attr.2
new file mode 100644
index 000000000000..e57269bbd269
--- /dev/null
+++ b/man/man2/open_tree_attr.2
@@ -0,0 +1 @@
+.so man2/open_tree.2

-- 
2.50.1


