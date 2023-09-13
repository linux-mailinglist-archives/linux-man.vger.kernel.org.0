Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C70D579EF3F
	for <lists+linux-man@lfdr.de>; Wed, 13 Sep 2023 18:47:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231179AbjIMQrz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Sep 2023 12:47:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231426AbjIMQre (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 13 Sep 2023 12:47:34 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 926842D5A
        for <linux-man@vger.kernel.org>; Wed, 13 Sep 2023 09:45:07 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47745C433C8;
        Wed, 13 Sep 2023 16:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694623507;
        bh=k8GCpNhQFidIxmkAiK1iZIcedDwcHq2iB4XWGi07rFI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=KfrJUpLodCaihcWrvpH8o+fj3VspLy+b326hyMN8m7kdRJZIEuMQp3iJgBbpZNajZ
         i9gVGwooEd7kC9Vx/QS/QkYvUIXNnyP9ZDXkOtlLQNHIElReRdoxPL1hIMKskfJfnD
         VNPBB0Du7b39S/0LuMaIbaAR46iugLe6/1y3PdRFLV6ZQRQnqV6r7S8ZaLm4oq71tv
         sp+Iy1PgjViY3ok8k+PtdYRzk//kQNvUaoHmqHLxkt6Cv9rsO2AvmbuZrHKoHx7K2O
         YJjwkgwrt2eXqGxsiEjDoG6hZlhXmjh2e7jS+zcMnInLUNx4c0AS4o+YcrLJhzCNkz
         ze3fvAkzITccw==
Message-ID: <f532a4d8-be27-4b61-bd4e-865722626c06@kernel.org>
Date:   Wed, 13 Sep 2023 18:44:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
 <r7xxnlpgj3aft424fthkpxtfvhtjc45nsoymr2jlybge2722pn@l7pobift4psj>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <r7xxnlpgj3aft424fthkpxtfvhtjc45nsoymr2jlybge2722pn@l7pobift4psj>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0TZBnsmnX0YG6yvh3kIljzhn"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0TZBnsmnX0YG6yvh3kIljzhn
Content-Type: multipart/mixed; boundary="------------q5AUCraKPDQS3J0P6wX75M5v";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <f532a4d8-be27-4b61-bd4e-865722626c06@kernel.org>
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
References: <171eade0-c2f9-4390-a2ff-c5dd9bfe6a99@gmail.com>
 <r7xxnlpgj3aft424fthkpxtfvhtjc45nsoymr2jlybge2722pn@l7pobift4psj>
In-Reply-To: <r7xxnlpgj3aft424fthkpxtfvhtjc45nsoymr2jlybge2722pn@l7pobift4psj>

--------------q5AUCraKPDQS3J0P6wX75M5v
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 2023-09-13 18:02, =D0=BD=D0=B0=D0=B1 wrote:
> Bit me in https://github.com/thecoshman/http/issues/155:

Be careful with URIs.  They _must_ be enclosed within <>.  See uri(7).
Otherwise, the ':' can be understood as part of the URI.

=46rom RFC 9110:

	http-URI =3D "http" "://" authority path-abempty [ "?" query ]

path-abempty is defined in RFC 3986:

	path-abempty  =3D *( "/" segment )
	segment       =3D *pchar
	pchar         =3D unreserved / pct-encoded / sub-delims / ":" / "@"

As you can see, ':' is allowed in a URI path.

For your curiosity, here's the definition of other elements, per RFC 3986=
 too:

	unreserved    =3D ALPHA / DIGIT / "-" / "." / "_" / "~"
	pct-encoded   =3D "%" HEXDIG HEXDIG
	sub-delims    =3D "!" / "$" / "&" / "'" / "(" / ")"
	              / "*" / "+" / "," / ";" / "=3D"

	reserved      =3D gen-delims / sub-delims
	gen-delims    =3D ":" / "/" / "?" / "#" / "[" / "]" / "@"


Here's what uri(7) has to say:

   Writing a URI
     When written, URIs should be placed inside double  quotes  (e.g.,
     "http://www.kernel.org"),   enclosed  in  angle  brackets  (e.g.,
     <http://lwn.net>), or placed on a line by themselves.  A  warning
     for  those  who use double=E2=80=90quotes: never move extraneous pun=
ctua=E2=80=90
     tion (such as the period ending a sentence  or  the  comma  in  a
     list)  inside a URI, since this will change the value of the URI.
     Instead, use angle brackets instead, or switch to a quoting  sys=E2=80=
=90
     tem  that  never  includes extraneous characters inside quotation
     marks.  This latter system, called the =E2=80=99new=E2=80=99 or =E2=80=
=99logical=E2=80=99 quoting
     system by "Hart=E2=80=99s Rules" and the "Oxford Dictionary  for  Wr=
iters
     and Editors", is preferred practice in Great Britain and in vari=E2=80=
=90
     ous  European languages.  Older documents suggested inserting the
     prefix "URL:" just before the URI, but this form has never caught
     on.

> musl (and, thus, bionic) takes an int!
>=20
> Kill the "POSIX says 'request' is int" comment;
> prior to Issue 7, ioctl() is shaded STREAMS,
> it's obsolescent in Issue 7,
> and gone completely in Issue 8.
> The POSIX interface has never been supported by Linux,
> and the common ioctl() interface has never existed in POSIX or the SUS.=

>=20
> Note how the interface evolved in HISTORY. The NetBSD CVS has
>   revision 1.1
>   date: 1993-03-21 10:45:37 +0100;  author: cgd;  state: Exp;
>   branches:  1.1.1;
>   Initial revision
>   ----------------------------
>   revision 1.1.1.2
>   date: 1995-02-27 11:49:43 +0100;  author: cgd;  state: Exp;  lines: +=
6
>   -6;
>   from Lite
>   ----------------------------
>   revision 1.1.1.1
>   date: 1993-03-21 10:45:37 +0100;  author: cgd;  state: Exp;  lines: +=
0
>   -0;
>   initial import of 386bsd-0.1 sources
>   ----------------------------
> and it's char * in 1.1.1.1 and 1.1.1.2 but ... in 1.1, so hell knows.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.

Cheers,

Alex

> ---
>  man2/ioctl.2 | 52 ++++++++++++++++++++++++++++++++++++++++++++++++----=

>  1 file changed, 48 insertions(+), 4 deletions(-)
>=20
> diff --git a/man2/ioctl.2 b/man2/ioctl.2
> index 6b55d47c9..d52f245c7 100644
> --- a/man2/ioctl.2
> +++ b/man2/ioctl.2
> @@ -20,9 +20,8 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/ioctl.h>
>  .PP
> -.BI "int ioctl(int " fd ", unsigned long " request ", ...);"
> -.\" POSIX says 'request' is int, but glibc has the above
> -.\" See https://bugzilla.kernel.org/show_bug.cgi?id=3D42705
> +.BI "int ioctl(int " fd ", unsigned long " request ", ...);" "\fR  /* =
glibc, BSD */\fP"
> +.BI "int ioctl(int " fd ", int " request ", ...);" "\fR            /* =
musl, other UNIX */\fP"

[while applying, changed to use the \f[...] form.]

>  .fi
>  .SH DESCRIPTION
>  The
> @@ -103,7 +102,52 @@ .SH VERSIONS
>  .SH STANDARDS
>  None.
>  .SH HISTORY
> -Version\~7 AT&T UNIX.
> +Version\~7 AT&T UNIX has
> +.PD 0
> +.in +4n
> +.nf
> +.BI "ioctl(int " fildes ", int " request ", struct sgttyb *" argp );
> +.fi
> +.in
> +.PP
> +.PD
> +(where
> +.B struct sgttyb
> +has historically been used by
> +.BR stty (2)
> +and
> +.BR gtty(2),

[added a missing space while applying.]

> +and is polymorphic by request type (like a
> +.B void *
> +would be, if it had been available)).
> +.PP
> +SysIII documents
> +.I arg
> +without a type at all.
> +.PP
> +4.3BSD has
> +.PD 0
> +.in +4n
> +.nf
> +.BI "ioctl(int " d ", unsigned long " request ", char *" argp );
> +.fi
> +.in
> +.PP
> +.PD
> +(with
> +.B char *
> +similarly in for
> +.BR "void *" ).
> +.PP
> +SysVr4 has
> +.PD 0
> +.in +4n
> +.nf
> +.BI "int ioctl(int " fildes ", int " request ", ... /* " arg " */);"
> +.fi
> +.in
> +.PP
> +.PD
>  .SH NOTES
>  In order to use this call, one needs an open file descriptor.
>  Often the

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------q5AUCraKPDQS3J0P6wX75M5v--

