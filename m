Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 111AE7C9725
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 00:56:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbjJNW4V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Oct 2023 18:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbjJNW4U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Oct 2023 18:56:20 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34E54CE
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 15:56:19 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26E6BC433C7;
        Sat, 14 Oct 2023 22:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697324178;
        bh=8oRWtbXNiD1rusFOsmu661QtWzbjLbstIwDJaWXtsac=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FB7BJnT2VKWhIKw5RntqzHV9l/EMYaa3m95J5CQQsyqo1k/2w8I1ocR/51Wf8NZGb
         ubh0vCiJZykVPGgEP/rdgCBBPigxYAmsR2OiNw07RaB2SqFgcN9G7ixSNDE1rBxRdk
         o5mP2pz5aHRdwSu37aFjON2GTC0+/LMsW6ucAeIZTfFc9M0jFpsmZn9Ef8i1O5oJJV
         bQaltcD5sUWAUf2eA/kEYBOcsOekZB9l5qkZe2hE9GiLRBLX0CHHIUAp38wsMKPWkh
         83/IeL0e+2udK7nlt2yC1bRLxNaK8vnk9j1Shzm9NJJ+xzPm76v3ypmN5vVmZM4r6A
         kRYQsPVAFb1OQ==
Date:   Sun, 15 Oct 2023 00:56:15 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v7 4/4] smartpqi: add device attributes
Message-ID: <ZSscjxrLocKKt5z6@debian>
References: <20231011190024.42728-1-don.brace@microchip.com>
 <20231011190024.42728-5-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="BsDeLBB2LHTxgHWJ"
Content-Disposition: inline
In-Reply-To: <20231011190024.42728-5-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--BsDeLBB2LHTxgHWJ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 15 Oct 2023 00:56:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7 4/4] smartpqi: add device attributes

Hi Don,

On Wed, Oct 11, 2023 at 02:00:24PM -0500, Don Brace wrote:
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
> index a32eac206904..00524bb32850 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -363,6 +363,101 @@ $ \c
>  0
>  .EE
>  .in
> +.TP
> +.I /sys/class/scsi_disk/c : b : t : l/device/lunid

I think this should rather be something like

=2EIR /sys/class/scsi_disk/ c : b : t : l /device/lunid

These rules from groff_man_style(7) apply:

              Use  italics  for  file  and path names, ...
                                      ...  An exception involves vari=E2=80=
=90
              ant  text  in a context already typeset in italics, such
              as file or path names with  replaceable  components;  in
              such cases, follow the convention of mathematical typog=E2=80=
=90
              raphy: set the file or path name in italics as usual but
              use  roman for the variant part (see .IR and .RI below),
              ...

Thanks,
Alex

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
> +.I /sys/class/scsi_disk/c : b : t : l/device/unique_id
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
> +.I /sys/class/scsi_disk/c : b : t : l/device/path_info
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
> +.I /sys/class/scsi_disk/13:1:0:3/device/raid_bypass_cnt
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
> +.I /sys/class/scsi_disk/13:1:0:3/device/sas_ncq_prio_enable
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
> 2.42.0.345.gaab89be2eb
>=20

--=20
<https://www.alejandro-colomar.es/>

--BsDeLBB2LHTxgHWJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUrHI8ACgkQnowa+77/
2zLzaw//eqemsRVYtMBOWG47T9FTNoBc6UQsEfb13PoF7nYgphNuTJtrGTRD72dg
fL9KJbE/o1dftUSxn7FsJy6IaMkzsDRxpUMG/cyWrMzfhMq+YBiA0vO7qjFuhYXB
KYVOpepiwcjhm0rT42r+Vy1V514+mnB0Xclqy0lRZcp/PYqDURwrOJeHLB2TvxZm
XXtn6mu8GQPUAtcLj76U2xTUU9u3bJBoi9jH7/Q2NTM9KOGAGL3HPCRFG9FobKY+
SMQGcVzQxGZBsw7gQb25UeoJOrCHWV1p9QMTNvvyhNv/NxGkOZaanxo6B1XViBRJ
4RjzjVgQAdMq4xMqkvVIh5B1LpfZ5+V8lU1vLg/wK4Rc+kTAr4vLteE4HuWOG+VI
EBsQ40hNYYQzlcYf3saR+TWjUH/fP2PgXbplmD0M8wvFy0BpXIuHlINVrqxV+O5t
/Si5dm0YfqTCIsJNVJ01JWE9q0G0fNLkeSyb6Air2D3n1jYT/qH4kVdcfIVbS+Rn
yZtGw/Wgl7rv0IxNcBUzJQoWiG83bDIaiOpt2PGPbq+OPQdvw+OS4MZ9EE3t6Rmd
EU2EqKhaWX9qaN1ZToz77ZbMjK4yHkJGlqUwItOAdCuzdo/t2bvC8V8z1KRK9e8c
PvxO+2IlfAAGqJeBLssIxtdDbtz33QICUicyai2WjEcjAexy7aY=
=m7C+
-----END PGP SIGNATURE-----

--BsDeLBB2LHTxgHWJ--
