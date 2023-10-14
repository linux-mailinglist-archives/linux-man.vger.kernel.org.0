Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1D4C7C971A
	for <lists+linux-man@lfdr.de>; Sun, 15 Oct 2023 00:49:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229733AbjJNWtU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 Oct 2023 18:49:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjJNWtU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 Oct 2023 18:49:20 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5E9FDA
        for <linux-man@vger.kernel.org>; Sat, 14 Oct 2023 15:49:18 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F6BAC433C7;
        Sat, 14 Oct 2023 22:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697323758;
        bh=SZ0+0ZgcwZSS+SHBo9IpB0MY2pe334/RUsBptfgs/Ys=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=YESR8E/mOOglzmsuD8D59BOARD1345qruDmWqeZQpT3YwaLxbd1juq15ybqRALgg8
         oI8aGfzB6JpYdqrGd8aOCw5YUztdgsNoZEBzzr71+0I6mZwbdW3qL+m0FBpAV6i/vJ
         Hb+RzfaEwGOKF1rLz4ZSZGY0w9XJYzsM859mTxKA3x5dovMhMLeObt7seb2TkrTJsv
         g53grQzNCSFD+DaAK3ORVPM/3DQ0x8JfU4nRLOSY2iHM4AZqCtrfXhwxftllBviqb9
         1keosvM5OZTMI0MNQlCDVlkCXsQlf96vx+x1+OJgGO+tXvyk101elw0bFdMy2urpcI
         KhRQnGWskF85A==
Date:   Sun, 15 Oct 2023 00:49:15 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v7 3/4] smartpqi: add host attributes
Message-ID: <ZSsa63tNPP8WNizq@debian>
References: <20231011190024.42728-1-don.brace@microchip.com>
 <20231011190024.42728-4-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hFe912RJDA0XhsW3"
Content-Disposition: inline
In-Reply-To: <20231011190024.42728-4-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hFe912RJDA0XhsW3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 15 Oct 2023 00:49:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v7 3/4] smartpqi: add host attributes

Hi Don,

On Wed, Oct 11, 2023 at 02:00:23PM -0500, Don Brace wrote:
> Add in some host level sysfs entries:
> enable_stream_detection - Send RAID 5/6 writes down the normal I/O path.
>                           Allow for full-stripe write requests.
> ssd_smart_path_enabled  - Indicates that our Accelerated I/O path is
>                           enabled. (AIO).
> enable_r5_writes        - Allow RAID 5 write operations down the AIO path.
> enable_r6_writes        - Allow RAID 6 write operations down the AIO path.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5fdcb5af706691ab62ddef6c08b97eb633c59e15>

Thanks,
Alex

> ---
>  man4/smartpqi.4 | 62 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 89387c0498fd..a32eac206904 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -237,6 +237,68 @@ $ \c
>  Adaptec
>  .EE
>  .in
> +.TP
> +.I /sys/class/scsi_host/host*/enable_stream_detection
> +The
> +.I enable_stream_detection
> +attribute is read-write.
> +This attribute enables/disables stream detection in the driver.
> +Enabling stream detection can improve sequential write performance for
> +ioaccel-enabled volumes. See the
> +.BI ssd_smart_path_enabled
> +disk attribute section for details on ioaccel-enabled volumes.
> +The default value is 1 (stream detection enabled).
> +.IP
> +Enable example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B echo 1 > /sys/class/scsi_host/host1/enable_stream_detection
> +.EE
> +.in
> +.TP
> +.I /sys/class/scsi_host/host*/enable_r5_writes
> +The
> +.I enable_r5_writes
> +attribute is read-write.
> +This attribute enables/disables RAID 5 write operations for ioaccel-enab=
led
> +volumes.
> +Enabling can improve sequential write performance.
> +See the
> +.BI ssd_smart_path_enabled
> +disk attribute section for details on ioaccel-enabled volumes.
> +The default value is 1 (RAID 5 writes enabled).
> +.IP
> +Enable example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B echo 1 > /sys/class/scsi_host/host1/enable_r5_writes
> +.EE
> +.in
> +.TP
> +.I /sys/class/scsi_host/host*/enable_r6_writes
> +The
> +.I enable_r6_writes
> +attribute is read-write.
> +This attribute enables/disables RAID 6 write operations for
> +ioaccel-enabled volumes.
> +Enabling can improve sequential write performance.
> +See the
> +.BI ssd_smart_path_enabled
> +disk attribute section for details on ioaccel-enabled volumes.
> +The default value is 1 (RAID 6 writes enabled).
> +.IP
> +Enable example:
> +.IP
> +.in +4n
> +.EX
> +$ \c
> +.B echo 1 > /sys/class/scsi_host/host1/enable_r6_writes
> +.EE
> +.in
>  .SS SmartPQI-specific disk attribute files in \f[BI]/sys\fP
>  In the file specifications below,
>  .I c
> --=20
> 2.42.0.345.gaab89be2eb
>=20

--=20
<https://www.alejandro-colomar.es/>

--hFe912RJDA0XhsW3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUrGusACgkQnowa+77/
2zJCXA//bLUu61fktAM9Xe/Gb+MBWkQo1qi1P1OynOuRiQVmZNbZPSGmzLpH3UiD
GTsNRrbMVsCYNP2uUPrP7zQXMKwgKu/Nw8RqhS7vRyNdG8Q7gHaJ9TSfiDN0onEC
Gqnx9DGdDVpTaIeZijr++U7MGLWSuUXDTcoffosa7c1LoK3wO1IrHwWVnaLqaLZK
33g4xgZc+tnwl7t5oicyBMXZ+inojrIEGLN3L3QEkOQzAEZkoSbil2hkqOuWbjZ+
pLyv2EXH8T+5knZjd00qiFyl5ihNzYtafN02q8g8Wb2KmMcQ4z5MO0mc6/mtW3Xn
R6ZlNWHiqzmNVDC8AWld/22XDcqqIG1qfzOufA2jEjAVeT1Z7KVKVAoYfHoopxLg
xSnYbfg2h1hl6n5lQ5LDhd6YT+fAwts8cEC3h1bUY1cTm+rya7SP/uJFdh3k2q6G
wZOQmfUHJ1HfK/1E1Wnq8ILQtS2LpBgD/1gsYIaT3nGlS7n+4MH2Uti/MrME7Pgv
3cvo68eFcyCJ5hy+4H9e+7b0765uHMjjRUIZVJQFpVe0qCoIuI4+OWOVHNQJ2VJT
fnDH7SZxfwTWQO4vh5l8yNeu8AEqsOBBiyMR0dHmsGJMsVO49hqWJCXwLiJjMV4I
MACE0KjhwiZlJCGzVvSDJQhDIRvI6jzO5e2GGrUNev5a1d8wDE8=
=JXW/
-----END PGP SIGNATURE-----

--hFe912RJDA0XhsW3--
