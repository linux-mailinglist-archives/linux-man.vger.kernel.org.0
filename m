Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6391B7DE418
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjKAPio (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:38:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234323AbjKAPio (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:38:44 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAC14E4
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:38:38 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 765CBC433C7;
        Wed,  1 Nov 2023 15:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853118;
        bh=W/Yy1UG7MBY66CD0v8EypKXqJWyLAIT+69ardGeLOKU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CPDs5WJFqIfMO3PulDw/dn2HeqOc9RTNRR7BaYkzTHf63lMtuT2sGVvXXKQO5fwDR
         fNLmY6ydsOJWJpeN8gsCIIjUyX4esuitZJ9/qby49pcPsrvTRsAoYVCUuEKGuuerzX
         e11wTJGQOKmdtjEKPlnEz9msnoU1KOzbJkvs9u74hVxGBBUw36Qxm0ZaemJkgh8sNZ
         7i4F6V9DHz2PQxFVCkfGSL/DtX2nlJD6uuijcp+W0UFCVrJsTpmSKM2+d2FchTPaDu
         t0AJ4dKHLZO8mAC7J29ZgGrn6bFK81oPOKMaN0XBnfgHeo72fjg+7DqqpxxY+9PsoO
         cAZzCYEo8M+Xg==
Date:   Wed, 1 Nov 2023 16:38:35 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1
Message-ID: <ZUJw-w5mCUQIL63N@debian>
References: <ZUJaYgd8DCnFdm1V@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2SnS6/FzeW3WWfby"
Content-Disposition: inline
In-Reply-To: <ZUJaYgd8DCnFdm1V@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2SnS6/FzeW3WWfby
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:38:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1

On Wed, Nov 01, 2023 at 02:02:10PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<hosts> =E2=86=92 B<hosts>(5)

Thanks!  Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df0d0efdf3e3997b00edaca6f7aa0c6a9b5e8d1cc>

Cheers,
Alex

>=20
> "When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), and "
> "B<endhostent>(3)  to enumerate the hosts database.  This is identical to=
 "
> "using B<hosts>.  When one or more I<key> arguments are provided, pass ea=
ch "
> "I<key> in succession to B<getaddrinfo>(3)  with the address family "
> "B<AF_UNSPEC>, enumerating each socket address structure returned."

--=20
<https://www.alejandro-colomar.es/>

--2SnS6/FzeW3WWfby
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcPsACgkQnowa+77/
2zIi3w//cORHsEYvBIuTFigHfub/RgbUoZzQJMCzJiwS+iGCz9ev87SPj3SxSB1D
5izLpvJp9/Wc3YCf3dtbweNxkVvlAkWH39xWPwHU/3OotMwfAnHEwP6H8gVHDIqG
/Ap85qoufMlpqW+i/mLDGMo/CyLBd2hBSGS5Z7auDGbeSjv6ogTGL2waRynND+kZ
o7wAv9tz1BzaEhl+kG95ZrifbXOaDFv3LaLfcLs2TMlyGnnQl6PldsD99K+ZYE9l
MBUmNoCdHC8GRpEC/3UHiHeo0DNioPW6lkcqfpzIM3kVEqXw3neSvfhLpcuWoRV4
G4cCnM1DMwVMhK08dPleCkxwxXSNPV3/FjLunBY+4rrsKCn7bebNb2B2uV8QhmO7
MDq2kuVxFfMQmAY+LWlztDyQb0j6ICAvR/nTz/46lzwNYFefljstPD7zj5xpyqbv
nhRnj07nLBQ6g4j0kLlgZ1H+F+BmD6Vu7tMYlx6QoWCAQqLy9ufJ9sN4mjwS4V6d
Y8ig/6tosW3XOFXuAJjBNdjgf3dvOxkVNrNO38PR+S+jtLpNBN3+JiLb2YTP3IAs
AzpqDB/Z8PEs9G9MO6QC9LyMx6Nl/XEU4cIHUsFtRwR2ZNGDRylgOeR8n5/69kPo
ittUJI7nnan2odSC4hcW0N+KWIvZueX1Ltdz9j9wHduAX9iVpdE=
=njea
-----END PGP SIGNATURE-----

--2SnS6/FzeW3WWfby--
