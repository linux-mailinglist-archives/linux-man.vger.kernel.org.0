Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF9D77B3CEC
	for <lists+linux-man@lfdr.de>; Sat, 30 Sep 2023 01:16:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjI2XQZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 19:16:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjI2XQY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 19:16:24 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41488E5
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 16:16:22 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5D68C433C8;
        Fri, 29 Sep 2023 23:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696029381;
        bh=caolxdnpzrWScc+ymLOA51oRUSihV2HoJf1OVU1/50M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Wt4eik+4ggEICKwEdJlsxCG6/1K2drWYZmm079wb8c++QEhC4dccIIblrRj2lvqV2
         RFiF4zIC99ab7JQPz+ZlEI8mFof2rRAOwgEqH1KoBGfIV5H+qkGNbKwxvQzB1AKe4n
         Wata0cmJcNoHZ1b17a8s7bhJFhoZWlUoHj2ERNBiUmJm7suREkmZHjEk9V0hAUmh9P
         RBozOycu8RbfaCqiAlzIH2BS854hjkqwTgZc8lS8JibXuFXzdhknG/jz75tbvFZHdX
         H1zWFmWqfBtePZuGK8y59Nhks1MQdmiVW+z1oXZmvfUR/pWKqQIlecOlWZuyTmGqNe
         UVTiFHdbcP4fQ==
Date:   Sat, 30 Sep 2023 01:16:18 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 07/10] smartpqi: update device attribute descriptions
Message-ID: <rmqvlzfx5nwkwkgcno6d6qr7itzpmnmjte3ok765mh3vtvzase@n2e5b2l6jyjl>
References: <20230926191206.627678-1-don.brace@microchip.com>
 <20230926191206.627678-8-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yxt2njv5gzdctitv"
Content-Disposition: inline
In-Reply-To: <20230926191206.627678-8-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--yxt2njv5gzdctitv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 07/10] smartpqi: update device attribute descriptions
MIME-Version: 1.0

On Tue, Sep 26, 2023 at 02:12:02PM -0500, Don Brace wrote:
> Small updates to device attribute descriptions.
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
>  man4/smartpqi.4 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 165eee6848c3..635b3fa185ab 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -250,7 +250,7 @@ is the logical unit number (LUN).
>  The
>  .I raid_level
>  attribute is read-only.
> -This attribute contains the RAID level of each logical drive.
> +This attribute contains the RAID level of the logical volume.
>  .IP
>  For example:
>  .IP
> @@ -266,7 +266,7 @@ RAID 0
>  The
>  .I sas_address
>  attribute is read-only.
> -This attribute contains the unique identifier of the disk.
> +This attribute contains the SAS address of the device.
>  .IP
>  For example:
>  .IP
> --=20
> 2.42.0.158.g94e83dcf5b
>=20

--yxt2njv5gzdctitv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUXWsIACgkQnowa+77/
2zLcPBAAhaX7XXwPKVCH2oSrN5DXL3QNfazv99+OJzx+MNjhzMfkYlsZbHaxXrmp
oWziHKjU2WN0iTHzR4b3JlJSK3UF3e3eOFRAA5ucDa8nN13vDpbwmnXecSI8Qiav
D75EKWLp8ErvIhT/Q/trpK/qNAoRksAKkT/MRDcEP05sWw5kdzwM+yY0/K4BxYTs
7X9vxZyu4mJ7599xOfJLre5q5BPEfKZ5JqOWAkjhdjUQHbOYlVSk0cbcx/vZ5VS1
E0utmB5EHHYjHrhbF6e5MazbDzU9AOi+JRSWv6XbqaI1owgMIAQ6MIhZjpikqw1+
W7Nu1LxEYwq0LPtLUec8hf7Jo59ddJENFNwsHVkVyfad1Xb6pwIDGM7+ELNuvGn+
1DHdws+gr+AsPT3rEILTNdhTHkZUT0qWlO0floRza78nDdIbyrxhC2LLNWEOzROl
LbFSsJNI1qhj87+jCSR4ePd3FipUh4o0RkCdTnkehWfIPqiQynCQmAYBlIYgCIU3
S+1hrybIChQjCrxgBT8hIVSMR9dz+rWLBILEi7OVw1NpjMwcOCG6ChNysHEEGjaM
esf802rkTXwOqPmYhF6zEiWrkUBWnKX2oKquxXL5FOs5QMP0P74Fguey0+p6Bl3k
PfNavB//zVuQCE1CZcorKZ5MGcDFk/+CwxA5lWreLmwOhcqnYCI=
=2UhZ
-----END PGP SIGNATURE-----

--yxt2njv5gzdctitv--
