Return-Path: <linux-man+bounces-3338-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1669B1BEE1
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 04:47:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4ECA33AC372
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 02:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38E8AAD2C;
	Wed,  6 Aug 2025 02:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="m9JhM/Mr"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CF0ADF59
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 02:47:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754448424; cv=none; b=iuVaJR0vTEMvKl1FZIGzHsHUXF9CAMYBZDg0yr7xKImaM3ZEfYCipCSAaVzZ6b1l+0p/xThonIOWSxePUXIspUdLzwVNYE/mm+vkCDzytBprjuRpBKP4w82VORAwsQTuJ9ZHiK0kvT9mdgpRdSSIkrK3tsXno4VUn7XM+Ldagew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754448424; c=relaxed/simple;
	bh=rev9EI13MovknKiM2E2SLO5w1fe6asgdsUs2lZC3Qa4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tUh11tf1mRFpciMqzAHtDTqd4DiQQXupMlhUs6NDP30fbnEUEfE49pMkXGOspS6wqiNKo9SOMN9GqMdhXgu4Vk/y3qsqf1HZQledKV2FY4Y8jWKO1MB86lfTC4kT5my0Di4XpQOQB8ANRVWlm+rBdW8Dr6o/Rgabzc8j5EedfeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=m9JhM/Mr; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp102.mailbox.org (smtp102.mailbox.org [10.196.197.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bxZSd23Y2z9tLX;
	Wed,  6 Aug 2025 04:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754448417;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sdGoTXf6dqlK2u08R4jZB7IB/TRJlOfMxzRqP7b314k=;
	b=m9JhM/Mr6I84f47hO9uKcdCTiVZiLWmIukAERaUkdJxzIYhI0ba569eIulMAWmEeDx6kf/
	RV5OxV3izt0IBsGS8chDmNDGOfinvaDYu/JUxiTKl+5SXqG+jRmW+d95ZUCMr3qQyjZ2PG
	xSTerx+JlCXj1cvujPv+LOZ49hIrHagZKXAvi2RfsM42mKFwtk6rw35z/95KK/GAlihgWQ
	MrTj1jsXOHHd04YQoaQfpQOJN5sCLO1z8XmdTLwfog7h1GsqELsWemHx/grxXU2Nu7qlgd
	v5OoTMOnC7SF7NqPfgb3LVaylYncpogXHoy6ef/fPqt7zWxhMQ7V8TE6QLpneA==
Date: Wed, 6 Aug 2025 12:46:46 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 04/10] fspick.2: document 'new' mount api
Message-ID: <2025-08-06.1754447905-bouncing-virtue-musky-captains-married-souls-wZ7bdy@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>
 <3c5w3tlfg6qrwxospp674ctytxgpeg5mnt2pil7twpfqsiu6n3@omnvbjjyyzxd>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vbvrtqhvgclcx7gd"
Content-Disposition: inline
In-Reply-To: <3c5w3tlfg6qrwxospp674ctytxgpeg5mnt2pil7twpfqsiu6n3@omnvbjjyyzxd>


--vbvrtqhvgclcx7gd
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 04/10] fspick.2: document 'new' mount api
MIME-Version: 1.0

On 2025-08-05, Alejandro Colomar <alx@kernel.org> wrote:
> Hi Aleksa,
>=20
> On Wed, Aug 06, 2025 at 02:25:49AM +1000, Aleksa Sarai wrote:
> > This is loosely based on the original documentation written by David
> > Howells and later maintained by Christian Brauner, but has been
> > rewritten to be more from a user perspective (as well as fixing a few
> > critical mistakes).
> >=20
> > Co-developed-by: David Howells <dhowells@redhat.com>
> > Co-developed-by: Christian Brauner <brauner@kernel.org>
> > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> > ---
> >  man/man2/fspick.2 | 274 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 274 insertions(+)
> >=20
> > diff --git a/man/man2/fspick.2 b/man/man2/fspick.2
> > new file mode 100644
> > index 000000000000..a1e769a8935a
> > --- /dev/null
> > +++ b/man/man2/fspick.2
> > @@ -0,0 +1,274 @@
> > +.\" Copyright, the authors of the Linux man-pages project
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH fspick 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +fspick \- select filesystem for reconfiguration
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ,\~ \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.B #define _GNU_SOURCE
> > +.BR "#include <sys/mount.h>"
> > +.BR "#include <unistd.h>"
> > +.BR "#include <fcntl.h>" \
> > +"          /* Definition of " AT_* " constants */"
>=20
> Please reduce the amount of space so that it fits in a single source
> line (if possible).  But use at least two spaces (if possible).
>=20
> > +.P
> > +.BI "int fspick(int " dirfd ", const char *" pathname ", unsigned int =
" flags ");
>=20
> Please use 'path' instead of 'pathname' for parameter names.  It's
> shorter, and conveys essentially the same information.  I did some
> consistency fixes about it recently.  See:

Oh, I actually changed it from 'path' to 'pathname' to match some of the
other "*at()" man pages but it seems the man pages on my machine are
=66rom before some of these reworks you've mentioned...

