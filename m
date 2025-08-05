Return-Path: <linux-man+bounces-3334-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6393B1B928
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 19:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C5B718901FD
	for <lists+linux-man@lfdr.de>; Tue,  5 Aug 2025 17:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 522511DE4E5;
	Tue,  5 Aug 2025 17:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TR+HQjG0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A9628980A
	for <linux-man@vger.kernel.org>; Tue,  5 Aug 2025 17:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754414324; cv=none; b=HpNhbA0av4QTOSMHn+5fdTiWFjbILpoPk8X+lfpOacPiUACEgyI70dUMa4sbaA1wo+gjgrQ7/wwkjjIo/mZfhiXat4Bk8k6ub4ZvaKKC7Gn5FTQjaDztvYFwwi7QLeMJWGXgZjiyZCNJId8uM9fY3NkpHTh136w2JPXUjoEO7ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754414324; c=relaxed/simple;
	bh=3VP1ErVe+1aWNkS7fyoSZRwOzbCKB1HEIk7ZVrB11kQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OE/gzElgSyZmhlM248tQxzxXhfLxaamyNJ33Ru4CIrb59Nu/8jCtx44Ch4SyAG6YL3m873uZz/wlNQZo2GYccSjhlDU1BGEXSaGUZAucs/oe1uHRsiZBW3ZysiIfoSmW7Xiv0LRwQz44vxWYzLod19j8KlgnGDvsbMaLjUdcQIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TR+HQjG0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6252DC4CEF0;
	Tue,  5 Aug 2025 17:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754414323;
	bh=3VP1ErVe+1aWNkS7fyoSZRwOzbCKB1HEIk7ZVrB11kQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TR+HQjG0R6Pa+A4V9H3uheTSO/gUVwKU3nyg5dpIxVksDz/d+vrGd/6l1wQr3puQS
	 ty6KeqwEBnLkOW0P6Xdm1k7IgTdl3Nm890EWcb4CRuY5RIGRvmQ8ZDdY8p2RhbnOIx
	 nrtoOSAE+UHa+hxnTyxq+LY2mciF9mtqifbuI45XXghIUKbqBgcs2PN+WDEC4oUadx
	 R8OCjxo5oJX5xcXh73FJVDgbNFSTdT9uThd3rUCWnQLVpDMMB8usscBZmf5nHdvBu6
	 t2Kxx+KHRNxWN7jHwKcXB9jZ3SAFnysQrwWpjTBN8g7iArAc6PNsgK+sPTEYeuipna
	 +AgEzd3lTXg7w==
Date: Tue, 5 Aug 2025 19:18:37 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 04/10] fspick.2: document 'new' mount api
Message-ID: <3c5w3tlfg6qrwxospp674ctytxgpeg5mnt2pil7twpfqsiu6n3@omnvbjjyyzxd>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f3qlhv32jcll4zcm"
Content-Disposition: inline
In-Reply-To: <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>


--f3qlhv32jcll4zcm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 04/10] fspick.2: document 'new' mount api
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 02:25:49AM +1000, Aleksa Sarai wrote:
> This is loosely based on the original documentation written by David
> Howells and later maintained by Christian Brauner, but has been
> rewritten to be more from a user perspective (as well as fixing a few
> critical mistakes).
>=20
> Co-developed-by: David Howells <dhowells@redhat.com>
> Co-developed-by: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> ---
>  man/man2/fspick.2 | 274 ++++++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  1 file changed, 274 insertions(+)
>=20
> diff --git a/man/man2/fspick.2 b/man/man2/fspick.2
> new file mode 100644
> index 000000000000..a1e769a8935a
> --- /dev/null
> +++ b/man/man2/fspick.2
> @@ -0,0 +1,274 @@
> +.\" Copyright, the authors of the Linux man-pages project
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH fspick 2 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +fspick \- select filesystem for reconfiguration
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.B #define _GNU_SOURCE
> +.BR "#include <sys/mount.h>"
> +.BR "#include <unistd.h>"
> +.BR "#include <fcntl.h>" \
> +"          /* Definition of " AT_* " constants */"

Please reduce the amount of space so that it fits in a single source
line (if possible).  But use at least two spaces (if possible).

> +.P
> +.BI "int fspick(int " dirfd ", const char *" pathname ", unsigned int " =
flags ");

Please use 'path' instead of 'pathname' for parameter names.  It's
shorter, and conveys essentially the same information.  I did some
consistency fixes about it recently.  See:

	$ git log -1 a239bc4520d6
	commit a239bc4520d6cb8b4d217510c22eddd7c3fd5d10
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Jan 15 20:41:01 2025 +0100

	    man/: Consistently use 'path' for parameters referring to pathnames
	   =20
	    And use 'pathname' in the descriptions.
	   =20
	    'pathname' is the POSIXly correct term, and 'path' is a reasonable
	    abbreviation for it in parameter names.
	   =20
	    Cc: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

