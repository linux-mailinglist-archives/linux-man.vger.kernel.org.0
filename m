Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 811FF67726B
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:34:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjAVUe4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:34:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjAVUe4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:34:56 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 811ADAC
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:34:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5808C.0000000063CD9DED.00007CCA; Sun, 22 Jan 2023 21:34:53 +0100
Date:   Sun, 22 Jan 2023 21:34:53 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page session-keyring.7
Message-ID: <20230122203453.GD30840@Debian-50-lenny-64-minimal>
References: <20230122193129.GA29087@Debian-50-lenny-64-minimal>
 <20230122200844.au2yezkhalgk44n7@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-31946-1674419693-0001-2"
Content-Disposition: inline
In-Reply-To: <20230122200844.au2yezkhalgk44n7@illithid>
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

--=_luckmann.name-31946-1674419693-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Braden,
On Sun, Jan 22, 2023 at 02:08:44PM -0600, G. Branden Robinson wrote:
> At 2023-01-22T20:31:30+0100, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    What does "under others" mean? Is this a special hook? Or doe=
s this mean "amongst other actions done by this command"?
> >=20
> > "If a process doesn't have a session keyring when it is accessed, then,=
 under "
> > "certain circumstances, the B<user-session-keyring>(7)  will be attache=
d as "
> > "the session keyring and under others a new session keyring will be cre=
ated.  "
> > "(See B<user-session-keyring>(7)  for further details.)"
>=20
> It seems idiomatic to me.
>=20
> Under certain circumstances, I wake up in the morning.
> Under others [other circumstances], I awaken after noon.

I understand this now.

As a non native speaker, this missing "circumstances" was not clear.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-31946-1674419693-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPNne0ACgkQQbqlJmgq
5nA63g/+PsBnB5Bqcf1UgrzRS4AwHzcpgjXkzMzcmgKtMQeoMbaPv6+t4s9RZUeS
+3HOdWqBAKvGyMrVWChXm77jLwFwy+nvZOvDwEwnPjj8zZQMWYIDMPXHFkdXp+Sp
KaopIXXi2W5UP6LUdQTYx06O2l23Flt2Sa1GYXU4S3VYf0i8XgAeHiTHheqc4yCh
ZunoyRN+XUQJNLsgNAl4Xu27EbW4PYaSWmR5Q9bbA73I7vDl+Q2ootibvnz9EyZB
POFxwXEHQGRuoSG/qx7T3FH5XpBLl+HVrZ7UdTNPZqyH2INEb0xrK9aFD5c25J8X
MNi1dbyqu8eyfrxCGm2z+hiPrzSfUJhHXE+V3/aEeJX9Eh3xnRC+5JtwF97TNONA
nqDzWgVmu3UqXU37c64DDF9DM1o6A5gtOIMwTbBNZ+8RsUqUwtsRf9H2xEmtIvlb
Qz9IyI4fGUXC8++eJRhliRvDeCicHVinBtjXfGGCb4F6cJw2VG2xMptEYGNI3xzB
uKzY+oYOfF3f+hhH2L4gyOWO5zIkZNYHT9eOrccO+gpoK/64Prw1oMso5zBfZpRk
EdsuJMhfZG38pNE97ns5VegRFe6jupS+ImjPgykzW4fJCF8fDaVv1RRCf51HGnFF
CiTIT4TSBGx9i/2S2JvMegJoGggOM2wZqsJ71yvQESymkj4heL4=
=WyPq
-----END PGP SIGNATURE-----

--=_luckmann.name-31946-1674419693-0001-2--
