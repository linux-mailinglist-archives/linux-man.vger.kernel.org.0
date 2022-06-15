Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4DBD54C9F8
	for <lists+linux-man@lfdr.de>; Wed, 15 Jun 2022 15:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354092AbiFONjZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Jun 2022 09:39:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354201AbiFONjZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Jun 2022 09:39:25 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BBDA33E3E
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 06:39:23 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n185so6319080wmn.4
        for <linux-man@vger.kernel.org>; Wed, 15 Jun 2022 06:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=davwKIFkTjo5l5fXQyAivsABKCZdirhiHZoP/E+sUWs=;
        b=qjpsKIaAN4GSFsLvHsDquiv3yQQM964+QVSlEYHVfiu9r7CkEgJYT5qZ5ZoCy3M0Ou
         tsX34HT13f5+xlFo3mmO7BMbAIlM9ZfecRbxwbTSEESLAobhFf1mzl/7Xm4PPUMq0IjM
         mu5ZDdSY7OTFHnZd0fJJOKLiR/r8x4P2/CqsbqQrXrfPkGEocgJTuoM3Ch+RGV8A9XPC
         aCb4GkSURicu1Lty87p0PBCnhFdlIFZpRcFHFALnwI++e2vgNrrjZ8B5CKfCDXoBbRV0
         JPjiMT/aNtWmjULTqVFp9biUdsUYXg5CFLyytjrOv1vl8UasT7rML4qGaMIb6Zdgq+OE
         7Vpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=davwKIFkTjo5l5fXQyAivsABKCZdirhiHZoP/E+sUWs=;
        b=botoHW+4dYXksInPyoZoWuAHCTu7fKK9xzH5IYyovpfnrKkNnB2QsX+5lI1TZnI+Cr
         uJU4mGGdbkQtWU9GfwIGPS9oNqKk2HWMsXGvSNO7CwnK49PExHgdDYqLLDRialpeA1+H
         znI5dTTdGFhFS0r/FnPNtUXrXZdI/OjHhI+ouALrizN84kZoPDBvatKiRdHegZ5dz5nq
         qBMgz9+ew0lnW9TxSMA4nM1rDXCCJ6VomIPQEyHbg9KdR53m0z6qZWxlnafgW9+ae7KF
         uw8QVW0c9IIvjlh31QEn/Cautp3SVETa7DXu6EAvJuPc57O2d+lR2IcYwoXeTjcDeHdH
         EuyA==
X-Gm-Message-State: AOAM531Z861B8g5VMKu1w9XbN15BjtIwn4yTQC+ihfveGgt8Al1xdd7Y
        AAI47QqLHaJqGYhezkuObqM=
X-Google-Smtp-Source: ABdhPJy/gsoW9YPlCngVuJC0iXriYpyBsSJeaOy8Jcz0hKCRoNsJofdQ3mGw8Vj1SweNqbqQCIXb3A==
X-Received: by 2002:a05:600c:2345:b0:39c:44ba:5a79 with SMTP id 5-20020a05600c234500b0039c44ba5a79mr10073745wmq.50.1655300361556;
        Wed, 15 Jun 2022 06:39:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n3-20020a1ca403000000b0039c151298b7sm2584944wme.10.2022.06.15.06.39.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 06:39:20 -0700 (PDT)
Message-ID: <482f97e7-b0c9-cddc-be2d-3f0f7ccedf0e@gmail.com>
Date:   Wed, 15 Jun 2022 15:39:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
Content-Language: en-US
To:     Peter Xu <peterx@redhat.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local> <20220606213323.xtfx7qpab6dwdqpk@illithid>
 <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
 <Yp9gyFRKJoiQmiyU@xz-m1.local>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Yp9gyFRKJoiQmiyU@xz-m1.local>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PJ1xU07YSqT3igg7XUlChFsY"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PJ1xU07YSqT3igg7XUlChFsY
Content-Type: multipart/mixed; boundary="------------PRCkeQpHzjeEQ0ACuWqlmyG1";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Peter Xu <peterx@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org, Axel Rasmussen <axelrasmussen@google.com>
Message-ID: <482f97e7-b0c9-cddc-be2d-3f0f7ccedf0e@gmail.com>
Subject: Re: [PATCH v2 0/2] userfaultfd.2: Update to latest
References: <20220603173736.62581-1-peterx@redhat.com>
 <7acfdeb8-5dd3-dfe2-5717-b64006281a8f@gmail.com>
 <Yp5YGMFJWLtthc8U@xz-m1.local> <20220606213323.xtfx7qpab6dwdqpk@illithid>
 <848979ee-6c5b-5e74-1b45-586303b57a25@gmail.com>
 <Yp9gyFRKJoiQmiyU@xz-m1.local>
