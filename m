Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7498A678389
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 18:47:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231690AbjAWRrK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 12:47:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229791AbjAWRrK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 12:47:10 -0500
Received: from static.213-239-213-133.clients.your-server.de (luckmann.name [213.239.213.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 605DE30292
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 09:47:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
  (uid 502)
  by static.213-239-213-133.clients.your-server.de with local
  id 0000000000E5808D.0000000063CEC81A.0000038D; Mon, 23 Jan 2023 18:47:06 +0100
Date:   Mon, 23 Jan 2023 18:47:06 +0100
From:   Helge Kreutzmann <debian@helgefjell.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Issue in man page regex.3
Message-ID: <20230123174706.GA32751@Debian-50-lenny-64-minimal>
References: <20230122193128.GA29030@Debian-50-lenny-64-minimal>
 <923d1f91-0e5b-d770-db4f-15588f3c2d23@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_luckmann.name-909-1674496026-0001-2"
Content-Disposition: inline
In-Reply-To: <923d1f91-0e5b-d770-db4f-15588f3c2d23@gmail.com>
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

--=_luckmann.name-909-1674496026-0001-2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alex,
On Sun, Jan 22, 2023 at 10:03:46PM +0100, Alejandro Colomar wrote:
> On 1/22/23 20:31, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    How can a variable (I<preg>) free memory? Isn't it B<regfree>=
() which frees the memory?
>=20
> How about the patch below?
>=20
> Cheers,
>=20
> Alex
>=20
> >=20
> > "Supplying B<regfree>()  with a precompiled pattern buffer, I<preg> wil=
l free"
> > "the memory allocated to the pattern buffer by the compiling process,"
> > "B<regcomp>()."
>=20
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index 6f5831f24..f6faf6240 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -240,7 +240,7 @@ .SS POSIX pattern buffer freeing
>  Supplying
>  .BR regfree ()
>  with a precompiled pattern buffer,
> -.I preg
> +.IR preg ,
>  will free the memory allocated to the pattern buffer by the compiling
>  process,
>  .BR regcomp ().

I don't really see a change here? It's only the markup, that changed?

Greetings

         Helge


--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_luckmann.name-909-1674496026-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmPOyBEACgkQQbqlJmgq
5nBMtA/7BYVh0ETyrsn4TgNAlKd2hAsPu27P7GbLSQ2GU6tUu7rp1VQVn8bUmZ8+
qxavTsfHu1Xuln2pCuURFyouA6mJL6uMi7nDqnUFfnBnK8ylN8dDtku+BPRU1Lr5
5yU1oltNhpyxJ63ya0VetXh5edGBKYLQACAvk73F3cJKd9yMGxB8ujQj1FNBsxlN
c3yweAtxubVDR+4ZoY1dFcwXT4qjfrp9A1CdHCppz7VHNZImJHvybrxplbzhVKDm
Gzje2DxNTWgB5Ee4bVDo9NQBx/Zi366WER1cQ/H90D7UmR2xWAal2SO8dntJ3m2P
ABFizKByWSiiTMcb9m+mPWgsLLnbD2yxpw7A/UNxUrbHrDnPVOX6owlu6RCKxZ9H
vwgmTol2WglvM1eW812WcHIr75UF54EjYDwxdBkV6TBOPcKirwsvdDmO8fkHENdw
pWgayp6d8zAX0WiUI21sKwhH/BaB/8ADX2CqmhwGiGiNW6HbcjTb5SC5nMTUWpRr
IN1fP9DBIQvuzzvPdOL2CBgqM53IRsgnwx/OAIwEIk56re6ILxsXAzmpf7gdJtYI
IMW+rZYyZHSdVMRQzL0i5tSkBmZYSljPLZRckRtdgYVsdEsVMhInu6iIan+opj3o
5bk2dZgrkjueVGOf8jdAtpKkNx3dA8R9Vr0trHqJHkMwgnCiLwo=
=9o7P
-----END PGP SIGNATURE-----

--=_luckmann.name-909-1674496026-0001-2--
