Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05BF56BDAC7
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 22:21:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjCPVVy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Mar 2023 17:21:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjCPVVx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Mar 2023 17:21:53 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9555BCD642
        for <linux-man@vger.kernel.org>; Thu, 16 Mar 2023 14:21:47 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id r18so2784259wrx.1
        for <linux-man@vger.kernel.org>; Thu, 16 Mar 2023 14:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679001706;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GanScnflezjdwJR65ifUz6VrNDM04LNEBP6FWots+ts=;
        b=Q8hUCb0mYuM6hRE5sJnePhjtuEa+U7Tq4+mSgIGybdnk2O8b/OulU6rA9D57HUqZMm
         JM5GS6+QZHDafd4MZmGIVM+9RN0bxd/lMdsboOIDm32UCkfVcvh3t6OpjV7qugL7s56s
         EkXdpWM9yhUPU0TtxDFx19hHkywe9P1qtenf2SrgZBuyykuSZSBaa4vIu3j/9p51NlGZ
         Aa9HGoRIarVje/gB7OCocM+XBp8Nk94pQfDF7LjSFBjjxQt7MY030vEC1x8zFQ/8hXrl
         e8Im6ysYWZeghPSoif57m8J9uNLfjR0g4iaC/rG9eMcRLwLJlkv92Sa6nujntQRd+LGJ
         3GQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679001706;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GanScnflezjdwJR65ifUz6VrNDM04LNEBP6FWots+ts=;
        b=slx0gTMAhpucE+e4WR7iYRVHwOUCCuilXp9NaVsJDJUnpJnznqcnDDqjbs3yt6uliD
         edLlh0x0nodOuiE4H0VUGfRMtASV83T8C9HyYNdjmZZDA4zs1xyWE/AXL1524kuxz48y
         6MRpfOE9xx71Ljakb1Vpv2jQ0CVkTUslDg50nhWe29E8oHynZqvQkFrmsI+sbTfa+n5V
         7QbX8oEh3PjdOuMQJqjNMMuce62WA+LM7MvLCwN4Ub0vMwn4GcUYH8b3O4KUS1dcFUgp
         VtL7i9bZxLvo+r1ER5NtKM7T7tBOtX4J6Zp7VHFvYqp1zHEPh6PTgCb7hY841gEkhskh
         O6oA==
X-Gm-Message-State: AO0yUKWEnGklmGArGHC1S1FmaWwSiz1u9/7as1ROj9UeAKU3dEfjKeJ5
        LjjAycrZSVsHqEM3asLEW0zk3lWOuoQ=
X-Google-Smtp-Source: AK7set+C/QlLUX2vGl7JBq9cHz9deBAu+K4TLL4BcuvS64acCocyWVhXnnTcidBG8clDOwJSJj4VIQ==
X-Received: by 2002:a5d:4405:0:b0:2c7:e5f:e0e0 with SMTP id z5-20020a5d4405000000b002c70e5fe0e0mr5734593wrq.65.1679001705893;
        Thu, 16 Mar 2023 14:21:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k2-20020a5d6e82000000b002c55b0e6ef1sm393588wrz.4.2023.03.16.14.21.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 14:21:45 -0700 (PDT)
Message-ID: <0d391f3d-732b-7f58-57b7-b947b70e0ce2@gmail.com>
Date:   Thu, 16 Mar 2023 22:21:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: online manual pages
To:     enh <enh@google.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        linux-man <linux-man@vger.kernel.org>
References: <665dd2b3-3e55-5dfc-1c59-666c479c73fd@gmail.com>
 <CAJgzZooxvLtnkb5+9JH3bAtqtqVDEYxw9+OSjaWZr57vMBurTw@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAJgzZooxvLtnkb5+9JH3bAtqtqVDEYxw9+OSjaWZr57vMBurTw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------haoN285MOw2Q56WnF9u6PEZP"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------haoN285MOw2Q56WnF9u6PEZP
