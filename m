Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36A006DB763
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:53:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjDGXxs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:53:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjDGXxr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:53:47 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 858DD61AA
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:53:46 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id q5so117843wmo.4
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 16:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680911625; x=1683503625;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O98QjGC/AHwmQTKFnoRsZVCB3Fp9/6ZT5SdgCUsTCYc=;
        b=F7Pu89go5WsO2SsXmO3Jr0e8YPwNXdeO+Bm+tTaG0vTdLB62Ljj5WvkssXxoVT0mzD
         pUl9i1mdiO/TzUw03dfJEcaqhezKEUF2ZQXqml0Rvcy3Apouw5xojGx3p44vo1x9U2B6
         LSecpuqSNKh2CwjZPjmFAxmwE5qgbAFEFjdQEa1Za+P0B/RbEUIgbS+VRHCLKOjbFNk1
         8n5faAZGXXbcHS7X6X5qijxpTBnRlXZzMrA+q3J1KOxBzENcQ8OCvgtJvwRavsr5BQ51
         szGSw517muduC65HMZp026xCPO+krkQmce2C6tjP8s9+TYPeMXW9xS1qAXI9l1+NS/GQ
         uZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680911625; x=1683503625;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O98QjGC/AHwmQTKFnoRsZVCB3Fp9/6ZT5SdgCUsTCYc=;
        b=GPei6HBaexskaCIyy+FSCHBMOsiyKIOwDL7euHIR5x4wQRWL0U5pKIW6g19w+rS5Qk
         /1KeeiVvM6nqPhSH5ranuLzjt4gU5DufE6Pu7WgVBiEzcXBZ1xlo5lj+T6FA3rGC1lJ2
         rwGIv70kc8czH3gnU2sm2TRCTDjdiAr5nmEopIaZKXZr5X8+fL5LxBZMhwGjt+kcC9mg
         m1EoID+VzFiWwEORIXp8JfE56+bKN+/1wtTXvPZSbuSDNio3oXlXag0SVrhUmQ9p7k9f
         VDkiGYFkJA3WnrI2rTx8kAlFtnZz+MDFDiQoRurd02B0QSYdvK9kT6LwxKqRvBxRxLfT
         ZcGg==
X-Gm-Message-State: AAQBX9dERGw5yOfII7p7e3oWQVc7nL+vePA//6E/uuZWx4l/fYKv5RNz
        A2I4lvc2XtFS8Y0w7Dwj5BLr/rjuc2U=
X-Google-Smtp-Source: AKy350bqsP6k66PzcVA7tXIevbmY6IgwBn5iOxgdoPYqyrKHzIMg9WcBaT/mwyXaRkuk84/FeTMxbQ==
X-Received: by 2002:a1c:cc11:0:b0:3f0:3377:c15f with SMTP id h17-20020a1ccc11000000b003f03377c15fmr2282037wmb.12.1680911625010;
        Fri, 07 Apr 2023 16:53:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 16-20020a05600c029000b003ef71d541cbsm6114294wmk.1.2023.04.07.16.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 16:53:44 -0700 (PDT)
Message-ID: <f205c8e3-c27e-7c71-6a7f-a1ff23b69878@gmail.com>
Date:   Sat, 8 Apr 2023 01:53:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
Content-Language: en-US
To:     Tycho Andersen <tycho@tycho.pizza>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
References: <20221128205837.2408050-1-tycho@tycho.pizza>
 <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
 <Y5X+Tq25nxFVTroL@tycho.pizza>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y5X+Tq25nxFVTroL@tycho.pizza>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jcNEBpN6BB6a9B7JVef1I0ZZ"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jcNEBpN6BB6a9B7JVef1I0ZZ
Content-Type: multipart/mixed; boundary="------------se2Z6IM1MDy8BKL9iuUZzasI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Tycho Andersen <tycho@tycho.pizza>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Message-ID: <f205c8e3-c27e-7c71-6a7f-a1ff23b69878@gmail.com>
Subject: Re: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
References: <20221128205837.2408050-1-tycho@tycho.pizza>
 <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
 <Y5X+Tq25nxFVTroL@tycho.pizza>
