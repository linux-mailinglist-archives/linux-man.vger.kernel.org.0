Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3DB77549E2
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 17:47:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbjGOPrf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 11:47:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjGOPre (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 11:47:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D7152691
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 08:47:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9318660BBB
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 15:47:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B0DEC433C7;
        Sat, 15 Jul 2023 15:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689436053;
        bh=TErJ4LaxHvPgq/J5oNarNhT2GSWuLk14rBEEFureT5Y=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=g/Pj1V0qknB4iMfjxq9d5nAA0Kkbic/l5vKGJQ+fsMGgy9OZc8zL+A1V3RUJSDcTH
         KGCHQzFscEX2aPuKv4GH18dBR+oUbaIFCWDbheQoNsAwxzan/GkCLBQxbn4Ibh3ObR
         BeUHzxlpbltPXpyrSVawpjtnh576J3mqwLxHDJm95m1C8ChD3UaS8Q6HGEQb2oRnLX
         98Y83b4vdHl0nco10pxYsLnUlXbBqBDD9M5DXpWPKlxx3Pgr21RPXN7H0dl8wnau7z
         QNbuclS6SM66NJCzmbcNEyfuirs09EvJAf7Rfggyh8HEucQTQuSjlxEHCGgme6k+CM
         0PXIXlibdb7AA==
Message-ID: <54841b60-d361-2122-1fd6-6a4e2c49a500@kernel.org>
Date:   Sat, 15 Jul 2023 17:47:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
Content-Language: en-US
To:     Linus Heckemann <git@sphalerite.org>
Cc:     linux-man@vger.kernel.org
References: <20230711211350.1247303-1-git@sphalerite.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230711211350.1247303-1-git@sphalerite.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jINWzx6X9dm1yaee0r60nyka"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jINWzx6X9dm1yaee0r60nyka
Content-Type: multipart/mixed; boundary="------------ieQycn2OHYs025JBRTyMXHGL";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Linus Heckemann <git@sphalerite.org>
Cc: linux-man@vger.kernel.org
Message-ID: <54841b60-d361-2122-1fd6-6a4e2c49a500@kernel.org>
Subject: Re: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
References: <20230711211350.1247303-1-git@sphalerite.org>
In-Reply-To: <20230711211350.1247303-1-git@sphalerite.org>

--------------ieQycn2OHYs025JBRTyMXHGL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Linus,

On 2023-07-11 23:13, Linus Heckemann wrote:
> ---

Please document this patch in the commit message.


>  man7/rtnetlink.7 | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
> index 2ce541c37..6061b5fd4 100644
> --- a/man7/rtnetlink.7
> +++ b/man7/rtnetlink.7
> @@ -105,6 +105,7 @@ IFLA_QDISC:asciiz string:Queueing discipline
>  IFLA_STATS:T{
>  see below
>  T}:Interface Statistics
> +IFLA_PERM_ADDRESS:hardware address:hardware address provided by device=
 (since 5.5)

For improved greppability, say Linux 5.5, instead of just 5.5.

Thanks,
Alex

>  .TE
>  .IP
>  The value type for

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------ieQycn2OHYs025JBRTyMXHGL--

--------------jINWzx6X9dm1yaee0r60nyka
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSyv5IACgkQnowa+77/
2zLsfRAAi6N1dLrxJx/npNz7TjfDTQ3gTfI+xeLCQNOFqWJHlY/UElO0ckywGl1X
T+6KdgrYLtPwEivCHTl3H0bAFHIhimF5YZEN7TtZxQejs2kAeekTAizB+SfG59Ft
0MBa3hS5GllqQVHmcfn/9R6WfKUtQIkUxJtt8l9YYtqwdoLuMYKvLYoZAItKGV1J
vn9WLUsI2k3JdU9CxluLxiIrefVC+A4Vh5BPxmUMChBU/FnGlEh7WLBdjJtSJp0g
BDqky17OEJ7DNGD6EpMcwRi1D2z8EBN5BOZVbqaNSa6G8u6oyIJjguL2+xMMAOEk
R+xUW94eyt1gRHVYHobJSITGR1MQFD8m4hfPx498tqEKoCoWzJUnXcwKmSh6yB2+
+EJ52cK/NJn9PsyKqlcLRk8PUcSGnO1SMKUWvmRLYwRZWRTmo6m/J33bAsboGxvM
5gGAaQHPYdL4/lsB70h72Q1GSMzL8hcdQUJY5W1+nXcE9ki66Nf5m0Vii0uegawU
UbiX0jMRTKcyMso7tBV5MHbIRZJHuX9PYenFQxldQYWcFsl89vsW6ILxih2YQwVI
OQT4tcJjGVVIGL3dGfG2LJMFNaW0sPdSZ3YwIrauErgsfa2neN46Ujd98gGvf8mv
avClzNYheVZg6m5dri615zQgXy4ybxkIYckIY9XcZb1sBAWoLQI=
=fxHH
-----END PGP SIGNATURE-----

--------------jINWzx6X9dm1yaee0r60nyka--
