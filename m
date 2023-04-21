Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0100F6EA919
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231249AbjDUL0k (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:26:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229709AbjDUL0j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:26:39 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 614F44ED7
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:26:38 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 50A71664C;
        Fri, 21 Apr 2023 13:26:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1682076396;
        bh=yZG04Bb/41gUZAGLzSISek27c9/Ui5GaDwn9/nfbbV4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=CMM7CXLqFySFXDwX07FxblAXVWl6UJYE8KDr/PxDi8l20XBcymbo3uTrpoZJiEES3
         Y26eqM2vt/brajcAuvd+BdpGzzIlukGtNkh9gyDsLLpZbIlIbpleBx2UYYtIL74at7
         XzKXtj7LKLIt+1ljG0r15qxBXTODTV6cov6bpi4turu2Gp8FCPePGuP2srWdVTlRRy
         530oDyAr8Rxo4WlBnVGF1LGh41cLs1vAm1z0Iy36DO7Gu2R3yLGbv8i/aGOiUtfeVH
         URZOlZxtvPznw621Sx1DIGiA9YAvGKt89PlWi+FtfPnbcuM5YKzvEpuuC2B1FhVPOZ
         M2nOqn3e+ndBA==
Date:   Fri, 21 Apr 2023 13:26:35 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
Message-ID: <2clfytracz7pbsqqw7xvhb24jrcazftogik6zh7wcpaxa6oxzl@naacxs6ujend>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com>
 <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nnpvmshogay22kr5"
Content-Disposition: inline
In-Reply-To: <d4567f56-2061-385e-fd32-472b1e5b1b23@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nnpvmshogay22kr5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 21, 2023 at 12:34:39PM +0200, Alejandro Colomar wrote:
> But I haven't pushed, so that we can still have it in the same
> patch if you confirm.
Yeah, go on.

--nnpvmshogay22kr5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmRCcugACgkQvP0LAY0m
WPGQ1g/+MdzR8ckYkKgYuEzhz72z/qn7n9mFDxQMpP4VP/SOTn5OmyhgxBGpMxbL
YZSilNJVrlPEma0Uc9FWZirqUjWHgN6+qQwLHcvamUbMcTjKG2BZqpCkOQY13eY3
kNxPhXycr4fdQBFckeTeWD1JZ+WKRf5VQfynHWkR6Qlwd/8cZo/wkkuqdL2TPo37
bWOkV0BVbozoam3mzrGtXgQyvBaRz1yq2uW0Nr+PxpOQAwJPLl8YOSu0zoAzlgSR
D79yzhoh8cFCQMi7iKJ+9i8idfZjxPyhjSnh5X+uJQyChJgYKfgYCCS9DRM6KmFQ
W78Gx3x0Iinoo6i69tHxlh5rrHHTVyECGjxSUawChasCqab8CIzkGXMi3fnKPDEl
+U2Prkf3UcHsxtabAHelNMVh35BFNEVBCnhYGLFObt6CPDf77sk7CqLtmg4uu0RE
ErDs1lnLnjOW01nUlnalDf8uQ0jbzYHLSwkgCgAYNaYF0lCDbCUd7MQLI4O86qY8
F7gOp7MyKJTiPMrOeHHOIzdMSNdJossbWyi8MyTvhBtLW5I+13esSKp/UqqaB7C9
IqkxjzblG8FUqP7h5KJV0rVESqaHfn0r3N34s4igPMwTQ3YaAj/IJ/v9yOcWYFfi
sqxg24snPoLt1r5ureTuF9KStWai83Op+w4oYH7ZHVt2HmiYybQ=
=KfXc
-----END PGP SIGNATURE-----

--nnpvmshogay22kr5--
