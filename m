Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFE5C62707A
	for <lists+linux-man@lfdr.de>; Sun, 13 Nov 2022 17:26:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232676AbiKMQ0K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Nov 2022 11:26:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbiKMQ0J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Nov 2022 11:26:09 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 749EE5FC1
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:26:05 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id o30so5806766wms.2
        for <linux-man@vger.kernel.org>; Sun, 13 Nov 2022 08:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjmDGTWTgWjaWSSNhkELtymXdGIK5lqF4RVwR2t+lwY=;
        b=gCZr8U3hA5Qa4Zbxn9qj71ufXYBI/i/p14AgZRxrjXw/Wfm8gjK02LscqHXGU741xG
         HPO67jJqNWYP5WcvBUAc8Z+hWHmJbvHKQ/UXZxnrzA7xyRZKPFWTFCJqD/xlMmOwd2dC
         DbKdn54Zs+3pQd1C7xNBgOIKQ7hHse6YeSeDExvdg1MhH0kg35pRmpOLfvOX5Rd2NJ+S
         FVE2eHh+FKdRY4YT/MmQdkyRex12b7jLPE9Kt6pJj0XF8Jbue0DqGwHekLqrcq9Dh1OU
         dFKAH59YDOfkdSGKGsXkCP0Av9XZjTfeNIi29ilz3EXZZz67wq2zJaZT4fz7p+Zs+0Sb
         0/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mjmDGTWTgWjaWSSNhkELtymXdGIK5lqF4RVwR2t+lwY=;
        b=CUqDviIwjJxQ/xkSqg/9UDHOZhR5r9XGLoQN4Q8J9ZbQgwnwYAQxzzSE8SMfLmoR7l
         2oyBkw9PpEBwn6nTAel4C283nY6Rocny7DBs5UYRPE9yUiyvdJmaEeerqdnmJRP8SPzu
         HAvKa3aCqkFH+5CMvYm2mndD12CfHql3M0/4O2/7W8CoCffZz2IbcGNl5M6pNEXJhcGm
         vwq8H33QSROJBc5JENElaYUlW9wbAQg0SjlObRqmwtjatOsjc6CtRZw/Nb3EQv1Q2l8P
         +beyCnmzFPyx4f5RZuWQkkW/gfBaC3Y841OETKE/hWB5x53QZHyueIkvT9yXdBZXYNdW
         EKCw==
X-Gm-Message-State: ANoB5pkZ47lMu8B1J+FzgMsnHnF4ewemBcmQiawnhMbQsRCOr7olPUHR
        ENZy9OwNskf8litn3+wUoqkzwCOiJlw=
X-Google-Smtp-Source: AA0mqf4jD+z+Vb+V6uYY+QYPknAlVc5TLM6eePuenulyy0DIO9ZrRF4g+VgVuBDGq/IOabk9B1hXUQ==
X-Received: by 2002:a05:600c:1c91:b0:3cf:84be:aaf9 with SMTP id k17-20020a05600c1c9100b003cf84beaaf9mr5845890wms.111.1668356763686;
        Sun, 13 Nov 2022 08:26:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c310900b003a2f2bb72d5sm19741813wmo.45.2022.11.13.08.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Nov 2022 08:26:02 -0800 (PST)
Message-ID: <688ee0d2-5dee-5798-6a76-e80af06732b7@gmail.com>
Date:   Sun, 13 Nov 2022 17:25:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
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
 <ca99275884247e2c1a39af3bd4fd88e65ac59ea1.camel@tugraz.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ca99275884247e2c1a39af3bd4fd88e65ac59ea1.camel@tugraz.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ibzGNzxn81Oeb4PqBtMu1fvg"
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
--------------ibzGNzxn81Oeb4PqBtMu1fvg
Content-Type: multipart/mixed; boundary="------------Tc4oE9t9x66ncGXYXSJcGk8M";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Joseph Myers <joseph@codesourcery.com>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <688ee0d2-5dee-5798-6a76-e80af06732b7@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
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
 <ca99275884247e2c1a39af3bd4fd88e65ac59ea1.camel@tugraz.at>
