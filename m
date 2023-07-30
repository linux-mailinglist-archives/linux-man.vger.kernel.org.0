Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 822B27685EF
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 16:10:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjG3OKK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 10:10:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229736AbjG3OKK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 10:10:10 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2700110C
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 07:10:09 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B794560C48
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 14:10:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94655C433C7;
        Sun, 30 Jul 2023 14:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690726208;
        bh=CpNJNHz5HiObaYoDxcfS96YiwoGGpE9Kp1kK6YanyOY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=WxwD9Ag9b+p98OeCFgWct2AeYz0WGssd+0rn+iHVfUgGFqFEpTBY5nRfboPBgOijo
         SLgu5SPix/QI2ocHMhVRyuLvXqzoehi1QOPU+iowomNRC5ylVOIjCU+afztvWxR3Fo
         TWZlfIgnXn7+YyLIJ9UKmgkGW3pR966gYG8nCZ/nvEkIfz+cX2BeApH3roQD2UwLnJ
         qXzElABliXGIkcWd740yEr56giRt/xe4JPFB6vrUInNJLRDsSfF3PyrgkXA0vbHweh
         Vsi8rDRwnhpTrSfX83a6daWTxPApETWIPL1PxvCvtPAgNGrmx9nXsrSnWYoXtUN3lt
         vyeQJinuzH0uw==
Message-ID: <3df70320-72ed-e8c3-9137-aee413f2a29e@kernel.org>
Date:   Sun, 30 Jul 2023 16:10:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] pipe.2: tfix: refer to correct section
Content-Language: en-US
To:     =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <thomas@t-8ch.de>
Cc:     linux-man@vger.kernel.org
References: <20230730-pipe-ref-v1-1-813112e880e5@t-8ch.de>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730-pipe-ref-v1-1-813112e880e5@t-8ch.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3l1gFIDX8xZhsXEG8x4T4KL6"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3l1gFIDX8xZhsXEG8x4T4KL6
Content-Type: multipart/mixed; boundary="------------UF827Gktk1bN1cNhx3kAxYRE";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?Q?Thomas_Wei=c3=9fschuh?= <thomas@t-8ch.de>
Cc: linux-man@vger.kernel.org
Message-ID: <3df70320-72ed-e8c3-9137-aee413f2a29e@kernel.org>
Subject: Re: [PATCH] pipe.2: tfix: refer to correct section
References: <20230730-pipe-ref-v1-1-813112e880e5@t-8ch.de>
In-Reply-To: <20230730-pipe-ref-v1-1-813112e880e5@t-8ch.de>

--------------UF827Gktk1bN1cNhx3kAxYRE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

On 2023-07-30 00:05, Thomas Wei=C3=9Fschuh wrote:
> Commit 4131356cdab8 reorganized the sections a bit breaking the
> reference. Fix it.
>=20
> Fixes: 4131356cdab8 ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:=
 Reorganize sections")
> Signed-off-by: Thomas Wei=C3=9Fschuh <thomas@t-8ch.de>

Patch applied.  Thanks!

Alex

> ---
>  man2/pipe.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/pipe.2 b/man2/pipe.2
> index 3634a8c277dd..c05d1bf623a5 100644
> --- a/man2/pipe.2
> +++ b/man2/pipe.2
> @@ -32,7 +32,7 @@ Standard C library
>  .BI "int pipe2(int " pipefd "[2], int " flags );
>  .PP
>  /* On Alpha, IA-64, MIPS, SuperH, and SPARC/SPARC64, pipe() has the
> -   following prototype; see NOTES */
> +   following prototype; see VERSIONS */
>  .PP
>  .B #include <unistd.h>
>  .PP
>=20
> ---
> base-commit: 50301358206cfd866d0bcad7627e83a23c6af064
> change-id: 20230730-pipe-ref-326453a58bb5
>=20
> Best regards,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------UF827Gktk1bN1cNhx3kAxYRE--

--------------3l1gFIDX8xZhsXEG8x4T4KL6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGbz0ACgkQnowa+77/
2zIFWA/+P4CN6y4QDKSBC1NNSGkOzyQHGNb9qb1LvdAsPeMWA3Ns93MI8NYxddlk
0+SXD1vrZ2ZCyUuWlrv4FDkEp2BEj8JU2Fbw2UKTYMfeUaX/7G19j1QILCSlVl0i
5dnzuGODMPZ84DFTcKz59+pD0t8N537+NJknbuncBK5BBYxrM5lJsoZkOkjtwcfC
PCe/ajapV1p2c7dveIF1B8EhUy1T4VmxMpFB/WokTumf8DiUjvTTQZr+vRJXCCLF
QNtyWrs9rz+H+lXaLeCP8qPEUwQTeqdj74GbqKqoADlus6rWHYZzMPqT2Mlzo0Pi
oUuvq5tD6RyD06qFnCJyfah/zfofmYy/sWtH51xZa4FzeY7fp+GtnMAanpEJhPx0
mD0ivgW9ZP7I/AYqEdMCVaLoSl+vEVpM9r9vkqKCUB1JgH/h6WnOeAwGpmFvVU9g
Ov8VwMUmzfTaz/cLpsu6otEiCbPEchgfGUfz+T4o0X9rhtOJhw6hBYiFWPwz9DpY
8dEcPw5qPZvS3eDMkJ5tZUCzWIBZcCdkCYp6ABtmFehdonVqKHx0LCgKvqYQv/Pj
JqHQrhtx0XoxaxzOff7N1Mx5Nv68aAYHLJ8MB0PrmvvEkOm58PSag0EF+Y+SRiOz
M40j9L8bJGyhCE6k8dEN36pN2pEIklxMolLHuZKdQs6fJnL5n/E=
=mo2n
-----END PGP SIGNATURE-----

--------------3l1gFIDX8xZhsXEG8x4T4KL6--
