Return-Path: <linux-man+bounces-2831-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEB9AA5F08
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 15:12:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43C8817E40A
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 13:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE2D178CF8;
	Thu,  1 May 2025 13:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXFDMfFR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8DE174EF0
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 13:12:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746105138; cv=none; b=rNtjYszCbaBSGPSHshCSD4ZyDuKMw1sg8A/86kpRWBZmxKhovNN94bRkhTphtdStBA8iGsUFGKWZIoTLLonDAZbf64KCse6isaofjQGgEZzANoIOPsb+9lOeWBRTomJHKr/nhso29DhdUQtpkNVHlzLViOMezcmQ3oAklliwQGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746105138; c=relaxed/simple;
	bh=d51tPe4cFQN6XNPf8mezXdhZRl089bse9/yCAWaqDN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=StJturhNr+OTyeIVddjleXgvmrLDZ6T+Xq4fUZOig52YOF1caXqz+mWL3vKYx8jGf4MvWokyd7CqL8iZssG8I2u0w7OTBW+eNMpNXsLmUMTC8kSkyysqIn6QJmh5SPkPvbjLA+RWQXgv75fgY4Y+v5hHTkdE7YEOVBgPicd+PDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXFDMfFR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5042FC4CEE3;
	Thu,  1 May 2025 13:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746105138;
	bh=d51tPe4cFQN6XNPf8mezXdhZRl089bse9/yCAWaqDN4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZXFDMfFR9l1qNNPfsw+njFh5T7dOECp4VNA5czMxsQR1dmN2uKweXywQzl31RIXDU
	 YRwBsfdPKiLx0G/WdkyHPdyEBwJw7Rbch8EXwA/qziquWbx4MFqxTFdvqqlHZVUayE
	 r2e1ycqx544ORO8SyRTjphTtAXkZ0CJzSpdbw5S5aJGg1KiV7qhEUO7zuVyTHFrCgo
	 o0S4C2M8eesMPRSWVPAooxb/UBWUi47EdVbPy19K4xCVW7ZLLJZzL5uA4lW5sraeTH
	 QH6HkvYK296s1rlzHz+6E+JkcN5yPyxQ/3TlkkbvFahvX2vmPhjLS5jAKW70y+hMlQ
	 k5OTL8XDPzftA==
Date: Thu, 1 May 2025 15:12:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Cc: aarcange@redhat.com, lorenzo.stoakes@oracle.com, david@redhat.com, 
	peterx@redhat.com, lokeshgidra@google.com, linux-man@vger.kernel.org, 
	linux-mm@kvack.org
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
Message-ID: <iez4k4xdfxnbc6nvo6rxfoqd4argcx3adsmtaxjr4q4ra46324@tvo5pbno6n7i>
References: <20250423195309.2841410-1-surenb@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4xuwcxmyc3gova6v"
Content-Disposition: inline
In-Reply-To: <20250423195309.2841410-1-surenb@google.com>


--4xuwcxmyc3gova6v
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
MIME-Version: 1.0
In-Reply-To: <20250423195309.2841410-1-surenb@google.com>

Hi Suren,