Please have a look at the diff in that commit if you have doubts.

> +.fi
> +.SH DESCRIPTION
> +The
> +.BR fspick ()
> +system call is part of the suite of file descriptor based mount faciliti=
es in
> +Linux.
> +.P
> +.BR fspick()
> +creates a new filesystem configuration context for the filesystem instan=
ce
> +associated with the path described by
> +.IR dirfd " and " pathname ,

Please don't put more than one identifier in a source line:

	.I dirfd
	and
	.IR pathname ,

> +places it into reconfiguration mode (similar to
> +.BR mount (8)
> +with the "-o remount" option), and attaches it to a new file descriptor,=
 which
> +is then returned.
> +The calling process must have the
> +.BR CAP_SYS_ADMIN

s/BR/B/

BTW, you can use 'make -R -j4 lint-man' to lint some of these yourself
(depending on how recent your system is).  Please have a look at
'make -R help' to see what dependencies you need for that.

> +capability in order to create a new filesystem configuration context.
> +.P
> +The resultant file descriptor can be used with
> +.BR fsconfig (2)
> +to specify the desired set of changes to mount parameters of the filesys=
tem
> +instance.
> +Once the desired set of changes have been configured, the changes can be
> +effectuated by calling
> +.BR fsconfig (2)
> +with the
> +.B FSCONFIG_CMD_RECONFIGURE
> +command.
> +.P
> +As with most "*at()" system calls,
> +.BR fspick ()
> +uses the
> +.I dirfd
> +argument in conjunction with the
> +.I pathname
> +argument to determine the path to operate on, as follows:
> +.RS
> +.IP \[bu] 3
> +If the pathname given in
> +.I pathname
> +is absolute, then
> +.I dirfd
> +is ignored.
> +.IP \[bu]
> +If the pathname given in
> +.I pathname
> +is relative and
> +.I dirfd
> +is the special value
> +.BR AT_FDCWD ,
> +then
> +.I pathname
> +is interpreted relative to the current working
> +directory of the calling process (like
> +.BR open ()).
> +.IP \[bu]
> +If the pathname given in
> +.I pathname
> +is relative, then it is interpreted relative to the directory
> +referred to by the file descriptor
> +.I dirfd
> +(rather than relative to the current working directory of
> +the calling process, as is done by
> +.BR open ()
> +for a relative pathname).
> +In this case,
> +.I dirfd
> +must be a directory that was opened for reading
> +.RB ( O_RDONLY )
> +or using the
> +.B O_PATH
> +flag.
> +.IP \[bu]
> +If
> +.I pathname
> +is an empty string, and
> +.I flags
> +contains
> +.BR FSPICK_EMPTY_PATH ,
> +then the file descriptor referenced by
> +.I dirfd
> +is operated on directly.
> +In this case,
> +.I dirfd
> +can refer to any type of file, not just a directory.
> +.RE
> +.P
> +.I flags
> +can be used to control aspects of the path lookup and properties of the
> +returned file descriptor.
> +A value for
> +.I flags
> +is constructed by OR'ing together zero or more of the following constant=
s:
> +.RS
> +.TP
> +.B FSPICK_CLOEXEC
> +Set the close-on-exec
> +.RB ( FD_CLOEXEC )
> +flag on the new file descriptor.
> +See the description of the
> +.B O_CLOEXEC
> +flag in
> +.BR open (2)
> +for reasons why this may be useful.
> +.TP
> +.B FSPICK_EMPTY_PATH
> +If
> +.I pathname
> +is an empty string, operate on the file referred to by
> +.I dirfd
> +(which may have been obtained from
> +.BR open "(2), " fsmount "(2), or " open_tree "(2).)"

One function per line.

> +In this case,
> +.I dirfd
> +can refer to any type of file, not just a directory.
> +If
> +.I dirfd
> +is
> +.BR AT_FDCWD ,
> +the call operates on the current working directory.
> +.TP
> +.B FSPICK_SYMLINK_NOFOLLOW
> +Do not follow symbolic links in the terminal component of
> +.IR pathname .
> +If
> +.I pathname
> +references a symbolic link, the returned filesystem context will referen=
ce the
> +filesystem that the symbolic link itself resides on.
> +.TP
> +.B FSPICK_NO_AUTOMOUNT
> +Do not follow automounts in the terminal component of
> +.IR pathname .
> +.RE
> +.P
> +As with filesystem contexts created with
> +.BR fsopen (2),
> +the file descriptor returned by
> +.BR fspick ()
> +may be queried for message strings at any time by calling
> +.BR read (2)
> +on the file descriptor.
> +(See the "Message Retrieval Interface" subsection in
> +.BR fsopen (2)
> +for more details on the message format.)
> +.SH RETURN VALUE
> +On success, a new file descriptor is returned.
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EACCES
> +Search permission is denied for one of the directories
> +in the path prefix of
> +.IR pathname .
> +(See also
> +.BR path_resolution (7).)
> +.TP
> +.B EBADF
> +.I pathname
> +is relative but
> +.I dirfd
> +is neither
> +.B AT_FDCWD
> +nor a valid file descriptor.
> +.TP
> +.B EFAULT
> +.I pathname
> +is NULL or a pointer to a location outside the calling process's accessi=
ble
> +address space.

In a lot of places, please use semantic newlines.  See man-pages(7).


Have a lovely day!
Alex

> +.TP
> +.B EINVAL
> +Invalid flag specified in
> +.IR flags .
> +.TP
> +.B ELOOP
> +Too many symbolic links encountered when resolving
> +.IR pathname .
> +.TP
> +.B ENAMETOOLONG
> +.I pathname
> +is longer than
> +.BR PATH_MAX .
> +.TP
> +.B ENOENT
> +A component of
> +.I pathname
> +does not exist, or is a dangling symbolic link.
> +.TP
> +.B ENOENT
> +.I pathname
> +is an empty string, but
> +.B FSPICK_EMPTY_PATH
> +is not specified in
> +.IR flags .
> +.TP
> +.B ENOTDIR
> +A component of the path prefix of
> +.I pathname
> +is not a directory, or
> +.I pathname
> +is relative and
> +.I dirfd
> +is a file descriptor referring to a file other than a directory.
> +.TP
> +.B ENOMEM
> +The kernel could not allocate sufficient memory to complete the operatio=
n.
> +.TP
> +.B EMFILE
> +The calling process has too many open files to create more.
> +.TP
> +.B ENFILE
> +The system has too many open files to create more.
> +.TP
> +.B EPERM
> +The calling process does not have the required
> +.B CAP_SYS_ADMIN
> +capability.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 5.2.
> +.\" commit cf3cba4a429be43e5527a3f78859b1bfd9ebc5fb
> +Glibc 2.36.
> +.SH EXAMPLES
> +The following example sets the read-only superblock flag on "/tmp".
> +.P
> +.in +4n
> +.EX
> +int sfd =3D fspick(AT_FDCWD, "/tmp", FSPICK_CLOEXEC);
> +fsconfig(sfd, FSCONFIG_SET_FLAG, "ro", NULL, 0);
> +fsconfig(sfd, FSCONFIG_CMD_RECONFIGURE, NULL, NULL, 0);
> +.EE
> +.in
> +.P
> +The above procedure is functionally equivalent to the following mount op=
eration
> +using
> +.BR mount (2):
> +.P
> +.in +4n
> +.EX
> +mount(NULL, "/tmp", NULL, MS_REMOUNT | MS_RDONLY, NULL);
> +.EE
> +.in
> +.SH SEE ALSO
> +.BR mount (2),
> +.BR fsopen (2),
> +.BR fsconfig (2),
> +.BR fsmount (2),
> +.BR open_tree (2),
> +.BR move_mount (2),
> +.BR mount_setattr (2),
> +.BR mount_namespaces (7)
> +
>=20
> --=20
> 2.50.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--f3qlhv32jcll4zcm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiSPO0ACgkQ64mZXMKQ
wqlnXhAArSQwnTTCMicFTnCY8LCkh2MZtdiqPZ6b1xuXnisdoC1/nNyA7b5qZipY
SRssz2DttI2dvuI2z8mN/YpHdCWXokNxjw1PdJRJZnVkTsw0JORcMpjAooeO9aX3
hscaLX/E2x3oPwNMvyKg32mq7SoZS297Lt8Q1ExoVkTNHAwHK1v88jt5q13nVDKd
/y1VYKz2oH2dH0WUJOW22wkiKfrkf1WCsBIS3eMj/W0JytNk6eg28IzyS/3DCb7A
TAhEkwqsp8NWtMKJq2pvGN7CNGMwqSRDk5udESfj/2CGeRLR67244nAgupolsGto
uFlxL/024pe6A+RpVvznTk+/eXwEwD7KwxkD7SDuaFkAAPm9J9SY4dw2cHO6JVKz
5Z7BFTLs0rmnSgfUn2mHmruchLdw9ejAtTs2cEfNDClLBKHVDFwp9HDL0eowYLsa
puvQMglGOqx6w/Bsp5BO5D6TbG/mOmYq8P2/fDHNB64ounA3PZlTAOQ/bRi9qCoV
U9X42Rv4rMPKeDBSo5VBcNIVochZA2uzxbsrpm87n/wkvNWFSdSH1V1aQBb9b08k
GyGJZHq02sBJIxCdTB1sL4VLs/dxrvwIDVxfqyTPFZoaWkTMsQ28L7Woz05pFvyJ
ZFS8lNLeMZwVboiUOccGS49cX2b547ENPUxtFkrKq0hSAcx7+cg=
=eIVE
-----END PGP SIGNATURE-----

--f3qlhv32jcll4zcm--

