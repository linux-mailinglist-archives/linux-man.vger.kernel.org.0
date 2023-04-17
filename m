Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3AE16E5013
	for <lists+linux-man@lfdr.de>; Mon, 17 Apr 2023 20:21:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjDQSVD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 14:21:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229648AbjDQSVC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 14:21:02 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 791ABB0
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:21:01 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o9-20020a05600c510900b003f17012276fso2747339wms.4
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 11:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681755660; x=1684347660;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rzs0cTaOZ7PNqTWzf21RWCFHogGRMDmTC6xU50tsL1Y=;
        b=OuEyu6P9rRbhHRTVTLi8hNpG4UcbrQNHs8j8DxoV+2GtMI3IwyBleqYlXgEYtf6X0K
         xIkjG9sZdhlrezbZpLsGJHPcBizUiDw1UQOqNJqOfd9oqXecpBUOJnPC28u2n7PJ3Im3
         bn2ogMuqQ70OHEjZsj1C9vy9KbIqeVu+gdYssL0a6bIY0qAkkj0SvdrP59J/6OECOLwi
         ipcc8jESdLGqoe/sgPDp3MoNe6Ac6KYLsZTsgyCUIYZWcSds8sJ4V3jsgIbh3Ewgq//0
         XOq0IPBHUpoX1cDKASmT2t8GVL6ZNZJhUMsfTUB+I+6gV9/xxxu4p5pYUY7l/NwbAbBp
         /7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681755660; x=1684347660;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rzs0cTaOZ7PNqTWzf21RWCFHogGRMDmTC6xU50tsL1Y=;
        b=fG/OtOReyRwbsSshVbIzp1ocmfBBuceAMWuvYEWHUKjKAoL75MCUcFbTqDJnb+Jvg2
         EEJPQ+WeVCTwpolVWhYtFxdswwHZeTiPI/4Z55jGpLz4f5AzNjpL6gH+IQnFQJDJDrZJ
         Xulfsg+ox7qMlDglQ8lou9Zx50F48I2D+pNHfV1u5P8nwG+SZtWO4RFbxAdLvMjifnJY
         P0f0lJ58+pRqD7fu0yd7cVIZqnFw3uqirm7+JjaBR5F/YMOEKDc9nSfAauCxCFgKc2RF
         8sAXo9M73LfPpxAcIVhz3fCIeLToMGMZsNVuYTTry2lQVhd3/Ln/cln7VtT3T2RxyXxY
         FmMQ==
X-Gm-Message-State: AAQBX9c3UwlAqB8aH7iEq5Uod6xwXcXErK1/sLKeeSF7NCjdU2tBx/0j
        bgqqCbZ7dDjyRegijJzpvyxo1b3rkKQ=
X-Google-Smtp-Source: AKy350Y3XuG5/QUKVtIFFqwXw5wMLOjQjIG0yWgx/5vRChwxuKPhjzTO29GevJkrdYgDHlAHz8VvjQ==
X-Received: by 2002:a1c:7207:0:b0:3f1:72ec:4024 with SMTP id n7-20020a1c7207000000b003f172ec4024mr4002393wmc.21.1681755659676;
        Mon, 17 Apr 2023 11:20:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id g2-20020a05600c000200b003f0aa490336sm11944038wmc.26.2023.04.17.11.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Apr 2023 11:20:59 -0700 (PDT)
Message-ID: <cbd5bdd6-faf3-49ec-6952-089e8eda96c1@gmail.com>
Date:   Mon, 17 Apr 2023 20:20:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/4] proc.5: A process can increase its own
 /proc/PID/oom_adj setting
Content-Language: en-US
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-3-guillem@hadrons.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230416233552.283776-3-guillem@hadrons.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PNG08gHhFuQlBe63FUJo2Lvy"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PNG08gHhFuQlBe63FUJo2Lvy
Content-Type: multipart/mixed; boundary="------------869t9vhvd6u8rb7Hlr67LcJL";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Guillem Jover <guillem@hadrons.org>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Message-ID: <cbd5bdd6-faf3-49ec-6952-089e8eda96c1@gmail.com>
Subject: Re: [PATCH 2/4] proc.5: A process can increase its own
 /proc/PID/oom_adj setting
References: <20230416233552.283776-1-guillem@hadrons.org>
 <20230416233552.283776-3-guillem@hadrons.org>
In-Reply-To: <20230416233552.283776-3-guillem@hadrons.org>

--------------869t9vhvd6u8rb7Hlr67LcJL
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Guillem,

On 4/17/23 01:35, Guillem Jover wrote:
> See kernel commit 8fb4fc68ca391862b061b3d358a288ccf6abed39.
>=20
> Signed-off-by: Guillem Jover <guillem@hadrons.org>

Patch applied.

> ---
>  man5/proc.5 | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 1947957ad..4bb7dd262 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -1633,7 +1633,11 @@ a new process inherits its parent's
>  setting.
>  A process must be privileged
>  .RB ( CAP_SYS_RESOURCE )
> -to update this file.
> +to update this file,
> +.\" commit 8fb4fc68ca391862b061b3d358a288ccf6abed39
> +although a process can always increase its own
> +.I oom_adj
> +setting (since 2.6.20).

I specified "(since Linux 2.6.20)", for consistency.

Cheers,
Alex

>  .IP
>  Since Linux 2.6.36, use of this file is deprecated in favor of
>  .IR /proc/ pid /oom_score_adj .

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------869t9vhvd6u8rb7Hlr67LcJL--

--------------PNG08gHhFuQlBe63FUJo2Lvy
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ9jgoACgkQnowa+77/
2zJ/bxAAmKpkVtOASD6ylyVAhoG6hznEdEZSjRXoodjjqp/XYCwcujSOCenndGsh
7yHWvD/w0AOkDFAsbHn0iZgQsjn5i6DcGfDkpDOz9QvR0FPZ2SyYX+rq4Ie+ekir
RtUJ1p+xFhm+0J6N9c43kIpXAEfTdua3U4u0ewWX1Y7KLkU+xmie45Ou2k0b2/fL
bKBMGBs3ewo6JZEWkUf8btLk8lHCOnPSwRx5cjMRvb6xmSaEUiGFyDgrvklPKmmM
fWZB7cDTJ7tfIjQ7vqSMqOWj7YnPjexvJd2OYTfgZvw5juYdE9vYq4yc8Sy4pxIz
Bnt+66oQMybo+eynKKRWVQfU7ASp1rxdtO/r60HaPkL8qqLpfUvfZnpqz5ub74dB
Vzgx3oVhsbtCtDYBJQIBxl/MHo8sOQOLM/CJzWewnq82R4gMBFieAB8i13+KQ0/g
KSfmhereH0cdmvxAaQ9QSSRAB1Z4BFD/nv7H7Yag3TN5JRJEyrZySStHHfLi2r1r
OetCdw2ZG7/AUZksvqPUnLkUO8s6c0mwub1Ku2g9alD2kwLxpIPErJ+6zwUsjBpR
Dx3cxZU5fE4B+H1wNoPeOVnm6NX6LG5j352fzVBuZ44s2d4bN+6L8NkZJRXN/mb8
JV8yEa/PZdny4aPrQW6jPrfUGKpSHzZsP2Lu1aEydjJcKm05of8=
=JF3g
-----END PGP SIGNATURE-----

--------------PNG08gHhFuQlBe63FUJo2Lvy--
