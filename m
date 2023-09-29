Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 782407B3CEF
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjI2XTV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:19:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjI2XTU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:19:20 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4F3BE6
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:19:18 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7687EC433C7;
        Fri, 29 Sep 2023 23:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696029558;
        bh=Bjkj9JTmFrueo0VFI/EZgvkm/ehpZC0n8X+fb91BLKA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dlUseRUj/d2ngnrbfVqDhfaE61uNfYB8c9pqpPuzpTfJlXN7kDSBQYBOYiC1cX+ZN
         QPfSpauKMI29uz2JS0WfSIcZBQX4Zerq8ylDLq7xftZ2OT/DtNrjpL603nAyaqo6Jx
         iMYDXDvrD1cEtBkZiT7OeExWr1wAVh+hSpwRO/spkus2+fe6KtB8NS1RJCoVgn7zVx
         cwPi6aXde47MiyczpVuXBJRiIFmc+g2jLM6JE2F2qfvMFLuk/IT855mMRE+J9mbCsn
         4zKArnZAFaiSF+zPLPpvyYUzJuiSnb2YvIg5UeE68cPa5OczMdLjlswX4zD4FMQzLU
         jWgigbL7DiZzA==
Date:   Sat, 30 Sep 2023 01:19:15 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 08/10] smartpqi: add host attributes
Message-ID: <nbt3jt7busx6akj7ykaxs7df6vlbbxtvcdy4ckvlp7saol3djl@rb6ckz3lzzot>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-9-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="k36dwxen2xhthj6f"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-9-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--k36dwxen2xhthj6f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 08/10] smartpqi: add host attributes
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:12:03PM -0500, Don Brace wrote:
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
> ---
>  man4/smartpqi.4 | 57 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 635b3fa185ab..19708a01f531 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -235,6 +235,63 @@ $ \c
>  Adaptec
>  .EE
>  .in
> +.TP
> +.IR /sys/class/scsi_host/host*/enable_stream_detection

This should be .I, not .IR.

> +The
> +.I enable_stream_detection
> +attribute is read-write.
> +This attribute enables/disables stream detection in the driver.
> +Enabling stream detection can improve sequential write performance for i=
oaccel-enabled volumes. See the

Please don't go past the 80-col right margin.

Thanks,
Alex

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
> +.IR /sys/class/scsi_host/host*/enable_r5_writes
> +The
> +.I enable_r5_writes
> +attribute is read-write.
> +This attribute enables/disables RAID 5 write operations for ioaccel-enab=
led volumes.
> +Enabling can improve sequential write performance. See the
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
> +.IR /sys/class/scsi_host/host*/enable_r6_writes
> +The
> +.I enable_r6_writes
> +attribute is read-write.
> +This attribute enables/disables RAID 6 write operations for ioaccel-enab=
led volumes.
> +Enabling can improve sequential write performance. See the
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
> 2.42.0.158.g94e83dcf5b
>=20

--k36dwxen2xhthj6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXW3MACgkQnowa+77/
2zKM2g/9FLc7BkvNe1BT/kMuNscbdF8nx04iDSO/cMflWIkYz7epbb79Q4ooT/Ky
HM8xSYAXcDHqSv2+wQWTUdy83tV5o7bh9FCIPCH4sHiN+2W27qSHQqjV7mO73g3T
qb9Do219uqrz7f31iQaVHU/m08e84uCyMyAkNB4ciXyMXZWhtgHlRFjVFc/8pykS
7p+gKhXtKHMJxEXkS9ESirk3YHthi9CCsaQeaLWLfhIAQvTajEwZpILaJaBURyRv
gjuSH1Y13AqJ4PE39QuTG+eAd1tEHScX2mZw/OjmKCOKuI8mM0LxVI60N7rUoy8V
CaJ/j7x1TwyXW1i03QKfIBFniV+ta9S+alj/D8bH6dgreoWv5G6OZwREPmlcSMw5
LUVcJm5Rm4R0bFs9gJ7UMu9qtMKeUv/ji015z6rfYTooaBja3xtawLHBnP2gdSWq
UaIwVr6rSGcr1QCCxCKOM3iLpb8ZTRSoiqWnXcKdZqJLAWsChdJ7U6GPfYnqd4PL
F1qlkIhBCS3ErgXarVu2A8Lu1SFh2F0kxqonLz9HVawypSenxKr2Hgv/t1lAHwWd
Ix+S2YlXOWHCoT6ewKa/K8LhbJVgcs5rsXB1inreVU7UsXaY/wgZkb2n15BVXzXC
yxD/XVB2gMtMiB95y+gRfc7hHlTlWa/VZVH3uXP9RMlhjeYOggg=
=ETuy
-----END PGP SIGNATURE-----

--k36dwxen2xhthj6f--
