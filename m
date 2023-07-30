Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4342A76863C
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 17:35:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbjG3PfS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 11:35:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229690AbjG3PfR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 11:35:17 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B96251A6
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:35:16 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 557C460C8C
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 15:35:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A611C433C7;
        Sun, 30 Jul 2023 15:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690731315;
        bh=xK9A5Pbve1BBygRCjFrTWfYwV1Gl9UNkVLEaL8Xr1Hc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Ey0F4gno4E+/L92IhbEli/9dH82BNQKRbC0xSs7eU2JwRSFlVhoV+m/SE7UoNxl4D
         uGD1AbieXbyDixpdCMzUJOOfDd9QAAEVnmskNPz6Ybql3xLSZJc4p7y5gd7wOXtFn3
         pAWUHoXmBeMfPHafOtevuTzCqHgT5yI5nffJ/6oDQWMHtktZf6pCDJBcjn1rNW+udJ
         Sc62lDPgB/RMv+1HvTE2NW6kZGppWjgASPoV6ST3RZJZGIVn0nlpISGFZFkKiCH+BH
         kJnPLCQLXyd87oCrusBw68VflkokZZwWHeWii3N+Bl1VkduJEqS+BxTsP21Yk3IrEa
         Byhvf/2mDzsXw==
Message-ID: <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
Date:   Sun, 30 Jul 2023 17:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3] time.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730152149.ajvi7zhskzzsp5jz@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------iegnSe4kNIvz7wfaKl9ZLZPT"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------iegnSe4kNIvz7wfaKl9ZLZPT
Content-Type: multipart/mixed; boundary="------------1A3SxcHo8oZIk3wMLwE3nWZ0";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
Subject: Re: [PATCH v3] time.1: ffix
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
In-Reply-To: <20230730152149.ajvi7zhskzzsp5jz@illithid>

--------------1A3SxcHo8oZIk3wMLwE3nWZ0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-30 17:21, G. Branden Robinson wrote:
> Mark up ellipses properly.  They should be in roman.  The item precedin=
g
> an ellipsis should be in the singular.  Use unbreakable space between
> metasyntactic variable and subsequent ellipsis.
>=20
> Quoting groff_man_style(7):
>=20
>     =E2=80=A2 Symbols that are neither to be typed literally nor replac=
ed at the
>       user=E2=80=99s discretion appear in the roman style; brackets sur=
round
>       optional arguments, and an ellipsis indicates that the previous
>       syntactical element may be repeated arbitrarily.
> [...]
>     =E2=80=A2 The dummy character escape sequence \& follows the ellips=
is when
>       further text will follow after space on the output line, keeping
>       its last period from being interpreted as the end of a sentence
>       and causing additional inter=E2=80=90sentence space to be placed =
after it.
> [...]
>     \|  Thin space (one=E2=80=90sixth em on typesetters, zero=E2=80=90w=
idth on
>         terminals); a non=E2=80=90breaking space.  Used primarily in el=
lipses
>         (=E2=80=9C.\|.\|.=E2=80=9D) to space the dots more pleasantly o=
n typesetting
>         devices like dvi, pdf, and ps.
> [...]
>     Several features of the above example are of note. ...
>=20
>     =E2=80=A2 The non=E2=80=90breaking adjustable space escape sequence=
 \~ is used to
>       prevent the output line from being broken within the option
>       brackets; see subsection =E2=80=9CPortability=E2=80=9D below.

That's the reason to use a non-breaking space over a breaking space.
However, I'd also like to see justification for using a non-breaking
space over no space at all.

Cheers,
Alex

> [...]
>     =E2=80=A2 Why doesn=E2=80=99t the package provide a string to inser=
t an ellipsis?
>         Examples of ellipsis usage are shown above, in subsection
>         =E2=80=9CCommand synopsis macros=E2=80=9D.  The idiomatic roff =
ellipsis is three
>         dots (periods) with thin space escape sequences \| internally
>         separating them.  Since dots both begin control lines and are
>         candidate end=E2=80=90of=E2=80=90sentence characters, however, =
it is sometimes
>         necessary to prefix and/or suffix an ellipsis with the dummy
>         character escape sequence \&.  That fact stands even if a strin=
g
>         is defined to contain the sequence; further, if the string ends=

