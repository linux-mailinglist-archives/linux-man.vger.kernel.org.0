Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7044D58CD9F
	for <lists+linux-man@lfdr.de>; Mon,  8 Aug 2022 20:28:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbiHHS2b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Aug 2022 14:28:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229448AbiHHS2a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Aug 2022 14:28:30 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86633DE82
        for <linux-man@vger.kernel.org>; Mon,  8 Aug 2022 11:28:25 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id z12so11804629wrs.9
        for <linux-man@vger.kernel.org>; Mon, 08 Aug 2022 11:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=PGEriQEE1zZjISG2grIBiqzPQPQ98I0T0QjlwXAIL0U=;
        b=RyzNA4ZtJHcJiv/DFXF1np6B8FnNYB4idEXMx8ZAEfUZ+islx7LyR+GY8Gqd72ssm6
         /Vk0VEeU/1xUZ7Bu4Lyk/puBW+4v4ZhqbuQQQhZUvTVq0UHD2HBYdnybTZENJV50qaOB
         S/f3oiBx+Y0F7jyeGxane9y54XNt6tq0AsLLP1h/Yqv5iLApiJsP3PtvWeoGSKl9vNgx
         pfMRjQX8Xc8UHh2XTFaP9aLO2H+Qo5waEkq8CrM3lxUcKp4I+8BUfjR1ay9cVjpT/L8c
         Q4BCv+Lxc2VZKU/IkLXbY2SIHqcot3760rgp+VcvYiDbDfCty8xETpgzUFwMzKF79xz9
         8HMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=PGEriQEE1zZjISG2grIBiqzPQPQ98I0T0QjlwXAIL0U=;
        b=BQHYtnJRqJeuitu1qtihRlopigy+1Ng+obXMHvhgZd9YLSc+4EHfVkUR2JSaJhOtRv
         XBm99YSWaLsQDwxV0OV1DNNsNKd9kGM0zOqOptb4+YFDQnsjNR9hcKP/iyjUx8k28r+E
         3fqqD/Qn9Ss9AfKWkvH/P67MonXi2kYKcvqndTHTPwtu6YPyYIRitqIU6zh6pfg/LRdm
         kic5qjAz0nYfJJruNJ+5fc3X0mwyMrJFUEJrR7xDvABMGLC/ELQyONPU85n04mzgja4s
         CV+Umk0XyndX0G15gCP8m82AyvqMLgegqMuuqFwDWjCNU7f+74S/3LuS6AhChS2W6wD/
         Yb0g==
X-Gm-Message-State: ACgBeo2gPrvzkeWDzwpK1R4b7Cko6m7zikiExO40B9x+g0VIvzL+w93V
        Ibcq/7koQEfRtYoEY6DPeDo=
X-Google-Smtp-Source: AA6agR7Mpg0tDRyYZZ2ffUthp3MvT/DwfmVUmmSEcrFDI2GlFGatI5ZoMj0QOsQ7808+z0Ng5rh3dQ==
X-Received: by 2002:a05:6000:118b:b0:21f:110d:99a9 with SMTP id g11-20020a056000118b00b0021f110d99a9mr11527213wrx.505.1659983304013;
        Mon, 08 Aug 2022 11:28:24 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m10-20020a7bca4a000000b003a54f1d007csm1862898wml.10.2022.08.08.11.28.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Aug 2022 11:28:23 -0700 (PDT)
Message-ID: <f19171e3-ac26-0bc7-a92a-2e8f31551d42@gmail.com>
Date:   Mon, 8 Aug 2022 20:28:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
To:     "Guozihua (Scott)" <guozihua@huawei.com>,
        Eric Biggers <ebiggers@kernel.org>
Cc:     mtk.manpages@gmail.com, Jason@zx2c4.com, petr.vorel@gmail.com,
        fweimer@redhat.com, linux-man@vger.kernel.org
References: <20220803074555.64090-1-guozihua@huawei.com>
 <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com> <Yu1lQQWRZlPQ2r2V@gmail.com>
 <731c226a-0f81-322b-199a-4d5245dd3fb3@huawei.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <731c226a-0f81-322b-199a-4d5245dd3fb3@huawei.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0IQb0oJWJ0RxsrljLrTWKwyh"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0IQb0oJWJ0RxsrljLrTWKwyh
