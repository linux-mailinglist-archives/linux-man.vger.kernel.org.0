Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EE8068F97F
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:12:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230362AbjBHVM1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:12:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbjBHVM0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:12:26 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F4F2D159
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:12:25 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id y1so18207102wru.2
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 13:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WhOS1Bzc7gRrIJfvAJJaSMeS1Kkwwjscv8thHKSi/Bc=;
        b=eApNIn26WLkgDAWumKWvOWmVykQmoATDSAuw2py27Dknoig2Aqb/CRZ9YvTBrEysju
         yXnopVbUW7EdJnODYu2u5pcwRz6bZu8sIHFzSof1oZJfrpVA0MLmJwLM5PCsdhiaTor+
         nTaK4O7GppMyNWIcpdxHwoRzbgJgFVgPQmNfBEJhCIICeEEwVBdzk+4aLlWMJXFCAznw
         V4FB7ZkzMWB+7ZBNSr8kJwTWEgJib5BSQWlE05mgCsMJxhMu/8Lq4ydEWihLNLzsMS3y
         HJ7rEE6Phn1AWY2lMXyp4qDTeBCMn0ulVWUf9/ilHjYG+DziodUJJPgBWsFlxVFeKYYq
         ITwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WhOS1Bzc7gRrIJfvAJJaSMeS1Kkwwjscv8thHKSi/Bc=;
        b=45PdoxCOGCun2T/2RAKmV/DMD7luynFKOhuvj17JeQFQh8ShoAhRgOu6d5ob3Zl1D5
         X6z2rA7ma22Nwg/4zyqmsdWc8opoLlBISLy9ibZLScYfJum3BP+m7KFAhnFjTqKMeJi3
         7pRFXJoDqWRjP+vtvnk3jSlsyzrddzuL+Lb84J/qO8+RR/fx80Kvqujm1lT4CgMhTvby
         BAwDoXh5Q3/75//CLbj1lsNRlrRywcudVl3gjuUJAzG7kBRGx8HKL+EEVqr20kt2p2na
         DCqf0d7GkTqOfQOlAx77lAPffIt1LqcBXE9Vqh7TYjmtpDIe7Oe0t5Px9pJM+sHjuyuN
         boIQ==
X-Gm-Message-State: AO0yUKXNjSj3lBya4gjeupEsFKrn6dxbbKMlx0O8o0H5J4Rnnaz8O8Uw
        MSMDP48lrV1GMoW/r/4Lv3w=
X-Google-Smtp-Source: AK7set+yi7sw0iM7Y9w3r8Si4gry/0gHjqQyO8fYBoJ20HYX81cWxnOf+GKGwMWKJuP3bk/LaijpAg==
X-Received: by 2002:a5d:4f0e:0:b0:2c3:e87f:e3f0 with SMTP id c14-20020a5d4f0e000000b002c3e87fe3f0mr8252351wru.53.1675890744068;
        Wed, 08 Feb 2023 13:12:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t6-20020adfa2c6000000b002be063f6820sm14774291wra.81.2023.02.08.13.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 13:12:23 -0800 (PST)
Message-ID: <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
Date:   Wed, 8 Feb 2023 22:12:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
Cc:     Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------f8jVwrvnJWswH4PQIfcsllya"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------f8jVwrvnJWswH4PQIfcsllya
Content-Type: multipart/mixed; boundary="------------amTI0UHN6INa5Ty7i0SlRxVV";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Cc: Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
Message-ID: <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
In-Reply-To: <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>

--------------amTI0UHN6INa5Ty7i0SlRxVV
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Brian,

On 2/8/23 21:27, Brian Inglis wrote:
> ---
>  man2/futex.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
>=20
> v2-0010-man2-futex.2-change-limit-to-use-ISO-suffix.patch
>=20
> diff --git a/man2/futex.2 b/man2/futex.2
> index b815056d231c..b9331ead985f 100644
> --- a/man2/futex.2
> +++ b/man2/futex.2
> @@ -1536,7 +1536,7 @@ argument was invalid
>  .RI ( tv_sec
>  was less than zero, or
>  .I tv_nsec
> -was not less than 1,000,000,000).
> +was not less than 1G).

For nanoseconds, I think 1G is a bit weird.  Since you cant say 1 Gns, I'=
d rather keep the value.  Anyway, 1_000_000_000 or 1'000'000'000, or what=
ever separator we use) is something quite readable  in the context of nan=
oseconds.

Cheers,

Alex

>  .TP
>  .B EINVAL
>  The operation specified in

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------amTI0UHN6INa5Ty7i0SlRxVV--

--------------f8jVwrvnJWswH4PQIfcsllya
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkEDYACgkQnowa+77/
2zJLkg//XhCrQ89DgXoaVv8I/IJOgqwr8k7uuUMxUFRInIo9y8hPXFXPy/IC8bNN
TH4Q4A9/lo/KVDOKwA9w5Qk0quCMXsT/YVqmi5kn6AUUEikNsNXKa7BFi6iHj2QY
SZHSw+g9jBNqooQp1mX4dOx1R4r6XEMOjsBhYLD2drNyu+tQ+R4IiXVVeSc+/jsc
giiExnYo+UngY0mSTFVxq7YZg30XQfPyUvxruhrUkcAlRDRnfsbfiezGf9g2Viwa
UZGFaUpqpKPwpVzRzqG8wMpl0RyMZCjISaVBEnb6Tk74CsEsRhnGWXWTz5ya7TZC
y8MBbZxZ/y49satHnqDx3BdU7mHiq4RkdWcs2UaUWqwH1nRGSfHzc/tUFtD4imVM
E9ueI8siyQCIaiuKKpw3s4SIf3qI/Rn0t2Wwwl0ydT7gk+hoTmtZ5r+GbIgmaii/
E+WwiZTo8aFEZHF1in2L9T7WLKzCAMPvo7XfA6lj14zntStFd/BOtZfic9RoZWkj
H1NS09gZpbYVDrNb+NGHsb3lGtHbiWZxrTIKysHkpoppWQ72Xr9JwgFOBctLLnH7
cwW3kJBPMakaRx1XhK3n2OdNUqQlbmZQ7Wwp645mDJcFJhcMlji2M9hb3p2vKo2r
pGCddp6FIPJM39YPEvKpkxgQjt61bOE9ZwaiuT+uBMAjDi7EMqQ=
=fwbL
-----END PGP SIGNATURE-----

--------------f8jVwrvnJWswH4PQIfcsllya--
