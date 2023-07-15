Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F692754A23
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 18:40:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjGOQkI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 12:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGOQkH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 12:40:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C22B5E43
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 09:40:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5C30660BBD
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 16:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16D2EC433C8;
        Sat, 15 Jul 2023 16:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689439205;
        bh=LAayR8Lldp/RO5WZpjIshEX3wYb2ESy+O4uJSUpn1UY=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=T79TDgcRLnqBLEqHHKZ0rH9nSVg5C5BMk2R5hkobsxcTTj4MhiuL88gGDVz78rcGh
         xnx66IX2KI5Oio4yZwDsKaWf/Wcmmub+HIQAOHa066asFfokLn8/UmZ4WVjANLleVj
         sRQkKVGzb1m02iteJfd8Bkk3xNXRwicC6t1Vqf6PbXgvlXbzsAaz2sh5/bDjyyQwe1
         xGHg6Zf8sGw1MlK4fhC3sPO9xu9Hiq6h5U/yOTMiOY80E3jV6Ww/+dP2XAa8ADFdEj
         Ap6sM5J5f0p6y16uOmOuoHzXrbJAEbUiA9UKAYDFM2OfQky7kHAUjXKB2mb6xvmqEs
         vWPNnqcZcQIGw==
Message-ID: <a1257606-348a-41b8-8cf0-4fc26846ad3b@kernel.org>
Date:   Sat, 15 Jul 2023 18:40:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] prctl.2: tfix
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230714040517.5989-1-ebiggers@kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230714040517.5989-1-ebiggers@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------r4uhKBXeNGn0PRK7Nna3P0rg"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------r4uhKBXeNGn0PRK7Nna3P0rg
Content-Type: multipart/mixed; boundary="------------NcojO442PcMpWltByc5ACcuF";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Eric Biggers <ebiggers@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <a1257606-348a-41b8-8cf0-4fc26846ad3b@kernel.org>
Subject: Re: [PATCH] prctl.2: tfix
References: <20230714040517.5989-1-ebiggers@kernel.org>
In-Reply-To: <20230714040517.5989-1-ebiggers@kernel.org>

--------------NcojO442PcMpWltByc5ACcuF
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On 2023-07-14 06:05, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
>=20
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Patch applied.

Thanks,
Alex

> ---
>  man2/prctl.2 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man2/prctl.2 b/man2/prctl.2
> index 30211a9e2..fe403d76a 100644
> --- a/man2/prctl.2
> +++ b/man2/prctl.2
> @@ -2030,13 +2030,13 @@ Return unaligned access control bits, in the lo=
cation pointed to by
>  .\" prctl PR_GET_AUXV
>  .TP
>  .BR PR_GET_AUXV " (since Linux 6.4)"
> -Get the auxilliary vector (auxv) into the buffer pointed to by
> +Get the auxiliary vector (auxv) into the buffer pointed to by
>  .IR "(void\~*) arg2" ,
>  whose length is given by \fIarg3\fP.
> -If the buffer is not long enough for the full auxilliary vector,
> +If the buffer is not long enough for the full auxiliary vector,
>  the copy will be truncated.
>  Return (as the function result)
> -the full length of the auxilliary vector.
> +the full length of the auxiliary vector.
>  \fIarg4\fP and \fIarg5\fP must be 0.
>  .SH RETURN VALUE
>  On success,

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------NcojO442PcMpWltByc5ACcuF--

--------------r4uhKBXeNGn0PRK7Nna3P0rg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyy+MACgkQnowa+77/
2zLMAw/7BXsjQdQ4XAaknXYJYhPtvM4h7FTEmzl2bjq5w8awBcBJ+/ZpWfm658ue
37w0l1GpAdpY1cgadysoIBuVb9lAgrIjF0X4YBboXm6i537psSx64kaX9B/BnZpY
JmoKp1vInXTyFw0WLG7Zajdp6A9fI7mi6K2igIdNHYWYh6GLj8xvdhlA6KdS5RLB
88Opd5ji+QEaCNMCL4tX1rRM0GLh/p5tDuRB6TMP2UGcXLUaLIGTdUM7lMYeguMk
e4YCGRikguQzxCGUlaOrVjqr7/Li47q/c2/5MwPR3eenRZ9PUjZKCS/c4KpA22XE
pGUdClit+DPz3MX2tXj5ffWcBE08L4B6Yut1RbvTi6b3w7I/FXpX/LmisaCB8FKO
h/h9NVFaYrwbGKOpUdikvEjivhKfDiNgxZ+sOZh4qTFawOfX3j9ZfIO0aZdDjjwh
DQXbDuDEBcYQqjSlXmJbKiPtma8WaWS2svJONqAdQiRRSyt74oDltnETifp9IhfE
s+BrcQ2KWdaBxMFnUbYRQzi9Ph11TMCwY5sd7UaXGVoSrynqmqvnzUyN1x7V4OZI
24JXKSumRyzAlkK3WnEFUD6K0DsvbL+FZT2+LGdw5d3KcV0eDFzZjeu8OsI+uP1p
Vmoq9BxNEXBwQo0KWKRHrZqL4mF+po/Wz+Mmc/SQ6DY8xuIMct4=
=EzWf
-----END PGP SIGNATURE-----

--------------r4uhKBXeNGn0PRK7Nna3P0rg--
