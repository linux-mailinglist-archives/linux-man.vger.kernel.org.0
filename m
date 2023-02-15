Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 943126981EC
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 18:26:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229805AbjBOR0q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 12:26:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbjBOR0p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 12:26:45 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D6AA3865B
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:26:19 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id p5so1461874wmg.4
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 09:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0FBf47KkLwcO6xJ4EBkCszyGu7DXZAm41WYxg49Ysgc=;
        b=oOa60RCS2zxSDVixr/HwR3F2sLnxhVU5bfFPh55FMAAet+PMCrryY6hckGqNfmzisb
         +pXhdoRFGJIXvFnzAUWT+GobliME0HwRobDLwckoki7iQVcUjj3OK+Mbsw4dOyPbRTqS
         rpSxElfyuco7uvpLr3oENfZoo7m1AeTNci7YqMAl52fNNhOs5juGvuYzKSSD/zwQgpXp
         NGfeAOXf2M/NqVHzb6IKS5YApusV/GdDOYZhpqA3nxTaE1JmlEc+1/XffsYpcT6uHHyZ
         dla2U0vn5+fgdnF4HVMIr1/yzUe7LDZxBoAgys3ilo/Zt0P/+V/EGrSDnbjTDKOWtu4n
         X2tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0FBf47KkLwcO6xJ4EBkCszyGu7DXZAm41WYxg49Ysgc=;
        b=Mk39hSijlAVweqeFs/xflENx/oiIyK3q1hi9qiEv45eth/4ugmOBT2DCZibAXgEzJq
         zYWVJQzOrJgi+WpO2aadgZ+WGF27yveK/l4kO8XFOoAaVwXzaMlpouO8M09JD2OIfjAh
         ucozXi/mRK0kbOrsUDfoWAWLXdM4TFgVG97qg+8AnyKgpGF4BwhIGY82zyearqIvzp4G
         J4y3UZIMzU2pKVI5ktescJBpxcflQ/vHTtw4uYVzHpIzDvIgY7OvQzlqsyMoSRc3CK8U
         uGxjUxLroalxFjsOV1rdh28dhe0hCnLT0PXD6HLDBjxMjN540xuLXJlgi9jTZOmO3NLv
         nANQ==
X-Gm-Message-State: AO0yUKXC4jLHl4IPIWeHS2rsYD8QTURedZfdM0dM8H73wMLaIlfALfKK
        ErcJpHHWxjbmou7x6IFy1m+62Nb6Vr0=
X-Google-Smtp-Source: AK7set+wWnusTkxBGnT6fcE7Tge51FasC+Hb8Pepz+D/WOYfj/fHKdvK6nOw8/NUFnRxTZq3UUqLxA==
X-Received: by 2002:a05:600c:4393:b0:3e2:6f1:5203 with SMTP id e19-20020a05600c439300b003e206f15203mr815462wmn.4.1676481977874;
        Wed, 15 Feb 2023 09:26:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c9-20020a7bc009000000b003dc4a47605fsm2806761wmb.8.2023.02.15.09.26.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 09:26:17 -0800 (PST)
Message-ID: <27264e6b-bc50-f772-f8d5-1abc4ebcbe62@gmail.com>
Date:   Wed, 15 Feb 2023 18:26:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] memcmp.3: wfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
Cc:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230215130750.30037-1-schwindl@posteo.de>
 <20230215171748.mni23y3wumtoe5fy@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230215171748.mni23y3wumtoe5fy@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------m5XpRj0qYloqg7Ozj7kTARUX"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------m5XpRj0qYloqg7Ozj7kTARUX
Content-Type: multipart/mixed; boundary="------------qvdKCAnMJ3e2DSjo0eLUuVht";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
Cc: Alejandro Colomar <alx@kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <27264e6b-bc50-f772-f8d5-1abc4ebcbe62@gmail.com>
Subject: Re: [PATCH] memcmp.3: wfix
References: <20230215130750.30037-1-schwindl@posteo.de>
 <20230215171748.mni23y3wumtoe5fy@jwilk.net>
In-Reply-To: <20230215171748.mni23y3wumtoe5fy@jwilk.net>

--------------qvdKCAnMJ3e2DSjo0eLUuVht
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 2/15/23 18:17, Jakub Wilk wrote:
> * Tom Schwindl <schwindl@posteo.de>, 2023-02-15 13:07:
>> -On Linux, it may be necessary to implement such a function oneself.
>=20
> This sounds awkward to me too.
>=20
>> +On Linux, it may be necessary to implement such a function yourself.
>=20
> This is better, but I'd use active voice here:
>=20
>    On Linux, you may need to implement such a function yourself.

Seems reasonable.  By using active voice, you make it more personal,
and "yourself" sounds more appropriate than "oneself".

Would any of you please send a patch?

Thanks for the reports!

Cheers,

Alex

>=20
> (I'm not a native speaker.)
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------qvdKCAnMJ3e2DSjo0eLUuVht--

--------------m5XpRj0qYloqg7Ozj7kTARUX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPtFbgACgkQnowa+77/
2zLSyg//ezIvYoyCn9z9WJWrQ6jQyyD1F2MWQWB6lzqFBOABC8xgNRXsQ9ZWQIYZ
7R8Jv5iA03P+z8Sn/nUsQhZ2oHvtUFbV8AznpHUL83fdL1+Yb6lNxHTuHeokxfct
4p5Nis5EzuxUrM5braOhnnf24/dlf5B4YucMwAF1ARFeDL4wprObfqtA3neCshP/
tYA2rVUZSdvAKyKatM98faW7vgXsXp0WAurX61x2ip7xuvuGo41BTaRohDEAP/rz
VnqeCNApGGPpL+Sp2Qe8Uq+kkhDGuZ42ZRxUR6HoGcj2B2ulNn0lG5JJatHPdTIK
NT1CxwrbGHvI6oKD0ghwefvrRHUJm/O0TDmSkUthCUM80BbZn8Nn9bkNLlIw/rLg
/wyOGfLskhkneBmEGr3oKQFaPGqZLasPVEXIUHu8w339TOvfsqdaqggGmYMmZnyZ
xvb70KlLWYbZ+f9XIJOX/MU6iEpO4fwVoWJPYatMYA1cfV0zbQXkZ7o2Ka9wZxkc
+FlHOG6+kluu9nQd85eXN7+M8nr/9jY4JXWD/rm33GwAaw0r3A7NyJ+06FPadH8U
Ijq4vxuIHyO6K4YmCu1WInk1mNMvyvgrLQG830Yp3i3zXuKmVriTU79o1P7sRifT
liPDTAbQ33va7d641EKQyjulzttBV+Pzu59ixbXoG9rsugkrgYM=
=FB4D
-----END PGP SIGNATURE-----

--------------m5XpRj0qYloqg7Ozj7kTARUX--
