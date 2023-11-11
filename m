Return-Path: <linux-man+bounces-34-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1773B7E8C77
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 21:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A12BDB20A52
	for <lists+linux-man@lfdr.de>; Sat, 11 Nov 2023 20:08:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7AFC1D53E;
	Sat, 11 Nov 2023 20:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyKAKZ6d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A769F1D532
	for <linux-man@vger.kernel.org>; Sat, 11 Nov 2023 20:08:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BFFFC433C7;
	Sat, 11 Nov 2023 20:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699733327;
	bh=RnIPsDg0ZZ8TFOc3SYNkfK7Q/XsFllPolIEC3ijJS10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tyKAKZ6d4+C6hnMiJv/pPKcexwGD8oU1liDu3mFSFgrEzhLZE7uwG5fwc1G8AKS3r
	 nfXoYiK2/iTga6VeD+gkMiQAzBGAifdw5YEk6QJWi0RKlJF58KhWW3VxSEEPjeTnXI
	 D/GtWFBsnP8InLshY0EhXG6u51qz4DzNryPNVOHPyPfxYAMvFeTtvFEsKdYCTkrYOd
	 XeW/szJJ0lYDrZRyjEXGClnzIN412JlJH9VpnMANXZS1VwTm46Ouol68eGaeTfI5Pn
	 Xu2jwmlRtQVBZrtJH6UbVu52ql5NGHcjjrk3+jga0LUfu4Nmi2mBt6x8lZrSIYdvtd
	 sOfxLcbPHm8cQ==
Date: Sat, 11 Nov 2023 21:08:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] difftime.3: be more explict about "difference".
Message-ID: <ZU_fTMkp9Rzh2XcZ@debian>
References: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
 <fa623e75-e5bf-b32d-8ce8-27ed59ae03d7@cs.ucla.edu>
 <CAJgzZorrrPLSJ-EWrsGcXg9y-ipVsX9FjHtdeh1x15yY7c-eHw@mail.gmail.com>
 <e06035f7-145a-13cd-554c-ca65a3d8f98a@cs.ucla.edu>
 <xy2hn5d4d3mgofo2aj6makhkhqv6aoeofmuhtebi6v6cwoub3n@t3ybtntqtvgq>
 <b30bf830-2392-4c3d-a52e-18ee2264e82c@cs.ucla.edu>
 <ZUv71orkW4r9qE0o@debian>
 <8360a79c-1ff0-4675-ba10-c57394bb2ac2@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="82q9udlcPgZFR0tU"
Content-Disposition: inline
In-Reply-To: <8360a79c-1ff0-4675-ba10-c57394bb2ac2@cs.ucla.edu>


--82q9udlcPgZFR0tU
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 11 Nov 2023 21:08:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] difftime.3: be more explict about "difference".

Hi Paul,

On Wed, Nov 08, 2023 at 10:28:51PM -0800, Paul Eggert wrote:
> On 2023-11-08 13:21, Alejandro Colomar wrote:
>=20
> > We use all italics for inline code samples.  See man-pages(7):
>=20
> OK, revised patch attached.

> From 0870bd87ecbddffb8e536b1e7d635f3ac148d603 Mon Sep 17 00:00:00 2001
> From: Paul Eggert <eggert@cs.ucla.edu>
> Date: Wed, 8 Nov 2023 13:05:57 -0800
> Subject: [PATCH] Improve timestamp documentation
>=20
> Improve discussion of leap seconds, year-2038 etc.

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D7f652f51d9526899a243cd875653b39b7ff49654>

Cheers,
Alex

