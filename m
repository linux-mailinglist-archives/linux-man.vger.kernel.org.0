Return-Path: <linux-man+bounces-3333-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EE0B1B908
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 19:12:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8FA26164D7C
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 17:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB3CB2741D1;
	Tue,  5 Aug 2025 17:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYAtNpik"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACEE63FE5F
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 17:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754413945; cv=none; b=PHTsJWAUVcRUqskqJqojS+JutbTgjftA1pFhV4rJUb6P2l3gd5M5n2HOslEQ3909NNh7ZNQ/0KeXmPqkliZ9gwkq9kZLqP/1/d9wcPWfBx/iK+2RodABufBY/PTWpY7il+f4HQ5uLM5ncdd5O+XwTHFcJA8fQqlb/GS9GJS5G24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754413945; c=relaxed/simple;
	bh=ZmUet0Y8Cjzu4aZb4fAvQsuPJ2/2ciKFWJ6Wh189qYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QXi7R36+7xva94WQjKTOQoCKaFewHaUkELl4OH3qTJ+E55FSwQKERKVz4Lko+HmkBRW0UD9CXvmrOra+nuL6MfaQQW+6J/+cHflEj40f64WHu7GyjQPBwJ+Hdkm9bYnBI6JdLpqPBncBCgyQR23Ib2QUupeZvMmvMUFbqIqXiyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYAtNpik; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E68D7C4CEF0;
	Tue,  5 Aug 2025 17:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754413945;
	bh=ZmUet0Y8Cjzu4aZb4fAvQsuPJ2/2ciKFWJ6Wh189qYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NYAtNpik21AZgQe2yP/7xwy/W+T8Xjh4fx+86lxQ3Y6MVpAfR9yXQ7SzlbdnJ7wi0
	 M1oLilmZKf0vNGlH8bCBsxdKpHUeYeHumBUIbvU7ZgJbqYwq+i31UWw6z/3ExIiqsm
	 zSyf3i1jqHvw/3SQtCh2k49UJ5H5UiqsJRIdFK123fo1tr7UxXemo1VdzcrEkgEuYk
	 BXh2A+F826HfRU5N83M0NxQEiV04aylAPHZXhfF7dBbYM9mPgQsrFZw887OIXkOmX2
	 W3ETdbSwsp8OItQI/CYwB8jCCMINW5PT9Wwe82XLi39hZ2h+eHkQsQQUnf/DcGXK0O
	 49/oK1TLCuJ8A==
Date: Tue, 5 Aug 2025 19:12:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 03/10] fsopen.2: document 'new' mount api
Message-ID: <p5ays37bbmfviag4ab4piciqtypbdy6v6uvqng4jj2gqbbtlq4@yks2uhxcajak>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7naqs3zjvllf3bgv"
Content-Disposition: inline
In-Reply-To: <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>


--7naqs3zjvllf3bgv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 03/10] fsopen.2: document 'new' mount api
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 02:25:48AM +1000, Aleksa Sarai wrote:
> This is loosely based on the original documentation written by David
> Howells and later maintained by Christian Brauner, but has been
> rewritten to be more from a user perspective (as well as fixing a few
> critical mistakes).
>=20
> Co-developed-by: David Howells <dhowells@redhat.com>
> Co-developed-by: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
>  man/man2/fsopen.2 | 275 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 275 insertions(+)
>=20
> diff --git a/man/man2/fsopen.2 b/man/man2/fsopen.2
> new file mode 100644
> index 000000000000..43a1709ec5b4
> --- /dev/null
> +++ b/man/man2/fsopen.2
> @@ -0,0 +1,275 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH fsopen 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +fsopen \- create a new filesystem context
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <sys/mount.h>"
> +.BR "#include <unistd.h>"
> +.P
> +.BI "int fsopen(const char *" fsname ", unsigned int " flags ");

I tend to not have "name" in the name of parameters that are a string
representing a name.  The rationale is that strings very commonly used
for names, and so "fs" would be just as menaingful, and shorter.

The description would make it obvious that it's the fs name.

> +.fi
> +.SH DESCRIPTION
> +The
> +.BR fsopen ()
> +system call is part of the suite of file descriptor based mount faciliti=
es in
> +Linux.
> +.P
> +.BR fsopen ()
> +creates a blank filesystem configuration context within the kernel for t=
he
> +filesystem named by
> +.IR fsname ,
> +puts the context into creation mode and attaches it to a file descriptor=
, which
> +is then returned.
> +The calling process must have the
> +.BR CAP_SYS_ADMIN

This should be B.  BR is for alternating Bold and Roman (normal).

