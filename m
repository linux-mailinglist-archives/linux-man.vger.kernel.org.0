Return-Path: <linux-man+bounces-3820-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED5BB3EC4E
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:37:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1F2C1A88292
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:37:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EBF7320A1D;
	Mon,  1 Sep 2025 16:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1luHjRA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFE6320A17;
	Mon,  1 Sep 2025 16:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756744615; cv=none; b=MSkYmbJH5X4FD+yxAOrie5DHo+r0/1EfsttKvvRsQmgFlmuQ1fT2u8svOk2yur31HyZ6J8ZZZ63sWu6ZhewPtzOSC2P/HQb7oe53md0FATFFSCmCU6alGDtJK7w2gIWEo7JjEn5oBe2fh1bDxd9QXqIJfSq5RU+JMb8G9VUxUTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756744615; c=relaxed/simple;
	bh=irSa5lMDZ3F7GHzasGLDqinF5Ycf9SAXGWKs0qSH2W4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iMO2lb3SvQc1fZzkIUXvCC9fifZH23G3HiqYqx/ZxZpEBUFMuVnygDPCjUmbRcYZLe6+Sdj+NCpHgKOQ5m4l2ZTomkM5TstjGTXU7B7QAvf2LMV/zJc7k9h6hoQG1kmVRyXHdYUb+tj5TTuZrv6rz4UMy1XludsblfcXpolrIEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1luHjRA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59095C4CEF0;
	Mon,  1 Sep 2025 16:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756744614;
	bh=irSa5lMDZ3F7GHzasGLDqinF5Ycf9SAXGWKs0qSH2W4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a1luHjRAyRx4ZuelPBXsYJDnGBnJgA1dbzWt5HWvCEJNKcW/wYUWydjXxneggLIBA
	 y5fKwbegdXbOA+wE1Pv88sNyuTVKQMNlzBoNcWkhH7vym5N79dnXD59c2hhYcxcijP
	 ejFOj/GELkUTK2B+NocnfJJkKN1Mc/629QQS/pCcjytsQYzIhBDM3+8qvFJKdUjGAz
	 RojF0hCK1tqHI4PLBBt6FnG7XAvB94bzbQ4gQcIRHuGdjvs9VkQJqPFdDc6R/1B9z0
	 b54aLjcRaVPIcHyCwgiqZvs48/cHt+VRVFFzsW90o2/multzrufdB9U47BWbeJGVln
	 C+GoFiAj5fiZA==
Date: Mon, 1 Sep 2025 18:36:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Message-ID: <ejz6kpdn6kxuspktab3m7sjwg3l7eevacoabgroxgsltognb7y@3edyqhpae4vn>
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2mb5tchhaquahpfr"
Content-Disposition: inline
In-Reply-To: <20250901160903.2801339-1-usamaarif642@gmail.com>


--2mb5tchhaquahpfr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Usama Arif <usamaarif642@gmail.com>
Cc: linux-man@vger.kernel.org, david@redhat.com, 
	lorenzo.stoakes@oracle.com, hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev, 
	ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com, 
	Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250901160903.2801339-1-usamaarif642@gmail.com>

Hi Usama,

On Mon, Sep 01, 2025 at 05:09:03PM +0100, Usama Arif wrote:
> PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
> THPs when advised. IOW, it allows individual processes to opt-out of THP =
=3D
> "always" into THP =3D "madvise", without affecting other workloads on the
> system. The series has been merged in [1].
>=20
> This patch documents the changes introduced due to the addition of
> PR_THP_DISABLE_EXCEPT_ADVISED flag:
> - PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
>   is configured for the calling thread (with or without
>   PR_THP_DISABLE_EXCEPT_ADVISED).
> - PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
>   completely for the process, or disable except madvise
>   (PR_THP_DISABLE_EXCEPT_ADVISED).
>=20
> [1] https://lore.kernel.org/all/20250815135549.130506-1-usamaarif642@gmai=
l.com/
>=20
> Signed-off-by: Usama Arif <usamaarif642@gmail.com>

Thanks for writing the patch!  Please see some comments below.

