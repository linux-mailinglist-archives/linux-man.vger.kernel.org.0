Return-Path: <linux-man+bounces-1767-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 198CF96E6B0
	for <lists+linux-man@lfdr.de>; Fri,  6 Sep 2024 02:16:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36AED1C216C4
	for <lists+linux-man@lfdr.de>; Fri,  6 Sep 2024 00:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A843610D;
	Fri,  6 Sep 2024 00:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXQMgcnB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3A0442C
	for <linux-man@vger.kernel.org>; Fri,  6 Sep 2024 00:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725581803; cv=none; b=IYRzPpKJyMIE/Je/4SYRBEtxD+xabbRtJn7EW+Gpny/VfZh7emzU2jWoklhPUvLi8T2WtbasaQN3YpEm3BWTQEPSY/0m5+S9lGjmHBpGPhibIyE0hude1fJnILr5DUvn8SJFuXwY3rSET4gZVqABYFq9bCvtgkzRuV7QeJBFhWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725581803; c=relaxed/simple;
	bh=DFjM2yfGVl2Vqr+VD20VK3ywCF6zfVRqQbFr4aOJxLQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NfvwSnfUXlxezLP475/1sXaSEtQaDRpZPR69pTIjdAa7ba5g+epryJ8ebnIgYdmXiWrd+tQ/t/0YlbNx1jBG0vPk1wcAxo3N00+p4zo/C3dYDK9rT2/8V+glv7Yfw/Lff7tFx8XqP3gyoUCGl0oBnJYQ9r8nABnb9AiiOW0qX40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXQMgcnB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52855C4CEC3;
	Fri,  6 Sep 2024 00:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725581802;
	bh=DFjM2yfGVl2Vqr+VD20VK3ywCF6zfVRqQbFr4aOJxLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CXQMgcnBQP0fhh7C0+ShqB7dd1zp7LgY6AE580M1ZherAScAe8KX2SvrA0okIGujr
	 qboGHe5e4pq2tDDz9BD4jJq7hKZn1tbi89ZZzr8uyrw2z7M4e6/YDQXvFrIBTW4N1X
	 pvPdrC58ddMsWG6w4wxIAPIvYourNPOaGMIOaM0X47+2PjjU3kUruxryZP1eAEUrAw
	 hzzaQ9izNEf21y4BRViHb2wYcHe03z4vKH9Mga0KywycAErwHiaTbb4Czv3xffaJ+J
	 tvZh1zAcUJlHfz4WBAsLZpTNQ8ldmPs5fie/YC3Lp2Ap/8CWcecPmwhb3OBh82kmuL
	 4DfvKiZNukPsA==
Date: Fri, 6 Sep 2024 02:16:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] timespec_get.3: new page (timespec_get(),
 timespec_getres())
Message-ID: <ef6eluqhqcwp64nhqlmuy4auznopmepoysg4zd4loascr64sof@6hic5rkysfs7>
References: <rbpi2t6uf2pxoasor5xvwg6rurv6fhoahdxkkzifiada5mz5od@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ix6co3w2wesjzbv7"
Content-Disposition: inline
In-Reply-To: <rbpi2t6uf2pxoasor5xvwg6rurv6fhoahdxkkzifiada5mz5od@tarta.nabijaczleweli.xyz>


--ix6co3w2wesjzbv7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] timespec_get.3: new page (timespec_get(),
 timespec_getres())
References: <rbpi2t6uf2pxoasor5xvwg6rurv6fhoahdxkkzifiada5mz5od@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <rbpi2t6uf2pxoasor5xvwg6rurv6fhoahdxkkzifiada5mz5od@tarta.nabijaczleweli.xyz>

Hi Ahelenia,

