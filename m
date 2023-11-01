Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18A5C7DE410
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232482AbjKAPkg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:40:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232094AbjKAPkf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:40:35 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA708DA
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:40:29 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A70E9C433C7;
        Wed,  1 Nov 2023 15:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853229;
        bh=xOIT/GoHR5SehfKHAykA1G68UbWMN64164pfUvWbeHw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=g2Zh41LW0efYEaVA2oExdLWPGip/1q3mL8oV66YyhyDioh/icu39E2LDkjamQ1yY6
         IrrYIZyG8OrYPOkL9IBDNhAz14Ezi64ppIhH1BwEaWWgvjKxAGT75JYcb1Lj9My26H
         xE/aKTtxbviasKPCsBVvt+aXK26sKCT5BEDjEj1/O7NXwEi+KNoi3/tzeJftDZ8F2Q
         /uOiAJ/Q3vh+5a2tYeFAierJMpflql/wCL8ApVo3GoHKkI1oNpOgWOpdx+60OmZMmd
         mpJUfuJbCYkTF0Q1EN1MASY9OCahOzj0LWhgsSPiKpj86XzZdJg83XMfOBN4uAohm3
         8LItnI51vomww==
Date:   Wed, 1 Nov 2023 16:40:26 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getservent.3
Message-ID: <ZUJxaqZLp7sKvASS@debian>
References: <ZUJaY3QALwK1EAbZ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="Qyd1J5C+O3V+SYke"
Content-Disposition: inline
In-Reply-To: <ZUJaY3QALwK1EAbZ@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--Qyd1J5C+O3V+SYke
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:40:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page getservent.3

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:   NULL-terminated  =E2=86=92  NUL-terminated
>=20
> "A NULL-terminated list of alternative names for the service."

I didn't check the page, but it also seems invalid, since a list of
names is likely an array of pointers, of which the last is usually a
null pointer.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--Qyd1J5C+O3V+SYke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcWoACgkQnowa+77/
2zKq0Q//fO1JlayF1riX5FmvJzjaT3JPH/xUEZVpMDH2QRoSGrQlLaqJ+UUSqUH0
S1o5F4/r4B9JzOE4T4tmrP6bYVfjZLes1IKioVPHRnGA1ChBxs954NugYRRPS7J6
rv5uzvG9kNeu19D+1rOuMbSsbyCcr9q6GDb8yQk8+yuLx5hc7mfqZtTPaTXi/3H5
shUT0rk8dUsuugvexUaO7eqU9NPIACL2/aEq4Qda2VLYWxYsRbN67csktzQZnYar
6Ap89xQcBKR4puAzUv95zH1duBRDUs9gkpcSkKfntUaiSF0v3n2MB2FF1FhTN2gl
zkzBqkDVC9Ito2rY4CptcLpvyk3fFlbjgJ7ruBG9G3gssMYxCptqGw6j+sXAK4OJ
q365K1UscyBNXZO3iGWi1N64eD2PrczNeSThid6w1y9vxi8Osv5ypZwpUBYnN6+3
e8FoRM2bu1Kh/eTiz+oEqsTPksYjCIH62MEXONOHzwc5pA0aYwiagpE7hxRDJSIf
19KZ9MN4JUcB314ElctVs9lkTMDU2EkostMMHEgwh1CLMLxe+2m+QieKYbFgvN+L
UFtugmlywmfKNjPbvbn8hKMeExHuWs2Zshoh1O4ALmjbS4Eca0uXS3IfnoKvrAN+
N03+5EeAhZ/b/f+7KvIcXAVnEviQ2m+gKk0dx7SxDmMTIFMrfTE=
=p3lB
-----END PGP SIGNATURE-----

--Qyd1J5C+O3V+SYke--
