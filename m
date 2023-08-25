Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C675788E94
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 20:23:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjHYSXO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 14:23:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231683AbjHYSXE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 14:23:04 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2E822118
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 11:22:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 50E03673B0
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 18:22:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 343F0C433C7;
        Fri, 25 Aug 2023 18:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692987755;
        bh=kk6rzBXPJMf23JwIfBxYsDk67c2Los65FY2wWYr4ObM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=cpKifcdCRqB55qZTiordVvdADbkQqu0nbekSzgNMyFXiQMJkVD47O3uyYELf5WSln
         7x3UNVp18Hv6+ZTPP9Il32uxPllNV3xTKyHkGEwZ4OCI+Mgf/3j67gOfQaNojApWHp
         k3BPXM9JfHRb1y6vMc0V1ErTSyn7VqmDp9To2zZAfHzof2OPRzOIwXImWtxHq882zA
         v08aNCX+zMA/8QHIF3ZcU7nIWgT+B344MQnd1Uy6Q8404+EtrYyQUvgPRmeDb88XEu
         z+1GD7GDYPCkefnvYgpuK6nkdegFsfRkz5w9DqLfMiCz7lIzVASE/psNFGOJEh59Mp
         eX2x0tmMxkv5Q==
Message-ID: <43e97621-7f0f-032e-ce04-3f3cb4dce159@kernel.org>
Date:   Fri, 25 Aug 2023 20:22:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH] close.2: Warn more clearly about the risks of close(2)
 and record locks
Content-Language: en-US
To:     =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc:     linux-man@vger.kernel.org
References: <56472a7881dd44f18ad642ab978b705ef08e1651.1692717623.git.tgolembi@redhat.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <56472a7881dd44f18ad642ab978b705ef08e1651.1692717623.git.tgolembi@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------FvV3lghfmXRlfJ4BElcorWU4"
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------FvV3lghfmXRlfJ4BElcorWU4
Content-Type: multipart/mixed; boundary="------------nHnyFe1GpNrT6Uf0TdoWihC6";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
Cc: linux-man@vger.kernel.org
Message-ID: <43e97621-7f0f-032e-ce04-3f3cb4dce159@kernel.org>
Subject: Re: [PATCH] close.2: Warn more clearly about the risks of close(2)
 and record locks
References: <56472a7881dd44f18ad642ab978b705ef08e1651.1692717623.git.tgolembi@redhat.com>
In-Reply-To: <56472a7881dd44f18ad642ab978b705ef08e1651.1692717623.git.tgolembi@redhat.com>

--------------nHnyFe1GpNrT6Uf0TdoWihC6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tom=C3=A1=C5=A1,

On 2023-08-22 17:20, Tom=C3=A1=C5=A1 Golembiovsk=C3=BD wrote:
> The consequences of using close(2) together with advisory record locks
> are quite serious. Make the warning more explicit.
>=20
> Signed-off-by: Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>

Patch applied.

Thanks,
Alex

> ---
>  man2/close.2 | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/close.2 b/man2/close.2
> index 68211bc58..f8a4ccc2d 100644
> --- a/man2/close.2
> +++ b/man2/close.2
> @@ -32,8 +32,14 @@ may be reused.
>  Any record locks (see
>  .BR fcntl (2))
>  held on the file it was associated with,
> -and owned by the process, are removed (regardless of the file
> -descriptor that was used to obtain the lock).
> +and owned by the process,
> +are removed regardless of the file descriptor that was used to obtain =
the lock.
> +This has some unfortunate consequences
> +and one should be extra careful when using advisory record locking.
> +See
> +.BR fcntl (2)
> +for discussion of the risks and consequences
> +as well as for the (probably preferred) open file description locks.
>  .PP
>  If
>  .I fd

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------nHnyFe1GpNrT6Uf0TdoWihC6--

--------------FvV3lghfmXRlfJ4BElcorWU4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTo8WkACgkQnowa+77/
2zJfDA/+KSCJrS5rCUa/SkBCXRjMJX723dfDOV5MhL6gPt988gLkiaxCU6aIjGew
yq5Jq9VOn0GL+Em48a9VNDVVnGjlnXdtw73k48Yxdl+6WVtfczNF+e7MqrDRSHW7
agedhFUCBf9XiLzaTCNpOYexX1+s1wq3CDW23S5SFok+OwDq/eUsX1T1pbbY0l4T
XWp1X0pQ//2MH3r+Z+Jc6RYvVswdm6Z2Kyp3HOE2KsB2uDMOWQuffjwdxNdW4+Uf
zGHBn/KM3tz7kuDnCHqMvbmxA8uJ2xwegETv2jcUqfDjwut98vVjdCz2LT6kImle
RkZq4aRuj4gIoNH+BXGE4C0HrXdO1S83U5zbDLekoSCRIuOm2zrxhLbpyE/ISonH
QH6LTMAGgCb+KSt6sFCDJfkL+MoIbTPa/fDdoouyl+ADWvYNlC1h5d0glxFsk+vj
Atv8HeikjL6D+hNLDX/QqGI539okuoFi7aVR5BzX0Mn6yhdN8XN8iBR318NZPkHL
+iDPTW1c9w6JqPk2LcJGxd/BXRuq5HRRIauXfQGoTh2P3zynq3ACSndJTVLCIVKN
MlATGVI29dHiQwkRRhencQxdNWWemv0Z6QNigqag33yNjaT44esOyCXvW5XCKfzt
FPjRU/RZRw4x09kDLL71PnMaFz1WWitoq+6znzdWW2eURfY9ZgY=
=hSHo
-----END PGP SIGNATURE-----

--------------FvV3lghfmXRlfJ4BElcorWU4--
