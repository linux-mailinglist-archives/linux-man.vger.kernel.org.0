Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83D7E7BD0F8
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 00:41:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344884AbjJHWle (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 18:41:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344437AbjJHWle (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 18:41:34 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87950A6
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 15:41:32 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89DFFC433C8;
        Sun,  8 Oct 2023 22:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696804892;
        bh=06tB334npMDSJ3B0NL4pZl9zoW8uF/GpG/AQc00bwQM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=BYo+Xxlu0BQrRiMHWn8Z8uk+l9FWAa7ocqU6N6LOyCjBg3/NLZTZbm4oMmOa0rPOW
         k4vAAOOV8fNq/Uayls2wgOFtzmaBSfuQeyJN6Yhpg3wAKKRkRD1NX6rv3MNV4VrF0W
         86sLM0uv1n69+UAnvbjRHTAgjpJADHrW+HMS3o4UJ0d9IRzA0oPZ+6GVLVNYFZbhPs
         I4dzi/yS3v2Ull0xjmiRskcQMWAPXbgbU681tcoAruqM2N7uoRCnDxWD028bc7J0Eq
         cUb4ET5BOapOMuBtwZWwGnPWNW+GZO5IIEhlE9nd7rMQ3D5JsTHWspGQImFakEkgs1
         iXsObRPbAKXdA==
Date:   Mon, 9 Oct 2023 00:41:29 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6 3/6] smartpqi: update host attribute descriptions
Message-ID: <ZSMwGe2wYGugDfwe@debian>
References: <20231003195439.253129-1-don.brace@microchip.com>
 <20231003195439.253129-4-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="tx7GIt8lAXtNbV0Q"
Content-Disposition: inline
In-Reply-To: <20231003195439.253129-4-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--tx7GIt8lAXtNbV0Q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 9 Oct 2023 00:41:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v6 3/6] smartpqi: update host attribute descriptions

Hi Don,

On Tue, Oct 03, 2023 at 02:54:36PM -0500, Don Brace wrote:
> Minor description changes for host attributes.
>=20
> Just some small changes to the host attribute descriptions.
> Remove the "version" sysfs entry. This entry was changed
> to two sysfs entries: driver_version and firmware_version.

Please do the removal in a patch of its own, separate from the small
wording fixes.

Also, it would be good to merge that one with the one that adds HISTORY.

Thanks,
Alex

>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 21 ++-------------------
>  1 file changed, 2 insertions(+), 19 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 92bc5402b866..5ff134a4821a 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -136,29 +136,12 @@ The host
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
> -.TP
> -.IR /sys/class/scsi_host/host * /version
> -The host
> -.I version
> -attribute is a read-only attribute.
> -This attribute contains the driver version and the controller firmware
> -version.
> -.IP
> -For example:
> -.IP
> -.in +4n
> -.EX
> -$ \c
> -.B cat /sys/class/scsi_host/host1/version
> -driver: 1.1.2\-126
> -firmware: 1.29\-112
> -.EE
> +entire storage boxes containing pre-configured logical volumes.
>  .in
>  .TP
>  .IR /sys/class/scsi_host/host * /lockup_action
> --=20
> 2.42.0.296.g493f462273
>=20

--=20
<https://www.alejandro-colomar.es/>

--tx7GIt8lAXtNbV0Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjMBkACgkQnowa+77/
2zJ52w/+IPGXAlxSeTaQ9JpIkybbDjM3XmD74zAdkD8VGbOwJLA5VGC9KnyXA4/0
WY2OWK6boVC1nv/GWfK2rP1csdNbQ5tr5F2lmxVxxWLEXnM5tPCubrEJwVwEq0Sv
cBEEn4vL9UGtWCTuc6SeaxWGmuC7/xIh2UgHNLsMHupOepF13Sgn0HXdsx/Jy5zU
sJ5Vj7ofM1XIlDPVHjpKkrvfqpJYoNH0d3ed6TclShO/BYWk73jGhKCTJTbF5LzS
bNaZDAmd3JjZn5j1g/A+fIiaFyo3sU5D9IUajW/LODDS5+sLEOXZkCq1aq15jF15
HJAWJVU5Kzz65L7UUEgybiXo9cZWe4+/9T4SS0USwVOye6XlyIc8N/QHDX1EWjUC
b4391OvRVH9bxTrE84l3CZGRpLedOeCFqs5Qxo8ug9xSwO28q36oMjnBT2Mz66OT
Fc0q0O01H7UT718IhsR5DcBIYwRkYvG1GFG47K7UNFr1Qi7RSnowZx0TO8qwrw9W
XBuSTJAyVuvhbheM6uU53jjWEyH23w5P5dWP2T/p+nPvQn3yx9fuDZOdpioSnwP4
dcjgdzcMN/ejhlKcwGXnk9/MapH6t1bOdQPrB8Srcd/ciu4vH/xq0N+LYSukTn+U
imCKhgIjqEA6G3a4w3ot920/0KJGKoP2/mAhqtdYbBpYqaABfrs=
=It7Z
-----END PGP SIGNATURE-----

--tx7GIt8lAXtNbV0Q--
