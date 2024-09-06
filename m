Return-Path: <linux-man+bounces-1769-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9A596F61C
	for <lists+linux-man@lfdr.de>; Fri,  6 Sep 2024 16:01:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C7B2BB213F1
	for <lists+linux-man@lfdr.de>; Fri,  6 Sep 2024 14:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24DCE13AA38;
	Fri,  6 Sep 2024 14:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="FIeOP6sb"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B8B1799F
	for <linux-man@vger.kernel.org>; Fri,  6 Sep 2024 14:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725631272; cv=none; b=HWFE7RRsaYnfPnkdsuGAL2epfAkCVRgKMxWVxz/Cx7zpU3Pxqlm8Tr0anOfua3u3C8W01DRM6SC84aRpIx8m2n/OK5hQqXm66oC8WTzij5BU9CENaSAvb3npbAh7M59BIADB/5aIT3bNsANMwYFbMfw3UE9g3RHlqxXFJXeseNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725631272; c=relaxed/simple;
	bh=wgyX6JhXZfN3ZQ5OqK4cckPGVF+DBhT8iimMcs+xD2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=azgW5ZXoMwGQW0g5fnTr3sfvoQGQUllFh89xVqfRWQDw5ABqs9M0Slw7g6+ur/aJXr4EkCiKILP7Nniv6T0idmCAxVSYPUthZ80weq4/ZaUbL4tvNxMTrtMOK4t0XgtIzV0iyCIsE8hJIFQUjJcw69/lLxbs4SG+GKfAcbT6VgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=FIeOP6sb; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1725631258;
	bh=wgyX6JhXZfN3ZQ5OqK4cckPGVF+DBhT8iimMcs+xD2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FIeOP6sbfAoarC/17LfxPUXP0/HpkxQKYiBvBYgFnfLCFhIh1ZUF9hK8vRKVYTW2e
	 GMH6mXw/xUnjBc5GhbnRodD5OS1M1ux0mLEq81oW410dOcY24u6rXUiqXxFbhNcTzd
	 wsQRXRZ2Ho2HwiRlhUQGg1iYBPWS7nqMuY22Tp5/eO9qJEivlIWWLLNP03D55RIeLD
	 P6Hftp7qSebpRFBGHNEi6HyVQHKPTrfX+SYQITDAbge8eOosbIhOHdFEeYtT5JYFQg
	 QpiYKIwp/j+k6ai5f4EUen9vg8WV68TPKyw6r/siKTjpZ18H/uiUonFohh3Sn89aPM
	 PSmwfaaVy/BNw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8579D1972;
	Fri,  6 Sep 2024 16:00:58 +0200 (CEST)
Date: Fri, 6 Sep 2024 16:00:58 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] timespec_get.3: new page (timespec_get(),
 timespec_getres())
Message-ID: <4de7xp6c5qwk2d3vwrzuyqmk6li2wuotok4y72usohewt36nq3@tarta.nabijaczleweli.xyz>
References: <rbpi2t6uf2pxoasor5xvwg6rurv6fhoahdxkkzifiada5mz5od@tarta.nabijaczleweli.xyz>
 <ef6eluqhqcwp64nhqlmuy4auznopmepoysg4zd4loascr64sof@6hic5rkysfs7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nrtzro2dqo2ksaba"