In-Reply-To: <Y5X+Tq25nxFVTroL@tycho.pizza>

--------------se2Z6IM1MDy8BKL9iuUZzasI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Tycho,

On 12/11/22 16:59, Tycho Andersen wrote:
> On Fri, Dec 09, 2022 at 09:37:35PM +0100, Alejandro Colomar wrote:
>> Hi Tycho,
>>
>> On 11/28/22 21:58, Tycho Andersen wrote:
>>
>> So, yes, I like your patch.  So, patch applied.
>=20
> Thanks!
>=20
>>>
>>> Test program for grins:
>>>
>>> #include <stdio.h>
>>> #include <sys/socket.h>
>>> #include <netinet/ip.h>
>>> #include <arpa/inet.h>
>>
>> BTW, I'm curious, how did you get the headers in the commit
>> message?  I always have a space before the # to avoid git
>> doing harmful stuff.
>=20
> I have,
>=20
> [commit]
>     cleanup=3Dscissors
>=20
> in my ~/.gitconfig, which makes it so that the #s are literals.
> According to the man page you can also set core.commentChar to
> something else if you like that instead.
>=20
>> P.S.:  I don't know if you could please review some patches
>> about which you may be more familiar than I am.  The are
>> somewhat related to this.  They are here:
>>
>> <https://lore.kernel.org/linux-man/20221122153027.10943-1-henri.van.de=
=2Ewater@xs4all.nl/T/#t>
>> <https://lore.kernel.org/linux-man/2d4d8b7b-5890-cd9f-061d-6d259d8ed6e=
e@xs4all.nl/T/#t>
>=20
> Sure, I'm traveling now but will take a look this week.

Friendly ping :)

Cheers,
Alex

>=20
> Tycho

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------se2Z6IM1MDy8BKL9iuUZzasI--

--------------jcNEBpN6BB6a9B7JVef1I0ZZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwrQcACgkQnowa+77/
2zIZ8Q/5AQwYhB6EvYhInxbh2HdfZOxJYYh0FXcHEVJk/W+CTYWoGVTr6eWHr2kY
l9ArRobNjTrKx4Iij1K7Frnb1i/qUmI2340bL9wywhNY9RwxQWzamcme/eoEGDao
xVUDP4GnrAh0XywbmqLi+Oyq1ZUmNmNQ1Er5cTuejz83Yp+16TuuMvQrDxIWKg+p
UzRG3eGBpVGn3XLQzmP8lnkQFdHydeyTi42afp3Dzrlmdp2/vB8bvHp4uXmi1BHz
InRw8BhfXWs4g0o1XkslM04Dkddgl1ia1UxW70qP3kJN1L3csxoGdwrwOplBawv9
/04zgKGGqJ8/c4wD7fSoSAklneBu3BT3PLzpEk0/fvg5U2/3a9L+D0kAtR7NVt2X
FNPsZTLaKl+y4otryntedKUONDnLUwr1VisI8eEODE1StfJbX/UMsxPDTsL+0Z6Q
KnE4vecIXvsMCn9nBnQf1TdEHRZISKXCOeIup9GjfxOmunmWDUwanzA9Xi+h+Kfd
7BaUy2FiK74T4xJtBQ7C2wt1qTR9BF2qG9u6IdP/+NWb8Pwaju5DYIP5az3aeDHH
GYvGcCv8lJAbjVZG1xZyvjT7EeUKxUGErL3ENHz8eveEzAcp2g+ymJyhwlKmzlKs
lvkcNhL7FcVLbAOhbGLe4ajsCg4U8XFdQ+O9Uy7b2hTwacC3JSA=
=qZJC
-----END PGP SIGNATURE-----

--------------jcNEBpN6BB6a9B7JVef1I0ZZ--
