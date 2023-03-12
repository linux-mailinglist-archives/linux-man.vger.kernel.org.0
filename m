Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 634F36B6348
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 06:14:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbjCLFOw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Mar 2023 00:14:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCLFOw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Mar 2023 00:14:52 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E62C39CE1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 21:14:50 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5403E.00000000640D5FC5.00007148; Sun, 12 Mar 2023 06:14:45 +0100
Date:   Sun, 12 Mar 2023 06:14:45 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <20230312051444.GE7927@Debian-50-lenny-64-minimal>
References: <20230311171358.GA5005@Debian-50-lenny-64-minimal>
 <f4fd4e46-7129-0f0b-519b-54ae39e2aba8@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-29000-1678598085-0001-2"
Content-Disposition: inline
In-Reply-To: <f4fd4e46-7129-0f0b-519b-54ae39e2aba8@gmail.com>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,CK_HELO_GENERIC,
        HELO_DYNAMIC_IPADDR,SPF_HELO_NONE,SPF_NONE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_luckmann.name-29000-1678598085-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Mar 12, 2023 at 12:27:36AM +0100, Alejandro Colomar wrote:
> On 3/11/23 18:13, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    ISO =E2=86=92 ISO/IEC
>=20
> I've already seen several reports about ISO -> ISO/IEC in several pages
> from several people.  I'd like someone who knows about these standards
> to take a look at all the man pages and suggest a global fix about this.

Well, *most likely* the global fix is to always replace "ISO" by
"ISO/IEC" in the man pages.

Rationale:
Almost all relevant standards in the IT domain are prepared by the
joint technical committee 1 from ISO and ITC (ISO/IEC JTC1). Hence
they always carry an "ISO/IEC".=20

But there *may* be exceptions. Thus I always check each individual
case (and hence made several reports). You can simply do this by going
to http://www.iso.org and entering the number in the search box.

If this is too tiresome, then a global fix of ISO =E2=86=92 ISO/IEC is most
likely the correct fix.

All I can do is to review each occurence I note and point you to this.

Greetings

         Helge

P.S. If I should explain this even more verbosely, I can, please let
     me know. I work in these committes for ~ 15 years.

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-29000-1678598085-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQNX8QACgkQQbqlJmgq
5nAfmhAAkvfEfY2QgFjej/4qOpKGs6WN65BfdDXM6fd7bl9tYjvoKPGMmciaRP8v
OsRmr1/dnIzfclsyDGAPQR9t+d2//bvgSo1rlmo2sYwCMwbyxKnMID3S98qDaizq
YB3EI1GvNcehYYx3PWZ+O6THZ3EMDZaj/clIV89ZmAT/fGEu5NBDrOeqM5u/o/CB
WPlH2y0gMoTUrVTs2qc321PzLlKbKRHt/WybK8os0LHlbOrgeGLzzJA/VwLaqNp/
SiZg02/AoHG7hJVXVsFnnpuUH4/vEDkO1KdoaQ1FqQzOzGljaXxf5IaXlIvdYHoy
bAdJr3rLNQuAL0uiwNcaXbxvsMk61jNBryN/Q/WELN70gEHlMYDt4eK9PUkyjAyL
Xhwm4ZZ/LWAbqZKzko9qTXMvNQlDE+Fl3XEN7opYAMW5AJITd04IvbrKqq8xsGTg
hdS8J2Z09YlzJ+n/7Usn4DDeFKoQJEtfRBWcAfc0W1Y03GASOwdSufig/sTz/C8P
oCx547vfY3kAIexCZ/hfv1/DyaL0S16R4gKRgyAfZS6LO+vO7tUR9Kcb7LN8bXEq
Qf/wvPKKVFiPraR1CBnPzVOXJYwARNZ8JsLDGV6OzlaUa0KbiKSYn12R17G738lT
4B6gAZMEnce6pzqXF6Zvmdngf16yrp3adnLiYL/Uzbw+sLF3UrI=
=bw3Y
-----END PGP SIGNATURE-----

--=_luckmann.name-29000-1678598085-0001-2--
