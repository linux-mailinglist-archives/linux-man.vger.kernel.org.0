Return-Path: <linux-man+bounces-2807-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E4CA9833D
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 10:27:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14D74442BD1
	for <lists+linux-man@lfdr.de>; Wed, 23 Apr 2025 08:27:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87BF026F44E;
	Wed, 23 Apr 2025 08:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLqdten1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4296E268FC9
	for <linux-man@vger.kernel.org>; Wed, 23 Apr 2025 08:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745396213; cv=none; b=sKgnB806wolm+4YVYEbyWiWONpOPNmTEm9wBIbfsfwHwREcmyfHOzAg29JQdiG/8lfKnzOZNjozeSsCE9Ht9Jl/0LlU4AzSNpQQha59IB5aZ1KxVrYmErkw4sBZ9vFLSXcIyqoUHGFOfwsGwEFudHFa0QhTnMlZ0GIEWJsPIQWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745396213; c=relaxed/simple;
	bh=5Sl215RXeQBr53fhZyphReVjBzXossBpmsXcRdbwFaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tGHAbTTqgYzTZEMs0MG4cWYWCHQ+tgmrPn02hp/lKbddGd2MaHoCS3SeayMbWSKq4xrzHJpcHWzalvWAikNqeBQoHS1rUlx2uBGgRko39WD53rtPFaL4tAfXSidkvdMKJvohNin2R/KZtQpE0EvbqSeL+DMp+NmBDznnXPxBAn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLqdten1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 378E3C4CEE2;
	Wed, 23 Apr 2025 08:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745396213;
	bh=5Sl215RXeQBr53fhZyphReVjBzXossBpmsXcRdbwFaM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sLqdten1OYxB9t5pfilDx28ogCKqw3c/HE64Ul903OGMepPgoFGQGf21jQKDmYCgK
	 hj7T7u7zNxlJNbFpTAR89CoK7iTs8sd2MRvitMoj1eQRKbyE5uDjw/Onci+P4ZlmT6
	 neCAsnKjeCvYnhgsdv0XQ0iMTIolcn/O8qiXoMKumnS0cEVmRQ2ViY/U/poDFSFzAo
	 pc61lYx56mei/8cv0FVuStSK2a2FZFbCNVE2B140WYxthUhU8+IFdwqQepdSXB0n4n
	 c58ZZ3eP4zbnhFYB4bPpnbUw+DKUq04cMzUJOlizkrgkzZdntBHmtXDCcoJAV/sX4n
	 qweCSrffNlXAA==
Date: Wed, 23 Apr 2025 10:16:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
Message-ID: <4xxeauieht3kdepkgsc73xroo42zkltepxpzce6yir2zouzr7w@tjp5t43tr7pk>
References: <20250423011203.2559210-1-surenb@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xonxjtufpsucecz7"
Content-Disposition: inline
In-Reply-To: <20250423011203.2559210-1-surenb@google.com>


--xonxjtufpsucecz7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
References: <20250423011203.2559210-1-surenb@google.com>
MIME-Version: 1.0
In-Reply-To: <20250423011203.2559210-1-surenb@google.com>

Hi Suren,