> ---
>  man/man2/madvise.2                      |  4 +-
>  man/man2const/PR_GET_THP_DISABLE.2const | 18 ++++++---
>  man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
>  3 files changed, 61 insertions(+), 13 deletions(-)
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 10cc21fa4..6a5290f67 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -373,7 +373,9 @@ nor can it be stack memory or backed by a DAX-enabled=
 device
>  (unless the DAX device is hot-plugged as System RAM).
>  The process must also not have
>  .B PR_SET_THP_DISABLE
> -set (see
> +set without the
> +.B PR_THP_DISABLE_EXCEPT_ADVISED
> +flag (see
>  .BR prctl (2)).

Double negation is confusing.  Please rephrase to something like

	The process can have X set
	only if Y is also set.

>  .IP
>  The
> diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/PR_G=
ET_THP_DISABLE.2const
> index 38ff3b370..df239700f 100644
> --- a/man/man2const/PR_GET_THP_DISABLE.2const
> +++ b/man/man2const/PR_GET_THP_DISABLE.2const
> @@ -6,7 +6,7 @@
>  .SH NAME
>  PR_GET_THP_DISABLE
>  \-
> -get the state of the "THP disable" flag for the calling thread
> +get the state of the "THP disable" flags for the calling thread
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -18,13 +18,21 @@ Standard C library
>  .B int prctl(PR_GET_THP_DISABLE, 0L, 0L, 0L, 0L);
>  .fi
>  .SH DESCRIPTION
> -Return the current setting of
> -the "THP disable" flag for the calling thread:
> -either 1, if the flag is set, or 0, if it is not.
> +Returns a value whose bits indicate how THP-disable is configured

s/Returns/Return/

> +for the calling thread.
> +The returned value is interpreted as follows:
> +.P
> +.nf
> +.B "Bits"
> +.B " 1 0  Value  Description"
> + 0 0    0    No THP-disable behaviour specified.
> + 0 1    1    THP is entirely disabled for this process.
> + 1 1    3    THP-except-advised mode is set for this process.

We should probably use a table with .TS/.TE.  See examples of this in
other manual pages for how to use that (or read tbl(1) if you want).

If you don't know how to use that, I can do it myself.  tbl(1) is a bit
weird.

> +.fi
>  .SH RETURN VALUE
>  On success,
>  .BR PR_GET_THP_DISABLE ,
> -returns the boolean value described above.
> +returns the value described above.
>  On error, \-1 is returned, and
>  .I errno
>  is set to indicate the error.
> diff --git a/man/man2const/PR_SET_THP_DISABLE.2const b/man/man2const/PR_S=
ET_THP_DISABLE.2const
> index 564e005d4..9f0f17702 100644
> --- a/man/man2const/PR_SET_THP_DISABLE.2const
> +++ b/man/man2const/PR_SET_THP_DISABLE.2const
> @@ -6,7 +6,7 @@
>  .SH NAME
>  PR_SET_THP_DISABLE
>  \-
> -set the state of the "THP disable" flag for the calling thread
> +set the state of the "THP disable" flags for the calling thread
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc ,\~ \-lc )
> @@ -15,24 +15,62 @@ Standard C library
>  .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
>  .B #include <sys/prctl.h>
>  .P
> -.BI "int prctl(PR_SET_THP_DISABLE, long " flag ", 0L, 0L, 0L);"
> +.BI "int prctl(PR_SET_THP_DISABLE, long " thp_disable ", unsigned long "=
 flags ", 0L, 0L);"

Hmmm, I'm reading this weirdly.

Old code doing prctl(PR_SET_THP_DIABLE, 1, 0L, 0L, 0L); would be
transformed from setting the flag before, to now using 0L as flags?

Or how is backwards compatibility handled?

>  .fi
>  .SH DESCRIPTION
> -Set the state of the "THP disable" flag for the calling thread.
> +Set the state of the "THP disable" flags for the calling thread.
>  If
> -.I flag
> -has a nonzero value, the flag is set, otherwise it is cleared.
> +.I thp_disable
> +has a nonzero value, the THP disable flag is set according to the value =
of

