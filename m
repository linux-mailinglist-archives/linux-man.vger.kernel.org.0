Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 387237686A9
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 19:23:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjG3RXt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 13:23:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjG3RXs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 13:23:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F13281738
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 10:23:44 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1F34E60B98
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 17:23:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6D18C433C8;
        Sun, 30 Jul 2023 17:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690737823;
        bh=3fZZ/56b+H4PPj3FnEOaU7ccZf8l/exrGHxSt9NGaEk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=CipbxwuLlMV5DQnkK5F89nE8Uo95V4xGaPmCI9p5DgVzMelFAXNwXh7mWZYrorq4G
         AGrTbFQy4YRxo6tvQ9WYqFRaaFAzJ+RT1XOtIn44YtCrMWhs2qr4IUT3jIQ6egVqOg
         qpxtvhy+OAkhCR4luJdYHdlha3Gvc901Fx4X9YlmbErXKK8qKlmp6SP2hVvFbW3Q45
         2+RZedAq6vhTx1JW1VWAkLXjia9IygDvq2gZdOFkMdTVWIaTlFvi0EfRGZLtmaocmC
         IQ6egL24CroCNQD9pNM7RUhGfiP4fVHJJ2HXmHf2Bl61/6p0yQRIbbJXO9kyJkWo70
         DY/coRXm0isEQ==
Message-ID: <c1a6beb4-5cf8-c267-55cf-036a5fcc5b86@kernel.org>
Date:   Sun, 30 Jul 2023 19:23:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4] time.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730165540.ob524sgwdx57uvzc@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730165540.ob524sgwdx57uvzc@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wWR8lIdqnzEIjY5RO7RykwZ3"
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
--------------wWR8lIdqnzEIjY5RO7RykwZ3
Content-Type: multipart/mixed; boundary="------------0el05bP9YFWnXhVi5BKacz07";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <c1a6beb4-5cf8-c267-55cf-036a5fcc5b86@kernel.org>
Subject: Re: [PATCH v4] time.1: ffix
References: <20230730165540.ob524sgwdx57uvzc@illithid>
In-Reply-To: <20230730165540.ob524sgwdx57uvzc@illithid>

--------------0el05bP9YFWnXhVi5BKacz07
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-30 18:55, G. Branden Robinson wrote:
> Mark up ellipses properly.  They should be in roman.  The item precedin=
g
> an ellipsis should be in the singular.  Use unbreakable space between
> metasyntactic variable and subsequent ellipsis.  (Whitespace-separated
> arguments should be separated from a subsequent ellipsis. "[-v...]"
> suggests that both "-vv" and "-v -v" are permitted; "[-v ...]" suggests=

> only the latter.)
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
>     Several features of the above example are of note. [...]
>=20
>     =E2=80=A2 The non=E2=80=90breaking adjustable space escape sequence=
 \~ is used to
>       prevent the output line from being broken within the option
>       brackets; see subsection =E2=80=9CPortability=E2=80=9D below.
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

Patch applied.  Thanks!

Cheers,
Alex

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


--------------0el05bP9YFWnXhVi5BKacz07--

--------------wWR8lIdqnzEIjY5RO7RykwZ3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGnJ0ACgkQnowa+77/
2zJu4A/+I0oUK5jRWwSK22sqcliDEY0hD5C26hMZKuYO8lvino+xQhI/n1PD5JA7
hdCi8hfHnxyDc0fGlpWVq0U0ZLXxU7lTwmhaZxZTtJHBJKJrRfInmknb5qQUWpVv
htIFr4DofWi4nbsZlbY7Q8sM0h1mMQ3nXfZ2PNr54nsFvPhD0b3LoDKsELgB7dHk
XN3CUt4YQkYPF9BmCZGNHpDthnLvG2qVcElIxq/Qeqe7YAJ7F44wmn/orcqz30QB
O4SZke3S+piJdT1B2DDlC5kkIqAZ+pcd1I8N5AKt4gA8Zr3Sn+SlQFXluf4kcNaw
VZxx+2e9eqAabZrKeXstaCnDhlKyKEwqjf6Tn3RdrF93wbmZsQH7CoMEU/mxFvEx
gkjZ6UdaDnLdwwT18147ZKGnMjpfsHpCoE5zmlxlYjRf/p0BP23c1KjqodhYxri5
O5nW4DU9UnkVjP9y5j00LJb/RHmr8t9Zxw1UFd566BinOESBdNfAsspE15CZ7kz5
6g/2plf7vUqvnyrmmkWhAIyfSMg4yNyKFSRf5rPLnt5EgIK1b4dYfTAxblsyr/Ja
2P1H/8RGfEE3WtvEreEsWRxHf2SiadQ+5YYO+NUINxL+DERYoEaENwMlNSeGQ7hR
tCa5orFJyOieDlWiGkdRmLjHYllc5wUknUXyE1kN29U+61Yclc8=
=frUt
-----END PGP SIGNATURE-----

--------------wWR8lIdqnzEIjY5RO7RykwZ3--
