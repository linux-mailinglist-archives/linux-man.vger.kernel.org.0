Return-Path: <linux-man+bounces-1067-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FB9902BB2
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 00:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5F571F21806
	for <lists+linux-man@lfdr.de>; Mon, 10 Jun 2024 22:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EE44D8B4;
	Mon, 10 Jun 2024 22:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VydLY/NS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4422A17545
	for <linux-man@vger.kernel.org>; Mon, 10 Jun 2024 22:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718058680; cv=none; b=WKNDli4GL/5tLSbVCcjWDmwsyYRGbRwOgMRLSMFN4Nnc2kx76euWSBMDwaatvp4RS24rPjyKMOTaztATPDeflVO3as4qkC/CSl9caPm6vvyKL2BxVNZ2zx4tDP0bZKhS1iKYBj+XTpeJtEUql0Zvd08PvTYa9M6mp2J36mT4Xm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718058680; c=relaxed/simple;
	bh=6eV7qiQ8Q+ecUIbO0joFIEQqbUXCD5gSqJybrlhl3e0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gi1jbJxvFENK/IATra9k0aJJxIJf1nLYX7Q9e5Qm9UptR256F2cH3jl+aILF1PKu0kNLs5caYkan6SK8/QvNpuj0pO4HCktPot6rNlvOogxxU9AAgAEJ4HcHZCK4CJx6wk7yQgF5L2gllJmFEl9A3/hWv4ILQkrVoOGrtbQBOwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VydLY/NS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2458CC2BBFC;
	Mon, 10 Jun 2024 22:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718058679;
	bh=6eV7qiQ8Q+ecUIbO0joFIEQqbUXCD5gSqJybrlhl3e0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VydLY/NSzVB1c7UcsmZHagtlHIbQEeDSZA+CWi0m3XuI+HoAb0t1gBgih1jl2KGwO
	 vNQuPBq3YJJHv834U0WgNQ3fx0goZ82VPO+kAilhleogk7PUY/XN9laWI5tupnPb3K
	 s8rwbny3y4DUK+7apNGgiyi8xT2B06onnycqQaULYJXly0tK1FFXpB9n023pZGYyu8
	 244VVL4qr5hHAoxyvZapuWdqo1tfdLXqbOYlXRyAOUANDFP2D0DiAUkS13po2t5FEI
	 7Atwi24Bog1UWMI3nDuY/0WUStZ/L5WwXTnHkyIre+HR01uX1Gyqa3PvLsotP6TIWP
	 1oKSCEKP9sINg==
Date: Tue, 11 Jun 2024 00:31:16 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
Message-ID: <omukm4r74ityluf3cfvb3mv6z63yb6yiois4x3sddlmmrvhzgr@tp77lujszx5a>
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ecrmq2jc22jchmha"
Content-Disposition: inline
In-Reply-To: <20240610220013.2812749-1-eggert@cs.ucla.edu>


--ecrmq2jc22jchmha
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] tzset: adjust for POSIX, and don't overpromise
References: <20240610220013.2812749-1-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20240610220013.2812749-1-eggert@cs.ucla.edu>

Hi Paul!

On Mon, Jun 10, 2024 at 03:00:13PM GMT, Paul Eggert wrote:
> POSIX.1-2024 is now official, and tm_gmtoff and tm_zone
> are now part of POSIX.  Update the man pages accordingly.

Thanks for the patch!  It's nice to see that we finally have
POSIX.1-2024.  :)

> Don't overpromise the global state that tzset updates.
> Its contents are unspecified if you use a geographical
> time zone.  For more details, see:

I would prefer that we separate the update to POSIX from the overpromise
fix in two separate commits.  Would you mind doing that?  (Unless this
is intrinsic to the POSIX update; is it?)

> https://austingroupbugs.net/view.php?id=3D1816
> https://sourceware.org/bugzilla/show_bug.cgi?id=3D31876
>=20
> The hours in a TZ string time can now range from -167 to 167.
>=20
> Update NZ example to use NZ's current practice.
>=20
> Omit leading ":" from TZ examples as this usage is rare.

This, and other wording fixes that aren't related to POSIX.1-2024, I
prefer them in a separate commit that only does trivial wording and
formatting fixes.