> ---
>  man2/clock_getres.2    | 37 ++++++++++++++++++++++++++-----------
>  man2/clock_nanosleep.2 |  2 +-
>  man2/time.2            | 37 +++++++++++++++++--------------------
>  man2/timer_create.2    |  2 +-
>  man3/difftime.3        | 23 +++++++----------------
>  man3type/time_t.3type  |  2 ++
>  6 files changed, 54 insertions(+), 49 deletions(-)
>=20
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 3ec6338cb..8457f6148 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -101,9 +101,17 @@ A settable system-wide clock that measures real (i.e=
=2E, wall-clock) time.
>  Setting this clock requires appropriate privileges.
>  This clock is affected by discontinuous jumps in the system time
>  (e.g., if the system administrator manually changes the clock),
> -and by the incremental adjustments performed by
> -.BR adjtime (3)
> -and NTP.
> +and by frequency adjustments performed by NTP and similar applications v=
ia
> +.BR adjtime (3),
> +.BR adjtimex (2),
> +.BR clock_adjtime (2),
> +and
> +.BR ntp_adjtime (3).
> +This clock normally counts the number of seconds since
> +1970-01-01 00:00:00 Coordinated Universal Time (UTC)
> +except that it ignores leap seconds;
> +near a leap second it is typically adjusted by NTP
> +to stay roughly in sync with UTC.
>  .TP
>  .BR CLOCK_REALTIME_ALARM " (since Linux 3.0; Linux-specific)"
>  Like
> @@ -126,9 +134,9 @@ and probably also architecture support for this flag =
in the
>  .BR CLOCK_TAI " (since Linux 3.10; Linux-specific)"
>  .\" commit 1ff3c9677bff7e468e0c487d0ffefe4e901d33f4
>  A nonsettable system-wide clock derived from wall-clock time
> -but ignoring leap seconds.
> +but counting leap seconds.
>  This clock does
> -not experience discontinuities and backwards jumps caused by NTP
> +not experience discontinuities or frequency adjustments caused by
>  inserting leap seconds as
>  .B CLOCK_REALTIME
>  does.
> @@ -146,9 +154,7 @@ The
>  .B CLOCK_MONOTONIC
>  clock is not affected by discontinuous jumps in the system time
>  (e.g., if the system administrator manually changes the clock),
> -but is affected by the incremental adjustments performed by
> -.BR adjtime (3)
> -and NTP.
> +but is affected by frequency adjustments.
>  This clock does not count time that the system is suspended.
>  All
>  .B CLOCK_MONOTONIC
> @@ -170,9 +176,7 @@ and probably also architecture support for this flag =
in the
>  Similar to
>  .BR CLOCK_MONOTONIC ,
>  but provides access to a raw hardware-based time
> -that is not subject to NTP adjustments or
> -the incremental adjustments performed by
> -.BR adjtime (3).
> +that is not subject to frequency adjustments.
>  This clock does not count time that the system is suspended.
>  .TP
>  .BR CLOCK_BOOTTIME " (since Linux 2.6.39; Linux-specific)"
> @@ -304,6 +308,17 @@ has disappeared after its character device was opene=
d.
>  The operation is not supported by the dynamic POSIX clock device
>  specified.
>  .TP
> +.B EOVERFLOW
> +The timestamp would not fit in
> +.I time_t
> +range.
> +This can happen if an executable with 32-bit
> +.I time_t
> +is run on a 64-bit kernel when the time is 2038-01-19 03:14:08 UTC or la=
ter.
> +However, when the system time is out of
> +.I time_t
> +range in other situations, the behavior is undefined.
> +.TP
>  .B EPERM
>  .BR clock_settime ()
>  does not have permission to set the clock indicated.
> diff --git a/man2/clock_nanosleep.2 b/man2/clock_nanosleep.2
> index 8c4ecc010..5bda50e18 100644
> --- a/man2/clock_nanosleep.2
> +++ b/man2/clock_nanosleep.2
> @@ -59,7 +59,7 @@ This argument can have one of the following values:
>  A settable system-wide real-time clock.
>  .TP
>  .BR CLOCK_TAI " (since Linux 3.10)"
> -A system-wide clock derived from wall-clock time but ignoring leap secon=
ds.
> +A system-wide clock derived from wall-clock time but counting leap secon=
ds.
>  .TP
>  .B CLOCK_MONOTONIC
>  A nonsettable, monotonically increasing clock that measures time
> diff --git a/man2/time.2 b/man2/time.2
> index 9c67e656c..e85029db0 100644
> --- a/man2/time.2
> +++ b/man2/time.2
> @@ -35,6 +35,17 @@ On error, \fI((time_t)\ \-1)\fP is returned, and
>  is set to indicate the error.
>  .SH ERRORS
>  .TP
> +.B EOVERFLOW
> +The time cannot be represented as a
> +.I time_t
> +value.
> +This can happen if an executable with 32-bit
> +.I time_t
> +is run on a 64-bit kernel when the time is 2038-01-19 03:14:08 UTC or la=
ter.
> +However, when the system time is out of
> +.I time_t
> +range in other situations, the behavior is undefined.
> +.TP
>  .B EFAULT
>  .I tloc
>  points outside your accessible address space (but see BUGS).
> @@ -60,29 +71,15 @@ in which case they are leap years.
>  This value is not the same as the actual number of seconds between the t=
ime
>  and the Epoch, because of leap seconds and because system clocks are not
>  required to be synchronized to a standard reference.
> -The intention is that the interpretation of seconds since the Epoch valu=
es be
> -consistent; see POSIX.1-2008 Rationale A.4.15 for further rationale.
> +Linux systems normally follow the POSIX requirement
> +that this value ignore leap seconds,
> +so that conforming systems interpret it consistently;
> +see POSIX.1-2018 Rationale A.4.16.
>  .P
> -On Linux, a call to
> -.BR time ()
> -with
> -.I tloc
> -specified as NULL cannot fail with the error
> -.BR EOVERFLOW ,
> -even on ABIs where
> -.I time_t
> -is a signed 32-bit integer and the clock reaches or exceeds 2**31 seconds
> -(2038-01-19 03:14:08 UTC, ignoring leap seconds).
> -(POSIX.1 permits, but does not require, the
> -.B EOVERFLOW
> -error in the case where the seconds since the Epoch will not fit in
> -.IR time_t .)
> -Instead, the behavior on Linux is undefined when the system time is out =
of the
> -.I time_t
> -range.
>  Applications intended to run after 2038 should use ABIs with
>  .I time_t
> -wider than 32 bits.
> +wider than 32 bits; see
> +.BR time_t (3type).
>  .SS C library/kernel differences
>  On some architectures, an implementation of
>  .BR time ()
> diff --git a/man2/timer_create.2 b/man2/timer_create.2
> index 345cfd70c..1109858b8 100644
> --- a/man2/timer_create.2
> +++ b/man2/timer_create.2
> @@ -96,7 +96,7 @@ The caller must have the
>  capability in order to set a timer against this clock.
>  .TP
>  .BR CLOCK_TAI " (since Linux 3.10)"
> -A system-wide clock derived from wall-clock time but ignoring leap secon=
ds.
> +A system-wide clock derived from wall-clock time but counting leap secon=
ds.
>  .P
>  See
>  .BR clock_getres (2)
> diff --git a/man3/difftime.3 b/man3/difftime.3
> index 5504ea8ff..1077b70e9 100644
> --- a/man3/difftime.3
> +++ b/man3/difftime.3
> @@ -26,9 +26,13 @@ The
>  function returns the number of seconds elapsed
>  between time \fItime1\fP and time \fItime0\fP, represented as a
>  .IR double .
> -Each of the times is specified in calendar time, which means its
> -value is a measurement (in seconds) relative to the
> -Epoch, 1970-01-01 00:00:00 +0000 (UTC).
> +Each time is a count of seconds.
> +.P
> +.I "difftime(b,\~a)"
> +acts like
> +.I "(b\-a)"
> +except that the result does not overflow and is rounded to
> +.IR double .
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> @@ -47,19 +51,6 @@ T}	Thread safety	MT-Safe
>  C11, POSIX.1-2008.
>  .SH HISTORY
>  POSIX.1-2001, C89, SVr4, 4.3BSD.
> -.SH NOTES
> -On a POSIX system,
> -.I time_t
> -is an arithmetic type, and one could just
> -define
> -.P
> -.in +4n
> -.EX
> -#define my_difftime(t1,t0) (double)(t1 \- t0)
> -.EE
> -.in
> -.P
> -when the possible overflow in the subtraction is not a concern.
>  .SH SEE ALSO
>  .BR date (1),
>  .BR gettimeofday (2),
> diff --git a/man3type/time_t.3type b/man3type/time_t.3type
> index fb788b823..0dba4afb0 100644
> --- a/man3type/time_t.3type
> +++ b/man3type/time_t.3type
> @@ -81,6 +81,8 @@ the width of
>  .I time_t
>  can be controlled with the feature test macro
>  .BR _TIME_BITS .
> +See
> +.BR feature_test_macros (7).
>  .P
>  The following headers also provide
>  .IR time_t :
> --=20
> 2.41.0
>=20


