Return-Path: <linux-man+bounces-1692-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D6C95D938
	for <lists+linux-man@lfdr.de>; Sat, 24 Aug 2024 00:25:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65EB1B21970
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF541C871E;
	Fri, 23 Aug 2024 22:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P46XOvvV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFCF7191F6B
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 22:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724451896; cv=none; b=qyt4PccUcSwV47Y2L6UxywMZGxFMm64dxwiu/ZV/cGtDyT4p/FMGQfZzNrtVJovVfO0qJHs2PupRATVeX2ikUueDJmP2TKSGWHebsPMipoo7fT+yDmQFDlZ7lxCZVNU3ttc+aJyNYxtT98lLyqLtW0LJ7BLNilw/AgXOE9QjJgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724451896; c=relaxed/simple;
	bh=K4L8PYYYOVGZvTIr6AcJ4theAlZMpehvE9IVBjon4lc=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZkU10wSnNQgvq0Z0a3DPqTG6yNVN4XsbKu+sWZjk7F0veJ2RxCCN71Opna3Cs//7+vOpuqPt2Xs8Mop++9fhaecHy8nfmrLEhMwDpqdSbTVoFx0Zvl9wKRNGfCXjv8EzUwGJ74CI6NwFyA1bPZgfYKWDfeqLRQcMdFDMcM5Wo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P46XOvvV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70AFBC32786;
	Fri, 23 Aug 2024 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724451896;
	bh=K4L8PYYYOVGZvTIr6AcJ4theAlZMpehvE9IVBjon4lc=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=P46XOvvVANXhB05Mcx0izLyqA248t/DlScn/q391qtHrceCoQJNjYj8zCjC18LWxA
	 cpFgk1Xd3pTXYxadUooDpuHF4tF3Wl7Z/QgnE2qJ7YNTvAw/f1egCnOflFfZkDbAgD
	 SVI49bahr67o1NHdJnhvV3AWmeGuPSsa4rcvsGAvVz7amcDAav4eP6A5cWNYKfERYw
	 Vy6hijPyj7Lb0Bfy6KAvetQvT5wSZFH6P/WVi9EjvbvaSj4KRT372pG2ogm4fNdqvk
	 4rQdm1HRNEuF/i0NEb0Jq7Q/xiK9Hz+Y9fWSbJ4pGHFbENW1hN2TF9dfj1pcOtnFYM
	 1don3aAe3zCMg==
Date: Sat, 24 Aug 2024 00:24:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Vincent Lefevre <vincent@vinc17.net>, DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, 
	"Robert C. Seacord" <rcseacord@gmail.com>, Jens Gustedt <jens.gustedt@inria.fr>, 
	Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, GNU C Library <libc-alpha@sourceware.org>, 
	Austin Group <austin-group-l@opengroup.org>, Hans =?utf-8?B?w4ViZXJn?= <haberg-1@telia.com>
Subject: Re: [PATCH v3] ctime.3: Document how to check errors from mktime(3)
Message-ID: <byy7uto3envlf2ydvoa5scnusckht67m2zfakpgsxzgji4742u@uzkxj3r6wh2m>
References: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
 <795308497fb950b9f8602a2eedf4fc749ff6e50e.1724446443.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gb4zevljpmzyrr2f"
Content-Disposition: inline
In-Reply-To: <795308497fb950b9f8602a2eedf4fc749ff6e50e.1724446443.git.alx@kernel.org>


--gb4zevljpmzyrr2f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>, 
	Vincent Lefevre <vincent@vinc17.net>, DJ Delorie <dj@redhat.com>, Carlos O'Donell <carlos@redhat.com>, 
	Xi Ruoyao <xry111@xry111.site>, Brian Inglis <Brian.Inglis@systematicsw.ab.ca>, 
	"Robert C. Seacord" <rcseacord@gmail.com>, Jens Gustedt <jens.gustedt@inria.fr>, 
	Robert Elz <kre@munnari.oz.au>, Andrew Josey <ajosey@opengroup.org>, 
	Geoff Clare <gwc@opengroup.org>, GNU C Library <libc-alpha@sourceware.org>, 
	Austin Group <austin-group-l@opengroup.org>, Hans =?utf-8?B?w4ViZXJn?= <haberg-1@telia.com>
