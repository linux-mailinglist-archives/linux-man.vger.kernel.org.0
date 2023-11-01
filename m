Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E74C17DE482
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:22:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231233AbjKAQWg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:22:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233492AbjKAQWf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:22:35 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E34F11B
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:22:29 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EE83C433C8;
        Wed,  1 Nov 2023 16:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698855749;
        bh=m3X67+9q2OETqf3u9/5N4ZVqteSRBpUlCPy8+hbePHw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AxQa0nDD2f97N75hcv2qg996j6sksN67Fi0tR5o4xMOXZ/IxYsyBc7PjyVDRxajEE
         emWjRu55SJgWA46g6mhCSQ5YgnDle3H+Ec3u/987iUG8YI1BoOY8epd5nksC/AfL4m
         SWYBHA0uhAwGVvbkSOEgeC5IalragRm4PY3KW2y0EUDPiwi3JgLl106ccQrufrG+3/
         U48paRd3dY9l97N7JvFH/6lSRe3X1jruqQk7aZiQKd8dJfwNMs8oo5uY7puQ2Cel6d
         lgxuBQSJVaOLnQC33PXLPOLs4eB58IzqXppG1Kce1oompEPNHDXSXiMDhuixwRpswg
         btiLudcK99Ouw==
Date:   Wed, 1 Nov 2023 17:22:25 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page posixoptions.7
Message-ID: <ZUJ7QsTOECMkbxX7@debian>
References: <ZUJaZBQfotPYIEly@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="vmzbBU6mMNdKljF4"
Content-Disposition: inline
In-Reply-To: <ZUJaZBQfotPYIEly@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--vmzbBU6mMNdKljF4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:22:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page posixoptions.7

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    functions =E2=86=92 functions:

Thanks; fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3De2dd8de49aa8b13967b6127cef6d1b51af7fd784>

Cheers,
Alex

>=20
> "If this option is in effect (as it always is under POSIX.1-2001), then o=
nly "
> "root may change the owner of a file, and nonroot can set the group of a =
file "
> "only to one of the groups it belongs to.  This affects the following "
> "functions"

--=20
<https://www.alejandro-colomar.es/>

--vmzbBU6mMNdKljF4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCe0EACgkQnowa+77/
2zJ2Mg/8CdW9wnFZcRn7mUqDF0B7Cy37wuJLhw+ztdxOkHweG60Su/0ndVJwXAJp
A7HsKpsoPUXyol4emM1fTQLqK5da5eYhjwpgrMyngodfsAAs9KRHrwlHeSkP/PcF
J03V3LhoneY+nukW/2U9xtpg3NVw4FzJa9EfQG6EFG2fy0MJTY+aRhRN+VYVlo3O
cG9NClIxZm9jvIKWW51SQE6CtjzVmZPOuerAz1fJtIxabDfebLjwm2bIKc6Jf21r
kwrp5ygdOkWsNjcCgtTVcue9dWjBZSBjqbEWfB9l8GhmFss6Jn+c5j4ENEeMMn1b
XASlpRFy8F+DM9ToB13r61ssFCVQsIqGYrSESvzgZ02hUcVoS+2/mEdF+Ep5NmBK
mwOnUVt/ptnA0hEFGqlUvqAUBCiSiyOBiqrOoWRR3RXOuLqm/dTJHvTubVDijcsn
WQPF9y7k2rM2CYfN0YGvYk0o7A7tceL0/4metLDVc851N0fw+D5YO7ywJP2g/hMq
ETZLNdOFRxivuXZKhQUNIkbYWi0mQk/nD1ddUbpu1k+R1VbnGkVN84Q5Kw77T3Sw
nFWyPkrt8cBMdbo8vkHNBaoaWS50h0gBKvO1e3YDEon88rBNwUf9C+bkCfZ5Ywtw
soTqTHmFHicg33KxPCRAydFI0yWX0QMWqpXt9AoeZDbSA+ynwm4=
=qDmD
-----END PGP SIGNATURE-----

--vmzbBU6mMNdKljF4--
