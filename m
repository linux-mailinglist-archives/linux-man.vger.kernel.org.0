Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8D3977B6D4
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 12:37:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233310AbjHNKgy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 06:36:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232723AbjHNKgk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 06:36:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C21FB
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 03:36:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D5C1D61503
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 10:36:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 282B4C433C7;
        Mon, 14 Aug 2023 10:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692009399;
        bh=ffhtoUX/LKJSf7aizLCyrCOEr/IS82ZixOVIq46VpbI=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=iQPFuo3gP9TCMqJp3vQlCYcL5IcHFNx08NKI/7/mccgrV2nQEvptAwE3hCqgOLN12
         BGn+hTU83uuQlRVNrAOomSfxF0FuLMhztdsvB59zk31ziXGXLCiCvyVADbMWnjKcGl
         aqiI4kcebqa54wkimRtBrXQWWbLWzYxon0gfQgHPFXLqXMHX4GBnxcaQcvJBg7KSCB
         ZSepU7E3ZjVmcodn0YyTXS+k7ZplLvHwlODKssBM9zhYYyFA3WzB6g4axB15Y2Npql
         q+JC+frW4CAPsNQDYmEhy6S6c6nbPtYkFA+BPWuVU1iAlB7xmkmAbKRQgI/KX9S6/0
         ygc9K7VbYxGdg==
Message-ID: <77cb0d19-4526-1f9f-340f-9b19d2fd4406@kernel.org>
Date:   Mon, 14 Aug 2023 12:36:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] proc.5: add Seccomp_filters entry
Content-Language: en-US
To:     Sascha Grunert <saschagrunert@gmail.com>
Cc:     linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
        Sascha Grunert <sgrunert@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20230814083321.503554-1-saschagrunert@gmail.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230814083321.503554-1-saschagrunert@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------U5IS0jg00y6EJ01aMUjouj0W"
X-Spam-Status: No, score=-9.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------U5IS0jg00y6EJ01aMUjouj0W
Content-Type: multipart/mixed; boundary="------------5TTk17Su4VjNOxeC5UcHvkRt";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Sascha Grunert <saschagrunert@gmail.com>
Cc: linux-man@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Sascha Grunert <sgrunert@redhat.com>, Stefan Puiu <stefan.puiu@gmail.com>
Message-ID: <77cb0d19-4526-1f9f-340f-9b19d2fd4406@kernel.org>
Subject: Re: [PATCH v2] proc.5: add Seccomp_filters entry
References: <20230814083321.503554-1-saschagrunert@gmail.com>
In-Reply-To: <20230814083321.503554-1-saschagrunert@gmail.com>

--------------5TTk17Su4VjNOxeC5UcHvkRt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sascha,

On 2023-08-14 10:33, Sascha Grunert wrote:
> From: Sascha Grunert <sgrunert@redhat.com>
>=20
> The field exists since Linux 5.9 (818c03) but have not been documented
> yet.
>=20
> Signed-off-by: Sascha Grunert <saschagrunert@gmail.com>

Patch applied.  Thanks,
Alex

> ---
>  man5/proc.5 | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 04b45ccb7..c80b93e24 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -2551,6 +2551,7 @@ CapBnd: ffffffffffffffff
>  CapAmb:	0000000000000000
>  NoNewPrivs:     0
>  Seccomp:        0
> +Seccomp_filters:        0
>  Speculation_Store_Bypass:       vulnerable
>  Cpus_allowed:   00000001
>  Cpus_allowed_list:      0
> @@ -2809,6 +2810,12 @@ This field is provided only if the kernel was bu=
ilt with the
>  .B CONFIG_SECCOMP
>  kernel configuration option enabled.
>  .TP
> +.I Seccomp_filters
> +.\" commit c818c03b661cd769e035e41673d5543ba2ebda64
> +Number of seccomp filters attached to the process
> +(since Linux 5.9, see
> +.BR seccomp (2)).
> +.TP
>  .I Speculation_Store_Bypass
>  .\" commit fae1fa0fc6cca8beee3ab8ed71d54f9a78fa3f64
>  Speculation flaw mitigation state

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------5TTk17Su4VjNOxeC5UcHvkRt--

--------------U5IS0jg00y6EJ01aMUjouj0W
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTaA7QACgkQnowa+77/
2zJ5lQ/+MPqkVojpT3qtNWj+eO67MXsm+MMzrRzx5zROnboSXCu0wrCNwEZSb01P
bSd70XyqmLnmESfnwlFnLeyuDsUsFsfvaA7YfqRv4WoZJOQ59ghOCJrlfrD4HMuJ
bZ8yMb1baUzIXee6tLuhs71GkBicYL5fuOdicrQ86W/Jm5VTflp2eyoKpqvjPd05
yXX81Tg5O8q8Rv9bTKwZ8H8cB5HsT6NUH0whAMzcl5nXjZfzUGYzcEliom7yMS5U
GYio1DjRRVOP0Ai2if6ZTsBCguDv50E2p0MVf6h1tny65Eoh5mdQXRg1NdsFWanJ
P9EMph4TL4BEEfjpSlOQS4AnPLhTuh3ENsQqLpczYIoMfut0j7NHSlJaz0wX7UPe
4gBbYVDKnWpHDMKmxm1wyqsEqTt5EdgqabzzJW9AFQfyIv4NSb34GH4l7C8t+cFE
Vj7fkABOCZTaDRLawbcTXOVY6EzbGevdJXWph3Fbn8X98Y2Giw1YHG+/xR/SIowr
P8wWyhtsV3gS8aVxD0zBffJC6zNbshhvbcbuW+s70gla45VLK0XQOGNbWYwW1C4l
/bu2E3rCPdQKhIYIY9cpOZrG4Kael5F/k4CLpRN9kUHpdiZeHO4a8o5RbDhoEXVl
bXUBLvFrJ7FujyRSHNvlqhefyV05IBydlaV4uDvzKPtqC+4jASw=
=QEEb
-----END PGP SIGNATURE-----

--------------U5IS0jg00y6EJ01aMUjouj0W--
