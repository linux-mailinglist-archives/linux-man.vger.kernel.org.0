Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C44F1641D56
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 15:06:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbiLDOGM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 09:06:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbiLDOGL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 09:06:11 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B480B15811
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 06:06:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E62051.00000000638CA950.00000BF5; Sun, 04 Dec 2022 15:06:08 +0100
Date:   Sun, 4 Dec 2022 15:06:08 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page passwd.5
Message-ID: <20221204140608.GE441@Debian-50-lenny-64-minimal>
References: <20221204090714.GA587@Debian-50-lenny-64-minimal>
 <4c00b870-212e-9546-24fb-b700e800fce3@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-3061-1670162768-0001-2"
Content-Disposition: inline
In-Reply-To: <4c00b870-212e-9546-24fb-b700e800fce3@gmail.com>
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

--=_luckmann.name-3061-1670162768-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
On Sun, Dec 04, 2022 at 01:46:29PM +0100, Alejandro Colomar wrote:
> On 12/4/22 10:07, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:   \"mount dev path\" =E2=86=92 B<mount> I<dev path>
> >=20
> > "After a \"mount dev path\" command, the pathname \"path\" refers to th=
e root"
> > "of the filesystem hierarchy on the device \"dev\", and no longer to wh=
atever"
> > "it referred to earlier."
>=20
> I can't find this text in the current version of passwd(5).  Please make
> sure that the report is about the correct page, and is not outdated.

Sorry, this is in path_resolution(7).

Greetings

          Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-3061-1670162768-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmOMqVAACgkQQbqlJmgq
5nAHVA/+JElYBCpxfkJ/9dUyQ90MQ19bbGhrvHZ5Ui3DvhBxDdoZs1fKdseWD8W5
Tf5nkzoXcE0ktMYOdMO2xsdB6KaIi1QrRgJp24YNzPT7b2PZ2TVK0RbeABY6WrRY
NS7/Sei3FMt1FcfFMQLc+O7HlPij4CVGP5SJL/rklvaSwZP8hgN4kduW5p4pntPr
KVq+3n6uNuLsPYaMlCCyCb4T8Gdyqz+OtU0IGtF6nI7TIb9EP0EQ3FMmmw74YWWj
VNm4tzUOIVy7BgWLea8PD8vgAaoHAgwvXdoNLBI7UlyOTtSsSoUfuXA1JR+gw+EZ
AYx6E+tJeRiRNfUAFHnkuc28PQO8bloR7n4GDxarALzkV6KBIDBA0yJqC1+C9Pcp
XVzy6fCK2koBZU+t6uDSHgTx3kVz2awd0YmNhEs+SROExFTAM7uVIUcBxYMXzdU0
NzzwtV7FcfnYtIO3mDRjSZuRW2MQkyVSWTqGYu0kgPtmf02EUsM8aGPQHj+9614W
mlbVMfbbRDl2kPMcsYO7E2OGlfytsABdSEzOtIb19TnUMor7oO0MgzCUUK+2ZCST
U1bEOyej3DJYcv7Vqrawv9eaTUykOrgQxW282yk36l5e8eBvApuJdtb3QpvyZn/t
/nkzQOU9odc9coa88IDaX5HXibWyu3m0fD6Hd+SvzKKbKIavuvI=
=2u6y
-----END PGP SIGNATURE-----

--=_luckmann.name-3061-1670162768-0001-2--
