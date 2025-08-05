Return-Path: <linux-man+bounces-3327-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 961F6B1B876
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B29818A6FC4
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA0CB291C0F;
	Tue,  5 Aug 2025 16:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="dt2HqL2y"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C43A28BABC
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411217; cv=none; b=l9cCtRZOGpUpheibrp5r2pFGm+VFPY/QqYek/363iCxGjX/2btkAIoc2et5h6PGB0S0PAnGlOyU4IKer5KAmYDIsjd2UfLQcKI0wSpPMaDTZ7A/jz1A42XU3Tps6fhZRX0oj8h0hlZfdLdtBx9LYfd7L6Oa/HGhcBNT59zqszAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411217; c=relaxed/simple;
	bh=ragubQ2UQnUxEzTvXd3D4mJIf7O1GqJFAqV+LC/kHvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q2tTkVI7mOUmcwe6fSzst6T1sg/ru6NmZYc4cc7lVB5H0mxC0PT76j+WiTl+HPQ1NA6SZTgjXEgTeTypLRhdu+eMYhkLK47JMlMwyVGPKwLTii0qoPDNM2eBYUkzXN+0Sqx/pizudxF4dAYew6mhtnmqyJHwoxY6B9zxPIWGyGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=dt2HqL2y; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bxJj135Jqz9tHc;
	Tue,  5 Aug 2025 18:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IXC9Kocz2lqf58jRhnShX7ilujdB8VSPORvs0lVY/qE=;
	b=dt2HqL2yp/lnGfJpsuhPwnZGp038sZiAxlll1aUFsEReIP0lKVnZQNhZ+KCreJzO9mkFNL
	o4yc5CEfJ2Hn0ebCs+etvuMm2JKAoUTvQnfpq4L5PeD7nqTyBQ4yxLSIhtiplvSQd0MY8O
	6ZpqXjawxQG/6iRfnjpzuOgr4R/+hvG2d4hmzzFFeYW1bARr3a6EMNugoA7W4ZbF8wmJfH
	A59D8+aZNWDNlZ8r+7B9uRX1ooTnbkb5zMFvK/VK9I2rETKxmGGALBnoiVlulurG3zTGWi
	Cq3aO6SVFjILE4y7sTlNLLQtG0w4UdTcmyLx7o4LFePUdBkGZBHhDA1eYMUKLw==
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:52 +1000
Subject: [PATCH 07/10] move_mount.2: document 'new' mount api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-7-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=14641; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=ragubQ2UQnUxEzTvXd3D4mJIf7O1GqJFAqV+LC/kHvY=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMli0XVlqdjf/dznnS1N47fST9x893LQ1KFfgmeFUo
 XNePj8yOkpZGMS4GGTFFFm2+XmGbpq/+Eryp5VsMHNYmUCGMHBxCsBE9G8zMnzY/cfJ8ejvTYci
 ijcXLXjawbF3m7l1scD+DdOS3gf9VQlh+Kdy8/J3t23yhuYyedyHzsVaNTkV+V7MmJzat9FgWdK
 VIH4A
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
 man/man2/move_mount.2 | 470 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 470 insertions(+)

