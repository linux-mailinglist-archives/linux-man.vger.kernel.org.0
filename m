Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 487887E52E1
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 10:51:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235450AbjKHJve (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 04:51:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235406AbjKHJvc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 04:51:32 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD8141B3
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 01:51:30 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F190C433C8;
        Wed,  8 Nov 2023 09:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699437090;
        bh=ROVapZD+UR5aIwgS7ZsFaSdWGmRTyHXP8BxTuMU2Emk=;
        h=Date:From:To:Subject:References:In-Reply-To:From;
        b=YNwSxs383L4Hcz7jxuX72u0NlsHnqoCuaY6+8QTixksfzHuuTlXEnlCN6c9jMnGnd
         yeN3VSZdsHEqHZctwla69eUf1iFx+z6CrNp7/7yXR4OAvLyz2G1WQHg/fMkFIeUItz
         A21qbvx1iVJXBIw43BkwlljRnWcN63eRx/E04yILGmDF2HcptTQ489+KdA4WTCYGBQ
         uCpUB4/OClqTe6AXcxw4FDjQCuNkRi9e8r+jhd6ty4NnipvJVAEyoCqhHy6Ni6Qq/9
         CaPeHuo1xrJQ4YnM5F4SiR7a6tPWhPO0d0S+sJ1AsHytlPAqIPYOAcD26rOIo4V9IX
         /tjfWyy7sYFnQ==
Date:   Wed, 8 Nov 2023 10:51:21 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     libc-alpha@sourceware.org, Jonny Grant <jg@jguk.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated
Message-ID: <ZUtaH35V3koxTSL0@debian>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
 <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian>
 <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2g7aQaZPeLWPOG8T"
Content-Disposition: inline
In-Reply-To: <ZUsoIbhrJar6ojux@dj3ntoo>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2g7aQaZPeLWPOG8T
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 8 Nov 2023 10:51:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: libc-alpha@sourceware.org, Jonny Grant <jg@jguk.org>,
	linux-man <linux-man@vger.kernel.org>
Subject: Re: strncpy clarify result may not be null terminated

On Wed, Nov 08, 2023 at 12:18:09AM -0600, Oskari Pirhonen wrote:
> On Tue, Nov 07, 2023 at 17:17:29 +0100, Alejandro Colomar wrote:
> >=20
> > I would love to find this API useless, and in that case, I'd go further
> > and add [[deprecated]] in the synopsis, and write a heavy statement in a
> > BUGS section.  But I can't do that while it's still a good function in
> > some cases (even if those cases are bad design, such as utmp(5)).
> >=20
> > On the other hand, utmp(5) has other issues, like Y2038, and AFAIR it's
> > being deprecated, so maybe we could consider deprecating strncpy(3).
> >=20
> > If I see enough proof that all APIs that require this function are
> > deprecated, I'll happily declare the function deprecated as well.
> > (in fact I already did some time ago, but then found this use with
> > utmp(5), which is why I removed the deprecation; see
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man=
3/strncpy.3?id=3D30d458d1a6261221bad15e58f1862e0dda24f4a0>).
> >=20
>=20
> If you ask me, I'd not mark libc functions as deprecated without some
> kind of consesnsus from the libc maintainers too. They may not go so far
> as to add the `deprecated` attribute in their own headers, at least not
> yet at that point in time, but some kind of written "Yes, please don't
> use this function" would be nice to have before marking them in the man
> pages.

Okay, let's ask them.

Hi glibc developers,

strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?
Of those two APIs (utmp and utmpx) and any other that need strncpy(3),
are those deprecated, or is any such API still good for new code?

If all APIs that need strncpy(3) are deprecated, I propose recommending
against its use in new code.

Thanks,
Alex

>=20
> - Oskari



--=20
<https://www.alejandro-colomar.es/>

--2g7aQaZPeLWPOG8T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVLWhkACgkQnowa+77/
2zJl+w//SBaYK7BvEsksDWCKQyCXT9A+NoIkHp6iCj1HGTlIUKvM9g+lKiHhwADj
Gzq8bcihxlU0chm6WMqESBshPBXvhNyKu6UgUJJLcOgfAniAhWLABoDROnb0pDgt
wAeiCmSv4qUz6dUAKouQqmLj/7Gq3iaw8XSkpsYx4z8AW67RE+VMV69tPcu3xtpp
4na4NXgZSqFLdya7kxNUGmGobVc60YlHBfJqkPScAlwBv7XKbLbwfBolTGokfchu
0R/TKp+K+lpRbL+LVLmXbc2ic48yP/TpKNLOIwvFb/DpImAyLfURSkgnOSBil0hF
p79jqbZoSuDdJft1Lg9dVG5Uotd4w3Z+bjQtypRL4PFDW0CJEztZq2JrW3cVIasw
HyIo8oJanjMl2dOX5FqKv/lyWB1xQxqE7Q7NLvo4n6K+Dlckup2RwyUQ+MUVWhlU
WEAgYNUoTd+Ktjw4u/66418rQxWHT9wqUwENzL3hmq0G8U0wMv3eZC3XMUr9cMOe
C72luBxUYOml2m22whrvy8/Ve6gykDaV+MJ1koZV6LNP1hYJ+O5/y2HSAIrUIZLJ
9VGasERBUnSa19cUNBpCOL/tryvGrzAkdqsy86x2K0YEb0QOX7cJNIt79Cs9uA3X
+5uqjNGHYIPp2nDyIC/xDYgC7J5/LHrFe3GOUer5AUyJbUsRk5k=
=Ipfs
-----END PGP SIGNATURE-----

--2g7aQaZPeLWPOG8T--
