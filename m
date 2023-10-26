Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BCC07D8561
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 16:58:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231423AbjJZO6T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 10:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231324AbjJZO6T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 10:58:19 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56E5793
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 07:58:17 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 292D3C433C7;
        Thu, 26 Oct 2023 14:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698332297;
        bh=umQj0TaS1dRZzJ2Ypyh4So30u7G9KXD3qtDFrFwWMEI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oZCjhzE3b937NkeHmpKD1CJ9Gtc/Cagqqc4WidfkcxWlfhJi25M77jG8N8iZvyayf
         yGBAPjgzrtneaacnYuT22c6ieHKng4NBR3pb53wnHEl9XarY9xF27C0EbKUz5KUu6Q
         ahnr7YYb6/W+PrVLL0I/ej7EnXrOaetpqBuBFrx7Q89kP18Qq8HI+H603HJjNXEqnP
         2Y7AzMs92jGVMAGDcD9n6J2hJrlnMoxjrQrZlgRybRnEWCMpHyzFwRLtPbAS3ox3mR
         2cYp6+v/X2Zq8vZ24rde8+sokxRIFbbGb4Rz87/sww/P/Dv5zPoY+V28RAdjIBekk3
         zFXqD7QcTuVEw==
Date:   Thu, 26 Oct 2023 16:58:13 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)
Message-ID: <ZTp-hZTj7cmKMlXb@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
 <ZTlu2r8N3nrCnMpa@debian>
 <20231026125835.phpfjhz6xbsde33d@illithid>
 <ZTpz3A0yijoxDvip@debian>
 <20231026145140.qyl4lsfhp3644hmh@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="9jQ41VHnpzAwqbZO"
Content-Disposition: inline
In-Reply-To: <20231026145140.qyl4lsfhp3644hmh@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--9jQ41VHnpzAwqbZO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 26 Oct 2023 16:58:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Why does man(7) have 3 paragraph macros for the same thing?
 (was: `\c`, mdoc(7), and man(7) extension macros)

Hi Branden,

On Thu, Oct 26, 2023 at 09:51:40AM -0500, G. Branden Robinson wrote:
> At 2023-10-26T16:12:36+0200, Alejandro Colomar wrote:
> > Regarding PP, LP, and P, what's the history of them?  Why do we have
> > the 3?  I'm willing to reduce them to just one.
>=20
> I invite Doug McIlroy to go on record, but my surmise is that they were
> introduced as crutches for people already familiar with ms(7).
>=20
> Doug's original man(7) (1979) didn't have `P`.  But Unix System III
> added it in 1980, and 4.3BSD followed suit in 1986.  This information is
> in groff_man(7).

Was the original PP?

>=20
> In ms(7), `LP` sets a paragraph that is left-aligned, and `PP` sets one
> with a first-line indentation.
>=20
> In man(7), all (ordinary) paragraphs behave analogously to ms(7)'s `PP`.
> A first-line indentation is never used.
>=20
> My opinion is that one should use `P` exclusively for a few reasons.
>=20
> 1.  Its name is short and it is frequently used.  Huffman coding FTW.
> 2.  The existence of both `LP` and `PP` is difficult to rationalize to
>     anyone except a seasoned ms(7) author, of whom there are almost none
>     writing man(7) documents today.

Still, compatibility with ms(7) would make it slightly easier to
trasnfer learning from man(7) to ms(7), would one learn it.  I know many
other macros are incompatible in bad ways, but the less the better, no?

Cheers,
Alex

> 3.  It's been around long enough that everything supports it.  `LP`/`PP`
>     have no measurable advantage in this respect.  Anyone running early
>     BSD in 2023 has more interesting things to do than the composition
>     of legacy man pages.
>=20
> Incidentally, mm(7) would have already had a `P` macro as well by 1979.
> Its call syntax is different (it interprets arguments; ms(7)'s and
> man(7)'s "plain" paragraphing macros do not).  Maybe this, and/or some
> friction between Bell Labs Research and the constantly reconfiguring
> series of departments dedicated to deriving revenue from Unix (and
> troff) commercially accounts for man(7)'s omission of it.
>=20
> Nowadays, we can be confident that no loon is going to do something
> crazy with mm's `P` macro such that it would trip up man(7) writers.
>=20
> <an evil grin spreads slowly across my face>
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--9jQ41VHnpzAwqbZO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU6foUACgkQnowa+77/
2zJzjxAAp/TqsKyKJZHLTkTlvn3hYaxi/JHiOp/Kpsv1IMu4nx45fAjdyGC9XAwi
oDM6t7ESTK32XdzLnVv1WkNFg3/RK7NMXPY74ZTnduI5wx6obPlr2rYcLfXjkM8L
j1pHPojeMKlilklp26rspcfzT+A/jfU2qxiw4mMyEGa+5vAIus0vtH+JjYbeqWNe
5zlhsG7sPxtLgqRUqOxEeAJ7Qa4xHuhpY5LNDjVcjC8VVcjUxgEfcQgfr/Nv4qoF
bZ8NOwq1C8lx+ZwQqlN8qPVQxZ8AnKFz+BP1ckBxbqm+nYQdRIN29E1bg3+TZWS2
/RGtT7qOkaIVF4lClUKovzDIbWP6kMRh9WdS+laPoGI+fwyfz5tEUA4TrI8fNehx
PDxpjoG1nvUIvKT4fV1gsNMu3ZjNiUe6iSE4WDMS88gu9recmVIlrXof4lYSYODg
ui8So4CLqGCjs67oKTe/EZsdfTtcl6Ovl3y2BYOeKOUGpjCj7lud1ryMOjSX73DT
zzA6DDAXUcGCu+giFBVDDaaWEsyrB45hZe+AJbsewtqEZ6WVe5oA8KWTIdaL/d59
9Wo/DPzcjKoO4/au4+WVBm8trQyAnZtFCMLeYQTxxskSgFWheLKI//7b4zDnt8t2
Ms2JUeT8stKlsVY6wFj2i7gtnBOAfS6ECJ0/OnXnYlFn4J600Y4=
=N3fd
-----END PGP SIGNATURE-----

--9jQ41VHnpzAwqbZO--
