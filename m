Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B4637C9712
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 00:38:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230217AbjJNWiT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Oct 2023 18:38:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229735AbjJNWiS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Oct 2023 18:38:18 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CC16C9
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 15:38:15 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7390AC433C7;
        Sat, 14 Oct 2023 22:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697323095;
        bh=lm4okOk6+FgtD9y2SdCDseko5KXFeowuTLJ/plS0SpQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=in5CkQUR4bOBWP3lgYhdInNth5x34dKcRmV3uKrvEUnPK7MERzyOVfMazdj944BVv
         /CvFN7MSYhYZLPbrhhuONfnShqRZVy88to8bUCZrdVwIP9FS+RGXJUYnK34aq8cvUX
         wHHJd+vUU0+T/V0Uy5OEww66fgBdsa6xy6vMrQjUsPUIzqirP11AiMDcWd0dHtam5F
         PwHffIDaQ7M6LNCbVG/HSsDesax9SmHj9pm2/xVFJ07xNAHWSo/i38kFXjlwSPU9pO
         ZEQL0ArCuaR+8pSvQUOAC82qIQv2HM0UY88sPJ84GRhvtEC6e4CUiJH+BVaAh90oNb
         KKWwGUZHe7ATQ==
Date:   Sun, 15 Oct 2023 00:38:11 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v7 1/4] smartpqi: update host attribute descriptions
Message-ID: <ZSsYVEvuKhoLuqNY@debian>
References: <20231011190024.42728-1-don.brace@microchip.com>
 <20231011190024.42728-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="70C2VX1ifxdMSUm3"
Content-Disposition: inline
In-Reply-To: <20231011190024.42728-2-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--70C2VX1ifxdMSUm3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 15 Oct 2023 00:38:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7 1/4] smartpqi: update host attribute descriptions

Hi Don,

On Wed, Oct 11, 2023 at 02:00:21PM -0500, Don Brace wrote:
> Minor description changes for host attributes.
>=20
> Just some small changes to the host attribute descriptions.
> Remove the "version" sysfs entry. This entry was changed
> to two sysfs entries: driver_version and firmware_version.

Please update the commit message to match the diff.  Especially,
it would be interesting an explanation of why volume is more appropriate
than drive.

Thanks,
Alex

>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 393545d3728d..1e5b6d76f548 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -138,12 +138,12 @@ The host
>  attribute is a write-only attribute.
>  Writing to this attribute will cause the driver to scan for new,
>  changed, or removed devices (e.g., hot-plugged tape drives, or newly
> -configured or deleted logical drives) and notify the SCSI mid-layer of
> +configured or deleted logical volumes) and notify the SCSI mid-layer of
>  any changes detected.
>  Usually this action is triggered automatically by configuration
>  changes, so the user should not normally have to write to this file.
>  Doing so may be useful when hot-plugging devices such as tape drives or
> -entire storage boxes containing pre-configured logical drives.
> +entire storage boxes containing pre-configured logical volumes.
>  .TP
>  .IR /sys/class/scsi_host/host * /version
>  The host
> --=20
> 2.42.0.345.gaab89be2eb
>=20

--=20
<https://www.alejandro-colomar.es/>

--70C2VX1ifxdMSUm3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUrGFMACgkQnowa+77/
2zLtKg//RoPft8k7VCAvv6lElK6N/t03b/FO8zZ62isO7T7mVi8cPKeqQiFmCiWI
38DgjKEEHpiKiH/za8qwkUL98EDDXMiB36Wf9vXRUcnXnJxyZiYGzy2tk+5FleVp
gLOCjgrCNsZT8DDm1V3yjQUoIi+vKPEzNE03JkFkt6dyZWN+G1nHqk/xGBeKXYqP
Lkhk1XbfF36cCP6R0eLBb+2WoPYyUDrT4K9Y0eIOQ+5HjdXqt88DFsEnJwZmJqJL
eSU3uUtvgB0Pm6Nk1Fc13NfpLQU2FJKQofgde56Cgm3JOT0nPIVKjnmXlZvK33J7
DUHiUeUiTB59UiiMwacUhRHaA5+KjWd9csqdJDtgqdq4UV0w+DrxvebbNgMbBHPO
f8koiR3GdXTnhZ0lgx+avu8aA3mENSWd/yRDQimYWyKy2cz7Iz8e1kuD+hZNnCYG
ov0cq7LeCNSAplykkeX1+mABJlS1YrHqBt/TSJAU3/ZAwfA8InDVklYQhjxnoPD3
GopMV/PBV4ktO/pQ1AegbwyqU6g1zytqmrIwu4hjJw0lC5K9W5YOahVqOnRYs/ny
SqWE20FpzyzYJOzDG3aDMKaFYKQ0/OyKFRPOxjX1SwW+zzWe/iY33FMtW4fnQXeY
ehAHg91jLvhS+0VQsfxtUuCDXA0+rMmvYn2sTCflIIwyegkniaw=
=iWcN
-----END PGP SIGNATURE-----

--70C2VX1ifxdMSUm3--