--------------0TZBnsmnX0YG6yvh3kIljzhn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUB5wUACgkQnowa+77/
2zLt5g//XqC1ud7GoatQt/gm011CY9aQgbuTxUB0/1W2eYBT2PUSsG3oyEZ/Flui
6P8Iw/Q81wb+3bpZWGILHhd89MGvcje9g+GYRT2LY2so8pM0rAW2A85LUK2yoKUR
w0wfyCeWOiWr3qt9C2y+3zXPoY1SQOREz6WDKG67thY2DNab2zXf+NjIX1Odla/i
ty2ZTP3Fr4uy4vvmpD0bgmTq9f3B7+nwO4g367Pc0YFrnbhm/p+pWERHZYQsNQqR
V0a22OvFmXM0EtpJihSEfdXw99pBkBMfvXxpvHW4N1Qr/Qsft8LXWwHec7kwB61r
JXfYJKJoYIJOaBo7QlWIi7/lhyEel2nWPBtiCZ2EnKce2xfXuQlcneDfRACvYdbL
8GrTGnPWSclDl+toS8tMLaitgcTPRDXdnFzV0alBmLcufaILz2nksoo3GuPvs01q
KNwcRKXi63X7oniMx8rbnJCNhcbOYY4Hrfilwg3+cEiNNZirQUef1U/TuqY2XOJv
Wh7OIP7L6jgY89LVKlMscyXr6e1+3YnaXGYqRjfh4T2NV227z+C8i1+1+VgA6sbW
vvXQexcVQtYDdJ6/ay6ANHxsfaBvCPaGmMlBJfNwuBXlY1MjkJnIgzYKq5O9cs4G
tKNKrZGscuD7l9rij2vBeODgSGMwGQentC+HaOVyKFA15LG/pKQ=
=S4sj
-----END PGP SIGNATURE-----

--------------0TZBnsmnX0YG6yvh3kIljzhn--
