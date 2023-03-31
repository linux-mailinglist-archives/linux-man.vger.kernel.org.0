Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E764A6D28D1
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 21:50:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230107AbjCaTue (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 15:50:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230092AbjCaTud (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 15:50:33 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 998E01D852
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:50:32 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id m6-20020a05600c3b0600b003ee6e324b19so14595732wms.1
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 12:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680292231; x=1682884231;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJ1y9gjLsXcVBLj6VYZmTpyLOgf/4eDpWplSY1TtMSs=;
        b=aNDAIwyYLMG3h9aNsL3ZwK4s7CmyUmF4ZvSTzLjIJW45ePoDQvVyr1kSPWzvlHagYM
         lSCtOH6YBMEe6NQ5yLf4dJ9AcAwCeoCjshNFcf9dc2HK5AonxQEcQNKC9eagcnXUXgcf
         8XnOX7z9e1ZpzZAOA4NsPzCSuHSdohuvyxpCdzpzA2rgUAhYhcGvqH9tWtwbAmt70rPQ
         sPb7Jffs/1U0ikeM2rKgvBFqYXWWnOZxbv54oLXoIk2V2zSDUvoMZpYJoRwnwxkEW2wL
         rjfyhBPfMyCwbR+Hm3yFfT4RS8lImRJ0YiCVHgZIj8DK7J1lG9Ix15huSOS0KA/nFCEl
         YGhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292231; x=1682884231;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tJ1y9gjLsXcVBLj6VYZmTpyLOgf/4eDpWplSY1TtMSs=;
        b=u0fMnkhlKt1D3FLszOHPKW3H+48nKZvUoKfj1L0vni8pqLZQ1JD6fkSywdiWGdBl50
         vRsxatdPgAJqrAv5qdWkBySw3mlLX1+n5A/UjAsjwQ7GpWfWK2ITyjGoTRhFmZy5rki9
         aQpsdvLwe6tFEssRkCm8A2fJe0tQTyZ/C5LYF7v70fQNjcF/8dCPguzp06aPI/mx0oPF
         k+MBB1GjhZvfwKPmreEDJ7yo8KzKdHHsQolYr4cJrHFtVH6VMb1NV03g5CIZH6CbMEeB
         pBA2TJrMG87rvKn+yAsmQgRlZ/lfVB4PrZ/OPhIWPB52MdKVOng8mkVdatVfBXhWlkeM
         +LxA==
X-Gm-Message-State: AAQBX9eFnvdY22Upl8LTc2j7eFg1g20A7MTVRWnP1BurXJDCEy1N9W+8
        ugh32hJw5J2yJyJqax4/m38=
X-Google-Smtp-Source: AKy350b96teWEfYz+LR+abstn4e4YwbfMH5StihcPm8bJQ16lFgm4xZ2vkAL7ornOyymGu9zaz6Mxg==
X-Received: by 2002:a05:600c:6008:b0:3ed:ad05:5841 with SMTP id az8-20020a05600c600800b003edad055841mr7475499wmb.17.1680292230984;
        Fri, 31 Mar 2023 12:50:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m26-20020a05600c3b1a00b003ede2c4701dsm10836478wms.14.2023.03.31.12.50.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:50:30 -0700 (PDT)
Message-ID: <67a436f4-1d6b-c613-2231-832cb2aece36@gmail.com>
Date:   Fri, 31 Mar 2023 21:50:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] clock_getres.2: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230331185337.9409-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230331185337.9409-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Lf87KhZ8OYolg27gTmwdVlnJ"
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
--------------Lf87KhZ8OYolg27gTmwdVlnJ
Content-Type: multipart/mixed; boundary="------------BWDcsJ0LQ3WZdiCU7P2yJXIE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <67a436f4-1d6b-c613-2231-832cb2aece36@gmail.com>
Subject: Re: [PATCH] clock_getres.2: tfix
References: <20230331185337.9409-1-jwilk@jwilk.net>
In-Reply-To: <20230331185337.9409-1-jwilk@jwilk.net>

--------------BWDcsJ0LQ3WZdiCU7P2yJXIE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 3/31/23 20:53, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.  Thanks,

Alex

> ---
>  man2/clock_getres.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
> index 86a0e9afe..e744bc7ff 100644
> --- a/man2/clock_getres.2
> +++ b/man2/clock_getres.2
> @@ -376,7 +376,7 @@ indicate that
>  are available.
>  (See also
>  .BR sysconf (3).)
> -POSIX.1-2008 makes thes APIs mandatory.
> +POSIX.1-2008 makes these APIs mandatory.
>  .\"
>  .SS Historical note for SMP systems
>  Before Linux added kernel support for

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------BWDcsJ0LQ3WZdiCU7P2yJXIE--

--------------Lf87KhZ8OYolg27gTmwdVlnJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnOYUACgkQnowa+77/
2zKG6g/7BSTZj6WveDjygMNsDiL08LH5Sky+CkzgrSeYc7OZvLuJTHRzoOwpcLEV
evcKCjR0Jt+Iwyc/Bjk2o+n5BvMJQtiIBmhIEwvgJfTAmxA4rLg252UA00rigl7n
qJqoeg4VM2aI3Elf77ESLMB6YtGYpTr/NjqPW6l8m+lsy5BRM2dlstHaTZeymMnO
bpptDRJWN6DVQ/l/2IjdK7+G32eQWqKfxBzbETeTBSRPstduw0d9seWP5XomzCnr
/EI3iuk2Ul17hZRddu3DQZ41nPtNDhdLHTmW6g9bI4oeQGGXsym9Y2Z9zwDESqkF
E7G6nX47VZslX4DxbuyIUMd8ym9If3aEFM46+kAF45fuyOKRHPCNxj2/Zf9GAmMT
gy1MaTmjU0R+q82qfQVoUaha4m28L30q9ThZ/isq+h8tkPxlvEMFtKnK3Evvl7eW
DzSPDmM+ypRxu6acBhzs+v0gUHGBFcDDBkZ10s03YOJyXUvq9/+Bu2zHgT3UP5p6
3HaikzD93zVlZRemtFbgQElGsMd2J6+DZNhrH5foA0BQC6LGf6OHCZ8VTFOHtUfx
OULqvVma/sLoLbsGo+68cNW9fdOiIckwMOD+s/4XfapOPS7yiK5q15uDjjbvONuM
61/JCWFZFc7Eo0RDv8f7/voyCt3wyGlUyL6ET5x1bKTUl61FGiM=
=DElk
-----END PGP SIGNATURE-----

--------------Lf87KhZ8OYolg27gTmwdVlnJ--
