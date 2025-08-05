Return-Path: <linux-man+bounces-3322-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BD5B1B870
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EEC7177666
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11FF228BABC;
	Tue,  5 Aug 2025 16:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="st5EM0Ti"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A3972630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411194; cv=none; b=W1slcwTNs/ZR/O+ey5L8HsfoGt1AgdQAnmn+XOVFB/k0x+WwSFf7W/xUBZZcyZRG/E11HKXfVt04mjwt8xXnzxwmGjJP0njKUzp9j1BbnRTlP+XpqSajqFadgq+vDgw6cO3i6SxKqKwwlYEZ/U1AxYIBsxXf6efYnesBg53Ch3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411194; c=relaxed/simple;
	bh=Ff5TR6kgRA+h9B3/8D53EXvrqotXiETtlOIqzJ/Ji+8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eJg7H3XbmPOrCeLhmyjg1u0eXk6nrtbvxenbZJDNTas5SiPu/6WU3VWC3tOCTG7h5yNZHdV7fwxRAJNHhGULvbu+PoQvWT2TU/e0krVCq3AhhDOGJ0QB6Lno9+jOZ69GYGbvaF9bEToLOs0XJknqgNQr6N20rQ0ATxuKTJyn5Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=st5EM0Ti; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4bxJhj23j6z9tRN;
	Tue,  5 Aug 2025 18:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411189;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mPtrPE+ro3bnhlxRo2qeXPnIrgve9/+3pSjt+S2983A=;
	b=st5EM0Ti9slGuBZhqqkG53fxO+BE8DAD7jPsdq6r4TaZxvmzi9tjTLhsOBG0zUE6AwD0kt
	iYs1ErXqcI76tblQzsYZsYpM3W2AmfTCqf4wi9WmkuP6FvJ8ci/w8+xLRAa9DzxM5gZtQW
	osVYNj0SfsVzeCQU/I3ZUoEGCTOzK2h35hCkMlwAhaAKd4PMeU0MMRkwVyCYXP1NXuk8ye
	A38ittDP0um/7knUfMhxQwGFHL2q9vqbw6QFbNpw8AVh+NH2e0kzYLOgI8C4XTLafUUOCT
	ekb78HOCJmD4mxdOmQpopjSGqdABoJ3UIBAPi06/SaGK3VcfSI8qc2wQHuBbeg==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:48 +1000
Subject: [PATCH 03/10] fsopen.2: document 'new' mount api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=9634; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=Ff5TR6kgRA+h9B3/8D53EXvrqotXiETtlOIqzJ/Ji+8=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMlgYvyq7PbBi6puNqq+e5j8L+ZjOckDy6uR1f4R23
 02L53zP0VHKwiDGxSArpsiyzc8zdNP8xVeSP61kg5nDygQyhIGLUwAmsjOPkWGOqBg3X37Bslm3
 nxz1EF/hkKfJNeWdKovnJKuKuif9e0sZGY5U166reSXo9C5/4/f3S2ym3XNkXLs3Pzad5/8O04p
 XFawA
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386
X-Rspamd-Queue-Id: 4bxJhj23j6z9tRN

This is loosely based on the original documentation written by David
Howells and later maintained by Christian Brauner, but has been
rewritten to be more from a user perspective (as well as fixing a few
critical mistakes).

Co-developed-by: David Howells <dhowells@redhat.com>
Co-developed-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/fsopen.2 | 275 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 275 insertions(+)

