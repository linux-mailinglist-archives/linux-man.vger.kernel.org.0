Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9BAA6B12CD
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 21:17:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230253AbjCHURz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Mar 2023 15:17:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbjCHURw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Mar 2023 15:17:52 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B0D16284E
        for <linux-man@vger.kernel.org>; Wed,  8 Mar 2023 12:17:48 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id q16so16569240wrw.2
        for <linux-man@vger.kernel.org>; Wed, 08 Mar 2023 12:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678306667;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T+Jh9sVwdhrmDn/qiWUeEgS7FyNWmdfRIBe2H/tZ76M=;
        b=Z3x8fxWmP9ZuBRtKRLWyFshIcDaKQOeu0TX9S6OSjHk77NUbt293UaepNpl9HNpsyy
         x2tpCgATW3cdpXGHQc6tUO/WhNtU4fssC2OK246DAp4yTBYP+G3C9/ybh/uSBv8boRUw
         3hT37CgvuGMprkaCEQp/mT7lrk9zBAWYtLhQE4+9EKK4OMLaijeP7SIWaVvHUJqbfFu+
         b/Ls2ugysm3JZ652z7Cym8oH0xvj1jWe2sqYr1FbTWPw0yudcNprbfLm2+5MGHaPunRs
         L5Q/H6m9eskiy9QdZhcq2K3Gm8MEMyvM80befJGUvGugmK7AguLFZ81joMFBjQ4Lbsfa
         8SvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678306667;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T+Jh9sVwdhrmDn/qiWUeEgS7FyNWmdfRIBe2H/tZ76M=;
        b=66pidPkb3/IALXaesAzM/+uSH7CE4tRLy/KhVCl9LDUtNN3WirMMs3ei6xtvO8i3G1
         lfT8sR2lh6M+Qmg53g8OhCcbeoSLl8rZdymks+enqXbKBWa44GYYFzhAVbx1GozyfxhQ
         DhEuSYwQozSoO1ZtZ1ak3Iv5mTxiYkifSquXOnuUh+AfZuCqxUmE5GfI8g79dRygV5Cw
         X4Bsn0WWqJqMUKHIC35mAPNEd+fm+zrZvhw+lcinpJmyw5F3VMZgwDNtJikCkyl7YraT
         YSangm55JhprmGldnL8F89DoPmqwDaQpdELCsd3zaMXs33DIlQ4D5eBRTKz5Mc28qXps
         Hgxw==
X-Gm-Message-State: AO0yUKUdVQer1oazduUWxddXIvWssH7h56Oh8P4ik4Df5eKKl1IIwqnp
        uqKN+YjlXa6uVCB+cH3EqmY=
X-Google-Smtp-Source: AK7set/ufw9vBzm+XgMUdfVy2wlCPWO6dTWH5WwUuL00qS5wKbQfzzSSrfW2jg39UeJUu6a69/LfNw==
X-Received: by 2002:a5d:5258:0:b0:2c5:4d35:5260 with SMTP id k24-20020a5d5258000000b002c54d355260mr13296618wrc.16.1678306667198;
        Wed, 08 Mar 2023 12:17:47 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s1-20020a5d5101000000b002c559405a1csm16147508wrt.20.2023.03.08.12.17.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 12:17:46 -0800 (PST)
Message-ID: <e0d34d98-4df7-20fc-4709-dfba3e337a68@gmail.com>
Date:   Wed, 8 Mar 2023 21:17:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] CONTRIBUTING: Fix typo, there is one active
 maintainer
Content-Language: en-US
To:     Rodrigo Campos <rodrigo@sdfg.com.ar>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
References: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
 <20230308152219.595611-2-rodrigo@sdfg.com.ar>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230308152219.595611-2-rodrigo@sdfg.com.ar>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5oQc8n2rh3xfLNj0KO6mDEp2"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------5oQc8n2rh3xfLNj0KO6mDEp2
