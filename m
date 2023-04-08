Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE9886DBB2E
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 15:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbjDHNdE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 09:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjDHNdD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 09:33:03 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 757865FFD
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 06:33:02 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id e22so833106wra.6
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 06:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680960781; x=1683552781;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gptgu95jN02Z8fJ6vot2VHkQRK0tnYvqLtgVXCoKG58=;
        b=ph+Dy546dCpq4/eshyV5EuKMYZXyNignibhTMu8PA820qPpyKAbLh7dvtX/j4NHh9R
         evoRU6eq7Mg06b7hh/e25XzRCjtiCAYwZDdNQionJtPTpiiaZBQqXSrJK4iyzQbgKZmr
         J26D3m1+vWiZiZduzh8c4uawpxBF+3izn46QWedx+BJ+Gb0XyuJQlQWmC6b63fo4NDPp
         g/AYG5yDNNFijOQTLJAyKQy02UE6koD2/xklQryfHZHqo1PVEKQ7IYBZnaKQmdOe0bic
         PTUObZiCX2dpz6HDLjdi5ybMrdPWzDbfuKD16KwWUGH06FcRa+3vDBL4BDfNyTxlJgoa
         Im2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680960781; x=1683552781;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gptgu95jN02Z8fJ6vot2VHkQRK0tnYvqLtgVXCoKG58=;
        b=n1PL6/UyZfUTcspRu1llcWFDI/KEEjs5R6XyrvQgxQOFBW5rvNKkncPOO+0J3UawVG
         Z1IIocD6asnRxHWQA08Nc0Ed/ZSGHpJX+UGik/59ysXqVjVSbQfXvuVwEdo1Y4W/Ywv2
         UjCenenmnfNuZG7GDmiS+tdH6KWiJQ0ctoG5MaG15nvbf54QSErjyDWgB4RC8GYYQo9t
         BO3mAW6ojACGb3KOIF9AxPXkWjFfs0yK81OiiD7D+7Q8Qd8v1NeVM24xUiwzkjPiUONG
         Nne8L9k9D5i05fB6pojA4BZFQPL6n68KP//H0fYXoFc6R7liQZpzKaIvjvgsbAaf62h1
         4qcA==
X-Gm-Message-State: AAQBX9f8ppkx1xKcSUSPQYksP5/f6TeyvRiWLFeP3ejf0ZNksHabJalm
        2mYqfF1rNN1tbwPMHS8sfBUfzDhFlGE=
X-Google-Smtp-Source: AKy350YYmKKZzm+i+RI4s5I5+27IMC6FkcXBW5NxU6QXdSZ7zl8toTMewnxZZS0nBOErrpM6xgAl0g==
X-Received: by 2002:adf:e681:0:b0:2ef:cba5:add1 with SMTP id r1-20020adfe681000000b002efcba5add1mr823505wrm.36.1680960780825;
        Sat, 08 Apr 2023 06:33:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id y4-20020adff6c4000000b002d1daafea30sm6968667wrp.34.2023.04.08.06.33.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 06:33:00 -0700 (PDT)
Message-ID: <c85a490e-64b1-cf13-e668-2dbd4cc90b51@gmail.com>
Date:   Sat, 8 Apr 2023 15:32:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
Content-Language: en-US
To:     Nadav Amit <namit@vmware.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>
References: <20220307184852.20351-1-namit@vmware.com>
 <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
 <7a4e4c9b-e135-a3bf-17fb-388efd0a341e@gmail.com>
 <644B7C32-221D-43B5-B9DC-31F9E53143E9@vmware.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <644B7C32-221D-43B5-B9DC-31F9E53143E9@vmware.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------080kn19cxiUrUx0zbOH643UA"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------080kn19cxiUrUx0zbOH643UA
Content-Type: multipart/mixed; boundary="------------s99IJgp8BVRyLzS0XDiCA096";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Nadav Amit <namit@vmware.com>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>, Peter Xu <peterx@redhat.com>,
 David Hildenbrand <david@redhat.com>
