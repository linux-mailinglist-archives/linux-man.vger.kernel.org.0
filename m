Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 666B7755769
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 23:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbjGPV3G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 17:29:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbjGPV3F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 17:29:05 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9311FD7
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 14:29:04 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 276E360EAA
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 21:29:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9780C433C8;
        Sun, 16 Jul 2023 21:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689542943;
        bh=f2tj3ZvuwAR22vtsL9ltWe8BDW73+A4MF32BD3pzzNA=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=Tru2LgAoNBnXsqzxsGoDj8ZgfHBzSmQ22EAsf9mogApwSEi6Uliswh8NeZBydI+FG
         U4JojRu9efHDp8OOoe1vL7qF/FgeCOQdBfuIKLB2XZJ3eqei7QkqY1lJAnfRj22iPl
         7FqqO4hBQEE5bpJkgODd1OL+wXM5FhkblKwV0QFGo/vqH9UhE/9Ke4eTc+DR5Nw1PX
         ZRzVzG04JZNNtv5DINVs3kguCkJBh1m9kQzerjLUiifqJ7ncxmznrGni/9eeORPEzU
         0X9WfChOUAMFlDahEmc7OcqDjNxYQCY6RpPW/6fQwOkbzG/STYz0heESpClEr5wsKC
         cOI+SWBMOV4oA==
Message-ID: <ca7e8fd6-ddd9-9a00-880d-6d3fd11eacd6@kernel.org>
Date:   Sun, 16 Jul 2023 23:29:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] ld.so.8: Correct linker option name
Content-Language: en-US
To:     Fangrui Song <maskray@google.com>
Cc:     linux-man@vger.kernel.org
References: <20230716182227.2226356-1-maskray@google.com>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230716182227.2226356-1-maskray@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3WihxWa0JzqZbHVH3TOuKy66"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------3WihxWa0JzqZbHVH3TOuKy66
Content-Type: multipart/mixed; boundary="------------2SuaXm406ks6UVZ0SAnyLH7z";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: linux-man@vger.kernel.org
Message-ID: <ca7e8fd6-ddd9-9a00-880d-6d3fd11eacd6@kernel.org>
Subject: Re: [PATCH v2] ld.so.8: Correct linker option name
References: <20230716182227.2226356-1-maskray@google.com>
In-Reply-To: <20230716182227.2226356-1-maskray@google.com>

--------------2SuaXm406ks6UVZ0SAnyLH7z
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-16 20:22, Fangrui Song wrote:
> The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib.
> -z nodeflib is undefined.
>=20
> ```
> % ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
> ld.bfd: warning: -z nodeflib ignored
> % ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
> ld.lld: warning: unknown -z value: nodeflib
> ```
>=20
> Signed-off-by: Fangrui Song <maskray@google.com>

Hi!

Patch applied.  Thanks!

Alex

> --
> Changes from v1:
>=20
> * Improve commit message
> ---
>  man8/ld.so.8 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> index 1c9a13f56..351913bd8 100644
> --- a/man8/ld.so.8
> +++ b/man8/ld.so.8
> @@ -83,7 +83,7 @@ From the cache file
>  which contains a compiled list of candidate shared objects previously =
found
>  in the augmented library path.
>  If, however, the binary was linked with the
> -.B \-z nodeflib
> +.B \-z nodefaultlib
>  linker option, shared objects in the default paths are skipped.
>  Shared objects installed in hardware capability directories (see below=
)
>  are preferred to other shared objects.
> @@ -97,7 +97,7 @@ and then
>  and then
>  .IR /usr/lib64 .)
>  If the binary was linked with the
> -.B \-z nodeflib
> +.B \-z nodefaultlib
>  linker option, this step is skipped.
>  .\"
>  .SS Dynamic string tokens

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------2SuaXm406ks6UVZ0SAnyLH7z--

--------------3WihxWa0JzqZbHVH3TOuKy66
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS0YR0ACgkQnowa+77/
2zL9RA//eqhyWqHFMbaYFs+aDflTuDz3gzQxGSGJjUxGb1lWNJY76Y06MlHmTOje
elBU1U951U8mB0Ntn/vPIlB3QW/gOXTpyVp6MHjmg6VFUV9RKOVZomcOfoFGQjyq
WYKo9hZ8imw02Sdx2J4Uroi25Hk+5V92waB13p80cLNQAS2WNQnhD86pCOxsw3VE
AH0X2iWhhXRcQLS1zr3mfQPY4qTvrv4Na3rEWkXh6qRV6AfTDHO7Z6eHYKunNLNK
+shhBxN7pW7txs0P0GGqIQog5D/bXJzDnSuaYf5zauYDTy3vsdFT0gIu9XHFlvMm
nrr88QmPXcQpFgLatFkKHEIkb9ZMijoDfV9+ukkonS2IOq6G5ampdb3HYnbhxhFn
yu/Uj3bY/tr53h7G/c2sDrNz2Cr3BVKRp2XEnvXUdtoD/Vxb+9bGtYDTr6I2jACU
SbE1OQzSU+eiu3r9D7I0uSVMGUxxFr8OQlXb8eySg4IideptGZhGhLuotYdFSMVQ
Gshdx8JWtJGn8pMTcWEIDKH95jkRVFrd1jd1xOTVoVoMBkkzazgYR/phl6WwwRO7
2IKWKV9O2FB601ebFY6YqpI9dmPU5bHZgLVAheMAZIAmoA+9CuXIkrJ8/DIUwE7+
wmzTohPR+UVSqkSj3xWb9inZ6nVGfaXriWp7CUjVHM4P2x3Hrv8=
=NDvr
-----END PGP SIGNATURE-----

--------------3WihxWa0JzqZbHVH3TOuKy66--
