Return-Path: <linux-man+bounces-1701-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E4E95E4B6
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 20:33:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B61431C2094B
	for <lists+linux-man@lfdr.de>; Sun, 25 Aug 2024 18:33:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 395B713A89A;
	Sun, 25 Aug 2024 18:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJU45jQC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27B9320C
	for <linux-man@vger.kernel.org>; Sun, 25 Aug 2024 18:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724610798; cv=none; b=ufB2B2quTka+3gV1GUyiP+HXLZuSVT+6rSBAnkQ5T/taCcZQvKwBsNjB+2zUQUYU6DLmO0TC+7aOUTewnLYcqYWTetSf6R5RWqM8xfd+PDN281zUHFdOtZn5+cG2p9LJQTsEK7FULtQVNFokumGO+WUmODetzYsOvK+H8jWEoR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724610798; c=relaxed/simple;
	bh=t1RvQTWnuxiRTh9jRzCzebJj/DwnvHPrRyiddRqn4rw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IdapfF0+46z8oYrWkTNerH53HTr2C7mtZXnyX46DqFVBzLhBMa6xPivoPiXg/nS77ZOEfPiktKhRCOWR0jnd7OV7MhZao4g+LO5ICjjjxIWBW9LCqxr1m/l6RfJ6vThaVmWszViA5sNi2ksZIiG9L8XdyxkcWtRhoz25TV9tpF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJU45jQC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75EDAC4DDE7;
	Sun, 25 Aug 2024 18:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724610797;
	bh=t1RvQTWnuxiRTh9jRzCzebJj/DwnvHPrRyiddRqn4rw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FJU45jQCQ5GYtussjediFFvsYpXOWeRtUuWo3vW/l6UGGwamZNDv2vXgEtEnxvUke
	 pn+D369QaLaBIx5wcO+kujHQSiW7aTXLOUSlJoDqZEs/GUwdl/Hreypt3vBXSJaPs4
	 nZDhIyxbnrHXGfkjGMrwHjonpwOtv/Bj3rglMxjbcMNSLPmfzKXdctsnmtuOwg+Och
	 JKBUABXnnAvHDbm2OVfeJS/n+FzxMJyp2yan61j3IRJ5SIrt1S0RLceLFqdfCo/T4s
	 WRd9KpQSbLMwOASXxgTNHuJJRp8MDEf86Tl/a+326BkdlPqlM98QldRZ7eM3x8vJJo
	 A1zmfmXE12J1g==
Date: Sun, 25 Aug 2024 20:33:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH v5] ctime.3: Document how to detect invalid or ambiguous
 times
Message-ID: <6q6jrf5njlndcdlcknjfqkidzep6weyergzx4ahnipayi74pse@rm54hw4nrpe2>
References: <b7ed55965303389e698d29f8546a3bd2a049e2a5.1724454567.git.alx@kernel.org>
 <20240824084614.4149-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p6vfc3cbvaogss73"
Content-Disposition: inline
In-Reply-To: <20240824084614.4149-1-alx@kernel.org>


--p6vfc3cbvaogss73
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, DJ Delorie <dj@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH v5] ctime.3: Document how to detect invalid or ambiguous
 times
References: <b7ed55965303389e698d29f8546a3bd2a049e2a5.1724454567.git.alx@kernel.org>
 <20240824084614.4149-1-alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240824084614.4149-1-alx@kernel.org>

Hi Paul,

On Sat, Aug 24, 2024 at 10:46:20AM GMT, Alejandro Colomar wrote:
> This example documents the corner cases of mktime(3), such as what
> happens during DST transitions, and other jumps in the calendar.
>=20
> Link: <https://www.redhat.com/en/blog/brief-history-mktime>
> Reported-by: DJ Delorie <dj@redhat.com>
> Cc: Carlos O'Donell <carlos@redhat.com>
> Cc: Paul Eggert <eggert@cs.ucla.edu>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---

Should I wait for a review, or are you ok with this patch?

>=20
> Hi DJ, Paul,
>=20
> This is just a resend of v4.  Forget v4.
>=20
> I forgot to send it in reply to the previous versions, and forgot to
> paste the rendered output.
>=20
> Here's how this looks:
>=20
> CAVEATS
>      ...
>=20
>    mktime()
>      ...
>=20
>      Passing an invalid time to mktime()  or  an  invalid  tm=E2=80=90>tm=
_isdst
>      value yields an unspecified result.  Also, passing the value -1 in
>      tm=E2=80=90>tm_isdst  will  result  in  an  ambiguous time during so=
me DST
>      transitions, which will also yield an unspecified result.  See the
>      example program in EXAMPLES.

