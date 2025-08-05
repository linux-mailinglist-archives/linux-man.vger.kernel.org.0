Return-Path: <linux-man+bounces-3323-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0F4B1B871
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 18:26:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77DAA7A5DDE
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 16:25:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFECC291C0F;
	Tue,  5 Aug 2025 16:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="okmvOYcH"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C629E72630
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 16:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754411198; cv=none; b=poLFBRlh93uK2EVOjl55WUSQ+GWyMs64X9qjAOEMI2m4W/tPbQSek/4/WAJqFwbzKq8D8+x4Q3XyaxCPF7b7WiVC2HzHRJyYK1g0mkt2JLz/S+nrNc5pVQGLBXtpsGSCXgOK7T3g0uk7Ekh0X/OorGfGyo7xe5zVZd3cPVsYnpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754411198; c=relaxed/simple;
	bh=tU/uF7H3pzjnEFnHvxjQWnkIhEJA1YBE9nba1nZ2D0w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SElmbOP8WIlK4S4+OMzyeOLOaaIx0ZVsnexdgPeK4nnznZaHBBzv1a396vh7bGne+bwwpfEOSypbTv6DF+GvyhIUS3y3idnoAZ2f+i8SzFAgIM1K62V7MlVpLCCqTFWrhJQLl7S91xXsAjiaMsl5eO85oDUcNISN9uV4WjDUQZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=okmvOYcH; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4bxJhn2BtFz9tV5;
	Tue,  5 Aug 2025 18:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754411193;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=I5i+RgTfrlpMON412v0tyjq4cu3Pf9QQNRyoEdnECZo=;
	b=okmvOYcHBM+YwUkeDuQzGJrrY/APdbzfVOzJT365OSvtNnrui49Bkbzj5mtj9jLiM3tV8Z
	f0M7xQyV/N3XYEEtXoJSIm0gIOylX/h3Pt6dBOvpKb6LI53LNLV2GwpGlSCK6RbYmo4uWi
	b979MbAyFjve4gy0KekVtAUKRfxc5dqY7iI7IuWzHcDNt7r6W/OwR7uWlSDD5/4GZNxMQB
	3ECuV8s/UIL8dXnu7ogpFshOcFEHnvvWVZLHO21oB5umtOZGpAjL6k9jNu6+yPazj9WTur
	LtKF10vVhmtjj5t9KJZCDLinUctWczPLfzpxycTERkfkB4ZpvOz+rnHdUQSMog==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Wed, 06 Aug 2025 02:25:49 +1000
Subject: [PATCH 04/10] fspick.2: document 'new' mount api
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
In-Reply-To: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
 linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
 Christian Brauner <brauner@kernel.org>, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=7320; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=tU/uF7H3pzjnEFnHvxjQWnkIhEJA1YBE9nba1nZ2D0w=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWRMMli4STKhSPy19zxvAwmmheWf5teaT1Y9WDh1ruK+f
 7vc7T5e6ShlYRDjYpAVU2TZ5ucZumn+4ivJn1aywcxhZQIZwsDFKQAT+WbG8N9p8uoIqZwbRd06
 T3SWWC6etVOsuS1iJc+dV3M9PHsP7PJl+B8uEDH3nNwZjocRHW9Z7oemuV7WUA195bFv3cIox7N
 lSfwA
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386
X-Rspamd-Queue-Id: 4bxJhn2BtFz9tV5

This is loosely based on the original documentation written by David
Howells and later maintained by Christian Brauner, but has been
rewritten to be more from a user perspective (as well as fixing a few
critical mistakes).

Co-developed-by: David Howells <dhowells@redhat.com>
Co-developed-by: Christian Brauner <brauner@kernel.org>
Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/fspick.2 | 274 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 274 insertions(+)

