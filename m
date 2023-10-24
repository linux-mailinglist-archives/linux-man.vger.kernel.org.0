Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 923497D5E8B
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 01:04:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344563AbjJXXEf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 19:04:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344515AbjJXXEf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 19:04:35 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C7110C3
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 16:04:33 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80E57C433C7;
        Tue, 24 Oct 2023 23:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698188673;
        bh=yjYXqesfDZUOr3Gb2KvDRasby2lNtSlXAudmBCAEvVo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=sUGOnoFYejkP60zv9zuAWis0GeN3YabyduhD1ASt9KJvWBFih6kTObvA+7opJWmi9
         +VMJCfhVcIq848huTtwRI2XnpEvMmny+OVrZAivK9tAJYrcI0a9j7a/jZwI1t8PLlb
         M3MM93I1vxI6Qo/E/9X2giegW6vaUvIra+7MdIvADAAFXo/qoZ3C3pBy+RRw7U1ZGc
         4UOiHrjSwp+ZZLbwjnXHqiRLcKvLleBbrHkHBhdU6EoDK+W6D50OJBmT+mW8enueIU
         idYwCHakIiGGbcWBUvtOIrkixFzub3mjlUmlRAc+bXWU69t9qPZlBXLdC+usFGyPYB
         don+4At3tblXQ==
Date:   Wed, 25 Oct 2023 01:04:29 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Don Brace <don.brace@microchip.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v9 1/3] smartpqi: update host attribute descriptions
Message-ID: <ZThNfizwQaActsxe@debian>
References: <20231024220153.36748-1-don.brace@microchip.com>
 <20231024220153.36748-2-don.brace@microchip.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sqnh0YDPJsNCLdbL"
Content-Disposition: inline
In-Reply-To: <20231024220153.36748-2-don.brace@microchip.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sqnh0YDPJsNCLdbL
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 01:04:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Don Brace <don.brace@microchip.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v9 1/3] smartpqi: update host attribute descriptions

Hi Don,

On Tue, Oct 24, 2023 at 05:01:51PM -0500, Don Brace wrote:
> Minor description changes for host attributes.
>=20
> Change the word "drives" to "volumes" to match our
> documentation and how they are presented to SCSI Mid-layer:
> as "LOGICAL VOLUMES".
>=20
> I.E.
> [0:1:0:0]    disk    HP       LOGICAL VOLUME   7.02  /dev/sdc
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

>  man4/smartpqi.4 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man4/smartpqi.4 b/man4/smartpqi.4
> index 8227f455e052..ea8bd5e2d612 100644
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
> 2.42.0.482.g2e8e77cbac
>=20

--=20
<https://www.alejandro-colomar.es/>

--sqnh0YDPJsNCLdbL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU4TX4ACgkQnowa+77/
2zKyIA/+O27SaiypTBrSCd5eRWEp8Y1ziQqJnlgNh6JOPrXtFeblATDwfFq9cx44
gV3kNHgu6lXkQynaUsyiq77+EGo10tIpgA4CxEQmwP1YTPMNcdB6UhogUhh/rRT2
LCigYRaodQzSmIlqdGUECvXXQ4ae47OsdQFVUxDuXTBAytqTe5n0d+H20xV4Jc3t
pwSw7wsbvxQ2ZEM3I8sShGs3IOEbhbv1Okssp3ayp80UUmKqJ0Gy+MKhMKeHC0du
NFNF0ve7IS1mP2Nbpx7ep28aHXIkjeTxf3ImL2u+vx1+ZWYUMZwft4Zoz7lnlo2E
JfZJNDZPeXetbUswzguzaUp2A1LRxA43lMnsnyal+S+FJf5grFpLm+yoSMBAw2Jc
RWnVO7QZ39NeSuhQZTrU55exoz6bqhKyELVerJ0uzFhC82Xxm0n6Z2YGDXioUy6O
BMiDWwNEBtxoiyAUI+EGs2Shhi2cQlyAQPSFgppelDmU74n+uwm+HQVIW1Uy7g15
SQphbSnzdymf6Fmuq3oK2r1pyHYFUnbNaAg0qhMDTIRznNqNT8IxKj7mIhORj2cc
IdtvRuYuTV40FRf8eIoqZ5ZIgsH+7NkXGBU3vFsgxnDNviyv0/9YPBY1kwUGeuxN
X0GZnh/Mm1aNxsDSh+UzDh0x0iz/BwKn7Bc3S5UsOpNta9JYZD0=
=W+57
-----END PGP SIGNATURE-----

--sqnh0YDPJsNCLdbL--
