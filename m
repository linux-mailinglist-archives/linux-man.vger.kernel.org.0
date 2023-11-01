Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 368E07DE474
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 17:17:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbjKAQRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 12:17:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233387AbjKAQRv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 12:17:51 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6203910F
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 09:17:46 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37070C433C7;
        Wed,  1 Nov 2023 16:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698855466;
        bh=DBJpkewvmh/7Ctt0rga8xdi+km6iiN7Fbhf1Yj8qWlk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BwptVOdJ9nCAmQPd3Xyl+wOC6Z3BYwCKR9T3QQFmgQoR8QKq3Q3T9TwUrBrI1itWR
         Q8SBi9nfn67mRzu3yewkDwoCpG+ZslenwtxuZR9lVTDM1RSm1Ifa+G0LO4SisEXoCT
         DxnLB/VQqAED4ogzfGn+Jw8Kk9KGvdBsXu7PzwNj48WwNZc50V5qbhLNyOf+S0FwUd
         xkX6sqvPEjyj0/qzWX0s1aWRX5bOJCReP0N6OxIMy4v6t4gH+FiVJVFBomvWbCrVsa
         1pevPlOn/cyDzBJZ84PilvgpLWQ2vZ6WL5pV4WNPup18gvROdDT6ofMgu3HF2m4I8L
         1PKSIBGn5lgKA==
Date:   Wed, 1 Nov 2023 17:17:42 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3
Message-ID: <ZUJ6JnryG7BnDf5P@debian>
References: <ZUJaZJzhUkuDV_Fs@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tSFCfhNfc9YpFUfm"
Content-Disposition: inline
In-Reply-To: <ZUJaZJzhUkuDV_Fs@meinfjell.helgefjelltest.de>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tSFCfhNfc9YpFUfm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 17:17:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page adjtime.3

Hi Helge,

On Wed, Nov 01, 2023 at 02:02:12PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    that can =E2=86=92 that could

I'm not native, so I'll leave this one in case someone reading the list
wants to say something.

Thanks,
Alex

>=20
> "The adjustment that B<adjtime>()  makes to the clock is carried out in s=
uch "
> "a manner that the clock is always monotonically increasing.  Using "
> "B<adjtime>()  to adjust the time prevents the problems that can be cause=
d "
> "for certain applications (e.g., B<make>(1))  by abrupt positive or negat=
ive "
> "jumps in the system time."

--=20
<https://www.alejandro-colomar.es/>

--tSFCfhNfc9YpFUfm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVCeiYACgkQnowa+77/
2zLEzw/+M0n6h3H68ru7lEDgiPLsSMiUd5X2sXRCbWFdg1SnzWogsIbZu1S7LljV
NJ3X0ofHmtgDmd40i1snglDY6bVVJu4jlagoW7RNgc09PDC0gPKv/NtdG2g4aK7w
RhBAmIKSL6GUum0Tm88mol5HZE44l36US8ZUMXTJN8dpKoauft/BtPq77Ubu0hmf
WkI4v1MRB509Ej4EcWtGcda9F/kDRmmXprw3IPJ4X9JIV0/eklt0/Hh+mUoAxe5R
kTobwO1d3NFPumZUkZ0kEvOs+s3BkeEJSC4uT3PLre9TtbO9fSQxnUnIgqNN8HUh
CZquJRHmIruqivC26DU0FAf9tXWkzKArNKMhX9ejPLZW8COl0L93LyxIxhP9bCVo
SFg8oYiMzClOPDPyDURb3ae5If9E7CICujrUq0lnZFzBzkIJo8qaTBeNUzxGNAtZ
g2i8IF2lYZeqj4kCnfeRCyfhyO8kBsZo7gnglylL5+PONdFBCSeuOHYh8ZJVDmMu
1cOHHyKsYLUK0/pFVbIUa0JisaPjmXH2U5AUBKTfPrGN49tceHBBYt91PimNWqEg
LIiRDDMv/G4qdR7VMJB24oOkkDI2z2+zVRs8D6YLI55U9+bmqS03bCJua2kIz+zL
E1vfV2kdQZ5hIyDc917Ydjthqp21BbDwxvIECS4dbBdioVah7YI=
=5XLU
-----END PGP SIGNATURE-----

--tSFCfhNfc9YpFUfm--