> +capability in order to create a new filesystem configuration context.
> +.P
> +After obtaining a filesystem configuration context with
> +.BR fsopen (),
> +the general workflow for operating on the context looks like the followi=
ng:
> +.RS
> +.IP 1. 3

Please have a look at man-pages(7) for some conventions on lists in the
project:

$ MANWIDTH=3D72 man man-pages | grep -A6 Ordered.lists
       Ordered lists
              Elements  are  preceded  by  a number in parentheses (1),
              (2).  These represent a set of steps that have an order.

              When there are  substeps,  they  will  be  numbered  like
              (4.2).

So, we'd use

	.IP (1) 5

Which indeed you can find everywhere (I did some consistency cleanups
about this some years ago):

	$ grep -rn 'IP.*(1)'
	man7/user_namespaces.7:417:.IP (1) 5
	man7/user_namespaces.7:607:.IP (1) 5
	man7/boot.7:22:.IP (1) 5
	man7/signal.7:228:.IP (1) 5
	man7/symlink.7:200:.IP (1) 5
	man7/man-pages.7:504:.IP (1) 5
	man7/epoll.7:84:.IP (1) 5
	man7/epoll.7:151:.IP (1) 5
	man7/locale.7:216:.IP (1) 5
	man7/capabilities.7:1274:.IP (1) 5
	man7/keyrings.7:317:.IP (1) 5
	man7/keyrings.7:452:.IP (1) 5
	man7/unix.7:586:.IP (1) 5
	man7/cpuset.7:1395:.IP (1) 5
	man7/cpuset.7:1435:.IP (1) 5
	man7/cgroups.7:1369:.IP (1) 5
	man7/cgroups.7:1425:.IP (1) 5
	man7/pipe.7:372:.IP (1) 5
	man7/uri.7:583:.IP (1) 5
	man2const/FUTEX_LOCK_PI.2const:70:.IP (1) 5
	man5/locale.5:598:.IP (1) 5
	man8/ld.so.8:63:.IP (1) 5
	man8/ld.so.8:472:.IP (1) 5
	man2/delete_module.2:41:.IP (1) 5
	man2/seccomp_unotify.2:76:.IP (1) 5
	man2/seccomp_unotify.2:441:.IP (1) 5
	man2/seccomp_unotify.2:1003:.IP (1) 5
	man2/seccomp_unotify.2:1106:.IP (1) 5
	man2/timerfd_create.2:487:.IP (1) 5
	man2/listen.2:89:.IP (1) 5
	man2/close.2:119:.IP (1) 5
	man2/request_key.2:206:.IP (1) 5
	man2/ptrace.2:2603:.IP (1) 5
	man2/memfd_create.2:261:.IP (1) 5
	man3/dlinfo.3:106:.IP (1) 5
	man3/posix_spawn.3:213:.IP (1) 5
	man3/newlocale.3:210:.IP (1) 5
	man3/tempnam.3:55:.IP (1) 5
	man3/pthread_cancel.3:62:.IP (1) 5
	man4/cciss.4:288:.IP (1) 5
	man4/cciss.4:334:.IP (1) 5
	man4/initrd.4:67:.IP (1) 5
	man4/initrd.4:305:.IP (1) 5

> +Pass the filesystem context file descriptor to
> +.BR fsconfig (2)
> +to specify any desired filesystem parameters.
> +This can be done as many times as necessary.
> +.IP 2.

Similarly, this should be

	.IP (2)

