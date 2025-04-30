Return-Path: <linux-man+bounces-2825-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7C7AA5880
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 01:10:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BB921C0733C
	for <lists+linux-man@lfdr.de>; Wed, 30 Apr 2025 23:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C66225A59;
	Wed, 30 Apr 2025 23:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6OZF50p"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDAF1BD9F0
	for <linux-man@vger.kernel.org>; Wed, 30 Apr 2025 23:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746054625; cv=none; b=HzHcGnst2HpkSmf/8fqieKPXCup9yD/GMQ338Ltcsj0kQ2m3BqKMlOayltro9rAaZyw6uEz9g3FjMvDDab+sINZuUr6qskArEyZJVjSHHD9iRuKEAAbRkQc56OR3fqtb/CkWvcQ/X6XDc9yN7iKw5Z3dXAgcHbWn8vMqOpfnU5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746054625; c=relaxed/simple;
	bh=9IKLpQ+X2KkZrDa7Jp9AX4qlkmg8eIlJiZoRny/6oGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FvmB/5nxV8zLh0WzbTEFKNK73MXDyLxF3ofduAfYzmoGPopDjp2cAHLKxJUbZ5O5c+O5YYnOe8pvkgJ89/7W6NRV0Q1KnQnIRoeiTWM4hi4pj1Q4U96uw3ppib9IEmZ0LNzlA/Wg7U9x9RYiWtQpeJKWguTcUKm7EgVs/aHVbFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6OZF50p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78363C4CEE7;
	Wed, 30 Apr 2025 23:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746054625;
	bh=9IKLpQ+X2KkZrDa7Jp9AX4qlkmg8eIlJiZoRny/6oGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A6OZF50pI+hOM1NQxt43G4EwJqGDpZ7hPwN/XJTHqpNmIUDe/i0d216qrQQYqnhGN
	 YY24/YDAykNJMH1UzCteGXm9OC1bS5NgoHRVs1XHkURneomF0axwVH0A4RrlXomDgI
	 s01CRsN1UZlLeUQCsJnziiWQFNKEmI3xIy8tyUamI7dyr0/tWwSHt7ppfSrSVriRWm
	 rOZC0ApIXHDJjlFYfpNkiUB6U7A7kE8pOWqVLQMxPuibikO8uJSiM//ddCzYr4Mzwn
	 ot0faMxJ8jQqbH43S7MfuJI5PhZda+iS37mnyyeFV8c6SHDOMmtUwSImmkTGVm2LbC
	 klrVlkb6c/rfw==
Date: Thu, 1 May 2025 01:10:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
Message-ID: <6kaeipedoa6vo4apmz7hb7cgozpl66w4f3z7sexunhqhsu3oda@von5awqj35if>
References: <20250423195309.2841410-1-surenb@google.com>
 <CAJuCfpFOmbAeM8AkV2VmvPkzkxsUE7L1CgvrY69=JMV4CmypbA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7xuldjijayasuvkf"
Content-Disposition: inline
In-Reply-To: <CAJuCfpFOmbAeM8AkV2VmvPkzkxsUE7L1CgvrY69=JMV4CmypbA@mail.gmail.com>


--7xuldjijayasuvkf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
References: <20250423195309.2841410-1-surenb@google.com>
 <CAJuCfpFOmbAeM8AkV2VmvPkzkxsUE7L1CgvrY69=JMV4CmypbA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJuCfpFOmbAeM8AkV2VmvPkzkxsUE7L1CgvrY69=JMV4CmypbA@mail.gmail.com>

Hi Suren,

