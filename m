Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34F0462709D
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 17:34:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235326AbiKMQeQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 11:34:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233792AbiKMQeP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 11:34:15 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF63565D2
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:34:13 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id a14so13284822wru.5
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:34:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z1luTm3PfEMQXfh4hOHQ/7bdejHnIeWj3KL8iFprqVo=;
        b=UmOH/PAPro+fypChc6yib49vRg1aG9hxFzbUNqiIWeYbXAY0GY2kQXR05bZsTGEqpy
         qAR40X31eTHYaVhxcMk9R+HCsw+5TETERGuBf7gXRB53D95Q+ljYiuI9v36US0fhsWC+
         ObyLLJ3y/e/tpa6mb+YFSZ7I+emdd8ukUAq3HqpWn96H6mgy+OpFdaq0k/35NCtqyj8T
         kLFNKe5NcgjKk/BjzqPsjrP6cx7r9sTVO7TwT3O647kRO76QO4Nl1LE70T1IGXfDyRiK
         9Oorga3unqwU3v57Rur5GsAmNlP63la7UuEonE598BRiHVFlyIcGJGIYooNjeJcwb4TY
         1SIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=z1luTm3PfEMQXfh4hOHQ/7bdejHnIeWj3KL8iFprqVo=;
        b=dM9J/hTK07dyy0zeL0s/tSI4dQNQctDLjNq6ySg9LA3qyQ4uayWSmKRW7wOOwdhpE9
         N/9RlOYzEvqrEnQq4f85SQAnvkLkphzxHJ8HcGKmYDP0ylmmfoAaRwPGLmSLdgts8iea
         JRdUr+JNokk4Ud+jeaFbzbCE349wADvW2d0b6zv0yQKayFXLsYPH6AHKe2Ko3SZxz6Ir
         mhs8TXz9eRnHEvEl+9xnEdhfykgp4C+9MeajHLrURrBKT4v7L9h+fYsRdRLTd8F/V18D
         QLEqHau7matYH7qpv0/XNzMmHP/BLCjfHUDb34rvQOpTWfmiP2XwlSCRFwxgxyy8hTw4
         CCEg==
X-Gm-Message-State: ANoB5pkSSgyxtnGp27K35SwJPNTmTcGx6USSkVVMSrjC+yh+yQ70djN4
        yVx4YbJxIsQtHQtYGrU/NUY=
X-Google-Smtp-Source: AA0mqf63PY6zup9XITidN8inaqQZI6ach2BdqWcr0SHjQ5uT84aLVsWx2yTiqz2KeV1TRFKK0ctHrw==
X-Received: by 2002:adf:dec5:0:b0:236:58c8:2b91 with SMTP id i5-20020adfdec5000000b0023658c82b91mr5478949wrn.99.1668357252290;
        Sun, 13 Nov 2022 08:34:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m14-20020a05600c4f4e00b003a1980d55c4sm17349543wmq.47.2022.11.13.08.34.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 08:34:08 -0800 (PST)
Message-ID: <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>
Date:   Sun, 13 Nov 2022 17:34:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
 <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
 <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
In-Reply-To: <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------X0vtvvQvNfCyI4zPBvCcCnHG"
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
--------------X0vtvvQvNfCyI4zPBvCcCnHG
Content-Type: multipart/mixed; boundary="------------GJgCHdq0IMrIq00Id9mfLUx5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <d0fed7ea-a60e-7524-a05c-679b77570dcb@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <85bc60c2-c9b2-7998-1722-4201932d3a91@gmail.com>
 <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
 <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
In-Reply-To: <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>