diff --git a/man/man2/fspick.2 b/man/man2/fspick.2
new file mode 100644
index 000000000000..a1e769a8935a
--- /dev/null
+++ b/man/man2/fspick.2
@@ -0,0 +1,274 @@
+.\" Copyright, the authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH fspick 2 (date) "Linux man-pages (unreleased)"
+.SH NAME
+fspick \- select filesystem for reconfiguration
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
+.BI "int fspick(int " dirfd ", const char *" pathname ", unsigned int " flags ");
+.fi
+.SH DESCRIPTION
+The
+.BR fspick ()
+system call is part of the suite of file descriptor based mount facilities in
+Linux.
+.P
+.BR fspick()
+creates a new filesystem configuration context for the filesystem instance
+associated with the path described by
+.IR dirfd " and " pathname ,
+places it into reconfiguration mode (similar to
+.BR mount (8)
+with the "-o remount" option), and attaches it to a new file descriptor, which
+is then returned.
+The calling process must have the
+.BR CAP_SYS_ADMIN
+capability in order to create a new filesystem configuration context.
+.P
+The resultant file descriptor can be used with
+.BR fsconfig (2)
+to specify the desired set of changes to mount parameters of the filesystem
+instance.
+Once the desired set of changes have been configured, the changes can be
+effectuated by calling
+.BR fsconfig (2)
+with the
+.B FSCONFIG_CMD_RECONFIGURE
+command.
+.P
+As with most "*at()" system calls,
+.BR fspick ()
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
+.BR FSPICK_EMPTY_PATH ,
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
+.B FSPICK_CLOEXEC
+Set the close-on-exec
+.RB ( FD_CLOEXEC )
+flag on the new file descriptor.
+See the description of the
+.B O_CLOEXEC
+flag in
+.BR open (2)
+for reasons why this may be useful.
+.TP
+.B FSPICK_EMPTY_PATH
+If
+.I pathname
+is an empty string, operate on the file referred to by
+.I dirfd
+(which may have been obtained from
+.BR open "(2), " fsmount "(2), or " open_tree "(2).)"
+In this case,
+.I dirfd
+can refer to any type of file, not just a directory.
+If
+.I dirfd
+is
+.BR AT_FDCWD ,
+the call operates on the current working directory.
+.TP
+.B FSPICK_SYMLINK_NOFOLLOW
+Do not follow symbolic links in the terminal component of
+.IR pathname .
+If
+.I pathname
+references a symbolic link, the returned filesystem context will reference the
+filesystem that the symbolic link itself resides on.
+.TP
+.B FSPICK_NO_AUTOMOUNT
+Do not follow automounts in the terminal component of
+.IR pathname .
+.RE
+.P
+As with filesystem contexts created with
+.BR fsopen (2),
+the file descriptor returned by
+.BR fspick ()
+may be queried for message strings at any time by calling
+.BR read (2)
+on the file descriptor.
+(See the "Message Retrieval Interface" subsection in
+.BR fsopen (2)
+for more details on the message format.)
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
+.B FSPICK_EMPTY_PATH
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
+.B ENOMEM
+The kernel could not allocate sufficient memory to complete the operation.
+.TP
+.B EMFILE
+The calling process has too many open files to create more.
+.TP
+.B ENFILE
+The system has too many open files to create more.
+.TP
+.B EPERM
+The calling process does not have the required
+.B CAP_SYS_ADMIN
+capability.
+.SH STANDARDS
+Linux.
+.SH HISTORY
+Linux 5.2.
+.\" commit cf3cba4a429be43e5527a3f78859b1bfd9ebc5fb
+Glibc 2.36.
+.SH EXAMPLES
+The following example sets the read-only superblock flag on "/tmp".
+.P
+.in +4n
+.EX
+int sfd = fspick(AT_FDCWD, "/tmp", FSPICK_CLOEXEC);
+fsconfig(sfd, FSCONFIG_SET_FLAG, "ro", NULL, 0);
+fsconfig(sfd, FSCONFIG_CMD_RECONFIGURE, NULL, NULL, 0);
+.EE
+.in
+.P
+The above procedure is functionally equivalent to the following mount operation
+using
+.BR mount (2):
+.P
+.in +4n
+.EX
+mount(NULL, "/tmp", NULL, MS_REMOUNT | MS_RDONLY, NULL);
+.EE
+.in
+.SH SEE ALSO
+.BR mount (2),
+.BR fsopen (2),
+.BR fsconfig (2),
+.BR fsmount (2),
+.BR open_tree (2),
+.BR move_mount (2),
+.BR mount_setattr (2),
+.BR mount_namespaces (7)
+

-- 
2.50.1