Message-ID: <c85a490e-64b1-cf13-e668-2dbd4cc90b51@gmail.com>
Subject: Re: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_EXACT_ADDRESS
References: <20220307184852.20351-1-namit@vmware.com>
 <5281de2a-08c2-e159-0e15-cf4225f4466b@gmail.com>
 <7a4e4c9b-e135-a3bf-17fb-388efd0a341e@gmail.com>
 <644B7C32-221D-43B5-B9DC-31F9E53143E9@vmware.com>
In-Reply-To: <644B7C32-221D-43B5-B9DC-31F9E53143E9@vmware.com>

--------------s99IJgp8BVRyLzS0XDiCA096
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Nadav,

On 4/4/23 18:01, Nadav Amit wrote:
>=20
>=20
>> On Mar 30, 2023, at 3:52 PM, Alejandro Colomar <alx.manpages@gmail.com=
> wrote:
>>
>> Hi Nadav,
>>
>> On 3/14/22 13:23, Alejandro Colomar (man-pages) wrote:
>>> Hi Nadav,
>>>
>>> On 3/7/22 19:48, Nadav Amit wrote:
>>>> From: Nadav Amit <namit@vmware.com>
>>>>
>>>> Describe the new UFFD_FEATURE_EXACT_ADDRESS API feature.
>>>>
>>>> Signed-off-by: Nadav Amit <namit@vmware.com>
>>>> ---
>>>
>>> LGTM.  Please ping when it's added to Linus's tree,
>>> and add a comment with the commit message that added it.
>>
>> I've checked that this was finally added to the kernel.  Should I appl=
y
>> the patch as is, or is there anything that was changed?
>=20
> Thanks for following up. Nothing to change, just apply it as is.

Thanks!  I applied patch 1/2.

Cheers,
Alex

>=20
> Regards,
> Nadav

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------s99IJgp8BVRyLzS0XDiCA096--

--------------080kn19cxiUrUx0zbOH643UA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQxbQQACgkQnowa+77/
2zJN5w/+LcdqO/0LlHvzcGAeh9ivbFcQW4RE6jf7kk6Pt1yjoYmSe2wCF3qUmcTe
WIz09RE4Ims1o+mnmSIGDY54WzwSUznDmZji0f+I2sfUxMDBtWipnwq2hUnXMcX/
pgMS9Ei8PdyzDF9CyyJwN57v8tbXDBZIuFgOVJdS9EaPcU/V5M3zCqi65t1J1GKR
GD4qrJYsIEzB0NVa5YR2+Rap2Tt32SjWsZboT4OePvD2KYxqLdl9dexRv7nSt+Kq
8PILOnircYyKmTsVZdgIxROpio52hjo1rKSiRW/0grt1S4Ufy0wowTvnZxvyn8sx
mQOHzUeAI2nNgebSGzoev1cpO8IOqrpfOcPc40neB+G2+uvKbn9Y3LEnpU4jaZKJ
+GFyEsAav36rFrJcWVfZkPe8h/MALyYitDDAOAYwI0tDsM+XEBb7nh/+/gpYr8x8
t0MJKymq3bdQAAMc9x8I9CnrJYwWs0Q1bZc6/j6dWc2uYyjUYGP/5yzE62Jacn7x
iCAupZYaNMdLBVHo6m692wJuUf4R6YjIqtxuO1G9a1voJqhtojUje0SJ4mE3TOxY
rwYjVQIqjFxljPOFjt7uKg8/iG28GwYyVREXRrhLBEj6dBpoLZM2Pnj2hn4Nc/wN
EkQSkRjyCk3GBOIVMYKhvKoaxeW6pR3mMOs5+HzdP16q+4UlwjI=
=VGKU
-----END PGP SIGNATURE-----

--------------080kn19cxiUrUx0zbOH643UA--
