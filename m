Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36D517DE497
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:29:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231233AbjKAQ3w (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:29:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229731AbjKAQ3v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:29:51 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20814FD
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:29:46 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B979EC433C7;
        Wed,  1 Nov 2023 16:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698856185;
        bh=Jx8hn5V2CCLm30YivhQbPJNTARo7jCQPUgoJU7Fiif8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KnG3TTlaElPOQu9Z7LWpwZH75H0xyZfSCrnhXj9d9CYHC4L7iKt4Ns0Fpddqv3YQg
         kv4uhj+sxBC/mvqyE7BxPQYFgyB2jkYLwDU7G2IsihNTCOnGYflybSrVjrmtOmPSDJ
         dQCAnFXiYCrau0AuWIHp7QIp8YiHg8uZETSUgAYJDNdzhNddLXJVx/tQg6c5X+nnNX
         c5RI9XrvG0Gs4yaorMyATXsG8iAOKH7ciHynfHiNEQr6fi9s8zvI4KgqMXKZr/UIuJ
         HRGZEexFVq7DA8ft1lXTPIj5u0bO/FxSuz9tFxgEeA6nM/TuHPRsFHwd78hsbwbdZB
         vtXrq8NlteKNA==
Date:   Wed, 1 Nov 2023 17:29:42 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
Message-ID: <ZUJ89uYwC1xjkGIT@debian>
References: <ZUJaZK1LFGI9RA47@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="W1vkYZGhbswIOulW"
Content-Disposition: inline
In-Reply-To: <ZUJaZK1LFGI9RA47@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--W1vkYZGhbswIOulW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:29:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    kernel Linux =E2=86=92 Linux

Fixed: <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.=
git/commit/?h=3Dcontrib&id=3D43fa7ba506ff46c76d2632ca6a3ff32446c12220>

Thanks,
Alex

>=20
> "Where a system call is marked \"2.2\" this means the system call probabl=
y "
> "appeared in a Linux 2.1.x kernel version, and first appeared in a stable=
 "
> "kernel with Linux 2.2.0.  (Development of the Linux 2.2 kernel was initi=
ated "
> "from a branch of kernel Linux 2.0.21 via the Linux 2.1.x unstable kernel=
 "
> "series.)"

--=20
<https://www.alejandro-colomar.es/>

--W1vkYZGhbswIOulW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCfPYACgkQnowa+77/
2zJsHQ//Q/39YHwNLGEtqUxRQCaZ7piGEQVrfcp1Dt/jnNNPmAMbY5lcPVGQcrjR
rtYPgoF6/1GuIekD4tlvmbVwP9K+ukLDE6XIV8gye6Q7IUYLuxlHPYlKOIxTFVhx
t4hBQVgPGoeGIq5Xw6w790xBHsIFtQWPirM0pWXn1ewS2K1172mrw9hrePgAQdC6
J+eD5yJIEVcW8SvlcRw5goo0XamyVZWrQgRTGqTbjKcXeCNsY/bzcVwgpeLHt+cA
CJ9KXz4UMqi6c+vk9BL0daeuSi4ttJHaZYgNPJCAEJQjKjRqP08S8W/I8GcdCGQg
lxgskGyJuzQO33w6ekQBr0mSWOjuqLxiIrFuvrJMZlIGAZr1luxKLqaCmnitCZ0/
KJGYWgDomVQ3NwUn5W7L1dhIigG3j/UmdoJdCAMeTRujlme/LP7KDVPBre+qZWiA
X1PApCYESpLUVTZJMpT8sXIaUGiKjlN2TMQ0kbmH1yeT/DhuDy/KjZAu56p+4c9B
OruO5MVVU2YW5K/E05QNnTT2hmpjdRS5CNBM0keMdFSkDLGTEh/DsknEUI3O/8Mx
4M37Ojh1p/bB8qt9ClOqyn9ThWI7cEm4GLVlXavfG6UDBL7GoGYMRe9HzekFT7GZ
ep3qdYQSaDbCoI8l1rBgNwukY8PWUVNVy/N1dQ5ceUHAAgu+i7Y=
=QwJu
-----END PGP SIGNATURE-----

--W1vkYZGhbswIOulW--