Content-Disposition: inline
In-Reply-To: <ef6eluqhqcwp64nhqlmuy4auznopmepoysg4zd4loascr64sof@6hic5rkysfs7>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--nrtzro2dqo2ksaba
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 06, 2024 at 02:16:40AM +0200, Alejandro Colomar wrote:
> Hi Ahelenia,
>=20
> On Thu, Sep 05, 2024 at 01:41:58PM GMT, Ahelenia Ziemia=C5=84ska wrote:
> > If you're wondering how errno is affected, so am I; no-one really says;
> > quoth POSIX:
> >   If base is TIME_UTC, the members of ts shall be set to the same value=
s as would be set by a call
> >   to clock_gettime(CLOCK_REALTIME, ts).
> >=20
> >   RETURN VALUE
> >     If the timespec_get( ) function is successful it shall return the n=
on-zero value base; otherwise, it
> >     shall return zero.
> >=20
> >   ERRORS
> >     See DESCRIPTION.
> >=20
> > But this is a moot point since clock_gettime() can't fail anyway
> > (glibc doesn't even check the error).
>=20
> I see at least the following errors in clock_gettime(2):
>=20
>      EFAULT              tp points outside the accessible address space.
This one would be real..but clock_gettime() is widely implemented as a vDSO
routine so it's a segfault on those architectures.
(And for this reason POSIX never outlines EFAULT by name.)
Thus, I'd call this just UB, not an EFAULT-style "error".
glibc doesn't check for errors, musl will return 0 here tho.

>      EINVAL The  clockid  specified  is invalid for one of two reasons.
>      EINVAL The clockid specified in a call to clock_settime() is not a
>             settable clock.
>      ENODEV The hot=E2=80=90pluggable device (like USB for example) repre=
sented
>      ENOTSUPThe operation is not supported by the dynamic  POSIX  clock
Not possible, since CLOCK_REALTIME is always valid.

>      EOVERFLOW The timestamp would not fit in time_t range. =20
I'm choosing to not see it, especially in in a.d. 2024 for a novel API.
But, again, glibc doesn't check for errors, musl will return 0 tho.
POSIX says
> If the number of seconds will not fit in an object of
> type time_t, the function shall return zero.

But it defines t_g(T_U) as "the members of ts shall be set to the
same values as would be set by a call to clock_gettime(CLOCK_REALTIME, ts)."
and then adds that overflow sentence. Which doesn't indicate an
errno-setting condition to me? It's not defined as /literally/ calling
clock_gettime(), and the overflow sentence protects from the only error
condition in clock_gettime(). So this implies to me that errno isn't set?

To test this, I built a test program on buster/i386, then ran it on a
system with time set to 2^31 and 2^32.
I can't really trigger clock_gettime()'s EOVERFLOW... anyway, ever?

Now, musl ships compat/time32/timespec_get_time32.c, which does this:
	int __timespec_get_time32(struct timespec32 *ts32, int base)
	{
	        struct timespec ts;
	        int r =3D timespec_get(&ts, base);
	        if (!r) return r;
	        if (ts.tv_sec < INT32_MIN || ts.tv_sec > INT32_MAX) {
	                errno =3D EOVERFLOW;
it's unclear to me when this wrapper is used, however.
And I'd say it's... wrong per POSIX? Actually? A little bit?

Bypassing the vDSO so timespec_get() actually runs a syscall,
and giving it an invalid pointer (strace says EFAULT!),
got me 0/errno=3D0.

Which I'd say is correct per POSIX?

C says=20
  Returns
    If th etimespec_get function is successful it returns the nonzero
    value base; otherwise, it returnszero.
and doesn't mention errno at all. So from this I'm going to opine that
  (a) glibc is right to not set errno on -EFAULT,
  (b) musl is wrong to set errno when it detects EOVERFLOW,
but also it doesn't matter.

All BSD implementations I looked through are
  if(clock_gettime() =3D=3D -1) return 0; return base;
and I don't think they have errno filtering that harsh.
So idk. I think it's fine

Scissor-patch below.

Best,
-- >8 --
Subject: [PATCH] timespec_get.3: new page (timespec_get(), timespec_getres(=
))

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man/man3/timespec_get.3 | 95 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 95 insertions(+)
 create mode 100644 man/man3/timespec_get.3

diff --git a/man/man3/timespec_get.3 b/man/man3/timespec_get.3
new file mode 100644
index 000000000..bd32a600c
--- /dev/null
+++ b/man/man3/timespec_get.3
@@ -0,0 +1,95 @@
+'\" t
+.\" SPDX-License-Identifier: 0BSD
+.\"
+.TH timespec_get 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+timespec_get, timespec_getres \- standard C clock and time functions
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc ),
+.SH SYNOPSIS
+.nf
+.B #include <time.h>
+.P
+.BI "int timespec_get(struct timespec *" res ", int " base );
+.BI "int timespec_getres(struct timespec *" tp ", int " base );
+.fi
+.P
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.P
+.BR timespec_get ():
+.nf
+    _ISOC11_SOURCE || _ISOC2X_SOURCE
+        || __STDC_VERSION__ >=3D 201112L
+        || /* glibc <=3D 2.19: */ _BSD_SOURCE || _SVID_SOURCE
+.P
+.BR timespec_getres ():
+.nf
+    _ISOC2X_SOURCE || __STDC_VERSION__ > 201710L
+.fi
+.SH DESCRIPTION
+.BI timespec_get\fR(\fP tp ", TIME_UTC)"
+is defined as
+.IR "clock_gettime(CLOCK_REALTIME, tp)" .
+.P
+.BI timespec_getres\fR(\fP res ", TIME_UTC)"
+is equivalent to
+.IR "timespec_getres(CLOCK_REALTIME, res)" .
+.P
+.BR TIME_UTC
+is universally guaranteed to be a valid
+.IR base ,
+and is the only one supported under Linux.
+.SH RETURN VALUE
+.B 0
+if base is unsupported or the call failed, otherwise
+.IR base .
+.SH ERRORS
+Some C libraries
+.I may
+set
+.I errno
+to the same value as would be set by
+.BR clock_gettime (2)/ clock_getres (2).
+Neither C nor POSIX specify this, but they don't really indicate this shou=
ldn't happen, either.
+Don't rely on this.
+.SH ATTRIBUTES
+For an explanation of the terms used in this section, see
+.BR attributes (7).
+.TS
+allbox;
+lbx lb lb
+l l l.
+Interface	Attribute	Value
+T{
+.na
+.nh
+.BR timespec_get (),
+.BR timespec_getres ()
+T}	Thread safety	MT-Safe
+.TE
+.SH STANDARDS
+.TP
+.BR timespec_get ()
+.TQ
+.B TIME_UTC
+C23 (though note that C doesn't specify the time epoch),
+POSIX.1-2024.
+.TP
+.BR timespec_getres ()
+C23.
+.SH HISTORY
+.TP
+.BR timespec_get ()
+.TQ
+.B TIME_UTC
+C11, POSIX.1-2024, glibc 2.16, musl 1.1.10.
+.TP
+.BR timespec_getres ()
+C23, glibc 2.34.
+.SH SEE ALSO
+.BR clock_gettime (2),
+.BR clock_getres (2)
--=20
2.39.2


--nrtzro2dqo2ksaba
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmbbCxkACgkQvP0LAY0m
WPG+JBAAgBPEscu+DYYJQw4EBE93B06cj/VO7vvKMVZ1ssYt7Ou0JtPYpGj/eccK
qm1tlIWklpfU4FUw8r0nho8GDRzdULWWpk+9scqFNUjj61vtSFwUA2ywsMs/uH0h
u+GsUoeY1ciO7SKWS/yy1XPrCt/uUINjEJ5R5eiQEHdeoVz0rbo/Qv0cL6hZMbx/
m+STG5wac2AuIF2+O+/2DKQbopgRvqO9GAYgTg4rMHbOGSGzp9aPVm/Vw/XwEhCV
Pj3yaZewuByfrBt1xnEQ2XG5gih5abTrk6KnwdfzZFt4timePIKOy2pO8kLUnhzo
FCcQGdQWZ0hFDCn9xxwTwxk3jo9KPsOBCyp82SUmi61cJh/vduRoVmJkg4pqCvuz
Dq7OB7gIrTBbMCX97HwBiyxpTloDxzz1x28EsGMqkDjDMFn7+VktKDT1w94Vc6fn
vR/ylexmkOMK2USyzkldrmqpCgJVVPJ4McaC7NcEJbyojFA4lhpFy9gwfUg66RE3
w3EXscvFthG1qa00B9MZu9Xglze8/H7Kt+8IxGo/nng3yE8QpjXtS/x35PFPCUes
+pUPseJmT0LhSaVPnvFzBO/ptGzvOn2P8Fp7FRqDS1WK9uH2si4dw0wLNDZwdKIj
0f7MgALYpKpFQLOLHJpqkeZospRxl45yoqiy+42wYJXSFLU+3zY=
=1bGS
-----END PGP SIGNATURE-----

--nrtzro2dqo2ksaba--