In-Reply-To: <Yp9gyFRKJoiQmiyU@xz-m1.local>

--------------PRCkeQpHzjeEQ0ACuWqlmyG1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGV0ZXIhDQoNCk9uIDYvNy8yMiAxNjoyOSwgUGV0ZXIgWHUgd3JvdGU6DQo+PiAicmVn
aXN0ZXJlZCIgaXMgbm90IGFjdGluZyBhcyBhbiBhZGplY3RpdmUsIGJ1dCBhcyBhIHZlcmIu
DQo+IA0KPiBJIHdhbnRlZCB0byB1c2UgaXQgYXMgYW4gYWRqZWN0aXZlLCBidXQgYWZ0ZXIg
eW91IHF1ZXN0aW9uZWQgdGhpcyBvbmUgSSdtDQo+IG5vdCBzdXJlIGFueSBtb3JlIG9uIG15
IEVuZ2xpc2ggc2Nob29sIGtub3dsZWRnZXMuIDopDQo+IA0KPj4gTWF5YmUgUGV0ZXIgd2Fz
IGNvbmZ1c2VkIGJ5IHRoYXQ7IEkgZGlkbid0IGNvbnNpZGVyIHRoYXQgb3B0aW9uLiAgSSdt
DQo+PiBhY3R1YWxseSBzdXJwcmlzZWQgdGhhdCB5b3Ugd2VyZSwgQnJhbmRlbiwgYnV0IEkg
Z3Vlc3MgaXQgd2FzIGp1c3QgYQ0KPj4gbmV1cm9uIGdvaW5nIGNyYXp5LCBhcyBtaW5lIHdp
dGggXGMgdGhlIG90aGVyIGRheSA6cA0KPj4NCj4+DQo+Pj4NCj4+Pj4gSXQncyBhbHdheXMg
Y2hhbGxlbmdpbmcgZm9yIG1lIHRvIGdyYXNwIGhvdyB5b3UgcHJlZmVyIHRoZSBuZXdsaW5l
cw0KPj4+PiBhcmUgbWFkZSwgYnV0IGFueXdheSBiZWxvdyBjaGFuZ2VzIGxvb2tzIGdvb2Qg
dG8gbWUuDQo+Pg0KPj4gU29ycnksIFBldGVyLiAgSSdsbCB0YWtlIHRoYXQgaW50byBhY2Nv
dW50LCBhbmQgdHJ5IHRvIGhlbHAgYXMgbXVjaCBhcyBJDQo+PiBjYW4uDQo+IA0KPiBZb3Un
cmUgZ3JlYXRseSBoZWxwZnVsIHN0YXJ0IGZyb20gdGhlIGJlZ2lubmluZywgYW5kIEkganVz
dCBob3BlIHlvdSBjYW4NCj4gc3RpbGwgYmFyZSB3aXRoIG1lLiA6LSkNCg0KU3VyZSEgOikN
Cg0KDQo+IA0KPj4gQXBhcnQgZnJvbSB3aGF0IEJyYW5kZW4gaGFzIGFscmVhZHkgYWRkZWQg
dG8gdGhpcyB0aHJlYWQsIHRoZQ0KPj4gZm9sbG93aW5nIG1hbi1wYWdlcyBjb21taXQgaGFz
IHNvbWUgbW9yZSBkZXRhaWxzLCBxdW90ZWQgZnJvbSBCLiBXLg0KPj4gS2VybmlnaGFuLCBh
bmQgbWF5IGhlbHAgeW91IHVuZGVyc3RhbmQgd2hhdCBJIHdhbnQ6DQo+Pg0KPj4gPGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9kb2NzL21hbi1wYWdlcy9tYW4tcGFnZXMuZ2l0
L2NvbW1pdC9tYW43L21hbi1wYWdlcy43P2g9YWx4L21haW4maWQ9NmZmNmY0M2Q2ODE2NGY5
OWE4YzNmYjY2ZjQ1MjVkMTQ1NTcxMzEwYz4NCj4+DQo+PiBJIGhhdmUgYSBsb25nLXN0YW5k
aW5nIGRpc2N1c3Npb24gd2l0aCBCcmFuZGVuIHJlZ2FyZGluZyBob3cgbXVjaCBzaG91bGQg
SQ0KPj4gcHVzaCBmb3Igc2VtYW50aWMgbmV3bGluZXMuICBUaGUgb3JpZ2luIG9mIHVzaW5n
IHNlbWFudGljIG5ld2xpbmVzIGlzIG9ubHkNCj4+IHRvIHNpbXBsaWZ5IGRpZmZzIChhbmQg
aXQgZG9lcyB0aGF0IHZlcnkgd2VsbCksIGJ1dCBmb3Igc29tZSByZWFzb24sIG15DQo+PiBi
cmFpbiByZWFkcyB0aGUgdGV4dCBiZXR0ZXIgdG9vIHdoZW4gb3JnYW5pemVkIHRoYXQgd2F5
LCBhcyBvcHBvc2VkIHRvDQo+PiBub3JtYWwgcHJvc2UtbGlrZSB0ZXh0IGZsb3cuICBUaGVy
ZSBJIHNlZW0gdG8gZGlzYWdyZWUgd2l0aCBCcmFuZGVuLCB3aG8NCj4+IHByZWZlcnMgdG8g
cmVhZCBteSBlbWFpbHMgYXMgaWYgdGhleSB3ZXJlIGEgYm9vay4gIE1heWJlIEkgbmVlZCBz
ZW1hbnRpYw0KPj4gbmV3bGluZXMgdG8gdW5kZXJzdGFuZCB0aGUgdGV4dCBiZXR0ZXIsIGJl
Y2F1c2UgdGhlcmUgYXJlIGEgbG90IG9mIHRlY2huaWNhbA0KPj4gdGVybXMgdGhhdCBJIGRv
bid0IGtub3csIGFuZCBoYXZpbmcgbGVzcyBsb2FkIG9uIG15IGJyYWluIChiZWNhdXNlIEkg
ZG9uJ3QNCj4+IG5lZWQgdG8gY2FsY3VsYXRlIHBocmFzZSBib3VuZGFyaWVzKSBtYWtlcyBp
dCBlYXNpZXI7IGl0J3MgZXNwZWNpYWxseSB1c2VmdWwNCj4+IHdoZW4gdGV4dCBpcyB1bmRl
ciBkZXZlbG9wbWVudCwgd2hlcmUgaXQgbWF5IGhhdmUgbWlzdGFrZXMgdGhhdCBtYWtlIGl0
IGV2ZW4NCj4+IG1vcmUgZGlmZmljdWx0IHRvIHJlYWQuDQo+Pg0KPj4gQnV0LCBqdXN0IGRv
IHdoYXQgeW91IGNhbi4gIEknbGwgdHJ5IHRvIGRvIHRoZSByZXN0LCBhbmQgYXNrIHlvdSBp
ZiBJIGRvbid0DQo+PiB1bmRlcnN0YW5kIHNvbWV0aGluZy4NCj4gDQo+IFllcyBJTUhPIHRo
YXQnbGwgYmUgdGhlIGJlc3Qgd2F5IHRvIGdvIHdpdGggdGhlIHJlc3Qgb2YgdGhlIGNvbW11
bml0eSB0b28sDQo+IGJlY2F1c2UgYWZhaWN0IG5vdCBhbGwgY29tbXVuaXR5IGRldmVsb3Bl
cnMgd2lsbCBiZSBhYmxlIHRvIHF1aWNrbHkgZ2V0DQo+IHVzZWQgdG8gdGhlIHJ1bGVzIG9u
IG1hbiBwYWdlIHJlcG9zaXRvcnkgLSB5b3UncmUgd29ya2luZyB3aXRoIGEgYnVuY2ggb2YN
Cj4gcGVvcGxlIHVzaW5nIGluIG1vc3QgY2FzZXMgQyBjb21waWxlcnMgd2hpY2ggaGFzIGEg
bXVjaCBsb29zZXIgc3ludGF4IQ0KPiANCj4gSXQnbGwgYmUgZ3JlYXQgaWYgeW91IGNvdWxk
IGhlbHAgdHVuZSB0aGUgYml0cyBhZnRlciB0aGUgY29udGVudCBiZWluZw0KPiBjb250cmli
dXRlZCBieSBvdGhlcnMgYXMgbG9uZyBhcyB0aGUgbW9kaWZpZWQgdmVyc2lvbiBoYXMgdGhl
IGNvcnJlY3QNCj4gbWVhbmluZ3MuICBOb3Qgc3VyZSB3aGV0aGVyIGl0J2xsIGhhdmUgc2Nh
bGluZyBwcm9ibGVtIGJ1dCBob3BlZnVsbHkgdGhlDQo+IG1hbiBwYWdlcyB3b24ndCBiZSB1
cGRhdGVkIGRyYXN0aWNhbGx5IHNvIGl0IHdvbid0IG92ZXJsb2FkIHlvdSBzbyBlYXNpbHku
DQogPg0KID4gVGhhbmtzIGFnYWluIGZvciBhbGwgdGhlIGhlbHBzLA0KID4NCg0KWWVzLCBp
ZiBJIGp1c3QgZml4IGFsbCBvZiB0aGVtLCBwcm9ncmFtbWVycyBuZXZlciBsZWFybiBob3cg
dG8gd3JpdGUgDQpwcm9wZXIgbWFudWFsIHBhZ2VzLCBhbmQgSSdsbCBoYXZlIHRvIGZpeCB0
aGVtIGZvcmV2ZXIgKGFuZCBzb21ldGltZXMsIA0Kd2hlbiBJIHJlY2V2aWUgaHVnZSBwYXRj
aGVzLCBzdWNoIGFzIG5ldyBwYWdlcywgaXQgZG9lc24ndCBzY2FsZSB2ZXJ5IA0Kd2VsbCku
ICBCdXQgSSBjYW4ndCBwdXQgdG9vIG11Y2ggcHJlc3N1cmUgZWl0aGVyLiAgSXQncyBkaWZm
aWN1bHQsIGJ1dCBJIA0KdHJ5IHRvIGFkYXB0IHRvIGVhY2ggb2YgeW91Lg0KDQoNCkluIHRo
aXMgY2FzZSwgSSBhcHBsaWVkIGJvdGggb2YgeW91ciBwYXRjaGVzLCBhbmQgb24gdG9wIG9m
IHRoZW0sIEkgDQphcHBsaWVkIHRoZSBmb2xsb3dpbmcgb25lLg0KDQpDaGVlcnMhDQoNCkFs
ZXgNCg0KLS0tDQoNCiAgICAgdXNlcmZhdWx0ZmQuMjogTWlub3IgdHdlYWtzIHRvIFBldGVy
J3MgcGF0Y2hlcw0KDQogICAgIFNpZ25lZC1vZmYtYnk6IEFsZWphbmRybyBDb2xvbWFyIDxh
bHgubWFucGFnZXNAZ21haWwuY29tPg0KICAgICBDYzogUGV0ZXIgWHUgPHBldGVyeEByZWRo
YXQuY29tPg0KDQpkaWZmIC0tZ2l0IGEvbWFuMi91c2VyZmF1bHRmZC4yIGIvbWFuMi91c2Vy
ZmF1bHRmZC4yDQppbmRleCA5YjVlYzAzNTguLjBjMGE0ZjY4NyAxMDA2NDQNCi0tLSBhL21h
bjIvdXNlcmZhdWx0ZmQuMg0KKysrIGIvbWFuMi91c2VyZmF1bHRmZC4yDQpAQCAtNjIsMTEg
KzYyLDExIEBAIGZsYWcgaW4NCiAgLkJSIG9wZW4gKDIpLg0KICAuVFANCiAgLkIgVUZGRF9V
U0VSX01PREVfT05MWQ0KLVRoaXMgaXMgYW4gdXNlcmZhdWx0ZmQgc3BlY2lmaWMgZmxhZyB0
aGF0IHdhcyBpbnRyb2R1Y2VkIHNpbmNlIExpbnV4IDUuMTEuDQotV2hlbiBzZXQsIHRoZSB1
c2VyZmF1bHRmZCBvYmplY3Qgd2lsbCBvbmx5IGJlIGFibGUgdG8gaGFuZGxlIHBhZ2UgZmF1
bHRzDQotb3JpZ2luYXRlZCBmcm9tIHRoZSB1c2Vyc3BhY2Ugb24gdGhlIHJlZ2lzdGVyZWQg
cmVnaW9ucy4NCi1XaGVuIGEga2VybmVsIG9yaWdpbmF0ZWQgZmF1bHQgd2FzIHRyaWdnZXJl
ZCBvbiB0aGUgcmVnaXN0ZXJlZCByYW5nZSB3aXRoDQotdGhpcyB1c2VyZmF1bHRmZCwgYQ0K
K1RoaXMgaXMgYW4gdXNlcmZhdWx0ZmQtc3BlY2lmaWMgZmxhZyB0aGF0IHdhcyBpbnRyb2R1
Y2VkIGluIExpbnV4IDUuMTEuDQorV2hlbiBzZXQsIHRoZSB1c2VyZmF1bHRmZCBvYmplY3Qg
d2lsbCBvbmx5IGJlIGFibGUgdG8gaGFuZGxlDQorcGFnZSBmYXVsdHMgb3JpZ2luYXRlZCBm
cm9tIHRoZSB1c2VyIHNwYWNlIG9uIHRoZSByZWdpc3RlcmVkIHJlZ2lvbnMuDQorV2hlbiBh
IGtlcm5lbC1vcmlnaW5hdGVkIGZhdWx0IHdhcyB0cmlnZ2VyZWQNCitvbiB0aGUgcmVnaXN0
ZXJlZCByYW5nZSB3aXRoIHRoaXMgdXNlcmZhdWx0ZmQsIGENCiAgLkIgU0lHQlVTDQogIHNp
Z25hbCB3aWxsIGJlIGRlbGl2ZXJlZC4NCiAgLlBQDQpAQCAtMjc3LDggKzI3Nyw5IEBAIGlv
Y3RsIGFnYWluc3QgdGhlIGZlYXR1cmUgYml0DQogIC5CIFVGRkRfRkVBVFVSRV9QQUdFRkFV
TFRfRkxBR19XUA0KICBiZWZvcmUgdXNpbmcgdGhpcyBmZWF0dXJlLg0KICAuUFANCi1TaW5j
ZSBMaW51eCA1LjE5LCB0aGUgd3JpdGUtcHJvdGVjdGlvbiBtb2RlIHdhcyBhbHNvIHN1cHBv
cnRlZCBvbiBzaG1lbSANCmFuZCBodWdldGxiZnMNCi1tZW1vcnkgdHlwZXMuDQorU2luY2Ug
TGludXggNS4xOSwNCit0aGUgd3JpdGUtcHJvdGVjdGlvbiBtb2RlIHdhcyBhbHNvIHN1cHBv
cnRlZCBvbg0KK3NobWVtIGFuZCBodWdldGxiZnMgbWVtb3J5IHR5cGVzLg0KICBJdCBjYW4g
YmUgZGV0ZWN0ZWQgd2l0aCB0aGUgZmVhdHVyZSBiaXQNCiAgLkJSIFVGRkRfRkVBVFVSRV9X
UF9IVUdFVExCRlNfU0hNRU0gLg0KICAuUFANCg0KDQotLSANCkFsZWphbmRybyBDb2xvbWFy
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------PRCkeQpHzjeEQ0ACuWqlmyG1--

