Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB99E676349
	for <lists+linux-man@lfdr.de>; Sat, 21 Jan 2023 04:17:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbjAUDRx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 22:17:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbjAUDRx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 22:17:53 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACA831E9CC
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 19:17:50 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id f25-20020a1c6a19000000b003da221fbf48so4948579wmc.1
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 19:17:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nke86ut+8b7hZ/jeWZRMTsgZlpbhUXADQy9c1ifXDnc=;
        b=HgoCK7HYb6GTu+xyqujM2U2pTj2UbjzxpHXKb1jNF6zkmyJXwnIxaLJpWA0bRXiN2L
         IMVeLnq9GIg7s5/4l2B6dudLY+BVipbMoQ19EzsoSDc0YzSpCm2isqHBnjgIDejiHrnF
         XkP6r7Q4vEULYLJzfgwc2VpojF8dMQiuV3aOulcuKpGY1MufOBCkPMJ9/Fw3EK71hBa8
         WeygJmY4uroEJ3Z/FkM1b7mbwZcBVUwkZspBWoChmCWAsaWRBiPMpV+V4Ath70eNdWcY
         LKzRtDrrMgWi1HzRcgF93My9jt5P5sw+bOlwlWn3yS6Rm+3UjSdpu/uAeFg/u/OTgBzO
         nDBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Nke86ut+8b7hZ/jeWZRMTsgZlpbhUXADQy9c1ifXDnc=;
        b=ub8cUh58dUCYprlri6Youe1gXQmkZpYQcsja5haJcDbhaEkhtWYSeLahXqGUJGOr0P
         GL/1ZShFcyygnlmWOTjVjXCsSBAhW6BeE5J4jxFLjfMJHcBBZ9c2TrsgxKBkBx+7gI4r
         xvWhuLJ4zcieseFECjvUUo+WQHsAuhWSOmjewYwtHzWzAyQrnPVODDUw2ta97oJ2gpSO
         UOFsL2xrnQsfNjHLxzQjZT4CjCNI5vq95tSO+O6hVXojlkivaDn0rRRv7GcnydJgKHQy
         Xm5/BBXMQaeIJwc6A3mSDVJJOd2vZaGyFn/05LqJf+ekKHjAXxQbvtCQfCMQmfhVc57y
         1IHQ==
X-Gm-Message-State: AFqh2kqJ+5bjLd14Y1gzlf8e0lsp2bM77cxvqsAm4Y4BnVtSOKO9H7p5
        w+p11JO7HXIPaZflMcAmH9g=
X-Google-Smtp-Source: AMrXdXsjJyEHBry9DbFIPqe38MqXBm9HwCTgc4VCD+Q1ynUR/PnkLBrIr0TQ+AT2yM0TQbgFKCO3Og==
X-Received: by 2002:a7b:c45a:0:b0:3d1:ed41:57c0 with SMTP id l26-20020a7bc45a000000b003d1ed4157c0mr24656362wmi.30.1674271068740;
        Fri, 20 Jan 2023 19:17:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v17-20020a05600c445100b003d9e74dd9b2sm4135704wmn.9.2023.01.20.19.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 19:17:48 -0800 (PST)
Message-ID: <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
Date:   Sat, 21 Jan 2023 04:17:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        'linux-man' <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
References: <20230120134043.10247-1-alx@kernel.org>
 <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
 <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
 <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
In-Reply-To: <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zvwekoYuAGfMkKE9LO9sC0ly"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zvwekoYuAGfMkKE9LO9sC0ly
Content-Type: multipart/mixed; boundary="------------YbE6NU2nMpu2A03gcRfDrL0H";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>,
 GNU libc development <libc-alpha@sourceware.org>, gcc@gcc.gnu.org
Cc: Alejandro Colomar <alx@kernel.org>,
 'linux-man' <linux-man@vger.kernel.org>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Eric Blake <eblake@redhat.com>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>
Message-ID: <0eaedb18-54df-9c2d-49ab-397fd6b4f63a@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
 <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
 <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
In-Reply-To: <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>

