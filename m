Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8CD068B05D
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 15:49:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbjBEOt6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 09:49:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229498AbjBEOt5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 09:49:57 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33EC81ADF0
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 06:49:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5E025.0000000063DFC211.00005688; Sun, 05 Feb 2023 15:49:53 +0100
Date:   Sun, 5 Feb 2023 15:49:53 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page charsets.7
Message-ID: <20230205144953.GA21906@Debian-50-lenny-64-minimal>
References: <20230122193133.GA29311@Debian-50-lenny-64-minimal>
 <1482b0cf-cb89-76a3-ca33-ad9b29ef21f5@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-22152-1675608593-0001-2"
Content-Disposition: inline
In-Reply-To: <1482b0cf-cb89-76a3-ca33-ad9b29ef21f5@gmail.com>
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

--=_luckmann.name-22152-1675608593-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Feb 05, 2023 at 03:28:45PM +0100, Alejandro Colomar wrote:
> Hi Helge,
>=20
> On 1/22/23 20:31, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    ISO =E2=86=92 ISO/IEC
>=20
> Please someone write a documented patch for this one.

These standards are all written in the same committee, hence they are
all from "ISO/IEC".

So pick your favourite editor, and do a global search and replace,
i.e. ISO =E2=86=92 ISO/IEC

If you still feel uncomfortable with any occurence, put the number
into the search field on www.iso.org and check yourself.

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-22152-1675608593-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPfwgoACgkQQbqlJmgq
5nDY/A/9GQe3el+RQcPkEJseinCKKfdnQvpOd7ltOIePG0WfsUS+mdMz2U8k5PFV
886XgKkZKGZA52LUwDbxLpO2Mdof1/Diq0MdtL3eI63gHLnJJtzqnisPQmCvdUob
lcZZhMfSkhUAFHW/RK9mSPdwn3af4zZe++S+emYkG/2cKjadEFT0Nmje99KFLL7N
fVPCo9qCIEtt9RK/r3jJ0l/zN6SzeV7sgL5VLyKAPORrydj03e3wycqlug3dh/mM
l3Du8e06I92Aro/7qT5ThU5aW+3FIO6Dk/zzXe2kGrEgTPve2S9oLYzkRIrCZtvf
gXtQ+5JRYYz+1/3JheVzeOS2soWm5peCzoNOcPc75gPFFBz7j2yQw/2w4S+9DRD6
R9TcMga9qJTtyamzp6zJvny4vjxZfuAUnKkmIbI7y+aE1Bw2F7yoeFIBk9lSiDYT
AK3HNBnz5czB6fWFAw9r+XnAiz3OFUgShYNSNR7MRBtufIJQ+Tw/bpCYRfFFrTQV
IUr+Wie/jQbLiZWitlaa6EVwreqlrenaFHmgWqGeE/ZnFw/cHBeuic/slm14eJTY
dyLPcvSW0wy0kiUtp23xzBBUeEvmNxt4JD3vWN9SthlYS4ti40jzF7cGbQIvcK5G
INuiVnYMzUOSXK4PY3FOC2mZJokOIyadWJdFQFbiyOMJHwXjRmo=
=N8qc
-----END PGP SIGNATURE-----

--=_luckmann.name-22152-1675608593-0001-2--
