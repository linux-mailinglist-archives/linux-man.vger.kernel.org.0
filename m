Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 951E97AF7E1
	for <lists+linux-man@lfdr.de>; Wed, 27 Sep 2023 03:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230363AbjI0B4p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 21:56:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233728AbjI0Byo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 21:54:44 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D934272C
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 16:40:50 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6578FC433C8;
        Tue, 26 Sep 2023 23:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1695771650;
        bh=cGtCVjAug576hfWQlt0pxV28sKm1Y6L2YxGhNSNp8QM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uFuqsizvDOL6iqw+H7lviAjfDr1Ux+E8e1JETsHIKA0unohe1D9BzFPNbYYPfrjNR
         pDmW9WTfQRa2UMNb+z8WzZSU2DWq94Kd41T5y0LJYZFeaxK0GzsmN4l0H4NGTNDtaF
         qBsFehInPy6QLD8iylaoYpz4/CKrawwaug7dNDIENG0QuSakNtNsu+oIHZc7dSZjuy
         LaN4ChP12wexExQu4YQ4W1T10omqV9AiS4U2wzwt73a6L7UycypqW+D846DKzuYoE1
         Rfgu5BJq9xZukwFOBL2WTzToY9Olgqp8ZlR5QheLIX3BooWuw/1ouNdw/H8P/YiGnJ
         XwaHnOuyVV6zA==
Date:   Wed, 27 Sep 2023 01:40:47 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 01/10] smarpqi: update copyright and email addresses
Message-ID: <zrmmburws4bbyimeq7jxwctw7fj5cbizygnvs5xtzfloydsidx@dmaer2lxegu5>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="234osgol7ztsjech"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-2-don.brace@microchip.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--234osgol7ztsjech
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 01/10] smarpqi: update copyright and email addresses
MIME-Version: 1.0

Hi Don,

On Tue, Sep 26, 2023 at 02:11:56PM -0500, Don Brace wrote:
> Add Copyright entry for Microchip.
> Change e-mail addresses from Microsemi to Microchip.
> Change URL to Microchip.
>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>

Patch applied.

Thanks,
Alex

> ---
>  man4/smartpqi.4 | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 147d53fc2a0a..463976f88cea 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -1,13 +1,13 @@
>  '\" t
> -.\" Copyright (C) 2019, Microchip Technology Inc. and its subsidiaries
> +.\" Copyright (C) 2019-2023, Microchip Technology Inc. and its subsidiar=
ies
>  .\" Copyright (C) 2016-2018, Microsemi Corporation
>  .\" Copyright (C) 2016, PMC-Sierra, Inc.
> -.\" Written by Kevin Barnett <kevin.barnett@microsemi.com>
> +.\" Written by Kevin Barnett <kevin.barnett@microchip.com>
>  .\"
>  .\" SPDX-License-Identifier: GPL-2.0-only
>  .TH smartpqi 4 (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -smartpqi \- Microsemi Smart Family SCSI driver
> +smartpqi \- Microchip Smart Storage SCSI driver
>  .SH SYNOPSIS
>  .SY "modprobe smartpqi"
>  .RB [ disable_device_id_wildcards=3D { 0 | 1 }]
> @@ -19,7 +19,7 @@ smartpqi \- Microsemi Smart Family SCSI driver
>  .YS
>  .SH DESCRIPTION
>  .B smartpqi
> -is a SCSI driver for Microsemi Smart Family controllers.
> +is a SCSI driver for Microchip Smart Storage controllers.
>  .SS Supported \f[BI]ioctl\fP\/() operations
>  For compatibility with applications written for the
>  .BR cciss (4)
> @@ -311,10 +311,10 @@ The
>  driver was added in Linux 4.9.
>  .SH NOTES
>  .SS Configuration
> -To configure a Microsemi Smart Family controller,
> +To configure a Microchip Smart Storage controller,
>  refer to the User Guide for the controller,
>  which can be found by searching for the specific controller at
> -.UR https://storage.microsemi.com/
> +.UR https://www.microchip.com/design-centers/storage
>  .UE .
>  .SH SEE ALSO
>  .BR cciss (4),
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--234osgol7ztsjech
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUTa/4ACgkQnowa+77/
2zINRQ/+M6PLVw7VPLq66tvnnaQIOi7P80A785N9LZZIjhPYKxBdGhXmLL434xU+
TEflX3seqDsvb0AnFhgzUQS9ZoyEnX2xuRwzTidXaciSksYgxfY1C7n1WTAJdQ3D
i4unHL3qSpg1btgZr9euws+bLcekj7JAQXbWfqtfykiQmDhH36Bo/AxCnbp9II0W
yeqK6emwNHqAJY6pj+dsSsJTXudQ1FBQ0CLbFfCay9ocEVTuxQyMt9NDZ20PgYxe
u6dEi1foM1EvuTJ9rcNOKhjv5QcYIyTJYDVkMetJbdPrP9WIklyMPfgf/JJfsDes
FVTPHMZcGJuqxb+DVkcuL5pow608fdlaUfOp4q+7dIQfsKYqWrsLofF8+nlVcgJg
cWAdVUehGrYODgZNn1XxMioZJ+K+MHIGBjYDokl2ix2IyFWX1H0PFN9GSvfYaO9r
riLFBPhHQUCALoMhlkPefA5NaN6Xw940sU+QVJI6YIlnd9XIkyIEF0asWC0Br+w1
e9Mvsv+HgvnCre6APt61CQkvxhQOEYu+ela6jYjOTPk0zsDs+0AgEUOU3Q1LcUYY
vFrVG07iJqPWdHhbKSNEXmEduS8Yp+z+jCZq2pIgoN5+aUYxZSZO7cwyt0oBw+/s
TkZR8cpt65Xo8WkcAhlE15yKX3M9XvOWoupQ3WZ58LvTsoaymZc=
=BFM+
-----END PGP SIGNATURE-----

--234osgol7ztsjech--