In-Reply-To: <ca99275884247e2c1a39af3bd4fd88e65ac59ea1.camel@tugraz.at>

--------------Tc4oE9t9x66ncGXYXSJcGk8M
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluLA0KDQpPbiAxMS8xMy8yMiAxNjozMiwgTWFydGluIFVlY2tlciB3cm90ZToN
Cj4gQW0gU29ubnRhZywgZGVuIDEzLjExLjIwMjIsIDE2OjE1ICswMTAwIHNjaHJpZWIgQWxl
amFuZHJvIENvbG9tYXI6DQo+PiBIaSBNYXJ0aW4sDQo+Pg0KPj4gT24gMTEvMTMvMjIgMTU6
NTgsIE1hcnRpbiBVZWNrZXIgd3JvdGU6DQo+Pj4gQW0gU29ubnRhZywgZGVuIDEzLjExLjIw
MjIsIDE1OjAyICswMTAwIHNjaHJpZWIgQWxlamFuZHJvIENvbG9tYXI6DQo+Pj4+IE9uIDEx
LzEzLzIyIDE0OjMzLCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+Pj4+IE9uIDExLzEz
LzIyIDE0OjE5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+Pj4+Pj4gQnV0IHRoZXJl
IGFyZSBub3Qgb25seSBzeW50YWN0aWNhbCBwcm9ibGVtcywgYmVjYXVzZQ0KPj4+Pj4+PiBh
bHNvIHRoZSB0eXBlIG9mIHRoZSBwYXJhbWV0ZXIgbWlnaHQgYmVjb21lIHJlbGV2YW50DQo+
Pj4+Pj4+IGFuZCB0aGVuIHlvdSBjYW4gZ2V0IGNpcmN1bGFyIGRlcGVuZGVuY2llczoNCj4+
Pj4+Pj4NCj4+Pj4+Pj4gdm9pZCBmb28oY2hhciAoKmEpW3NpemVvZiAqLmJdLCBjaGFyICgq
Yilbc2l6ZW9mICouYV0pOw0KPj4+Pj4+DQo+Pj4+Pj4gVGhpcyBzZWVtcyB0byBiZSBhIGRp
ZmZpY3VsdCBzdG9uZSBpbiB0aGUgcm9hZC4NCj4+Pg0KPj4+IEJ1dCBub3RlIHRoYXQgR05V
IGZvcndhcmQgZGVjbGFyYXRpb25zIHNvbHZlIHRoaXMgbmljZWx5Lg0KPj4NCj4+IEhvdyB3
b3VsZCB0aGF0IGFib3ZlIGJlIHNvbHZlZCB3aXRoIEdOVSBmd2QgZGVjbD8gIEknbSBndWVz
c2luZyB0aGF0IGl0IGNhbid0Lg0KPj4gSG93IGRvIHlvdSBmb3J3YXJkIGRlY2xhcmUgaW5j
b21wbGV0ZSBWTVRzPy4NCj4gDQo+IFlvdSBjYW4ndCBleHByZXNzIGl0LiBUaGlzIHdhcyBt
eSBwb2ludDogaXQgaXMgaW1wb3NzaWJsZQ0KPiB0byBjcmVhdGUgY2lyY3VsYXIgZGVwZW5k
ZW5jaWVzLg0KPiANCj4gLi4uDQo+IA0KPj4+Pj4+IHsNCj4+Pj4+PiAgICAgICAgZm9yICgv
KiB2b2lkICovOyBkc3QgPD0gZW5kOyBkc3QrKykgew0KPj4+Pj4+ICAgICAgICAgICAgKmRz
dCA9ICpzcmMrKzsNCj4+Pj4+PiAgICAgICAgICAgIGlmICgqZHN0ID09ICdcMCcpDQo+Pj4+
Pj4gICAgICAgICAgICAgICAgcmV0dXJuIGRzdDsNCj4+Pj4+PiAgICAgICAgfQ0KPj4+Pj4+
ICAgICAgICAvKiBUcnVuY2F0aW9uIGRldGVjdGVkICovDQo+Pj4+Pj4gICAgICAgICplbmQg
PSAnXDAnOw0KPj4+Pj4+DQo+Pj4+Pj4gI2lmICFkZWZpbmVkKE5ERUJVRykNCj4+Pj4+PiAg
ICAgICAgLyogQ29uc3VtZSB0aGUgcmVzdCBvZiB0aGUgaW5wdXQgc3RyaW5nLiAqLw0KPj4+
Pj4+ICAgICAgICB3aGlsZSAoKnNyYysrKSB7fTsNCj4+Pj4+PiAjZW5kaWYNCj4+Pj4+Pg0K
Pj4+Pj4+ICAgICAgICByZXR1cm4gZW5kICsgMTsNCj4+Pj4+PiB9DQo+Pj4+PiBBbmQgSSBm
b3Jnb3QgdG8gc2F5IGl0OiAgRGVmYXVsdCBwcm9tb3Rpb25zIHJhbmsgaGlnaCAocHJvYmFi
bHkgdGhlIGhpZ2hlc3QpIGluDQo+Pj4+PiBteSBsaXN0IG9mIG1vc3QgaGF0ZWQgZmVhdHVy
ZXNeV2J1Z3MgaW4gQy4NCj4+Pg0KPj4+IElmIHlvdSByZXBsYWNlZCB0aGVtIHdpdGggZXhw
bGljaXQgY29udmVyc2lvbiB5b3UgdGhlbiBoYXZlDQo+Pj4gdG8gYWRkIGJ5IGhhbmQgYWxs
IHRoZSB0aW1lLCBJIGFtIHByZXR0eSBzdXJlIG1vc3QgcGVvcGxlDQo+Pj4gd291bGQgaGF0
ZSB0aGlzIG1vcmUuIChhbmQgaXQgY291bGQgYWxzbyBoaWRlIGJ1Z3MpDQo+Pg0KPj4gWWVh
aCwgY2FzdHMgYXJlIGFsc28gaW4gbXkgdG9wIDMgbGlzdCBvZiB0aGluZ3MgdG8gYXZvaWQg
KGFsdGhvdWdoIGluIHRoaXMgY2FzZQ0KPj4gdGhlcmUncyBubyBidWcpOyBtYXliZSBhIGJp
dCBvdmVyIGRlZmF1bHQgcHJvbW90aW9ucyA6KQ0KPj4NCj4+IEkgZGlkbid0IG1lYW4gdGhh
dCBhbGwgcHJvbW90aW9ucyBhcmUgYmFkLiAgSnVzdCB0aGUgZ3JhdHVpdG91cyBvbmVzLCBs
aWtlDQo+PiBwcm9tb3RpbmcgZXZlcnl0aGluZyB0byBpbnQgYmVmb3JlIGV2ZW4gbmVlZGlu
ZyBpdC4gIFRoYXQgbWFrZXMgdWludDE2X3QgYQ0KPj4gdGhlb3JldGljYWwgdHlwZSwgYmVj
YXVzZSB3aGVuZXZlciB5b3UgdHJ5IHRvIHVzZSBpdCwgeW91IGVuZCB1cCB3aXRoIGEgc2ln
bmVkDQo+PiAzMi1iaXQgdHlwZTsgZnVuIGhlaD8gOlAgIF9CaXRJbnQoKSBzb2x2ZXMgdGhh
dCBmb3IgbWUuDQo+IA0KPiB1aW50MTZfdCBpcyBmb3Igc3RvcmluZyBkYXRhLiAgTXkgZXhw
ZWN0YXRpb24gaXMgdGhhdCBwZW9wbGUNCj4gd2lsbCBmaW5kIF9CaXRJbnQoKSBkaWZmaWN1
bHQgYW5kIGVycm9yLXByb25lIHRvIHVzZSBmb3INCj4gc21hbGwgc2l6ZXMuICBCdXQgbWF5
YmUgSSBhbSB3cm9uZy4uLg0KDQpJJ20gYSBiaXQgY29uY2VybmVkIGFib3V0IHRoZSBzdWZm
aXggdG8gY3JlYXRlIGxpdGVyYWxzLiAgSSdkIGhhdmUgcHJlZmVycmVkIGEgDQpzdWZmaXgg
dGhhdCBhbGxvd2VkIGNyZWF0aW5nIGEgc3BlY2lmaWMgc2l6ZSAoaW5zdGVhZCBvZiB0aGUg
bWluaW11bSBvbmUuICBpLmUuLCANCjF1MTYgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4gIEJ1
dCBvdGhlcndpc2UgSSB0aGluayBpdCBjYW4gYmUgYmV0dGVyLiAgSSBkb24ndCANCmhhdmUg
aW4gbWluZCBhIGJpZyBpc3N1ZSBJIGhhZCBhIHllYXIgYWdvIHdpdGggdWludDE2X3QsIGJ1
dCBpdCByZXF1aXJlZCAzIGNhc3RzIA0KaW4gYSBsaW5lLiAgV2l0aCBfQml0SW50KCkgSSB0
aGluayBub25lIChvciBtYXliZSBvbmUsIGZvciBnaXZpbmcgMSB0aGUgDQphcHByb3ByaWF0
ZSBzaXplKSB3b3VsZCBoYXZlIGJlZW4gbmVlZGVkLiAgQnV0IHdlJ2xsIHNlZSBob3cgaXQg
d29ya3Mgb3V0Lg0KDQoNCj4gDQo+PiBCdXQgc3VyZSwgaW4gKDF1ICsgMWwpLCBwcm9tb3Rp
b25zIGFyZSBmaW5lIHRvIGdldCBhIGNvbW1vbiB0eXBlLg0KPj4NCj4+Pj4+IEkgd291bGRu
J3QgY29udmVydCBpdCB0byBzaXplX3QsIGJ1dA0KPj4+Pj4gcmF0aGVyIGZvbGxvdyBub3Jt
YWwgcHJvbW90aW9uIHJ1bGVzLg0KPj4+DQo+Pj4gVGhlIHBvaW50IG9mIG1ha2luZyBpdCBz
aXplX3QgaXMgdGhhdCB5b3UgdGhlbg0KPj4+IGRvIG5lZWQgdG8ga25vdyB0aGUgdHlwZSBv
ZiB0aGUgcGFyYW1ldGVyIHRvIG1ha2UNCj4+PiBzZW5zZSBvZiB0aGUgZXhwcmVzc2lvbi4g
SWYgdGhlIHR5cGUgbWF0dGVycywgdGhlbiB5b3UgZ2V0DQo+Pj4gbXV0dWFsIGRlcGVuZGVu
Y2llcyBhcyBpbiB0aGUgZXhhbXBsZSBhYm92ZS4NCj4+DQo+PiBFeGNlcHQgaWYgeW91IHRy
ZWF0IGluY29tcGxldGUgdHlwZXMgYXMuLi4gaW5jb21wbGV0ZSB0eXBlcyAoZm9yIHdoaWNo
IHNpemVvZigpDQo+PiBpcyBkaXNhbGxvd2VkIGJ5IHRoZSBzdGFuZGFyZCkuICBBbmQgdGhl
IGlzc3VlIHdlJ3JlIGhhdmluZyBpcyB0aGF0IHRoZSB0eXBlcw0KPj4gYXJlIG5vdCB5ZXQg
Y29tcGxldGUgYXQgdGhlIHRpbWUgd2UncmUgdXNpbmcgdGhlbSwgYXJlbid0IHRoZXk/DQo+
IA0KPiBJdCBpcyBub3QgYW4gaW5jb21wbGV0ZSB0eXBlLiBXaGVuIGRvaW5nIHBhcnNpbmcg
YW5kIGRvIG5vdCBoYXZlDQo+IGEgZGVjbGFyYXRpb24gd2Uga25vdyBub3RoaW5nIGFib3V0
IGl0IChub3QganVzdCBub3QgdGhlIHNpemUpLg0KPiBJZiB3ZSBhc3N1bWUgd2Uga25vdyB0
aGUgdHlwZSAoYnkgbG9va2luZyBhaGVhZCkgd2UgZ2V0IG11dHVhbA0KPiBkZXBlbmRlbmNp
ZXMuDQoNClRoZW4gSSdkIGRvIHRoZSBmb2xsb3dpbmc6ICAuaWRlbnRpZmllciBhbHdheXMg
aGFzIGFuIGluY29tcGxldGUgdHlwZS4NCg0KSSdtIHByZXBhcmluZyBhIGNvbXBsZXRlIGRl
c2NyaXB0aW9uIG9mIHdoYXQgSSB0aGluayBvZiB0aGUgZmVhdHVyZS4gIEknbGwgYWRkIHRo
YXQuDQoNCj4gDQo+IEFsc28gdGhlIGNhcGFiaWxpdHkgdG8gcGFyc2UsIGZvbGQsIGFuZCBk
byB0eXBlIGNoZWNraW5nDQo+IGluIG9uZSBnbyBpcyBzb21ldGhpbmcgd29ydGggcHJlc2Vy
dmluZyBpbiBteSBvcGluaW9uLg0KDQpNYWtlcyBzZW5zZS4NCg0KVGhhbmtzIGZvciBhbGwg
dGhlIGhlbHAsIGJvdGghDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3
LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------Tc4oE9t9x66ncGXYXSJcGk8M--

