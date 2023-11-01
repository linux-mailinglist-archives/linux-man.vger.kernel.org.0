Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E254B7DE4FF
	for <lists+linux-man@lfdr.de>; Wed,  1 Nov 2023 18:06:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231233AbjKARGl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 1 Nov 2023 13:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233707AbjKARGl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 1 Nov 2023 13:06:41 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0F6111
        for <linux-man@vger.kernel.org>; Wed,  1 Nov 2023 10:06:35 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2E33C433C7;
        Wed,  1 Nov 2023 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698858394;
        bh=+8FkbHZfJQKOS5K9SeYsMMeOifDsI+QwqYQh5/uz7kY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tZE0CwAeExxS1cixX5fqe9xTDXSg5YChl5fEj0mGfwcZuZRtPyqLOOf4vRFJb0M1t
         aZP21LxI7M4CLeP0o035i1U31Cf2SIETnA/CXiZvbX2bPz8yIbd7S4EJ+GKXyzDXLV
         Q3vL0eSPkhj7qiz4GhKdDl9MedT7iFPMP8bcEz+Lv+SMjO00wzUDeu4bKOcavComny
         uuMAuAZyhcYw43MTuVB1Z1B9j0AhDHhLbRa1XrO7LGz+J6yvpC1V4d46pVwUcjSfUI
         e7+uRQGk7jZhobVmhvSZvHTvcwVF55aklJnOHZ4Jve47YMLJpb/uiwgfsCps7PP6JP
         fkIgDgXMMA7ig==
Date:   Wed, 1 Nov 2023 18:06:31 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <ZUKFl6ylEBOv_uNQ@debian>
References: <ZUJaY1wRIqZXKjpA@meinfjell.helgefjelltest.de>
 <ZUJ1VK9_7tBuMBBg@debian>
 <20231101162310.u4b46gii47yjhsgt@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sbsveafBztRgTl+c"
Content-Disposition: inline
In-Reply-To: <20231101162310.u4b46gii47yjhsgt@jwilk.net>
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sbsveafBztRgTl+c
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 1 Nov 2023 18:06:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Helge Kreutzmann <debian@helgefjell.de>,
	Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7

On Wed, Nov 01, 2023 at 05:23:10PM +0100, Jakub Wilk wrote:
> * Alejandro Colomar <alx@kernel.org>, 2023-11-01 16:57:
> > On Wed, Nov 01, 2023 at 02:02:11PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    mount point =E2=86=92 mount ?
> >=20
> > I'm not sure that improves significantly.  Is there any difference
> > between a 'mount' and a 'mount point'?
>=20
> We discussed it last year:
> https://lore.kernel.org/linux-man/20221205123809.5p66jmpalhd4bhoq@jwilk.n=
et/

Hi Jakub!

Thanks for reminding of that exact message.  I don't feel qualified to
edit that paragraph.  If anyone else want to review the change, feel
invited.

Thanks,
Alex

>=20
> --=20
> Jakub Wilk

--=20
<https://www.alejandro-colomar.es/>

--sbsveafBztRgTl+c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVChZcACgkQnowa+77/
2zKzjw//alD80bj6ioukTEKweFUTDHOK8KErrtx8zovG6zbbwPwLxbb/ml5tvJgC
JuUbbX1bothOKUIdGaBsO0hlpW578i1OBXMuMimJ504m35GoPiX2lk9DeTDlwLCl
Gwj5PFNUP6Dl0F8ui1r7fQvbemvBBjue+sLbGItbmUqeYXjIJVYNgcFUtIXkGdOt
i2TPnp8cSsSXO1y+UMD56nkKd/iVRMirpNfeTptIFV07jXl3Dfooljcd9iLffYWh
SciKth5Mg56bq+xHoeZumdnuZ9ZSQANqNo6f5RYT+3ztXQphHF+wv8Ni89Oj6r0w
zLHSq0YT9cNAcbWVpGVH9pxjkXpcCC+zU6oDzMl8xx0Cnoo4kPXeuC4XqzNlICGs
KgLmF1HTZppqGMCThQGJg7ttixkuhPExqz/Ki2cJHwdrUvDlo83TiFke5slOPynM
CWYMouO45xCRg5XY2ihIz1SzYWdAQPth1scqrh1xVlRusfrQi3V3UcNBoCYsPx6D
f1bfOjO8f9sBZeca1bxjNw2j1DLQkvyVEFC7DouKgOb2dh8mLZcJv5L/OcG9TiFM
mPrggGywDsBu+5o7cDWiuaCa4mA1EBhvsMeXf5CwjHzBA5u39zBqkGEoTKWT4WcA
Br5lP3XYtoIIRPNFcxnf/aUU0SUzLGk4BuO7x4R/IMpeDJMrwtY=
=R7We
-----END PGP SIGNATURE-----

--sbsveafBztRgTl+c--
