Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 841247DE406
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 16:47:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233074AbjKAPl3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 11:41:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232759AbjKAPl2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 11:41:28 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04DC5A6
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 08:41:23 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3DECC433C8;
        Wed,  1 Nov 2023 15:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698853282;
        bh=LdXVQwtBPu8ttfd/TPvn1DnIUsq0iu+YQPXR4I0Ic4k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MkHvtE+sDiBm7vWNBmK+CJOqLHdRzBd0es8b3EHdvvWo0PAUOnKBUHDNSBRmoFqyW
         nAI87MP0/PAgQfUkOTB51uDw2i0IPGhIHgi8fd/PEFBNU75FZyAyc3QpZcHL3Kju30
         Y/o2x6S+mQZ75mZVHs4YN/YS6xLoV3eMMEmJUGjGo9k7CDNNwJDk6WyJvhScUkuKiJ
         wtAeQlfGzTpRuBd/xM813udI0gcMtcr+RHqdACLgiLPMNiMnsoYRaTPanly+KY6I1L
         ggmdssupCI94+pU/vyERtFFVaKGjUPcqBvvfHnauOiLSVCYFT6+BzYfYrKZaPU3t/h
         flssR4woEXRZQ==
Date:   Wed, 1 Nov 2023 16:41:19 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7
Message-ID: <ZUJxn0JHxBasvKGf@debian>
References: <ZUJaY9YthI-EXLzi@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="UXwSZImtiQnDfMjc"
Content-Disposition: inline
In-Reply-To: <ZUJaY9YthI-EXLzi@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--UXwSZImtiQnDfMjc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 16:41:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page hostname.7

On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<nsswitch.conf> =E2=86=92 I<nsswitch.conf>

Please explain why.

Thanks,
Alex

>=20
> "Hostnames are resolved by the NSS framework in glibc according to the "
> "B<hosts> configuration in B<nsswitch.conf>.  The DNS-based name resolver=
 (in "
> "the B<dns> NSS service module) resolves them in the following fashion."

--=20
<https://www.alejandro-colomar.es/>

--UXwSZImtiQnDfMjc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCcZ8ACgkQnowa+77/
2zKtgw//UFRhBsZ2BuewnpFX6KQNv8j2kqnbyyTUlgZOxO4uFBUgPgi77abMkvtT
FEO6TKabsS2JNf6ZY2isVtvgKW6Mk9EYDZUw8/TqD9uOcmqC7HL83BQw8qroxRi5
yiUGOrNSs9XaaDEWRRri9B8Cq3xXVFgLOd6KqPloAM7HNYNu/MPgAS8qz3bw/mbJ
WhEleznPYuu7Yrbrle7EY9k5nb2SPuNlZpAr+UW6nbDjDt4FJL7OfWPZvsTneSXw
xJFJD8l4PahmTeZmOaPQ73OK32llxgHRWOFwWoiqaQZyFW8jc492lfAJ0Y4abnut
pXz8Bn3Acr7uM9p1i6zV/qr+zpYW+SXSeUyQ4xhKzfp7FnYrc03fM9AJJBctqCyt
w+dZ+AQJdz+Y9I0cisdlBmUoNgBsBKVaxorU+eKzjiHUcBmFzSb8sdFRiy8u/dZR
z5C34XXFysExOQY2dVgos+w9plw6kfvNVjdKWKFY9giU/RNINGCQuGWTO5dWzmKd
NmQhnAaZODVSBX7SbjlBhbFLizaZJ7bsaoaGBE9ZoWywzO08ezSpMBhcUi3KCGZm
X4JZ43PJKnbLvitFoJliMkN9FjLqgQzPXPBg1mSUTZb6rsZXS21j6rbx+Csg7i2l
RKaozJSThdMXLMyY4yvrHJxYjhYY0kDWyPmqkZ98quUjhdPBX/g=
=eEJi
-----END PGP SIGNATURE-----

--UXwSZImtiQnDfMjc--
