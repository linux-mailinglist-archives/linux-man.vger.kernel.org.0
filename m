Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C60B57B3CF3
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjI2XWp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:22:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjI2XWo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:22:44 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEED6F3
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:22:41 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2B30C433C7;
        Fri, 29 Sep 2023 23:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696029761;
        bh=aXBKcLi+gZ+j0VqM9iLjiG4qaWXIxqNd27rJVL6qIk0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=INnru2ffyFcdGMnKtxRAN9TbyWJsEyM4KEZyQ1V4m75KWSv8iLm8mvk12FyObglFs
         2GZb7HVK4SDJLdhGzQnnrbpYfe0CAt9nqXY8YVr6+Vkm6/udRkxilHyMu2yQerG5gI
         EM5yIRYPvKuy+rzaqryKwdeafT4gRlJasJefsZSkZOu+trsRDv2bf1VV20r2ADAsWq
         FTISsth0xB28BtxzfMHjy+aJsQlsaQ37P2L6VsP8iWH0c5sqJkoCeq4hLCRmvoM0sF
         9Npnj0iv7D7fdOYL1IStFh8raZOpk5oc/G24ZHXCqGnMgA0K6Cd68cKiZkGH+lAdGH
         mJTKkEKCtR2+A==
Date:   Sat, 30 Sep 2023 01:22:38 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 10/10] smartpqi: add sg entry to see_also
Message-ID: <x3s4vuua35kdllvt2ikuqlgk75grvl4miwc4opo67ki5svoxxq@ln5nnupow4p2>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-11-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="zprajkjtuhgtemje"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-11-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zprajkjtuhgtemje
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 10/10] smartpqi: add sg entry to see_also
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:12:05PM -0500, Don Brace wrote:
> The sg driver can interface with smartpqi. Add
> this into the SEE ALSO section of the man page.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

This patch doesn't apply.  Please rebase.

Thanks,
Alex

> ---
>  man4/smartpqi.4 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 3de8b0c97423..7c1da3c80d57 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -462,7 +462,8 @@ which can be found by searching for the specific cont=
roller at
>  .BR cciss (4),
>  .BR hpsa (4),
>  .BR sd (4),
> -.BR st (4)
> +.BR st (4),
> +.BR sg (4)
>  .PP
>  .I Documentation/ABI/testing/sysfs\-bus\-pci\-devices\-cciss
>  in the Linux kernel source tree.
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--zprajkjtuhgtemje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXXD4ACgkQnowa+77/
2zKH4g/+IffwLTDkdN0fCP8t60Jo8pHDjpeFId5sKWGFByjahblagh9CrsnfNMm5
6hHXQ5FkWug8FCCeCWxV+/+UWiOg9X4xQlO/SWIT2I7TrxVUJxPyuj1OGKT7nO1T
J0wGfcXI+hBayF2JnivCeSdCG3BD0G3xdAvumtaNo1LqCYbm9Ex3brBU0nndNrho
pWN8CiGUa05CF6W8Hi8mZDjkZlsINvAVICGLhuLKyss5gRjsZ/hgAJay+zAmUxML
dGAoyN5tOINK0OAmXw9OQnOTeasLm5xIEL9IlKYDZ1IoStWpvxxzYyrB2pHbeM/K
r3JfpMBQAbARClUFwuo34CCStMzbNgNyS0DNsqupIgwHND5T0aSD9wXV9rjGI9bU
MUUlbilOIABIbBDbHnUX6ZmPwGdmXyorVsI/K8FaNqsKle/Hl4sviMltFaXIMuNW
kjpSwUIh7e4luXeSDDt6bnl8XBStX5Q3RSTa5sSXyzmoZi+Do/gwANgkk9S1R6Mj
vyKoMBjprhNgZvabXMq7iEbgtVSTlkk2eKQYDmv6xEAhqORZJ5jpQ6pgSoNjOIbS
F05lNc19O33Z4WJ9D+sMkuAsLSDUBuXtQJ4NyzEJ4HC7/HyT8ccVLeLToN/N+QC1
WTTe44hLdH/net/IefQBbvLUfP4ef/JjZt0a4dMbj5ur5EX148g=
=vSQv
-----END PGP SIGNATURE-----

--zprajkjtuhgtemje--