--------------PJ1xU07YSqT3igg7XUlChFsY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKp4P8ACgkQnowa+77/
2zKBohAAmwvb2/0bZbAMwzUJRKBSAY3zJMxoxfMT+/KbSLDlsun3o1jksv4+C/dq
OYuU5biepJC7IGQNCZYTHMWuVlcM9M1+EH7Xf2L/Ps2vvtj7h6asqk6XZCCYUXTS
JbZFADO2/70qbYfuK2r1VqTW3x+nMliP06+VHOHDU2v9dyLBJ9tmTDNY7RTzU/67
2aBWpqjTaoVhk02/e1jg2gYwWrUSq6b2p2wDeYJ+Lnsy51kzDl6lRnR3UlNd2KRY
YW7IeWv5uETSH8ANLaKqmqXfFDCAbtAngF8D+ktzszqsbavWA8xyXd9Ndmy1OxGi
aZfw+okAKYhy1AgKnFLQpsbwb/gba+6VSAd3VV0k8KAUlQNBgdAwAPAixIwVIOhg
YZFh1ntAbW/KkI/9yF91LoIbOgHWbDKzVITmvEgUwQsXgjxLgr+MijHZ4p4SGSkj
KNse0pR+nl1gXQwd0X1mGGdro3hhJjKXak/stErNi0ywAeYz0nDD6znOHjhjnhWm
v3lRggzX0uPjrg6+T3hWZQtwrruYxuzBLhICpn3jr8D1trJpNNIuMgtexHF6LoMO
tqJILjbNFCVuY6KaBd9hqPcUJVX43OnG5pRUAbDJnBNS9rhMNWttBvTHV9ED1qm6
gxua8/CcIWyOJWMaz0XDBSUJ8+Y3o0B3B0ao0v8rqtj2WJw5/7g=
=qksg
-----END PGP SIGNATURE-----

--------------PJ1xU07YSqT3igg7XUlChFsY--
