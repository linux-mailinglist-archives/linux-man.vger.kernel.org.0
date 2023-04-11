Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B7FF6DDE18
	for <lists+linux-man@lfdr.de>; Tue, 11 Apr 2023 16:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229924AbjDKOgu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Apr 2023 10:36:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjDKOgt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Apr 2023 10:36:49 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 30D6A40F6
        for <linux-man@vger.kernel.org>; Tue, 11 Apr 2023 07:36:47 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 43AE55856;
        Tue, 11 Apr 2023 16:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681223805;
        bh=zCWtfaiI3X6qqO4LyIAB+S5cELNQQV1wFzlvwf/r4OA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=U78Cp+xsn42MheXMxyuBk4P7qzc0TSeGP3Ob6SX/w+Y/tj5kqPhbnp6N6oHSzdxlF
         0ejiKIDEHqFdZQ9blvWsOjDGVWiSh65vjx27liY/M96Z/Q+cCxsJExgP5OvNhPZJ1R
         kSt8xxQ7R3TpqgkqDoaxAOIA9RPITwJJkF4nG1x2Fam0lMAUUSkkgrZKQIbrZ0CLHm
         5Ia9uz0REaxdnvidhy/P5fQ86hV9blRejg1y+n5qtLuGqOW1V2SZ7yCd8m/y4Jnim/
         8+J7a1P9wjFkyHSd4XBcnJDzBeLf72y3zSVPlENq3J5eUH2MjMyvefQzbGGVJjbs81
         ZPKc5j9gR0UHg==
Date:   Tue, 11 Apr 2023 16:36:44 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] fts.3: note fts_open() behaviour with empty strings
Message-ID: <6b2aayvsqkphaiabg6aqjvdhxyy3apyiws3nhj37rh7gmy4bbg@ms7uynznrtnj>
References: <5pllbtzrjd5qpzjirtmritpk3it4whf43fnigbv3vqfkgwov2u@xk5dulph2uzk>
 <5aac8abb-9c56-e483-2cfa-9cb2615cd738@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rh7bmv7ynll3aefo"
Content-Disposition: inline
In-Reply-To: <5aac8abb-9c56-e483-2cfa-9cb2615cd738@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rh7bmv7ynll3aefo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Tue, Apr 11, 2023 at 04:22:09PM +0200, Alejandro Colomar wrote:
> Btw, while you're at it, could you confirm if the nullability (_Nullable)
> of the documented funtion prototypes is correct?  I never used those
> functions.
The only valid null pointer is compar in fts_open(),
which appears to already be documented in running text;
all others must point to valid objects.

Best,
=D0=BD=D0=B0=D0=B1

--rh7bmv7ynll3aefo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQ1cHkACgkQvP0LAY0m
WPGuNg/9FFzvKGcEv4NWyewBYC5hzLPhenYfrPaeElLshfSSVbh/wN/PKyId797H
aT8Pf3EB1AbVpROwGcXUJsupLBOmp/xtGEx+1FAp2cSV23f1m6GFzJswB8gtRur0
81UtbH20dEq2k/UJTSouipnBoGkafIwyejEpbDfjdoeZa3fySO659zX+OktpVDch
58uJBAWbmN9j7VeyW2mclbAL/v8yBPm0lidpm0D2vz1B9NY+NR5cyjzdWTykP633
qGnQEtmLZ46/ApFERfudNJL7tWmL/jUsvCpei7tZ1ZsmjilTK04+KQBkptVRJhss
wyoe/M4M/JheiX2k1tTme7hlN0/FYwxZiKfwlYNGODsFvIDUo24VTLgz0G1IbvIo
324yT9zriHrc0k/d9rjyDqT+Klfix8ialLPoYWNqhsNzZWYBtzOf4dGLMXtqZ9Li
1jyKUNuAqT5H6tca+RKs3vAwQm7rufWD0T9gLfTsIyerDR9X9AcUnAsy02JPWO3J
k+RTZlmKfWEdHkLIqGkA1UDnzoUz/H3Ef0U4aP1SiGjwuBNjJWfFMNxl4taPaZNd
afELfONWxwRKtaebXrKgZ2GpuxYYsxJ/dKS8pRe9GBymW6z1RVdSD/Gvg4rOB+OX
nGvC4BHoTTqyz8/VrIQVPj5a9PrMdIffz0G82UZOdkp4pFLTg7c=
=1LaL
-----END PGP SIGNATURE-----

--rh7bmv7ynll3aefo--
