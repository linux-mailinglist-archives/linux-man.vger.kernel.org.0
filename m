Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1D26642E19
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:01:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231516AbiLERBl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:01:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231924AbiLERBk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:01:40 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91836DEF2
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:01:39 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DC.00000000638E23F1.00001798; Mon, 05 Dec 2022 18:01:37 +0100
Date:   Mon, 5 Dec 2022 18:01:37 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcscspn.3
Message-ID: <20221205170137.GD5000@Debian-50-lenny-64-minimal>
References: <20221204090723.GA1178@Debian-50-lenny-64-minimal>
 <0cfe8177-6671-c006-efb8-7634bd3b2cd7@gmail.com>
 <20221205150058.enbfwn52waftdlbk@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-6040-1670259697-0001-2"
Content-Disposition: inline
In-Reply-To: <20221205150058.enbfwn52waftdlbk@illithid>
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

--=_luckmann.name-6040-1670259697-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
hello Branden,
On Mon, Dec 05, 2022 at 09:00:58AM -0600, G. Branden Robinson wrote:
> At 2022-12-04T21:27:05+0100, Alejandro Colomar wrote:
> > On 12/4/22 10:07, Helge Kreutzmann wrote:
> > > Issue:    longest initial =E2=86=92 initial
> >=20
> > Why?  I believe "longest initial" is fine.
>=20
> I agree.  POSIX says:
>=20
> "The wcscspn() function shall compute the length (in wide characters) of
> the *maximum initial segment* of the wide-character string pointed to by
> ws1 which consists entirely of wide-character codes _not_ from the
> wide-character string."[1]
>=20
> [* emphasis added, _ emphasis in original]
>=20
> This distinction is important for those who have learned, often the hard
> way, the difference between greedy and stingy pattern matches.[2]

Thanks. I do understand now.

(And this is where you can see that translators are not programmers,
the wording looked strange and hence this report came about.).

Please thus disregard this invalid report.

Greetings

       Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-6040-1670259697-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOI/EACgkQQbqlJmgq
5nDPnw/+KnJKen1WiRGcgCwKkrY+wZf20wVWgklmSIGIZuPo2RTrRtwH5xzE0YhE
bpeXsP+wmYbjBICUJiMrZmXj6o/Vncpi6QueRMyfuW3BaX3z4UtcBqyfzHrLZhxL
bBiccJYBJee0RLsXxRJieD8wZTTq3j6WJmWHLF28XKigZXdmveFa4/PORwQ4SzAG
0nctlg0ZSFAlMNU8dqvdm21WAGaNCg7geOkuyozVFwuRUA/fZASJTjbx9IpBUCcb
lxwnayapjVJi0w/xprfD+llO83qBu0oGVGzkdLaLBkSb3Ig/VkX4nvs+XB4+a4pp
+iKlVE1BnydqIZaggW1NKDolTPybyY+7Gew6ArVw/UjKnZKaDjYB+vVNaSlaulH5
2pBDjI+EbfuiX4qvYPfnkKk24KxR5ms3Cy+EQzzi0EeC6xb4wVQfAZ/K9Pkeowyc
tibsa1HDmPrav2+XAOn1SgVUEWCwRmr/J/DVs+L2yQeKNd5i0mEcsdnnPw89SMYQ
RJSaX42wJANao1G4i3NgxXSo62R8EH3ImJ7ixQjqYPY+nFfTlh6KN2MbViWq4rlz
EHrCdUwNLxU5jsrO3//2eqcl7WAQy0q8stpsYFaFgT7taENk8PW0fWJD37fTALrd
ulJL64Q9nUhNSf+0K1wJH7bZ//Jqj8ZeXttF3PbuJW518gpO85k=
=vaL9
-----END PGP SIGNATURE-----

--=_luckmann.name-6040-1670259697-0001-2--