Content-Type: multipart/mixed; boundary="------------VM7m2ne9EJHCRzeXiOEIPRv1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: enh <enh@google.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, linux-man <linux-man@vger.kernel.org>
Message-ID: <0d391f3d-732b-7f58-57b7-b947b70e0ce2@gmail.com>
Subject: Re: online manual pages
References: <665dd2b3-3e55-5dfc-1c59-666c479c73fd@gmail.com>
 <CAJgzZooxvLtnkb5+9JH3bAtqtqVDEYxw9+OSjaWZr57vMBurTw@mail.gmail.com>
In-Reply-To: <CAJgzZooxvLtnkb5+9JH3bAtqtqVDEYxw9+OSjaWZr57vMBurTw@mail.gmail.com>

--------------VM7m2ne9EJHCRzeXiOEIPRv1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 3/16/23 18:55, enh wrote:
> On Sun, Feb 12, 2023 at 1:37=E2=80=AFPM Alejandro Colomar <alx.manpages=
@gmail.com>
> wrote:
>=20
>> Hi Elliott,
>>
>> I've pushed the new PDF book of the Linux man-pages (Deri produced the=

>> scripts to produce it) to kernel.org with the 6.03 release of the Linu=
x
>> man-pages.  Since you mentioned that you needed Michael to maintain th=
e
>> pages in man7, and we don't seem to be able to contact him to do so, m=
aybe
>> this is good enough for you for now.  Please have a look at <
>> https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-page=
s-6.03.pdf>
>> and see if it serves your purpose.  Maybe you can suggest some improve=
ments.
>>
>> You can already link to specific pages (and specific sections within
>> pages) within that online PDF.
>>
>=20
> how does that work? i've never seen a link to a page _within_ a pdf fil=
e...

How does that work, as in, how is it implemented?  I don't know.  That's
Deri's specialty (and in general, groff maintainers).

How does that work, as in, how do I get a link to a page within a PDF?

<https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/man-pages-=
6.03.pdf#acct_2>

Go to that PDF, and there are links; copy one and share it.  It has
bookmarks, so you can navigate with the left panel too.

Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------VM7m2ne9EJHCRzeXiOEIPRv1--

--------------haoN285MOw2Q56WnF9u6PEZP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQTiF8ACgkQnowa+77/
2zIP1Q/9ERGS6yn21lUZIpG53LaqRqRmWrKJ0QZqSU9CiiOg4g5l8afX8NKfmEFB
SS7Tdyr8qDU6QfV5QlTac5NDpWfpwUHZjhS38bYMfOpMh3WHkW15CblQ9tmOtT01
2njuHH3xOfHW3mFQ37KwwmIwDz7j4W0g92tazyAgaHDnoIM0fjAQ2q5VZ9z1Rcbu
BUtjPVLHmQyLuB+vqvr/6asaU5f3LONwdfeLsNDHrExa2dbeqaubZuVCo5jv2dlx
/T95PfMudLgQYUfcDWJgcp9NoudQNs5sGbs3zKxY+9xJflBznoaDC2yTOCPA4m6o
oMZ5DUkDS4iFiRsiDJysT0n8XMKyzHep1iojAXNajHLY9GFIkuqeOd/cdIi8hn0i
U5+wdDgkwAZ7/ccngjHt3UTP8q5SJU6e4qrgNolTMK2im5nM962O1Facmj7av84k
72BDmJvmhk+FDqrWz2G3m/TwBNw4s3slhFv8yF5tGWyvrouxQ31boMs2jkRTCd/+
zCCYl7KZ/N5gzqBVVosZ1vR6lZcd/G0GuzYjMOKd3V+M8TCdY3A+zFqFkbYWhXyD
0oVHTI8HSU55SnqqeMQs1G19NpgKLgB6rjjDXg2zq1vSGLKNUVC/JiBDzqg7v0b7
yEXafegQyjG3z3ovdZAOs69wG3Al0A/Mc99lQGtsiomXn3mGeh8=
=ANnL
-----END PGP SIGNATURE-----

--------------haoN285MOw2Q56WnF9u6PEZP--