I think the wording is more or less what you suggested, leaving it as
unspecified in those corner cases.

Only in the example I show more details, for those who need to know what
to do in those cases.

>=20
> EXAMPLES
>      The program below defines a wrapper that allows detecting  invalid
>      and ambiguous times, with EINVAL and ENOTUNIQ, respectively.
>=20
>      The following shell session shows sample runs of the program:
>=20
>          $ TZ=3DUTC ./a.out 1969 12 31 23 59 59 0;
>          -1
>          $
>          $ export TZ=3DEurope/Madrid;
>          $
>          $ ./a.out 2147483647 2147483647 00 00 00 00 =E2=80=901;
>          a.out: mktime: Value too large for defined data type
>          $
>          $ ./a.out 2024 08 23 00 17 53 -1;
>          1724365073
>          $ ./a.out 2024 08 23 00 17 53 0;
>          a.out: mktime: Invalid argument
>          1724368673
>          $ ./a.out 2024 08 23 00 17 53 1;
>          1724365073
>          $
>          $ ./a.out 2024 02 23 00 17 53 -1;
>          1708643873
>          $ ./a.out 2024 02 23 00 17 53 0;
>          1708643873
>          $ ./a.out 2024 02 23 00 17 53 1;
>          a.out: mktime: Invalid argument
>          1708640273
>          $
>          $ ./a.out 2023 03 26 02 17 53 -1;
>          a.out: mktime: Invalid argument
>          1679793473
>          $
>          $ ./a.out 2023 10 29 02 17 53 -1;
>          a.out: mktime: Name not unique on network
>          1698542273
>          $ ./a.out 2023 10 29 02 17 53 0;
>          1698542273
>          $ ./a.out 2023 10 29 02 17 53 1;
>          1698538673
>          $
>          $ ./a.out 2023 02 29 12 00 00 -1;
>          a.out: mktime: Invalid argument
>          1677668400
>=20
>    Program source: mktime.c
>=20
>      #include <err.h>
>      #include <errno.h>
>      #include <stdint.h>
>      #include <stdio.h>
>      #include <stdlib.h>
>      #include <string.h>
>      #include <time.h>
>=20
>      #define is_signed(T)  ((T) -1 < 1)
>=20
>      time_t my_mktime(struct tm *tp);
>=20
>      int
>      main(int argc, char *argv[])
>      {
>          char       **p;
>          time_t     t;
>          struct tm  tm;
>=20
>          if (argc !=3D 8) {
>              fprintf(stderr, "Usage: %s yyyy mm dd HH MM SS isdst\n", arg=
v[0]);
>              exit(EXIT_FAILURE);
>          }
>=20
>          p =3D &argv[1];
>          tm.tm_year  =3D atoi(*p++) - 1900;
>          tm.tm_mon   =3D atoi(*p++) - 1;
>          tm.tm_mday  =3D atoi(*p++);
>          tm.tm_hour  =3D atoi(*p++);
>          tm.tm_min   =3D atoi(*p++);
>          tm.tm_sec   =3D atoi(*p++);
>          tm.tm_isdst =3D atoi(*p++);
>=20
>          errno =3D 0;
>          tm.tm_wday =3D -1;
>          t =3D my_mktime(&tm);
>          if (tm.tm_wday =3D=3D -1)
>              err(EXIT_FAILURE, "mktime");
>          if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
>              warn("mktime");
>=20
>          if (is_signed(time_t))
>              printf("%jd\n", (intmax_t) t);
>          else
>              printf("%ju\n", (uintmax_t) t);
>=20
>          exit(EXIT_SUCCESS);
>      }
>=20
>      time_t
>      my_mktime(struct tm *tp)
>      {
>          int            e, isdst;
>          time_t         t;
>          struct tm      tm;
>          unsigned char  wday[sizeof(tp->tm_wday)];
>=20
>          e =3D errno;
>=20
>          tm =3D *tp;
>          isdst =3D tp->tm_isdst;
>=20
>          memcpy(wday, &tp->tm_wday, sizeof(wday));
>          tp->tm_wday =3D -1;
>          t =3D mktime(tp);
>          if (tp->tm_wday =3D=3D -1) {
>              memcpy(&tp->tm_wday, wday, sizeof(wday));
>              return -1;
>          }
>=20
>          if (isdst =3D=3D -1)
>              tm.tm_isdst =3D tp->tm_isdst;
>=20
>          if (   tm.tm_sec   !=3D tp->tm_sec
>              || tm.tm_min   !=3D tp->tm_min
>              || tm.tm_hour  !=3D tp->tm_hour
>              || tm.tm_mday  !=3D tp->tm_mday
>              || tm.tm_mon   !=3D tp->tm_mon
>              || tm.tm_year  !=3D tp->tm_year
>              || tm.tm_isdst !=3D tp->tm_isdst)
>          {
>              errno =3D EINVAL;
>              return t;
>          }
>=20
>          if (isdst !=3D -1)
>              goto out;
>=20
>          tm =3D *tp;
>          tm.tm_isdst =3D !tm.tm_isdst;
>=20
>          tm.tm_wday =3D -1;
>          mktime(&tm);
>          if (tm.tm_wday =3D=3D -1)
>              goto out;
>=20
>          if (tm.tm_isdst !=3D tp->tm_isdst) {
>              errno =3D ENOTUNIQ;
>              return t;
>          }
>      out:
>          errno =3D e;
>          return t;
>      }
>=20
> Cheers,
> Alex
>=20
>=20
> Range-diff against v3:
> 1:  e9e31a505 < -:  --------- ctime.3: EXAMPLES: Add example program
> -:  --------- > 1:  b7ed55965 ctime.3: Document how to detect invalid or =
ambiguous times
>=20
>  man/man3/ctime.3 | 93 +++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 92 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
> index 0ad2b530f..934da149e 100644
> --- a/man/man3/ctime.3
> +++ b/man/man3/ctime.3
> @@ -427,7 +427,30 @@ .SS mktime()
>  .I tm->tm_wday
>  field.
>  See the example program in EXAMPLES.
> +.P
> +Passing an invalid time to
> +.BR mktime ()
> +or an invalid
> +.I tm->tm_isdst
> +value
> +yields an unspecified result.
> +Also,
> +passing the value
> +.I \-1
> +in
> +.I tm->tm_isdst
> +will result in an ambiguous time during some DST transitions,
> +which will also yield an unspecified result.
> +See the example program in EXAMPLES.
>  .SH EXAMPLES
> +The program below defines a wrapper that
> +allows detecting invalid and ambiguous times,
> +with
> +.B EINVAL
> +and
> +.BR ENOTUNIQ ,
> +respectively.
> +.P
>  The following shell session shows sample runs of the program:
>  .P
>  .in +4n
> @@ -443,6 +466,7 @@ .SH EXAMPLES
>  .RB $\~ "./a.out 2024 08 23 00 17 53 \-1" ;
>  1724365073
>  .RB $\~ "./a.out 2024 08 23 00 17 53 0" ;
> +a.out: mktime: Invalid argument
>  1724368673
>  .RB $\~ "./a.out 2024 08 23 00 17 53 1" ;
>  1724365073
> @@ -452,12 +476,15 @@ .SH EXAMPLES
>  .RB $\~ "./a.out 2024 02 23 00 17 53 0" ;
>  1708643873
>  .RB $\~ "./a.out 2024 02 23 00 17 53 1" ;
> +a.out: mktime: Invalid argument

