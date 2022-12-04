Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9067641D58
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 15:08:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbiLDOI0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 09:08:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230001AbiLDOIZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 09:08:25 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2190E00E
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 06:08:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62052.00000000638CA9D6.00000CED; Sun, 04 Dec 2022 15:08:22 +0100
Date:   Sun, 4 Dec 2022 15:08:22 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page ascii.7
Message-ID: <20221204140822.GF441@Debian-50-lenny-64-minimal>
References: <20221204090714.GA610@Debian-50-lenny-64-minimal>
 <7753c4c2-6239-bc98-1506-09c2d2eeb484@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-3309-1670162902-0001-2"
Content-Disposition: inline
In-Reply-To: <7753c4c2-6239-bc98-1506-09c2d2eeb484@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-3309-1670162902-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 01:53:41PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    In the right table, please add \& markup for end of sentence =
characters (? ! .) to get proper formatting in other locales. Thanks!
>=20
> I'm not sure what's the intended change.  Since this is more delicate, I
> think sending a patch would be ideal.  Please follow the CONTRIBUTING fil=
e:
>=20
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING>
>=20
> And since it's about formatting, please also CC the following in your pat=
ch:
>=20
>     CC: "G. Branden Robinson" <g.branden.robinson@gmail.com>
>     CC: <groff@gnu.org>

I can do this later, just for your background this was an old bug in
Debian which manpage-l10n worked around:

https://bugs.debian.org/692765

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-3309-1670162902-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOMqdYACgkQQbqlJmgq
5nBkIQ//UvBsSFsmHmJYjkht47TSVjMymiYU0BcF4MDGh/WY67IDU4xd79Glf2Bi
Yc8JEO/CBN0caRUpfkA3Tb4guyUoCTXNXCQn8SmeXWc8dSTsCqYWgUTSlhnAhcPz
5Uaut5RZU4YV/pVGJQG/FZHMVEbrTfM7sqVsqqp77L9EIlOrrm1bxCxJbrnfqxny
SfNzp5hxrpIU5AYbk0/z7PpoVVPAO97qZH0uaicCIaYEIckv5xIFTTCdRguTAk8h
TpFJYaAxNaKsSEXT9zeX3QCNHc3gg6pPVWAsQx37E4aE1NGV2JozX9LHgiRBtz9t
NKBdUSF0pqLhNJ0e13csQhwVU/sacUTv5+NoGR7CNZLvYchiiDfYBRMtEgMNohuA
doCscKHmlf3vDFQFWCqF40g02i4ASdymnLw+iHOVkSGsC+1TVITbMho6LyxY5RwT
+1DJWh7KwYdYf8/+YocKUrm0WXLUy455yUua01RGcW15X/DxxOnYMFl5JPZSEbiE
KtuQrV4ESltONaU0Hp4Tj0gwNZCeqV/9pskvnWw6eXfzDHcXgndKSG4G/CeL/vQH
SVp+YuH2gN4Zh8/h0g8EWPmb0ml/OxkBEDXpYJtPXd0tSRBKSoSBqOZjYydKZFsS
Ko2lpibNPDxloka0Ffsp5GFVZJG/FAB5sbg5cAAblE/BvaCJt90=
=fHlu
-----END PGP SIGNATURE-----

--=_luckmann.name-3309-1670162902-0001-2--
