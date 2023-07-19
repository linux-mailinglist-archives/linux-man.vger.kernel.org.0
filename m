Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AC21759F2B
	for <lists+linux-man@lfdr.de>; Wed, 19 Jul 2023 22:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbjGSUBl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 Jul 2023 16:01:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229853AbjGSUBk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 19 Jul 2023 16:01:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8849F189
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 13:01:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 20CFA617F7
        for <linux-man@vger.kernel.org>; Wed, 19 Jul 2023 20:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB071C433CC;
        Wed, 19 Jul 2023 20:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689796898;
        bh=22QMm8fIebNz3e6LcpwyE8YvBsZ4b3E+//d8E/+UJag=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=t45Xb5lXi19b0qUo6C5SwN31BUQFjq3AbgagcwVJwCvfzsplswAlcnZpddE+h4Ulu
         VpG0NinLV/3wHqPKb5CRWuEK7PvW2KxLPsk1+5k2YzG19ruDXcmFN4+LPMBTsD4x2k
         Rnei7DP3HOZ9d4bRwZuxvG+cUwfju83PZ5nwjl8m8BV30IoVWnimMGVFqXI2dWNcSz
         QpE2HVqM2YzPK88S6ghzJhvMsoW1hEpvTcs8w9aa3x4qgNMGwPg4wGYuK2kfhLdb80
         0vDiMNSfc848WKWpPinafHYQQRia/2TnNTimGq88GvVq8cbX1PvCTikaU0zSIL1QhP
         0YziPdGlQgsdA==
Message-ID: <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
Date:   Wed, 19 Jul 2023 22:01:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] man-pages(7): Add attributive annotation advice
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230719041832.ulsigsjae42rqh3g@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230719041832.ulsigsjae42rqh3g@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------rhWTVjV0GnGaYT0P7h2qzKyU"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------rhWTVjV0GnGaYT0P7h2qzKyU
Content-Type: multipart/mixed; boundary="------------Bo0Evub7wwMT5PGORbargnsF";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <27b46089-2f83-5025-2f3d-50433b76e36b@kernel.org>
Subject: Re: [PATCH] man-pages(7): Add attributive annotation advice
References: <20230719041832.ulsigsjae42rqh3g@illithid>
In-Reply-To: <20230719041832.ulsigsjae42rqh3g@illithid>

--------------Bo0Evub7wwMT5PGORbargnsF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-19 06:18, G. Branden Robinson wrote:
> From 0e3a24fda10445d6fd92c7dbbfb54106b1284931 Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Sat, 15 Jul 2023 14:54:32 -0500
> Subject: [PATCH] man-pages(7): Add attributive annotation advice
>=20
> Cc: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man7/man-pages.7 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man7/man-pages.7 b/man7/man-pages.7
> index d63f2d8f2..aa39dbfd2 100644
> --- a/man7/man-pages.7
> +++ b/man7/man-pages.7
> @@ -255,6 +255,13 @@ .SS Sections within a manual page
>  Including version information is especially useful to users
>  who are constrained to using older kernel or C library versions
>  (which is typical in embedded systems, for example).
> +.IP
> +When an aspect of an interface requires multiple annotations,
> +such as an applicable architecture,
> +data type,
> +or indication of read-only status,
> +include these before the version information and separate them
> +with semicolons.

I'm now doubting the necessity of this patch.  It's like very
obvious content when you already know what it talks about, and
not very clear until you know what it's talking about.  Maybe
following existing practice is just simpler.

Cheers,
Alex

>  .TP
>  .B OPTIONS
>  A description of the command-line options accepted by a

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------Bo0Evub7wwMT5PGORbargnsF--

--------------rhWTVjV0GnGaYT0P7h2qzKyU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS4QR8ACgkQnowa+77/
2zIYdw//UgL5mXwPxokac5N6NARcZp/NaH9Rrjksxz+xLLhO36iHH+jmQ4z2pAjC
h9o77wZ+qiP/2lEzWzMjVM31d97k2tDSVUDv1nT6gefSE016zYj7w1HDXd0SJWOd
69+sP79xW+gPibulcx2JEn4rzR8cGMYdcUDGC7mLSmlYXtKwkt9M6f0SLyHHoMQT
pqUMKUzsdpXdJwkgjh8+gKXi+LFYfzNhL8QSPuHh2dIc9cqWitBkUkSjIojRm12y
QjL786max+D2dFecXwQd3i2yPjIM+tk/bStJ2wu6RLQWXqr8oeAb9tkino8ab+1J
IzaGbBy3byqQybs7h0Er2TUHY6OyPg7g9bkHvwivCUEIbu+1gE/k4/VBwdkA/G0X
1ec7+R03iHiG4WhHydIw30vF1lcfKLvpl/G4Uv1dPnxP9/KQdumyR8hXxxcB6oCM
x590Robx8hpNRMvzNaLOJ6dmsnrUU5mu/g4VlT0t2LRliCwiTJv2vOyOifu/HiVL
5VNAuH0gmehwtfKzf83cvih7t7289pHlbzQ52IRS6zrqQpNFHuvHaX0rdTx88q7d
H0+Vd6tkhojgS5PxyuKJG90gKoYSTmRyHO3nB/ddPoRi+McIVsmE6C5cU4fZZ2vF
1wGzc74zsvL1XHbbvRm0oR6fBX9ew8xedOhW8oZZ6AU9Q7mphTg=
=5tPo
-----END PGP SIGNATURE-----

--------------rhWTVjV0GnGaYT0P7h2qzKyU--