Subject: Re: [PATCH v3] ctime.3: Document how to check errors from mktime(3)
References: <433eddc3e5fed0230183aeb178c08ccf247f3da0.1724417835.git.alx@kernel.org>
 <795308497fb950b9f8602a2eedf4fc749ff6e50e.1724446443.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <795308497fb950b9f8602a2eedf4fc749ff6e50e.1724446443.git.alx@kernel.org>

Hi all,

On Fri, Aug 23, 2024 at 10:56:40PM GMT, Alejandro Colomar wrote:
> -1 is a valid successful time_t, for one second before the Epoch.  And
> mktime(3) is allowed (like most libc calls) to set errno on success.
> This makes it impossible to determine errors from the return value or
> errno.
>=20
> ISO C specifies that tp->tm_wday is unmodified after a failed call, and
> puts an example where this is used to determine errors.  It is indeed
> the only way to check for errors from this call.
>=20
> Document this detail in the RETURN VALUE section, add a CAVEATS section
> that warns about this, and write an example program that shows how to
> properly call this function.
>=20
> All the code I've been able to find in several search engines either
> doesn't check for errors after mktime(3), or checks them incorrectly, so
> this documentation should help fix those.
>=20
> This is guaranteed since ISO C23 and POSIX.1-2024.  Prior to those
> standards, there was no standard way to check for errors.  However,
> there are no known implementations that do not conform to this,
> according to WG14 (which themselves refer to the Austin Group for having
> researched that).
>=20
> Link: <https://lore.kernel.org/linux-man/20240823131024.GD2713@cventin.li=
p.ens-lyon.fr/T/#t>
> Link: <https://lore.kernel.org/linux-man/6un6baaq5tez23irtycuvzqtuh7a4sdr=
f2px7tnyb3y6iqoxmq@2ofln4cd27ep/T/#t>
> Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.txt>
> Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3148.doc>
> Link: <https://austingroupbugs.net/view.php?id=3D1614>
> Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3220.pdf#subsubs=
ection.7.29.2.3>
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Cc: Vincent Lefevre <vincent@vinc17.net>
> Cc: DJ Delorie <dj@redhat.com>
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Xi Ruoyao <xry111@xry111.site>
> Cc: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
> Cc: "Robert C. Seacord" <rcseacord@gmail.com>
> Cc: Jens Gustedt <jens.gustedt@inria.fr>
> Cc: Robert Elz <kre@munnari.oz.au>
> Cc: Andrew Josey <ajosey@opengroup.org>
> Cc: Geoff Clare <gwc@opengroup.org>
> Cc: GNU C Library <libc-alpha@sourceware.org>
> Cc: Austin Group <austin-group-l@opengroup.org>
> Cc: Hans =C3=85berg <haberg-1@telia.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---

I've finally applied this patch.  Thank you all for your feedback!
Especially Paul for finding so many problems in my code!  :)

Have a lovely night!
Alex

