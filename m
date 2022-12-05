Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 392BD642DEB
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 17:52:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231841AbiLEQwK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 11:52:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233066AbiLEQvN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 11:51:13 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B1BA1EC42
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 08:50:17 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E0DC.00000000638E2147.00001533; Mon, 05 Dec 2022 17:50:15 +0100
Date:   Mon, 5 Dec 2022 17:50:15 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc.5
Message-ID: <20221205165015.GA5000@Debian-50-lenny-64-minimal>
References: <20221204090715.GA682@Debian-50-lenny-64-minimal>
 <09758b86-2f45-2ca4-4641-162c74683e3e@gmail.com>
 <20221204200234.GA15305@Debian-50-lenny-64-minimal>
 <9382edc7-2a58-5844-b7a2-4ee991af8d64@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-5427-1670259015-0001-2"
Content-Disposition: inline
In-Reply-To: <9382edc7-2a58-5844-b7a2-4ee991af8d64@gmail.com>
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

--=_luckmann.name-5427-1670259015-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 09:08:31PM +0100, Alejandro Colomar wrote:
> On 12/4/22 21:02, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > On Sun, Dec 04, 2022 at 08:52:33PM +0100, Alejandro Colomar wrote:
> > > On 12/4/22 10:07, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    Has more fields in Linux 6.0.11
> > > >=20
> > > > "sl  local_address rem_address   st tx_queue rx_queue tr rexmits  t=
m-E<gt>when uid\n"
> > > > " 1: 01642C89:0201 0C642C89:03FF 01 00000000:00000001 01:000071BA 0=
0000000 0\n"
> > > > " 1: 00000000:0801 00000000:0000 0A 00000000:00000000 00:00000000 6=
F000100 0\n"
> > > > " 1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 0=
0000000 0\n"
> > >=20
> > > Please send a patch.
> >=20
> > On my machine using 6.0.11 I see the following:
> >=20
> > root@twentytwo:~# cat /proc/net/udp
> >     sl  local_address rem_address   st tx_queue rx_queue tr tm->when re=
trnsmt   uid  timeout inode ref pointer drops
> > 12479: 20B2A8C0:0044 00000000:0000 07 00000000:00000000 00:00000000 000=
00000     0        0 30919 2 00000000403ec9a8 0
> > 13042: 00000000:0277 00000000:0000 07 00000000:00000000 00:00000000 000=
00000     0        0 25698 2 00000000ad73fe45 0
>=20
> I don't understand the report very well.  If you don't mind, sending a pa=
th
> would make it more clear to me.  Thanks.

I can't really. Simply put:

1. The translator translated this part of the man page.

2. He (just for fun) executed "cat /proc/net/udp" on his system.

3. He saw a difference to what is shown in proc(5).

4. He reported it.

5. On your request, I also executed "cat /proc/net/udp" on my system.

I have zero knowledge if this is a bug on my system, a (recent)
change, done on purpose in the man page etc.=20

So I mark this as WONTFIX for now, maybe the person who wrote this
part of proc(5) can pick it up some day and check how to proceed best.

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-5427-1670259015-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOIUEACgkQQbqlJmgq
5nDnqw/8DmCA/u5w6KfkdGz1sDaQNezDsvuVe0c8sK8NPetNA06bkTSmf7p38pIE
2feqXdoAGsWcY2cPsatZK/200bcS90/k9CTSH1ExCMT96k8eBv3IJ4uj2H247QzP
FAv/QRcIEJGHIUZoiJ/rJTIB7v0vvKemxTbGwx4KEkFvF4C9KvmuhCyvRUjr+61t
/EQGCJ4shBCPJ4g4eQ+vRvBtVM4Ss5AmTRuYIiuc9vm5n9GqZLZmJMm5V0zTtx6p
6sbfvIJ+mLz2VS3fVxCPoYlTnTt0Z2LXIBgfRzlu/tEizlkepQiN++57Wp2SgFTq
2XTjN+WMm3Pn+b4a+ALRI5FM2FSpV0pOvzBsy5AtQF8iGJAu+1I+Zllimvna3qr/
JsC3IHQBHv51XB1eVBpnj1FifYGrQKzFoaT2GfK0o7VMBUbsprh9xb1dcfPwuLPP
YdH0cZGTwRWuH5nUTszpocxZ7Z0zhSwp2ESm3ZGyTIq8pm5q6qaMpwYKZysdSGm/
j0JSZn9dNKv65cLxsFFDZ4K4xqdFLpmfvChm5hvuufPvb+CgA2TetrNe8HVCR7TJ
fBhfKrUNKEd1KDrvni27M9jex4Dn3pnfzY9WIgVBhKVCFG5zZWFvZBsN9LAZ87bf
ODdrIb4kmALYKSMaQfXeP11JeGNIDvvHbToOcTk9lgyWrzTeGmQ=
=aHK1
-----END PGP SIGNATURE-----

--=_luckmann.name-5427-1670259015-0001-2--