I'll change these error messages to say "my_mktime" instead of "mktime",
since it's not a standard error.

Have a lovely day!
Alex

>  1708640273
>  $
>  .RB $\~ "./a.out 2023 03 26 02 17 53 \-1" ;
> +a.out: mktime: Invalid argument
>  1679793473
>  $
>  .RB $\~ "./a.out 2023 10 29 02 17 53 \-1" ;
> +a.out: mktime: Name not unique on network
>  1698542273
>  .RB $\~ "./a.out 2023 10 29 02 17 53 0" ;
>  1698542273
> @@ -465,6 +492,7 @@ .SH EXAMPLES
>  1698538673
>  $
>  .RB $\~ "./a.out 2023 02 29 12 00 00 \-1" ;
> +a.out: mktime: Invalid argument
>  1677668400
>  .EE
>  .SS Program source: mktime.c
> @@ -472,13 +500,17 @@ .SS Program source: mktime.c
>  .\" SRC BEGIN (mktime.c)
>  .EX
>  #include <err.h>
> +#include <errno.h>
>  #include <stdint.h>
>  #include <stdio.h>
>  #include <stdlib.h>
> +#include <string.h>
>  #include <time.h>
>  \&
>  #define is_signed(T)  ((T) \-1 < 1)
>  \&
> +time_t my_mktime(struct tm *tp);
> +\&
>  int
>  main(int argc, char *argv[])
>  {
> @@ -500,10 +532,13 @@ .SS Program source: mktime.c
>      tm.tm_sec   =3D atoi(*p++);
>      tm.tm_isdst =3D atoi(*p++);
>  \&
> +    errno =3D 0;
>      tm.tm_wday =3D \-1;
> -    t =3D mktime(&tm);
> +    t =3D my_mktime(&tm);
>      if (tm.tm_wday =3D=3D \-1)
>          err(EXIT_FAILURE, "mktime");
> +    if (errno =3D=3D EINVAL || errno =3D=3D ENOTUNIQ)
> +        warn("mktime");
>  \&
>      if (is_signed(time_t))
>          printf("%jd\[rs]n", (intmax_t) t);
> @@ -512,6 +547,62 @@ .SS Program source: mktime.c
>  \&
>      exit(EXIT_SUCCESS);
>  }
> +\&
> +time_t
> +my_mktime(struct tm *tp)
> +{
> +    int            e, isdst;
> +    time_t         t;
> +    struct tm      tm;
> +    unsigned char  wday[sizeof(tp\->tm_wday)];
> +\&
> +    e =3D errno;
> +\&
> +    tm =3D *tp;
> +    isdst =3D tp\->tm_isdst;
> +\&
> +    memcpy(wday, &tp\->tm_wday, sizeof(wday));
> +    tp\->tm_wday =3D \-1;
> +    t =3D mktime(tp);
> +    if (tp\->tm_wday =3D=3D \-1) {
> +        memcpy(&tp\->tm_wday, wday, sizeof(wday));
> +        return \-1;
> +    }
> +\&
> +    if (isdst =3D=3D \-1)
> +        tm.tm_isdst =3D tp\->tm_isdst;
> +\&
> +    if (   tm.tm_sec   !=3D tp\->tm_sec
> +        || tm.tm_min   !=3D tp\->tm_min
> +        || tm.tm_hour  !=3D tp\->tm_hour
> +        || tm.tm_mday  !=3D tp\->tm_mday
> +        || tm.tm_mon   !=3D tp\->tm_mon
> +        || tm.tm_year  !=3D tp\->tm_year
> +        || tm.tm_isdst !=3D tp\->tm_isdst)
> +    {
> +        errno =3D EINVAL;
> +        return t;
> +    }
> +\&
> +    if (isdst !=3D \-1)
> +        goto out;
> +\&
> +    tm =3D *tp;
> +    tm.tm_isdst =3D !tm.tm_isdst;
> +\&
> +    tm.tm_wday =3D \-1;
> +    mktime(&tm);
> +    if (tm.tm_wday =3D=3D \-1)
> +        goto out;
> +\&
> +    if (tm.tm_isdst !=3D tp\->tm_isdst) {
> +        errno =3D ENOTUNIQ;
> +        return t;
> +    }
> +out:
> +    errno =3D e;
> +    return t;
> +}
>  .EE
>  .\" SRC END
>  .SH SEE ALSO
>=20
> base-commit: 6a7f1461b0e5474d50ef1920558dec103c0c058f
> --=20
> 2.45.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--p6vfc3cbvaogss73
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbLeOoACgkQnowa+77/
2zKd/RAApE+EDBSPSmHo+kITys9M+r6xba48YPTmXNAlhb6HF54AIxfpJyWoiqGk
dTUKb8mwJeVFursWlMYpmY56zIonXiHMZyu/xyuVR/hAWggj1gWQwQZFqlK+GM+t
8kK1HxQiSZllt/nWg4NPLOK58S44BHhrK3sFgcqqrN8A7sw93jD1NxWwC6hru7kO
drPmGlOwb86Mk6DKfm7taSZrCy4EbJLg+T4Tcr4JxAMupuDFIYaUJmi4aYa39BNX
+e3rwqeTcgr7KlVtrGVPpYagl6evr2i13rfOw4qwnrEnHjux5E4LNCNOfMLgLh/a
SnOUJ16Q46Dnu1uGwuCXA+iVm5J3VulNAM6Ea8TiX2eqGxK3p8QvkFAQtsT++ouL
5+eMBs8A7G0t91xjB8W5Og8MoIuOVlI0tTyVxKUQoO5uk23GyEJlKTe7RFVkBsjE
JwPzq4MVrcrwx6kReZwc9ytDd8yz6FeAKsOvOFLxzxSjo72sL/4jSi0NpExmH4b5
V0zKTw9ulIOzY2Wu4GAZR5OhuzuKGdEVeScHnKgfxeC03eO9xni0sbRLPFVhTruo
YQWHXXXTsjmLXuJR4ET/vZDqyn+42kasdi0GJYsejKRkJO7DbkabsvzAEQ45gH4n
jx1V0nUw3NVmVuab9TR4onaUyCtWZ9zX/6+8/GomkcyPfxo6KOg=
=F7ru
-----END PGP SIGNATURE-----

--p6vfc3cbvaogss73--

