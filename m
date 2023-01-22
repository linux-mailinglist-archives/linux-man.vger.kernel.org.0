Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AB4067722C
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:01:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230086AbjAVUBh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:01:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229811AbjAVUBg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:01:36 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28FE865BB
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:01:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5807F.0000000063CD961D.000077E3; Sun, 22 Jan 2023 21:01:33 +0100
Date:   Sun, 22 Jan 2023 21:01:33 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20230122200133.GA30353@Debian-50-lenny-64-minimal>
References: <20230122193125.GA28817@Debian-50-lenny-64-minimal>
 <20230122195410.2ke5fk3dunh75vip@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-30691-1674417693-0001-2"
Content-Disposition: inline
In-Reply-To: <20230122195410.2ke5fk3dunh75vip@illithid>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-30691-1674417693-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Sun, Jan 22, 2023 at 01:54:10PM -0600, G. Branden Robinson wrote:
> At 2023-01-22T20:31:25+0100, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    Why hard (and strange) line breaks?
> >=20
> > "Since, when one uses\n"
> [...]
>=20
> I don't see these "\n" line endings in Git HEAD or the change history of
> the page.  Maybe there is a problem with your searching/reporting tool?

This is the represenation we see (like B<> for bold, I<> for italics).
It most likely does not look like this in groff.

> 1ae6b2c7b8 (Alejandro Colomar   2022-03-18 20:25:09 +0100 1016) .I util\-=
linux
> b324e17d32 (Alejandro Colomar   2022-12-04 20:38:06 +0100 1017)  2.27) in=
 turn reverses the step performed by

At this point I see a hard line break as well when I read the english=20
page in man.

> That is why I suspect a problem with your tool.

I can mark it as such, i.e. a po4a problem.

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-30691-1674417693-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPNlhcACgkQQbqlJmgq
5nC5XQ//SgL0mSHYTHZi5+U0GKuFp+xHIWb2GGzGGhdbsNcwh+fAtKWDQGwmW0Od
pDm57WLnwPbBK2LS5ZtALzKDtLqI2NVsHMmFLbe2Iq8ZJ284GY0BpW85QYaf+4gp
l3ScQqSOaZdxhTrFK+Ufde3EprnBAzqjS52uTptQMiTxID/E/mr+l/YCxtoCZoD2
g6TV5r7GDU1BRKWRnV6KL2qVZ+C9ffs49Sl/eS+xH97uQjmOTq9Jw6Vzm+eNR8SC
Xonl8Jnz8r7dtMrXodAM3MEGKwgcj/hUcBn7XuOLmlWUDG1V3cQ1JJLgEEuXR96S
3IovZF4XczZ3RDQGcYBPXFwoSRyQDkufsL3mMJivEhnUbkdWRWzmILK3C0XfCoSu
FtiWWMV2NhGrTa3/irjHpnt68UbJWjVS++9eQPi2kGg2k5O82hxfjSNYXzDwkymP
TPbQjdKj38+p8cHikKbpEPDxuxgZSZDYibScg/Aki8H6VFh8pdoliqSrOwuvOJvR
JBirtnlOjX8sUVMU0NvzgpkJTkd6CsXro2p8fU/1MDW3/RcOpvY4MSH1D958FXGD
QiK6C72PWOoVnJwrsi8hxWoSzlYMiON8YW1OzlR24PGgc3kDfurOdqpVA9aSLLEE
U92k6HNgs+07u2uDbhO76ynEypbnZdZ/T6BXFS7lXDgpoTlQVqw=
=1JlU
-----END PGP SIGNATURE-----

--=_luckmann.name-30691-1674417693-0001-2--
