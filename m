Return-Path: <linux-man+bounces-3325-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EECEB1B873
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DBAB1770DD
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAD6C291C1F;
	Tue,  5 Aug 2025 16:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="MVfmo4sj"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D905C72630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411212; cv=none; b=Ki0RtMpYxwORc0DKLl3dox5q7g3yGd3W5ZPKlgvGvD2285WB1xREggpqjvB/ovKBlxo6byfHZ9GpzgAVEb6TTkO5K6Q/DNVYOP+/2EUInIxT2yumpmMyZwm3AdhmAkpIV2rHsnAnQpiRRKYS49GrvBkyiOMJ3ENd8qF81m1qK2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411212; c=relaxed/simple;
	bh=AkIonPcTxAZqPHs3l/aN9YUoXeQlBJQZTBma6JekejU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TAV41a0kn2Nvbb6bB1FyQC6Rs3dEFBLoH77rSFdgmcnR9amZ2kPXObhl0PzYSwD5SzMVtCvNGQcDUd5CrI8lOV855s3aE8AiNcpuXyM7+pa8szl5xW/xcNNVFvEuSTwIOxdMweU4kyjouU4S+q2mFqGIVUj2yEhgHrpRnhI12To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=MVfmo4sj; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bxJhx0r89z9tDr;
	Tue,  5 Aug 2025 18:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411201;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FOlkPQVUkDvPeIfXpli3yKUHCFiYe2PI7nu6CH5JcuI=;
	b=MVfmo4sjOgum2s/+RaU80VBQ2v4n5rP4x4mzYV4of+QcwDH2ymQwuZIvFJD0kn1TXY8MYQ
	cg+yJVbBu9ynSXNUW8clc0btPYjdBco4rxxEo9Iijnm3aC0fjqVjd1XkY6zPgKahMaswBW
	gE9p7poY8G+8KIwBBuaVxRD5MtID/9bNOaWIntJ9v2/qhOOtcDzWSl7CuCAKLUi5EAdBlP
	qUmIivHW3y+yl5epe7wWm+hi9vFr0aEx9P2vfppeZZ80pjIDHvFxt7rQwP1yFmBpTYnG9B
	cBEVjbg7XAa2YbepTr3N0CUfe07AbJbpKG0/rr8WivOE4DyaFhp53QbqG3D5bQ==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:51 +1000
Subject: [PATCH 06/10] fsmount.2: document 'new' mount api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-6-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=5715; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=AkIonPcTxAZqPHs3l/aN9YUoXeQlBJQZTBma6JekejU=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMlgkm1Z+YaHh82LuSYU33ryd8pIpl/O866yOoqY90
 XZXHPcpdZSyMIhxMciKKbJs8/MM3TR/8ZXkTyvZYOawMoEMYeDiFICJpFowMvx+N1XkssXnC7s5
 m1o01Q7oOCw3lZudV6/edJPjlUlxJxMjw5uV9qkLcuetTL0U87vYvnNCm6iykdrJIoWiyMs522w
 5GAA=
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386
X-Rspamd-Queue-Id: 4bxJhx0r89z9tDr

This is loosely based on the original documentation written by David
Howells and later maintained by Christian Brauner, but has been
rewritten to be more from a user perspective (as well as fixing a few
critical mistakes).

Co-developed-by: David Howells <dhowells@redhat.com>
Co-developed-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/fsmount.2 | 185 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 185 insertions(+)