On Thu, Sep 05, 2024 at 01:41:58PM GMT, Ahelenia Ziemia=C5=84ska wrote:
> If you're wondering how errno is affected, so am I; no-one really says;
> quoth POSIX:
>   If base is TIME_UTC, the members of ts shall be set to the same values =
as would be set by a call
>   to clock_gettime(CLOCK_REALTIME, ts).
>=20
>   RETURN VALUE
>     If the timespec_get( ) function is successful it shall return the non=
-zero value base; otherwise, it
>     shall return zero.
>=20
>   ERRORS
>     See DESCRIPTION.
>=20
> But this is a moot point since clock_gettime() can't fail anyway
> (glibc doesn't even check the error).

I see at least the following errors in clock_gettime(2):

     EFAULT
            tp points outside the accessible address space.

     EINVAL
            The  clockid  specified  is invalid for one of two reasons.
            Either the System=E2=80=90V style hard coded positive value is =
 out
            of range, or the dynamic clock ID does not refer to a valid
            instance of a clock object.

     EINVAL
            The clockid specified in a call to clock_settime() is not a
            settable clock.

     ENODEV
            The hot=E2=80=90pluggable device (like USB for example) represe=
nted
            by a dynamic clk_id has disappeared after its character de=E2=
=80=90
            vice was opened.

     ENOTSUP
            The operation is not supported by the dynamic  POSIX  clock
            device specified.

     EOVERFLOW
            The timestamp would not fit in time_t range.  This can hap=E2=
=80=90
            pen  if an executable with 32=E2=80=90bit time_t is run on a 64=
=E2=80=90bit
            kernel when the time is 2038=E2=80=9001=E2=80=9019 03:14:08 UTC=
  or  later.
            However,  when  the  system  time is out of time_t range in
            other situations, the behavior is undefined.

>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man/man3/timespec_get.3 | 82 +++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 man/man3/timespec_get.3
>=20
> diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
> new file mode 100644
> index 000000000..5e053d551
> --- /dev/null
> +++ b/man/man3/timespec_get.3
> @@ -0,0 +1,82 @@
> +'\" t
> +.\" SPDX-License-Identifier: 0BSD
> +.\"
> +.TH timespec_get 3 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +timespec_get, timespec_getres \- standard C clock and time functions
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ,\~ \-lc ),
> +.SH SYNOPSIS
> +.nf
> +.B #include <time.h>
> +.P
> +.BI "int timespec_get(struct timespec *" res ", int " base );
> +.BI "int timespec_getres(struct timespec *" tp ", int " base );
> +.fi
> +.P
> +.RS -4
> +Feature Test Macro Requirements for glibc (see
> +.BR feature_test_macros (7)):
> +.RE
> +.P
> +.BR timespec_get ():
> +.nf
> +    _ISOC11_SOURCE || _ISOC2X_SOURCE
> +        || __STDC_VERSION__ >=3D 201112L
> +        || /* glibc <=3D 2.19: */ _BSD_SOURCE || _SVID_SOURCE
> +.P
> +.BR timespec_getres ():
> +.nf
> +    _ISOC2X_SOURCE || __STDC_VERSION__ > 201710L
> +.fi
> +.SH DESCRIPTION
> +.BI timespec_get\fR(\fP tp ", TIME_UTC)"

This should be fully italics (inline code).

> +is defined as
> +.BI "clock_gettime\fR(\fPCLOCK_REALTIME, " tp )\fR.\fP

Same here: fully italics, since it's inline code.


> +.P
> +.BI timespec_getres\fR(\fP res ", TIME_UTC)"
> +is equivalent to
> +.BI "timespec_getres\fR(\fPCLOCK_REALTIME, " res )\fR.\fP
> +.P
> +.BR TIME_UTC
> +is universally guaranteed to be a valid
> +.IR base ,
> +and is the only one supported under Linux.
> +.SH RETURN VALUE
> +.B 0
> +if base is unsupported or the call failed, otherwise
> +.IR base .
> +.SH ATTRIBUTES
> +For an explanation of the terms used in this section, see
> +.BR attributes (7).
> +.TS
> +allbox;
> +lbx lb lb
> +l l l.
> +Interface	Attribute	Value
> +T{
> +.na
> +.nh
> +.BR timespec_get (),
> +.BR timespec_getres ()
> +T}	Thread safety	MT-Safe
> +.TE
> +.SH STANDARDS
> +.BR timespec_get (),
> +.BR TIME_UTC :
> +C23, POSIX.1-2024.
> +.br
> +.BR timespec_getres ():
> +C23.
> +.br

I prefer:

=2ETP
=2EBR timespec_get ()
=2ETQ
=2EB TIME_UTC
C23,
POSIX.1-2024.
=2ETP
=2EBR timespec_getres ()
C23.

Have a lovely night!
Alex

> +.SH HISTORY
> +.BR timespec_get (),
> +.BR TIME_UTC :
> +C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
> +.br
> +.BR timespec_getres ():
> +C23, glibc 2.34.
> +.SH SEE ALSO
> +.BR clock_gettime (2),
> +.BR clock_getres (2)
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--ix6co3w2wesjzbv7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbaSegACgkQnowa+77/
2zI0AQ/9HnOstxXs8CrGUK++JWmaE5CjNYlJIYd3fBKG0P43eHFzrxA5M8aRJEMU
b79tJ6ekHcn8i25r1IXK7/uKwbtILvlKCnlMxLEWH/7F0boXKatLEbIz3wDoecJe
SIzvfxWX3mXS9aAAQOgfHiJfM/2zqr6IaOxTemOIg/AWfLMTb0PokkJXi5YD3m6m
daTgHzvabEtZCkJppmYs3x9GO8FOK0KHMBcf7SbRZC9pqf/TRdax5d9VFZ1+g3Nu
e7Xdj09fWm9pj8qAKtIw9EpPdSb+1uLX8pK73+SAqNhIZ5Zb1uObHyj8wk/eV6s4
hEGm9ts8xmgqzsaz9Gjhl0joYgKxGDuGoymfDqJrbuHKuumuwk/Zv4Y0otdEuNVT
z/+Net6NhMvT55ylAFhIzr0xVdmNoxH14AhPBHP/kd+LnQKD7QULI2J/7Q+xNARC
4o2tPHEkMgqm4nSgTQzBrp+8oTOuBOczbYK7Byg8cYJkxX4kFYFsciXum/9updI5
uX1CLfLjhhxHNYDiXqVbn8ymeNXVbJerO11JpypdjrVg3FbVpon+HNCCaONrvtFG
Kzf6NKtTowAXC71yCSxKxWBv+2iqd5OoNYrtUry1Jd+WdehrSAVl6EVU16tHAxTX
AajQNAPlJWLP1BnlOCsiQd6tDxCWsbgu7gbF7rj4CbiMnK4V6Kc=
=4omH
-----END PGP SIGNATURE-----

--ix6co3w2wesjzbv7--

