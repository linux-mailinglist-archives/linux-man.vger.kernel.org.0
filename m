Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BEE77AF77F
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 02:40:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229615AbjI0AkO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 20:40:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjI0AiN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 20:38:13 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DB692107
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 16:50:15 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1058EC433C7;
        Tue, 26 Sep 2023 23:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695772214;
        bh=fzm/LH4B3vKYBioEgu02WYvkip0YyEQNkdCvP3dZZLs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=p32yX03L7J3Y15jqvltn3lKnQpnLukN1IyVsNSvWBp+5wfXRyEhS2t4T/EVACJSSy
         xPFD+qUlD8Kz+X+jD5fs9Xa/sPFKeJYi0tAIHYztdtns1QpWNlFDmp3dWz0ftRkQwl
         9q8iUqiPvBD9wjil0l8KPCOp69FEuP/k5RXhuKc+p8Q1L9ZLbn9/5j5wZ1HXdgPtnx
         dknGzMk+qLcYRhPY07PAL5tmLOK/LV8D1EPSB2tBl120J3EE5vyQbZthsN7yXxQEIl
         /hAv4q5mUrbdnYOs0O2rsqfI5Q5lnw/lYlz3YNVz6EMlw+0MhazPmE/hMMIDwpl3Sy
         2HN4MXGcjm2IA==
Date:   Wed, 27 Sep 2023 01:50:11 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 03/10] smartpqi: add-module parameter
 disable_managed_interrupts
Message-ID: <qjoscjfnrpcobzsghb6su5h64qwhdtzmst5o4iyhpcm7mifmvp@3kqt7qjlfp2g>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-4-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cfoef2bawhxwmysp"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-4-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cfoef2bawhxwmysp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 03/10] smartpqi: add-module parameter
 disable_managed_interrupts
MIME-Version: 1.0

Hi Don,

Subject: Re: [PATCH v3 03/10] smartpqi: add-module parameter
 disable_managed_interrupts

I don't understand this subject.  Can you please rewrite or explain?

Thanks,

Alex

On Tue, Sep 26, 2023 at 02:11:58PM -0500, Don Brace wrote:
> Add in a description for module parameter disable_managed_interrupts.
>=20
> This module parameter allows users to change interrupt affinity
> by echoing values into /proc/irq/<irq number>/*affinity.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 428d79a19840..613ef330aef1 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -16,6 +16,7 @@ smartpqi \- Microchip Smart Storage SCSI driver
>  .RB [ lockup_action=3D { none | reboot | panic }]
>  .RB [ expose_ld_first=3D { 0 | 1 }]
>  .RB [ hide_vsep=3D { 0 | 1 }]
> +.RB [ disable_managed_interrupts=3D { 0 | 1 }]
>  .YS
>  .SH DESCRIPTION
>  .B smartpqi
> @@ -100,6 +101,12 @@ The default value is 0 (physical devices exposed fir=
st).
>  .BR hide_vsep=3D { 0 | 1 }
>  This option disables exposure of the virtual SEP to the OS.
>  The default value is 0 (virtual SEP is exposed).
> +.TP
> +.BR disable_managed_interrupts=3D { 0 | 1 }
> +Disables driver utilization of Linux kernel managed interrupts for
> +controllers. The managed interrupts feature automatically distributes
> +interrupts to all available CPUs and assigns SMP affinity.
> +The default value is 0 (managed interrupts enabled).
>  .SH FILES
>  .SS Device nodes
>  Logical drives are accessed via the SCSI disk driver
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--cfoef2bawhxwmysp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUTbjMACgkQnowa+77/
2zIZvhAAmjJaZoTQpv/nP4YTGP29WcPAzSct0jilEynIBzP9zXuzi6XQv3iT6khT
CQmIXs8EYfpMZ3LcrfbC50ofDYsisolQJzbyGar+hpmN8zMvJ0LwT4MC0DyilxHj
1jlk97dVRNIbhMDC3vvAjRYDOq8F1m1C0YFHWSmY4f0nizPgAK+b62Grf9dBkG9E
XKjaR6w79u/6mT0uDfQIpPyC9bqcyWHz05e7gnMycm+gGyHv9p0ZS3Sp0HZSWMbo
y1QvmZttJ37V9t0qOJAdpj+iRmkY3r9XsRP7NscURrUlGKf6qoeP7wPp/D3FGDE9
Ez/6CEjpTOPetyruHdd0/UzQ2h0kfitrGj/YyLzg5TK1fzPH56wIp002ulBdV0Oq
XnNLKCqOvCxNJ0bou9DL24a1I1eaNyidiq+YuD+swQLLei8TOY/SB61ntUMsmpbx
+RWuElS5jNSFHcxcHFfVVJI38792qiXdmrM4/O8hpsTM7K/2oTytCWe9jZ8u+1Jn
+yI4RmD9iuWf/CLA05bhpVfHPFR+5LyY4/5kKdRrZeGdcOYsj7CsqMIA7C2S75CK
R4WoLIlZmtRK9mKGGCQAq0l5rHRZfOD2D2zdN7xnLXEJYiSg7737Pzs4gUQztQKE
j4OJIiaiRwIvNqm94ARp1nekpsIfIQN1igCD1tQ83cMsXPLPSvY=
=kBDH
-----END PGP SIGNATURE-----

--cfoef2bawhxwmysp--