diff --git a/man/man2/move_mount.2 b/man/man2/move_mount.2
new file mode 100644
index 000000000000..439eb6a5b018
--- /dev/null
+++ b/man/man2/move_mount.2
@@ -0,0 +1,470 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH move_mount 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+move_mount \- move or attach mount object to filesystem
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
+.BI "int move_mount(int " from_dirfd ", const char *" from_pathname ",
+.BI "               int " to_dirfd ", const char *" to_pathname ",
+.BI "               unsigned int " flags ");
+.fi
+.SH DESCRIPTION
+The
+.BR move_mount ()
+system call is part of the suite of file descriptor based mount facilities in
+Linux.
+.P
+.BR move_mount ()
+moves the mount object indicated by
+.IR from_dirfd " and " from_pathname
+to the path indicated by
+.IR to_dirfd " and " to_pathname .
+The mount object being moved could be an existing mount point in the current
+mount namespace, or it could be a detached mount object created by
+.BR fsmount (2)
+or
+.BR open_tree (2)
+with
+.BR OPEN_TREE_CLONE .
+.P
+To access the source mount object or the destination mount point, no permissions
+are required on the object itself, but if either pathname is supplied, execute
+(search) permission is required on all of the directories specified in
+.IR from_pathname " or " to_pathname .
+.P
+The calling process must have the
+.BR CAP_SYS_ADMIN
+capability in order to attach or move a mount object.
+.P
+As with most "*at()" system calls,
+.BR move_mount ()
+uses the
+.IR from_dirfd " and " to_dirfd
+arguments in conjunction with the
+.IR from_pathname " and " to_pathname
+argument to determine the source and destination objects to operate on
+(respectively), as follows:
+.RS
+.IP \[bu] 3
+If the pathname given in
+.IR *_pathname
+is absolute, then the corresponding
+.I *_dirfd
+is ignored.
+.IP \[bu]
+If the pathname given in
+.I *_pathname
+is relative and the corresponding
+.I *_dirfd
+is the special value
+.BR AT_FDCWD ,
+then the
+.I *_pathname
+is interpreted relative to the current working
+directory of the calling process (like
+.BR open ()).
+.IP \[bu]
+If the pathname given in
+.I *_pathname
+is relative, then it is interpreted relative to the directory
+referred to by the corresponding
+.I *_dirfd
+file descriptor (rather than relative to the current working directory of the
+calling process, as is done by
+.BR open ()
+for a relative pathname).
+In this case, the
+.I *_dirfd
+must be a directory that was opened for reading
+.RB ( O_RDONLY )
+or using the
+.B O_PATH
+flag.
+.IP \[bu]
+If
+.I *_pathname
+is an empty string, and
+.I flags
+contains the appropriate
+.BR MOVE_MOUNT_*_EMPTY_PATH
+flag, then the file descriptor referenced by the corresponding
+.I *_dirfd
+is operated on directly.
+In this case,
+.I *_dirfd
+can refer to any type of file, not just a directory.
+.IP
+This is the most common mechanism used to attach detached mount objects to a
+mount point target.
+.RE
+.P
+.I flags
+can be used to control aspects of the path lookup for both the source and
+destination objects, as well as other properties of the mount operation.
+A value for
+.I flags
+is constructed by OR'ing together zero or more of the following constants:
+.RS
+.TP
+.B MOVE_MOUNT_F_EMPTY_PATH
+If
+.I from_pathname
+is an empty string, operate on the file referred to by
+.I from_dirfd
+(which may have been obtained from
+.BR open "(2), " fsmount "(2), or " open_tree "(2).)"
+In this case,
+.I from_dirfd
+can refer to any type of file, not just a directory.
+If
+.I from_dirfd
+is
+.BR AT_FDCWD ,
+the call operates on the current working directory.
+.TP
+.B MOVE_MOUNT_T_EMPTY_PATH
+As with
+.BR MOVE_MOUNT_F_EMPTY_PATH ,
+except operating on
+.IR to_dirfd " and " to_pathname .
+.TP
+.B MOVE_MOUNT_F_SYMLINKS
+If
+.IR from_pathname
+references a symbolic link, then dereference it.
+The default behaviour for
+.BR move_mount ()
+is to
+.I not follow
+symbolic links.
+.TP
+.B MOVE_MOUNT_T_SYMLINKS
+As with
+.BR MOVE_MOUNT_F_SYMLINKS ,
+except operating on
+.IR to_dirfd " and " to_pathname .
+.TP
+.B MOVE_MOUNT_F_NO_AUTOMOUNT
+Don't automount the terminal ("basename") component of
+.I from_pathname
+if it is a directory that is an automount point.
+This allows a mount object that has an automount point at its root to be moved
+and prevents unintended triggering of an automount point.
+This flag has no effect if the automount point has already been mounted over.
+.TP
+.B MOVE_MOUNT_T_NO_AUTOMOUNT
+As with
+.BR MOVE_MOUNT_F_NO_AUTOMOUNT ,
+except operating on
+.IR to_dirfd " and " to_pathname .
+This allows an automount point to be manually mounted over.
+.TP
+.BR MOVE_MOUNT_SET_GROUP " (since Linux 5.15)"
+Add the attached (private) mount indicated by
+.IR to_dirfd " and " to_pathname
+into the mount propagation "peer group" of the attached (non-private) mount
+indicated by
+.IR from_dirfd " and " from_pathname .
+.IP
+Unlike other
+.BR move_mount ()
+operations, this operation does not move any actual mount objects.
+Instead, it only updates the metadata of existing (attached) mount objects.
+.IP
+This makes it possible to first create a mount tree consisting only of private
+mounts and then configuring the desired propagation layout afterwards.
+(See the "SHARED SUBTREES" section of
+.BR mount_namespaces (7)
+for more information about mount propagation and peer groups.)
+.TP
+.BR MOVE_MOUNT_BENEATH " (since Linux 6.5)"
+If the path indicated by
+.IR to_dirfd " and " to_pathname
+is an existing mount object, rather than placing the mount object indicated by
+.IR from_dirfd " and " from_pathname
+on top of the mount stack, place it below the current top mount on the mount
+stack.
+.IP
+After using
+.BR MOVE_MOUNT_BENEATH ,
+it is possible to
+.BR umount (2)
+the top mount in order to reveal the mount which was moved beneath it earlier.
+This allows for the seamless (and atomic) replacement of complex mount trees,
+which can be used to "upgrade" a mount tree with a newer version.
+.IP
+This operation has several restrictions:
+.RS
+.IP \[bu] 3
+Mounts cannot be moved beneath the rootfs, including the rootfs as configured
+by
+.BR chroot "(2) and " pivot_root (2).
+To mount beneath the rootfs,
+.BR pivot_root (2)
+must be used.
+.IP \[bu]
+The target path indicated by
+.IR to_dirfd " and " to_pathname
+must be an attached mount object.
+It must not be a detached mount given by
+.BR open_tree (2)
+with
+.BR OPEN_TREE_CLONE.
+.IP \[bu]
+The current top mount of the target path's mount stack and its parent mount
+must be in the calling process's mount namespace.
+.IP \[bu]
+The caller must have sufficient privileges to unmount the top mount of the
+target path's mount stack, to prove they have privileges to reveal the
+underlying mount.
+.IP \[bu]
+Mount propagation events triggered by this
+.BR move_mount ()
+operation are calculated based on the parent mount of the current top mount of
+the target path's mount stack.
+.IP \[bu]
+The target path's mount cannot be a parent mount of the source mount object.
+.IP \[bu]
+The source mount object must not have any overmounts, otherwise it would be
+possible to create "shadow mounts" (i.e. two mounts mounted on the same parent
+mount at the same mount point).
+.IP \[bu]
+It is not possible to move a mount beneath a top mount if the parent mount of
+the current top mount propagates to the top mount itself.
+Otherwise,
+.B MOVE_MOUNT_BENEATH
+would cause the mount object to be propagated to the top mount from the parent
+mount, defeating the purpose of using
+.BR MOVE_MOUNT_BENEATH .
+.IP \[bu]
+It is not possible to move a mount beneath a top mount if the parent mount of
+the current top mount propagates to the mount object being mounted beneath.
+Otherwise, this would cause a similar propagation issue to the previous point,
+also defeating the purpose of using
+.BR MOVE_MOUNT_BENEATH .
+.RE
+.RE
+.P
+If
+.BR move_mount ()
+is called repeatedly with a file descriptor that refers to a mount object, then
+the object will be attached (or moved) the first time and then moved again and
+again, detaching it from the previous mount point each time.
+.SH RETURN VALUE
+On success,
+.BR move_mount ()
+returns 0.
+On error, \-1 is returned, and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EACCES
+Search permission is denied for one of the directories
+in the path prefix of one of
+.IR from_pathname " or " to_pathname .
+(See also
+.BR path_resolution (7).)
+.TP
+.B EBADF
+One of
+.IR from_dirfd " or " to_dirfd
+is not a valid file descriptor.
+.TP
+.B EFAULT
+One of
+.IR from_pathname " or " to_pathname
+is NULL or a pointer to a location outside the calling process's accessible
+address space.
+.TP
+.B EINVAL
+Invalid flag specified in
+.IR flags .
+.TP
+.B EINVAL
+The path indicated by
+.IR from_dirfd " and " from_pathname
+is not a mount object.
+.TP
+.B EINVAL
+The mount object type of the source mount object and target inode are not
+compatible (i.e. the source is a file but the target is a directory, or
+vice-versa).
+.TP
+.B EINVAL
+The source mount object or target path are not in the calling process's mount
+namespace (or an anonymous mount namespace of the calling process).
+.TP
+.B EINVAL
+The source mount object's parent mount has shared mount propagation, and thus
+cannot be moved (as described in
+.BR mount_namespaces (7)).
+.TP
+.B EINVAL
+The source mount has
+.B MS_UNBINDABLE
+child mounts but the target path resides on a mount with shared mount
+propagation, which would otherwise cause the unbindable mounts to be
+propagated (as described in
+.BR mount_namespaces (7)).
+.TP
+.B EINVAL
+.B MOVE_MOUNT_BENEATH
+was attempted, but one of the listed restrictions was violated.
+.TP
+.B ELOOP
+Too many symbolic links encountered when resolving one of
+.IR from_pathname " or " to_pathname .
+.TP
+.B ENAMETOOLONG
+One of
+.IR from_pathname " or " to_pathname
+is longer than
+.BR PATH_MAX .
+.TP
+.B ENOENT
+A component of one of
+.IR from_pathname " or " to_pathname
+does not exist.
+.TP
+.B ENOENT
+One of
+.IR from_pathname " or " to_pathname
+is an empty string, but the corresponding
+.B MOVE_MOUNT_*_EMPTY_PATH
+flag is not specified in
+.IR flags .
+.TP
+.B ENOTDIR
+A component of the path prefix of one of
+.IR from_pathname " or " to_pathname
+is not a directory, or one of
+.IR from_pathname " or " to_pathname
+is relative and the corresponding
+.IR from_dirfd " or " to_dirfd
+is a file descriptor referring to a file other than a directory.
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
+.\" commit 2db154b3ea8e14b04fee23e3fdfd5e9d17fbc6ae
+Glibc 2.36.
+.SH EXAMPLES
+.BR move_mount ()
+can be used to move attached mounts like the following:
+.P
+.in +4n
+.EX
+move_mount(AT_FDCWD, "/a", AT_FDCWD, "/b", 0);
+.EE
+.in
+.P
+This would move the mount object mounted on "/a" to "/b".
+The above procedure is functionally equivalent to the following mount operation
+using
+.BR mount (2):
+.P
+.in +4n
+.EX
+mount("/a", "/b", NULL, MS_MOVE, NULL);
+.EE
+.in
+.P
+.BR move_mount ()
+can also be used in conjunction with file descriptors returned from
+.BR open_tree "(2) or " open (2):
+.P
+.in +4n
+.EX
+int fd = open_tree(AT_FDCWD, "/mnt", 0); /* or open("/mnt", O_PATH); */
+move_mount(fd, "", AT_FDCWD, "/mnt2", MOVE_MOUNT_F_EMPTY_PATH);
+move_mount(fd, "", AT_FDCWD, "/mnt3", MOVE_MOUNT_F_EMPTY_PATH);
+move_mount(fd, "", AT_FDCWD, "/mnt4", MOVE_MOUNT_F_EMPTY_PATH);
+.EE
+.in
+.P
+This would move the mount object mounted at "/mnt" to "/mnt2", then "/mnt3",
+then "/mnt4".
+.P
+If the source mount object indicated by
+.IR from_dirfd " and " from_pathname
+is a detached mount object,
+.BR move_mount ()
+can be used to attach it to the filesystem:
+.P
+.in +4n
+.EX
+int sfd = fsopen("ext4", FSOPEN_CLOEXEC);
+fsconfig(sfd, FSCONFIG_SET_STRING, "source", "/dev/sda1", 0);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "user_xattr", NULL, 0);
+fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
+int mfd = fsmount(sfd, FSMOUNT_CLOEXEC, MOUNT_ATTR_NODEV);
+move_mount(mfd, "", AT_FDCWD, "/home", MOVE_MOUNT_F_EMPTY_PATH);
+.EE
+.in
+.P
+This creates a new filesystem configuration context for ext4, configures it,
+creates a mount object, and then attaches it to "/home".
+The above procedure is functionally equivalent to the following mount operation
+using
+.BR mount (2):
+.P
+.in +4n
+.EX
+mount("/dev/sda1", "/home", "ext4", MS_NODEV, "user_xattr");
+.EE
+.in
+.P
+This also works with detached bind-mounts created with
+.BR open_tree (2)
+with
+.BR OPEN_TREE_CLONE :
+.P
+.in +4n
+.EX
+int mfd = open_tree(AT_FDCWD, "/home/cyphar", OPEN_TREE_CLONE);
+move_mount(mfd, "", AT_FDCWD, "/root", MOVE_MOUNT_F_EMPTY_PATH);
+.EE
+.in
+.P
+This creates a new detached bind-mount mount object of "/home/cyphar", and then
+attaches it to "/root".
+The above procedure is functionally equivalent to the following mount operation
+using
+.BR mount (2):
+.P
+.in +4n
+.EX
+mount("/home/cyphar", "/root", NULL, MS_BIND, NULL);
+.EE
+.in
+.SH SEE ALSO
+.BR mount (2),
+.BR fsopen (2),
+.BR fsconfig (2),
+.BR fsmount (2),
+.BR fspick (2),
+.BR open_tree (2),
+.BR mount_setattr (2),
+.BR mount_namespaces (7)
+

-- 
2.50.1


