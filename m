Return-Path: <linux-man+bounces-3340-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1486BB1BF03
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 05:05:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D474184E0C
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 03:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE3549620;
	Wed,  6 Aug 2025 03:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="LFgiT0KQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [80.241.56.161])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B66E155333
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 03:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.161
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754449515; cv=none; b=UrUjfxi3194nfT/LQYzyY3mJ/dq40YVL1UG1nhrGj87Yo/HyV7H23E2MUm6kM2Ezjuhxi1TyqF2Fn7294BvvaeSD+ayeZuBLQrk3bH7ZqG+BSPzAzS4aEVNsI/Ox+V7NkAMy8w3LpkFeatoROiR1L/gJTWPd4Tr1OwOsxhCyG18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754449515; c=relaxed/simple;
	bh=jcQBHPEZASmIY23ezjRNkSWDQFIXxuYuNvaC8eVA230=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=knkuHQSQ6fD4Wz+PTFKTRbBwblM7zhnd830iup+8qQ1GqR9t8P0ZBIPpRp2CyRn2bcbNVfp3Z1xvDDXBZx1k/NrwVmvu1HJIOvTS19KJixldoItkrZF42gBdUl1UrA8oa4O4zqAbsUemOJx/axKU8hbeYxYpU73KJSpkRO/nOHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=LFgiT0KQ; arc=none smtp.client-ip=80.241.56.161
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4bxZsc2dzDz9tF7;
	Wed,  6 Aug 2025 05:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754449508;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gQexNLHZbOUZ8Kzza3UfOgS84PgM5gJP2k1zb46QwLU=;
	b=LFgiT0KQTKnJwmx80WZRiLkSbiwiZMPqysuTmTNouK/pAgDYq3PXdVWEVjrv8xYdfUn5FN
	WHw9jmULIMj+n6pmwVJSGU0JgjMYvxF3Zhqkt+T3+FtgLxGrGyGO64iG36tbIAEh1KG2mi
	y8JeUqH/pWAtCu4O23n9TJw1Ak5mhFZyYD5WTrOccnpO8AelY0jq77H7DgBDMv10USYmX9
	6Zia9GxcINhPyTVf3ubHXYxPEwaFvjUU52y9wbVfVYNoasz+iJNFtf0IUdKHMgwvJQvNuT
	JYt4W2xLcDapYDFZMctGp0yO0aRo7UPrg6d6QsZD6fHg2om2bCKhYFrI4bXQxA==
Date: Wed, 6 Aug 2025 13:05:00 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 03/10] fsopen.2: document 'new' mount api
Message-ID: <2025-08-06.1754449030-onyx-chive-copied-spills-bendy-impact-K16w4n@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-3-8678f56c6ee0@cyphar.com>
 <p5ays37bbmfviag4ab4piciqtypbdy6v6uvqng4jj2gqbbtlq4@yks2uhxcajak>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ljr7h56okuysn2sy"
Content-Disposition: inline
In-Reply-To: <p5ays37bbmfviag4ab4piciqtypbdy6v6uvqng4jj2gqbbtlq4@yks2uhxcajak>


--ljr7h56okuysn2sy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 03/10] fsopen.2: document 'new' mount api
MIME-Version: 1.0