--=20
<https://www.alejandro-colomar.es/>

--82q9udlcPgZFR0tU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVP30wACgkQnowa+77/
2zJyTg//dMoGW7E6VRh9585Z7ROTcRHznO3OgSYFREO3dIv6qnChoPjXDZnJS85S
TEj1ektrjfdXyOZxu4+5FFGUdKHhGl/Y7xCqgKuTxKxM7oGA2B/uoJAssX9+Tmtv
yIW30OfABmESHI5n+qH+8AhvqlDI8ASroCXhYJJuYhbnrlSjzLW73alxN1HVeFwV
MesenqEpVPg8drdoCMA/bbcDO80XdrryS9XHECEBTCQUvF6cNJkDUQME9VSf6PkY
eviBbNiBUuCw+N3L8C0PAbkCfKDtoeSbshn4ioaUWUku0EvA/3xqnRI0IpJQheYX
nIy4SVJuHLopJJdbOUU0yGGgqUFYuN/HuWQAUiqzCcESoGWHvCfwvh+YGKVRIKW4
e3jvgC8/g8f4L2buyDyiN4dsrpkhKM8nhJwtahuBhQsjAKM3YOMmNIFO2YPL4gza
ilCkzOakiQI/cBzk9QpQoMCyYhyZOD/svmqeJgT0G8epA+37cdRvXxdeF1Z9PG/N
v4VwDFQ4yPTZK4S4PKWMe/lDEp/tV/DnkYzd7i/H+sG2Xp4PbPR+g9DpufGQLy2t
VS7Llpl1ULYixfMrJNEupxb1CzzSz1R5cw+3CC3SBzfZX+0j31uvWdl+UAk0gKYK
Hf5zpkVB8cJDUH2smBPejKG/menpcXN4ANrnXOZvLDiCbcXJM/A=
=j8L8
-----END PGP SIGNATURE-----

--82q9udlcPgZFR0tU--

