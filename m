Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 104DB7B3CE6
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:10:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231684AbjI2XKk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:10:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230165AbjI2XKk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:10:40 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB0BDE5
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:10:38 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88B87C433C7;
        Fri, 29 Sep 2023 23:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696029038;
        bh=QUK00RDD7pKEdU5nbnKjH0cl4S39jzbeXLXhVGShzu8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DOu8X0cyvrsp2k363CHsvtMOTt+K3+V3rJdjg57kmEy9bcOPPwvuN9gXzdxRIerjT
         rMjpc60RVALAuvnHUGhixmP9QnIWN/mfRnis3q5rFvucmQnbtGlUmW7eBfP2gszmOo
         TFTUHhiNPdtW8Fggku1CXyzyjsiRUVVifr3/mpKFbxsyTYmajHpHhWTUMP1uieRqIN
         /GNrI7iTv0iyYxMiYHoKCzzs3JtAkCRt1BuladEYGeG47ki5cfFJfgAC50/4swlix4
         5orfKaeT7fX6giLzfmsZ7A5UYuiOWHGg+lvvVAfppcUIqMMIIqU/6/39Vc3DmkqLuv
         RD7D/BjEY5Jqw==
Date:   Sat, 30 Sep 2023 01:10:35 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 06/10] smartpqi: update host attribute descriptions
Message-ID: <ss7k5ooeoi7y56j6otvdpwhgd5yltzk6nt5l6ujiiupxzpmrdx@zrcvhw364ejx>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-7-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="3syjr4c56ltpfwbx"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-7-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3syjr4c56ltpfwbx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 06/10] smartpqi: update host attribute descriptions
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:12:01PM -0500, Don Brace wrote:
> Minor description changes for host attributes.
>=20
> Just some small changes to the host attribute descriptions.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 31 +++++++------------------------
>  1 file changed, 7 insertions(+), 24 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 87f6990f2455..165eee6848c3 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -135,29 +135,12 @@ The host
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
> @@ -173,7 +156,7 @@ for an explanation of the
>  .I lockup_action
>  values.
>  .TP
> -.I /sys/class/scsi_host/host*/driver_version
> +.IR /sys/class/scsi_host/host*/driver_version

This is wrong.  Why would you want this change?

Thanks,
Alex

>  The
>  .I driver_version
>  attribute is read-only.
> @@ -189,7 +172,7 @@ $ \c
>  .EE
>  .in
>  .TP
> -.I /sys/class/scsi_host/host*/firmware_version
> +.IR /sys/class/scsi_host/host*/firmware_version
>  The
>  .I firmware_version
>  attribute is read-only.
> @@ -205,7 +188,7 @@ $ \c
>  .EE
>  .in
>  .TP
> -.I /sys/class/scsi_host/host*/model
> +.IR /sys/class/scsi_host/host*/model
>  The
>  .I model
>  attribute is read-only.
> @@ -221,7 +204,7 @@ $ \c
>  .EE
>  .in
>  .TP
> -.I /sys/class/scsi_host/host*/serial_number
> +.IR /sys/class/scsi_host/host*/serial_number
>  The
>  .I serial_number
>  attribute is read-only.
> @@ -237,7 +220,7 @@ $ \c
>  .EE
>  .in
>  .TP
> -.I /sys/class/scsi_host/host*/vendor
> +.IR /sys/class/scsi_host/host*/vendor
>  The
>  .I vendor
>  attribute is read-only.
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--3syjr4c56ltpfwbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXWWsACgkQnowa+77/
2zK41xAAlowmFBVhtNe0HSjzEeG2VDSWTcwF1OF1UTxfHetloLK/ldgvi9zFs/Nn
ts24CkJoMlTKaHUBrMEn1Y1WpAoAh4BAmDijzjZ2R0rnzMgrou87N4Rl7wCns5fx
Oxul25J4SG3np+FIdTqsyO7cug8VGPw9ep78aqftV0H5kEZajUHl8PFzIUQUFfOO
yPYyQ/zAELmDAIOGRZTuFWFS0Tl5uHD38uJv25LZsES/aMsfgeVQqhQyp9Tb/CjC
/mMHwSHs477L2soZQik5TTbMa3gFlcsRquXaHuYwqgc60FVxVYEQyD17e0jG1SWq
Boz2+IDRYaE/7kqUXIVarn9I0nKXceUbFp0uSZ7HhfWRDzJ20Qfb92Thg6bAVu8F
s7k2S2356h5ZBvfNCCuNqQO7lAhOUQ8Tyias+d/zA6G9MDnszS0UIUOq83MvzUum
ALS/uOE7I9Maun5KJBu/2PIfcShJTnk7pJfH1TVzgG7+NuQ766IwRV6z9KsE1UyW
6NcxAa4V//6jaWlmq2OFTaoX5PZg0W+uXgUdT8iDUkJehhRCXor0xTWP1h3YEs6e
63YiSa4X5Tz6qVJ4H7KAwvZ1WkfH2AuuuFIEVAiwnEBHesHGMx84WRbSbDwx//1y
ewEgvKRYla4tyRaSCnvilaKIbYJlo52XGMuXmm4ZZrPzJL93xMo=
=O0nk
-----END PGP SIGNATURE-----

--3syjr4c56ltpfwbx--