> 	$ git log -1 a239bc4520d6
> 	commit a239bc4520d6cb8b4d217510c22eddd7c3fd5d10
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Wed Jan 15 20:41:01 2025 +0100
>=20
> 	    man/: Consistently use 'path' for parameters referring to pathnames
> 	   =20
> 	    And use 'pathname' in the descriptions.
> 	   =20
> 	    'pathname' is the POSIXly correct term, and 'path' is a reasonable
> 	    abbreviation for it in parameter names.
> 	   =20
> 	    Cc: "G. Branden Robinson" <branden@debian.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> Please have a look at the diff in that commit if you have doubts.
>=20
> > +.fi
> > +.SH DESCRIPTION
> > +The
> > +.BR fspick ()
> > +system call is part of the suite of file descriptor based mount facili=
ties in
> > +Linux.
> > +.P
> > +.BR fspick()
> > +creates a new filesystem configuration context for the filesystem inst=
ance
> > +associated with the path described by
> > +.IR dirfd " and " pathname ,
>=20
> Please don't put more than one identifier in a source line:
>=20
> 	.I dirfd
> 	and
> 	.IR pathname ,
>=20
> > +places it into reconfiguration mode (similar to
> > +.BR mount (8)
> > +with the "-o remount" option), and attaches it to a new file descripto=
r, which
> > +is then returned.
> > +The calling process must have the
> > +.BR CAP_SYS_ADMIN
>=20
> s/BR/B/
>=20
> BTW, you can use 'make -R -j4 lint-man' to lint some of these yourself
> (depending on how recent your system is).  Please have a look at
> 'make -R help' to see what dependencies you need for that.
>=20
> > +capability in order to create a new filesystem configuration context.
> > +.P
> > +The resultant file descriptor can be used with
> > +.BR fsconfig (2)
> > +to specify the desired set of changes to mount parameters of the files=
ystem
> > +instance.
> > +Once the desired set of changes have been configured, the changes can =
be
> > +effectuated by calling
> > +.BR fsconfig (2)
> > +with the
> > +.B FSCONFIG_CMD_RECONFIGURE
> > +command.
> > +.P
> > +As with most "*at()" system calls,
> > +.BR fspick ()
> > +uses the
> > +.I dirfd
> > +argument in conjunction with the
> > +.I pathname
> > +argument to determine the path to operate on, as follows:
> > +.RS
> > +.IP \[bu] 3
> > +If the pathname given in
> > +.I pathname
> > +is absolute, then
> > +.I dirfd
> > +is ignored.
> > +.IP \[bu]
> > +If the pathname given in
> > +.I pathname
> > +is relative and
> > +.I dirfd
> > +is the special value
> > +.BR AT_FDCWD ,
> > +then
> > +.I pathname
> > +is interpreted relative to the current working
> > +directory of the calling process (like
> > +.BR open ()).
> > +.IP \[bu]
> > +If the pathname given in
> > +.I pathname
> > +is relative, then it is interpreted relative to the directory
> > +referred to by the file descriptor
> > +.I dirfd
> > +(rather than relative to the current working directory of
> > +the calling process, as is done by
> > +.BR open ()
> > +for a relative pathname).
> > +In this case,
> > +.I dirfd
> > +must be a directory that was opened for reading
> > +.RB ( O_RDONLY )
> > +or using the
> > +.B O_PATH
> > +flag.
> > +.IP \[bu]
> > +If
> > +.I pathname
> > +is an empty string, and
> > +.I flags
> > +contains
> > +.BR FSPICK_EMPTY_PATH ,
> > +then the file descriptor referenced by
> > +.I dirfd
> > +is operated on directly.
> > +In this case,
> > +.I dirfd
> > +can refer to any type of file, not just a directory.
> > +.RE
> > +.P
> > +.I flags
> > +can be used to control aspects of the path lookup and properties of the
> > +returned file descriptor.
> > +A value for
> > +.I flags
> > +is constructed by OR'ing together zero or more of the following consta=
nts:
> > +.RS
> > +.TP
> > +.B FSPICK_CLOEXEC
> > +Set the close-on-exec
> > +.RB ( FD_CLOEXEC )
> > +flag on the new file descriptor.
> > +See the description of the
> > +.B O_CLOEXEC
> > +flag in
> > +.BR open (2)
> > +for reasons why this may be useful.
> > +.TP
> > +.B FSPICK_EMPTY_PATH
> > +If
> > +.I pathname
> > +is an empty string, operate on the file referred to by
> > +.I dirfd
> > +(which may have been obtained from
> > +.BR open "(2), " fsmount "(2), or " open_tree "(2).)"
>=20
> One function per line.
>=20
> > +In this case,
> > +.I dirfd
> > +can refer to any type of file, not just a directory.
> > +If
> > +.I dirfd
> > +is
> > +.BR AT_FDCWD ,
> > +the call operates on the current working directory.
> > +.TP
> > +.B FSPICK_SYMLINK_NOFOLLOW
> > +Do not follow symbolic links in the terminal component of
> > +.IR pathname .
> > +If
> > +.I pathname
> > +references a symbolic link, the returned filesystem context will refer=
ence the
> > +filesystem that the symbolic link itself resides on.
> > +.TP
> > +.B FSPICK_NO_AUTOMOUNT
> > +Do not follow automounts in the terminal component of
> > +.IR pathname .
> > +.RE
> > +.P
> > +As with filesystem contexts created with
> > +.BR fsopen (2),
> > +the file descriptor returned by
> > +.BR fspick ()
> > +may be queried for message strings at any time by calling
> > +.BR read (2)
> > +on the file descriptor.
> > +(See the "Message Retrieval Interface" subsection in
> > +.BR fsopen (2)
> > +for more details on the message format.)
> > +.SH RETURN VALUE
> > +On success, a new file descriptor is returned.
> > +On error, \-1 is returned, and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EACCES
> > +Search permission is denied for one of the directories
> > +in the path prefix of
> > +.IR pathname .
> > +(See also
> > +.BR path_resolution (7).)
> > +.TP
> > +.B EBADF
> > +.I pathname
> > +is relative but
> > +.I dirfd
> > +is neither
> > +.B AT_FDCWD
> > +nor a valid file descriptor.
> > +.TP
> > +.B EFAULT
> > +.I pathname
> > +is NULL or a pointer to a location outside the calling process's acces=
sible
> > +address space.
>=20
> In a lot of places, please use semantic newlines.  See man-pages(7).

In this particular case, where would you want a newline inserted? I
do somewhat understand wanting a newline after commas, but I don't see
which clause you would want to be split. Something like this?

=2EB EFAULT
=2EI pathname
is NULL
or a pointer
to a location outside the calling process's accessible address space?

=2E..?

Thanks.

> Have a lovely day!
> Alex
>=20
> > +.TP
> > +.B EINVAL
> > +Invalid flag specified in
> > +.IR flags .
> > +.TP
> > +.B ELOOP
> > +Too many symbolic links encountered when resolving
> > +.IR pathname .
> > +.TP
> > +.B ENAMETOOLONG
> > +.I pathname
> > +is longer than
> > +.BR PATH_MAX .
> > +.TP
> > +.B ENOENT
> > +A component of
> > +.I pathname
> > +does not exist, or is a dangling symbolic link.
> > +.TP
> > +.B ENOENT
> > +.I pathname
> > +is an empty string, but
> > +.B FSPICK_EMPTY_PATH
> > +is not specified in
> > +.IR flags .
> > +.TP
> > +.B ENOTDIR
> > +A component of the path prefix of
> > +.I pathname
> > +is not a directory, or
> > +.I pathname
> > +is relative and
> > +.I dirfd
> > +is a file descriptor referring to a file other than a directory.
> > +.TP
> > +.B ENOMEM
> > +The kernel could not allocate sufficient memory to complete the operat=
ion.
> > +.TP
> > +.B EMFILE
> > +The calling process has too many open files to create more.
> > +.TP
> > +.B ENFILE
> > +The system has too many open files to create more.
> > +.TP
> > +.B EPERM
> > +The calling process does not have the required
> > +.B CAP_SYS_ADMIN
> > +capability.
> > +.SH STANDARDS
> > +Linux.
> > +.SH HISTORY
> > +Linux 5.2.
> > +.\" commit cf3cba4a429be43e5527a3f78859b1bfd9ebc5fb
> > +Glibc 2.36.
> > +.SH EXAMPLES
> > +The following example sets the read-only superblock flag on "/tmp".
> > +.P
> > +.in +4n
> > +.EX
> > +int sfd =3D fspick(AT_FDCWD, "/tmp", FSPICK_CLOEXEC);
> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "ro", NULL, 0);
> > +fsconfig(sfd, FSCONFIG_CMD_RECONFIGURE, NULL, NULL, 0);
> > +.EE
> > +.in
> > +.P
> > +The above procedure is functionally equivalent to the following mount =
operation
> > +using
> > +.BR mount (2):
> > +.P
> > +.in +4n
> > +.EX
> > +mount(NULL, "/tmp", NULL, MS_REMOUNT | MS_RDONLY, NULL);
> > +.EE
> > +.in
> > +.SH SEE ALSO
> > +.BR mount (2),
> > +.BR fsopen (2),
> > +.BR fsconfig (2),
> > +.BR fsmount (2),
> > +.BR open_tree (2),
> > +.BR move_mount (2),
> > +.BR mount_setattr (2),
> > +.BR mount_namespaces (7)
> > +
> >=20
> > --=20
> > 2.50.1
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--vbvrtqhvgclcx7gd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJLCFgAKCRAol/rSt+lE
b52yAQDMqD8EVJlQl5AcbqoTRUUk/EoUeqrcmKttjvPyJetfNQEA5yCXsQ7IJAc0
/WZJ6AYWOgPi4pube08QatR0vRS9Fw4=
=owa7
-----END PGP SIGNATURE-----

--vbvrtqhvgclcx7gd--