--------------GJgCHdq0IMrIq00Id9mfLUx5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEzLzIyIDE3OjMxLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gDQo+
IA0KPiBPbiAxMS8xMy8yMiAxNzoyOCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBT
WU5PUFNJUzoNCj4+DQo+PiB1bmFyeS1vcGVyYXRvcjrCoCAuIGlkZW50aWZpZXINCj4+DQo+
Pg0KPj4gREVTQ1JJUFRJT046DQo+Pg0KPj4gLcKgIEl0IGlzIG5vdCBhbiBsdmFsdWUuDQo+
Pg0KPj4gwqDCoMKgIC3CoCBUaGlzIG1lYW5zIHNpemVvZigpIGFuZCBfTGVuZ3Rob2YoKSBj
YW5ub3QgYmUgYXBwbGllZCB0byB0aGVtLg0KPiANCj4gU29ycnksIHRoZSBhYm92ZSBpcyBh
IHRoaW5rby4NCj4gDQo+IEkgd2FudGVkIHRvIHNheSB0aGF0LCBsaWtlIHNpemVvZigpIGFu
ZCBfTGVuZ3Rob2YoKSwgeW91IGNhbid0IGFzc2lnbiB0byBpdC4NCj4gDQo+PiDCoMKgwqAg
LcKgIFRoaXMgcHJldmVudHMgYW1iaWd1aXR5IHdpdGggYSBkZXNpZ25hdG9yIGluIGFuIGlu
aXRpYWxpemVyLWxpc3Qgd2l0aGluIA0KPj4gYSBuZXN0ZWQgYnJhY2VkLWluaXRpYWxpemVy
Lg0KPj4NCj4+IC3CoCBUaGUgdHlwZSBvZiBhIC5pZGVudGlmaWVyIGlzIGFsd2F5cyBhbiBp
bmNvbXBsZXRlIHR5cGUuDQoNCk9yIHJhdGhlciwgbW9yZSBlYXNpbHkgcHJvaGliaXQgZXhw
bGljaXRseSB1c2luZyB0eXBlb2YoKSwgc2l6ZW9mKCksIGFuZCANCl9MZW5ndGhvZigpIHRv
IGl0Lg0KDQo+Pg0KPj4gwqDCoMKgIC3CoCBUaGlzIHByZXZlbnRzIGNpcmN1bGFyIGRlcGVu
ZGVuY2llcyBpbnZvbHZpbmcgc2l6ZW9mKCkgb3IgX0xlbmd0aG9mKCkuDQo+Pg0KPj4gLcKg
IFNoYWRvd2luZyBydWxlcyBhcHBseS4NCj4+DQo+PiDCoMKgwqAgLcKgIFRoaXMgcHJldmVu
dHMgYW1iaWd1aXR5Lg0KPj4NCj4+DQo+PiBFWEFNUExFUzoNCj4+DQo+Pg0KPj4gLcKgIFZh
bGlkIGV4YW1wbGVzIChsaWJjKToNCj4+DQo+PiDCoMKgwqDCoMKgwqDCoCBpbnQNCj4+IMKg
wqDCoMKgwqDCoMKgIHN0cm5jbXAoY29uc3QgY2hhciBzMVsubl0sDQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3QgY2hhciBzMlsubl0sDQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IG4pOw0KPj4NCj4+IMKgwqDCoMKgwqDCoMKg
IGludA0KPj4gwqDCoMKgwqDCoMKgwqAgY2FjaGVmbHVzaCh2b2lkIGFkZHJbLm5ieXRlc10s
DQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG5ieXRlcywN
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgY2FjaGUpOw0K
Pj4NCj4+IMKgwqDCoMKgwqDCoMKgIGxvbmcNCj4+IMKgwqDCoMKgwqDCoMKgIG1iaW5kKHZv
aWQgYWRkclsubGVuXSwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVk
IGxvbmcgbGVuLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50IG1vZGUsDQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCB1bnNpZ25lZCBsb25nIG5vZGVt
YXNrWygubWF4bm9kZSArIFVMT05HX1dJRFRIIOKAkCAxKQ0KPj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIC8gVUxPTkdfV0lEVEhdLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdW5zaWduZWQgbG9uZyBtYXhub2RlLCB1bnNpZ25lZCBpbnQgZmxhZ3MpOw0K
Pj4NCj4+IMKgwqDCoMKgwqDCoMKgIHZvaWQgKg0KPj4gwqDCoMKgwqDCoMKgwqAgYnNlYXJj
aChjb25zdCB2b2lkIGtleVsuc2l6ZV0sDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY29uc3Qgdm9pZCBiYXNlWy5zaXplICogLm5tZW1iXSwNCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzaXplX3Qgbm1lbWIsDQo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc2l6ZV90IHNpemUsDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50ICgqY29tcGFyKShjb25zdCB2b2lkIFsuc2l6ZV0sIGNvbnN0IHZvaWQg
Wy5zaXplXSkpOw0KPj4NCj4+IC3CoCBWYWxpZCBleGFtcGxlcyAobXkgb3duKToNCj4+DQo+
PiDCoMKgwqDCoMKgwqDCoCB2b2lkDQo+PiDCoMKgwqDCoMKgwqDCoCB1c3RyMnN0cihjaGFy
IGRzdFtyZXN0cmljdCAubGVuICsgMV0sDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjb25zdCBjaGFyIHNyY1tyZXN0cmljdCAubGVuXSwNCj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBsZW4pOw0KPj4NCj4+IMKgwqDCoMKgwqDC
oMKgIGNoYXIgKg0KPj4gwqDCoMKgwqDCoMKgwqAgc3RwZWNweShjaGFyIGRzdFsuZW5kIC0g
LmRzdCArIDFdLA0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNoYXIgKnJl
c3RyaWN0IHNyYywNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIGVu
ZFsxXSk7DQo+Pg0KPj4gLcKgIFZhbGlkIGV4YW1wbGVzIChmcm9tIHRoaXMgdGhyZWFkKToN
Cj4+DQo+PiDCoMKgwqAgLQ0KPj4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IHMgeyBpbnQgYTsg
fTsNCj4+IMKgwqDCoMKgwqDCoMKgIHZvaWQgZihpbnQgYSwgaW50IGJbKChzdHJ1Y3Qgcykg
eyAuYSA9IDEgfSkuYV0pOw0KPj4NCj4+IMKgwqDCoMKgwqDCoMKgIEV4cGxhbmF0aW9uOg0K
Pj4gwqDCoMKgwqDCoMKgwqAgLcKgIEJlY2F1c2Ugb2Ygc2hhZG93aW5nIHJ1bGVzLCAuYT0x
IHJlZmVycyB0byB0aGUgc3RydWN0IG1lbWJlci4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
IC3CoCBBbHNvLCBpZiAuYSByZWZlcnJlZCB0byB0aGUgcGFyYW1ldGVyLCBpdCB3b3VsZCBi
ZSBhbiBydmFsdWUsIHNvIA0KPj4gaXQgd291bGRuJ3QgYmUgdmFsaWQgdG8gYXNzaWduIHRv
IGl0Lg0KPj4gwqDCoMKgwqDCoMKgwqAgLcKgICguLi4pLmEgcmVmZXJzIHRvIHRoZSBzdHJ1
Y3QgbWVtYmVyIHRvbywgc2luY2Ugb3RoZXJ3aXNlIGFuIHJ2YWx1ZSANCj4+IGlzIG5vdCBl
eHBlY3RlZCB0aGVyZS4NCj4+DQo+PiDCoMKgwqAgLQ0KPj4gwqDCoMKgwqDCoMKgwqAgdm9p
ZCBmb28oc3RydWN0IGJhciB7IGludCB4OyBjaGFyIGNbLnhdIH0gYSwgaW50IHgpOw0KPj4N
Cj4+IMKgwqDCoMKgwqDCoMKgIEV4cGxhbmF0aW9uOg0KPj4gwqDCoMKgwqDCoMKgwqAgLcKg
IEJlY2F1c2Ugb2Ygc2hhZG93aW5nIHJ1bGVzLCBbLnhdIHJlZmVycyB0byB0aGUgc3RydWN0
IG1lbWJlci4NCj4+DQo+PiDCoMKgwqAgLQ0KPj4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IGJh
ciB7IGludCB5OyB9Ow0KPj4gwqDCoMKgwqDCoMKgwqAgdm9pZCBmb28oY2hhciBwWygoc3Ry
dWN0IGJhcil7IC55ID0gLnggfSkueV0sIGludCB4KTsNCj4+DQo+PiDCoMKgwqDCoMKgwqDC
oCBFeHBsYW5hdGlvbjoNCj4+IMKgwqDCoMKgwqDCoMKgIC3CoCAueCB1bmFtYmlndW91c2x5
IHJlZmVycyB0byB0aGUgcGFyYW1ldGVyLg0KPj4NCj4+IC3CoCBVbmRlZmluZWQgYmVoYXZp
b3I6DQo+Pg0KPj4gwqDCoMKgIC0NCj4+IMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBiYXIgeyBp
bnQgeTsgfTsNCj4+IMKgwqDCoMKgwqDCoMKgIHZvaWQgZm9vKGNoYXIgcFsoKHN0cnVjdCBi
YXIpeyAueSA9IC55IH0pLnldLCBpbnQgeSk7DQo+Pg0KPj4gwqDCoMKgwqDCoMKgwqAgRXhw
bGFuYXRpb246DQo+PiDCoMKgwqDCoMKgwqDCoCAtwqAgQmVjYXVzZSBvZiBzaGFkb3dpbmcg
cnVsZXMsID0ueSByZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIuDQo+PiDCoMKgwqDCoMKg
wqDCoCAtwqAgLnk9LnkgbWVhbnMgaW5pdGlhbGl6ZSB0aGUgbWVtYmVyIHdpdGggaXRzZWxm
ICh1bmluaXRpYWxpemVkIHVzZSkuDQo+PiDCoMKgwqDCoMKgwqDCoCAtwqAgKC4uLikueSBy
ZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIsIHNpbmNlIG90aGVyd2lzZSBhbiBydmFsdWUg
aXMgDQo+PiBub3QgZXhwZWN0ZWQgdGhlcmUuDQo+Pg0KPj4gLcKgIENvbnN0cmFpbnQgdmlv
bGF0aW9uczoNCj4+DQo+PiDCoMKgwqAgLQ0KPj4gwqDCoMKgwqDCoMKgwqAgdm9pZCBmb28o
Y2hhciAoKmEpW3NpemVvZiAqLmJdLCBjaGFyICgqYilbc2l6ZW9mICouYV0pOw0KPj4NCj4+
IMKgwqDCoMKgwqDCoMKgIEV4cGxhbmF0aW9uOg0KPj4gwqDCoMKgwqDCoMKgwqAgLcKgIHNp
emVvZigqLmIpOiBDYW5ub3QgZ2V0IHNpemUgb2YgaW5jb21wbGV0ZSB0eXBlLg0KPj4gwqDC
oMKgwqDCoMKgwqAgLcKgIHNpemVvZigqLmEpOiBDYW5ub3QgZ2V0IHNpemUgb2YgaW5jb21w
bGV0ZSB0eXBlLg0KPj4NCj4+IMKgwqDCoCAtDQo+PiDCoMKgwqDCoMKgwqDCoCB2b2lkIGYo
c2l6ZV90IHMsIGludCBhW3NpemVvZigxKSA9IDFdKTsNCj4+DQo+PiDCoMKgwqDCoMKgwqDC
oCBFeHBsYW5hdGlvbjoNCj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNzaWduIHRv
IHJ2YWx1ZS4NCj4+DQo+PiDCoMKgwqAgLQ0KPj4gwqDCoMKgwqDCoMKgwqAgdm9pZCBmKHNp
emVfdCBzLCBpbnQgYVsucyA9IDFdKTsNCj4+DQo+PiDCoMKgwqDCoMKgwqDCoCBFeHBsYW5h
dGlvbjoNCj4+IMKgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNzaWduIHRvIHJ2YWx1ZS4N
Cj4+DQo+PiDCoMKgwqAgLQ0KPj4gwqDCoMKgwqDCoMKgwqAgdm9pZCBmKHNpemVfdCBzLCBp
bnQgYVtzaXplb2YoLnMpXSk7DQo+Pg0KPj4gwqDCoMKgwqDCoMKgwqAgRXhwbGFuYXRpb246
DQo+PiDCoMKgwqDCoMKgwqDCoCAtwqAgc2l6ZW9mKC5zKTogQ2Fubm90IGdldCBzaXplIG9m
IGluY29tcGxldGUgdHlwZS4NCj4+DQo+Pg0KPj4gRG9lcyB0aGlzIGlkZWEgbWFrZSBzZW5z
ZSB0byB5b3U/DQo+Pg0KPj4NCj4+IENoZWVycywNCj4+IEFsZXgNCj4gDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------GJgCHdq0IMrIq00Id9mfLUx5--