Content-Type: multipart/mixed; boundary="------------6lb5Qm01Nq2Ju1GUaoEr9gCs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Guozihua (Scott)" <guozihua@huawei.com>,
 Eric Biggers <ebiggers@kernel.org>
Cc: mtk.manpages@gmail.com, Jason@zx2c4.com, petr.vorel@gmail.com,
 fweimer@redhat.com, linux-man@vger.kernel.org
Message-ID: <f19171e3-ac26-0bc7-a92a-2e8f31551d42@gmail.com>
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
References: <20220803074555.64090-1-guozihua@huawei.com>
 <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com> <Yu1lQQWRZlPQ2r2V@gmail.com>
 <731c226a-0f81-322b-199a-4d5245dd3fb3@huawei.com>
In-Reply-To: <731c226a-0f81-322b-199a-4d5245dd3fb3@huawei.com>

--------------6lb5Qm01Nq2Ju1GUaoEr9gCs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkuDQoNCk9uIDgvOC8yMiAwMzoyMCwgR3VvemlodWEgKFNjb3R0KSB3cm90ZToNCj4gT24g
MjAyMi84LzYgMjo0NSwgRXJpYyBCaWdnZXJzIHdyb3RlOg0KPj4gT24gRnJpLCBBdWcgMDUs
IDIwMjIgYXQgMDg6MzY6MDJQTSArMDIwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+
Pj4+ICtJbiBlYXJpbGVyIHZlcnNpb25zLCBpZg0KPj4NCj4+IFR5cG86IGVhcmlsZXIgPT4g
ZWFybGllcg0KPj4NCj4+IC0gRXJpYw0KPj4gLg0KPiANCj4gR29vZCBjYXRjaCBFcmljIQ0K
PiANCj4gQW0gSSBzdGlsbCBhYmxlIHRvIGZpeCB0aGlzPw0KDQpIZWgsIHNvcnJ5IGJ1dCBJ
IHB1c2hlZCBhbHJlYWR5LiAgSSBmb3Jnb3QgdG8gZml4IGl0LCBzbyBJIGZpeGVkIGl0IGlu
IGEgDQpzZXBhcmF0ZSBjb21taXQ6DQoNCjxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPTIyNmNkOTVkNzhj
MjRkZWUxNjliYjk2OTEzNzIxMjIxZmI4ZjY1NmE+DQoNCkNoZWVycywNCg0KQWxleA0KDQot
LSANCkFsZWphbmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQo=

--------------6lb5Qm01Nq2Ju1GUaoEr9gCs--

--------------0IQb0oJWJ0RxsrljLrTWKwyh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLxVb8ACgkQnowa+77/
2zLpwA/+IVJRsMURyI189HczaByCxUT1Vc8xieVFXjU13LOcmbO5JxkdZgmWpoqw
gUxcSOqiD6jcdnAjYAsrASL8PtmI+p0SGb8h2vkKIpF9Rg/fdoqK6LZuq2IlRbP2
Wz1w39F5URvmS/LINxD8ICUlYPKk4qNrH3uSj2sY7L8A6BhgiZ/+5v86iYx5wrHk
uwje2I3YRZP738Ihfw6SZGKOM1fJOOpEZeNR3241XptaXyi3eJvK/GT3TwoDBxmC
ytpkYyiDYcEqXdVquimbOmPrjA9BG0js/7dPSsVAfjmZFBUJVMvBzIdQNMh3mSBW
H3vRpX/ZvjIcuSoHxSGwcsa+75WHKHZJfElzBQ2o0VZgZgYdNwaIpqysnZ0BCvUh
PILZLNuZ3EXIBAYGBkVptSWFtBW02L2AbMiataz1derUA9twwmHBrSxbupaJmuRm
zlwov83Jpqa7AK7Tu6peAFwjxUY23kp+b7TswIBjl8qNTG+zGr2e2P+lZyJ8Gk64
qOTi28TIwMolDG3wJ/LNOq99DiKxH8MbZ/VLCug+/Ha0ZvAt1hktndsYjTHAngYU
LrxZZCcfiUIG0BZ+e8mUmBcsLuGuHoEXXM6uwGswQc02DdA4Liixgs9Jsr4y7pQX
mIDAsc9NZQcA8k3dwgI7HZjPLvoWbmwx1EnCVsjoMzwfr5UnobU=
=yVj5
-----END PGP SIGNATURE-----

--------------0IQb0oJWJ0RxsrljLrTWKwyh--
