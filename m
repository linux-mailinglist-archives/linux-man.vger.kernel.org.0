Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59E197BD0F5
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 00:38:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344437AbjJHWh7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 18:37:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344862AbjJHWh6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 18:37:58 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3444AB
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 15:37:57 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B33C6C433C8;
        Sun,  8 Oct 2023 22:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696804677;
        bh=r8nW5XUEpEVuoIRUFQ0nXyERwYgi0UOultCRR7rxMkU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=WbmJ5b2WNRgA6nE9mPYYnm8pKaL243c+J2bHaD+OYRaeTtd39XI5p8QgvKGPihJgL
         rFl9ICc1nTBoY+omV2AsVYNxDx5FlZeBB7+h5kGeYKuD/hIdXV1x6i86Zgfk8ZCvB5
         GLeiCI4ninC8FGnfqcl8Fhx22Dlw0nVGEqhlVTLoW0ngOo0IiLZjBHrYpiGEDkgiWC
         KO9S0naP9kaDfNL7BghyRxfaqvZcdfsZmmCmLWrlETyxf6vWyc/7AtBMaJcnNzpoKd
         hfmmqmNkVuJeqPHOW5mRq8rVUA9Y1auxfxP87iP/aXr4z14uxp+ApD8+dUkiQvPFxT
         GjOfs4EM0/mKw==
Date:   Mon, 9 Oct 2023 00:37:54 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6 2/6] smartpqi: update FILES section
Message-ID: <ZSMvQpA6DecUQfdT@debian>
References: <20231003195439.253129-1-don.brace@microchip.com>
 <20231003195439.253129-3-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="a37AdSVn2GoPOow5"
Content-Disposition: inline
In-Reply-To: <20231003195439.253129-3-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--a37AdSVn2GoPOow5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 9 Oct 2023 00:37:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v6 2/6] smartpqi: update FILES section

Hi Don,

On Tue, Oct 03, 2023 at 02:54:35PM -0500, Don Brace wrote:
> Minor description changes for Device nodes.
>=20
> Change "Logical drives" to "Disk drives".
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Patch applied.  Thanks.  I've reworded the commit message to:

smartpqi.4: FILES: Change "Logical drives" to "Disk drives" for /dev/sd*.

Cheers,
Alex

> ---
>  man4/smartpqi.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index e12d82296108..92bc5402b866 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -116,7 +116,7 @@ The valid range is 0 or [30, 1800]. The default value=
 is 0,
>  which causes the driver to use a timeout of 180 seconds.
>  .SH FILES
>  .SS Device nodes
> -Logical drives are accessed via the SCSI disk driver
> +Disk drives are accessed via the SCSI disk driver
>  .RI ( sd ),
>  tape drives via the SCSI tape driver
>  .RI ( st ),
> --=20
> 2.42.0.296.g493f462273
>=20

--=20
<https://www.alejandro-colomar.es/>

--a37AdSVn2GoPOow5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjL0IACgkQnowa+77/
2zLo7g//XCIm+w4dY1LxDGEvUF9F9b5rhgEItzgGxNjkrFgENlB6EGL4dg1+MIKg
9ExN99hN5nXgG4beLaWZTj5/yxM/k/5Vm1I0Y8SOM5PXedLEecL4vsDGC6ZuJ00H
zgxi7F+T+iB/oeXgnFDwEic/jF6b2G7Q8jGhn8rbXejR0jyXfc/uHNypobebfHY4
g39AialqodXJtbP6GqyC4Te+j29CtHKYjDFrtRyRv560BH3vTvkaP6JTVTj/5Oc0
byFktlMzguWRxNP2At3pmN+fyFMkj8WrBaIQjI6LX2DFRy3xIZ4Raz2GVCqJdchc
JmJRyDdm2FUNLT2Q39zoMvgJesbbyZS613ci0dyXlLhdqKiezcXjE3Ya8Na8GhJ6
vUT3L8wpHhsMinvFfxerwZpDz4tcylCneQ65Dlp1IcqRxQDnC209xKS6YshlQWf1
aEDDh1Ompv1OKR59XlvfaKMh4QyH9KwZP1M9uZZM9NwF9bjARjqSaRDzwDGHDCt5
4+qlKFkvDCuGjkPbmv6w6++BX6My0sUqvzLSDBsAxFEreU8VVoF04siBmNFaj0IY
Uyz0EhrjXrrYCL/+gvI/zEUAN7jj6+GzOiSFrtAvPdmQRyybAqfjeGCA70stLNvL
BoVEbLxTCGDRvfZj5gqtycDkarsp+WjtG/gt4miblFHBH+MTg90=
=OyRt
-----END PGP SIGNATURE-----

--a37AdSVn2GoPOow5--
