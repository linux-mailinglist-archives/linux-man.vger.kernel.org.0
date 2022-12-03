Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F734641817
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 18:26:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbiLCR0O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 12:26:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbiLCR0O (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 12:26:14 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BB901EED7
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 09:26:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62006.00000000638B8582.00005D6C; Sat, 03 Dec 2022 18:21:06 +0100
Date:   Sat, 3 Dec 2022 18:21:06 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        Colin Watson <cjwatson@debian.org>,
        Marcos Fouces <marcos@debian.org>, toddy@debian.org
Subject: Re: Conflicting alias for some man pages
Message-ID: <20221203172106.GA23204@Debian-50-lenny-64-minimal>
References: <20221203140116.GA15173@Debian-50-lenny-64-minimal>
 <1ac0914d-72f8-654b-c6b0-6be68f26a598@gmail.com>
 <20221203165130.GA22312@Debian-50-lenny-64-minimal>
 <04e836cb-8756-28c8-b2b4-ff9435e1d359@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-23916-1670088066-0001-2"
Content-Disposition: inline
In-Reply-To: <04e836cb-8756-28c8-b2b4-ff9435e1d359@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,URIBL_SBL_A autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-23916-1670088066-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sat, Dec 03, 2022 at 06:03:52PM +0100, Alejandro Colomar wrote:
> > If they are able to prepare a release soon
> On 12/3/22 17:51, Helge Kreutzmann wrote:
> > after you did, then the translators could start dealing with [1] which
> > looks like a big change?
>=20
> [1] was only adding syntactic sugar to the code in the SYNOPSIS, so
> translations shouldn't be affected.

That is good to hear. Probably po4a (which we use to manage
translation) will then hide this from us.

> > Regarding timing:
>=20
> Could you please remind me what are the freeze dates and restrictions that
> affect the man-pages?

https://lists.debian.org/debian-devel-announce/2022/03/msg00008.html

Essentially this means that starting 2023-03-07 would be the last date
for an upload of manpages without asking for an exception (which
probably would be granted). Also this plan is preliminary and so dates
may shift.

For manpages-l10n the same holds, and we do an update about ~ 1 week
earlier and try to update the translations, so this would go
2023-02-23 (it takes 5 days to migrate from unstable to testing,
maybe longer).=20

But this is just a rough estimate and in the past documentation
packages are allowed even later uploads *and* it is not unlikely that
dates do actually shift (i.e. the freeze takes longer).

> > There are quite a few fixes noted by the translators in the original
> > man pages. So it might make sense to report them as well soon?
> >=20
> > Should I report them one by one as I did in the past to this list and
> > you and Michael Kerrisk in CC?
>=20
> Yes, please, and if there are any old issues that we forgot to address, f=
eel
> free to ping about them.

Thanks. I simply report all outstanding issues in 6.01. If you
disagree with any suggested issue, that's perfectly fine, and if you
tell us (i.e. reply to the mail telling me), then I remove that issue
=66rom the "open" list, so it won't be reported again.

> You can omit Michael from CC if you want[2].

Ok, a pity to hear this. And thanks for taking over.

> > (We are not done with all translation updates, but I would simply report
> > the current issues even if slightly incomplete).
>=20
> Sure, I'd like to help get as many fixes for bookworm as we can.  I'm not
> sure how much time I'll be able to put in this, but I'll try.

Ok, I try to report them tomorrow, and most of them should be easy to
fix (we try to explain the necessary fix). We are grateful for any
fix, so don't worry if you cannot resolve them all, we are all
volunteers. Just be aware that this will quite a few e-mails then.

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-23916-1670088066-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOLhXkACgkQQbqlJmgq
5nAuwg//Vl9Jz4hxh9/x2GyNjmOs0OSYYDA7Y0tbs7gnwUpoCbpcubUlGncGVCFq
jn+8DwGmi5UtJR+q1egmMkZuzZylHJma8aCo4E16kIB/A5GcIvSowdzztChn2BRf
7lUhTQip+tf/c4SHCo/O34O3kvCTZ9X1Oij+lh6QAvQefgiCLzb/JxDjrg3Ww8MD
2qUunii7uPhrDewKIMSycgXPuljrSYQFkrOW06bQnChv5bZeKRXlNOSWuBIbS578
E5SDybIoNbyOqUcPqKitwNK4Qii86FHXgyYM8dXADsayM3Uk0WBnp4rz/jnwzEcz
YBhpL/2gBAONuMcOQJnXsdOe1Oy2aE9woDZEv8aOAC5YnzlL9rvrOlb0MLrERlB7
BgL1IhOLwCTlt0co/OWT6rWiRGdKR59x2fbvktsN+HI4ARp36cNOzoTNGp/fr3wf
11qPzqer4q5Kth0jHf3rtdj4j6NzHktRzp48iBWi6uBThG0ddayriImlJA5rAkBI
KfiLlQ0lZUZFwaZpx3woTkjpnQtQynFgDN0ruS+LCUQEOnahZ/Ca9+KxdcB+v8b1
YjUxSZFzD9dS890tamuQTS8kvMfBx9T84U93aica/DXCsBLRdd3jF9GzD7f8nG/P
LvOJ8JCrZjuw/XqODxfHZwaSKolLSG+TZJvR9e+NmNoitnLwjho=
=dqYe
-----END PGP SIGNATURE-----

--=_luckmann.name-23916-1670088066-0001-2--
