Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 208AC7B5E33
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 02:28:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjJCA2S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Oct 2023 20:28:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbjJCA2R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Oct 2023 20:28:17 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11A8DA9
        for <linux-man@vger.kernel.org>; Mon,  2 Oct 2023 17:28:15 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08FC8C433C7;
        Tue,  3 Oct 2023 00:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696292894;
        bh=mbb4DNKiHM6wakUgED/jGfzVsHAdbjiTjOUz8A863l4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=O955awGRfEg7Vq3Q9PrOCzEO9U1+L7iNcxrp2lT/uv6OgcFOT0mFmLUvqkQn++Kqu
         vTKDEzruEvkGDEpzp6ByLefqEcHkPbb64OYkK0/UFIlMqQ7ua+RqUWfywJfb9ZagIz
         BZPNT0gz/agdQJ7ejQbvWKjH++nRRIg7iXO0Qr4YXvRRxRkXgol1r6q0gPyOxuxLNU
         cKdgRgQDKWBFSdfz31SPmH7R9KnZu9cZMzumybobTC1uRuacSW5k24G/TljA9V6uxX
         bcXpd7FTCu/qod2mJiLFUD2E1VA3lICXc83EM3XrW4owdUiMkFux34fG2K40ph00Ek
         1BWWokF/C2QcA==
Date:   Tue, 3 Oct 2023 02:28:11 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 3/5] smartpqi: update host attribute descriptions
Message-ID: <ZRtgG396-1Cj4gn2@debian>
References: <20231002195404.153182-1-don.brace@microchip.com>
 <20231002195404.153182-4-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cdyIJM00ejUi9sNk"
Content-Disposition: inline
In-Reply-To: <20231002195404.153182-4-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cdyIJM00ejUi9sNk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Oct 2023 02:28:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v4 3/5] smartpqi: update host attribute descriptions

Hi Don,

On Mon, Oct 02, 2023 at 02:54:02PM -0500, Don Brace wrote:
> Minor description changes for host attributes.
>=20
> Just some small changes to the host attribute descriptions.
> Remove the "version" sysfs entry. This entry was changed
> to two sysfs entries: driver_version and firmware_version.

Should we add a HISTORY section and document the old "version" sysfs
entry there, saying that it has been replaced by those two entries?

Thanks,
Alex

>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 21 ++-------------------
>  1 file changed, 2 insertions(+), 19 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 34864e60755b..c51405c8b9cc 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -135,29 +135,12 @@ The host
>  attribute is a write-only attribute.
>  Writing to this attribute will cause the driver to scan for new,
>  changed, or removed devices (e.g., hot-plugged tape drives, or newly
> -configured or deleted logical drives) and notify the SCSI mid-layer of
> +configured or deleted logical volumes) and notify the SCSI mid-layer of
>  any changes detected.
>  Usually this action is triggered automatically by configuration
>  changes, so the user should not normally have to write to this file.
>  Doing so may be useful when hot-plugging devices such as tape drives or
> -entire storage boxes containing pre-configured logical drives.
> -.TP
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
> +entire storage boxes containing pre-configured logical volumes.
>  .in
>  .TP
>  .IR /sys/class/scsi_host/host * /lockup_action
> --=20
> 2.42.0.296.g493f462273
>=20

--cdyIJM00ejUi9sNk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUbYBsACgkQnowa+77/
2zLGtRAAkurM1yWZWl6Xddu/WqbVJEJ8CGIQKAZYS6jzr4MRQnZ9Yp0zavxSbM7J
Xxikwr9B2gLRRKKqTitUVQmUJCkVIYcubFFH10mgbN9C3F7Y16Owhi8jwz6ilRvR
etYVP4XhkXLEE3UKkezcpyJfIeAdFuOnINpFIJYSN54156Tw/oa2zPdzfnSSH6SO
mE6FK8qO4kvyh0VViY25cMvqk0oXaaBfBihP+akB4XW/H4nP7bgzYBC+Xk8FHgbt
zsGmfFYQT1eDMFpD4Nk7VESiQpGWDXnOvi+Ve91D1CL+a443ND9YFRPYvQeRpzgg
MiduIPpf6WlrwcA+y9BWZdZ4Y8qiJ58TWW67Q4Eu29lGlNcEdLq8P1mSuuWUjY7P
8eO4Ide919XXlPvQXfnEXTMYfUbDzvdeJKRveTaSP3YHt5IqNk44x1/cnd2nDBQI
656AK0tXGTZTLou5Jy6spMJOXf1Y9/WGhm/bs1l56Jd6qXSRgXuCy9Nte0/2Fo4C
54zNw5dOmvNel7Ze/r5TvOvkoD4HhjEvl1vbBGDZwltmTv1NtcErxIB2cRTgMnVs
CvAVdO7o+0z/gsjy4L8blN5S8jcnZBo4x98tWnEG09KAkQOjCmZZtjTQ1nOdrNfw
WEVJn/v8784DU/BiiFEw6NoLtne6N0JiGvj6qalQJagPzNRYuBs=
=qpIQ
-----END PGP SIGNATURE-----

--cdyIJM00ejUi9sNk--
