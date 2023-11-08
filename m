Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F4517E5FE7
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 22:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229659AbjKHVVd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 16:21:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjKHVVc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 16:21:32 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28A82211D
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 13:21:30 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDB69C433C8;
        Wed,  8 Nov 2023 21:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699478489;
        bh=QhmJoRErlKZpdTJCy/+mrbmADygi3gDYbVFrUMhndbk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=W6fCOFop9X9s+4pZy3CEqVf9jFw0rHHo/K1yLwdh6MfbXqzJBTJJ3insXI5bi8G09
         YbRoBOwRMtyNjRpp83BWxvKBBuH3opAExxLWCwyRINQritH9oAbQukNXdYVnKY7udb
         eAK2NXfdAcboAdmGXVM0usSKLEn302S3Vi7e2EOE9QrVMIVWamhAXkDHiqXpm6BWtg
         CXUqF0/vCu33bia142C1u2/P6a5F5ur+20QeYGySLXhZqHuY4pIcX1hDeSqyXY4ILR
         8dQ0Pn9R3garvmYqIYY6D/MHEgRaKYtO7RlWIVenF0UXcwd1FYvXRFVIWe7jhhvqOD
         Zn1Z8h8nxK6BA==
Date:   Wed, 8 Nov 2023 22:21:20 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] difftime.3: be more explict about "difference".
Message-ID: <ZUv71orkW4r9qE0o@debian>
References: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
 <fa623e75-e5bf-b32d-8ce8-27ed59ae03d7@cs.ucla.edu>
 <CAJgzZorrrPLSJ-EWrsGcXg9y-ipVsX9FjHtdeh1x15yY7c-eHw@mail.gmail.com>
 <e06035f7-145a-13cd-554c-ca65a3d8f98a@cs.ucla.edu>
 <xy2hn5d4d3mgofo2aj6makhkhqv6aoeofmuhtebi6v6cwoub3n@t3ybtntqtvgq>
 <b30bf830-2392-4c3d-a52e-18ee2264e82c@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="/pUP8BjoHZC6TcG9"
Content-Disposition: inline
In-Reply-To: <b30bf830-2392-4c3d-a52e-18ee2264e82c@cs.ucla.edu>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--/pUP8BjoHZC6TcG9
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 22:21:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: enh <enh@google.com>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] difftime.3: be more explict about "difference".

Hi Paul!

On Wed, Nov 08, 2023 at 01:10:12PM -0800, Paul Eggert wrote:
> On 9/25/23 17:18, Alejandro Colomar wrote:
> > Please use semantic newlines.
> Sure, revised patch attached. (A bit delayed since this fell off the end =
of
> my queue....)

Heh, no problem!

Some small formatting comments below.

> From 07866b20cbacb39146d513f85d43c4c7f97d56e1 Mon Sep 17 00:00:00 2001
> From: Paul Eggert <eggert@cs.ucla.edu>
> Date: Wed, 8 Nov 2023 13:05:57 -0800
> Subject: [PATCH] Improve timestamp documentation
>=20
> Improve discussion of leap seconds, year-2038 etc.
> ---
>  man2/clock_getres.2    | 37 ++++++++++++++++++++++++++-----------
>  man2/clock_nanosleep.2 |  2 +-
>  man2/time.2            | 37 +++++++++++++++++--------------------
>  man2/timer_create.2    |  2 +-
>  man3/difftime.3        | 23 +++++++----------------
>  man3type/time_t.3type  |  2 ++
>  6 files changed, 54 insertions(+), 49 deletions(-)
>=20

[...]

> diff --git a/man3/difftime.3 b/man3/difftime.3
> index 5504ea8ff..7f129d30d 100644
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
> +.BI "difftime( time1 ", " time0 )

We use all italics for inline code samples.  See man-pages(7):

     If the command is short, then it can be included  inline  in  the
     text,  in  italic  format, for example, man 7 man=E2=80=90pages.  In t=
his
     case, it may be worth using nonbreaking spaces (\[ti])  at  suit=E2=80=
=90
     able places in the command.  Command options should be written in
     italics (e.g., -l).

     Expressions,  if  not written on a separate indented line, should
     be specified in italics.  Again, the use  of  nonbreaking  spaces
     may be appropriate if the expression is inlined with normal text.

The rest of the patch looks good to me.  Thanks!

Cheers,
Alex

> +acts like
> +.BI ( time1 \- time2 )
> +except that the result does not overflow and is rounded to
> +.BR double .
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

--/pUP8BjoHZC6TcG9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVL+9AACgkQnowa+77/
2zL4lw//SIk5HVYhr7E0SmpjMgAMDTKcTvhXNFsCBqnxGW6A9H3hqgUABDLTnr0F
yfbQQWBawAIQTPZ5E6C9hvuQUM1mo+UWKzmm5Ozn+LWJxA3z2yPJOeyxoP4H8NgP
yj66zWavY/9GjpxHbmNVOaJMj5DyG8dZb8N2MMudsiesxjK8UotjRY9YycHx0F78
ElulCuwftRD3ahTYk0pc0kT3GwnqlEOO46b6xsG0VD5Mu8yt9qVYHaHm1St1FQTr
agV7Z5JnBhh5I2Vd1M05CTHwcjsZe716oUCGmffRoBu5KI0Y7j9O8S53CIV4k/MT
vVGLiJUvMeJ54Yj794VO1RBR5icTukqm1ciIA2bzbBhqdyCqmIqk2lOH7i1MYUPa
f8xz6RTXuWhyaRTniP+7AZN0Qa1+Qojtt72ndqlf9EwVbz+84FFtKy+o73ySJRFH
KzOcuaIqY6SXDjtKPXncvcX44RNU9+f0X7Deo319FXC+SOtqrxDtx9ykFgHHwVPT
O99Dbl8CK8JrF3cerytgd8ONn//cPXgi82vEO6s3yQNTlP6Y/XlWonpXoZJl9kXe
rrefj6kaVlcwlJF054bck/Dle0cBEvHuudDHFqbWp8zjBEjiR7mmMIj1PNqlTBeF
Ghj590UOt9drxeXL1exPqmpv3kIvknJ7FxeRZvpuk4hezLogxlc=
=/+ST
-----END PGP SIGNATURE-----

--/pUP8BjoHZC6TcG9--
