Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1ABC4D83DD
	for <lists+linux-man@lfdr.de>; Mon, 14 Mar 2022 13:21:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233704AbiCNMWD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Mar 2022 08:22:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243176AbiCNMUU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Mar 2022 08:20:20 -0400
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with UTF8SMTPS id 1C9285371C
        for <linux-man@vger.kernel.org>; Mon, 14 Mar 2022 05:15:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E54050.00000000622F31DD.000033F1; Mon, 14 Mar 2022 13:15:25 +0100
Date:   Mon, 14 Mar 2022 13:15:25 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org, 692765@bugs.debian.org
Subject: Re: Issue in man page ascii.7.po
Message-ID: <20220314121525.GA13038@Debian-50-lenny-64-minimal>
References: <20220313123422.GA22388@Debian-50-lenny-64-minimal>
 <20220314005258.fxidkcogt7epsvci@localhost.localdomain>
 <20220314112926.GB11800@Debian-50-lenny-64-minimal>
 <20220314115450.ivj3obg7h774ry3d@localhost.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-13297-1647260125-0001-2"
Content-Disposition: inline
In-Reply-To: <20220314115450.ivj3obg7h774ry3d@localhost.localdomain>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_SBL_A autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-13297-1647260125-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Branden,
On Mon, Mar 14, 2022 at 10:54:51PM +1100, G. Branden Robinson wrote:
> At 2022-03-14T12:29:26+0100, Helge Kreutzmann wrote:
> > Why don't you need it for line 1 as well? There is an ! also.
>=20
> The "!" over on the left-hand side of the table has only one space after
> it, not two.  For a potential end-of-sentence character (".", "?", and
> "!" by default) to be recognized as ending a sentence, it must be
> followed by a newline or _at least_ two spaces.

Thanks for the clarification/answer.

> I have tried to make the formatter's behavior very clear in the groff
> Texinfo manual[1].  I'd appreciate critique of any ways in which it
> fails to be.

Apologies for not having looked there. Sorry.

Greetings

        Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-13297-1647260125-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmIvMdgACgkQQbqlJmgq
5nBXghAAppsO4UI0Edi6kq51zUaIWnaXvdtIq7WPuDy1P3R04vWY9nI5w/q2niPa
B+rHmU3dyucUVIUXOQQc+r+WCZFCGR2L7wNqGV9Oisjz2xaZvjD4HhCSONOcTqh/
ef24pakm6WNe/xpBCS+TKyiyhs2vXx8oVMFr2Hy6K8dHBt2j9hTNkq26FxeCfdAf
60+c7rnQ2AFgOPqh4V1DEgvuD0ppWc7ts5m5LAW6s5+r6+JA28u6GXPHZtBFN5le
SeyyjZaR8pOzwK5ai++2YqeDuaEWaB5X+pwBT59DH1FspmtsCh83GGP/DHqk0smQ
+PapyxPQVmNam3KIpykF7OeD35RkPaEMEjOm+wIulKNdDcR+kgsNMmpJqLp0YL37
CW4C54fjZbkZGk8Jm09JLHqWv1J7xmzkzcQIa5qjWuIWI7eE7PAEKeRAk2JKLo0F
VG6I77eGTD0HJ85A8DSFbgesyUfMrQ2OU0ku7b0cCDo/BTneO2DgKLRl4X2z6QeZ
Mw6DvdzwASHYY+A/Yla0mxg8IjIjJZrjhgN9o/Gc2NbzMt/VhvVovOQF9tm46R3O
I91c2M5/L8aui7dN4bzambmGbW/+FYZLpkkpV60EQow6ydKudfwtewMieyrAG00o
5dVilPjQD4+xmNE84ej5MYUa5wMEIrxOgEyj6e9tfB7+CN4mxhQ=
=In77
-----END PGP SIGNATURE-----

--=_luckmann.name-13297-1647260125-0001-2--