On Wed, Apr 30, 2025 at 03:59:42PM -0700, Suren Baghdasaryan wrote:
> On Wed, Apr 23, 2025 at 12:53=E2=80=AFPM Suren Baghdasaryan <surenb@googl=
e.com> wrote:
> >
> > Documentation was extracted from the original patch written by Andrea
> > Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> > the same documentation style as other userfaultfd ioctl commands.
> >
> > [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google=
=2Ecom/>
> >
> > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> > ---
> > Changes since v1[1]
> > - removed '\" t, per Alejandro Colomar
> > - reformated sentences to use semantic newlines, per Alejandro Colomar
> > - changed field names to use '.' prefix, per Alejandro Colomar
> > - changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
> > per Alejandro Colomar
> > - folded duplicate information into EBUSY error description,
> > per Alejandro Colomar
>=20
> Hi Alex,
> Haven't seen any feedback on this version so far. Is it ok to be
> accepted or should I change anything else?
> Thanks,
> Suren.

Sorry; I was traveling back to Spain the last few days.  I'll have a
look at it tomorrow.  I had a quick look these days, and it looked good,
but I'll confirm.  Thanks!


Have a lovely night!
Alex

>=20
> >
> > [1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@google.=
com/
> >
> >  man/man2/ioctl_userfaultfd.2     |   2 +
> >  man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++++
> >  2 files changed, 155 insertions(+)
> >  create mode 100644 man/man2const/UFFDIO_MOVE.2const
> >
> > diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
> > index 3cb1b8305..5ec08ca55 100644
> > --- a/man/man2/ioctl_userfaultfd.2
> > +++ b/man/man2/ioctl_userfaultfd.2
> > @@ -69,6 +69,8 @@ events.
> >  .TQ
> >  .BR UFFDIO_COPY (2const)
> >  .TQ
> > +.BR UFFDIO_MOVE (2const)
> > +.TQ
> >  .BR UFFDIO_ZEROPAGE (2const)
> >  .TQ
> >  .BR UFFDIO_WAKE (2const)
> > diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_MO=
VE.2const
> > new file mode 100644
> > index 000000000..77b0ca781
> > --- /dev/null
> > +++ b/man/man2const/UFFDIO_MOVE.2const
> > @@ -0,0 +1,153 @@
> > +.\" Written by Andrea Arcangeli <aarcange@redhat.com>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +UFFDIO_MOVE
> > +\-
> > +atomically move a continuous memory chunk into the userfault registere=
d range
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ,\~ \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " con=
stants */"
> > +.B #include <sys/ioctl.h>
> > +.P
> > +.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp );
> > +.P
> > +.B #include <linux/userfaultfd.h>
> > +.P
> > +.fi
> > +.EX
> > +.B struct uffdio_move {
> > +.BR "    __u64  dst;" "   /* Destination of move */"
> > +.BR "    __u64  src;" "   /* Source of move */"
> > +.BR "    __u64  len;" "   /* Number of bytes to move */"
> > +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> > +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error *=
/"
> > +.B };
> > +.EE
> > +.SH DESCRIPTION
> > +Atomically move a continuous memory chunk
> > +into the userfault registered range
> > +and optionally wake up the blocked thread.
> > +.P
> > +The following value may be bitwise ORed in
> > +.I .mode
> > +to change the behavior of the
> > +.B UFFDIO_MOVE
> > +operation:
> > +.TP
> > +.B UFFDIO_MOVE_MODE_DONTWAKE
> > +Do not wake up the thread that waits for page-fault resolution
> > +.TP
> > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > +Allow holes in the source virtual range that is being moved.
> > +When not specified, the holes will result in
> > +.B ENOENT
> > +error.
> > +When specified,
> > +the holes will be accounted as successfully moved memory.
> > +This is mostly useful
> > +to move hugepage aligned virtual regions
> > +without knowing if there are transparent hugepages in the regions or n=
ot,
> > +but preventing the risk of
> > +having to split the hugepage during the operation.
> > +.P
> > +The
> > +.I .move
> > +field is used by the kernel
> > +to return the number of bytes that was actually moved,
> > +or an error
> > +(a negated
> > +.IR errno -style
> > +value).
> > +The
> > +.I .move
> > +field is output-only;
> > +it is not read by the
> > +.B UFFDIO_MOVE
> > +operation.
> > +.SH RETURN VALUE
> > +On success,
> > +0 is returned.
> > +In this case, the entire area was moved.
> > +.P
> > +On error, \-1 is returned and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EAGAIN
> > +The number of bytes moved (i.e., the value returned in the
> > +.I .move
> > +field)
> > +does not equal the value that was specified in the
> > +.I .len
> > +field.
> > +.TP
> > +.B EINVAL
> > +Either
> > +.I .dst
> > +or
> > +.I .len
> > +was not a multiple of the system page size, or the range specified by
> > +.I .src
> > +and
> > +.I .len
> > +or
> > +.I .dst
> > +and
> > +.I .len
> > +was invalid.
> > +.TP
> > +.B EINVAL
> > +An invalid bit was specified in the
> > +.I .mode
> > +field.
> > +.TP
> > +.BR ENOENT
> > +The source virtual memory range has unmapped holes and
> > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > +is not set.
> > +.TP
> > +.BR EEXIST
> > +The destination virtual memory range is fully or partially
> > +mapped.
> > +.TP
> > +.BR EBUSY
> > +The pages in the source virtual memory range are either
> > +pinned or not exclusive to the process.
> > +Once KSM deduplicates pages
> > +or fork() COW-shares pages during fork() with child processes,
> > +they are no longer exclusive.
> > +The kernel might only perform lightweight checks
> > +for detecting whether the pages are exclusive.
> > +To make the operation more likely to succeed,
> > +KSM should be disabled,
> > +fork() should be avoided
> > +or
> > +.B MADV_DONTFORK
> > +should be configured
> > +for the source virtual memory area
> > +before fork().
> > +.TP
> > +.BR ENOMEM
> > +Allocating memory needed for the operation failed.
> > +.TP
> > +.BR ESRCH
> > +The target process has exited at the time of a
> > +.B UFFDIO_MOVE
> > +operation.
> > +.SH STANDARDS
> > +Linux.
> > +.SH HISTORY
> > +Linux 6.8.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR ioctl_userfaultfd (2),
> > +.BR userfaultfd (2)
> > +.P
> > +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
> >
> > base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
> > --
> > 2.49.0.805.g082f7c87e0-goog
> >
>=20

--=20
<https://www.alejandro-colomar.es/>

--7xuldjijayasuvkf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgSrdYACgkQ64mZXMKQ
wqmS6g/9FkSyzrsh/wNoieBnzg6bCyZV3Rkz705hmaR2J9h0jNEhU0hSItPCsFjh
wsK5FUef/m/pvD3dM6mb5VJGcm8SOHSSzrP4ARnty8JVD21yseNzwe/sNN+xdzhr
QoyZu74paE6umduOO74yUM4x+uQHKrNY7+8osBCKiyu6qVlJSICW365UQMamnxRC
P7+DzHiFjES9iDg+ni/WWhbZLuDyMMb/YocO93MsLL1HwAHZloFwUYm7SH+xkFmM
pPnc+tQ6j6QO/uwXv3W7UgttOOM68KnYPV8Rb/NYo50BYKL3AgpHHfUDmeOzPF1Z
9jpVZpQa/X3GBYlBvnhU9XaIXo93zshj+yr2ZllfyMg/sKZ1iJWq4VqvWFmKakZK
IIT0MtEaHH3rHJHSs3tNyrK7EZIfE91LmG6R88+BD1RhK6T+y4RHTpEdOFwwdfO2
o6dsNsV/0FwAsAsVFxImWIct7eXy9nQPdmBTLPXP7n/3iQyVIMBftJZDxNRfnswp
NvV0RGgQOF5HyU1+cevBcrTPcgmdQ1DP/j2/IYlvUPvxRWYEFEkt83cbjzazwqzg
hhaCLFHjCCKovpvzHbHjlQhjKSTPe2KITDoLqvZqIMbSdnyAJ2voTl5A2XHeoJJ/
LU6RstL9uaWMV1GXYWo0Z3jkk7IEjaqJzxZYWcXL+joYAm95BGQ=
=tkMN
-----END PGP SIGNATURE-----

--7xuldjijayasuvkf--

