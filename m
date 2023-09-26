Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7193C7AF772
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 02:35:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232008AbjI0Af5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 20:35:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233040AbjI0Ad4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 20:33:56 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EEF03C1E
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 16:45:58 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2383EC433C7;
        Tue, 26 Sep 2023 23:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695771958;
        bh=XEwx6vXQyeRi98LQQi2FEuxIJNYX0NbLEFU/0J4zqss=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Y2rNP889aW8BvtcZoO16CCNRgJ970kg+uHkiK4corKeMWPnh7kuEZdy3ni0cxvbqI
         71UVYRlzFOJE2K5mRex2rpe2u18HTqh3gb2zEKTpKZuYGuHUThEvnoxavrAE3iIigD
         0afBzdXYbs5o8/BqOUflC7Klzvz5IiQwo1Rt5FhJmKOBv2TJFqb19PnA2XWDs2aAbO
         nwOnRHj5bTG3AM8vncXcL7ckUwcWPtHWVmSQ34hHaJ/rrJE97ignWGNRlso847cVWU
         Mq/zk3lgeYShQjYF3ld5MUJfFLb6GUOB2Hem7XMPaJxcBi0UTEo7O1KdpsL0RDyh01
         9/3DtSCuYxoAg==
Date:   Wed, 27 Sep 2023 01:45:54 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 02/10] smartpqi: update module parameter descriptions
Message-ID: <yeuiqtwbvcsxuzt75xmhni3siteb6cdw575uxl63u4ak3ifevd@f3ahrtz34ttk>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-3-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sqmjtofrcttqwipw"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-3-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sqmjtofrcttqwipw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 02/10] smartpqi: update module parameter descriptions
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:11:57PM -0500, Don Brace wrote:
> Minor changes to the descriptions of the following module parameters:
> 	disable_device_id_wildcards
> 	disable_heartbeat
> 	disable_ctrl_shutdown
> 	expose_ld_first
> 	hide_vsep
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---

Patch applied.

Thanks,
Alex

>  man4/smartpqi.4 | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 463976f88cea..428d79a19840 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -66,17 +66,17 @@ Allows BMIC and CISS commands to be passed through to=
 the controller.
>  .TP
>  .BR disable_device_id_wildcards=3D { 0 | 1 }
>  Disables support for device ID wildcards.
> -The default value is 0.
> +The default value is 0 (wildcards are enabled).
>  .TP
>  .BR disable_heartbeat=3D { 0 | 1 }
>  Disables support for the controller's heartbeat check.
>  This parameter is used for debugging purposes.
> -The default value is 0, leaving the controller's heartbeat check active.
> +The default value is 0 (the controller's heartbeat check is enabled).
>  .TP
>  .BR disable_ctrl_shutdown=3D { 0 | 1 }
>  Disables support for shutting down the controller in the
>  event of a controller lockup.
> -The default value is 0.
> +The default value is 0 (controller will be shut down).
>  .TP
>  .BR lockup_action=3D { none | reboot | panic }
>  Specifies the action the driver takes when a controller
> @@ -94,14 +94,12 @@ parameter	action
>  .TE
>  .TP
>  .BR expose_ld_first=3D { 0 | 1 }
> -This option enables support for exposing logical devices to
> -the operating system before physical devices.
> -The default value is 0.
> +This option exposes logical devices to the OS before physical devices.
> +The default value is 0 (physical devices exposed first).
>  .TP
>  .BR hide_vsep=3D { 0 | 1 }
> -This option enables disabling exposure of the virtual SEP to the host.
> -This is usually associated with direct attached drives.
> -The default value is 0.
> +This option disables exposure of the virtual SEP to the OS.
> +The default value is 0 (virtual SEP is exposed).
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--sqmjtofrcttqwipw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUTbTIACgkQnowa+77/
2zJLCBAAjUKmDLMy7ch3JPJOlUeb3Ybixt9S6LxB9WMAvu5jOkMvn9g8xa06xfP0
s1d1yhZu6J0pBwaHHWZvnaDVP26gr24N2vWptkxd+r94PZbGCGaq2Fl+mXmWYUMn
UaYRBYfTZogDVZtAi24d+GjvMpxwdbZFRXCHD2UhEWI5u3idFdMMQ11r5KCXC+N8
7H/shrtqKPSEr9zrvUHKPhC9Aty2D1XZiNU8G3Ugr1/KYLilQS/wZjXpXVCi16g5
SWWb8T7BkMXswWRX45AG3PuEE31gkG09FV6BY0keRIChvFds3cR9On9blfgqTilm
eMskklYlpFNugL46EqoXitN+gXuHTXhfuOTkr+8iW89BJaKF6nvJ/Fm3IOH/oS28
hzXm6/E/7vEVd65J2VoPdfOhPpaO+x/H2fz85NRrKtTwMKexrIa0GZc2fgNaImUX
wFAxEUfhnSjDKEhjgJ0duHVGLyGuniOQ6xdOnxxBN74FJyf4cWgsmHDQdx3mQzBE
106vy3g6LpaftO10piP/JPr9H+bDyHyTYEQhWlb/lXipcIoNSXpmjBkuz8pnPkza
Em/4V9tz4Tps6Pw/Q4eWgOgEnsh11yRBMr95vjEEm7HseYysWcXGpViuyYUWYB1n
5jslar8av0AVBw5rHCC76uUB74Ns9jiAoNW4HHpS6jQuMsdkMFk=
=JHbh
-----END PGP SIGNATURE-----

--sqmjtofrcttqwipw--
