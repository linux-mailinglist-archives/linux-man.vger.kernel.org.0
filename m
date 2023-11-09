Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63A987E6C7E
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 15:35:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232193AbjKIOfY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 09:35:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjKIOfX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 09:35:23 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A27E330D5
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 06:35:21 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB652C433C8;
        Thu,  9 Nov 2023 14:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699540521;
        bh=oXX9UNuDS7RUZbPh/oQEr6KQB3xf+UtA9n1LS3FusPU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=OQ1nMdePkmhzdM2P3HVJz5NdaYA4CHpnp56chIhRllTWbhFWogFvOIFX2rjsESdjQ
         +vh/eAo8PAI7mssVbdbq2+Bf4DHkPf20xMrhFbD8tl4aLsyaFCDCpkc2e5gytAugkY
         rgg4xTNn5T7m9UTXmMHoGCo4zvi9odHzVroLB0uyfO70pH2omvlOD8FBUmFmg9VpDm
         jYWRoyGUfvGg0c/4A01aGsd7hSuS05VyUY/QPOz8N5dbWc0z6fv4ONNFDMscCgiMb7
         4u/8Mrw//l8uZUDjByieQriyzQFMypByY4ea1NKZgjR7/tsEp0JnDBchmY8WueBtIS
         zH+uwqwWembjg==
Date:   Thu, 9 Nov 2023 15:35:16 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jonny Grant <jg@jguk.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        Thorsten Kukuk <kukuk@suse.com>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        Zack Weinberg <zack@owlfolio.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string
Message-ID: <ZUzuJGn-VUCdao4z@debian>
References: <ZUwCwxyPfur-hfea@debian>
 <20231108221638.37101-2-alx@kernel.org>
 <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
 <93436b5b-c373-4cbe-ae64-cc7c2f70f165@jguk.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="LT53PQfXDNUGE1ZE"
Content-Disposition: inline
In-Reply-To: <93436b5b-c373-4cbe-ae64-cc7c2f70f165@jguk.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--LT53PQfXDNUGE1ZE
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 9 Nov 2023 15:35:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
	libc-alpha@sourceware.org, DJ Delorie <dj@redhat.com>,
	Matthew House <mattlloydhouse@gmail.com>,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
	Thorsten Kukuk <kukuk@suse.com>,
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
	Zack Weinberg <zack@owlfolio.org>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy()
 do NOT produce a string

Hi Jonny,

On Thu, Nov 09, 2023 at 02:11:14PM +0000, Jonny Grant wrote:
> On 08/11/2023 23:06, Paul Eggert wrote:
> > On 11/8/23 14:17, Alejandro Colomar wrote:
> >> These copy*from*=C2=A0 a string
> >=20
> > Not necessarily. For example, in strncpy (DST, SRC, N), SRC need not be=
 a string.
> >=20
> > By the way, have you looked at the recent (i.e., this-year) changes to =
the glibc manual's string section? They're relevant.
>=20
> That's a great reference page Paul, lots of useful information in the man=
ual.
> https://www.gnu.org/software/libc/manual/html_node/String-and-Array-Utili=
ties.html
>=20
> Re this man page:
>=20
> https://man7.org/linux/man-pages/man3/string.3.html
>=20
>  Obsolete functions
>        char *strncpy(char dest[restrict .n], const char src[restrict .n],
>                      size_t n);
>               Copy at most n bytes from string src to dest, returning a
>               pointer to the start of dest.

Uh, I forgot about that page.  I'll have a look at it and update it.  At
least, I need to remove that "Obsolete functions".

>=20
>=20
> It could clarify
> "Copy at most n bytes from string src to ARRAY dest, returning a
> pointer to the start of ARRAY dest."

I think I prefer DJ's suggestion:

"Fill a fixed=E2=80=90width null=E2=80=90padded buffer with bytes from a st=
ring."

Thanks!
Alex

>=20
> (caps for my emphasis in this email)
>=20
> Kind regards
> Jonny

--=20
<https://www.alejandro-colomar.es/>

--LT53PQfXDNUGE1ZE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVM7iQACgkQnowa+77/
2zIZjQ/9EeKo8ySQ0EhHmHPIDFVVe0RqHiTAbrc70zhO4ZnggOJi58grZ6Y3obe9
sU30BNwsddupgGBi2ETpxXsAD1dVgPv1C9rcJqnHpahfkZBMBIkeMh1SVEwgWKdb
eCdB5fo+V79HfhbwWBNcmolEiP19LGW9TIBA1ukJwVvWFq0caZRAcX9qqyEFuwBj
/uFZLAvTb42rro3F4xhAlzyS/xHgCqLaQZweQSWa3EZHsf0YGhsatBdFxWUvQwM3
9NWGZzmTIuSVF2CZmlH4U5sM3emuZh1xxUzQJe1cxk1p7/rhArsr/rCTh7IpYBae
gYy7VrHXxjtRz15cnBqbEPGqxt9fW9YTsLeKW+VnkC4yIAuCEbQxTkUeDkMFGJUV
9h7Ou4Qg+xvdemh4ModMMp9SmIf1toTbqUlq962NQtI5H61qBPlGj/ARn2fqzDyh
R2dNuqPIQRv8jF7E+GkKtM5I1T1/FmnS+gQDvYxbEjbrESSIU5Z6Z9mBJRinlGOR
f8NT7WEtC3woWxkvxpo63RmLbOCPEUvDBH5Sv1Hd9VohkQ0zK4irlwQpzeVwwjX/
JTG0O/0TxkIYbjQ4/RqRKpeX9YHAIZVMA1sf+TUiToDr2IResYs2jg0hTJRwpUEC
aGNVaeoBtX+ke+62S+sq6UjlazE5jb8zLCPAmz8kS5JjrZIhmtk=
=vy8Z
-----END PGP SIGNATURE-----

--LT53PQfXDNUGE1ZE--