Content-Type: multipart/mixed; boundary="------------p64JBmCoeTJshFfEDfhB1BW5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Christian Brauner <brauner@kernel.org>
Message-ID: <e0d34d98-4df7-20fc-4709-dfba3e337a68@gmail.com>
Subject: Re: [PATCH 1/2] CONTRIBUTING: Fix typo, there is one active
 maintainer
References: <20230308152219.595611-1-rodrigo@sdfg.com.ar>
 <20230308152219.595611-2-rodrigo@sdfg.com.ar>
In-Reply-To: <20230308152219.595611-2-rodrigo@sdfg.com.ar>

--------------p64JBmCoeTJshFfEDfhB1BW5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rodrigo,

On 3/8/23 16:22, Rodrigo Campos wrote:
> On commit "CONTRIBUTING, README, lsm: Remove mtk as maintainer"
> (06e72cb1) we changed to mail only one maintainer, but the doc still
> says "both maintainers".
>=20
> When submitting a patch, I was confused by that fact and thought Michae=
l
> address was missing. But after checking, it seems we just need to send
> it to Alejandro, so clarify the text to match that.
>=20
> Signed-off-by: Rodrigo Campos <rodrigo@sdfg.com.ar>

Patch applied.  Thanks,

Alex

> ---
>  CONTRIBUTING | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git CONTRIBUTING CONTRIBUTING
> index 3b4408108..3bb671eca 100644
> --- CONTRIBUTING
> +++ CONTRIBUTING
> @@ -8,7 +8,7 @@ Description
>     Mailing list
>         The main discussions regarding development of the project, patc=
hes,
>         bugs, news, doubts, etc. happen on the mailing list.  To send a=
n email
> -       to the project, send it to both maintainers and CC the mailing =
list:
> +       to the project, send it to Alejandro and CC the mailing list:
> =20
>             To: Alejandro Colomar <alx@kernel.org>
>             Cc: <linux-man@vger.kernel.org>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------p64JBmCoeTJshFfEDfhB1BW5--

--------------5oQc8n2rh3xfLNj0KO6mDEp2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQI7WkACgkQnowa+77/
2zKCQQ//bZvE7+A256ANbe85ajZyCWfLHQf9hz6a9zURsuHurxEhTjKoc4oNc65R
Q2OaWNynandfZBuN9g5n+dWv9eM0XuuJx7yeydXawVgGyCJ0KdwMg1RsaVbBt6TH
LaUnNsju+hAKI2g76QG6jOnFIX9WR0Nz6bvP8qVbg4B/kG385IkPIvRR/hmMVPOR
dg8uHCqJT4qpezbhoJKpon4L2kKNC28be7P1SAZBAY8V65aym+d5gCVTuwic51j9
xqIOQIufPh5R6hhlkIaRtOb65f9UAaMc04acaJzpqaGK14uWDF4d5TfDlcF2fKh7
VNqDfB2G+2t83shtt0ubz3CXNDmx/EGPNhtLZXrUC96PWPA3VXjpjXsGFdjnyByo
X2bvWPdTJkBZDae/oEvvJlR9lv7FNROCRgTlt6DiJlM5BVQxDsHMGdQha7tRHlHS
Pcc5eQbbZCZshC3ECA6TZb4ZbXqN0XOINCyiaAqwKkdr1Vur51M7D1H9oS9qjbaJ
uaeQt5xM8uEmJ50SpMKjLvIBGS+IJY2GquE4z5Wo2/ya3f2C+SavmyGxCYh679yO
D0PjScEV3w6dzV7KTWpDb1HniWgDyCaEAd0x3i9M1bYsU1R5/ttuB1R5fdZw1PxA
AAqO+tFQkwssOiU8ZNMcBlnjEbywxceQhrlbfC4YukozWIbxx7g=
=8328
-----END PGP SIGNATURE-----

--------------5oQc8n2rh3xfLNj0KO6mDEp2--