> +Pass the same filesystem context file descriptor to
> +.BR fsconfig (2)
> +with
> +.B FSCONFIG_CMD_CREATE
> +to create an instance of the configured filesystem.
> +.IP 3.
> +Pass the same filesystem context file descriptor to
> +.BR fsmount (2)
> +to create a new mount object for the root of the filesystem, which is th=
en
> +attached to a new file descriptor.
> +.IP 4.
> +Use the mount object file descriptor as a
> +.I dirfd
> +argument to "*at()" system calls; or attach the mount object to a mount =
point
> +by passing the mount object file descriptor to
> +.BR move_mount (2).
> +.RE
> +.P
> +A filesystem configuration context is an in-kernel representation of a p=
ending
> +transaction containing a set of configuration parameters that are to be =
applied
> +when creating a new instance of a filesystem or modifying the configurat=
ion of
> +an existing filesystem instance.
> +The filesystem context will move between different modes throughout its
> +lifecycle (such as the creation phase when created with
> +.BR fsopen (),
> +the reconfiguration phase when an existing filesystem instance is select=
ed by
> +.BR fspick (2),
> +and the needs-mount phase between
> +.BR FSCONFIG_CMD_CREATE
> +and
> +.BR fsmount (2)),
> +which has an impact on what operations are permitted on the filesystem c=
ontext.
> +.P
> +The file descriptor returned by
> +.BR fsopen ()
> +also acts as a channel for filesystems to provide more comprehensive err=
or,
> +warning, and information messages than normally provided using the
> +.BR errno (3)
> +interface.
> +If an error occurs at any time during the workflow mentioned above, call=
ing
> +.BR read (2)
> +on the filesystem context file descriptor will retrieve any ancillary
> +information about the encountered errors.
> +(See the "Message Retrieval Interface" section for more details on the m=
essage
> +format.)
> +.P
> +.I flags
> +can be used to control aspects of the creation of the file configuration
> +context.
> +A value for
> +.I flags
> +is constructed by OR'ing together zero or more of the following constant=
s:
> +.RS
> +.TP
> +.B FSOPEN_CLOEXEC
> +Set the close-on-exec
> +.RB ( FD_CLOEXEC )
> +flag on the new file descriptor.
> +See the description of the
> +.B O_CLOEXEC
> +flag in
> +.BR open (2)
> +for reasons why this may be useful.
> +.RE
> +.P
> +A list of filesystems supported by the running kernel (and thus a list o=
f valid
> +values for
> +.IR fsname )
> +can be obtained from
> +.IR /proc/filesystems .
> +(See also
> +.BR proc_filesystems (5).)
> +.SS Message Retrieval Interface
> +When doing operations on a filesystem configuration context, the filesys=
tem
> +driver may choose to provide ancillary information to userspace in the f=
orm of
> +message strings.
> +.P
> +The filesystem context file descriptors returned by
> +.BR fsopen "() and " fspick (2)
> +may be queried for message strings at any time by calling
> +.BR read (2)
> +on the file descriptor.
> +This will return newline-separated messages that are prefixed to indicat=
e their
> +class:
> +.RS
> +.TP
> +.B "e <message>"
> +An error message was logged.
> +This is usually associated with an error being returned from the corresp=
onding
> +system call which triggered this message.
> +.TP
> +.B "w <message>"
> +A warning message was logged.
> +.TP
> +.B "i <message>"
> +An informational message was logged.
> +.RE
> +.P
> +Messages are removed from the queue as they are read.
> +Note that the message queue has limited depth, so it is possible for mes=
sages
> +to get lost.
> +If there are no messages in the message queue,
> +.B read(2)
> +will return no data.
> +.P
> +If there are multiple filesystem context file descriptors referencing th=
e same
> +filesystem instance (such as if you call
> +.BR fspick (2)
> +multiple times for the same mount), each one gets its own independent me=
ssage
> +queue.
> +This does not apply to file descriptors that were duplicated with
> +.BR dup (2).
> +.P
> +Usually messages will be prefixed by the filesystem driver that logged t=
he
> +message, though this may not always be the case.
> +See the Linux kernel source code for details.
> +.SH RETURN VALUE
> +On success, a new file descriptor is returned.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EFAULT
> +One of the pointer arguments points to a location outside the calling pr=
ocess's
> +accessible address space.
> +.TP
> +.B EINVAL
> +.I flags
> +had an invalid flag set.
> +.TP
> +.B EMFILE
> +The calling process has too many open files to create more.
> +.TP
> +.B ENFILE
> +The system has too many open files to create more.
> +.TP
> +.B ENODEV
> +The filesystem named by
> +.I fsname
> +is not supported by the kernel.
> +.TP
> +.B ENOMEM
> +The kernel could not allocate sufficient memory to complete the operatio=
n.
> +.TP
> +.B EPERM
> +The calling process does not have the required
> +.B CAP_SYS_ADMIN
> +capability.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 5.2.
> +.\" commit 24dcb3d90a1f67fe08c68a004af37df059d74005
> +Glibc 2.36.
> +.SH EXAMPLES
> +To illustrate the workflow for creating a new mount, the following is a =
sample
> +of how to mount an ext4 filesystem stored on "/dev/sdb1" onto "/mnt".
> +.P
> +.in +4n
> +.EX
> +int sfd =3D fsopen("ext4", FSOPEN_CLOEXEC);

'sfd' is common for socket file descriptor.  Shouldn't we use fsfd?

> +fsconfig(sfd, FSCONFIG_SET_FLAG, "ro", NULL, 0);
> +fsconfig(sfd, FSCONFIG_SET_PATH, "source", "/dev/sdb1", AT_FDCWD);
> +fsconfig(sfd, FSCONFIG_SET_FLAG, "noatime", NULL, 0);
> +fsconfig(sfd, FSCONFIG_SET_FLAG, "acl", NULL, 0);
> +fsconfig(sfd, FSCONFIG_SET_FLAG, "user_xattr", NULL, 0);
> +fsconfig(sfd, FSCONFIG_SET_FLAG, "iversion", NULL, 0)
> +fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
> +int mfd =3D fsmount(sfd, FSMOUNT_CLOEXEC, MOUNT_ATTR_RELATIME);

