Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3597E7549
	for <lists+linux-man@lfdr.de>; Fri, 10 Nov 2023 00:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230339AbjKIXtT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 18:49:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbjKIXtS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 18:49:18 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28443868
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 15:49:16 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A583C433C7;
        Thu,  9 Nov 2023 23:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699573756;
        bh=rjJQXejh5zSeUJ6Am5uVr4SBvGQMLDVatVfAsr21szA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FW+PIkK1Y7dv9qxzC9B9QA13aRF0Tdkagq90oerY/s0BJo/h4/FrvbkJK7iNC+XNz
         /+6qZ+mpQJwyf5Tt8WWKrgUpj+6dH1uexVsKB5j2CsZcCws6/UNww7TM98izJ/2Q1K
         yoCe6yn8Lb48Gxw2fFR9NpMD7Wp8UFcfsoePWUrssvT7G4Nb5aGhCwXXacibdNV/Ap
         JYjyt3j80moVq5NtoOMur7SEeyZoJPeFq2mKjggJy6rMXSig0nA7/Xv9jhJV88ihvo
         uIqHo0jyKG6yn8l7p0crHH5mVd2BtBZl1i94Gu9NQfEaKtAxxPgB/shj4n6CDBczej
         DFcu6kKOENz7A==
Date:   Fri, 10 Nov 2023 00:48:59 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Jonny Grant <jg@jguk.org>,
        Matthew House <mattlloydhouse@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZU1v-JKBP9iWXOOT@debian>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <250e0401-2eaa-461f-ae20-a7f44d0bc5ad@jguk.org>
 <ZUzEw2j6gHF5WtsO@debian>
 <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="6gqvagsP27Ll+QAt"
Content-Disposition: inline
In-Reply-To: <f10a21e1-570c-4166-b060-afb2de93aede@cs.ucla.edu>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6gqvagsP27Ll+QAt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Nov 2023 00:48:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: Jonny Grant <jg@jguk.org>, Matthew House <mattlloydhouse@gmail.com>,
	linux-man <linux-man@vger.kernel.org>,
	GNU C Library <libc-alpha@sourceware.org>
Subject: Re: strncpy clarify result may not be null terminated

On Thu, Nov 09, 2023 at 10:11:10AM -0800, Paul Eggert wrote:
> On 2023-11-09 03:38, Alejandro Colomar wrote:
> > If you are consistent in checking the return value of strlcpy(3) and
> > reporting an error, it's the best standard alternative nowadays.
>=20
> Not necessarily. strlcpy is subject to denial-of-service attacks if the
> attacker has control of the source string and can attack by using long
> source strings. strncpy, as bad as it is, does not have this problem.

Interesting thing.  I'd then just use strlen(3)+strcpy(3), avoiding
strncpy(3).

>=20
> Instead of this:
>=20
>    if (strlcpy (dst, src, dstsize) =3D=3D dstsize)
>      return failure;
>=20
> applications that want want to copy a string into a small nonempty
> fixed-size buffer, failing if the string doesn't fit, should do something
> like this:
>=20
>    if (strncpy (dst, src, dstsize)[dstsize - 1])
>      return failure;
>=20
> This avoids the denial-of-service attack and is portable all the way back=
 to
> K&R C.
>=20
> It's unfortunate that strlcpy was misdesigned but here we are.
>=20

--=20
<https://www.alejandro-colomar.es/>

--6gqvagsP27Ll+QAt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVNb+sACgkQnowa+77/
2zLgYw//aA8lNcghjEHsVozBCfZUw42F1SMLCotCrZJ3rgobyFo9egcdTB59zrRl
ma2BMMbdFlza/bQRVClZlLsPZKeMcsTZaSPgIIqm/yejJMRr1UMCu6+uNcwna0mT
1QxBkiBD1nThLmjnmPv13QIcY6VFwB+JSCGfr7lcxaYCW9b7TggayBB4V0ZTh4HD
ncHfPZpXffZSIt+3nuc67zHzxqDCOtmLa5UggKDauaHgIw0mPy8m7Y0/IfoF1Ukx
Jr9kDKT3gmW75Kbc2bJqorwcY1soQrPhhWUP0K4cDyZYMU12T17SNx//iJLu1aWA
zS5FmF/6A7qvnkm9zcJDXALG1mJwJPyOLkXM/bC3adxLhFTY1o0aHdWhFHyXRZwU
nho+jGDVGzsDAkUG1RtY8iUhPzXs2tEmDHxwNxoQVnAPTF/uMYyKg/HbDlQP2Hk2
SjEz08lkXDuXCQ3FcrNJxjTy+2WkOmoqO14wQ+5BIwz3eBhx0sc+DLFdZgqL4tuX
VMjp/Ov4BFktnfiNcaZKnco4gq9A4c7CK1ppI4/C+d253SYM7wuyn3IltLsMwrby
I7Iqwkmwg2TV7/0b7zr8w9euSrhW4+XGbcGnXif73Y0VpOhZgmuMEp4ngQFWVrCd
z4uZn4Pwd4wUPEBuhRRIHDR6pMOgwF2kPDQnezD756t2GJmZlxY=
=XSlO
-----END PGP SIGNATURE-----

--6gqvagsP27Ll+QAt--