On Wed, Apr 23, 2025 at 12:53:09PM -0700, Suren Baghdasaryan wrote:
> Documentation was extracted from the original patch written by Andrea
> Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> the same documentation style as other userfaultfd ioctl commands.
>=20
> [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google.c=
om/>
>=20
> Signed-off-by: Suren Baghdasaryan <surenb@google.com>

I've formatted references to fork(2).  I also fixed a few places with
s/BR/B/.  Other than that, the patch was fine; I've applied it.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dd7dec35a3b197d499c0bb2b078117478fe6382d1>
Below is the diff with which I amended the patch.


Have a lovely day!
Alex


diff --git i/man/man2const/UFFDIO_MOVE.2const w/man/man2const/UFFDIO_MOVE.2=
const
index 77b0ca781..daa122b30 100644
--- i/man/man2const/UFFDIO_MOVE.2const
+++ w/man/man2const/UFFDIO_MOVE.2const
@@ -108,36 +108,42 @@ .SH ERRORS
 .I .mode
 field.
 .TP
-.BR ENOENT
+.B ENOENT
 The source virtual memory range has unmapped holes and
 .B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
 is not set.
 .TP
-.BR EEXIST
+.B EEXIST
 The destination virtual memory range is fully or partially
 mapped.
 .TP
-.BR EBUSY
+.B EBUSY
 The pages in the source virtual memory range are either
 pinned or not exclusive to the process.
 Once KSM deduplicates pages
-or fork() COW-shares pages during fork() with child processes,
+or
+.BR fork (2)
+COW-shares pages during
+.BR fork (2)
+with child processes,
 they are no longer exclusive.
 The kernel might only perform lightweight checks
 for detecting whether the pages are exclusive.
 To make the operation more likely to succeed,
 KSM should be disabled,
-fork() should be avoided
+.BR fork (2)
+should be avoided
 or
 .B MADV_DONTFORK
 should be configured
 for the source virtual memory area
-before fork().
+before
+.BR fork (2).
 .TP
-.BR ENOMEM
+.B ENOMEM
 Allocating memory needed for the operation failed.
 .TP
-.BR ESRCH
+.B ESRCH
 The target process has exited at the time of a
 .B UFFDIO_MOVE
 operation.


> ---
> Changes since v1[1]
> - removed '\" t, per Alejandro Colomar
> - reformated sentences to use semantic newlines, per Alejandro Colomar
> - changed field names to use '.' prefix, per Alejandro Colomar
> - changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
> per Alejandro Colomar
> - folded duplicate information into EBUSY error description,
> per Alejandro Colomar
>=20
> [1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@google.co=
m/
>=20
>  man/man2/ioctl_userfaultfd.2     |   2 +
>  man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++++
>  2 files changed, 155 insertions(+)
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
> index 000000000..77b0ca781
> --- /dev/null
> +++ b/man/man2const/UFFDIO_MOVE.2const
> @@ -0,0 +1,153 @@
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
> +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error */"
> +.B };
> +.EE
> +.SH DESCRIPTION
> +Atomically move a continuous memory chunk
> +into the userfault registered range
> +and optionally wake up the blocked thread.
> +.P
> +The following value may be bitwise ORed in
> +.I .mode
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
> +When specified,
> +the holes will be accounted as successfully moved memory.
> +This is mostly useful
> +to move hugepage aligned virtual regions
> +without knowing if there are transparent hugepages in the regions or not,
> +but preventing the risk of
> +having to split the hugepage during the operation.
> +.P
> +The
> +.I .move
> +field is used by the kernel
> +to return the number of bytes that was actually moved,
> +or an error
> +(a negated
> +.IR errno -style
> +value).
> +The
> +.I .move
> +field is output-only;
> +it is not read by the
> +.B UFFDIO_MOVE
> +operation.
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
> +.I .move
> +field)
> +does not equal the value that was specified in the
> +.I .len
> +field.
> +.TP
> +.B EINVAL
> +Either
> +.I .dst
> +or
> +.I .len
> +was not a multiple of the system page size, or the range specified by
> +.I .src
> +and
> +.I .len
> +or
> +.I .dst
> +and
> +.I .len
> +was invalid.
> +.TP
> +.B EINVAL
> +An invalid bit was specified in the
> +.I .mode
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
> +pinned or not exclusive to the process.
> +Once KSM deduplicates pages
> +or fork() COW-shares pages during fork() with child processes,
> +they are no longer exclusive.
> +The kernel might only perform lightweight checks
> +for detecting whether the pages are exclusive.
> +To make the operation more likely to succeed,
> +KSM should be disabled,
> +fork() should be avoided
> +or
> +.B MADV_DONTFORK
> +should be configured
> +for the source virtual memory area
> +before fork().
> +.TP
> +.BR ENOMEM
> +Allocating memory needed for the operation failed.
> +.TP
> +.BR ESRCH
> +The target process has exited at the time of a
> +.B UFFDIO_MOVE
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

--4xuwcxmyc3gova6v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgTcy0ACgkQ64mZXMKQ
wqn5XBAApsXEomAENW7IZjtZ4fVBgpzMrLMUqTaxOAtDFZKY5bi2Od0lNE/QhHoj
WyIIJotllj6GyyYyG5cnzgJgTz71CWJBA0XwqI5s1Oiwv99TyfjH/9owi95UIA8a
KZrIJUsENDUDwm1//fSQySNPgUkp0D260rk1Q7/Y5yXEC7S6MwnoMgpzr2kUIDKv
KLWVIrDK03Mp+tO43LttxKWx44YxtTQhNzaaOPrZFphvhFikFgxkhag4JkCgyHel
k6sFnKTW0gj11sWAKosgaKQWaetupasTzZKV0N5LOofKieaVOTvmAGVNfY7msVj5
8aijt5QRGvjn53Hgo/Ay0/mAI2pvFaSBCafVV8hzIL6cQgvs47ycpVLwLskmuQ+t
oXH5w+kqEmH7NXvdMy0Vi6Uiy9waOidHWu1TojkGZlL802VRkTgROMOWgdxP01fT
txHfnYsyGaNIx3I5h91Vongnr8uhKfzC365AQwG5DSQ0FXi7fkSYIfeEZ7qUgwV0
GY7KIH7grLGCF697pLg7OlhfoQOnkQLmxNnyIht/JO/78wwsCBpkd2UIyQp3uvUD
0orFUVGv+HWXDSf9mLuqSo2QcX8G3DAF9DnhTsCY3WUZWERnVQfdSMZiPFPGpnOQ
wY4+p/8gmqL36gOxLKejjak1zkn1zWpkh0oFrQF2tBzFugXPs7U=
=/psX
-----END PGP SIGNATURE-----

--4xuwcxmyc3gova6v--