On 2025-08-05, Alejandro Colomar <alx@kernel.org> wrote:
> Hi Aleksa,
>=20
> On Wed, Aug 06, 2025 at 02:25:48AM +1000, Aleksa Sarai wrote:
> > This is loosely based on the original documentation written by David
> > Howells and later maintained by Christian Brauner, but has been
> > rewritten to be more from a user perspective (as well as fixing a few
> > critical mistakes).
> >=20
> > Co-developed-by: David Howells <dhowells@redhat.com>
> > Co-developed-by: Christian Brauner <brauner@kernel.org>
> > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> > ---
> >  man/man2/fsopen.2 | 275 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  1 file changed, 275 insertions(+)
> >=20
> > diff --git a/man/man2/fsopen.2 b/man/man2/fsopen.2
> > new file mode 100644
> > index 000000000000..43a1709ec5b4
> > --- /dev/null
> > +++ b/man/man2/fsopen.2
> > @@ -0,0 +1,275 @@
> > +.\" Copyright, the authors of the Linux man-pages project
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH fsopen 2 (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +fsopen \- create a new filesystem context
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ,\~ \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <sys/mount.h>"
> > +.BR "#include <unistd.h>"
> > +.P
> > +.BI "int fsopen(const char *" fsname ", unsigned int " flags ");
>=20
> I tend to not have "name" in the name of parameters that are a string
> representing a name.  The rationale is that strings very commonly used
> for names, and so "fs" would be just as menaingful, and shorter.
>=20
> The description would make it obvious that it's the fs name.

Personally, as a documentation reader I would find "const char *fs" more
confusing -- a filesystem-related "open" operation that takes a non-path
argument is already a little bit fruity, but "fsname" at least provides
some indication that the string argument is a _name_ rather than a
_path_. Just having "fs" is less clear IMHO.

(Also this is the parameter name in the kernel implementation, though I
understand that doesn't really have a big impact on how we document
these things in man-pages.)

> > +.fi
> > +.SH DESCRIPTION
> > +The
> > +.BR fsopen ()
> > +system call is part of the suite of file descriptor based mount facili=
ties in
> > +Linux.
> > +.P
> > +.BR fsopen ()
> > +creates a blank filesystem configuration context within the kernel for=
 the
> > +filesystem named by
> > +.IR fsname ,
> > +puts the context into creation mode and attaches it to a file descript=
or, which
> > +is then returned.
> > +The calling process must have the
> > +.BR CAP_SYS_ADMIN
>=20
> This should be B.  BR is for alternating Bold and Roman (normal).

Grr, I thought I fixed all of these typos. My bad.

> > +capability in order to create a new filesystem configuration context.
> > +.P
> > +After obtaining a filesystem configuration context with
> > +.BR fsopen (),
> > +the general workflow for operating on the context looks like the follo=
wing:
> > +.RS
> > +.IP 1. 3
>=20
> Please have a look at man-pages(7) for some conventions on lists in the
> project:

I will admit that I wasn't aware of how detailed (and particular)
man-pages(7) was about the style guide. I'll read through and adjust the
patches accordingly. Mea culpa.

> $ MANWIDTH=3D72 man man-pages | grep -A6 Ordered.lists
>        Ordered lists
>               Elements  are  preceded  by  a number in parentheses (1),
>               (2).  These represent a set of steps that have an order.
>=20
>               When there are  substeps,  they  will  be  numbered  like
>               (4.2).
>=20
> So, we'd use
>=20
> 	.IP (1) 5
>=20
> Which indeed you can find everywhere (I did some consistency cleanups
> about this some years ago):
>=20
> 	$ grep -rn 'IP.*(1)'
> 	man7/user_namespaces.7:417:.IP (1) 5
> 	man7/user_namespaces.7:607:.IP (1) 5
> 	man7/boot.7:22:.IP (1) 5
> 	man7/signal.7:228:.IP (1) 5
> 	man7/symlink.7:200:.IP (1) 5
> 	man7/man-pages.7:504:.IP (1) 5
> 	man7/epoll.7:84:.IP (1) 5
> 	man7/epoll.7:151:.IP (1) 5
> 	man7/locale.7:216:.IP (1) 5
> 	man7/capabilities.7:1274:.IP (1) 5
> 	man7/keyrings.7:317:.IP (1) 5
> 	man7/keyrings.7:452:.IP (1) 5
> 	man7/unix.7:586:.IP (1) 5
> 	man7/cpuset.7:1395:.IP (1) 5
> 	man7/cpuset.7:1435:.IP (1) 5
> 	man7/cgroups.7:1369:.IP (1) 5
> 	man7/cgroups.7:1425:.IP (1) 5
> 	man7/pipe.7:372:.IP (1) 5
> 	man7/uri.7:583:.IP (1) 5
> 	man2const/FUTEX_LOCK_PI.2const:70:.IP (1) 5
> 	man5/locale.5:598:.IP (1) 5
> 	man8/ld.so.8:63:.IP (1) 5
> 	man8/ld.so.8:472:.IP (1) 5
> 	man2/delete_module.2:41:.IP (1) 5
> 	man2/seccomp_unotify.2:76:.IP (1) 5
> 	man2/seccomp_unotify.2:441:.IP (1) 5
> 	man2/seccomp_unotify.2:1003:.IP (1) 5
> 	man2/seccomp_unotify.2:1106:.IP (1) 5
> 	man2/timerfd_create.2:487:.IP (1) 5
> 	man2/listen.2:89:.IP (1) 5
> 	man2/close.2:119:.IP (1) 5
> 	man2/request_key.2:206:.IP (1) 5
> 	man2/ptrace.2:2603:.IP (1) 5
> 	man2/memfd_create.2:261:.IP (1) 5
> 	man3/dlinfo.3:106:.IP (1) 5
> 	man3/posix_spawn.3:213:.IP (1) 5
> 	man3/newlocale.3:210:.IP (1) 5
> 	man3/tempnam.3:55:.IP (1) 5
> 	man3/pthread_cancel.3:62:.IP (1) 5
> 	man4/cciss.4:288:.IP (1) 5
> 	man4/cciss.4:334:.IP (1) 5
> 	man4/initrd.4:67:.IP (1) 5
> 	man4/initrd.4:305:.IP (1) 5
>=20
> > +Pass the filesystem context file descriptor to
> > +.BR fsconfig (2)
> > +to specify any desired filesystem parameters.
> > +This can be done as many times as necessary.
> > +.IP 2.
>=20
> Similarly, this should be
>=20
> 	.IP (2)
>=20
> > +Pass the same filesystem context file descriptor to
> > +.BR fsconfig (2)
> > +with
> > +.B FSCONFIG_CMD_CREATE
> > +to create an instance of the configured filesystem.
> > +.IP 3.
> > +Pass the same filesystem context file descriptor to
> > +.BR fsmount (2)
> > +to create a new mount object for the root of the filesystem, which is =
then
> > +attached to a new file descriptor.
> > +.IP 4.
> > +Use the mount object file descriptor as a
> > +.I dirfd
> > +argument to "*at()" system calls; or attach the mount object to a moun=
t point
> > +by passing the mount object file descriptor to
> > +.BR move_mount (2).
> > +.RE
> > +.P
> > +A filesystem configuration context is an in-kernel representation of a=
 pending
> > +transaction containing a set of configuration parameters that are to b=
e applied
> > +when creating a new instance of a filesystem or modifying the configur=
ation of
> > +an existing filesystem instance.
> > +The filesystem context will move between different modes throughout its
> > +lifecycle (such as the creation phase when created with
> > +.BR fsopen (),
> > +the reconfiguration phase when an existing filesystem instance is sele=
cted by
> > +.BR fspick (2),
> > +and the needs-mount phase between
> > +.BR FSCONFIG_CMD_CREATE
> > +and
> > +.BR fsmount (2)),
> > +which has an impact on what operations are permitted on the filesystem=
 context.
> > +.P
> > +The file descriptor returned by
> > +.BR fsopen ()
> > +also acts as a channel for filesystems to provide more comprehensive e=
rror,
> > +warning, and information messages than normally provided using the
> > +.BR errno (3)
> > +interface.
> > +If an error occurs at any time during the workflow mentioned above, ca=
lling
> > +.BR read (2)
> > +on the filesystem context file descriptor will retrieve any ancillary
> > +information about the encountered errors.
> > +(See the "Message Retrieval Interface" section for more details on the=
 message
> > +format.)
> > +.P
> > +.I flags
> > +can be used to control aspects of the creation of the file configurati=
on
> > +context.
> > +A value for
> > +.I flags
> > +is constructed by OR'ing together zero or more of the following consta=
nts:
> > +.RS
> > +.TP
> > +.B FSOPEN_CLOEXEC
> > +Set the close-on-exec
> > +.RB ( FD_CLOEXEC )
> > +flag on the new file descriptor.
> > +See the description of the
> > +.B O_CLOEXEC
> > +flag in
> > +.BR open (2)
> > +for reasons why this may be useful.
> > +.RE
> > +.P
> > +A list of filesystems supported by the running kernel (and thus a list=
 of valid
> > +values for
> > +.IR fsname )
> > +can be obtained from
> > +.IR /proc/filesystems .
> > +(See also
> > +.BR proc_filesystems (5).)
> > +.SS Message Retrieval Interface
> > +When doing operations on a filesystem configuration context, the files=
ystem
> > +driver may choose to provide ancillary information to userspace in the=
 form of
> > +message strings.
> > +.P
> > +The filesystem context file descriptors returned by
> > +.BR fsopen "() and " fspick (2)
> > +may be queried for message strings at any time by calling
> > +.BR read (2)
> > +on the file descriptor.
> > +This will return newline-separated messages that are prefixed to indic=
ate their
> > +class:
> > +.RS
> > +.TP
> > +.B "e <message>"
> > +An error message was logged.
> > +This is usually associated with an error being returned from the corre=
sponding
> > +system call which triggered this message.
> > +.TP
> > +.B "w <message>"
> > +A warning message was logged.
> > +.TP
> > +.B "i <message>"
> > +An informational message was logged.
> > +.RE
> > +.P
> > +Messages are removed from the queue as they are read.
> > +Note that the message queue has limited depth, so it is possible for m=
essages
> > +to get lost.
> > +If there are no messages in the message queue,
> > +.B read(2)
> > +will return no data.
> > +.P
> > +If there are multiple filesystem context file descriptors referencing =
the same
> > +filesystem instance (such as if you call
> > +.BR fspick (2)
> > +multiple times for the same mount), each one gets its own independent =
message
> > +queue.
> > +This does not apply to file descriptors that were duplicated with
> > +.BR dup (2).
> > +.P
> > +Usually messages will be prefixed by the filesystem driver that logged=
 the
> > +message, though this may not always be the case.
> > +See the Linux kernel source code for details.
> > +.SH RETURN VALUE
> > +On success, a new file descriptor is returned.
> > +On error, \-1 is returned, and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EFAULT
> > +One of the pointer arguments points to a location outside the calling =
process's
> > +accessible address space.
> > +.TP
> > +.B EINVAL
> > +.I flags
> > +had an invalid flag set.
> > +.TP
> > +.B EMFILE
> > +The calling process has too many open files to create more.
> > +.TP
> > +.B ENFILE
> > +The system has too many open files to create more.
> > +.TP
> > +.B ENODEV
> > +The filesystem named by
> > +.I fsname
> > +is not supported by the kernel.
> > +.TP
> > +.B ENOMEM
> > +The kernel could not allocate sufficient memory to complete the operat=
ion.
> > +.TP
> > +.B EPERM
> > +The calling process does not have the required
> > +.B CAP_SYS_ADMIN
> > +capability.
> > +.SH STANDARDS
> > +Linux.
> > +.SH HISTORY
> > +Linux 5.2.
> > +.\" commit 24dcb3d90a1f67fe08c68a004af37df059d74005
> > +Glibc 2.36.
> > +.SH EXAMPLES
> > +To illustrate the workflow for creating a new mount, the following is =
a sample
> > +of how to mount an ext4 filesystem stored on "/dev/sdb1" onto "/mnt".
> > +.P
> > +.in +4n
> > +.EX
> > +int sfd =3D fsopen("ext4", FSOPEN_CLOEXEC);
>=20
> 'sfd' is common for socket file descriptor.  Shouldn't we use fsfd?

It's not really a "filesystem fd" because there is an in-kernel
distinction between "filesystem context file descriptors" which are tied
to superblock lifecycles and "mount object file descriptors" that act
like a filesystem.

As such, I'm not sure if "fsfd" is more descriptive in an example. The
"s" in "sfd" stands for "superblock" and is a fairly common pattern
userspace users of this API tend to use.

But I'm not too fussed about it, if you really prefer fsfd, I'll swap to
that.

> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "ro", NULL, 0);
> > +fsconfig(sfd, FSCONFIG_SET_PATH, "source", "/dev/sdb1", AT_FDCWD);
> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "noatime", NULL, 0);
> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "acl", NULL, 0);
> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "user_xattr", NULL, 0);
> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "iversion", NULL, 0)
> > +fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
> > +int mfd =3D fsmount(sfd, FSMOUNT_CLOEXEC, MOUNT_ATTR_RELATIME);
>=20
> Please separate declarations from code.  And use a blank between them
> A blank in the source of an example should be a line containing
>=20
> 	\&
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > +move_mount(mfd, "", AT_FDCWD, "/mnt", MOVE_MOUNT_F_EMPTY_PATH);
> > +.EE
> > +.in
> > +.P
> > +First, an ext4 configuration context is created and attached to the fi=
le
> > +descriptor
> > +.IR sfd .
> > +Then, a series of parameters (such as the source of the filesystem) are
> > +provided using
> > +.BR fsconfig (2),
> > +followed by the filesystem instance being created with
> > +.BR FSCONFIG_CMD_CREATE .
> > +.BR fsmount (2)
> > +is then used to create a new mount object attached to the file descrip=
tor
> > +.IR mfd ,
> > +which is then attached to the intended mount point using
> > +.BR move_mount (2).
> > +.P
> > +The above procedure is functionally equivalent to the following mount =
operation
> > +using
> > +.BR mount (2):
> > +.P
> > +.in +4n
> > +.EX
> > +mount("/dev/sdb1", "/mnt", "ext4", MS_RELATIME,
> > +      "ro,noatime,acl,user_xattr,iversion");
> > +.EE
> > +.in
> > +.P
> > +And here's an example of creating a mount object of an NFS server shar=
e and
> > +setting a Smack security module label.
> > +However, instead of mounting it to a place on the filesystem, the prog=
ram
> > +instead uses the mount object directly to open a file from the NFS sha=
re.
> > +.P
> > +.in +4n
> > +.EX
> > +int sfd =3D fsopen("nfs", 0);
> > +fsconfig(sfd, FSCONFIG_SET_STRING, "source", "example.com/pub/linux", =
0);
> > +fsconfig(sfd, FSCONFIG_SET_STRING, "nfsvers", "3", 0);
> > +fsconfig(sfd, FSCONFIG_SET_STRING, "rsize", "65536", 0);
> > +fsconfig(sfd, FSCONFIG_SET_STRING, "wsize", "65536", 0);
> > +fsconfig(sfd, FSCONFIG_SET_STRING, "smackfsdef", "foolabel", 0);
> > +fsconfig(sfd, FSCONFIG_SET_FLAG, "rdma", NULL, 0);
> > +fsconfig(sfd, FSCONFIG_CMD_CREATE, NULL, NULL, 0);
> > +int mfd =3D fsmount(sfd, 0, MOUNT_ATTR_NODEV);
> > +int fd =3D openat(mfd, "src/linux-5.2.tar.xz", O_RDONLY);
> > +.EE
> > +.in
> > +.P
> > +Unlike the previous example, this operation has no trivial equivalent =
with
> > +.BR mount (2),
> > +as it was not previously possible to create a mount object that is not=
 attached
> > +to any mount point.
> > +.SH SEE ALSO
> > +.BR mount (2),
> > +.BR fsconfig (2),
> > +.BR fsmount (2),
> > +.BR fspick (2),
> > +.BR open_tree (2),
> > +.BR move_mount (2),
> > +.BR mount_setattr (2),
> > +.BR mount_namespaces (7)
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

--ljr7h56okuysn2sy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJLGXAAKCRAol/rSt+lE
bxNGAP9Jmrz8H6w0CW33RTrXepPHIyLTV+qGP6TxgVpI/xd4kQEAne2hgD1QVh87
cgRTaXhotK4av1x/pAJogPxsUG6UVgQ=
=0uCO
-----END PGP SIGNATURE-----

--ljr7h56okuysn2sy--