>         with \&, end=E2=80=90of=E2=80=90sentence detection is defeated =
when you use the
>         string at the end of an actual sentence.  (Ending a sentence
>         with an ellipsis is often poor style, but not always.)  A
>         hypothetical string EL that contained an ellipsis, but not the
>         trailing dummy character \&, would then need to be suffixed wit=
h
>         the latter when not ending a sentence.
>=20
>             Instead of...              ...do this.
>         =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80
>         .ds EL \&.\|.\|.         Arguments are
>         Arguments are            .IR src=E2=80=90file\~ .\|.\|.\&
>         .IR src=E2=80=90file\~ \*(EL\&   .IR dest=E2=80=90dir .
>         .IR dest=E2=80=90dir .
>         =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80
>=20
>         The first column practices a false economy; the savings in
>         typing is offset by the cost of obscuring even the suggestion o=
f
>         an ellipsis to a casual reader of the source document, and
>         reduced portability to non=E2=80=90roff man page formatters tha=
t cannot
>         handle string definitions.
>=20
>         There is an ellipsis code point in Unicode, and some fonts have=

>         an ellipsis glyph, which some man pages have accessed in a non=E2=
=80=90
>         portable way with the font=E2=80=90dependent \N escape sequence=
=2E  We
>         discourage the use of these; on terminals, they may crowd the
>         dots into a half=E2=80=90width character cell, and will not ren=
der at
>         all if the output device doesn=E2=80=99t have the glyph.  In sy=
ntax
>         synopses, missing ellipses can cause great confusion.  Dots and=

>         space are universally supported.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man1/time.1 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man1/time.1 b/man1/time.1
> index efb818cfd..8902b4b96 100644
> --- a/man1/time.1
> +++ b/man1/time.1
> @@ -9,7 +9,7 @@ .SH NAME
>  time \- time a simple command or give resource usage
>  .SH SYNOPSIS
>  .B time
> -.RI [ options ] " command " [ arguments... ]
> +.RI [ option \~.\|.\|.\&] " command " [ argument \~.\|.\|.]
>  .SH DESCRIPTION
>  The
>  .B time

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------1A3SxcHo8oZIk3wMLwE3nWZ0--

--------------iegnSe4kNIvz7wfaKl9ZLZPT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGgyoACgkQnowa+77/
2zJyRQ//Tsh3QNTv4M74Ohbehnh9DH5yzGoSt50JLhKfsEIJxrd9jnIdF3rJSkPc
Aee+moBKt2+h7ZGfrRyWfDOm8dwLYHGPumTk5/gw+j5AJ/GGxfAYBdK/FGzJUHbr
qDnRIvXUb4tI7/L8kjQjIZp8C9aZnmQ885xBnX59grv/wsovZVtRSjkGN9RScs6F
4BzdBp4CxD7a0GVajy+qmnPLwEnUVmvCDPD+cU/2D2oHCNygIO1V8U5+Z+KoiU46
TnP3MBIh7Ou1HIMAY7GiM87Lw0XGcbh3wWhb4tPMiH4zGuPC6S+M4zQA920L/Ot/
I5gx0aHasYRa+crqxYBdACD3tQHdD6BX+WTvYBCNt30xM0L2Q78w8xrMTETIzvFV
L1GCd4CujHNucqVODmR+1d9NlzMIvSr8b5aTPEAzTkkHLaPjFOi4Sx7RWqXPSPhQ
cQDoS3sd2KckbrMeX0a1GU1NV6CEJvurWlkvIXx2J4g7zhJTljeFPuDtIgt4sI3T
z8Y9q0SDnwwbjH75vphS/omD1iserDLEmBu7fLKGJUeZl/l8wckek+u6sLcj7ldv
MMUGo3AZyZUTVG3HrDfz0jypD3rU6Li5dBBGwsNY73o7Qpof7m8LTX7Vv156zn3a
qPo2W+gAX18LblV8anaKbdriRRD6Mx/z3S9pQxi+oEsxhOaK0W0=
=0S51
-----END PGP SIGNATURE-----

--------------iegnSe4kNIvz7wfaKl9ZLZPT--
