Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4896264FECB
	for <lists+linux-man@lfdr.de>; Sun, 18 Dec 2022 12:47:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbiLRLrN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Dec 2022 06:47:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbiLRLrM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Dec 2022 06:47:12 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0202DB4AB
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 03:47:11 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id m5-20020a7bca45000000b003d2fbab35c6so4632118wml.4
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 03:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1H9dzjfsXE2CvG/J9IJ8+OuSl1tOZHXIBXiqNURLiPE=;
        b=CbJcD2e28AZI+016WZk1CsqerIs117R9VQr+loP4YNZ+IS4KygxG93LMsjHvy2RVhk
         Pep31HciIoP8Mg8OvXq6dbbNo0w0hvz8gT1IP1yjpKRySRMyI7+Mw0bnxmRmGsBxU4rv
         d9ocUQ34LgRoAzaVTYNPjkT78EXEl3fZpm3Q+MhNk/wzRq5aS/d2fXS0i9LaYZqIO5kP
         2cUc/a24Us3SgFOVLnK/qpH7Jgelc6x98BOPYcdLjdRqqEwYNlYoEAKePeumMlXUwhFB
         SY+508Fx9qwjstnBjIg/MKUoLrPFpgtJfTi1MKcUcHfZI95QEP03fO3+AV8/ozKmId5s
         rX2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1H9dzjfsXE2CvG/J9IJ8+OuSl1tOZHXIBXiqNURLiPE=;
        b=gUVkYONuyTyrldahiVhW6T6cd2vs0sEDQHx5MBVyStxH6XMidEjrvczTpRIThB0bqh
         XQZE2ToDO3WKb+WLu6LKy9BnKhGxVJPNlfpPPJ5YrnEHjZYUxsv6fnm9Jl2WqozAU00R
         B9DfNu2Vr4ppR4sO6CWSvO3kMP4jCz3h2kvGByXWBIUnDg1Nvlz3WcQjjif+xVboLrLv
         2id+i5MRZgoMIY/kdENxPSUqPU78hPX9abnb5LgZmu3OYe8dFkgNUWCVEi78ZFIx7HqU
         7rqK13EhlN1A0SQ8le7ZH9tHQJY5TwUDpRbsgfnGBDxDG+547xpzqrS9uC6V95s+S9tp
         z4/Q==
X-Gm-Message-State: ANoB5pl7PMz5Gp5pKxYRhJqCfDfpfdfY6EPTjjDnY54fTaWRnhCa7HK7
        7cNkQRFerEULxQIpy+WnMNbWGT/zgFU=
X-Google-Smtp-Source: AA0mqf7LQXtrsMufgq+Av14QLZ2lg7+ztV52ObLxJSf6GV4FVce6KEZ0m9s6byFGBt8UNvHH0ssQSg==
X-Received: by 2002:a7b:c30e:0:b0:3cf:7397:c768 with SMTP id k14-20020a7bc30e000000b003cf7397c768mr30118087wmj.30.1671364029401;
        Sun, 18 Dec 2022 03:47:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c445100b003cff309807esm17543085wmn.23.2022.12.18.03.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Dec 2022 03:47:08 -0800 (PST)
