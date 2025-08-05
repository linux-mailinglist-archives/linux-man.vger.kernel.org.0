Return-Path: <linux-man+bounces-3326-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A941B1B875
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A4A33A42D0
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37692566E9;
	Tue,  5 Aug 2025 16:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="HRqj3BaU"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [80.241.56.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7DF6291C0F
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411214; cv=none; b=CgMrUWhihqqwtc2c+JT0S8Rk+w+U6r2cvD83iP1B7F+NCPiirg7DNsOiBLSRwjAfWVMm75eT8upa9tdIrZGnKJOnlvbnLkN7Eb5NWYclP69mC4p2WoRkvzwuRxGgqPMjsR/PcUT5M0abawDUCREhVLILk2aITnDz+hFrfSBUA40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411214; c=relaxed/simple;
	bh=XW3ZgsV3ZaNtSEcAeK3m9yWi8EZ99I2T+4cTfYTVvPw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F356xQeuFiIMh5urzb8ZKm91zyNfpN6eBz5l/7fC15gstc11BKkrgcyHRPK6ntffvYy9+6D1oVdkadSHDCzxCJQTIFIkWSkvnYTGnFkujIJmiM9kDgwao+QtKBk0nphzr4MroEBwl2D8bXWDGkw96P8NW/CjusIPEEFPtf7ozQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=HRqj3BaU; arc=none smtp.client-ip=80.241.56.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4bxJj53Hhjz9tPJ;
	Tue,  5 Aug 2025 18:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FdKSMCACtaBvFC+l1scxQD9Xd0IB0qIAn3lXtPayOtM=;
	b=HRqj3BaUbqEWpc/S9ckU0WeGTlkazvq0FfqkmPejIHq2m/uf/Qz+1yyPxLmSJ83D4n+x+S
	nebBKE62vtl2WfsMfuUgjJNJ7GHCC9kQ8M8OlPXYv1LkkR4GmQ+fw3pGauukxz42VwQ+sO
	6ro8iI4ftIduyX0nynFhDSrZxAT+6p0BSU4DXzG+ZNWzJ7Pmx2L+RYpDdd7GfnQtpttVd9
	DYsSzQ5jGhy+XIZaFPUDOn49EzOj0mMvLxADMQz8m95EasRtzoKUie7qCdfSGTf3DeFzcg
	cEEks2KzNs1pel/pMwAtKoKz9WzMGo6O1zz+Mt+XsAs9EjIJvM19KOp18PQqsg==
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:53 +1000
Subject: [PATCH 08/10] open_tree.2: document 'new' mount api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-8-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=10499; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=XW3ZgsV3ZaNtSEcAeK3m9yWi8EZ99I2T+4cTfYTVvPw=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMlj0gt13b82RAqXmW2pFD64XpIjNNrNrbO95xB3+X
 XSv8zfrjlIWBjEuBlkxRZZtfp6hm+YvvpL8aSUbzBxWJpAhDFycAjARRU5Ghp5JRxWmX5LdlrUz
 3aSpRC/vgoWczG/WnBB22aWa2VLXgxkZbi1ttvXPEFvZfkOkqM8u92WFTLJAv3NoyUknqcSvOhF
 cAA==
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386

This is loosely based on the original documentation written by David
Howells and later maintained by Christian Brauner, but has been
rewritten to be more from a user perspective (as well as fixing a few
critical mistakes).

Co-developed-by: David Howells <dhowells@redhat.com>
Co-developed-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/open_tree.2 | 365 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 365 insertions(+)

diff --git a/man/man2/open_tree.2 b/man/man2/open_tree.2
new file mode 100644
index 000000000000..d58f43d96b20
--- /dev/null
+++ b/man/man2/open_tree.2
@@ -0,0 +1,365 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH open_tree 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+open_tree \- open path or create detached mount object and attach to fd
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #define _GNU_SOURCE
+.BR "#include <sys/mount.h>"
+.BR "#include <unistd.h>"
+.BR "#include <fcntl.h>" \
+"          /* Definition of " AT_* " constants */"
+.P
+.BI "int open_tree(int " dirfd ", const char *" pathname ", unsigned int " flags ");
+.fi
+.SH DESCRIPTION
+The
+.BR open_tree ()
+system call is part of the suite of file descriptor based mount facilities in
+Linux.
+.P
+If
+.I flags
+contains
+.BR OPEN_TREE_CLONE ", " open_tree ()
+creates a detached mount object consisting of a bind-mount of the pathname
+specified by the
+.IR pathname ,
+and attaches it to a new file descriptor.
+The mount object is equivalent to a bind-mount that would be created by
+.BR mount (2)
+called with
+.BR MS_BIND ,
+except that it is tied to a file descriptor and is not mounted onto the
+filesystem.
+.P
+As with file descriptors returned from
+.BR fsmount (2),
+the resultant file descriptor can then be used with
+.BR move_mount (2),
+.BR mount_setattr (2),
+or other such system calls to do further mount operations.
+This mount object will be unmounted and destroyed when the file descriptor is
+closed if it was not otherwise attached to a mount point by calling
+.BR move_mount (2).
+.P
+If
+.I flags
+does not contain
+.BR OPEN_TREE_CLONE ", " open_tree ()
+produces a file descriptor that is functionally equivalent to one returned from
+.BR open (2).
+.P
+In either case, the resultant file descriptor acts the same as one produced by
+.BR open (2)
+with
+.BR O_PATH ,
+meaning it can be used as a
+.I dirfd
+argument to
+other "*at()" system calls.
+.P
+As with most "*at()" system calls,
+.BR open_tree ()
+uses the
+.I dirfd
+argument in conjunction with the
+.I pathname
+argument to determine the path to operate on, as follows:
+.RS
+.IP \[bu] 3
+If the pathname given in
+.I pathname
+is absolute, then
+.I dirfd
+is ignored.
+.IP \[bu]
+If the pathname given in
+.I pathname
+is relative and
+.I dirfd
+is the special value
+.BR AT_FDCWD ,
+then
+.I pathname
+is interpreted relative to the current working
+directory of the calling process (like
+.BR open ()).
+.IP \[bu]
+If the pathname given in
+.I pathname
+is relative, then it is interpreted relative to the directory
+referred to by the file descriptor
+.I dirfd
+(rather than relative to the current working directory of
+the calling process, as is done by
+.BR open ()
+for a relative pathname).
+In this case,
+.I dirfd
+must be a directory that was opened for reading
+.RB ( O_RDONLY )
+or using the
+.B O_PATH
+flag.
+.IP \[bu]
+If
+.I pathname
+is an empty string, and
+.I flags
+contains
+.BR AT_EMPTY_PATH ,
+then the file descriptor referenced by
+.I dirfd
+is operated on directly.
+In this case,
+.I dirfd
+can refer to any type of file, not just a directory.
+.RE
+.P
+.I flags
+can be used to control aspects of the path lookup and properties of the
+returned file descriptor.
+A value for
+.I flags
+is constructed by OR'ing together zero or more of the following constants:
+.RS
+.TP
+.B AT_EMPTY_PATH
+If
+.I pathname
+is an empty string, operate on the file referred to by
+.I dirfd
+(which may have been obtained from
+.BR open "(2), from " fsmount "(2), or from another " open_tree "() call.)"
+In this case,
+.I dirfd
+can refer to any type of file, not just a directory.
+If
+.I dirfd
+is
+.BR AT_FDCWD ,
+the call operates on the current working directory.
+This flag is Linux-specific; define
+.B _GNU_SOURCE
+to obtain its definition.
+.TP
+.B AT_NO_AUTOMOUNT
+Don't automount the terminal ("basename") component of
+.I pathname
+if it is a directory that is an automount point.
+This allows the caller to gather attributes of an automount point
+(rather than the location it would mount).
+This flag has no effect if the mount point has already been mounted over.
+This flag is Linux-specific; define
+.B _GNU_SOURCE
+to obtain its definition.
+.TP
+.B AT_SYMLINK_NOFOLLOW
+If
+.I pathname
+is a symbolic link, do not dereference it; instead, create either a handle to
+the link itself or a bind-mount of it.
+The resultant file descriptor is indistinguishable from one produced by
+.BR openat (2)
+with
+.BR O_PATH | O_NOFOLLLOW .
+.TP
+.B OPEN_TREE_CLOEXEC
+Set the close-on-exec
+.RB ( FD_CLOEXEC )
+flag on the new file descriptor.
+See the description of the
+.B O_CLOEXEC
+flag in
+.BR open (2)
+for reasons why this may be useful.
+.TP
+.B OPEN_TREE_CLONE
+Rather than opening the path as a regular file
+.RB "(a-la " openat (2)),
+create a detached bind-mount mount object and attach it to the file descriptor.
+In order to do this operation,
+the calling process must have the
+.BR CAP_SYS_ADMIN
+capability.
+.TP
+.B AT_RECURSIVE
+Create a recursive bind-mount of the path
+.RB "(a-la " mount "(2) with " MS_BIND | MS_REC ),
+and attach it to the file descriptor.
+This flag is only permitted in conjunction with
+.BR OPEN_TREE_CLONE .
+.SH RETURN VALUE
+On success, a new file descriptor is returned.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EACCES
+Search permission is denied for one of the directories
+in the path prefix of
+.IR pathname .
+(See also
+.BR path_resolution (7).)
+.TP
+.B EPERM
+.I flags
+contains
+.B OPEN_TREE_CLONE
+but the calling process does not have the required
+.B CAP_SYS_ADMIN
+capability.
+.TP
+.B EBADF
+.I pathname
+is relative but
+.I dirfd
+is neither
+.B AT_FDCWD
+nor a valid file descriptor.
+.TP
+.B EFAULT
+.I pathname
+is NULL or a pointer to a location outside the calling process's accessible
+address space.
+.TP
+.B EINVAL
+Invalid flag specified in
+.IR flags .
+.TP
+.B ELOOP
+Too many symbolic links encountered when resolving
+.IR pathname .
+.TP
+.B ENAMETOOLONG
+.I pathname
+is longer than
+.BR PATH_MAX .
+.TP
+.B ENOENT
+A component of
+.I pathname
+does not exist, or is a dangling symbolic link.
+.TP
+.B ENOENT
+.I pathname
+is an empty string, but
+.B AT_EMPTY_PATH
+is not specified in
+.IR flags .
+.TP
+.B ENOTDIR
+A component of the path prefix of
+.I pathname
+is not a directory, or
+.I pathname
+is relative and
+.I dirfd
+is a file descriptor referring to a file other than a directory.
+.TP
+.B ENOSPC
+The "anonymous" mount namespace necessary to contain the
+.B OPEN_TREE_CLONE
+detached bind-mount mount object could not be allocated, as doing so would
+exceed the configured per-user limit on the number of mount namespaces in the
+current user namespace.
+(See also
+.BR namespaces (7).)
+.TP
+.B ENOMEM
+The kernel could not allocate sufficient memory to complete the operation.
+.TP
+.B EMFILE
+The calling process has too many open files to create more.
+.TP
+.B ENFILE
+The system has too many open files to create more.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 5.2.
+.\" commit a07b20004793d8926f78d63eb5980559f7813404
+Glibc 2.36.
+.SH NOTES
+.SS Anonymous Mount Namespaces
+The bind-mount mount objects created by
+.BR open_tree ()
+with
+.B OPEN_TREE_CLONE
+are not attached to the mount namespace of the calling process.
+Instead, each mount object is attached to a newly allocated "anonymous" mount
+namespace associated with the calling process.
+.P
+One of the side-effects of this is that (unlike bind-mounts created with
+.BR mount (2)),
+mount propagation (as described in
+.BR mount_namespaces (7))
+will not be applied to bind-mounts created by
+.BR open_tree ()
+until the bind-mount is attached with
+.BR move_mount (2),
+at which point the mount will be associated with the mount namespace where it
+was mounted and mount propagation will resume.
+.SH EXAMPLES
+The following examples show how
+.BR open_tree ()
+can be used in place of more traditional
+.BR mount (2)
+calls with
+.BR MS_BIND .
+.P
+.in +4n
+.EX
+/* mount --bind /var /mnt */
+int err = mount("/var", "/mnt", NULL, MS_BIND, NULL);
+/* ... is equivalent to ... */
+int srcfd = open_tree(AT_FDCWD, "/var", OPEN_TREE_CLONE);
+int err = move_mount(srcfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH);
+\&
+/* mount --rbind /var /mnt */
+int err = mount("/var", "/mnt", NULL, MS_BIND|MS_REC, NULL);
+/* ... is equivalent to ... */
+int srcfd = open_tree(AT_FDCWD, "/var", OPEN_TREE_CLONE | AT_RECURSIVE);
+int err = move_mount(srcfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH);
+\&
+/* mount --bind /proc/self/fd/100 /proc/self/fd/200/foo */
+int err = mount("/proc/self/fd/100", "/proc/self/fd/200/foo", NULL, MS_BIND, NULL);
+/* ... is equivalent to ... */
+int srcfd = open_tree(100, "", AT_EMPTY_PATH | OPEN_TREE_CLONE);
+int err = move_mount(srcfd, "", 200, "foo", MOVE_MOUNT_F_EMPTY_PATH);
+.EE
+.in
+.P
+In addition, you can use the file descriptor returned by
+.BR open_tree ()
+as the
+.I dirfd
+argument to any "*at()" system calls:
+.P
+.in +4n
+.EX
+int dirfd = open_tree(AT_FDCWD, "/etc", OPEN_TREE_CLONE);
+int fd = openat(dirfd, "passwd", O_RDONLY);
+int err = fchmodat(dirfd, "shadow", 0000, 0);
+close(dirfd);
+close(fd);
+/* The bind-mount is now destroyed. */
+.EE
+.in
+.SH SEE ALSO
+.BR mount (2),
+.BR fsopen (2),
+.BR fsconfig (2),
+.BR fsmount (2),
+.BR fspick (2),
+.BR move_mount (2),
+.BR mount_setattr (2),
+.BR mount_namespaces (7)

-- 
2.50.1


