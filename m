Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF6E5767F5E
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 15:00:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229529AbjG2NAc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 09:00:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjG2NAb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 09:00:31 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943F930CD
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 06:00:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2274F6092A
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 13:00:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0337EC433C7;
        Sat, 29 Jul 2023 13:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690635629;
        bh=216pr6UGOy0J8XvdQxbzx6vJ4S0A6d88YAXrx78GQOo=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Rs7cpoxXDoffZ08yhoX4FHZCxb1MyL0+A3KXIq/up59LUlFnTNBQN4F+X8qJd4HvO
         su3MUJ6AsEQ4TVGzxeCAQm6rEJs6GmVAdv0zQIG6QqIA4K3SFLNQqFGihiK+wWy2g5
         hRH5SicpNYnzYT9Au0d6yWhxdTNEF6t70w3F+SmVSDI3sFWrtSEo6ujnzr/+fRaVHb
         nQ0y/I+6qgVF42pGzYuYSybWVhvM2hE3MjPb5xvhHgslwua7vZ10/zzEg3y/NrFk9s
         vydvPZ0WYqdieL+OaJLq6TjxbFGOaXgiboEC7O12yBMGpmQIJi7eFzBYvA/ddNILHH
         4D5GquiWPpuVQ==
Message-ID: <88bb3c0f-ffd3-2fe4-1c46-041556ebab3a@kernel.org>
Date:   Sat, 29 Jul 2023 15:00:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/2] time.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <64c4d174.4a0a0220.6d519.0263@mx.google.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <64c4d174.4a0a0220.6d519.0263@mx.google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------atpHise0juP269GT6E1LVKj3"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------atpHise0juP269GT6E1LVKj3
Content-Type: multipart/mixed; boundary="------------DsCxoqchpYg5IB9ghvH7wqU3";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <88bb3c0f-ffd3-2fe4-1c46-041556ebab3a@kernel.org>
Subject: Re: [PATCH v2 1/2] time.1: ffix
References: <64c4d174.4a0a0220.6d519.0263@mx.google.com>
In-Reply-To: <64c4d174.4a0a0220.6d519.0263@mx.google.com>

--------------DsCxoqchpYg5IB9ghvH7wqU3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-28 19:02, G. Branden Robinson wrote:

Huh!  Do you own a DeLorean?

I was very confused, because this v2 series ended up in my mailbox
as being older than the v1.

> v2: Include more background on proper ellipsis usage.

Thanks!

>=20
> Mark up ellipses properly.  They should be in roman.  The item precedin=
g
> an ellipsis should be in the singular.  Use unbreakable space between
> metasyntactic variable and subsequent ellipsis.

Sorry for not noticing earlier.  Please also document why an unbreakable
space should be added between the metasyntactic variable and the subseque=
nt
ellipsis.  I've seen both kinds of uses all around, and would like to
have some reasons to prefer one over the other.

Cheers,
Alex

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


--------------DsCxoqchpYg5IB9ghvH7wqU3--

--------------atpHise0juP269GT6E1LVKj3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTFDWsACgkQnowa+77/
2zK0Qg/+IDdvkUki0XVOB8tBCGji9IWJgWCdknyC9SjmDga8i3hH6YadCn89M/vQ
2aIuOd7u/JRLM8mpnFxsRldS+VqW00Ps20yK6w2AjoZRnUKSg+cEo6TW82RKQokc
GlSD0BCmRkaHWsVh45k6IGFDL9gJsAWiI6VPAGh98JT8MYVUO1fsKCDhhmQXf+6Z
BHaIaXwp/psdxIS8fyl+IaPwhqoSdcD1Kvh6s7Jh+GpuJUUf9s7H3QDnOb9j0PbG
alDx7Jgn0YTbpoCpMPZi5b4TC88jKPl5gJpRLAJTNu8artINjx8K32WhU1oR2YGX
ughsqY2ib5om5WdlQXu8GLCtxTzpPtkXnqnn6B5WwlJ5I6IbxC3y6DawAoS2O/Gb
uJwHGMQPlwvQONweyuMmSIkEnVSFx2aqv0HKe0eGJEgHuvIAK/0zU8fs1FFcM+G6
KLd5PeVVrvadN1N+s0aFmBUfN1DQ/u++6ha0xNIA2LAw32v/32ZKkZ7k+7yU6Lfl
kiKBWXk2U9ward+/unYgokU7ce7Op/g8B6D6KwzAv6Q8lHTQPLihb7O4+IYUxgPr
bDsDjyR9fpVxSU6i5E4i2jemnWXyIylvPy5jH04u1UTa9s4EVud1J7OK9r21eQhh
35YWqofpYxMEs7zTyNYAoArHyNh3SGk237pOA9zKdAJK5Lobtxk=
=Zf/6
-----END PGP SIGNATURE-----

--------------atpHise0juP269GT6E1LVKj3--