Please break the line after the comma.

> +.I flags,
> +otherwise it is cleared.
>  .P
> -Setting this flag provides a method
> +This
> +.BR prctl (2)
> +provides a method
>  for disabling transparent huge pages
>  for jobs where the code cannot be modified,
>  and using a malloc hook with
>  .BR madvise (2)
>  is not an option (i.e., statically allocated data).
> -The setting of the "THP disable" flag is inherited by a child created via
> +The setting of the "THP disable" flags is inherited by a child created v=
ia
>  .BR fork (2)
>  and is preserved across
>  .BR execve (2).
> +.P
> +The behavior depends on the value of
> +.IR flags:
> +.TP
> +.B 0
> +The
> +.BR prctl (2)
> +call will disable THPs completely for the process,
> +irrespective of global THP controls or
> +.BR MADV_COLLAPSE .
> +.TP
> +.B PR_THP_DISABLE_EXCEPT_ADVISED
> +The
> +.BR prctl (2)
> +call will disable THPs for the process except when the usage of THPs is
> +advised.

Please break the line before 'except'.  See 'Use semantic newlines'
in man-pages(7).

> +Consequently, THPs will only be used when:
> +.RS
> +.IP \[bu] 2

s/2/3/

See man-pages(7) ("Lists"):

       There should always be exactly 2 spaces between the list  symbol
       and  the  elements.   This doesn't apply to "tagged paragraphs",
       which use the default indentation rules.

(If you grep(1) around, you'll see that number everywhere.)

> +Global THP controls are set to "always" or "madvise" and
> +.BR madvise (...,
> +.BR MADV_HUGEPAGE )

I'd say

	.I madvise(..., MADV_HUGEPAGE)

as an inlined expression, which goes in full italics; that's simpler.

> +or
> +.BR madvise (...,
> +.BR MADV_COLLAPSE )
> +is used.
> +.IP \[bu]
> +Global THP controls are set to "never" and
> +.BR madvise (...,
> +.BR MADV_COLLAPSE )
> +is used.
> +This is the same behavior as if THPs would not be disabled on
> +a process level.

Please break the line before "as if".

> +.RE
>  .SH RETURN VALUE
>  On success,
>  0 is returned.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--2mb5tchhaquahpfr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1y5gACgkQ64mZXMKQ
wql64g/+Jl7yNAQ9/UnAWeBGXZPPU/i1eQRKw9NALzwfmJI+ErsCfFQiTiipDF8t
9QbmRmIbZyQchpnwNBgS6CnwJG4I3tt4jyJi6I2kRvCAY8BkSh3W71vaDD20ShMA
0mEeKkomlhtHaC4W9xFvWmUSnrV8BE9oSdfNtVtg6OUrIdiELud14nD/DYYJ7c73
vbI7EJY0yD4ko9lBVtm5BrBWjSiXKIOCPzr4BN2/PFhPpgunv9iC27EuZ2pmxDjD
u0u0dxi+ObG9UbTD7Dq35amrgd0wh0wh00vCrnoZeh1kewIjhgkXbyTZJPgPabOG
zhg/KJdzu/Xd9nLmFa5oSxCHljAoUpw0pTiGC1OWl0l1hvQtRF0GwBsSfbo3OP2h
Ft301EEqyEX448mdS4Ho+q0Nia1u6VnOpa2t0YnLQAsxsLpLuC0KxSXdjnh7yYpB
sOWSHQo5NQpIwuRsrfOzwgMkI28GUrJML8GdEOT7FB5nzbUnzbBVwo2lUofQm1cG
YCo/NtP3N16pRNiRK8zniPI1OVNKe3XStARDJDDXSVIx+lmgUp1BqfP/8aXAEixP
DoaAksl3F5UDq6PRgR3uU1TweHACpKCtH8Lz9xuAac3gmFMtVCIStiaqe3ho/e6H
ieUoSDOrzQabxRimReaVCGw8dFMg2m5arDIwNbJufKyVNZ/z8oE=
=CyPi
-----END PGP SIGNATURE-----

--2mb5tchhaquahpfr--