--------------X0vtvvQvNfCyI4zPBvCcCnHG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxHH8ACgkQnowa+77/
2zIKexAAhjYvUiaANtOLIiR3NCFnwN7Z6vo1kEZ949Tre4OEOEDC+s7mGCVkx3Wb
urWLDZMY+fL0rbhKAb/abJYCN04DtVI5RBstwX9eKMe9LRyjziIURAk8kMk1VhMC
vElVg5RtSwsb1o5DIWdN2SKo/FJ06svNO4nstuUHx88d6wNDQ4lH/brKmYBDeehL
o5aTNkGGQCCMTn6PPzS5HQhpYvfgciVL3QBkx5Gkkfp36+JwGocJ0IrdUMygxCYJ
NSVJteI5lU6xkecsvsQAIq4usJqiHnjoHOb7O/LWdG6I4qCLdxjW49wqlD46G+PD
BzIkkpNYAg20Op44LoP+e8vOfQnZpX5vuD1IqClF7w+lzRrJn74oKXNqPI0QId3z
uky2OhQdso00YOKWsRytLn/lPmwKy3qoJKhCTyuWq0Vv0c4yPCqDfZznbJye7XSE
vrp2xTxGeS052Y2HwjjrLc3aNAh2c00KLuKYQ9BrH5gamdm+ezcvkq4ZYQOhEYpa
hbIssOP3OyeUWCMguaL543annE+04P/ZtMC4gnuTwsLK3m5KwEj75vyV4pD6lpyA
MDKgb0cBmRlqVnm4oY5Lme/YZAEIOJdMCRw/OfemgWbqrsWH2ELciR8jhKsiodnl
HZwEP/tRnfkzvMC+YpLc2aQddE4BCOs47jorNN5R7oxjWx7pv6A=
=IgR+
-----END PGP SIGNATURE-----

--------------X0vtvvQvNfCyI4zPBvCcCnHG--
