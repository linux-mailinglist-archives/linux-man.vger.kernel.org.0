Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 683DC62709B
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 17:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235273AbiKMQcD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 11:32:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233792AbiKMQcD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 11:32:03 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB9B610B5F
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:32:01 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso7900251wmb.0
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7tAAO1dHbzYjBSsevU/Dg7lEVrWi+d76TIsb9DHUxAo=;
        b=kYWPj4OzIOkepmJ84eg5uM2wb3Xw4I0j+NL3Npo3MbEceFmzjweA1XOsyN2duVXsYH
         Ov9BlFZrCO9TWa3cyIeBkZsv+ci9dEEjeEIu+f83KZxsqmMzIiXbLbw1VVD7IQotR8br
         y2A8PjCG0mkek0VuTnWu1gXWaos9AOlXF3Nw6/cbws9Ep2wkQLE6oKddwqRySZ1zhYng
         rhWs71LbgQ3NYRgkpkEKQNBZILmoeMX4fJCDSauI1WlKZoExBJpa0lTWKrLSy8B+c6Zx
         SEtPab1lGL+V8FuIY6uR5UrQrEbwK03BNk60PLBdtoGvpIduCFY7it4Na+5zwRpe9S3H
         h0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7tAAO1dHbzYjBSsevU/Dg7lEVrWi+d76TIsb9DHUxAo=;
        b=H0iOQYYuwVhFYRKAAVskTMqNEHdJL4ioj6WSkYTUmtXj16VgYHAr/BdGWxi5p1gbH/
         OeySOHOPnbSjUq4fGzTaV+30RwKrykK/rNQkbX+yi292PG8LKkynwuM4My8saTlsUpVc
         IJqT+gn4R7NKmADCY48/xFurghx6s2lgOS5cj/Tuoya9WD2CX7sHpNhGIB1C1gODP8Sy
         BTqkHd5TuF5govAS92D2Qwd3Mwj3AByaLxM9volaG8w421zREOoHpreVp/jg/IUuABTn
         iHGXEuivKqGknqMV0Ifvrmj1lY2UNCe2uyogSmCgY9lhZpvB93blaX1vMZm8jIc2ewL4
         yL6A==
X-Gm-Message-State: ANoB5plkzoyl7p4XeulUwNAKACgjK8uPdIuZTUUlSPwegDeq+cUzCU9M
        UrGMMV79hHKWcc3lSDS/gN4LcMtFXpk=
X-Google-Smtp-Source: AA0mqf7WIbFad1rZVtBQjOZyMDT2y8XHJJOYbeC+w4ovK77tWPbbCFGiIdqKL7bA9OB6dOfFauTpfw==
X-Received: by 2002:a05:600c:448a:b0:3cf:894b:fe6a with SMTP id e10-20020a05600c448a00b003cf894bfe6amr6088906wmo.198.1668357120327;
        Sun, 13 Nov 2022 08:32:00 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h11-20020a05600c314b00b003b4fe03c881sm16632415wmo.48.2022.11.13.08.31.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 08:31:59 -0800 (PST)
Message-ID: <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
Date:   Sun, 13 Nov 2022 17:31:58 +0100
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
In-Reply-To: <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KBH0B8rVUhf9nhV3Z0kyOMph"
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
--------------KBH0B8rVUhf9nhV3Z0kyOMph
Content-Type: multipart/mixed; boundary="------------W6hqkiM7Fu0EkWW7CDXKwvGw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <786bdaaf-cfa1-e26a-f14f-a6d4bc71b5bd@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
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
In-Reply-To: <9560a2e4-0234-d07e-2d7a-302015318771@gmail.com>

