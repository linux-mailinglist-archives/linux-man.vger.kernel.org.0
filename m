Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F9F6642E6C
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:13:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229891AbiLERNX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:13:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230450AbiLERNX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:13:23 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F32D1B1E5
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:13:22 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62079.00000000638E26B0.00001A64; Mon, 05 Dec 2022 18:13:20 +0100
Date:   Mon, 5 Dec 2022 18:13:20 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page keyrings.7
Message-ID: <20221205171320.GF5000@Debian-50-lenny-64-minimal>
References: <20221204090709.GA32717@Debian-50-lenny-64-minimal>
 <14ded556-7113-50cd-d705-942c482f09e3@gmail.com>
 <20221204135708.GC441@Debian-50-lenny-64-minimal>
 <ebdfc516-76ea-30a6-7b97-f34a434d40eb@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-6756-1670260400-0001-2"
Content-Disposition: inline
In-Reply-To: <ebdfc516-76ea-30a6-7b97-f34a434d40eb@gmail.com>
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

--=_luckmann.name-6756-1670260400-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 10:14:29PM +0100, Alejandro Colomar wrote:
> On 12/4/22 14:57, Helge Kreutzmann wrote:
> > Hello Alejandro,
> > On Sun, Dec 04, 2022 at 12:47:52PM +0100, Alejandro Colomar wrote:
> > > On 12/4/22 10:07, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    pinned =E2=86=92 anchored?
> > > >=20
> > > > "Process credentials themselves reference keyrings with specific se=
mantics."
> > > > "These keyrings are pinned as long as the set of credentials exists=
, which is"
> > > > "usually as long as the process exists."
> > >=20
> > > I'm not sure.  I see uses of both terms, and don't know the interfaces
> > > enough to be able to tell which term is more appropriate here.  Pleas=
e CC
> > > any developers of those interfaces and see what they think about it.
> >=20
> > Well, you have a subtitle called:
> >=20
> > Anchoring keys
> >=20
> > (Just a few lines above this paragraph). Thus I wondered if this is a
> > different concept than pinning.
> >=20
> > I mark it WONTFIX for now in our sources, so it does not get reported
> > again.
>=20
> No, please, report it again.  It's just that I don't know at the moment.
> I'd like to confirm this report.

No problem, I switched it back.=20

So if it remains unchanged in 6.02 it might get reported again.

Thanks for handling this!

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-6756-1670260400-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOOJrAACgkQQbqlJmgq
5nAdlA//SGLu67MqjWYDLSeYoxcGOWdwNF/6a0bVRTuSGhDzFDfNEnzMcXeNVwAZ
SqmkjO116QBZ2S2QwxUAMONthPJ4Ap1M3eh4+edVIlyoLUIhWP0oGTq7n5rFgsxX
bcfA7/pOh9uzWOJxdoK0hxT5czzlG04444p2PAJo3023UKG6pLnVm7Al/MI2KMm0
kT3iStuiaP+wj6+m5pY+TqJYEzkAWFbKU7qILiFIxNxAzoJ/dTfaYM1A1lBtXtBl
ZwKpgHf6P61wPaJ7prvbRqT6INrVPy1Xl78tKa1Agz7c3tIDx6e8NlDSC2nM9bJl
Z1Jf38ykQVzFR+MSDmSmcUyCPQT16ad58hK92zEEWuTkOLndmXcxbLpCptYunwH/
iJHip8KE0rnmkr7dcfO5r5v9fcwCAz8isU3KBTTZiImL5cR3yHAPaZ/L2qbD8YIZ
8RsI065xOmDlMov6PYE2W+xKYhyab1uSO2FEqHJ3lRYaquy0Tm2wdk+HrWJZaVrc
OKMrzLa8p4kEDchlbBEETTd69rgaF6XYkr+4cdz092+N6/4gYJ1B4LMyfYTV6wfU
Qjm+gRcsTZ/wutauBJ3hWCI2UiBcLTGAkvQV58tWpvt0SoLMR4z5sd7f9dL0/WY3
m0TZYz1Wh87ylAVSiqtZ3dg6BbAsfz9bAMhUL+9ZIglqBYo4VWQ=
=p1Z2
-----END PGP SIGNATURE-----

--=_luckmann.name-6756-1670260400-0001-2--