diff --git a/man/man2/fsopen.2 b/man/man2/fsopen.2
new file mode 100644
index 000000000000..43a1709ec5b4
--- /dev/null
+++ b/man/man2/fsopen.2
@@ -0,0 +1,275 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH fsopen 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+fsopen \- create a new filesystem context
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.BR "#include <sys/mount.h>"
+.BR "#include <unistd.h>"
+.P
+.BI "int fsopen(const char *" fsname ", unsigned int " flags ");
+.fi
+.SH DESCRIPTION
+The
+.BR fsopen ()
+system call is part of the suite of file descriptor based mount facilities in
+Linux.
+.P
+.BR fsopen ()
+creates a blank filesystem configuration context within the kernel for the
+filesystem named by
+.IR fsname ,
+puts the context into creation mode and attaches it to a file descriptor, which
+is then returned.
+The calling process must have the
+.BR CAP_SYS_ADMIN
+capability in order to create a new filesystem configuration context.
+.P
+After obtaining a filesystem configuration context with
+.BR fsopen (),
+the general workflow for operating on the context looks like the following:
+.RS
+.IP 1. 3
+Pass the filesystem context file descriptor to
+.BR fsconfig (2)
+to specify any desired filesystem parameters.
+This can be done as many times as necessary.
+.IP 2.
+Pass the same filesystem context file descriptor to
+.BR fsconfig (2)
+with
+.B FSCONFIG_CMD_CREATE
+to create an instance of the configured filesystem.
+.IP 3.
+Pass the same filesystem context file descriptor to
+.BR fsmount (2)
+to create a new mount object for the root of the filesystem, which is then
+attached to a new file descriptor.
+.IP 4.
+Use the mount object file descriptor as a
+.I dirfd
+argument to "*at()" system calls; or attach the mount object to a mount point
+by passing the mount object file descriptor to
+.BR move_mount (2).
+.RE
+.P
+A filesystem configuration context is an in-kernel representation of a pending
+transaction containing a set of configuration parameters that are to be applied
+when creating a new instance of a filesystem or modifying the configuration of
+an existing filesystem instance.
+The filesystem context will move between different modes throughout its
+lifecycle (such as the creation phase when created with
+.BR fsopen (),
+the reconfiguration phase when an existing filesystem instance is selected by
+.BR fspick (2),
+and the needs-mount phase between
+.BR FSCONFIG_CMD_CREATE
+and
+.BR fsmount (2)),
+which has an impact on what operations are permitted on the filesystem context.
+.P
+The file descriptor returned by
+.BR fsopen ()
+also acts as a channel for filesystems to provide more comprehensive error,
+warning, and information messages than normally provided using the
+.BR errno (3)
+interface.
+If an error occurs at any time during the workflow mentioned above, calling
+.BR read (2)
+on the filesystem context file descriptor will retrieve any ancillary
+information about the encountered errors.
+(See the "Message Retrieval Interface" section for more details on the message
+format.)
+.P
+.I flags
+can be used to control aspects of the creation of the file configuration
+context.
+A value for
+.I flags
+is constructed by OR'ing together zero or more of the following constants:
+.RS
+.TP
+.B FSOPEN_CLOEXEC
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
+A list of filesystems supported by the running kernel (and thus a list of valid
+values for
+.IR fsname )
+can be obtained from
+.IR /proc/filesystems .
+(See also
+.BR proc_filesystems (5).)
+.SS Message Retrieval Interface
+When doing operations on a filesystem configuration context, the filesystem
+driver may choose to provide ancillary information to userspace in the form of
+message strings.
+.P
+The filesystem context file descriptors returned by
+.BR fsopen "() and " fspick (2)
+may be queried for message strings at any time by calling
+.BR read (2)
+on the file descriptor.
+This will return newline-separated messages that are prefixed to indicate their
+class:
+.RS
+.TP
+.B "e <message>"
+An error message was logged.
+This is usually associated with an error being returned from the corresponding
+system call which triggered this message.
+.TP
+.B "w <message>"
+A warning message was logged.
+.TP
+.B "i <message>"
+An informational message was logged.
+.RE
+.P
+Messages are removed from the queue as they are read.
+Note that the message queue has limited depth, so it is possible for messages
+to get lost.
+If there are no messages in the message queue,
+.B read(2)
+will return no data.
+.P
+If there are multiple filesystem context file descriptors referencing the same
+filesystem instance (such as if you call
+.BR fspick (2)
+multiple times for the same mount), each one gets its own independent message
+queue.
+This does not apply to file descriptors that were duplicated with
+.BR dup (2).
+.P
+Usually messages will be prefixed by the filesystem driver that logged the
+message, though this may not always be the case.
+See the Linux kernel source code for details.
+.SH RETURN VALUE
+On success, a new file descriptor is returned.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EFAULT
+One of the pointer arguments points to a location outside the calling process's
+accessible address space.
+.TP
+.B EINVAL
+.I flags
+had an invalid flag set.
+.TP
+.B EMFILE
+The calling process has too many open files to create more.
+.TP
+.B ENFILE
+The system has too many open files to create more.
+.TP
+.B ENODEV
+The filesystem named by
+.I fsname
+is not supported by the kernel.
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
+.\" commit 24dcb3d90a1f67fe08c68a004af37df059d74005
+Glibc 2.36.
+.SH EXAMPLES
+To illustrate the workflow for creating a new mount, the following is a sample
+of how to mount an ext4 filesystem stored on "/dev/sdb1" onto "/mnt".
+.P
+.in +4n
+.EX
+int sfd = fsopen("ext4", FSOPEN_CLOEXEC);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "ro", NULL, 0);
+fsconfig(sfd, FSCONFIG_SET_PATH, "source", "/dev/sdb1", AT_FDCWD);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "noatime", NULL, 0);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "acl", NULL, 0);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "user_xattr", NULL, 0);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "iversion", NULL, 0)
+fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
+int mfd = fsmount(sfd, FSMOUNT_CLOEXEC, MOUNT_ATTR_RELATIME);
+move_mount(mfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH);
+.EE
+.in
+.P
+First, an ext4 configuration context is created and attached to the file
+descriptor
+.IR sfd .
+Then, a series of parameters (such as the source of the filesystem) are
+provided using
+.BR fsconfig (2),
+followed by the filesystem instance being created with
+.BR FSCONFIG_CMD_CREATE .
+.BR fsmount (2)
+is then used to create a new mount object attached to the file descriptor
+.IR mfd ,
+which is then attached to the intended mount point using
+.BR move_mount (2).
+.P
+The above procedure is functionally equivalent to the following mount operation
+using
+.BR mount (2):
+.P
+.in +4n
+.EX
+mount("/dev/sdb1", "/mnt", "ext4", MS_RELATIME,
+      "ro,noatime,acl,user_xattr,iversion");
+.EE
+.in
+.P
+And here's an example of creating a mount object of an NFS server share and
+setting a Smack security module label.
+However, instead of mounting it to a place on the filesystem, the program
+instead uses the mount object directly to open a file from the NFS share.
+.P
+.in +4n
+.EX
+int sfd = fsopen("nfs", 0);
+fsconfig(sfd, FSCONFIG_SET_STRING, "source", "example.com/pub/linux", 0);
+fsconfig(sfd, FSCONFIG_SET_STRING, "nfsvers", "3", 0);
+fsconfig(sfd, FSCONFIG_SET_STRING, "rsize", "65536", 0);
+fsconfig(sfd, FSCONFIG_SET_STRING, "wsize", "65536", 0);
+fsconfig(sfd, FSCONFIG_SET_STRING, "smackfsdef", "foolabel", 0);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "rdma", NULL, 0);
+fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
+int mfd = fsmount(sfd, 0, MOUNT_ATTR_NODEV);
+int fd = openat(mfd, "src/linux-5.2.tar.xz", O_RDONLY);
+.EE
+.in
+.P
+Unlike the previous example, this operation has no trivial equivalent with
+.BR mount (2),
+as it was not previously possible to create a mount object that is not attached
+to any mount point.
+.SH SEE ALSO
+.BR mount (2),
+.BR fsconfig (2),
+.BR fsmount (2),
+.BR fspick (2),
+.BR open_tree (2),
+.BR move_mount (2),
+.BR mount_setattr (2),
+.BR mount_namespaces (7)

-- 
2.50.1