--------------W6hqkiM7Fu0EkWW7CDXKwvGw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEzLzIyIDE3OjI4LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gU1lO
T1BTSVM6DQo+IA0KPiB1bmFyeS1vcGVyYXRvcjrCoCAuIGlkZW50aWZpZXINCj4gDQo+IA0K
PiBERVNDUklQVElPTjoNCj4gDQo+IC3CoCBJdCBpcyBub3QgYW4gbHZhbHVlLg0KPiANCj4g
IMKgwqAgLcKgIFRoaXMgbWVhbnMgc2l6ZW9mKCkgYW5kIF9MZW5ndGhvZigpIGNhbm5vdCBi
ZSBhcHBsaWVkIHRvIHRoZW0uDQoNClNvcnJ5LCB0aGUgYWJvdmUgaXMgYSB0aGlua28uDQoN
Ckkgd2FudGVkIHRvIHNheSB0aGF0LCBsaWtlIHNpemVvZigpIGFuZCBfTGVuZ3Rob2YoKSwg
eW91IGNhbid0IGFzc2lnbiB0byBpdC4NCg0KPiAgwqDCoCAtwqAgVGhpcyBwcmV2ZW50cyBh
bWJpZ3VpdHkgd2l0aCBhIGRlc2lnbmF0b3IgaW4gYW4gaW5pdGlhbGl6ZXItbGlzdCB3aXRo
aW4gYSANCj4gbmVzdGVkIGJyYWNlZC1pbml0aWFsaXplci4NCj4gDQo+IC3CoCBUaGUgdHlw
ZSBvZiBhIC5pZGVudGlmaWVyIGlzIGFsd2F5cyBhbiBpbmNvbXBsZXRlIHR5cGUuDQo+IA0K
PiAgwqDCoCAtwqAgVGhpcyBwcmV2ZW50cyBjaXJjdWxhciBkZXBlbmRlbmNpZXMgaW52b2x2
aW5nIHNpemVvZigpIG9yIF9MZW5ndGhvZigpLg0KPiANCj4gLcKgIFNoYWRvd2luZyBydWxl
cyBhcHBseS4NCj4gDQo+ICDCoMKgIC3CoCBUaGlzIHByZXZlbnRzIGFtYmlndWl0eS4NCj4g
DQo+IA0KPiBFWEFNUExFUzoNCj4gDQo+IA0KPiAtwqAgVmFsaWQgZXhhbXBsZXMgKGxpYmMp
Og0KPiANCj4gIMKgwqDCoMKgwqDCoCBpbnQNCj4gIMKgwqDCoMKgwqDCoCBzdHJuY21wKGNv
bnN0IGNoYXIgczFbLm5dLA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25z
dCBjaGFyIHMyWy5uXSwNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90
IG4pOw0KPiANCj4gIMKgwqDCoMKgwqDCoCBpbnQNCj4gIMKgwqDCoMKgwqDCoCBjYWNoZWZs
dXNoKHZvaWQgYWRkclsubmJ5dGVzXSwNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaW50IG5ieXRlcywNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaW50IGNhY2hlKTsNCj4gDQo+ICDCoMKgwqDCoMKgwqAgbG9uZw0KPiAgwqDCoMKg
wqDCoMKgIG1iaW5kKHZvaWQgYWRkclsubGVuXSwNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB1bnNpZ25lZCBsb25nIGxlbiwNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBp
bnQgbW9kZSwNCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25zdCB1bnNpZ25lZCBs
b25nIG5vZGVtYXNrWygubWF4bm9kZSArIFVMT05HX1dJRFRIIOKAkCAxKQ0KPiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvIFVMT05HX1dJRFRIXSwNCj4gIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIG1heG5vZGUsIHVuc2lnbmVkIGludCBmbGFn
cyk7DQo+IA0KPiAgwqDCoMKgwqDCoMKgIHZvaWQgKg0KPiAgwqDCoMKgwqDCoMKgIGJzZWFy
Y2goY29uc3Qgdm9pZCBrZXlbLnNpemVdLA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCB2b2lkIGJhc2VbLnNpemUgKiAubm1lbWJdLA0KPiAgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBzaXplX3Qgbm1lbWIsDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHNpemVfdCBzaXplLA0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpbnQgKCpjb21wYXIpKGNvbnN0IHZvaWQgWy5zaXplXSwgY29uc3Qgdm9pZCBbLnNpemVd
KSk7DQo+IA0KPiAtwqAgVmFsaWQgZXhhbXBsZXMgKG15IG93bik6DQo+IA0KPiAgwqDCoMKg
wqDCoMKgIHZvaWQNCj4gIMKgwqDCoMKgwqDCoCB1c3RyMnN0cihjaGFyIGRzdFtyZXN0cmlj
dCAubGVuICsgMV0sDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qg
Y2hhciBzcmNbcmVzdHJpY3QgLmxlbl0sDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc2l6ZV90IGxlbik7DQo+IA0KPiAgwqDCoMKgwqDCoMKgIGNoYXIgKg0KPiAgwqDC
oMKgwqDCoMKgIHN0cGVjcHkoY2hhciBkc3RbLmVuZCAtIC5kc3QgKyAxXSwNCj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciAqcmVzdHJpY3Qgc3JjLA0KPiAgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjaGFyIGVuZFsxXSk7DQo+IA0KPiAtwqAgVmFsaWQg
ZXhhbXBsZXMgKGZyb20gdGhpcyB0aHJlYWQpOg0KPiANCj4gIMKgwqAgLQ0KPiAgwqDCoMKg
wqDCoMKgIHN0cnVjdCBzIHsgaW50IGE7IH07DQo+ICDCoMKgwqDCoMKgwqAgdm9pZCBmKGlu
dCBhLCBpbnQgYlsoKHN0cnVjdCBzKSB7IC5hID0gMSB9KS5hXSk7DQo+IA0KPiAgwqDCoMKg
wqDCoMKgIEV4cGxhbmF0aW9uOg0KPiAgwqDCoMKgwqDCoMKgIC3CoCBCZWNhdXNlIG9mIHNo
YWRvd2luZyBydWxlcywgLmE9MSByZWZlcnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIuDQo+ICDC
oMKgwqDCoMKgwqDCoMKgwqAgLcKgIEFsc28sIGlmIC5hIHJlZmVycmVkIHRvIHRoZSBwYXJh
bWV0ZXIsIGl0IHdvdWxkIGJlIGFuIHJ2YWx1ZSwgc28gDQo+IGl0IHdvdWxkbid0IGJlIHZh
bGlkIHRvIGFzc2lnbiB0byBpdC4NCj4gIMKgwqDCoMKgwqDCoCAtwqAgKC4uLikuYSByZWZl
cnMgdG8gdGhlIHN0cnVjdCBtZW1iZXIgdG9vLCBzaW5jZSBvdGhlcndpc2UgYW4gcnZhbHVl
IGlzIA0KPiBub3QgZXhwZWN0ZWQgdGhlcmUuDQo+IA0KPiAgwqDCoCAtDQo+ICDCoMKgwqDC
oMKgwqAgdm9pZCBmb28oc3RydWN0IGJhciB7IGludCB4OyBjaGFyIGNbLnhdIH0gYSwgaW50
IHgpOw0KPiANCj4gIMKgwqDCoMKgwqDCoCBFeHBsYW5hdGlvbjoNCj4gIMKgwqDCoMKgwqDC
oCAtwqAgQmVjYXVzZSBvZiBzaGFkb3dpbmcgcnVsZXMsIFsueF0gcmVmZXJzIHRvIHRoZSBz
dHJ1Y3QgbWVtYmVyLg0KPiANCj4gIMKgwqAgLQ0KPiAgwqDCoMKgwqDCoMKgIHN0cnVjdCBi
YXIgeyBpbnQgeTsgfTsNCj4gIMKgwqDCoMKgwqDCoCB2b2lkIGZvbyhjaGFyIHBbKChzdHJ1
Y3QgYmFyKXsgLnkgPSAueCB9KS55XSwgaW50IHgpOw0KPiANCj4gIMKgwqDCoMKgwqDCoCBF
eHBsYW5hdGlvbjoNCj4gIMKgwqDCoMKgwqDCoCAtwqAgLnggdW5hbWJpZ3VvdXNseSByZWZl
cnMgdG8gdGhlIHBhcmFtZXRlci4NCj4gDQo+IC3CoCBVbmRlZmluZWQgYmVoYXZpb3I6DQo+
IA0KPiAgwqDCoCAtDQo+ICDCoMKgwqDCoMKgwqAgc3RydWN0IGJhciB7IGludCB5OyB9Ow0K
PiAgwqDCoMKgwqDCoMKgIHZvaWQgZm9vKGNoYXIgcFsoKHN0cnVjdCBiYXIpeyAueSA9IC55
IH0pLnldLCBpbnQgeSk7DQo+IA0KPiAgwqDCoMKgwqDCoMKgIEV4cGxhbmF0aW9uOg0KPiAg
wqDCoMKgwqDCoMKgIC3CoCBCZWNhdXNlIG9mIHNoYWRvd2luZyBydWxlcywgPS55IHJlZmVy
cyB0byB0aGUgc3RydWN0IG1lbWJlci4NCj4gIMKgwqDCoMKgwqDCoCAtwqAgLnk9LnkgbWVh
bnMgaW5pdGlhbGl6ZSB0aGUgbWVtYmVyIHdpdGggaXRzZWxmICh1bmluaXRpYWxpemVkIHVz
ZSkuDQo+ICDCoMKgwqDCoMKgwqAgLcKgICguLi4pLnkgcmVmZXJzIHRvIHRoZSBzdHJ1Y3Qg
bWVtYmVyLCBzaW5jZSBvdGhlcndpc2UgYW4gcnZhbHVlIGlzIG5vdCANCj4gZXhwZWN0ZWQg
dGhlcmUuDQo+IA0KPiAtwqAgQ29uc3RyYWludCB2aW9sYXRpb25zOg0KPiANCj4gIMKgwqAg
LQ0KPiAgwqDCoMKgwqDCoMKgIHZvaWQgZm9vKGNoYXIgKCphKVtzaXplb2YgKi5iXSwgY2hh
ciAoKmIpW3NpemVvZiAqLmFdKTsNCj4gDQo+ICDCoMKgwqDCoMKgwqAgRXhwbGFuYXRpb246
DQo+ICDCoMKgwqDCoMKgwqAgLcKgIHNpemVvZigqLmIpOiBDYW5ub3QgZ2V0IHNpemUgb2Yg
aW5jb21wbGV0ZSB0eXBlLg0KPiAgwqDCoMKgwqDCoMKgIC3CoCBzaXplb2YoKi5hKTogQ2Fu
bm90IGdldCBzaXplIG9mIGluY29tcGxldGUgdHlwZS4NCj4gDQo+ICDCoMKgIC0NCj4gIMKg
wqDCoMKgwqDCoCB2b2lkIGYoc2l6ZV90IHMsIGludCBhW3NpemVvZigxKSA9IDFdKTsNCj4g
DQo+ICDCoMKgwqDCoMKgwqAgRXhwbGFuYXRpb246DQo+ICDCoMKgwqDCoMKgwqAgLcKgIENh
bm5vdCBhc3NpZ24gdG8gcnZhbHVlLg0KPiANCj4gIMKgwqAgLQ0KPiAgwqDCoMKgwqDCoMKg
IHZvaWQgZihzaXplX3QgcywgaW50IGFbLnMgPSAxXSk7DQo+IA0KPiAgwqDCoMKgwqDCoMKg
IEV4cGxhbmF0aW9uOg0KPiAgwqDCoMKgwqDCoMKgIC3CoCBDYW5ub3QgYXNzaWduIHRvIHJ2
YWx1ZS4NCj4gDQo+ICDCoMKgIC0NCj4gIMKgwqDCoMKgwqDCoCB2b2lkIGYoc2l6ZV90IHMs
IGludCBhW3NpemVvZigucyldKTsNCj4gDQo+ICDCoMKgwqDCoMKgwqAgRXhwbGFuYXRpb246
DQo+ICDCoMKgwqDCoMKgwqAgLcKgIHNpemVvZigucyk6IENhbm5vdCBnZXQgc2l6ZSBvZiBp
bmNvbXBsZXRlIHR5cGUuDQo+IA0KPiANCj4gRG9lcyB0aGlzIGlkZWEgbWFrZSBzZW5zZSB0
byB5b3U/DQo+IA0KPiANCj4gQ2hlZXJzLA0KPiBBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------W6hqkiM7Fu0EkWW7CDXKwvGw--