Message-ID: <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
Date:   Sun, 18 Dec 2022 12:46:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters
 of the manual (was: Bug#1018737: ...))
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221217160830.rcvgr65axz4hpcge@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------IbwRs7pv94OhIqiVQH5HVbpX"
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
--------------IbwRs7pv94OhIqiVQH5HVbpX
Content-Type: multipart/mixed; boundary="------------iZPcZHCXiuKh8DPMJ9iX1p2i";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
Subject: Re: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters
 of the manual (was: Bug#1018737: ...))
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
In-Reply-To: <20221217160830.rcvgr65axz4hpcge@illithid>

--------------iZPcZHCXiuKh8DPMJ9iX1p2i
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMTcvMjIgMTc6MDgsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IEhpIEFsZXgsDQo+IA0KPiBBdCAyMDIyLTEyLTE3VDE0OjE5OjU1KzAxMDAs
IEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gQW5vdGhlciBidWcgcmVwb3J0IChidXQg
bm90IGFib3V0IHRoZSBzY3JpcHQ7IHRoaXMgc2VlbXMgdG8gYmUgYWJvdXQNCj4+IHRibCgx
KSBpbnRlcmFjdGlvbiB3aXRoIGdyb3BkZigxKSwgSSBndWVzcyk6DQo+Pg0KPj4gPGh0dHA6
Ly9jaHV6emxld2l0LmNvLnVrL0xpbnV4TWFuQm9vay5wZGYjcGRmJTNBYm0xMTgxMz4NCj4g
DQo+IFRoZSBzdWZmaXhlcyg3KSBwYWdlLCB3aGljaCBJJ3ZlIG1hbmFnZWQgdG8gbmV2ZXIg
c2VlIGluIDI1IHllYXJzIGFzIGENCj4gR05VL0xpbnV4IHVzZXIhICBBaCwgd2VsbC4NCj4g
DQo+IER1ZGUsIEknbSBmcmlnZ2luJyBfdHJ5aW5nXyB0byBnZXQgZ3JvZmYgcmVhZHkgZm9y
IDEuMjMuMC5yYzIgYW5kIHlvdQ0KPiBuZXJkLXNuaXBlIG1lIHdpdGggdGhpcyBodWdlIGxp
c3Qgb2YgdGhpbmdzIHRoYXQgaGFzbid0IGJlZW4gdXBkYXRlZCBpbg0KPiB0d2VudHkgeWVh
cnMgYW5kIGhhcyBhbGwga2luZHMgb2YgZmlkZGx5IGxpdHRsZSB0aGluZ3Mgd3Jvbmcgd2l0
aCBpdC0tDQo+IHRoaXMgb2YgY291cnNlIGNvbnN0aXR1dGVzIGFuIE9DRCBlbWVyZ2VuY3kg
Zm9yIG1lIQ0KPiANCj4gaHR0cHM6Ly94a2NkLmNvbS8zNTYvDQoNCjpEDQoNCkJUVywgaG93
IGlzIHRoZSBzdGF0dXMgb2YgMS4yMy4wPyAgSG93IG1hbnkgUkMgYnVncyBhcmUgdGhlcmU/
ICBBcmUgdGhleSBncm93aW5nIA0KZmFzdGVyIHRoYW4gdGhleSBhcmUgZWF0ZW4gYnkgYmly
ZHM/ICA6UA0KDQo+IA0KPj4gUnVubmluZyBhbGwgdGhlIGxpbnRlcnMgSSBrbm93IGRvZXNu
J3QgdHJpZ2dlciBhbnkgd2FybmluZ3Mgb24gdGhlDQo+PiBwYWdlIHNvdXJjZToNCj4gDQo+
IFRoYXQgdGJsKDEpIHNvdXJjZSBpc24ndCBpbnZhbGlkIGJ1dCBpdCBpcyBwcmV0dHkgd2Vp
cmQuDQo+IA0KPiBJIHRlbmQgdG8gYWdyZWUgdGhhdCB0aGVyZSBpcyBhIGdyb3BkZigxKSBi
dWcgaGVyZSwgYXMgZ3JvcHMoMSkgaGFuZGxlcw0KPiB0aGUgc2FtZSBpbnB1dCBmaW5lLiAg
QnV0IERlcmkgaXMgdGhlIHJlYWwgZXhwZXJ0IGFuZCBJIHdpbGwgbGV0IGhpbQ0KPiBzcGVh
ayB0byB0aGF0Lg0KPiANCj4gSSdtIGF0dGFjaGluZyBhIHBhdGNoIHRoYXQgZG9lcyB0aHJl
ZSB0aGluZ3M6DQo+IA0KPiAxLiBSZW1vdmVzIHRoZSBoYWNrIHRvIHNodXQgdXAgd2Fybmlu
Z3MgZnJvbSBncm90dHkoMSkuICBUaGlzIHdhcyBpbmRlZWQNCj4gICAgIGEgYnVnLCBpdCdz
IGJlZW4gYXJvdW5kIGZvcmV2ZXIgKHBvc3NpYmx5IHNpbmNlIH4xOTkwKSwgYW5kIGl0IGlz
DQo+ICAgICBmaXhlZCBpbiBncm9mZiBHaXQuICBFeHBlY3QgdGhhdCBpbiAxLjIzLjAuICBt
YW4tZGIgbWFuKDEpIGNvbmNlYWxzDQo+ICAgICB0aGVzZSBkaWFnbm9zdGljIG1lc3NhZ2Vz
IGFueXdheS4NCj4gDQo+ICAgICBodHRwczovL3NhdmFubmFoLmdudS5vcmcvYnVncy9pbmRl
eC5waHA/NjM0NDkNCj4gDQo+IDIuIFN0b3BzIHVzaW5nIGxlYWRpbmcgc3BhY2VzIGluIHRh
YmxlIGVudHJpZXMuICBUaGlzIGlzIGEga2luZCBvZiB3ZWlyZA0KPiAgICAgdGhpbmcgdG8g
ZG8uICBUaGUgbGlrZWx5IHJlYXNvbiBpcyB0aGF0IHRoZSB0YWJsZSBhdXRob3IocykgaGFk
IGEgdG9uDQo+ICAgICBvZiBlbnRyaWVzIHRoYXQgc3RhcnRlZCB3aXRoIGRvdHMgKHRoZSAq
cm9mZiBjb250cm9sIGNoYXJhY3RlcikgYW5kDQo+ICAgICBkaWRuJ3Qga25vdyB0byBwcmVm
aXggdGhlbSB3aXRoIHRoZSAqcm9mZiBkdW1teSBjaGFyYWN0ZXIgKGBcJmApIHRvDQo+ICAg
ICBrZWVwIHRoZW0gZnJvbSBiZWluZyBpbnRlcnByZXRlZCBhcyByZXF1ZXN0cyBvciBtYWNy
byBjYWxscy4gIFRoZQ0KPiAgICAgdGJsKDEpIHBhZ2UgaW4gZ3JvZmYgMS4yMy4wIGV4cGxp
Y2l0bHkgZG9jdW1lbnRzIHRoaXMgdXNlICh0aGUgb2xkDQo+ICAgICBvbmUgc2VlbXMgdG8g
aGF2ZSBleHBlY3RlZCB0aGUgcmVhZGVyIHRvIGhhdmUgYWNjZXNzIHRvIENTVFIgIzQ5IGJ5
DQo+ICAgICBMZXNrKS4NCj4gDQo+ICAgICAgUm93cyBvZiB0YWJsZSBlbnRyaWVzIGNhbiBi
ZSBpbnRlcmxlYXZlZCB3aXRoIGdyb2ZmIGNvbnRyb2wgbGluZXM7DQo+ICAgICAgdGhlc2Ug
ZG8gbm90IGNvdW50IGFzIHRhYmxlIGRhdGEuICBPbiBzdWNoIGxpbmVzIHRoZSBkZWZhdWx0
IGNvbnRyb2wNCj4gICAgICBjaGFyYWN0ZXIgKC4pIG11c3QgYmUgdXNlZCAoYW5kIG5vdCBj
aGFuZ2VkKTsgdGhlIG5v4oCQYnJlYWsgY29udHJvbA0KPiAgICAgIGNoYXJhY3RlciBpcyBu
b3QgcmVjb2duaXplZC4gIFRvIHN0YXJ0IHRoZSBmaXJzdCB0YWJsZSBlbnRyeSBpbiBhDQo+
ICAgICAgcm93IHdpdGggYSBkb3QsIHByZWNlZGUgaXQgd2l0aCB0aGUgdG9rZW4gXCYuDQo+
IA0KPiAzLiBJIGFkZGVkIHRoZSBkdW1teSBjaGFyYWN0ZXIgZXZlbiBvbiAiY29udGludWF0
aW9uIiBsaW5lcyB3aGVyZSBhDQo+ICAgICBkZXNjcmlwdGlvbiBvdmVycmFuLiAgVGhpcyBk
b2VzIG5vIGRhbWFnZSBzaW5jZSB0aGUgdGFiIGNoYXJhY3Rlcg0KPiAgICAgcmVtYWlucyB0
aGVyZSBhcyBhbiBlbnRyeSBzZXBhcmF0b3IgYW5kIHRoZSBkdW1teSBjaGFyYWN0ZXIgYnkg
aXRzZWxmDQo+ICAgICBpcyBoYXJtbGVzcyBhcyBhIG1hcmtlciBvZiBhbiBlbXB0eSB0YWJs
ZSBlbnRyeS4gIEkgZXZlbiByZWNvbW1lbmQNCj4gICAgIHRoaXMgaW4gdGhlIEdOVSB0Ymwg
MS4yMy4wIG1hbiBwYWdlOyBpdCdzIG11Y2ggbmljZXIgZm9yIHBlb3BsZSB3aG9zZQ0KDQoN
Cg0KPiAgICAgdGV4dCBlZGl0b3JzIGRvbid0IHZpc2libHkgaGlnaGxpZ2h0IHRhYnMuDQoN
CkJUVywgSSd2ZSBzZWVuIGluIGdyb2ZmIHJlYWxseSBiYWQgY2FzZXMgb2YgYnJva2VuIGlu
ZGVudGF0aW9uIHdoZXJlIHNvbWUgbGluZXMgDQp1c2UgdGFicywgb3RoZXJzIHVzZSBzcGFj
ZXMsIGFuZCBvdGhlcnMgdXNlIGEgbWl4LiAgV2hhdCdzIHRoZSBjb2Rpbmcgc3R5bGUgDQpy
ZWdhcmRpbmcgdGFicyBpbiBncm9mZiBzb3VyY2UgY29kZT8gIEkgd2FudCB0byBrbm93IGlu
IGNhc2UgSSBzZW5kIGEgcGF0Y2ggc29tZSANCmRheS4NCg0KPiANCj4gQSBfbW9yZV8gaWRp
b21hdGljIHRoaW5nIHRvIGRvIHdvdWxkIGJlIHRvIHVzZSBhIHNwYW5uaW5nIHRhYmxlDQo+
IGVudHJ5IGBcXmAgZm9yIHJvd3Mgd2hlcmUgdGhlIGRlc2NyaXB0aW9uIGdldCBjb250aW51
ZWQsIGJ1dCB0aGF0IG1ha2VzDQo+IG5vIHByYWN0aWNhbCBkaWZmZXJlbmNlIGZvciBhIHNp
bXBsZSB0YWJsZSBsYXlvdXQgbGlrZSB0aGlzIG9uZS4NCj4gDQo+IE1vcmUgaWRpb21hdGlj
IHN0aWxsLCBhbmQgd2VsbCB3b3J0aCBjb25zaWRlcmluZyBmb3IgdGhlIGZ1dHVyZSwgaXMN
Cj4gc2V0dGluZyBfYWxsXyBvZiB0aGVzZSBkZXNjcmlwdGlvbnMgaW4gdGV4dCBibG9ja3Mu
ICBUaGlzIHRhYmxlIGxvb2tzIHRvDQo+IG1lIGxpa2UgaXQgd2FzIGxhaWQgb3V0IGZvciBh
biA4MC1jb2x1bW4gdGVybWluYWwgd2l0aCB0aGUgZXhjZXNzaXZlbHkNCj4gbG9uZyBkZXNj
cmlwdGlvbnMgbWFudWFsbHkgYnJva2VuLiAgVGhpcyBsb29rcyBzdWJvcHRpbWFsIHdoZW4g
dHlwZXNldA0KPiBhbmQgd2lsbCBsb29rIHJpZGljdWxvdXMgb24gYSB3aWRlIHRlcm1pbmFs
Lg0KDQpZZXAuICBQcm9iYWJseSBJJ2xsIGRvIHRoYXQ7IGJ1dCAocHJvYmFibHkpIG5vdCBz
b29uLg0KDQo+IA0KPiBBbHNvLCB1c2Ugb2YgYSB0ZXh0IGJsb2NrIGVuYWJsZXMgdGhlIGVt
cGxveW1lbnQgb2YgbWFuKDcpIG1hY3Jvcw0KPiBpbnN0ZWFkIG9mIGZvbnQgc2VsZWN0aW9u
IGVzY2FwZSBzZXF1ZW5jZXMgdG8gY2hhbmdlIHRoZSB0eXBlZmFjZSwgYW5kLA0KPiBpbXBv
cnRhbnRseSBmb3IgdGhlIG5lYXIgTGludXggbWFuLXBhZ2VzIGZ1dHVyZSwgdXNlIG9mIHRo
ZSBuZXcgYE1SYA0KPiBtYWNybyB0byBjcm9zcyByZWZlcmVuY2UgdGhlIG1hbnkgcGFnZXMg
cmVmZXJyZWQgdG8gaW4gdGhlc2UNCj4gZGVzY3JpcHRpb25zLg0KPiANCj4gSSBkaWRuJ3Qg
cHVyc3VlIGZ1cnRoZXIgcmV2aXNpb24gYWxvbmcgZWl0aGVyIG9mIHRoZXNlIGxpbmVzIGJl
Y2F1c2UgdGhlDQo+IGFzIEkgbG9vayBhdCB0aGVzZSB0aGUgZW50cmllcywgdGhlIGludGVu
c2l0eSBvZiBteSB1cmdlIHRvIGRvIGENCj4gdG9wLXRvLWJvdHRvbSByZXZpc2lvbiBmaXhp
bmcgdGhlIG1hbnkgaW5mZWxpY2l0aWVzIGFuZCBhIGZldyBvdXRyaWdodA0KPiBlcnJvcnMg
aW5jcmVhc2VzIGV4cG9uZW50aWFsbHkgd2l0aCB0aW1lLiAgVGhlcmUgaXMgZXZlbiBhdCBs
ZWFzdCBvbmUNCj4gdW5lc2NhcGVkIGh5cGhlbiEgIPCfpK8gPg0KPiBSZWdyZXR0YWJseSwg
aWYgYSBtb2RlcmF0ZWx5IGV4cGVyaWVuY2VkIEdOVS9MaW51eCB1c2VyIGhhcyBnb25lIDI1
DQo+IHllYXJzIHdpdGhvdXQgc2VlaW5nIHRoaXMgcGFnZSwgbGlrZWx5IG1hbnkgb3RoZXJz
IHdpbGwgZ28gMjUgbW9yZQ0KPiB3aXRob3V0IHNlZWluZyBpdC4gIEEgZ29vZCBpbnRybygx
KSBwYWdlIHdvdWxkIGNyb3NzIHJlZmVyZW5jZSBpdCwNCj4gYWlkaW5nIHRoZSBub3ZpY2Uu
DQoNCkJ1dCBpZiB0aGUgaW50cm8oKikgcGFnZSByZWZlcmVuY2VzIF9ldmVyeXRoaW5nXywg
dGhlbiBpdCB3b3VsZCBiZSBhIGh1Z2UgcGFnZSANCih0aGVyZSBhcmUgdGhvdXNhbmRzIG9m
IHBhZ2VzIGluIHRoZSBMaW51eCBtYW4tcGFnZXMpLiAgQWx0aG91Z2gsIGluIHRoZSBQREYs
IA0KSSdkIGxpa2UgdG8gaGF2ZSBhbiBpbmRleC4gIFRoYXQgbWlnaHQgaGVscC4NCg0KPiAN
Cj4gVW5vZmZpY2lhbCBwYXRjaCBhdHRhY2hlZC4NCg0KRG8geW91IGxpa2UgdGhlIHBhdGNo
PyAgU2hvdWxkIEkgYXBwbHkgaXQsIG9yIGlzIGl0IGp1c3QgYSBkcmFmdD8NCg0KPiANCj4g
UmVnYXJkcywNCj4gQnJhbmRlbg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------iZPcZHCXiuKh8DPMJ9iX1p2i--

--------------IbwRs7pv94OhIqiVQH5HVbpX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOe/bMACgkQnowa+77/
2zKnVQ/8CqOyBmXjZlbhYij0X8wYvHDocJu6GKO3b0LP38L5/QWIn5SfNao7Zz/q
S0SpDuvcLECs6epP9+rs0R9WTg7FkBoy3XGlzsiHPwd2FmzWUDvLQCTQfxgRrmJr
aH+Dwl+eXkHsAmTYNxcAF4t3aZ+grTHtwHou3jJqevjNbSffDw54X0rdvf3WKh5U
L1QCupHizb8sln0FAKCSmmAoDG5qrFuejmvDrJsmH7G0PO21HfY0hrl+rS+rem9N
K2yffASojZ6N3TMPU1kIXbk6OFXqs+EkBaJNQzuUFUprRcch0g1dtOiNxyx+MPZT
IY8/aF0VL6XXnikk7hZJTQC8Ehwt5biYiUJwRwo21myit2SsKpOV84Ye+7uip0LG
k57FFZOk+Kt7pZfQo4sICUMK3ly40o5qRr8J141bUGveJtAgAOCSFifyf0P609Ma
IZX5txbe8g5kfnprZ13M/LIcCehp80GfAwIBVoKzrDx6KuVgxR8MB3CmYm2s2org
oDhZC3oJbYirjYHxgeMWh2u6HEUupp6x02przK6zaeWlXOHD+1R8HqOvkgbA6XW9
cd425Ye5EAZMGICcxqadsanQ2RKO4DxKf9VGCycXZI+GjhoXCzJrzn2HFKYK6hyG
u0W8TTBwY0Nb5hXeLa1y5EE6qEVxuf820w0mvozNJ5YJG/Ug2Ro=
=+UV6
-----END PGP SIGNATURE-----

--------------IbwRs7pv94OhIqiVQH5HVbpX--
