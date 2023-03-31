Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E4E36D13E3
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 02:09:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjCaAJr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 30 Mar 2023 20:09:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbjCaAJq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 30 Mar 2023 20:09:46 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80CA5D502
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 17:09:45 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id i5-20020a05600c354500b003edd24054e0so14370138wmq.4
        for <linux-man@vger.kernel.org>; Thu, 30 Mar 2023 17:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680221384; x=1682813384;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9b9d9a0XkfR0mXIYymojXQPjlcRFuEHXGCyF4PnaCrU=;
        b=msHW7jU8gmY0CjYAaEGfnTL0jeQzXY7qhXw0rZh8XeD165gHow5DBrMvGMEiPE9GyK
         0G+Z+k9EEe1mlG3Pw5UePngX3fzCLnm5W3H4udef4qsw77YKmHTmo053BcVv9TAqsn3A
         EaeP5vsv++Li1AmVyL8lHgtmMcAe8RtcD7h7iXyKZN056rCcotnN7yFo5VDYCS18T2Lv
         +JVfuQ1QSj7GnbjYdKt7AeS3cBfyUSLQ/p24T8LnroUkJoRbMd5EaOc+/QQDQpc77EtS
         k33Un3ZMdRLZXWM/+/2h2ML7pnOpOcczSyvIJSQUP2MoCM8Q7D9O/2ExU7gEwqbfEn7V
         oFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680221384; x=1682813384;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9b9d9a0XkfR0mXIYymojXQPjlcRFuEHXGCyF4PnaCrU=;
        b=xxBya9XVX+Y/DyyTLxgV98wrbbjft+Arck6DQWBKn+w9cbv97MuN8k4Uwn6qWWC/PK
         rBWEDNDmWFfduxlMxHK3q+U/7aTXa0RNeU1zvu0jOsa4bn8mAoHQOXY7DSm5CX0ygBhu
         Agpyj3hCmpeLYYYLN2jYR86MufO+z/Iiu3PoohtWuYaIYA00Y0uGWfG/xM61p4oFDI5S
         EoK/TxEsEenoZoj4IA7UY/WARDdN29Ayd0IvlpQ1yv11J7pPyi9QKO81p1pqdgvwDiTw
         Nclq9ZBBmd+38e00XrIB3BWORsuzIjIKAIS2uzVIKz0v/S5lLjH0ltuo6cYmEfID67Zk
         WbAg==
X-Gm-Message-State: AAQBX9evf19VUPD/7EgpUx/DvrouqcSY0TUqNLa58wbGSQcffFVnGpY4
        3COTYFRPoxSvbRyN67JGLon1sf9MR7U=
X-Google-Smtp-Source: AKy350bW4tXB+3sai/4luACbkFAFJpZ01sOhLmM7GysKP9yWY3HNoaXcrIztLht10RVhDARQQ895oA==
X-Received: by 2002:a7b:cd98:0:b0:3f0:3c2:3fa4 with SMTP id y24-20020a7bcd98000000b003f003c23fa4mr5952100wmj.12.1680221383930;
        Thu, 30 Mar 2023 17:09:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c3-20020a05600c0ac300b003edf2dc7ca3sm730885wmr.34.2023.03.30.17.09.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 17:09:43 -0700 (PDT)
Message-ID: <7c021544-e661-72ce-e359-1f2c658e16be@gmail.com>
Date:   Fri, 31 Mar 2023 02:09:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] proc.5: Document KPF_PGTABLE for /proc/kpageflags
Content-Language: en-US
To:     Marco Bonelli <marco@mebeim.net>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220617122244.3402528-1-marco@mebeim.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220617122244.3402528-1-marco@mebeim.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BLOdj8M21KSU0SrNpYzlnqCv"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BLOdj8M21KSU0SrNpYzlnqCv
Content-Type: multipart/mixed; boundary="------------RKOvozomK4kGgYfcdxMcRD17";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Marco Bonelli <marco@mebeim.net>, linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <7c021544-e661-72ce-e359-1f2c658e16be@gmail.com>
Subject: Re: [PATCH] proc.5: Document KPF_PGTABLE for /proc/kpageflags
References: <20220617122244.3402528-1-marco@mebeim.net>
In-Reply-To: <20220617122244.3402528-1-marco@mebeim.net>

--------------RKOvozomK4kGgYfcdxMcRD17
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Marco,

On 6/17/22 14:22, Marco Bonelli wrote:
> KPG_PGTABLE (bit 26) was introduced in Linux v4.18 (commit
> 1d40a5ea01d53251c23c7be541d3f4a656cfc537).
>=20
> Signed-off-by: Marco Bonelli <marco@mebeim.net>

With some delay... patch applied :)

Thanks!
Alex

> ---
>  man5/proc.5 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 7ceb6d5..1115101 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -3358,6 +3358,8 @@ The bits are as follows:
>  .\" KPF_ZERO_PAGE: commit 56873f43abdcd574b25105867a990f067747b2f4
>      25 - KPF_IDLE           (since Linux 4.3)
>  .\" KPF_IDLE: commit f074a8f49eb87cde95ac9d040ad5e7ea4f029738
> +    26 - KPF_PGTABLE        (since Linux 4.18)
> +.\" KPF_PGTABLE: commit 1d40a5ea01d53251c23c7be541d3f4a656cfc537
>  .IP
>  For further details on the meanings of these bits,
>  see the kernel source file

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------RKOvozomK4kGgYfcdxMcRD17--

--------------BLOdj8M21KSU0SrNpYzlnqCv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQmJL8ACgkQnowa+77/
2zKX7Q//dIBq36YviG0VmVMBRWyPlQJYtusgit8lFkNSwOP0DPNiaPSmBD1rH488
e5yvUXEg/53K6iaOK8RavaE2CPg6V+od/WTvzpJR9+HooSDSGHEbTkacTalO+nxQ
P24p9Pq1YHeAwTzjkZIia8DJILNOcxy9ei+Q0OTDcPApJkbaatYnUziBmMnsWw81
RwxicwxFw9twMfJX+0kYvM7RxNbplRkDSffmNDb//jl9LRbi39cu/1SpC1SOQp9U
r7KVYhTFt/jxRFihBygjVmc9CmnxKYKibBOFdEhV0wC34dI9XNZR91KVgrDY68YT
aK8c1bgf3sw22kL0lTVQTYBNmeii2Yy8pggI4y7zFZqKQIdmbnz/3tygrthwjaBL
6mV4PnzTNBuv/67y4SsiHmhv/NDbywCQVbz6X8bWozuoiQlC6EW4lH/hTVUXEV0B
36j9loYGMht+L5JdyfNE/DY8U8Z70drQFV/RwkxpO1s8vbZ1H/6WnyorNQ5eIhPs
ANCBjDogYsobO6U8EDeGNc55KXcUsLp9K4ORLZ9nwE+AZAOWjBCoKT/esi0GFGmg
IbAPd9Ls2Q8PBjtntAN8AuGSswAUCp4iGnDcO/njBa/WqM2Q8gD4nk46VRTZUD2n
HpzGmmOxxaBh0EP627GzanVHLWYnJva3vJtdGlfdz7cKkiPP/6g=
=sf3g
-----END PGP SIGNATURE-----

--------------BLOdj8M21KSU0SrNpYzlnqCv--
