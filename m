Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8611E641D4E
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 14:57:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229986AbiLDN5L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 08:57:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbiLDN5K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 08:57:10 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6F6D13F68
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 05:57:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62052.00000000638CA734.00000AA2; Sun, 04 Dec 2022 14:57:08 +0100
Date:   Sun, 4 Dec 2022 14:57:08 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page keyrings.7
Message-ID: <20221204135708.GC441@Debian-50-lenny-64-minimal>
References: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
 <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-2722-1670162228-0001-2"
Content-Disposition: inline
In-Reply-To: <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
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

--=_luckmann.name-2722-1670162228-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 12:47:52PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    pinned =E2=86=92 anchored?
> >=20
> > "Process credentials themselves reference keyrings with specific semant=
ics."
> > "These keyrings are pinned as long as the set of credentials exists, wh=
ich is"
> > "usually as long as the process exists."
>=20
> I'm not sure.  I see uses of both terms, and don't know the interfaces
> enough to be able to tell which term is more appropriate here.  Please CC
> any developers of those interfaces and see what they think about it.

Well, you have a subtitle called:

Anchoring keys

(Just a few lines above this paragraph). Thus I wondered if this is a
different concept than pinning.

I mark it WONTFIX for now in our sources, so it does not get reported
again.=20

Thanks!

Greetings

         Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-2722-1670162228-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOMpzMACgkQQbqlJmgq
5nDEJBAAsLspiJTPts2P6q/Qo0ZYnOVyuffXg8ZA12BhOuPJCNQK9JHFSDiFlS5K
+9vjeipSaCwWU0DY+h8gi8HB6hhroR3XvrOJYb422dSG8zKxIjnlMtT/ojyYzyuD
oVyWpLWZ2ZRXn35jifVd0dI0VG78jSyGGyKospO5Sm80QBlRvogIVoQVnFnN5MTH
YkCW7RsdkUdMcuByNOU1yythYUlJEXGoHiZdfcfFgaS9B2eZVBv1mJ/SMofGpPbO
UYWCsyfm3qjuP/HyN7CceC0UjkAPC05ckPoBpJ1eVdEEJWgAOvqkhZ5TW9+QI/ef
fZCcpCUIC2EwC6voKYx+C6cA0GXhcJVxhCbXJ7+1Ydu3dSeqFJxo6PXW4orHUe2h
lXvAWUDAYKa2dz/ZxiXwyMJKqzXbzIoaAXMgjSwsO21KjP+LK8Ujx30lbxwD8WGV
MnXm41HtDb7cuC+KfgJVBjBtAi4wA6n78AvkKSTtLXMr7ogjoWA+szDCRINAQgif
9Fcg89Zl9N55pK6DaZY2HybkoaU7j742jSuMtY5f8JSHaggPJv8yCILEhwRndDbw
eY04YCmnwXf0zy1CKBtgja2Wn5trcF6dM97XSdz8b8W4/scpV5npXRNXn83X0as4
WExPxnngCtV58i22gIkyUWliVApsZFrztTj259z/Ljz3xQqu0j0=
=B0RW
-----END PGP SIGNATURE-----

--=_luckmann.name-2722-1670162228-0001-2--
