Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABC556494A6
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 15:20:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229947AbiLKOUT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 09:20:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229835AbiLKOUR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 09:20:17 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A8210548
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 06:20:16 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0C6.000000006395E71E.00006EC4; Sun, 11 Dec 2022 15:20:14 +0100
Date:   Sun, 11 Dec 2022 15:20:14 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: Conflicting alias for some man pages
Message-ID: <20221211142014.GB27121@Debian-50-lenny-64-minimal>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
 <20221210075302.GA4079@Debian-50-lenny-64-minimal>
 <36ffe1fa-67b7-85d8-cefe-a5ca11af5473@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-28356-1670768414-0001-2"
Content-Disposition: inline
In-Reply-To: <36ffe1fa-67b7-85d8-cefe-a5ca11af5473@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-28356-1670768414-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 11, 2022 at 02:52:59PM +0100, Alejandro Colomar wrote:
> On 12/10/22 08:53, Helge Kreutzmann wrote:
> > But how should man behave? If you enter
> > man strncasecmp
> > should it be the man page for strcasecmp.3 or string.3?
>=20
> The answer is here:
>=20
> alx@asus5775:~/src/linux/man-pages/man-pages/main$ cat ./man3/strncasecmp=
=2E3
> .so man3/strcasecmp.3
>=20
>=20
> I don't know how the man pages are preprocessed before they arrive to you,
> so in that processing might be the problem.  Maybe some information is be=
ing
> lost in the process.

Thanks for the explanation.

No, currently we dont't have these in our archives. But I see some
vagbue mentioning in our scripts, so I will have a look.

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-28356-1670768414-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOV5xsACgkQQbqlJmgq
5nAEdw//ahlsuXXSN3QN2Wo5m+h9WpIw5RqxDx3L/wWcK6N5DCn2J4h1L7Wa3Mru
63W615CC9Tt73RLTHP4kNm1/fQ/8VnykPDnmNLRmZFw5FZ9Z5pAmqgSvM7lV8s8e
ncyQhTmx1Iy2PgGpdcKPwxeyuJRBA1RSF0ypsaW5IR0DVvDsmcY2afPrtLQbFrbt
omTDQCaAA+RmKHMLJKPcgj2+8glmVikNMz537eFXC7NkaKN2GPToyDwVCxRvWqGN
+PHSzWbDZqTaQhhPoZQuQdZv5lhRJ/R/TToSSk/GCS1kNXBSQoYvthZiDSpsMavz
KtbXAtYVXKX9ddU46AD/IAv6GiL6BmlB97E3E+IT8JZ1SZLB4z1KiC8g381Hy7/i
ta6wVlYiqzsKdEYG+3hpLqZS1Azq/ZC70LYXqBsHct/CyynQsr3dDnslg9xgX7TL
CyNoY/p0tGO+Ju4qMNUe9w8/xXq11OVAGWFp0qSzTxcm0lV3cX5Yxm1An2NbIbR3
db+JgiTGmIzmQvNokGVucztCP0lhY+30rAcsENpvlDdyUhx3fggsPexFRfjIPNXh
wcfIjJT4zAUUT17Nzs34qUmGT5ALVdzsE3bIDCbKtbfIjq/PEqlkaesJ6X12TQgo
asWE3GGCSSxxuTSr4yymBqTIrN6ycIzo4vz1YksKssTvk5iPfQc=
=GMuX
-----END PGP SIGNATURE-----

--=_luckmann.name-28356-1670768414-0001-2--
