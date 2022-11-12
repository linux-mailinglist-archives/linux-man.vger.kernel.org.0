Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0E6162697B
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 13:46:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234007AbiKLMqb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 07:46:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231768AbiKLMqa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 07:46:30 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6CD31573F
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 04:46:29 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id t1so4359285wmi.4
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 04:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YzjwggRi8DE8byikOt5LRzn6SzB7i5KIyhU2zmtJAcw=;
        b=ZJNsYeofLjWxOc1POoR/eVIzTbsB1hcf6sM5AJwYNUKbQgKbmwodIXtyWyARMSnWwa
         faD24TXpP33LcMu7+e5XTfuGwp2WlgnG2+PLehKHp2AYOG5IzFgZIFJfNt1f+T9/zhrM
         tY9spU3wz2zKaBu2bFr/bCWZx99Y+EbPE4ZvOTY5nBOrEHVwvwY3h7sJrdqvjx4UeJYX
         a7IuYmiLsYp5etHqv+vNWA/y9uYHdPUQx1RQcUIkvxge3GYCfwne2KXAfs6lMzTnepO7
         HBcmCIayOlGzBzZb0MHX90Re8DiO9/NPtR1jJDOZIUT7RIdGf7nXugZrtWKOOKIc8Y93
         8z/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YzjwggRi8DE8byikOt5LRzn6SzB7i5KIyhU2zmtJAcw=;
        b=xutFSzd6Myb3/Fx+MJFSpqHdP453kRm80xSqVuT0BIjH3J5rAVy30R2S0wOBbbqX0h
         k7ZxBo1UGvdioPjjCrWTDx66m5i58qY2xWbauKSnzByjy0omE5ZlIvvr+F66FjUqx2xy
         S7SezkxEXeomOpVOFimwGOS9E4/bN22IDtO20BWjDi7GIpn0F0bJxBhtsCm1fWFx2f7H
         mceU9Jd+V5UTDkWxKg33RDFTQsFwTUC7RyujGhC7/9Jb/j8QJ8ZP9JnC2kNLA6XMHh9i
         YafshopQU7O7tCndRYAnG6tS4EBO4TkAzQSKEpWAXOwtmM2HmTLW2i6atrCy+z29vce0
         JJ4w==
X-Gm-Message-State: ANoB5pmgdC3SPLYMJ/kKFUt2jD70VanAVDxoPrQgiWTYDJOOyhmGF6n2
        q7OoC3G8l6F96nM0T9Tv0HU=
X-Google-Smtp-Source: AA0mqf5tOA1KpPU2ekcVOoxlpyT6kVe1fX9EXYk9jamlY9Y+g7k+SGROeZT16XA0i5CFhRUlI7Px+w==
X-Received: by 2002:a05:600c:1c0a:b0:3cf:84e9:e722 with SMTP id j10-20020a05600c1c0a00b003cf84e9e722mr3769319wms.8.1668257188433;
        Sat, 12 Nov 2022 04:46:28 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c2ca800b003b4a699ce8esm12457642wmc.6.2022.11.12.04.46.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 04:46:27 -0800 (PST)
Message-ID: <8fd62c1a-5fa3-4492-35bb-842da75058bb@gmail.com>
Date:   Sat, 12 Nov 2022 13:46:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Joseph Myers <joseph@codesourcery.com>,
        Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
In-Reply-To: <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------W0gQZll0IEsbjVXPSuHnPva6"
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
--------------W0gQZll0IEsbjVXPSuHnPva6
Content-Type: multipart/mixed; boundary="------------kLw8GUOEl0ZZlMGurZAcPfg2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>, Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <8fd62c1a-5fa3-4492-35bb-842da75058bb@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
In-Reply-To: <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>

