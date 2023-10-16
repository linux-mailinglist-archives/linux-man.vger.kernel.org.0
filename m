Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89E747CB72E
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 01:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233590AbjJPXwj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 19:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232457AbjJPXwi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 19:52:38 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F7B293
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 16:52:37 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5048FC433C8;
        Mon, 16 Oct 2023 23:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697500357;
        bh=4GXSLfq7tjOyO1gpNOXgF94+4+ixxLpB6PTfVY2iCN0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=oBan9LiFD37inYLgXWlTEjSLP+cTmGBXiC/yx5/WJUzxnnskHx3ucCW6NCfBS0fdB
         1ne9R2X5YYn8U9KXqhrb+9FUSpGBM5yXys9nKGonWVa28bCn4stvL02SumHo8DUkJx
         4ZYTgUcH7gyTFoWDJmG0wIbklEfWzGEkQPZ6sMhlCiIQPRTzcVxRKWq5Yjk+0/66NC
         VdJkDruVVPjHytx/eNDgHdGAOlrbxB9HVFXBw5+pr8tjA7C4m/H6Ss1azs9kYpY/Sc
         ttf/pqwNq0IcmiLYCzTl0B8oX2J9fhQg8jpMMWbA5nLAjS24yYL/uoUFLXCLieKeWw
         f52nGiYCRJUvQ==
Date:   Tue, 17 Oct 2023 01:52:33 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v8 3/3] smartpqi: add device attributes
Message-ID: <ZS3MwU7MNF3p7yes@debian>
References: <20231016160403.636655-1-don.brace@microchip.com>
 <20231016160403.636655-4-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="keV5db0yTga7lFdx"
Content-Disposition: inline
In-Reply-To: <20231016160403.636655-4-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--keV5db0yTga7lFdx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Oct 2023 01:52:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v8 3/3] smartpqi: add device attributes

Hi Don,

On Mon, Oct 16, 2023 at 11:04:03AM -0500, Don Brace wrote:
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
>  man4/smartpqi.4 | 95 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 89387c0498fd..00a8146eba6b 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -301,6 +301,101 @@ $ \c
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
> +This attribute contains a 16-byte ID that uniquely identifies the device
> +within the controller.
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
> +This attribute contains the c:b:t:l of the device along with the device
> +type and whether the device is Active or Inactive.
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
> +$ \c
> +.B cat /sys/class/scsi_disk/12:0:9:0/device/path_info
> +[12:0:9:0]  Direct-Access   PORT: C1 BOX: 1 BAY: 14 Inactive
> +[12:0:9:0]  Direct-Access   PORT: C0 BOX: 1 BAY: 14 Active
> +.EE
> +.in
> +.TP
> +.IR /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt

This is probably a typo.  I guess you wanted to use c:b:t:l too.

> +The
> +.I raid_bypass_cnt
> +attribute is read-only.
> +This attribute contains the number of I/O requests that have gone
> +through the ioaccel path for ioaccel-enabled volumes.
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
> 2.42.0.357.g59167d7d09
>=20

I've applied a few formatting fixes to the patch.  Please apply the
below diff to your patch before fixing the typo.

Thanks,
Alex


diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index c0b305935..4aefbfde0 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -383,7 +383,7 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/sy=
s\fP
 .EE
 .in
 .TP
-.IR /sys/class/scsi_disk/c : b : t : l/device/lunid
+.IR /sys/class/scsi_disk/ c : b : t : l /device/lunid
 The
 .I lunid
 attribute is read-only.
@@ -399,12 +399,12 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/=
sys\fP
 .EE
 .in
 .TP
-.IR /sys/class/scsi_disk/c : b : t : l/device/unique_id
+.IR /sys/class/scsi_disk/ c : b : t : l /device/unique_id
 The
 .I unique_id
 attribute is read-only.
-This attribute contains a 16-byte ID that uniquely identifies the device
-within the controller.
+This attribute contains a 16-byte ID
+that uniquely identifies the device within the controller.
 .IP
 For example:
 .IP
@@ -416,12 +416,15 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/=
sys\fP
 .EE
 .in
 .TP
-.IR /sys/class/scsi_disk/c : b : t : l/device/path_info
+.IR /sys/class/scsi_disk/ c : b : t : l /device/path_info
 The
 .I path_info
 attribute is read-only.
-This attribute contains the c:b:t:l of the device along with the device
-type and whether the device is Active or Inactive.
+This attribute contains the
+.IR c : b : t : l
+of the device
+along with the device type
+and whether the device is Active or Inactive.
 If the device is an HBA device,
 .I path_info
 will also display the PORT, BOX, and BAY the device is plugged into.
@@ -445,8 +448,9 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/sy=
s\fP
 The
 .I raid_bypass_cnt
 attribute is read-only.
-This attribute contains the number of I/O requests that have gone
-through the ioaccel path for ioaccel-enabled volumes.
+This attribute contains the number of I/O requests
+that have gone through the ioaccel path
+for ioaccel-enabled volumes.
 See the
 .BI ssd_smart_path_enabled
 disk attribute section for details on ioaccel-enabled volumes.
@@ -466,8 +470,8 @@ .SS SmartPQI-specific disk attribute files in \f[BI]/sy=
s\fP
 .I sas_ncq_prio_enable
 attribute is read/write.
 This attribute enables SATA NCQ priority support.
-This attribute works only when device has NCQ support and
-controller firmware can handle IO with NCQ priority attribute.
+This attribute works only when device has NCQ support
+and controller firmware can handle IO with NCQ priority attribute.
 .IP
 For example:
 .IP


--=20
<https://www.alejandro-colomar.es/>

--keV5db0yTga7lFdx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUtzMEACgkQnowa+77/
2zKiJw/+PR3YK5paZuHM+TJsNEMCW+I88AFdlOmAbNQA94guFut7PoLgnvdvbjC4
LdyWu08PT5e63GDn/VzzFVcvrvfKgSvuiv5z/PosmFjwv58sSou5oUh1p6AETlJG
UNDOOyWD6p/krOgbbathujQabxOUPjS7e/VkTjAqFsfJntfaTbkRfsx+r+YTgADp
5GrATXyHMEn+QGXBZDWeHtW6N6K1ue+Ik8WLsIyeq6JqXLt7nvbG2NFo7lUiaRy0
IB6NNk7BkVhULOpkfiQIpzfR+J8efPJQ1fP05toBuWw6rd4op95RbOeM3P0EeE3T
IQA6CNU9e3CToLIK2pzFNAm4VQ7/pzqIctAjZGnE5KidD6n7bGoawOS1FrlnCZwn
cSDoNmCURhsQnDaVcjuWvGZpNbVIRE35F8VNJ2fbiToQb72w7rF0qDzYzrz1qR7h
hjW1p//5JwXxZqIT+oWSw+LLu/Bvyaejwx4RKqteswISmPqvw3+GRLVuOooQkbMo
NwfAVxmbdqhwmoBua+MRv0m40wWR1ELceKDh3w5zE5r45EaLgrHKzPwHk0Rz5KAR
1AarMxRKmh775JKNB1IcEowcUkhaEDgrhirE7CsHKmSUrZBibfn04J5uy7EBiUMj
gJnVpy87fpxsT2DkBh7Kcxe9QKMnxL54UEbpuEWkzS3OIGlR+Pk=
=difp
-----END PGP SIGNATURE-----

--keV5db0yTga7lFdx--