--------------ibzGNzxn81Oeb4PqBtMu1fvg
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNxGo0ACgkQnowa+77/
2zJM5g/9Gmzbtilhy/YXh9dky9MM3xxhqWz6Wmoow3NEYfI2XW9opaeQIGep1I/b
v8OJxLepCuRp2tsOmYhvTZRf/LRAYV6KBf8Xtm17N1c+WO4PCNM6qVr43C42T/lu
YPQ5FbZ2KIvPPUGEqHilESHLkV/fOPBAMNO8yUt2NAzPv8BCnQ8VDc/Pwm0X1kLd
y2AUQ8A3wpS8M7KKARuVnlEAV1RNGouRqg5QuJqbVaOIG9FW1KBYNp0tHIlBldRA
Z5FYMsqLyJfLltUYSLRGkSuk2pJ/OBWzBn8NPph5hALl7VUt8Honp9GICtW/H4Nq
BIV+GcwrGnrGZv5vmrcmukWcoN/5FZlVAbOjA12i4SjkOi3kfL/k2guWMoGZ1U7j
a8VanoJKwk3kUDXW96LAmILWG93KoT1QkOZWAiOihYvWZpc4Ov+284BFhoL29dTR
t/Swy/OhiSI1zZAURZblS6VhQJqEtQzoKGLouGY6OSKj0yBEOQspywbdME8D869c
7VWshSgeHIE2mbzQeayjciSSPcZvavzD7yIUpJ5acZSlMgNDOXb7WmMwr+l/IgrX
Fk1yLyKUM0mJBlzLOZvSojNks/GFSKMXtDLs9kdBa3aQ/aLcDE9jekDjXJsYHorH
m9q+tObdU0DX9+LPqjEBmzEMWo9u6fSGFCGGLux0fbILzHaubEo=
=XqqV
-----END PGP SIGNATURE-----

--------------ibzGNzxn81Oeb4PqBtMu1fvg--