On Tue, Apr 22, 2025 at 06:12:03PM -0700, Suren Baghdasaryan wrote:
> Documentation was extracted from the original patch written by Andrea
> Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> the same documentation style as other userfaultfd ioctl commands.
>=20
> [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google.c=
om/>
>=20
> Signed-off-by: Suren Baghdasaryan <surenb@google.com>

It looks good, but there are a few issues commented below.
Thanks for the patch!


Have a lovely day!
Alex

> ---
>  man/man2/ioctl_userfaultfd.2     |   2 +
>  man/man2const/UFFDIO_MOVE.2const | 149 +++++++++++++++++++++++++++++++
>  2 files changed, 151 insertions(+)
>  create mode 100644 man/man2const/UFFDIO_MOVE.2const
>=20
> diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
> index 3cb1b8305..5ec08ca55 100644
> --- a/man/man2/ioctl_userfaultfd.2
> +++ b/man/man2/ioctl_userfaultfd.2
> @@ -69,6 +69,8 @@ events.
>  .TQ
>  .BR UFFDIO_COPY (2const)
>  .TQ
> +.BR UFFDIO_MOVE (2const)
> +.TQ
>  .BR UFFDIO_ZEROPAGE (2const)
>  .TQ
>  .BR UFFDIO_WAKE (2const)
> diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_MOVE=
=2E2const
> new file mode 100644
> index 000000000..ebeefde22
> --- /dev/null
> +++ b/man/man2const/UFFDIO_MOVE.2const
> @@ -0,0 +1,149 @@
> +'\" t

This shouldn't be there.  There should be a diagnostic from the build
system about it being spurious: that line is there only in pages that
use tables (.TS/.TE), to let man(1) know that it should invoke tbl(1).

> +.\" Written by Andrea Arcangeli <aarcange@redhat.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +UFFDIO_MOVE
> +\-
> +atomically move a continuous memory chunk into the userfault registered =
range
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " const=
ants */"
> +.B #include <sys/ioctl.h>
> +.P
> +.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp );
> +.P
> +.B #include <linux/userfaultfd.h>
> +.P
> +.fi
> +.EX
> +.B struct uffdio_move {
> +.BR "    __u64  dst;" "   /* Destination of move */"
> +.BR "    __u64  src;" "   /* Source of move */"
> +.BR "    __u64  len;" "   /* Number of bytes to move */"

Are we in time to name this size instead of len?  Length usually refers
to the number of non-zero characters in a string, while size refers to
number of bytes in some object, which is more appropriate in these
cases.

If this has already been released in the kernel, don't worry about it,
but if it hasn't, maybe we should call it size?

> +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error */"
> +.B };
> +.EE
> +.SH DESCRIPTION
> +Atomically move a continuous memory chunk into the userfault registered
> +range and optionally wake up the blocked thread.

Please use semantic newlines.  In this case, I'd break the line before
'into', and before 'and'.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be  started
       on  new  lines,  long  sentences  should  be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and  long
       clauses  should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier  to  see
       the effect of patches, which often operate at the level of indi=E2=
=80=90
       vidual sentences, clauses, or phrases.

> +.P
> +The following value may be bitwise ORed in
> +.I mode

Please use .mode instead of mode.  That makes it more obvious that we're
talking about a struct member.  I know most pages don't do this, but I'm
planning a global change for consistency soon; since this page is new,
we can start clean and do it as

	.I .mode

This is done in a few cases already in fanotify(7), for example.

> +to change the behavior of the
> +.B UFFDIO_MOVE
> +operation:
> +.TP
> +.B UFFDIO_MOVE_MODE_DONTWAKE
> +Do not wake up the thread that waits for page-fault resolution
> +.TP
> +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> +Allow holes in the source virtual range that is being moved.
> +When not specified, the holes will result in
> +.B ENOENT
> +error.
> +When specified, the holes will be accounted as successfully
> +moved memory. This is mostly useful to move hugepage aligned
> +virtual regions without knowing if there are transparent
> +hugepages in the regions or not, but preventing the risk of
> +having to split the hugepage during the operation.

Please use semantic newlines.  In this case, I'd break:

-  after ','
-  after '.'
-  after 'useful'
-  before 'without'
-  after ','
-  after 'of'

> +.P
> +The
> +.I move
> +field is used by the kernel to return the number of bytes
> +that was actually moved, or an error (a negated

I'd break:

-  after 'kernel'
-  after ','
-  before '('

> +.IR errno -style
> +value). The

Always break after '.'

See also: <https://web.archive.org/web/20171217060354/http://www.heraclitea=
nriver.com/?p=3D324>

> +.I move
> +field is output-only;
> +it is not read by the
> +.B UFFDIO_MOVE
> +operation.
> +.P
> +The operation may fail for various reasons. Usually, remapping of
> +pages that are not exclusive to the given process fail; once KSM
> +might deduplicate pages or fork() COW-shares pages during fork()
> +with child processes, they are no longer exclusive. Further, the
> +kernel might only perform lightweight checks for detecting whether
> +the pages are exclusive, and return -EBUSY in case that check fails.
> +To make the operation more likely to succeed, KSM should be
> +disabled, fork() should be avoided or MADV_DONTFORK should be
> +configured for the source VMA before fork().

