Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 352C67D5E90
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 01:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234970AbjJXXKJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 19:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231987AbjJXXKJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 19:10:09 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68C2E129
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 16:10:07 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5198EC433C7;
        Tue, 24 Oct 2023 23:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698189007;
        bh=bSwLvd/gnoFIrphfewBgcE4az+SSbY2EZaOof/Rzngo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ez9u55bWhZrUScerQQnsN6EZuAaCPmbo5pCcyBgPGP1oksCI0aCrPUy8uVmymX5Jn
         7uoWQknWgxTles+mCmdEzFsVZXUlqe5TRgbKn1TAxsZw3X3ixCOHCGa5oC75hvUAhf
         Kva3VqRujb7zs6RC+yqR7LtV3cFbfNlYmfrkoQAFMcUnWm34VzAxqMPXg5jyupNSjz
         f4DIbfgQA5AxUumRJ/317Cmljno7dSTAA24KoRoSMCCbVuozk9uBc0X4ZLS+nAMxab
         gBHslkjDSpcGqlMMwFQyN9wjCEhEGpUZB8FINmJPqXS6vlRRUoJms5fS5vTT+2dJl9
         4uOC4dBCHF1wQ==
Date:   Wed, 25 Oct 2023 01:10:03 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v9 2/3] smartpqi: remove sysfs entry for version
Message-ID: <ZThOy783p2lCDQcF@debian>
References: <20231024220153.36748-1-don.brace@microchip.com>
 <20231024220153.36748-3-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yombB+vuofX1DHQ6"
Content-Disposition: inline
In-Reply-To: <20231024220153.36748-3-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yombB+vuofX1DHQ6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 01:10:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v9 2/3] smartpqi: remove sysfs entry for version

Hi Don,

On Tue, Oct 24, 2023 at 05:01:52PM -0500, Don Brace wrote:
> Remove the "version" sysfs entry. This entry was changed into
> two sysfs entries: driver_version and firmware_version.
>=20
> Add HISTORY section.
> Enumerate old sysfs entries replaced by newer entries.
>=20
> Signed-off-by: Don Brace <don.brace@microchip.com>
> Suggested-by: Alejandro Colomar <alx@kernel.org>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 25 +++++++------------------
>  1 file changed, 7 insertions(+), 18 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index ea8bd5e2d612..0cb018d01fc5 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -145,24 +145,6 @@ changes, so the user should not normally have to wri=
te to this file.
>  Doing so may be useful when hot-plugging devices such as tape drives or
>  entire storage boxes containing pre-configured logical volumes.
>  .TP
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
> -.in
> -.TP
>  .IR /sys/class/scsi_host/host * /lockup_action
>  The host
>  .I lockup_action
> @@ -393,6 +375,13 @@ refer to the User Guide for the controller,
>  which can be found by searching for the specific controller at
>  .UR https://www.microchip.com/design-centers/storage
>  .UE .
> +.SH HISTORY
> +.I /sys/class/scsi_host/host*/version
> +was replaced by two sysfs entries:
> +.IP
> +.I /sys/class/scsi_host/host*/driver_version
> +.IP
> +.I /sys/class/scsi_host/host*/firmware_version

Should we maybe specify when this changed?  Do you think that would be
relevant to programmers?

Thanks,
Alex

>  .SH SEE ALSO
>  .BR cciss (4),
>  .BR hpsa (4),
> --=20
> 2.42.0.482.g2e8e77cbac
>=20

--=20
<https://www.alejandro-colomar.es/>

--yombB+vuofX1DHQ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU4TssACgkQnowa+77/
2zKcDA//WzbFO/a/b/O/Ya4wFQW944xQsHSrUzQWaiLBv2ZU0IJb+eaqgpMhpKuc
B9Ma2wxC+FhsfKq3H6ByFF+MCRvLZOsV8UwOjJxmULNfkpSPTgw0BZ8Iimfycx9l
r8obqW7f59M2NvTt/M8jLwS5+2YHS2hOS5v+So7hNW4N9duphPeMggDyvsyhXhFW
+6TwwnW/LI3W+yw0a6sD+YKnKC9c6ziK/20gwCKbP/S8byhH7eZEKxS3qKtkVTaG
ed+pBUB4/e94+5D0jv9VlDUF5Y2SSb6NUybxJBo/zc9deJpseHiljmW825vHYVd+
7O570ezXuTgTJkfjvWYsR3nA/jegfKcFf9WhCMoDmYXHUPKJsJwi9wTVb93tt9w9
/2PncU3K9gYrxQPJfVNYgCCaC83PBPhRHqG65Y2peK1NslI/OBbIVVxWGW7C8RR1
916h8Pt52Rj2dOJx5q0hvFrKatOuS6T8MBJDni3ZgriAw68F524FGIGwoZUp8yUX
oCBOhV1LGzFKDkhbqk30DWvtqGuyDrZP+HvZrTxDzehDDXyZNUpJkucjm3YMgocF
5DBO4yWUeSTh0acBS50DisSlfiL3qwiif02lOiRqPKintF6l7hcOyj9pPXWoHtgb
PiXyGxkkVmyn9dDkktVyL1+11lPIQT2+OGG1ka8VD7zeF0TqmHo=
=9Ywo
-----END PGP SIGNATURE-----

--yombB+vuofX1DHQ6--
