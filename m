Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E9AF489F8A
	for <lists+linux-man@lfdr.de>; Mon, 10 Jan 2022 19:49:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240275AbiAJStw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Jan 2022 13:49:52 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:36188 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S239913AbiAJStw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 Jan 2022 13:49:52 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 364E4239A;
        Mon, 10 Jan 2022 19:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1641840586;
        bh=8JmYtGjT97gz8puSyF7BS2CtHNQ/GZjU1v/JahCtGys=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OG30cSoxZFhc/POaflPbM3W2DIbDxJ/79t1BxM+fv1sF62r38+GPBDQnBEk7vyAt9
         OuIObCQHsRNoHUa/MLLuV3WwIVWgEkNINV/h6DkOc37c8O3fTWPE58XKlD+9NHtUBw
         h74QgVC5xRapE9jTth7eR0KYTxkbWgZIlZ6omTE8TT4XIgA1ZYRYBod9LtloeyZuB5
         4uxctN5VmrsAQrZKERBy1zacmePiWHmO60mYzNjm3ZqPAsm385Tn3fkkpQ4W32iYDt
         DIEzFPewm0ubfRWLa4XXi9QAnYj/lc5W/63NfXJb/CmdkIyPguJqJwGoGc6O0NYHzX
         xwkHLKWY1lyuA==
Date:   Mon, 10 Jan 2022 19:49:45 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] pkeys.7: ffix
Message-ID: <20220110184945.x74zfpgt7enrrqta@tarta.nabijaczleweli.xyz>
References: <20220109162131.oi7qv4shvk2swsa2@tarta.nabijaczleweli.xyz>
 <738c0961-b640-cad3-524e-79f7903aacdc@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="4f4ulkbye6ypi6vt"
Content-Disposition: inline
In-Reply-To: <738c0961-b640-cad3-524e-79f7903aacdc@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--4f4ulkbye6ypi6vt
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Mon, Jan 10, 2022 at 07:13:48PM +0100, Alejandro Colomar (man-pages) wro=
te:
> On 1/9/22 17:21, =D0=BD=D0=B0=D0=B1 wrote:
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
> > ---
> >   man7/pkeys.7 | 4 +---
> >   1 file changed, 1 insertion(+), 3 deletions(-)
> >=20
> > diff --git a/man7/pkeys.7 b/man7/pkeys.7
> > index 73ddcdc43..0fff6493f 100644
> > --- a/man7/pkeys.7
> > +++ b/man7/pkeys.7
> > @@ -42,9 +42,7 @@ to change the contents of a register in order to remo=
ve write
> >   access, or all access to a tagged page.
> >   .PP
> >   Protection keys work in conjunction with the existing
> > -.BR PROT_READ /
> > -.BR PROT_WRITE /
> > -.BR PROT_EXEC
> > +.BR PROT_READ / PROT_WRITE / PROT_EXEC
>=20
> It's not that your formatting seems worse to me in this case.
>=20
> However, since we already have some kind of norm of writing each identifi=
er
> on its own line, I'll keep it like that for consistency.
> That consistency also helps write scripts to find some patterns.
The problem with that is, of course, that it looks, uh, Not Good
(and that's already quite generous).
Hardly a good use of a typesetting language.

There's two ways to go about this, both keeping one symbol per line
(which, I do agree, is quite nice; the scriptability concern is somewhat
 misplaced, IMO, given man(7)-imposed limitations, but.).

1. Keeping the current /-based flow:
     Protection keys work in conjunction with the existing
     .BR PROT_READ / \
     PROT_WRITE / \
     PROT_EXEC
     permissions passed to system calls such as
   (This sets as my original patch: "isting [P_R]/[P_W]/[P_E] permiss".)

2. Reorienting as a list:
     Protection keys work in conjunction with the existing
     .BR PROT_READ ,
     .BR PROT_WRITE ", and"
     .BR PROT_EXEC
     permissions passed to system calls such as
   (Which sets as "existing [P_R], [P_W], and [P_E] permissions".)

IMO, 2 reads better. Thoughts?

=D0=BD=D0=B0=D0=B1

--4f4ulkbye6ypi6vt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHcf8YACgkQvP0LAY0m
WPFpyg/9ETbqgGxBVdGCEDY8J13mOKVK5EYMBI74HnOyUT5n4Q1BUGBmx//nCuwo
MZF+FkKx+dm/sB7ahRuSayOcFTcJ8XRWvdxDkpZLrrLG0HsAeI3+S7AWcsaiSf/b
UrteSaHngUwuUI0m7dXyhx3qDWv0JO7hl8oYCeu8VI9IQyEL7ldTYONXv3ns6LGd
4yFT04TSGNbsvIxYclQJUiTR/QBO2zQEKTng96XAj0PBPAfgSTbuC8R8pH8Kzzl2
ZfP+N3E3gTzoucrY9VOxQInBWAHNh07UT7LiyN0F3Oa0I0DSdeZOIVHTSSWksS8T
tjwiTPrGGkBMP8z2r8fOWTjHPMclHBUCZ6yTp8qhjuyOqA5fVNH6Yd1kuMhj4Yno
z+TX7IWHrLQ5RVN2lKbHUB//6FBOWq1n2JRT/yajNGv/hGoFTYAxvbkKU+UG5FRd
AHir9GH6fQiRXj1Qy0xmJf4PXb76PdJHolgewrLG6U4xueqXVdjQz5u8MQJxH2mj
TD6XRVbHzwO1aip3tsZ27t9qQ01K/eGgYvld+8e2VFsQ3zXnXtazShkCjlhyBmzt
/PacE2B2HJzAKHVksehaF/+iaMNvn9dLCpGFbtBWyPkPkVUvCg9qrDpiUzqkNuUE
OOYHU+Got5i7ngq1jW7N6jKzSJmYD6KnYmqjQsD6BMnaxVyEIw8=
=MiLQ
-----END PGP SIGNATURE-----

--4f4ulkbye6ypi6vt--