--------------kLw8GUOEl0ZZlMGurZAcPfg2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMTIvMjIgMTM6MzQsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBzdHJ1Y3Qg
cyB7DQo+ICDCoMKgwqDCoGludCBhOw0KPiB9Ow0KPiANCj4gc3RydWN0IHQgew0KPiAgwqDC
oMKgwqBzdHJ1Y3QgcyBzOw0KPiAgwqDCoMKgwqBpbnQgYTsNCj4gfTsNCj4gDQo+IHZvaWQg
Zih2b2lkKQ0KPiB7DQo+ICDCoMKgwqDCoHN0cnVjdCB0IHggPSB7DQo+ICDCoMKgwqDCoMKg
wqDCoCAuYSA9IDEsDQo+ICDCoMKgwqDCoMKgwqDCoCAucyA9IHsNCj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgLmEgPSAoKHN0cnVjdCBzKSB7LmEgPSAxfSkuYSwNCj4gIMKgwqDCoMKg
wqDCoMKgIH0sDQo+ICDCoMKgwqDCoH07DQo+IH0NCg0KIEZyb20gaGVyZSwgYSBkZW1vbnN0
cmF0aW9uIG9mIHdoYXQgSSB1bmRlcnN0b29kIGZyb20gTWFydGluJ3MgZW1haWwgaXMgdGhh
dCANCnRoZXJlJ3MgYWxzbyBhbiBpZGVhIG9mIGFsbG93aW5nIHRoZSBmb2xsb3dpbmc6DQoN
Cg0Kc3RydWN0IHMgew0KICAgICBpbnQgYTsNCiAgICAgaW50IGI7DQp9Ow0KDQpzdHJ1Y3Qg
dCB7DQogICAgIHN0cnVjdCBzIHM7DQogICAgIGludCBhOw0KICAgICBpbnQgYjsNCn07DQoN
CnZvaWQgZih2b2lkKQ0Kew0KICAgICBzdHJ1Y3QgdCB4ID0gew0KICAgICAgICAgLmEgPSAx
LA0KICAgICAgICAgLnMgPSB7DQogICAgICAgICAgICAgLy8gSW4gdGhlIGZvbGxvd2luZyBs
aW5lLCAuYj0uYSBpcyBhc3NpZ25pbmcgMg0KICAgICAgICAgICAgIC5hID0gKChzdHJ1Y3Qg
cykgey5hID0gMiwgLmIgPSAuYX0pLmIsDQogICAgICAgICAgICAgLy8gVGhlIHByZXZpb3Vz
IGxpbmUgYXNzaWduZWQgMiwgc2luY2UgdGhlIGNvbXBvdW5kIGhhZCAyIGluIC5iDQogICAg
ICAgICB9LA0KICAgICAgICAgLy8gSW4gdGhlIGZvbGxvd2luZyBsaW5lLCAuYj0uYSBpcyBh
c3NpZ25pbmcgMQ0KICAgICAgICAgLmIgPSAuYSwNCiAgICAgfTsNCn0NCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------kLw8GUOEl0ZZlMGurZAcPfg2--

--------------W0gQZll0IEsbjVXPSuHnPva6
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNvlZsACgkQnowa+77/
2zJY6BAAotRj/6tuUfGvbhMSMIkS6dSyDvaBR+nUMOSn8HCrfLMeyIEdwJ6XkRfp
MlkT9sVTZC5PzULrcdqVzcv2gIgtFF0rGAum254qNMYUImgCvaH3AG3e5FsIUtFi
MksppXbCoecbhPm08Q9zYiPNrUk1pwjtWiK3y6Y2MOlfmQtISbLgvt+36VmD856y
zRM3a1kTGmaEOAflDIlndx4evRCB8Uozd/h8ejcHrTgJsnpjp8L1gD5h5sGZaU8q
HzHGIW+pMPCGqv8+c4XDsni2WZWa/0OejJ/pAaoX5Qvs939fi1aEyuSyb/hYBZ5R
4OaL6BKIN5a66Pq2NtuGwFHbqBJG1RSKuU+/lKOkE+II4SBBwTOUsolfdGgcQ8gv
a4GYV2wbAZmwh5mMJ/mpwv0PsSbGuEblGr0uUzFAWxIgP5xPXl1hXLsPakVc62ms
VBV3waSqrU0cscUnuFoVpD75T2rXUOgBZVlgVGu7x6mS1E59hLBb2CAx/m2Fb2Sn
gpBAF8/jhMvFrcukYOv7eFI2Omqbf4gaO8BV2DIYRcXCIleThZMkyFV25B6khzA1
0T+2NQyOdv/iliBgbo3bHc9rBrFEd4DUkHw/bSIQtNU+BsEpoWJlgAlccLAxzvS6
msEx9FPX2SyumpwUCtPXiwRcogVV7V/zl0a+w0EKLxsFoD6ySIw=
=xMXN
-----END PGP SIGNATURE-----

--------------W0gQZll0IEsbjVXPSuHnPva6--