Please use semantic newlines.

Also, a few things like EBUSY and MADV_DONTFORK should be marked up.

> +.SH RETURN VALUE
> +On success,
> +0 is returned.
> +In this case, the entire area was moved.
> +.P
> +On error, \-1 is returned and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +.TP
> +.B EAGAIN
> +The number of bytes moved (i.e., the value returned in the
> +.I move
> +field)
> +does not equal the value that was specified in the
> +.I len
> +field.
> +.TP
> +.B EINVAL
> +Either
> +.I dst
> +or
> +.I len
> +was not a multiple of the system page size, or the range specified by
> +.I src
> +and
> +.I len
> +or
> +.I dst
> +and
> +.I len
> +was invalid.
> +.TP
> +.B EINVAL
> +An invalid bit was specified in the
> +.I mode
> +field.
> +.TP
> +.BR ENOENT
> +The source virtual memory range has unmapped holes and
> +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> +is not set.
> +.TP
> +.BR EEXIST
> +The destination virtual memory range is fully or partially
> +mapped.
> +.TP
> +.BR EBUSY
> +The pages in the source virtual memory range are either
> +pinned or not exclusive to the process. The kernel might
> +only perform lightweight checks for detecting whether the
> +pages are exclusive. To make the operation more likely to
> +succeed, KSM should be disabled, fork() should be avoided
> +or MADV_DONTFORK should be configured for the source virtual
> +memory area before fork().

Semantic newlines.

This paragraph is repeating part of the information from the last
paragraph in the DESCRIPTION.  Do we want to de-duplicate somehow?

> +.TP
> +.BR ENOMEM
> +Allocating memory needed for the operation failed.
> +.TP
> +.BR ESRCH
> +The target process has exited at the time of a UFFDIO_MOVE

UFFDIO_MOVE should be bold.

> +operation.
> +.SH STANDARDS
> +Linux.
> +.SH HISTORY
> +Linux 6.8.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR ioctl_userfaultfd (2),
> +.BR userfaultfd (2)
> +.P
> +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
>=20
> base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
> --=20
> 2.49.0.805.g082f7c87e0-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--xonxjtufpsucecz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgIoegACgkQ64mZXMKQ
wqkTExAAnwB4tkyuRXfO6azsDoy5Dh6H9IBPYCgqwmo/qMAoPPrWFem96DZ4221O
FIGeqUZC28b2QPdpK6ZnGDCjjbOeCyBl7cT4gmnTIiqIz9F9aUrtacUu/AszwALJ
vfAlz+u1dResmfEk3vuAU+VLhR2T0UPJNYj1pdqS6Umxo0YN6ix/YpdglNyeQWsx
tQYT4BrX8CNE1r3cSwV2VxnJ3Wm/qDwVbMu54ilKkXKCoIczLuC38+JIfkGLZPrh
I5+9UIE/d5bggiraoTeWJZhS/LFxCxk07xj4HAIxnOYnE/h96OdhUYYKhNM3psMu
jo2in76HabgaztWVOkWK7yYO/7Jfb3WIK5H0ZrwCRmgTCxF3vhfVVNyZGof7zzE0
KwrEQcPwQ7Ks/ZNXd9gOsyb8usbyScOuletSM5AQCc6/So0qceg2czMJSAlITYkV
D+wVrYaJPFOCJ2EJe81kUwvdPMOz9ZJelwm3zBaamT0wZzpOk5pOiEEgVRjYykR0
QS/JPyJvMClugXG6xg4q+4y7Agud0aqMqV51T1LqxbJb/dhMeXjeN94CpKoEMtUV
xge8L8fz/ODKVoiBjqYkYUhXV9UQDjrXoonZMllhT9hCh9k+RFS9eT+09d5lQbpB
NONuJeEcH93mcOnDB/+sb/N7RZXrvOC1NSCrcw2eJwO5sc6kPt8=
=eh/g
-----END PGP SIGNATURE-----

--xonxjtufpsucecz7--

