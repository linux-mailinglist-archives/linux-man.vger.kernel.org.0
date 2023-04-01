Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0CFE6D34FE
	for <lists+linux-man@lfdr.de>; Sun,  2 Apr 2023 01:28:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbjDAX2o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 1 Apr 2023 19:28:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbjDAX2n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 1 Apr 2023 19:28:43 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2855A5C6
        for <linux-man@vger.kernel.org>; Sat,  1 Apr 2023 16:28:42 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id d17so25807551wrb.11
        for <linux-man@vger.kernel.org>; Sat, 01 Apr 2023 16:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680391721; x=1682983721;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6c3FcNI3/ecuybd95tpnVu8YUYqx2NDGDs4SXLTqlmA=;
        b=n7TduSoYUFAQjzPfVX+8TJZhAf3jM7uQxZIjr9jWPYauQ/HdaGhJCbMBo+blYoz9Ca
         V42zW1LgNxveKgNZrMlVl/Y/4cdrnlHzi4AwxPlf7a3vkw8Cjz1r0jmWYpmchkKn4n8d
         0F/IHZU1FdCC5Y+wMOrBNOwYS2/yDGcW+3Z9qNXmTG6tIvTFAZEYeM2RCs9SEguMdE1R
         PoGlBu7XsBUzqTI9EFAO8Sgum8HLEgv+J6039qpcsFv0DWzcbHXq8EZLMq4SBfTEmy0R
         1Xc0b2e0wqgnCwO8t9dvvW/1wQsAqLZmIuwLr9d2LgzmgQ8w1rJBW/5XlCGiRs4K1G5s
         tM1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680391721; x=1682983721;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6c3FcNI3/ecuybd95tpnVu8YUYqx2NDGDs4SXLTqlmA=;
        b=v5rrJsRkq8IN61psphGRbkXycIsvjZJCKvomg6Yd/upY/WHkd0LVyqfKIuPu4wlBF/
         7efIHgbS2J8TpIWvlEZZbQmdr9/Dp1FHpbw1EyFn/AH1mkaW7Azab/McDA5VdybhkDKb
         N2f2Pe2Yk5yAQEqad4nv6sBdm1WbEJ9ecfTPmG2/9VONvCiL4ZM6tbxg79srRy3tFpER
         r8pYvLTzTxeI3ZKxcLzinzuk3sKW3fq4MjwPhoPUL2vD8ESAww64jmXfN5+/98+YRVFX
         /cDVlERitAbE2Yzqx3rMmsZIrnDUxYAOvy6h/NqTyyxAY5V+kb7dWap6e2OCVZerrgiy
         UJnA==
X-Gm-Message-State: AAQBX9c24MGpuLiUsMxVbCJFewTII2tO2t9i9LInAiDlQBs2RRxvfKZg
        UJewRn2ss0dTMRXFkQjYOAzf0GFsK+0=
X-Google-Smtp-Source: AKy350aHw8OOTO5iu0PFTKqrQZRzwYyzFcSEt+asCWNzZTL+SDLLVGReUyW160Qnn+zP+O+AcRufag==
X-Received: by 2002:a05:6000:114b:b0:2e4:cbef:9f2a with SMTP id d11-20020a056000114b00b002e4cbef9f2amr7707647wrx.2.1680391720902;
        Sat, 01 Apr 2023 16:28:40 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id u13-20020adfeb4d000000b002daeb108304sm5937630wrn.33.2023.04.01.16.28.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Apr 2023 16:28:40 -0700 (PDT)
