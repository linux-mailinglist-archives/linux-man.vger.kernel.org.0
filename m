Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 342BE648D87
	for <lists+linux-man@lfdr.de>; Sat, 10 Dec 2022 08:56:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbiLJH4G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Dec 2022 02:56:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbiLJH4G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Dec 2022 02:56:06 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D6431DA40
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 23:56:05 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54048.0000000063943B93.00007AD8; Sat, 10 Dec 2022 08:56:03 +0100
Date:   Sat, 10 Dec 2022 08:56:03 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>, linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        Marcos Fouces <marcos@debian.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
Subject: Re: man-db bugs? (was: Conflicting alias for some man pages)
Message-ID: <20221210075603.GB4079@Debian-50-lenny-64-minimal>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <4aaf7fb4-8d4b-e050-b376-9120d8c328ac@gmail.com>
 <20221209203719.yh5eosxv6ckgfuhz@illithid>
 <93e226a0-983b-f6d7-13bc-cd6240a45a93@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-31448-1670658963-0001-2"
Content-Disposition: inline
In-Reply-To: <93e226a0-983b-f6d7-13bc-cd6240a45a93@gmail.com>
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

--=_luckmann.name-31448-1670658963-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro, hello Branden,
On Fri, Dec 09, 2022 at 09:48:42PM +0100, Alejandro Colomar wrote:
> On 12/9/22 21:37, G. Branden Robinson wrote:
> > What I expected:
> >=20
> > $ whatis rindex
> > rindex (3)           - locate character in string
> > string (3)           - string operations
> > [...and maybe others I haven't thought of]
> >=20
> > What I got:
> > rindex (3)           - locate character in string

For completeness (when you try to trace this down) I get:
helge@twentytwo:/scr/build/src/DCS$ apropos rindex
index (3)            - findet ein Zeichen in einer Zeichenkette
rindex (3)           - locate character in string
XftCharIndex (3)     - X FreeType interface library

Greetings

           Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-31448-1670658963-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOUO5MACgkQQbqlJmgq
5nAqUBAAi4ChsJkJu8cqF01om2Iq+4vBFJzb+K5WdWOKv32grar9aRlamfVHCLaY
xkGnVnzUXlhjQZfrqyz/O6/nuAFL9KMT1L2ESQKeMaooVAFonh8aeSVDYgkTMdqd
mjwn78bS/kKdeGlNGpTz1ve2GKRkHunoXDs/CA+PdWBQs45m6xQlWtsQGgVjt+yg
n3+uZQ5omjGarqHe/uLeLF9SD9jTbnQEEbto3BQ1OVS+rJ/CBddQCCyD3ZG9+VNM
5hC5NfeU5IEtYTQwkSW+fOXxQ0WyH0XuTl39UW9D3i/Dy9cgcYDBQSoJF+Cq9JAX
lA4A+WaaJnjA/fyNfIYx5bpKChZGclE06/i5pqzuT2liypu3lr1Er8DIYZORiWqp
qL5EF13fyFaUlpV+VjiQn6O2ldgPl2WbvmUWVRn8CE2BZtCKfNJorkhbapET/M3a
AwA6vcScvkaNqdwjPBWucPQr9JHLr3BdoI/tFog1Tle4oSqD0kJ4c4fbFKQFu9zj
deXe1MLu7dTT4aQeBlpfm1LZQqjQ5NTqbuLchOJflUsZPo+7nesCQ4V9IZB1/LCZ
0zgSe415v7gB+jLWUPYIZVj9DcKIIC5M5n/zfsag+D7B9pSf1SUjnAI/J4+vikUi
4oIywFHF4PsUQh7UHvc4svf6gyvY3VVW8t4HjVlkCG8XXWCAFho=
=D2if
-----END PGP SIGNATURE-----

--=_luckmann.name-31448-1670658963-0001-2--
