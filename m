Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CCD8A7B3CF2
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:21:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjI2XVu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:21:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjI2XVu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:21:50 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E80DBE5
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:21:47 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB83DC433C7;
        Fri, 29 Sep 2023 23:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696029707;
        bh=qlaPmAjeFVqs0bG80yMMRrSqwfwXktf9nzij2uCcsWk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tRVdxfULEn+kH5ZFAGSFG14U+BvU+seFX5pUxcdNguRbL3HFe+w5jDig1FFUD1pmJ
         boELUrwnXS/6ufjTZQFD7+bw/zetNLayYHZDEbyQXZ8O+EgTUjKc3degILe2viVNVr
         wNTE4PhxHFZnZotEHgMwBmzzIhSPBzEu354lZpEim5hQ3LcAEX2r4rDRdZmg7ZGje5
         ZSg/usM4oS9+88JXnCpKz8jeVqHuStvW/TNcErx+bL3NP909TCuDhx0LHZcMlsPWfO
         j3baEa3DSDSt+8mUeUCaqCc/4IeKw59nU5ZhBJk0cPAjrhhTVqWft2uWIgyMl8oCeY
         JcQlwBSZ2PDzA==
Date:   Sat, 30 Sep 2023 01:21:44 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 09/10] smartpqi: add device attributes
Message-ID: <ytcsqleu53iwpn5gsjmmuoqz2cy5oegvvafwlwxn422bcn3a5e@ne3khvixxzuq>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-10-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="n5gcojhg36qxe2zr"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-10-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--n5gcojhg36qxe2zr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 09/10] smartpqi: add device attributes
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:12:04PM -0500, Don Brace wrote:
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
> ---
>  man4/smartpqi.4 | 91 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 91 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 19708a01f531..3de8b0c97423 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -356,6 +356,97 @@ $ \c
>  0
>  .EE
>  .in
> +.TP
> +.IR /sys/class/scsi_disk/c : b : t : l/device/lunid
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
> +.IR /sys/class/scsi_disk/c : b : t : l/device/unique_id
> +The
> +.I unique_id
> +attribute is read-only.
> +This attribute contains a 16-byte ID that uniquely identifies the device=
 within the controller.

Please don't go past the 80-col limit.

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
> +.IR /sys/class/scsi_disk/c : b : t : l/device/path_info
> +The
> +.I path_info
> +attribute is read-only.
> +This attribute contains the c:b:t:l of the device along with the device =
type and whether the device is Active or Inactive. If the device is an HBA =
device,
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

Blank lines in examples should use the dummy character \&
It prevents a groff(1) warning.

> +$ \c
> +.B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
> +[12:0:9:0]    Direct-Access     PORT: C1 BOX: 1 BAY: 14 Inactive
> +[12:0:9:0]    Direct-Access     PORT: C0 BOX: 1 BAY: 14 Active
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt

This should be .I.

Thanks,
Alex

> +The
> +.I raid_bypass_cnt
> +attribute is read-only.
> +This attribute contains the number of I/O requests that have gone throug=
h the
> +ioaccel path for ioaccel-enabled volumes. See the
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
> +.IR /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
> +The
> +.I sas_ncq_prio_enable
> +attribute is read/write.
> +This attribute enables SATA NCQ priority support.
> +This attribute works only when device has NCQ support and
> +controller firmware can handle IO with NCQ priority attribute.
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
> 2.42.0.158.g94e83dcf5b
>=20

--n5gcojhg36qxe2zr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXXAgACgkQnowa+77/
2zJEZg//R8UUFWPnBwzVGbB9ETNcOFCONGzMUPljmwc5DKX0RY/JPq3qGF9lK7d1
fiLO8p34az4u/13oTszpk7jAj4k1nvBSw3cg3JQQNpTdo1I0zTi5s96sLfyDIk8a
uHEX3XV4D3PWi+erJNiZggLH5opieVq8yRMyZVFt6dmHNZw3IfClog+sISQyaopT
+EwglUYq4hqAECvUeJ9fSz3Diy2/DbstdFgISK3RMq0ZaUfolwOKrbDuRTjQN2v/
7k4lDcxrvWROVXcNRWicOdXBAelt8fI1avWi2sFFjt2vvqlvgckRZQUK0D+q21jD
ZBnhBUxPbIWsGSHaTXIc2GHOfEdw7N4OUS80Jl67nxzmIEbrfTUmNcVY/QsHvK4L
QLMd5jdCuYRU0SIFJCVnWDiJEGF0dmMPsXKCU2d0v0qw9kiQe+3oam2o3UqEqFXA
DICRrOvAEp4agUrsclKaO6bWvwgO9FjZflfU8oyVSU2iy3vYSvLaU4XmKfBxNe3y
ZakOrqvPJokt7ytkJ4bBxV40M1jFR2J/kRcY3bPD92Nwpl7XafOhP5Nc+6gIIUFt
JAwZaaVo8by1D1qXVgx3659Z+F7j9mx46KU8D88WfeAqHYELNU3W9LPEYKLE0yn5
k/OUCHrMBRlpFJG4kcNyCDNCaZW5+GH7sdZYp1uAY2w48VGbxzQ=
=CqD3
-----END PGP SIGNATURE-----

--n5gcojhg36qxe2zr--