> ---
>  man/man3/ctime.3      | 15 +++++----------
>  man/man3/tzset.3      | 39 ++++++++++++++++++++++++++++-----------
>  man/man3type/tm.3type |  7 ++++---
>  3 files changed, 37 insertions(+), 24 deletions(-)
>=20
> diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
> index b8543a1cf..94819961d 100644
> --- a/man/man3/ctime.3
> +++ b/man/man3/ctime.3
> @@ -102,9 +102,8 @@ The return value points to a statically allocated str=
ing which
>  might be overwritten by subsequent calls to any of the date and time
>  functions.
>  The function also sets the external
> -variables \fItzname\fP, \fItimezone\fP, and \fIdaylight\fP (see
> -.BR tzset (3))
> -with information about the current timezone.
> +variables \fItzname\fP, \fItimezone\fP, and \fIdaylight\fP as if it call=
ed
> +.BR tzset (3).
>  The reentrant version
>  .BR ctime_r ()
>  does the same, but stores the
> @@ -131,13 +130,9 @@ The
>  function converts the calendar time \fItimep\fP to
>  broken-down time representation,
>  expressed relative to the user's specified timezone.
> -The function acts as if it called
> -.BR tzset (3)
> -and sets the external variables \fItzname\fP with
> -information about the current timezone, \fItimezone\fP with the differen=
ce
> -between Coordinated Universal Time (UTC) and local standard time in
> -seconds, and \fIdaylight\fP to a nonzero value if daylight savings
> -time rules apply during some part of the year.
> +The function also sets the external variables \fItzname\fP,
> +\fItimezone\fP, and \fIdaylight\fP as if it called
> +.BR tzset (3).
>  The return value points to a statically allocated struct which might be
>  overwritten by subsequent calls to any of the date and time functions.
>  The
> diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
> index 8479b17b0..8623abf09 100644
> --- a/man/man3/tzset.3
> +++ b/man/man3/tzset.3
> @@ -63,6 +63,18 @@ In a System-V-like environment, it will also set the v=
ariables \fItimezone\fP
>  have any daylight saving time rules, or to nonzero if there is a time,
>  past, present, or future when daylight saving time applies).
>  .P
> +The
> +.BR tzset ()
> +function initializes these variables to unspecified values if this
> +timezone is a geographical timezone like "America/New_York" (see below).
> +Because these variables' contents are often unspecified,
> +code should instead obtain time zone offset and abbreviations from the
> +.I tm_gmtoff
> +and
> +.I tm_zone
> +members of the broken-down time structure
> +.BR tm (3type).
> +.P

This could go to a CAVEATS section.

