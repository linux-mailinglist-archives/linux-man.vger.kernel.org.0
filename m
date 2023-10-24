Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D49BD7D5E98
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 01:18:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344484AbjJXXSK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 19:18:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344466AbjJXXSK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 19:18:10 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C48110C6
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 16:18:08 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 172BCC433C7;
        Tue, 24 Oct 2023 23:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698189487;
        bh=+oiWp0CGxIXoFsgpEI7lYoFu+5/jcUTbB02EIUPb3pU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=iUl0b6OPJ+m/UKZifQsVi1kkSp6nsoPr3RiOHKV97lcuuTYpOJoT0UpzYlv9skLrH
         ZV4x4chM4x9Jc+0DY2lvGmR8uP4T79D1NGtGgLeXfLfC35fpPi3MFOVLEvfzG5kZV0
         RyBjRxLqWXxbFPOCEnma8wy23VbO7o7eN1Jc58f+aB45XXFpfzvYYwjszO2V9y0AxT
         NAIss+kNW3AVnGzVIs+vBXKyYfxcEPaBNzBmOdw7nRA4QmFMqQ1JvHn+zbRE/aiA7e
         yyjxWl1tt8uxM91gZa9Y8EkDxRJGH8EQybyyP8fewHLYhHUylrnmkpUVKqexvv/vP5
         HTsyCMyOfxEuw==
Date:   Wed, 25 Oct 2023 01:18:04 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v9 3/3] smartpqi: add device attributes
Message-ID: <ZThQrK3fMju8xRIP@debian>
References: <20231024220153.36748-1-don.brace@microchip.com>
 <20231024220153.36748-4-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="JO5l2toGzQ/3/rHB"
Content-Disposition: inline
In-Reply-To: <20231024220153.36748-4-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--JO5l2toGzQ/3/rHB
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 01:18:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v9 3/3] smartpqi: add device attributes

Hi Don,

> Subject: Re: [PATCH v9 3/3] smartpqi: add device attributes

Subject modified to "smartpqi.4: Add device attributes".

On Tue, Oct 24, 2023 at 05:01:53PM -0500, Don Brace wrote:
> Add in some device level sysfs entry descriptions:
> lunid
> unique_id
> path_info
> raid_bypass_cnt
> sas_ncq_prio_enable
>=20
> These have already been provided by the driver.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Patch applied (with a minor tweak; see a comment below).

Cheers,
Alex

> ---
>  man4/smartpqi.4 | 99 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 99 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 0cb018d01fc5..d06f34d55d10 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -364,6 +364,105 @@ $ \c
>  0
>  .EE
>  .in
> +.TP
> +.IR /sys/class/scsi_disk/ c : b : t : l /device/lunid
> +The
> +.I lunid
> +attribute is read-only.
> +This attribute contains the SCSI LUN ID for the device.
> +.IP
> +For example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_disk/13:1:0:3/device/lunid
> +0x0300004000000000
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_disk/ c : b : t : l /device/unique_id
> +The
> +.I unique_id
> +attribute is read-only.
> +This attribute contains a 16-byte ID
> +that uniquely identifies the device within the controller.
> +.IP
> +For example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_disk/13:1:0:3/device/unique_id
> +600508B1001C6D4723A8E98D704FDB94
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_disk/ c : b : t : l /device/path_info
> +The
> +.I path_info
> +attribute is read-only.
> +This attribute contains the
> +.IR c : b : t : l
> +of the device
> +along with the device type
> +and whether the device is Active or Inactive.
> +If the device is an HBA device,
> +.I path_info
> +will also display the PORT, BOX, and BAY the device is plugged into.
> +.IP
> +For example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_disk/13:1:0:3/device/path_info
> +[13:1:0:3]    Direct-Access     Active
> +

Blank lines in man(7) source produce warnings, as they are usually a
mistake.  In this case it's fine, but to silence the warning, we use a
dummy character, which produces no output, but makes it so that the
input line is not empty.

@@ -440,7 +440,7 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/sy=
s\fP
 $ \c
 .B cat /sys/class/scsi_disk/13:1:0:3/device/path_info
 [13:1:0:3]    Direct-Access     Active
-
+\&
 $ \c
 .B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
 [12:0:9:0]  Direct-Access   PORT: C1 BOX: 1 BAY: 14 Inactive

> +$ \c
> +.B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
> +[12:0:9:0]  Direct-Access   PORT: C1 BOX: 1 BAY: 14 Inactive
> +[12:0:9:0]  Direct-Access   PORT: C0 BOX: 1 BAY: 14 Active
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_disk/ c : b : t : l /device/raid_bypass_cnt
> +The
> +.I raid_bypass_cnt
> +attribute is read-only.
> +This attribute contains the number of I/O requests
> +that have gone through the ioaccel path
> +for ioaccel-enabled volumes.
> +See the
> +.BI ssd_smart_path_enabled
> +disk attribute section for details on ioaccel-enabled volumes.
> +.IP
> +For example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B cat /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt
> +0x300
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_disk/ c : b : t : l /device/sas_ncq_prio_enable
> +The
> +.I sas_ncq_prio_enable
> +attribute is read/write.
> +This attribute enables SATA NCQ priority support.
> +This attribute works only when device has NCQ support
> +and controller firmware can handle IO with NCQ priority attribute.
> +.IP
> +For example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B echo 1 > /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
> +.EE
> +.in
>  .SH VERSIONS
>  The
>  .B smartpqi
> --=20
> 2.42.0.482.g2e8e77cbac
>=20

--=20
<https://www.alejandro-colomar.es/>

--JO5l2toGzQ/3/rHB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU4UKwACgkQnowa+77/
2zL6iRAAmP29bm5gxneBdcuaIOxJd1TwEltMgufu/qo4aKabb4xa5qXB4C8J4KTB
D6yGlkfeLwKrCfkkM0wMzApQe6F+BZ7QVHyoQ0krV7y2JPer+UWulwqfYNR9+vZQ
ppH7Bx5T4gREehmaSfRWwdYf9skXJ74p70PbsHhbtVQYpZCDfE4afjCbvwHmszGE
VxzWLaqM/tNfAI84gzeYVGy6fKA5CNSgAYeX2jy3SrG+MPRzz8/PU/cTkzpPB4oD
Er/3xXAQ4k/T+EFR+0u7+21Bn9KnXPmaPzc9rNneGi2tWzuhlGPmT6jOGW/IcOoS
yFF0jnG8YDEHerQG+Dxs6uBETdQiYZvCwZnIhlRSeFfNdZUCUVMgpPXiVirQNuCA
61XSyOjBThRS7KNLzv3kQ/wFrdPxiywZIhcJWSPJgpydMRlpX0z8Ztt1Ivudz0C6
HOMVJOCvAgfuokdtR62le6ZCm5+fg0j/H2YEfWwzhd0+5943b2qYay/ti4u/ocev
kE19y+KvfffLg084CK6O+TMwVRHd2IiuoBPcRl2nHZ6jg6AWL24kRmtgKqLWaUWf
OiFdnUUqNO2kbWPgT8ciQEF43Sz5FiwJtPU2H7MNlROB8NQ9DgD2cltpBg6vaSHM
M2y8AoiOowYeKa9YfBu60E1DOtvQYSrgUEoXUOy53NIjBLGmBmE=
=f3xA
-----END PGP SIGNATURE-----

--JO5l2toGzQ/3/rHB--