>=20
> Hi!
>=20
> v3 changes:
>=20
> -  Typos in the example runs (s/2024/2023/)
> -  s/if/whether/  [Paul]
> -  Respect the sign of time_t.  [Paul]
> -  Remove unused include.  [IWYU]
> -  Add links and CCs.
>=20
> Cheers,
> Alex
>=20
> Range-diff against v2:
> 1:  664cd54a8 ! 1:  795308497 ctime.3: Document how to check errors from =
mktime(3)
>     @@ Commit message
>          according to WG14 (which themselves refer to the Austin Group fo=
r having
>          researched that).
>     =20
>     +    Link: <https://lore.kernel.org/linux-man/20240823131024.GD2713@c=
ventin.lip.ens-lyon.fr/T/#t>
>     +    Link: <https://lore.kernel.org/linux-man/6un6baaq5tez23irtycuvzq=
tuh7a4sdrf2px7tnyb3y6iqoxmq@2ofln4cd27ep/T/#t>
>          Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3147.tx=
t>
>          Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3148.do=
c>
>          Link: <https://austingroupbugs.net/view.php?id=3D1614>
>     @@ Commit message
>          Cc: Carlos O'Donell <carlos@redhat.com>
>          Cc: Xi Ruoyao <xry111@xry111.site>
>          Cc: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
>     +    Cc: "Robert C. Seacord" <rcseacord@gmail.com>
>     +    Cc: Jens Gustedt <jens.gustedt@inria.fr>
>     +    Cc: Robert Elz <kre@munnari.oz.au>
>     +    Cc: Andrew Josey <ajosey@opengroup.org>
>     +    Cc: Geoff Clare <gwc@opengroup.org>
>          Cc: GNU C Library <libc-alpha@sourceware.org>
>     +    Cc: Austin Group <austin-group-l@opengroup.org>
>     +    Cc: Hans =C3=85berg <haberg-1@telia.com>
>          Signed-off-by: Alejandro Colomar <alx@kernel.org>
>     =20
>       ## man/man3/ctime.3 ##
>     @@ man/man3/ctime.3: .SH NOTES
>      +.I (time_t) \-1
>      +can represent a valid time
>      +(one second before the Epoch).
>     -+To determine if
>     ++To determine whether
>      +.BR mktime ()
>      +failed,
>      +one must use the
>     @@ man/man3/ctime.3: .SH NOTES
>      +.RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
>      +1708640273
>      +$
>     -+.RB $\~ "./a.out 2024 03 26 02 17 53 \-1" ;
>     ++.RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
>      +1679793473
>      +$
>     -+.RB $\~ "./a.out 2024 10 29 02 17 53 \-1" ;
>     ++.RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
>      +1698542273
>     -+.RB $\~ "./a.out 2024 10 29 02 17 53 0" ;
>     ++.RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
>      +1698542273
>     -+.RB $\~ "./a.out 2024 10 29 02 17 53 1" ;
>     ++.RB $\~ "./a.out 2023 10 29 02 17 53 1" ;
>      +1698538673
>      +$
>     -+.RB $\~ "./a.out 2024 02 29 12 00 00 \-1" ;
>     ++.RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
>      +1677668400
>      +.EE
>      +.SS Program source: mktime.c
>     @@ man/man3/ctime.3: .SH NOTES
>      +.\" SRC BEGIN (mktime.c)
>      +.EX
>      +#include <err.h>
>     -+#include <errno.h>
>      +#include <stdint.h>
>      +#include <stdio.h>
>      +#include <stdlib.h>
>      +#include <time.h>
>      +\&
>     ++#define is_signed(T)  ((T) \-1 < 1)
>     ++\&
>      +int
>      +main(int argc, char *argv[])
>      +{
>     @@ man/man3/ctime.3: .SH NOTES
>      +    if (tm.tm_wday =3D=3D \-1)
>      +        err(EXIT_FAILURE, "mktime");
>      +\&
>     -+    printf("%jd\[rs]n", (intmax_t) t);
>     ++    if (is_signed(time_t))
>     ++        printf("%jd\[rs]n", (intmax_t) t);
>     ++    else
>     ++        printf("%ju\[rs]n", (uintmax_t) t);
>     ++\&
>      +    exit(EXIT_SUCCESS);
>      +}
>      +.EE
>=20
>  man/man3/ctime.3 | 104 ++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 103 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
> index 5aec51b79..84d140c71 100644
> --- a/man/man3/ctime.3
> +++ b/man/man3/ctime.3
> @@ -241,7 +241,10 @@ .SH RETURN VALUE
>  On error,
>  .BR mktime ()
>  returns the value
> -.IR "(time_t)\ \-1" .
> +.IR "(time_t)\ \-1" ,
> +and leaves the
> +.I tm->tm_wday
> +member unmodified.
>  The remaining functions return NULL on error.
>  On error,
>  .I errno
> @@ -412,6 +415,105 @@ .SH NOTES
>  object types may overwrite the information in any object of the same type
>  pointed to by the value returned from any previous call to any of them."
>  This can occur in the glibc implementation.
> +.SH CAVEATS
> +.SS mktime()
> +.I (time_t) \-1
> +can represent a valid time
> +(one second before the Epoch).
> +To determine whether
> +.BR mktime ()
> +failed,
> +one must use the
> +.I tm->tm_wday
> +field.
> +See the example program in EXAMPLES.
> +.SH EXAMPLES
> +The following shell session shows sample runs of the program:
> +.P
> +.in +4n
> +.EX
> +.RB $\~ "TZ=3DUTC ./a.out 1969 12 31 23 59 59 0" ;
> +\-1
> +$
> +.RB $\~ "export TZ=3DEurope/Madrid" ;
> +$
> +.RB $\~ "./a.out 2147483647 2147483647 00 00 00 00 -1" ;
> +a.out: mktime: Value too large for defined data type
> +$
> +.RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
> +1724365073
> +.RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
> +1724368673
> +.RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
> +1724365073
> +$
> +.RB $\~ "./a.out 2024 02 23 00 17 53 \-1" ;
> +1708643873
> +.RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
> +1708643873
> +.RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
> +1708640273
> +$
> +.RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
> +1679793473
> +$
> +.RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
> +1698542273
> +.RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
> +1698542273
> +.RB $\~ "./a.out 2023 10 29 02 17 53 1" ;
> +1698538673
> +$
> +.RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
> +1677668400
> +.EE
> +.SS Program source: mktime.c
> +\&
> +.\" SRC BEGIN (mktime.c)
> +.EX
> +#include <err.h>
> +#include <stdint.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <time.h>
> +\&
> +#define is_signed(T)  ((T) \-1 < 1)
> +\&
> +int
> +main(int argc, char *argv[])
> +{
> +    char       **p;
> +    time_t     t;
> +    struct tm  tm;
> +\&
> +    if (argc !=3D 8) {
> +        fprintf(stderr, "Usage: %s yyyy mm dd HH MM SS isdst\[rs]n", arg=
v[0]);
> +        exit(EXIT_FAILURE);
> +    }
> +\&
> +    p =3D &argv[1];
> +    tm.tm_year  =3D atoi(*p++) \- 1900;
> +    tm.tm_mon   =3D atoi(*p++) \- 1;
> +    tm.tm_mday  =3D atoi(*p++);
> +    tm.tm_hour  =3D atoi(*p++);
> +    tm.tm_min   =3D atoi(*p++);
> +    tm.tm_sec   =3D atoi(*p++);
> +    tm.tm_isdst =3D atoi(*p++);
> +\&
> +    tm.tm_wday =3D \-1;
> +    t =3D mktime(&tm);
> +    if (tm.tm_wday =3D=3D \-1)
> +        err(EXIT_FAILURE, "mktime");
> +\&
> +    if (is_signed(time_t))
> +        printf("%jd\[rs]n", (intmax_t) t);
> +    else
> +        printf("%ju\[rs]n", (uintmax_t) t);
> +\&
> +    exit(EXIT_SUCCESS);
> +}
> +.EE
> +.\" SRC END
>  .SH SEE ALSO
>  .BR date (1),
>  .BR gettimeofday (2),
>=20
> base-commit: 0813c125d8bf754c40015aa1b31f23e0650584ac
> --=20
> 2.45.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--gb4zevljpmzyrr2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbJDDMACgkQnowa+77/
2zKPXBAAm8dNpCXAaaijlYRlgPXBMf3l0Rrl/1A8jvpg1W27NdjVt/WlWslCVMsL
bhIp63sOwJj2fFfzr8mq9w7+fLgHUrlhcu+nU+rrf3w5Ki16uTCXbvCk4AHBHL+m
Bix9R8hZF/LyQ4swqunlmyuTJl4lDe4wdHve3i+cZ2MbtRIeJgih+30i7IkiIc0N
AuU2SvE4jzB0BU3VC2Q9aG6N9M0wedD1cN/xehSea5pFMpKumRaXYpjyPTYzHmK0
SNNGLmxZUW2okSgR8IZ9qos+igpX8Yllsw2LfmsuMVmPT2jRzpDYFjTBQwsrnPwl
3J9jN+vLTCpR4JhiBOyhINPMX6LCM4AIKeCrDDMoedl1AgtL7PrhYTMxldTK6Yqg
I4ytnd5d3wrlVEdBrWgDBBDhjry/tOHwa6QMX+96BRFL7AS/HtIHJTA2jL9ZbtVj
nFCBtsQ2W2Xf4Fz0MKUNAuyOPDIdNPyPClfxiAtT2RUl9+vlbIIKztNO9GrgRJ7x
/89dNHKt7759V6xUhtxcFe84l4hgxLZ4jOoNDkEhvgRwK+nVXVpWPYQ82655hE37
BMKx679L4hoGlCb8jItfKdaUwQqaBVdbvj0nWhRjZIrVEpOyyyFKlvd+rxcDZf96
NlTQYTyr/7KEoMuNdHaie6YenFZ79HZq/Mt/p/9vAL09Y1U5sa8=
=LjfV
-----END PGP SIGNATURE-----

--gb4zevljpmzyrr2f--