Message-ID: <da08294e-a491-d008-cda2-903d78e2b63f@gmail.com>
Date:   Sun, 2 Apr 2023 01:28:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
 <7818bd3c-0351-a738-fd69-14b59838cbeb@gmail.com>
 <a6w73aiesdbkrfv336oyvqg4r3mg6jti3lmqymcmnid57u5g4g@iltxswmiebf4>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <a6w73aiesdbkrfv336oyvqg4r3mg6jti3lmqymcmnid57u5g4g@iltxswmiebf4>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DTxO04aBNz3V7QwG7QDyzhsJ"
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
--------------DTxO04aBNz3V7QwG7QDyzhsJ
Content-Type: multipart/mixed; boundary="------------Ekn7NOn0Xhz9bKw9Zu0tBEPU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <da08294e-a491-d008-cda2-903d78e2b63f@gmail.com>
Subject: Re: [PATCH 2/2] sysctl.7: create as .so man5/proc.5
References: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
 <5d8c054990e567bdc9a4745c63eacedee4f22c97.1680300226.git.nabijaczleweli@nabijaczleweli.xyz>
 <7818bd3c-0351-a738-fd69-14b59838cbeb@gmail.com>
 <a6w73aiesdbkrfv336oyvqg4r3mg6jti3lmqymcmnid57u5g4g@iltxswmiebf4>
In-Reply-To: <a6w73aiesdbkrfv336oyvqg4r3mg6jti3lmqymcmnid57u5g4g@iltxswmiebf4>

--------------Ekn7NOn0Xhz9bKw9Zu0tBEPU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/2/23 01:26, =D0=BD=D0=B0=D0=B1 wrote:
> On Sun, Apr 02, 2023 at 01:04:37AM +0200, Alejandro Colomar wrote:
>> On 4/1/23 00:04, =D0=BD=D0=B0=D0=B1 wrote:
>>> This way "whatis sysctl" shows the list of sysctls and documentation,=

>>> in addition to the syscall and program. Indeed, the latter two aren't=

>>> all that useful without the former.
>>>
>>> Not a single concrete file, and it's more of an interface =3D> goes i=
n 7.
>> How about a SEE ALSO reference in the sysctl(8) page instead?  I had
>> a look at that page, and it hints that you should look at proc(5)
>> --it mentions /proc/sys/, although there's no explicit reference to
>> proc(5)--.
> Sure, forwarded as
>   https://gitlab.com/procps-ng/procps/-/merge_requests/177

Nice :)

Best,
Alex

>=20
> Best,
> =D0=BD=D0=B0=D0=B1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ekn7NOn0Xhz9bKw9Zu0tBEPU--

--------------DTxO04aBNz3V7QwG7QDyzhsJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQoviAACgkQnowa+77/
2zJF8xAAlnPfvEVHsBfl6IofUbu/Zmb3BE+fxjZg2iNA9y8tl+tlMImwG3LD2fMu
xWu66JKsStwY6OnjXgonaUldH4KtcOvLUSzAyqYHwqV1GAM/GOfG2j1ni0+NZU5H
It1r9QeuUMDVg3vkNDU0/STex42SYj769gnKSNgPv5w2h2m8lcj6ZHU0TRd99hER
l43eUXJAXDgWTSnG2Wz15/70GXSn0/3k7Ck5WlILq/q+X2Smw7JcJijOPKRApXKt
p6yhT9UkgKJQZ2/ppn8RPNRmUAYQ2KmwSpj500sL7yevyY04tak32sUJX443ibpG
lZ8arI6KPLt7HIAS/GvbYmmopyY6lsJ9j0O4Tp3PdsNX4Dg57oRIlq+ySBflkawx
MD9jqjcXIU+NXIb4gfIlfbqLzIT5u2CyJ0GGuvJZ0bCdrb+8UVunR+tXeQ7I+0AB
pUVECV3MArOiOQAMkLcsdwsvcUxzSRshfQiCbz++5ItcmU640F8feQ3d3LQrJqwv
tT8oNPtLjrXea+8PBcnrzpnuFdI+iOXzAsgBr+bXU4EHUD0STM6CIUW8JnBuOUvc
QKWUHhdfF/6JVEr1ANaXCl0gCeU0kqoDy/y9X6bkap2U+tymLpPUUO+fSstUI2Q8
KteAKwguMrOrro8kfNenKyZkbsWc2MFRcEC640ASmhHFi7I0k3A=
=oakL
-----END PGP SIGNATURE-----

--------------DTxO04aBNz3V7QwG7QDyzhsJ--