--------------YbE6NU2nMpu2A03gcRfDrL0H
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaywNCg0KT24gMS8yMS8yMyAwMzozOCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+IEhpIFphY2ssDQo+IA0KPiBPbiAxLzIwLzIzIDIwOjI1LCBBbGVqYW5kcm8gQ29sb21h
ciB3cm90ZToNCj4+IFtDQyArPSBHQ0NdwqAgLy8gcHVuIG5vdCBpbnRlbmRlZCA6UA0KPj4N
Cj4+IEhpIFphY2ssDQo+Pg0KPj4gT24gMS8yMC8yMyAxOTowNCwgWmFjayBXZWluYmVyZyB3
cm90ZToNCj4+PiBPbiBGcmksIEphbiAyMCwgMjAyMywgYXQgODo0MCBBTSwgQWxlamFuZHJv
IENvbG9tYXIgd3JvdGU6DQo+Pj4+IFRoZSBoaXN0b3JpY2FsIGRlc2lnbiBvZiBgc29ja2Fk
ZHJfc3RvcmFnZWAgbWFrZXMgaXQgaW1wb3NzaWJsZSB0byB1c2UNCj4+Pj4gd2l0aG91dCBi
cmVha2luZyBzdHJpY3QgYWxpYXNpbmcgcnVsZXMuwqAgTm90IG9ubHkgdGhpcyB0eXBlIGlz
IHVudXNhYmxlLA0KPj4+PiBidXQgZXZlbiB0aGUgdXNlIG9mIG90aGVyIGBzb2NrYWRkcl8q
YCBzdHJ1Y3R1cmVzIGRpcmVjdGx5ICh3aGVuIHRoZQ0KPj4+PiBwcm9ncmFtbWVyIG9ubHkg
Y2FyZXMgYWJvdXQgYSBzaW5nbGUgYWRkcmVzcyBmYW1pbHkpIGlzIGFsc28gaW5jb3JyZWN0
LA0KPj4+PiBzaW5jZSBhdCBzb21lIHBvaW50IHRoZSBzdHJ1Y3R1cmUgd2lsbCBiZSBhY2Nl
c3NlZCBhcyBhIGBzb2NrYWRkcmAsIGFuZA0KPj4+PiB0aGF0IGJyZWFrcyBzdHJpY3QgYWxp
YXNpbmcgcnVsZXMgdG9vLg0KPj4+Pg0KPj4+PiBTbywgdGhlIG9ubHkgd2F5IGZvciBhIHBy
b2dyYW1tZXIgdG8gbm90IGludm9rZSBVbmRlZmluZWQgQmVoYXZpb3IgaXMgdG8NCj4+Pj4g
ZGVjbGFyZSBhIHVuaW9uIHRoYXQgaW5jbHVkZXMgYHNvY2thZGRyYCBhbmQgYW55IGBzb2Nr
YWRkcl8qYCBzdHJ1Y3R1cmVzDQo+Pj4+IHRoYXQgYXJlIG9mIGludGVyZXN0LCB3aGljaCBh
bGxvd3MgbGF0ZXIgYWNjZXNzaW5nIGFzIGVpdGhlciB0aGUgY29ycmVjdA0KPj4+PiBzdHJ1
Y3R1cmUgb3IgcGxhaW4gYHNvY2thZGRyYCBmb3IgdGhlIHNhX2ZhbWlseS4NCj4+Pg0KPj4+
IC4uLg0KPj4+DQo+Pj4+IMKgwqDCoMKgIHN0cnVjdCBuZXdfc29ja2FkZHJfc3RvcmFnZcKg
IG5zczsNCj4+Pj4NCj4+Pj4gwqDCoMKgwqAgLy8gLi4uIChpbml0aWFsaXplIG9zcyBhbmQg
bnNzKQ0KPj4+Pg0KPj4+PiDCoMKgwqDCoCBpbmV0X3NvY2thZGRyMnN0cigmbnNzLnNhKTvC
oCAvLyBjb3JyZWN0IChhbmQgaGFzIG5vIGNhc3RzKQ0KPj4+DQo+Pj4gSSB0aGluayB3ZSBu
ZWVkIHRvIG1vdmUgc2xvd2x5IGhlcmUgYW5kIGJlIF9zdXJlXyB0aGF0IGFueSBwcm9wb3Nl
ZCBjaGFuZ2UNCj4+PiBkb2VzIGluIGZhY3QgcmVkdWNlIHRoZSBhbW91bnQgb2YgVUIuDQo+
Pg0KPj4gU3VyZSwgSSdtIGp1c3Qgc2VuZGluZyB0aGUgcGF0Y2ggdG8gcG9saXNoIHRoZSBp
ZGVhIGFyb3VuZCBzb21lIGNvbmNyZXRlIGNvZGUuIA0KPj4gV2hpbGUgSSBjaGVja2VkIHRo
YXQgaXQgY29tcGlsZXMsIEkgZGlkbid0IGFkZCBhbnkgdGVzdHMgYWJvdXQgaXQgb3IgYW55
dGhpbmcsIA0KPj4gdG8gc2VlIHRoYXQgaXQncyB1c2FibGUgKGFuZCBKb3NlcGgncyBlbWFp
bCBzaG93ZWQgbWUgdGhhdCBpdCdzIGZhciBmcm9tIGJlaW5nIA0KPj4gZmluaXNoZWQpLsKg
IEkgZXhwZWN0IHRoYXQgdGhpcydsbCB0YWtlIHNvbWUgdGltZS4NCj4+DQo+Pg0KPj4+IMKg
VGhpcyBjb25zdHJ1Y3QsIGluIHBhcnRpY3VsYXIsIG1pZ2h0DQo+Pj4gbm90IGFjdHVhbGx5
IGJlIGNvcnJlY3QgaW4gcHJhY3RpY2U6IHNlZSBodHRwczovL2dvZGJvbHQub3JnL3ovcm41
MWNyYWNuIGZvcg0KPj4+IGEgY2FzZSB3aGVyZSwgaWYgSSdtIHJlYWRpbmcgaXQgcmlnaHQs
IHRoZSBjb21waWxlciBhc3N1bWVzIHRoYXQgYSB3cml0ZQ0KPj4+IHRocm91Z2ggYSBgc3Ry
dWN0IGZhbmN5ICpgIGNhbm5vdCBhbHRlciB0aGUgdmFsdWVzIGFjY2Vzc2libGUgdGhyb3Vn
aCBhDQo+Pj4gYHN0cnVjdCBzaW1wbGUgKmAgZXZlbiB0aG91Z2ggYm90aCBwb2ludGVycyBw
b2ludCBpbnRvIHRoZSBzYW1lIHVuaW9uLg0KPj4+IChUZXN0IGNhc2UgcHJvdmlkZWQgYnkg
PGh0dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20vdXNlcnMvMzYzNzUxL3N1cGVyY2F0PjsNCj4+
DQo+IA0KPiBbLi4uXQ0KPiANCj4gSSB3YXMgd3JvbmcgaW4gbXkgZ3Vlc3M7IHRoZSBjb3Jy
ZWN0IG91dHB1dCBpcyAzLzM7IEkgdGhpbmsgSSBoYWQgcmVhZCBpdCB0aGUgDQo+IG90aGVy
IHdheSBhcm91bmQuwqAgU28geWVzLCBJIGJlbGlldmUgaXQncyBkb2luZyB3aGF0IHlvdSBq
dXN0IHdyb3RlIHRoZXJlLCBidXQgDQo+IGNhbid0IHVuZGVyc3RhbmQgd2h5Lg0KPiANCj4g
SSByZWR1Y2VkIEBzdXBlcmNhdCdzIGV4YW1wbGUgdG8gYSBzbWFsbGVyIHJlcHJvZHVjZXIg
cHJvZ3JhbSAoSSBjb3VsZG4ndCANCj4gbWluaW1pemUgaXQgYW55IG1vcmUgdGhhbiB0aGlz
OyBhbnkgZnVydGhlciBzaW1wbGlmaWNhdGlvbiByZW1vdmVzIHRoZSBpbmNvcnJlY3QgDQo+
IGJlaGF2aW9yKToNCj4gDQo+ICNpbmNsdWRlIDxzdGRpby5oPg0KPiANCj4gc3RydWN0IGEg
eyBpbnQgeVsxXTt9Ow0KPiBzdHJ1Y3QgYiB7IGludCB5WzFdO307DQo+IHVuaW9uIHXCoCB7
IHN0cnVjdCBhIGE7IHN0cnVjdCBiIGI7IH07DQo+IA0KPiANCj4gaW50IHJlYWRfYShzdHJ1
Y3QgYSAqYSkNCj4gew0KPiAgwqDCoMKgIHJldHVybiBhLT55WzBdOw0KPiB9DQo+IA0KPiB2
b2lkIHdyaXRlX2Ioc3RydWN0IGIgKmIsIGludCBqKQ0KPiB7DQo+ICDCoMKgwqAgYi0+eVtq
XSA9IDI7DQo+IH0NCj4gDQo+IGludCB1c2VfdW5pb24odW5pb24gdSAqdSwgaW50IGopDQo+
IHsNCj4gIMKgwqDCoCBpZiAodS0+YS55WzBdID09IDApDQo+ICDCoMKgwqDCoMKgwqDCoCB3
cml0ZV9iKCZ1LT5iLCBqKTsNCj4gIMKgwqDCoMKgwqDCoMKgIC8vd3JpdGVfYigoc3RydWN0
IGIgKil1LCBqKTvCoMKgIC8vIHRoaXMgaGFzIHRoZSBzYW1lIGlzc3VlDQo+ICDCoMKgwqAg
cmV0dXJuIHJlYWRfYSgmdS0+YSk7DQo+ICDCoMKgwqAgcmV0dXJuIHJlYWRfYSgoc3RydWN0
IGEgKil1KTvCoMKgwqDCoMKgIC8vIHRoaXMgaGFzIHRoZSBzYW1lIGlzc3VlDQo+IH0NCj4g
DQo+IGludCAoKnZvbGF0aWxlIHZ0ZXN0KSh1bmlvbiB1ICp1LCBpbnQgaikgPSB1c2VfdW5p
b247DQo+IA0KPiBpbnQgbWFpbih2b2lkKQ0KPiB7DQo+ICDCoMKgwqAgaW50wqDCoMKgwqDC
oMKgIHIxLCByMjsNCj4gIMKgwqDCoCB1bmlvbiB1wqDCoCB1Ow0KPiAgwqDCoMKgIHN0cnVj
dCBiwqAgYiA9IHswfTsNCj4gDQo+ICDCoMKgwqAgdS5iID0gYjsNCj4gIMKgwqDCoCByMSA9
IHZ0ZXN0KCZ1LCAwKTsNCj4gIMKgwqDCoCByMiA9IHUuYS55WzBdOw0KPiANCj4gIMKgwqDC
oCBwcmludGYoIiVkLyVkXG4iLCByMSwgcjIpOw0KPiB9DQoNCg0KQWhoLCBpbmRlZWQgaXQg
c2VlbXMgdG8gYmUgVUIuICBJdCdzIGluIHRoZSBzYW1lIDYuNS4yLjMvNjogIHRoZXJlJ3Mg
YSANCnJlcXVpcmVtZW50IHRoYXQgdGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZSB1bmlvbiBp
cyBrZXB0IGluIHRoZSBmdW5jdGlvbiBpbiANCndoaWNoIGl0J3MgYWNjZXNzZWQuDQoNClRo
ZSBzdGFuZGFyZCBwcmVzZW50cyBhbiBleGFtcGxlLCB3aGljaCBpcyBhIGJpdCBhbWJpZ3Vv
dXM6DQoNCiAgICAgIFRoZSBmb2xsb3dpbmcgaXMgbm90IGEgdmFsaWQgZnJhZ21lbnQgKGJl
Y2F1c2UgdGhlIHVuaW9uIHR5cGUgaXMgbm90IA0KdmlzaWJsZSB3aXRoaW4gZnVuY3Rpb24g
Zik6DQoNCiAgICAgICAgICAgc3RydWN0IHQxIHsgaW50IG07IH07DQogICAgICAgICAgIHN0
cnVjdCB0MiB7IGludCBtOyB9Ow0KICAgICAgICAgICBpbnQgZihzdHJ1Y3QgdDEgKnAxLCBz
dHJ1Y3QgdDIgKnAyKQ0KICAgICAgICAgICB7DQogICAgICAgICAgICAgICAgIGlmIChwMS0+
bSA8IDApDQogICAgICAgICAgICAgICAgICAgICAgICAgcDItPm0gPSAtcDItPm07DQogICAg
ICAgICAgICAgICAgIHJldHVybiBwMS0+bTsNCiAgICAgICAgICAgfQ0KICAgICAgICAgICBp
bnQgZygpDQogICAgICAgICAgIHsNCiAgICAgICAgICAgICAgICAgdW5pb24gew0KICAgICAg
ICAgICAgICAgICAgICAgICAgIHN0cnVjdCB0MSBzMTsNCiAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgdDIgczI7DQogICAgICAgICAgICAgICAgIH0gdTsNCiAgICAgICAgICAg
ICAgICAgLyogLi4uICovDQogICAgICAgICAgICAgICAgIHJldHVybiBmKCZ1LnMxLCAmdS5z
Mik7DQogICAgICAgICAgIH0NCg0KSSBkb24ndCBrbm93IHdoYXQncyB0aGUgaW50ZW50aW9u
IGlmIHRoZSB1bmlvbiB0eXBlIHdhcyBnbG9iYWwgYnV0IHRoZSB2YXJpYWJsZSANCmB1YCB3
YXMgc3RpbGwgbm90IHNlZW4gYnkgZigpLiAgQnV0IGl0IHNlZW1zIEdDQydzIGludGVycHJl
dGF0aW9uIGlzIFVCLCANCmFjY29yZGluZyB0byB0aGUgdGVzdCB3ZSBqdXN0IHNhdy4NCg0K
VGhlIHNvbHV0aW9uIHRoYXQgSSBjYW4gc2VlIGZvciB0aGF0IGlzIG1ha2luZyBzb2NrYWRk
ciBhbHNvIGJlIGEgdW5pb24uICBUaGF0IA0Kd2F5LCB0aGUgdW5pb24gaXMga2VwdCBhY3Jv
c3MgYWxsIGNhbGxzIChzaW5jZSB0aGV5IGFsbCB1c2Ugc29ja2FkZHIpLg0KDQpzdHJ1Y3Qg
c29ja2FkZHIgew0KCXVuaW9uIHsNCgkJc3RydWN0IHsNCgkJCXNhX2ZhbWlseV90ICBzYV9m
YW1pbHk7DQoJCQljaGFyICAgICAgICAgc2FfZGF0YVsxNF07ICAvLyB3aHkgMTQ/DQoJCX0N
CgkJc3RydWN0IHNvY2thZGRyX2luICAgc2luOw0KCQlzdHJ1Y3Qgc29ja2FkZHJfaW42ICBz
aW42Ow0KCQlzdHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQoJfTsNCn07DQoNCg0Kc3RydWN0
IHNvY2thZGRyX3N0b3JhZ2Ugew0KCXVuaW9uIHsNCgkJc2FfZmFtaWx5X3QgICAgICAgICAg
c3NfZmFtaWx5Ow0KCQlzdHJ1Y3Qgc29ja2FkZHIgICAgICBzYTsNCgl9Ow0KfTsNCg0KDQpX
aXRoIHRoaXMsIHNvY2thZGRyX3N0b3JhZ2UgYmVjb21lcyB1c2VsZXNzLCBidXQgc3RpbGwg
dXNhYmxlLiAgTmV3IGNvZGUsIGNvdWxkIA0KanVzdCB1c2Ugc29ja2FkZHIgYW5kIHVzZSB0
aGUgaW50ZXJuYWwgdW5pb24gbWVtYmVycyBhcyBuZWNlc3NhcnkuICBVbmlvbiBpbmZvIA0K
aXMga2VwdCBhY3Jvc3MgYWxsIGZ1bmN0aW9uIGJvdW5kYXJpZXMuDQoNCkNoZWVycywNCg0K
QWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------YbE6NU2nMpu2A03gcRfDrL0H--

