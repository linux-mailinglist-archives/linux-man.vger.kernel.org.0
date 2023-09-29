Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08DC07B3CED
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:16:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjI2XQz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:16:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjI2XQy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:16:54 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02C81E5
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:16:53 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC635C433C8;
        Fri, 29 Sep 2023 23:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696029412;
        bh=NVW5ExzGk8Bafj1i5shAAHxUR7i3BqOtKqCODez+RF0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZTe3Ep+ioSarcKle3Jf9u/GvwRwFaKODrmDcQqk/Or16KWHdWz7JWbfr2AwwM9z09
         plDHpBQjV0XLyjqRrFMtAOgAfb3JdEjdQBJKvwNg8Z+uOzWQhhdzB5xDcVNJ15cRRr
         9GUUkjx0rQxWVR9WwinFfgHKZreragRDSIa02xWlrPDQYxWc6y5U/qFHKtIWZFj+Bb
         1r2z1BUzDiypItr0FYYtWt7s2+Gio/WLImwjudZAFYd4OGSN5JmJ1s0tgL/kM7Ew0q
         XMGXsBuN/sqZDCvoQpIN58w2YEFrze9O86Elb9ssssVVB5AFX32lOKwAIiqgc8Bn3H
         0EGvjFhH+FHxg==
Date:   Sat, 30 Sep 2023 01:16:49 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 05/10] smartpqi: update FILES section
Message-ID: <fwpvmbussvf2zzug5bsqhrd7mvwcvdllvna6a4ngke3hw6w5am@b4icgpgirck4>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-6-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cqjudtxknvhcbg4b"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-6-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cqjudtxknvhcbg4b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 05/10] smartpqi: update FILES section
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:12:00PM -0500, Don Brace wrote:
> Minor description changes for Device nodes.
>=20
> Change "Logical drives" to "Disk drives".
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Please resend rebased.  It doesn't apply.

Thanks,
Alex

> ---
>  man4/smartpqi.4 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index f04472836210..87f6990f2455 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -115,7 +115,7 @@ for controller ready. The valid range is 0 or 30-1800=
=2E The default value
>  is 0, which causes the driver to use a timeout of 180 seconds.
>  .SH FILES
>  .SS Device nodes
> -Logical drives are accessed via the SCSI disk driver
> +Disk drives are accessed via the SCSI disk driver
>  .RI ( sd ),
>  tape drives via the SCSI tape driver
>  .RI ( st ),
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--cqjudtxknvhcbg4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXWuEACgkQnowa+77/
2zIrzA/8DiYPIOOgdAYRbG3qtcsGw/Dcadwrmg77J60neSXIiem6csuADApWVxp7
ZVKo++k9ykVfFSNV2MTnDJPWNzt7Lf5I/XuajpztsnPs8g7Q2FQAetan+EVCodzW
fT3ve4amObNsajrGBLmJCoGWZY1K8KI9AvZbmQtodw/XrVGI4oLWU8Fnf7fsIIsf
QmIYZhtwkKxiH+fO4/EdbbxAaX8RETaFG57E6c4YQ49PpVDJAK3Lqpv1MFjs6K2J
6dKmgraEihtelTA/K154DWut+rV5xA/sRmj6NzATbxfexxAmaM4hV24IjYuCEmwp
pYJdkwHK0kelMAa29eJQCy3W+PlHcFehM2k6KPpIgCmseDg05RAXfhZ8UzOUhuxc
ihvCFv498ZhgajK+9NX0DdelwgJ7D8XsspZvQixSzvjhvD8KrKrZnKFihRcmQ3bK
d9w2DigqRANxESAXAipC/e4i6BZisyGFWxHBGhiP5Q78LKSZbhNsaY244XmiS6yL
sOrphmqUC5A/YA9HzW7JTNnTb0dJVB+sScT1pF9fpdWDsuXX8WkMG+zZIFoz5mqE
vA91R+YAwqsbjFguQ71Na1y/Q2FEEcHAVMfsRa2AURsr7iJw79R7UwBXwFLSgxyf
8o7wUHUWUKJCty4fqzIkbLU2zs0F0L2pREafg6t6VwIvc5FS6qw=
=xGSb
-----END PGP SIGNATURE-----

--cqjudtxknvhcbg4b--