--------------KBH0B8rVUhf9nhV3Z0kyOMph
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxG/4ACgkQnowa+77/
2zL11g/8DQSW0b/48keZDqdkWvHFshiLyrPIjqJRn71cXF/VP/RRfBZX0cfrtTsb
i+Wf1H4C1AnoR9WhjhRwqbWsNtO+Oe9ZtstZCiBGeq4LzZGSaKnJyg2FH3BTrhEA
IDen5R1KFPKQ7G8sBGiy/o4UjAc+3jcv2uCvtbcMAEZk8VbgcPXJDyTu8ow+yJvv
Vncleu+i3NjFKYgLOZYDfE4L/bc0syYPv3nnof1uSHiq0tBXRDUAu84BXXCvnlKv
zRaAQCPLPyJ5yf1YggQ8XsWExm2NdUmzFf3tQiglR9gzCf5/nJDiTmU0sFH2/Z0R
JMIHMojJpDE3K/FfnxBV/LCacqJM690b4lr+9CtvyJAyHtfQsrywAL8UYftQP8s1
A3KDrk7NsnNTc2GM/WBc5KsiZwyMVCrAXWSvWDzF8dzl2xCbCzRWZlNMmJhj8iUx
l1IHhtv21cKgty5uenmonr8lNDDdp5kkmJ+QKMRQu7QRyl28vG6QjOoYh7Yxb4nd
fYNlDJVnfqIoPDvU35PENxT7RicUkyzpEEvV977aB/sZbnSSJqG9u09I8fmnLfA4
srda27w25nIRXZb1acYPtm2G9DX/GTKC+YpU6ZEWS//HFZLzgOasqFkRgdJViHBF
tk/0J/Zp5J6YXq//zITdejaIiCJDcMe/9gOhT1jD5hi6Jmjl/sA=
=CV/5
-----END PGP SIGNATURE-----

--------------KBH0B8rVUhf9nhV3Z0kyOMph--