--------------zvwekoYuAGfMkKE9LO9sC0ly
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPLWVMACgkQnowa+77/
2zLIPhAAp9THSwu5Zc2EjXDLjjSMT17B6jx0I/CBLvCKdNY1pkA5acISsK+h6v9b
DRf5YuQwgy5Mo1ELPKMU1c9evucxPpuhJcXC7kfPYQOXhTIsolCp0kabJNBswif2
BT4FN1lXPE4Ai94OHkYDpSRzFzNfGmJjj7N0LSBr1ZzmTFBiM9ESFQI2K4EOQota
83+t0jUk4MyzIUUroDXmGDLen+PH1tG+l8TARwmD6/P1rYuApx89mveuKuSb1g4y
sK9G32a9i4wVS9zExwTDPoCg4yRzToL7CTb72HEXfii3mRQJGYlQO3W4dGBCdYYN
QKSn1XxV9G6T9kjdiufpMY6kcEkwVuxWpLGkEX6Oe1jrp2ZifdAEqrETMufieaGa
ZtzN57+nZIEiDnTytG7ofdK1nRmcyFGledd/XHSvX36GmSzYH+NzeLBUGccg3GP8
cBRxSuq6Tb8pFHLLmNpWm3v2UijSC5PKwTIlYk/6X+ywvQCXY9z6U4fKUD4RZ66T
Bl6zJu4mE+NMD+fkcUbEZ/dJHOUwp1159Z2tFvPhlU1TcqH0W2hrKqhFAx/CIy6R
6367wBylB6PS7JWMaASArQzbI1AOnGmNax/S58iMXMtxlQVIacexuqhST+325YfG
gk8FJIDDgMGhhBx7M6o2FZKsMP3lJMtVtM/xbwNsSUV2vYnqWO0=
=2V7J
-----END PGP SIGNATURE-----

--------------zvwekoYuAGfMkKE9LO9sC0ly--
