Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC117BD0EE
	for <lists+linux-man@lfdr.de>; Mon,  9 Oct 2023 00:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344863AbjJHWci (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Oct 2023 18:32:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344751AbjJHWci (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Oct 2023 18:32:38 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB9DA6
        for <linux-man@vger.kernel.org>; Sun,  8 Oct 2023 15:32:36 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABE61C433C8;
        Sun,  8 Oct 2023 22:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696804356;
        bh=AnetmVkoIxzInqcJtbx6bLOBU9/jpHuUWuj1oKOEy1Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Nq3XyjEcdXe/BLDbnOnLXeGuRbBJwiXprhA2hTlcYl6CN8ShYo13eN/AmXxm6Y5pD
         s1c40hO1p8c72gGS7RzYb7B2CzORAeH0+8Dv4lWD2Y64kIUAig7kPdB9QwG/tTgz7q
         ihn+TIUF8Jq87FM/6PqqjoSJShOgtNMI68RYOjclsPyKlDny9ihffrh1Ph4+EU+M2c
         DbsjePMsAB0tW6RZj7hBJXBU8Ktr3lF1w5VOGRQxwaCn+Uj6RI7AzrP4QFL4YBiRgL
         tTm3IzCquDDLwdVmMCHzDMWNGi24Qo26ew+N5uVx5V4s6CYMRgoFlTWJfbYRC/pxyb
         NwR8mL0p0l1zA==
Date:   Mon, 9 Oct 2023 00:32:33 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6 1/6] smartpqi: add module parameter ctrl_ready_timeout
Message-ID: <ZSMuAX0MXvVC6kN1@debian>
References: <20231003195439.253129-1-don.brace@microchip.com>
 <20231003195439.253129-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="SPVbxrZJ6/2EfmR5"
Content-Disposition: inline
In-Reply-To: <20231003195439.253129-2-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--SPVbxrZJ6/2EfmR5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 9 Oct 2023 00:32:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v6 1/6] smartpqi: add module parameter ctrl_ready_timeout

On Tue, Oct 03, 2023 at 02:54:34PM -0500, Don Brace wrote:
> Allow user to change the length of time that the driver
> will wait for the controller to become ready.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Thanks.  Patch applied.  I applied the following minor formatting fix to
your patch.

Cheers,
Alex


diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
index e12d82296..a213b3b70 100644
--- a/man4/smartpqi.4
+++ b/man4/smartpqi.4
@@ -17,7 +17,7 @@ .SH SYNOPSIS
 .RB [ expose_ld_first=3D { 0 | 1 }]
 .RB [ hide_vsep=3D { 0 | 1 }]
 .RB [ disable_managed_interrupts=3D { 0 | 1 }]
-.RB [ ctrl_ready_timeout=3D { 0 | [30, 1800] }]
+.RB [ ctrl_ready_timeout=3D { 0 |[ 30 , 1800 ]}]
 .YS
 .SH DESCRIPTION
 .B smartpqi
@@ -112,7 +112,9 @@ .SS Boot options
 .BR ctrl_ready_timeout=3D { 0 | [30, 1800] }
 This option specifies the timeout in seconds for the driver to wait
 for the controller to be ready.
-The valid range is 0 or [30, 1800]. The default value is 0,
+The valid range is 0 or
+.RB [ 30 ", " 1800 ].
+The default value is 0,
 which causes the driver to use a timeout of 180 seconds.
 .SH FILES
 .SS Device nodes



> ---
>  man4/smartpqi.4 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 32f9240e37f2..e12d82296108 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -17,6 +17,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
>  .RB [ expose_ld_first=3D { 0 | 1 }]
>  .RB [ hide_vsep=3D { 0 | 1 }]
>  .RB [ disable_managed_interrupts=3D { 0 | 1 }]
> +.RB [ ctrl_ready_timeout=3D { 0 | [30, 1800] }]
>  .YS
>  .SH DESCRIPTION
>  .B smartpqi
> @@ -107,6 +108,12 @@ Disables driver utilization of Linux kernel managed =
interrupts for controllers.
>  The managed interrupts feature automatically distributes interrupts
>  to all available CPUs and assigns SMP affinity.
>  The default value is 0 (managed interrupts enabled).
> +.TP
> +.BR ctrl_ready_timeout=3D { 0 | [30, 1800] }
> +This option specifies the timeout in seconds for the driver to wait
> +for the controller to be ready.
> +The valid range is 0 or [30, 1800]. The default value is 0,
> +which causes the driver to use a timeout of 180 seconds.
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> --=20
> 2.42.0.296.g493f462273
>=20

--=20
<https://www.alejandro-colomar.es/>

--SPVbxrZJ6/2EfmR5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUjLgEACgkQnowa+77/
2zL5cRAApfGE3cagFrpBDTtE8QpPyyLtqVPJ98hIJbJ5dnrG0p1feLFYVHLzPpJo
Z7wMTxuIrfqNnrBBpQWi+dxJjKg0LctviR5oq/kVtjgt0C696OvL9bEurXIMkqnK
+Gt+eUYPsyq954D1VRX4CU6tE4tvysI1u6tzrfwbQoGu3h2oNR68lJZGUaU8Zt/n
QRgYN9WxzzebciETO8gVC6lTMldX+y/awTTIFiqAd7Wf0Zc4fV7UH6BwJD13cKFK
FjGKSCGG54JIIUELQnun97vrBtNAeGrs8aqYzz0mN6QFY3OmjoLl8ET9eoDLiHtl
gF8Es3RlfBtcbJgM8YZfMmSVk/DeDzIMYeTDfB5Eqrmpvd6C1AA5+AZPUnOSjvQT
akxYPmPdlwLmtlY6x1FAjRIMfCsTvUS2zgCqZ6ysbJcJnzGiFsQxHqXVP+8RH0Xj
vEuZrA8a7J3SIV4i4HTeIN/uEhcOyh9Yy22G8eSbneGhSkRbw1faD1h0M/X6m+cn
DuIWUnqS4M8hMvBmLNinEJmGvR9phi+QrcqW6qx7d5KjAFWKu7M0JBdYOHTxOZb9
3j+ZK1OzyJHLPUuY6pkT517cl6Z+qGURk1KDG79amKglF0gvPGJdRyCz6I8Z+HiL
CNOSM5F2V/S+prC73T2VjNwYSxbGonvEXeqmSlQ37QFI/g94j38=
=M9wt
-----END PGP SIGNATURE-----

--SPVbxrZJ6/2EfmR5--