diff --git a/man/man2/fsmount.2 b/man/man2/fsmount.2
new file mode 100644
index 000000000000..0653ffe7056d
--- /dev/null
+++ b/man/man2/fsmount.2
@@ -0,0 +1,185 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH fsmount 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+fsmount \- instantiate mount object from filesystem context
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <sys/mount.h>"
+.BR "#include <unistd.h>"
+.P
+.BI "int fsmount(int " fsfd ", unsigned int " flags ", \
+unsigned int " attr_flags ");
+.fi
+.SH DESCRIPTION
+The
+.BR fsmount ()
+system call is part of the suite of file descriptor based mount facilities in
+Linux.
+.P
+.BR fsmount ()
+takes the created filesystem instance referenced by the filesystem context
+associated with the file descriptor
+.I fsfd
+and creates a new mount object for the root of the filesystem instance, which
+is then attached to a new file descriptor and returned.
+The filesystem context must have been created with a call to
+.BR fsopen (2)
+and then had a filesystem instance instantiated with a call to
+.BR fsconfig (2)
+with
+.BR FSCONFIG_CMD_CREATE " or " FSCONFIG_CMD_CREATE_EXCL
+in order to be in the correct state for this operation.
+In order to create a mount object with
+.BR fsmount (),
+the calling process must have the
+.BR CAP_SYS_ADMIN
+capability.
+.P
+As with file descriptors returned from
+.BR open_tree (2)
+called with
+.BR OPEN_TREE_CLONE ,
+the returned file descriptor can then be used with
+.BR move_mount (2),
+.BR mount_setattr (2),
+or other such system calls to do further mount operations.
+This mount object will be unmounted and destroyed when the file descriptor is
+closed if it was not otherwise mounted somewhere else by calling
+.BR move_mount (2).
+The resultant file descriptor acts the same as one produced by
+.BR open (2)
+with
+.BR O_PATH ,
+meaning it can also be used as a
+.I dirfd
+argument to
+other "*at()" system calls.
+.P
+.I flags
+controls the creation of the returned file descriptor.
+A value for
+.I flags
+is constructed by OR'ing together zero or more of the following constants:
+.RS
+.TP
+.B FSMOUNT_CLOEXEC
+Set the close-on-exec
+.RB ( FD_CLOEXEC )
+flag on the new file descriptor.
+See the description of the
+.B O_CLOEXEC
+flag in
+.BR open (2)
+for reasons why this may be useful.
+.RE
+.P
+.I attr_flags
+specifies the mount attributes for the created mount object and accepts the
+same set of
+.B MOUNT_ATTR_*
+flags as
+.BR mount_setattr (2),
+except for flags such as
+.B MOUNT_ATTR_IDMAP
+which require specifying additional fields in
+.BR mount_attr (2type).
+.P
+If the
+.BR fsmount ()
+operation is successful, the filesystem context associated with the file
+descriptor
+.I fsfd
+is reset and placed into a reconfiguration state, similar to the one produced
+by
+.BR fspick (2).
+You may coninue to use
+.BR fsconfig (2)
+with the
+.B FSCONFIG_CMD_RECONFIGURE
+command to reconfigure the filesystem instance.
+.P
+Unlike
+.BR open_tree "(2), " fsmount (2)
+can only be called once to produce a mount object for a given filesystem
+configuration context.
+.SH RETURN VALUE
+On success, a new file descriptor is returned.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EBUSY
+The filesystem context attached to
+.I fsfd
+is not in the right state to be used by
+.BR fsmount ().
+.TP
+.B EINVAL
+.I flags
+had an invalid flag set.
+.TP
+.B EINVAL
+.I attr_flags
+had an invalid
+.B MOUNT_ATTR_*
+flag set.
+.TP
+.B EMFILE
+The calling process has too many open files to create more.
+.TP
+.B ENFILE
+The system has too many open files to create more.
+.TP
+.B ENOSPC
+The "anonymous" mount namespace necessary to contain the new mount object could
+not be allocated, as doing so would exceed the configured per-user limit on the
+number of mount namespaces in the current user namespace.
+(See also
+.BR namespaces (7).)
+.TP
+.B ENOMEM
+The kernel could not allocate sufficient memory to complete the operation.
+.TP
+.B EPERM
+The calling process does not have the required
+.B CAP_SYS_ADMIN
+capability.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 5.2.
+.\" commit 93766fbd2696c2c4453dd8e1070977e9cd4e6b6d
+Glibc 2.36.
+.SH EXAMPLES
+.P
+.in +4n
+.EX
+int sfd = fsopen("tmpfs", FSOPEN_CLOEXEC);
+fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
+int mfd = fsmount(sfd, FSMOUNT_CLOEXEC, MOUNT_ATTR_NODEV | MOUNT_ATTR_NOEXEC);
+\&
+/* Create a new file without attaching the mount object. */
+int tmpfd = openat(sfd, "tmpfile", O_CREAT | O_EXCL | O_RDWR, 0600);
+unlinkat(sfd, "tmpfile", 0);
+\&
+/* Attach the mount object to "/tmp". */
+move_mount(mfd, "", AT_FDCWD, "/tmp", MOVE_MOUNT_F_EMPTY_PATH);
+.EE
+.in
+.SH SEE ALSO
+.BR mount (2),
+.BR fsopen (2),
+.BR fsconfig (2),
+.BR fspick (2),
+.BR open_tree (2),
+.BR move_mount (2),
+.BR mount_setattr (2),
+.BR mount_namespaces (7)
+

-- 
2.50.1