Please separate declarations from code.  And use a blank between them
A blank in the source of an example should be a line containing

	\&


Have a lovely day!
Alex

> +move_mount(mfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH);
> +.EE
> +.in
> +.P
> +First, an ext4 configuration context is created and attached to the file
> +descriptor
> +.IR sfd .
> +Then, a series of parameters (such as the source of the filesystem) are
> +provided using
> +.BR fsconfig (2),
> +followed by the filesystem instance being created with
> +.BR FSCONFIG_CMD_CREATE .
> +.BR fsmount (2)
> +is then used to create a new mount object attached to the file descriptor
> +.IR mfd ,
> +which is then attached to the intended mount point using
> +.BR move_mount (2).
> +.P
> +The above procedure is functionally equivalent to the following mount op=
eration
> +using
> +.BR mount (2):
> +.P
> +.in +4n
> +.EX
> +mount("/dev/sdb1", "/mnt", "ext4", MS_RELATIME,
> +      "ro,noatime,acl,user_xattr,iversion");
> +.EE
> +.in
> +.P
> +And here's an example of creating a mount object of an NFS server share =
and
> +setting a Smack security module label.
> +However, instead of mounting it to a place on the filesystem, the program
> +instead uses the mount object directly to open a file from the NFS share.
> +.P
> +.in +4n
> +.EX
> +int sfd =3D fsopen("nfs", 0);
> +fsconfig(sfd, FSCONFIG_SET_STRING, "source", "example.com/pub/linux", 0);
> +fsconfig(sfd, FSCONFIG_SET_STRING, "nfsvers", "3", 0);
> +fsconfig(sfd, FSCONFIG_SET_STRING, "rsize", "65536", 0);
> +fsconfig(sfd, FSCONFIG_SET_STRING, "wsize", "65536", 0);
> +fsconfig(sfd, FSCONFIG_SET_STRING, "smackfsdef", "foolabel", 0);
> +fsconfig(sfd, FSCONFIG_SET_FLAG, "rdma", NULL, 0);
> +fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
> +int mfd =3D fsmount(sfd, 0, MOUNT_ATTR_NODEV);
> +int fd =3D openat(mfd, "src/linux-5.2.tar.xz", O_RDONLY);
> +.EE
> +.in
> +.P
> +Unlike the previous example, this operation has no trivial equivalent wi=
th
> +.BR mount (2),
> +as it was not previously possible to create a mount object that is not a=
ttached
> +to any mount point.
> +.SH SEE ALSO
> +.BR mount (2),
> +.BR fsconfig (2),
> +.BR fsmount (2),
> +.BR fspick (2),
> +.BR open_tree (2),
> +.BR move_mount (2),
> +.BR mount_setattr (2),
> +.BR mount_namespaces (7)
>=20
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--7naqs3zjvllf3bgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiSO2QACgkQ64mZXMKQ
wqlj1w//e01RMtLCzy92ysZvx+/N6vYhrDayP/Fdk/CZwHEIks7CEVW5gufedtdZ
RTDpiNFMsihOGDtysxufwlVzoxesP6xgxEqezVDQRUafPjgi14lukm9ZfeZog2qB
Rn6YVVdJKbScbMHzCOSeM0PF3uiD1nRPpqId8Yi7LdsUoemXiLburg4ZaajjUQ/2
0E855iYsAbAh+poDv2bP9O2wMdoDl4/4Ua+qpZZrCAssmBhicEylX5CpJSTkltBo
zt3bmrqM879uILv0MR3zmvACErOOmWrJ0tJmSN9QeC/ESQKzzfDRswMg8l7dGZPI
uRefUmYgPKN4VCugKySNnEF+sbQRYsQNtSkFrQCycM0nKZPx9sIKlsP4k/s0sxnu
qKsA152uhH58BjgEQMVDvutNClKbs7W5b7SoCEkepWG5gjrtMii0hX989ovMlv7j
aocToKB7Rex5uRuAhXC0vzKqpcZfw47GyXYlum9pINljBnSLeKyqXZ9l7YtsH2yU
DGfcG3rnuar3Y5lf1Ff8EeHWTSM1cdGxfxsmjNDn6smBXszZdTXMs3Dji9Y1kche
6hsuEJMYfmmygdcc05LZN7c9P+KXBW1pWvwyVfnvAGyzap7VwCbBkIaa5l//Npv6
gLv32fqXTbSRKmzXLe3JM3Iig2IVnGgrr3TXE1V6V+TjL+4qYUQ=
=pUvU
-----END PGP SIGNATURE-----

--7naqs3zjvllf3bgv--

