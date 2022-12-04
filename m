Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E372F641D48
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 14:50:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230053AbiLDNus (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 08:50:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230050AbiLDNur (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 08:50:47 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55DC215726
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 05:50:45 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62051.00000000638CA5B4.00000A08; Sun, 04 Dec 2022 14:50:44 +0100
Date:   Sun, 4 Dec 2022 14:50:44 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page dsp56k.4
Message-ID: <20221204135044.GA441@Debian-50-lenny-64-minimal>
References: <20221204090708.GA32589@Debian-50-lenny-64-minimal>
 <f3a2924c-fd3f-7dc2-2409-09b4631b81da@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-2568-1670161844-0001-2"
Content-Disposition: inline
In-Reply-To: <f3a2924c-fd3f-7dc2-2409-09b4631b81da@gmail.com>
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

--=_luckmann.name-2568-1670161844-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 12:24:57PM +0100, Alejandro Colomar wrote:
> Hi Helge,
>=20
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    B<dsp56k> =E2=86=92 I<dsp56k> (as in other places in this fil=
e)
> >=20
> > "The B<dsp56k> device is a character device with major number 55 and mi=
nor"
> > "number 0."
>=20
> Fixed.  Thanks for the report!  I'm pushing these changes to a 'translati=
on'
> branch in the git repository, so you can have a look at the changes befor=
e I
> apply them to the master branch.  I'll be confirming with short messages
> about each issue that I fix.

Thanks a lot.

But you don't need to handle them any special, to be honest I probably
won't have the ressources to review them again (and I belive Mario
won't either). And actually, I fully trust you to handle them
appropriately.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-2568-1670161844-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOMpagACgkQQbqlJmgq
5nCAZhAAmwc1ATl2uxN84BW35+RacgdL/53ZlUhR3i+CLmav00vZEyXIgCNwUu9H
FFHuNkbDBiQYY7B7Ve0sMKt4tIbmZLPCT+zp7Mm2pOsCKUCeVd+E4sBDwwGKnzut
XXzfMmQ629UanmKdqywlNJ0y6Zvgh7kloOhFdz4wN2dAS6CtkX8J3lropxFy0K8b
dx8uvlJv+RA03cu76Q5Or5V2WieBQcszOWirtAptF7B5nV/MHt6WW2EI1ZlLWsCN
a4eMh+p/UGy1L1CBooItWEzIHeu+ZzZEY1mGmEN/gKbftgVfHqXAx9ke3tOc5m/Y
2+dCbPnRB5KOnz6tUn2lOlpT48xEJznC5e2yWS1Yfid3eF3rzR03cAV1w+Vx2Lsm
3osgm6qVB4v4uUFvHL2TKOJtfnJlfPk+JokcNIa2xmaZtupXRZ35l6hhWpeLrnpq
QKeZ23V7mmg47gUFJ8hbrWD37ZJ7MmyZKDm9P134yn1g3/YvRdXwbHxEXzJgtTz6
QpMXhrheSF+NEaYyT+ptT4IJss7X8ucnxELNdBZa7k2WxYfefF5ZEKLvUcppLWjP
luetzBEwXXv2EHX6fqjbKiIlr3J+EiEfv6JHpvk727aXcPryfRSM9kRqOlGlLpro
Ikuf8E8RI1rVg8BIi6gWdJ7cQvd0cO6ULdVoLr//gV/l1KlwzCQ=
=VHZa
-----END PGP SIGNATURE-----

--=_luckmann.name-2568-1670161844-0001-2--
