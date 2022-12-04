Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 386A6641F5B
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 21:02:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbiLDUCj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 15:02:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDUCi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 15:02:38 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83F54C71
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 12:02:36 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DC.00000000638CFCDA.00003C4B; Sun, 04 Dec 2022 21:02:34 +0100
Date:   Sun, 4 Dec 2022 21:02:34 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc.5
Message-ID: <20221204200234.GA15305@Debian-50-lenny-64-minimal>
References: <20221204090715.GA682@Debian-50-lenny-64-minimal>
 <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-15435-1670184154-0001-2"
Content-Disposition: inline
In-Reply-To: <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
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

--=_luckmann.name-15435-1670184154-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 08:52:33PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Has more fields in Linux 6.0.11
> >=20
> > "sl  local_address rem_address   st tx_queue rx_queue tr rexmits  tm-E<=
gt>when uid\n"
> > " 1: 01642C89:0201 0C642C89:03FF 01 00000000:00000001 01:000071BA 00000=
000 0\n"
> > " 1: 00000000:0801 00000000:0000 0A 00000000:00000000 00:00000000 6F000=
100 0\n"
> > " 1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 00000=
000 0\n"
>=20
> Please send a patch.

On my machine using 6.0.11 I see the following:

root@twentytwo:~# cat /proc/net/udp
   sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsm=
t   uid  timeout inode ref pointer drops
12479: 20B2A8C0:0044 00000000:0000 07 00000000:00000000 00:00000000 0000000=
0     0        0 30919 2 00000000403ec9a8 0
13042: 00000000:0277 00000000:0000 07 00000000:00000000 00:00000000 0000000=
0     0        0 25698 2 00000000ad73fe45 0

Greetings

       Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-15435-1670184154-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOM/NcACgkQQbqlJmgq
5nBjGxAAjOKuzTaXu5Lo+bL4K26fMu6dAOeBVTajA9MTw4IMNC8XT368xXq3kPw7
UcRewKmqk/JwcNrs9/wBzdc+Q804sa9+iKquW4FVaDr7z1mhiG/TbzMhYlEPggbU
ELs6hNkljG2fT0KvbirVsSBUjMPqjDeyWrE4IAAc17MkikRvSud8I7oxYGtD0iRp
W1kSxnT+GzpdMMImHdCjQSLa8JnooW4gh8lAUVYxNAkzT5PkEiOUWTkeHdfAI5mU
ZcdE/UxTsD/64VoxPr9pMc9uvBziK2iM9kQVG1Y5yLTaYtt8Oh4cXBIZHyOXz2fl
LkYnMAfEMyJAobHFqGi8Y2kigGCQSVhlNN0o0WuEKzkTHNbBZbtDW2QT4bF770um
TPOJ93/Iv4HDeqSKlXpS/bguaIl5VmMybtzChRJ0cERYkI2AVLXrMEF3eMfwRXPg
wBRgMeNovobGSYUn4CGywEJWF/JJi4jC4WVOmqd2Nhbtt/Wle75CqykAS/z0JkE3
wxBejNWrA0bDrzNdgC8xbsY5yAn4S57LpJFpRS587Kz+ZhJ4Y58H9C8RbESy5yHO
0XuRTYgO4vQcmjVOKTJF67HDE56AZ58VPU2XwJm2+dGFSWMPzwUBI/Kdl0E0+ZcM
t1C5mWyEPD/sK0lVWYFQV52+dj0PwuHej6tL2m/KUiXivNUsiA8=
=L0IW
-----END PGP SIGNATURE-----

--=_luckmann.name-15435-1670184154-0001-2--
