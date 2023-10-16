Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADE887CB711
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 01:33:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234311AbjJPXdi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Oct 2023 19:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234300AbjJPXd1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Oct 2023 19:33:27 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9C1C10D4
        for <linux-man@vger.kernel.org>; Mon, 16 Oct 2023 16:33:00 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3900CC433D9;
        Mon, 16 Oct 2023 23:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697499179;
        bh=5SV8lhacJYjdH46bjXPe9pV503pA23fHMpt4u4a1s9E=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RA2k/6RDBHN9ldvlucdOt7sss0mEfMGXbJQwlOJE2TFCsdymJUBpU23oqztLJwwv3
         ILQkLeScTQzedlLjF7QLeR5gjIh7lIRZ3cVHDSqcZgkQw51b7HdyCigjHltU2Oohef
         aZZlWWOjNBVz54yBJppGgLl1g/pdZzZltLTue6HXg6Acq7wtLRPF2EZEJYgTC+Kp+p
         v+jj37HfAxqDhtYb6s2k8xeJgT82YNjiSfCi7TqAiIcpmEwbVLSw4hpUsBPghZftZi
         dW0J8JlnedHDUNe7pEZ1oWy1WXMvMKgmN70o8I12XfqTTOC0ZfBPrJoatGH4DobQDc
         sraSH8Rw34hhw==
Date:   Tue, 17 Oct 2023 01:32:56 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v8 1/3] smartpqi: update host attribute descriptions
Message-ID: <ZS3IKF9XHOuQaMMt@debian>
References: <20231016160403.636655-1-don.brace@microchip.com>
 <20231016160403.636655-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="BHJrtyCFPrlB+3mA"
Content-Disposition: inline
In-Reply-To: <20231016160403.636655-2-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--BHJrtyCFPrlB+3mA
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Oct 2023 01:32:56 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v8 1/3] smartpqi: update host attribute descriptions

Hi Don,

On Mon, Oct 16, 2023 at 11:04:01AM -0500, Don Brace wrote:
> Minor description changes for host attributes.
>=20
> Change the word "drives" to "volumes".

But why is volumes more appropriate?  Please justify.

Thanks,
Alex

>=20
> Reviewed-by: Scott Benesh <scott.benesh@microchip.com>
> Reviewed-by: Scott Teel <scott.teel@microchip.com>
> Reviewed-by: Mike McGowen <mike.mcgowen@microchip.com>
> Reviewed-by: Kevin Barnett <kevin.barnett@microchip.com>
> Signed-off-by: Don Brace <don.brace@microchip.com>
> ---
>  man4/smartpqi.4 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 393545d3728d..1e5b6d76f548 100644
> --- a/man4/smartpqi.4
> +++ b/man4/smartpqi.4
> @@ -138,12 +138,12 @@ The host
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
> +entire storage boxes containing pre-configured logical volumes.
>  .TP
>  .IR /sys/class/scsi_host/host * /version
>  The host
> --=20
> 2.42.0.357.g59167d7d09
>=20

--=20
<https://www.alejandro-colomar.es/>

--BHJrtyCFPrlB+3mA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUtyCgACgkQnowa+77/
2zITdhAAllptnZzFxXGSnFqH4SCCFTPOHzKYGvtU1EwVpDp62ez7sRCzZrr7HhrG
/i6QEJTd5qDkQDnu5pF0BDv/KHnA7g5UmbqCCXIAELoYT2WPGdHE5exuklYWsL5/
E2EWTOzFrM3ZApnL7NPzW7fK7exArYbQEH9FpF0qUKrCZbj9lBQS73KsAnGCxHXL
pQiOXW0YGYHfO8H22NPyvjxqsG3b8vJXpOLMuvBPmsrj4NkxyFlvC0Vs8R4ta5J1
2/Zz75gVnOHTtw/S4R0v0rMAlABTtE/Kt7JYBxY0pODnEszzTG7NB/E6ZnYF4iUd
wzwfxBsAclpuejGQkNK59e9UqggF6pzNqhd01QBj17sxzSy9LggQuIGUvfKKGO/O
mwA/We2chdnAGRiuNdxQ+yOGKiWJysWVSwtuC9B6vrxS6pG5HnySSBSZrE/R8w1A
0B3WjcS2RwA221oRJ2VccmZGC47IZqqssH/ZUDBP64RyH8ZcvdZzX1pRTjgFpGYU
yzSPSc+eeX9RVo5FXhJgCSq+7RL6BNx5p65QzfaRXuodD/FMJafHqP0Arr5AY2Ev
lAsNWjEhVi/JC42W2V1OFEjfuDPmpl67BR21u2dLPNrhO4QBEmxqe+vygmp11Pv0
342gUiEgLWJzu3SpipW1OVoVSqcGC1n7isbLzk53Rif369e5ctk=
=Gw8K
-----END PGP SIGNATURE-----

--BHJrtyCFPrlB+3mA--
