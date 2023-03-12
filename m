Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 775086B6337
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 05:54:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjCLEy3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 23:54:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCLEy2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 23:54:28 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B3AD59E43
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 20:54:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5403E.00000000640D5AFE.000007A0; Sun, 12 Mar 2023 05:54:22 +0100
Date:   Sun, 12 Mar 2023 05:54:22 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page wcsncpy.3
Message-ID: <20230312045422.GA7927@Debian-50-lenny-64-minimal>
References: <20230311171357.GA4888@Debian-50-lenny-64-minimal>
 <c36c21ee-8244-a6fe-7bfb-2f4a2b61c5fc@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-1952-1678596862-0001-2"
Content-Disposition: inline
In-Reply-To: <c36c21ee-8244-a6fe-7bfb-2f4a2b61c5fc@gmail.com>
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

--=_luckmann.name-1952-1678596862-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Mar 12, 2023 at 12:23:20AM +0100, Alejandro Colomar wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    null wide characters =E2=86=92 NUL wide characters?
>=20
> This is incorrect.  NUL is an ASCII character, which hasn't wide
> characters.  It's correct as "null wide characters", a.k.a. L'\0'.

Thanks for the explanation; I'm still learning about these NUL(L).=20

Greetings

           Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-1952-1678596862-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmQNWvcACgkQQbqlJmgq
5nDwjA//STqFTqJtthrKfzNhZBzhtcRrGJXmSZrokLKJ5NYZALxlDC0KBEdLFv7n
79NdY+ghbNo2o87c9TbaicQ5wp85pw9/oTcqDcbnZYkayX9giPCUvAwc3cv/3WJ/
iCddrNSP7shj2C/yxFdsKP9skn+65RAC/aX+sAcaVKT9mQTF3I9RSvGoBAydFfhJ
vYyBKCkVJ1RaMfmRZwFE+9QKJ8naQPZ8VTgpRkecEtmvwE+pQnqs5tdHOLn31MlN
W+SPjWzE1MsqjiZfFK70g1BOBCeabREjAripEROv3EQy9KuL6fFL/AY3G0XDqjmD
p6HsJsHAPOhfZNsDwHSw9phZcTW+zvPxNhDKBWh12LHW6mmYOvXDXXlPLLvFudSt
R2gYZGqkcIGBgP6TpzfFSL9MmBhWXElRcw/2mtljnewAQXmqo/xIQu+1jBu/aE3o
8lBsBJ4PYRGP7zCZgYoZymLc41UxRiC3L7HpBBQdkJ6lUG0AV3QJWN0gXndz+pC6
ZceFSL1mTR9FXFsJ+Te+at6FMy+wI2RxVL+iypS0r/juakT93t5HH+AeVrDysWPL
BBwyvlgOvMBoafIF8DQs957hNDxo9FiXYjokO6PojuMyAwCtJWNzoRgoJsgKCBcd
FY5m9umY2oTQgJ1zL/UCwa1PlP8KaMW1tiYgiOEOy7/hvxYK50M=
=pnn2
-----END PGP SIGNATURE-----

--=_luckmann.name-1952-1678596862-0001-2--
