Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2F80641D5C
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 15:14:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbiLDOOs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 09:14:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiLDOOr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 09:14:47 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7097515FE6
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 06:14:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62051.00000000638CAB54.00000DC3; Sun, 04 Dec 2022 15:14:44 +0100
Date:   Sun, 4 Dec 2022 15:14:44 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20221204141443.GG441@Debian-50-lenny-64-minimal>
References: <20221204090711.GA370@Debian-50-lenny-64-minimal>
 <4ac1d53f-ae77-0bc3-530c-7d1a29af78ff@gmail.com>
 <20221204140009.GD441@Debian-50-lenny-64-minimal>
 <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-3523-1670163284-0001-2"
Content-Disposition: inline
In-Reply-To: <4a2140e0-4589-87f3-e579-5575aab5e284@gmail.com>
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

--=_luckmann.name-3523-1670163284-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 03:06:40PM +0100, Alejandro Colomar wrote:
> On 12/4/22 15:00, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > On Sun, Dec 04, 2022 at 01:25:07PM +0100, Alejandro Colomar wrote:
> > > On 12/4/22 10:07, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    mount point I<B> =E2=86=92 mount I<B>
> > > >=20
> > > > "Here, I<B> is the destination mount, and I<b> is a subdirectory pa=
th under"
> > > > "the mount point I<B>.  The propagation type of the resulting mount=
, I<B/b>,"
> > > > "follows the same rules as for a bind mount, where the propagation =
type of"
> > > > "the source mount is considered always to be private."
> > >=20
> > > I'm not sure about this one.  If we change that wording, I'd like to =
make
> > > sure we don't lose any details in the information.  Please CC any rel=
ated
> > > kernel developers, and suggest them review the documentation for more
> > > consistent language.
> >=20
> > Until recently, there was "mount point" used all over this man pages.
> > This was changed to "mount" in one of the previous release of man
> > pages.
>=20
>=20
> I didn't know that; please point to the commit that did that.

Sorry, I probably don't have the time to do so. Please remember that I
don't have the sources (I can for sure obtain them). I just saw a
massiv change and wondered why this one was left out.

So if you think it is fine, then of course you are the expert, we are
just translators. I just pointed this out so you can contact the
approriate experts (if necessary) and review this, if necessary. If
not, then no problem.

> > I mark it WONTFIX for now, so it doesn't get reported again and maybe
> > you can clarify (if necessary) this in a later release.
>=20
> If you point me to the patch, I can dig into it.  Thanks!

Sorry, I don't know the inner workings of manpages and how and where
patches are stored.=20

Remember, manpages-l10n has over 100 upstream projects (although manpages is
probably the largest), so we (or actually me at the moment) are unable
to get into the inner workings of each project but leave it to you as
the maintainer to handle this as you see fit. We just don't want to be
silently fixing issues in translations without the original authors are bee=
ing
made aware of this.

Thanks for your understanding.

Greetings

        Helge
--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-3523-1670163284-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOMq1MACgkQQbqlJmgq
5nBynA/9Ed02aQJhKuYpx+csX9R5a4HA9LHut/ZVpbjtQ0TX/OTYwBv0sSQyI8Xz
RThIFeHRiYiqTPeYcByTfah4WdbwCjERpDRNu6YQAajCY6+9zztHfMs6UhdThDgr
55k9Xe8ZU1MQOoR1nyt4zTRUdZdCwNf+c6cUijbxlC/+pV8r6LJsOILN2IM1pur+
raTapU7lL9ZCN4HlKegVHdPhxRnBDJbmYbXKaVxcBCmAwDlO1nLkqLdedm9Jn45s
IGbNzyBY+E9srJxENAcOAffBgDv83Y+ObEcDxa/L3AA4Itv0j4mt1xEx+JX8IEVa
9/vW1b6VZ5dBlLuEzVz5L7Pio/fr3y8Hmzqmk1g0xzjyFgA5T0awsER2kDM+tiKR
JErdSYuaG2cKDf9Wq091rHK6vzYu9T88WIbd22MmMMOtE/eLyZvBvz81AFeD/l7B
2iIz7boVc7BI7WHp2L9M4CvOvwLSwb3yd7IrQFbTuARk0JEEJBKQDPEISthDXOc8
J579NVFxATZRaxj5zoreLhVzrLzHPhRMYFSbEGJVRLuahSS4KR97DPIFIxUebwcT
kCs0XT7z9AbmqQJ7SS2P+5ZJ+Lqv7n0a0/Wuo2kD/oiYYIajmHHBWDXFmNFFLPix
cyFgisva/QsIhREoU64uGBMuL8x4XwesYv2BUoFy3Khd2rr2JKM=
=ntFR
-----END PGP SIGNATURE-----

--=_luckmann.name-3523-1670163284-0001-2--
