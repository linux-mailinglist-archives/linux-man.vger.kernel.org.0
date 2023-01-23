Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AF5A678753
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 21:14:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232799AbjAWUOd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 15:14:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232562AbjAWUOd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 15:14:33 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6C6E2B632
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 12:14:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5808D.0000000063CEEAA5.00001234; Mon, 23 Jan 2023 21:14:29 +0100
Date:   Mon, 23 Jan 2023 21:14:29 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.3
Message-ID: <20230123201429.GB4438@Debian-50-lenny-64-minimal>
References: <20230122193128.GA29030@Debian-50-lenny-64-minimal>
 <923d1f91-0e5b-d770-db4f-15588f3c2d23@gmail.com>
 <20230123174706.GA32751@Debian-50-lenny-64-minimal>
 <20230123190326.4mnvzasguf4dbfww@illithid>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-4660-1674504869-0001-2"
Content-Disposition: inline
In-Reply-To: <20230123190326.4mnvzasguf4dbfww@illithid>
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

--=_luckmann.name-4660-1674504869-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Mon, Jan 23, 2023 at 01:03:26PM -0600, G. Branden Robinson wrote:
> At 2023-01-23T18:47:06+0100, Helge Kreutzmann wrote:
> > On Sun, Jan 22, 2023 at 10:03:46PM +0100, Alejandro Colomar wrote:
> > > On 1/22/23 20:31, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    How can a variable (I<preg>) free memory?
>=20
> It doesn't, but no claim is made that (by itself) it does.
>=20
> > > > Isn't it B<regfree>() which frees the memory?
>=20
> Yes.
>=20
> > >  Supplying
> > >  .BR regfree ()
> > >  with a precompiled pattern buffer,
> > > -.I preg
> > > +.IR preg ,
> > >  will free the memory allocated to the pattern buffer by the compiling
> > >  process,
> > >  .BR regcomp ().
> >=20
> > I don't really see a change here? It's only the markup, that changed?
>=20
> The addition of a comma makes clear that the subject corresponding to
> the verb "will free" is "regfree", not "preg".
>=20
> https://thecriticalreader.com/commas-names-titles/
>=20
> Without the added comma, the sentence reads as if it has a comma splice,
> and would thus be (strictly) invalid.
>=20
> https://www.grammarly.com/blog/comma-splice/


Thanks, I missed the comma. Yes, this makes it clear.

Greetings

        Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-4660-1674504869-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPO6qUACgkQQbqlJmgq
5nCYxQ/8CNUL1re5pBC1Hgsl1zrE9aTvybKr5l1cLIS/tN3VHoj8MwC9mu13L0gA
gFIh2RvSOHPthxNbI/cM8e7FFxpn0h3Yu4Nb9+4MwekeyJhYyQw04LErK/GTmZ7Z
bkox/uHqvUPoQlQSawERPLPhAgjIZG9zChbzIAIbsAkDk6A9G2KREKLNMsaP4sCj
MgY9ZUQld7UVzp7rBCOYTX91b2CkSPjAxXwXtTx8MD2Lrol6J71DfhoIW0Rn+nCa
SMNWm/FV5eeCwhKVp0pYqCGyv2YLZ2CTLpY4x0UE8fFrci9AoOSCZl/urkqeyKF4
tn6IuDKu9Xeyw58H/RGiyiMgEoP+DtZGawUFovnyBnZH6m1+sb9HnOmIVv5yXmXk
2+nYeV27pLQE5Ug6I9JYVSNhL/N7Yhj14lPrC6r1CM9TzZ/ym4qeD5RHT+U2cF4H
9ca9mBjEiAGYL5X1ET0Xk+/SH80Sw9Dk/Si7tdxPx9nQ/q9b3pUDvOfDEyTvYNhl
YVuvw4iePbrUiPYLB4e1qzex9NtozBUneXvVfcoT1JZuU5N6dU/z5TD2+ap90SxY
Q8ENQTv4c7LrbmvcOATPvD3V78XPwKpOfbTJ7RzuW+wc+v3WvbM+TPQ9pHflk+uI
9j+KvWOveCa5Gd3wALpf1Uum3QPSVZ2p1kowABimDTsZR1poavk=
=/Ep1
-----END PGP SIGNATURE-----

--=_luckmann.name-4660-1674504869-0001-2--