>  If the
>  .B TZ
>  variable does not appear in the environment, the system timezone is used.
> @@ -79,7 +91,7 @@ variable does appear in the environment, but its value =
is empty,
>  or its value cannot be interpreted using any of the formats specified
>  below, then Coordinated Universal Time (UTC) is used.
>  .P
> -The value of
> +A nonempty value of
>  .B TZ
>  can be one of two formats.
>  The first format is a string of characters that directly represent the
> @@ -141,44 +153,49 @@ Day 0 is a Sunday.
>  .P
>  The \fItime\fP fields specify when, in the local time currently in effec=
t,
>  the change to the other time occurs.
> +They use the same format as \fIoffset\fP except that the hour can range
> +from \-167 to 167 to represent times before and after the named day.
>  If omitted, the default is 02:00:00.
>  .P
>  Here is an example for New Zealand,
>  where the standard time (NZST) is 12 hours ahead of UTC,
>  and daylight saving time (NZDT), 13 hours ahead of UTC,
> -runs from the first Sunday in October to the third Sunday in March,
> -and the changeovers happen at the default time of 02:00:00:
> +runs from September's last Sunday at 02:00:00
> +to April's first Sunday at 03:00:00.
>  .P
>  .in +4n
>  .EX
> -TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M10.1.0,M3.3.0"
> +TZ=3D"NZST\-12:00:00NZDT\-13:00:00,M9.5.0,M4.1.0/3"
>  .EE
>  .in
>  .P
> -The second format specifies that the timezone information should be read
> +The second, or "geographical",
> +format specifies that the timezone information should be read
>  from a file:
>  .P
>  .in +4n
>  .EX
> -:[filespec]
> +filespec
>  .EE
>  .in
>  .P
> -If the file specification \fIfilespec\fP is omitted, or its value cannot
> -be interpreted, then Coordinated Universal Time (UTC) is used.
>  If \fIfilespec\fP is given, it specifies another
>  .BR tzfile (5)-format
>  file to read the timezone information from.
>  If \fIfilespec\fP does not begin with a \[aq]/\[aq], the file specificat=
ion is
>  relative to the system timezone directory.
> -If the colon is omitted each
> -of the above \fBTZ\fP formats will be tried.
> +If the named file cannot be read or interpreted,
> +Coordinated Universal Time (UTC) is used;
> +however, applications should not depend on random \fIfilespec\fP values
> +standing for UTC, as
> +.B TZ
> +formats may be extended in the future.
>  .P
>  Here's an example, once more for New Zealand:
>  .P
>  .in +4n
>  .EX
> -TZ=3D":Pacific/Auckland"
> +TZ=3D"Pacific/Auckland"
>  .EE
>  .in
>  .SH ENVIRONMENT
> diff --git a/man/man3type/tm.3type b/man/man3type/tm.3type
> index 5d5b28658..cbf89a54c 100644
> --- a/man/man3type/tm.3type
> +++ b/man/man3type/tm.3type
> @@ -90,9 +90,9 @@ points to static storage and may be overridden on subse=
quent calls to
>  .BR localtime (3)
>  and similar functions (however, this never happens under glibc).
>  .SH STANDARDS
> -C11, POSIX.1-2008.
> +C23, POSIX.1-2024.
>  .SH HISTORY
> -C89, POSIX.1-2001.
> +C89, C99, POSIX.1-2001, POSIX.1-2008.

Nah, I only keep here the first one, for simplifying.  If it was added
in C89, and is present in C23, we can assume that it was present in C99
and C11 too.

>  .P
>  .I tm_gmtoff
>  and
> @@ -100,7 +100,8 @@ and
>  originate from 4.3BSD-Tahoe (where
>  .I tm_zone
>  is a
> -.IR "char *" ).
> +.IR "char *" ),
> +and were first standardized in POSIX.1-2024.
>  .SH NOTES
>  .I tm_sec
>  can represent a leap second with the value
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--ecrmq2jc22jchmha
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZnfrQACgkQnowa+77/
2zLAvhAAlsw7D7gBYsEdIVDXRpthVZctJ6CuGtE9BT0xpCRr181Jj3Vo7e6H6qat
3fbgNMMF35P/pAgpD/PIE8DDnTMm3/9NtKM7R7TPGwBL7kVXkK45/jCnXL3eEbxB
rT3vfgCGerkz56s1N/08kyZm6lgjT08apP7RoxHz7j9tdWw3d91LlQ7f/WiXmq1d
l+GYQQvK1Ze+Y6HkNLXL6LGrpatLstMSz6/JRwkNZ8dC7XkceilMTM9QK4txYiSh
TlAgYHjq2F7S/Oopx/m+wttDKRoUEi4URMegXhSN6t1JQTL28IUk1ThdE84Nnl7w
qONIgU1DWwgUaVHEDmbVO3eHM2E5mgNMWpvksxs+lMyFaIhydl+DwkGqRht65xye
ZSOJMfd4Ar2TcUfLJ1Zo2lWHSUcv+7sGmigtwmLB0VlI1IKfazZBzxb5v3Z8e9SX
XpcSX8s8GcPpq1ndZ1/wyVOU8yEYR6kETtlRU+HAJkVCik1ShGt1A8QPjgUA/D12
ogbFHNXlDyc9oPj3VXLd2X5AdyCArSrMChACX/E4uXXXzK2kMCiIy8CZJDXqcs/X
rbsb1LpFuX2fOxmFmT/4afIe5UbS74c7oqoQ+BO7IDEv9XiUXQ4mySukZznv8ddM
itr43mxxoa6GKKFc0bXNXIZJs5OGDAbpRxR6xc4ysnkB4zsz2Vw=
=FI6d
-----END PGP SIGNATURE-----

--ecrmq2jc22jchmha--

