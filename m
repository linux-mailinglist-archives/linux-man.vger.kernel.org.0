Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFCC6754C6
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 13:40:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbjATMki (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 07:40:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229706AbjATMkh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 07:40:37 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDA1ABFF78
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 04:40:13 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so5756072wma.1
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 04:40:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GqxazIV7R8bTgSPItLDvrKnG3A2yJ+ZbmupTysW5DZM=;
        b=qBySAenn66K1gX0eljOj86Mc7mQ29UgckKuWVr14dyVC1/e1+VKMtA6ABXtvfYgBnA
         pd9TgUir5p3CmF7GEzF31geJMRaGBdpD6kVfocPcv11SLnHrGvvPcDH95RFNxx2q77TO
         AVAgLKvqVmtnTZFz8q+ONgEjxArfS+qERsjgWSqOPv3HvFJ6YRBK0Fk8zpz3BLiqOIru
         UEu+1Ua/oeg/7X4qJ00pGZTlTgxFLv72RZHzV3kJ5lovdt+JZmU2gaC95xlBllGxsFy8
         tEPgPfH7XvMtNP1NGw1QQrvoAas47278Ah849ISZ3MOStwMK9FeIQ1iY2eXwm3A6hGru
         8irQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GqxazIV7R8bTgSPItLDvrKnG3A2yJ+ZbmupTysW5DZM=;
        b=N6V29kz5ry7ExN44C2IL4yf1DzyQwJWRpOWkqfLlBs3ccEpum2NhNswDcV1j3vPbtN
         nh8SiIg0L1Nzndy3wYNEXpQOZod0Lp97pSPVxfHkCh4orNKuK95ducHD1C7q/dLxPUeB
         /4emcJDCrB8o/2u7QnhYRkJYVv6C8R82IfX4p2JmstXj66N/zPJNsXClScXO3F7+JW5Q
         e0s7DgsK2BxHVhwmXCwmjopmjtALNkpRF+SFngjk++dcFD9VwfvkFgsZpQQIoyfB3rnN
         K7ttO2EAwGVsk1eGisUmbYSOTCTUINFPuGad5mLjJrhBaWaEDU+Oj+KSVwONuGJ/xBhI
         3fvg==
X-Gm-Message-State: AFqh2koaKhK+h0ufhLHhj4y3e0K61N3t5QD1GirJwV/riHsd2eAEpf7Y
        raZ0TuUjzauMNtnl1aJ7HouBivHTH/o=
X-Google-Smtp-Source: AMrXdXuvbzL0i+LBDs+pecercnK+tNjiTEkHJLtkKY5UQqX32YLqZOVUk49Cph5QMlLULOAdiQ6HsA==
X-Received: by 2002:a05:600c:1c1f:b0:3db:2d7e:1204 with SMTP id j31-20020a05600c1c1f00b003db2d7e1204mr3680090wms.27.1674218410983;
        Fri, 20 Jan 2023 04:40:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x15-20020a05600c188f00b003db122d5ac2sm2066504wmp.15.2023.01.20.04.40.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 04:40:10 -0800 (PST)
Message-ID: <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
Date:   Fri, 20 Jan 2023 13:39:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: struct sockaddr_storage
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Dz6sn1yT3siSndQjoNIYQcpW"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Dz6sn1yT3siSndQjoNIYQcpW
Content-Type: multipart/mixed; boundary="------------jwWesaTSZ94agaVE2bazmAj8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: GNU C Library <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
 Igor Sysoev <igor@sysoev.ru>
Message-ID: <61bbb556-ff9b-ebdc-5566-bc1ae533c0aa@gmail.com>
Subject: Re: struct sockaddr_storage
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
 <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
In-Reply-To: <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>

--------------jwWesaTSZ94agaVE2bazmAj8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlZmFuLA0KDQpPbiAxLzIwLzIzIDExOjA2LCBTdGVmYW4gUHVpdSB3cm90ZToNCj4g
SGkgQWxleCwNCj4gDQo+IE9uIFRodSwgSmFuIDE5LCAyMDIzIGF0IDQ6MTQgUE0gQWxlamFu
ZHJvIENvbG9tYXINCj4gPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+IHdyb3RlOg0KPj4NCj4+
IEhpIQ0KPj4NCj4+IEkganVzdCByZWNlaXZlZCBhIHJlcG9ydCBhYm91dCBzdHJ1Y3Qgc29j
a2FkZHJfc3RvcmFnZSBpbiB0aGUgbWFuIHBhZ2VzLiAgSXQNCj4+IHJlbWluZGVkIG1lIG9m
IHNvbWUgY29uY2VybiBJJ3ZlIGFsd2F5cyBoYWQgYWJvdXQgaXQ6IGl0IGRvZXNuJ3Qgc2Vl
bSB0byBiZSBhDQo+PiB1c2FibGUgdHlwZS4NCj4+DQo+PiBJdCBoYXMgc29tZSBhbGlnbm1l
bnQgcHJvbWlzZXMgdGhhdCBtYWtlIGl0ICJqdXN0IHdvcmsiIG1vc3Qgb2YgdGhlIHRpbWUs
IGJ1dA0KPj4gaXQncyBzdGlsbCBhIFVCIG1pbmUsIGFjY29yZGluZyB0byBJU08gQy4NCj4+
DQo+PiBBY2NvcmRpbmcgdG8gc3RyaWN0IGFsaWFzaW5nIHJ1bGVzLCBpZiB5b3UgZGVjbGFy
ZSBhIHZhcmlhYmxlIG9mIHR5cGUgJ3N0cnVjdA0KPj4gc29ja2FkZHJfc3RvcmFnZScsIHRo
YXQncyB3aGF0IHlvdSBnZXQsIGFuZCB0cnlpbmcgdG8gYWNjZXNzIGl0IGxhdGVyIGFzIHNv
bWUNCj4+IG90aGVyIHNvY2thZGRyXzggaXMgc2ltcGx5IG5vdCBsZWdhbC4gIFRoZSBjb21w
aWxlciBtYXkgYXNzdW1lIHRob3NlIGFjY2Vzc2VzDQo+PiBjYW4ndCBoYXBwZW4sIGFuZCBv
cHRpbWl6ZSBhcyBpdCBwbGVhc2VzLg0KPiANCj4gQ2FuIHlvdSBkZXRhaWwgdGhlICJpcyBu
b3QgbGVnYWwiIHBhcnQ/DQoNCkkgbWVhbiB0aGF0IGl0J3MgVW5kZWZpbmVkIEJlaGF2aW9y
IGNvbnRyYWJhbmQuDQoNCj4gSG93IGFib3V0IHRoZSBBUElzIGxpa2UNCj4gY29ubmVjdCgp
IGV0YyB0aGF0IHVzZSBwb2ludGVycyB0byBzdHJ1Y3Qgc29ja2FkZHIsIHdoZXJlIHRoZQ0K
PiB1bmRlcmx5aW5nIHR5cGUgaXMgZGlmZmVyZW50LCB3aHkgd291bGQgdGhhdCBiZSBsZWdh
bCB3aGlsZSB1c2luZw0KPiBzb2NrYWRkcl9zdG9yYWdlIGlzbid0Pw0KDQpUaGF0J3MgYWxz
byBiYWQuICBIb3dldmVyLCBpdCBjYW4gYmUgZml4ZWQgYnkgZml4aW5nIGBzb2NrYWRkcl9z
dG9yYWdlYCBhbmQgDQp0ZWxsaW5nIGV2ZXJ5b25lIHRvIHVzZSBpdCBpbnN0ZWFkIG9mIHVz
aW5nIHdoYXRldmVyIG90aGVyIGBzb2NrYWRkcl8qYC4gIFlvdSANCm5lZWQgYSB1bmlvbiBm
b3IgdGhlIHVuZGVybHlpbmcgc3RvcmFnZSwgc28gdGhhdCB0aGUgbGlicmFyeSBmdW5jdGlv
bnMgY2FuIA0KYWNjZXNzIGJvdGggYXMgYHNvY2thZGRyYCBhbmQgYXMgYHNvY2thZGRyXypg
Lg0KDQpUaGUgcHJvYmxlbSBpc24ndCByZWFsbHkgaW4gdGhlIGltcGxlbWVudGF0aW9uIG9m
IGNvbm5lY3QoMiksIGJ1dCBvbiB0aGUgdHlwZS4gDQpUaGUgaW1wbGVtZW50YXRpb24gb2Yg
Y29ubmVjdCgyKSB3b3VsZCBiZSBmaW5lIGlmIHdlIGp1c3QgZml4ZWQgdGhlIHR5cGUuICBT
ZWUgDQpzb21lIGV4YW1wbGU6DQoNCnN0cnVjdCBteV9zb2NrYWRkcl9zdG9yYWdlIHsNCgl1
bmlvbiB7DQoJCXNhX2ZhbWlseV90ICAgICAgICAgIHNzX2ZhbWlseTsNCgkJc3RydWN0IHNv
Y2thZGRyICAgICAgc2E7DQoJCXN0cnVjdCBzb2NrYWRkcl9pbiAgIHNpbjsNCgkJc3RydWN0
IHNvY2thZGRyX2luNiAgc2luNjsNCgkJc3RydWN0IHNvY2thZGRyX3VuICAgc3VuOw0KCX07
DQp9Ow0KDQoNCnZvaWQNCmZvbyhmb28pDQp7DQoJc3RydWN0IG15X3NvY2thZGRyX3N0b3Jh
Z2UgIG1zczsNCglzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSAgICAgc3M7DQoNCgkvLyBpbml0
aWFsaXplIG1zcyBhbmQgc3MNCg0KCWluZXRfc29ja2FkZHIyc3RyKCZtc3Muc2EpOyAgLy8g
Y29ycmVjdA0KCWluZXRfc29ja2FkZHIyc3RyKChzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSAq
KSZzcyk7ICAvLyBVQg0KfQ0KDQovKiBUaGlzIGZ1bmN0aW9uIGlzIGNvcnJlY3QsIGFzIGZh
ciBhcyB0aGUgYWNjZXNzZWQgb2JqZWN0IGhhcyB0aGUNCiAgKiB0eXBlIHdlJ3JlIHVzaW5n
LiAgVGhhdCdzIG9ubHkgcG9zc2libGUgdGhyb3VnaCBhIGB1bmlvbmAsIHNpbmNlDQogICog
d2UncmUgYWNjZXNzaW5nIGl0IHdpdGggMiBkaWZmZXJlbnQgdHlwZXM6IGBzb2NrYWRkcmAg
Zm9yIHRoZQ0KICAqIGBzYV9mYW1pbHlgIGFuZCB0aGVuIHRoZSBhcHByb3ByaWF0ZSBzdWJ0
eXBlIGZvciB0aGUgYWRkcmVzcw0KICAqIGl0c2VsZi4NCiAgKi8NCmNvbnN0IGNoYXIgKg0K
aW5ldF9zb2NrYWRkcjJzdHIoY29uc3Qgc3RydWN0IHNvY2thZGRyICpzYSkNCnsNCglzdHJ1
Y3Qgc29ja2FkZHJfaW4gICAqc2luOw0KCXN0cnVjdCBzb2NrYWRkcl9pbjYgICpzaW42Ow0K
DQoJc3RhdGljIGNoYXIgICAgICAgICAgYnVmW0lORVRfQUREUlNUUkxFTk1BWF07DQoNCglz
d2l0Y2ggKHNhLT5zYV9mYW1pbHkpIHsNCgljYXNlIEFGX0lORVQ6DQoJCXNpbiA9IChzdHJ1
Y3Qgc29ja2FkZHJfaW4gKikgc2E7DQoJCWluZXRfbnRvcChBRl9JTkVULCAmc2luLT5zaW5f
YWRkciwgYnVmLCBOSVRFTVMoYnVmKSk7DQoJCXJldHVybiBidWY7DQoJY2FzZSBBRl9JTkVU
NjoNCgkJc2luNiA9IChzdHJ1Y3Qgc29ja2FkZHJfaW42ICopIHNhOw0KCQlpbmV0X250b3Ao
QUZfSU5FVDYsICZzaW42LT5zaW42X2FkZHIsIGJ1ZiwgTklURU1TKGJ1ZikpOw0KCQlyZXR1
cm4gYnVmOw0KCWRlZmF1bHQ6DQoJCWVycm5vID0gRUFGTk9TVVBQT1JUOw0KCQlyZXR1cm4g
TlVMTDsNCgl9DQp9DQoNCg0KQlRXLCB5b3UgbmVlZCBhIHVuaW9uIF9ldmVuIGlmXyB5b3Ug
b25seSBjYXJlIGFib3V0IGEgc2luZ2xlIGFkZHJlc3MgZmFtaWx5LiANClRoYXQgaXMsIGlm
IHlvdSBvbmx5IGNhcmUgYWJvdXQgVW5peCBzb2NrZXRzLCB5b3UgY2FuJ3QgZGVjbGFyZSB5
b3VyIHZhcmlhYmxlIG9mIA0KdHlwZSBzb2NrYWRkcl91biwgYmVjYXVzZSB0aGUgbGliYyBm
dW5jdGlvbnMgYW5kIHN5c2NhbGxzIHN0aWxsIG5lZWQgdG8gYWNjZXNzIA0KaXQgYXMgYSBz
b2NrYWRkciB0byBzZWUgd2hpY2ggZmFtaWx5IGl0IGhhcy4NCg0KPiBXaWxsIGNvZGUgYnJl
YWsgaW4gcHJhY3RpY2U/DQoNCldlbGwsIGl0IGRlcGVuZHMgb24gaG93IG11Y2ggY29tcGls
ZXJzIGFkdmFuY2UuICBIZXJlJ3Mgc29tZSBpbnRlcmVzdGluZyBleHBlcmltZW50Og0KDQo8
aHR0cHM6Ly9zb2Z0d2FyZS5jb2RpZGFjdC5jb20vcG9zdHMvMjg3NzQ4LzI4Nzc1MCNhbnN3
ZXItMjg3NzUwPg0KDQpJIHdvdWxkbid0IHJlbHkgb24gVW5kZWZpbmVkIEJlaGF2aW9yIG5v
dCBjYXVzaW5nIG5hc2FsIGRlbW9ucy4gIFdoZW4geW91IGdldCANCnRoZW0sIHlvdSBjYW4g
b25seSBraWxsIHRoZW0gd2l0aCBnYXJsaWMuDQoNCj4gDQo+Pg0KPj4gVGhhdCBtZWFucyB0
aGF0IG9uZSBuZWVkcyB0byBkZWNsYXJlIGEgdW5pb24gd2l0aCBhbGwgcG9zc2libGUgc29j
a2FkZHJfKiB0eXBlcw0KPj4gdGhhdCBhcmUgb2YgaW50ZXJlc3QsIHNvIHRoYXQgYWNjZXNz
IGFzIGFueSBvZiB0aGVtIGlzIGxhdGVyIGFsbG93ZWQgYnkgdGhlDQo+PiBjb21waWxlciAo
b2YgY291cnNlLCB0aGUgdXNlciBzdGlsbCBuZWVkcyB0byBhY2Nlc3MgdGhlIGNvcnJlY3Qg
b25lLCBidXQgdGhhdCdzDQo+PiBvZiBjb3Vyc2UpLg0KPj4NCj4+IEluIHRoYXQgdW5pb24s
IG9uZSBjb3VsZCBhZGQgYSBtZW1iZXIgdGhhdCBpcyBvZiB0eXBlIHNvY2thZGRyX3N0b3Jh
Z2UgZm9yDQo+PiBnZXR0aW5nIGEgbW9yZSBjb25zaXN0ZW50IHN0cnVjdHVyZSBzaXplIChm
b3IgZXhhbXBsZSwgaWYgc29tZSBtZW1iZXJzIGFyZQ0KPj4gY29uZGl0aW9uYWwgb24gcHJl
cHJvY2Vzc29yIHN0dWZmKSwgYnV0IEkgZG9uJ3Qgc2VlIG11Y2ggdmFsdWUgaW4gdGhhdC4N
Cj4+IEVzcGVjaWFsbHksIGdpdmVuIHRoaXMgY29tbWVudCB0aGF0IElnb3IgU3lzb2V2IHdy
b3RlIGluIE5HSU5YIFVuaXQncyBzb3VyY2UgY29kZToNCj4+DQo+PiAgICAqIHN0cnVjdCBz
b2NrYWRkcl9zdG9yYWdlIGlzOg0KPj4gICAgKiAgICAxMjggYnl0ZXMgb24gTGludXgsIEZy
ZWVCU0QsIE1hY09TWCwgTmV0QlNEOw0KPj4gICAgKiAgICAyNTYgYnl0ZXMgb24gU29sYXJp
cywgT3BlbkJTRCwgYW5kIEhQLVVYOw0KPj4gICAgKiAgIDEyODggYnl0ZXMgb24gQUlYLg0K
Pj4gICAgKg0KPj4gICAgKiBzdHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSBpcyB0b28gbGFyZ2Ug
b24gc29tZSBwbGF0Zm9ybXMNCj4+ICAgICogb3IgbGVzcyB0aGFuIHJlYWwgbWF4aW11bSBz
dHJ1Y3Qgc29ja2FkZHJfdW4gbGVuZ3RoLg0KPj4NCj4+IFdoaWNoIG1ha2VzIGl0IGV2ZW4g
bW9yZSB1c2VsZXNzIGFzIGEgdHlwZS4NCj4gDQo+IEknbSBub3Qgc3VyZSB1c2luZyBzdHJ1
Y3Qgc29ja2FkZHJfc3RvcmFnZSBmb3Igc3RvcmluZyBzb2NrYWRkcl91bidzDQo+IChVTklY
IGRvbWFpbiBzb2NrZXQgYWRkcmVzc2VzLCByaWdodD8pIGlzIHRoYXQgY29tbW9uIGEgdXNh
Z2UuIEkndmUNCj4gdXNlZCBpdCBpbiB0aGUgcGFzdCB0byBzdG9yZSBlaXRoZXIgYSBzb2Nr
YWRkcl9pbiBvciBhIHNvY2thZGRyX2luNiwNCj4gYW5kIEkgdGhpbmsgdGhhdCB3b3VsZCBi
ZSBhIG1vcmUgY29tbW9uIHNjZW5hcmlvLiBUaGUgY29tbWVudCBhYm92ZQ0KPiBwcm9iYWJs
eSBtYWtlcyBzZW5zZSBmb3IgbmdpbngsIGJ1dCBkaWZmZXJlbnQgcHJvamVjdHMgaGF2ZSBk
aWZmZXJlbnQNCj4gbmVlZHMuDQo+IA0KPiBBcyBmb3IgdGhlIHNpemUsIEkgZ3Vlc3MgaXQg
bWlnaHQgbWF0dGVyIGlmIHlvdSB3YW50IHRvIHBvcnQgeW91ciBjb2RlDQo+IHRvIEFJWCwg
U29sYXJpcywgT3BlbkJTRCBldGMuIEkgZG9uJ3QgdGhpbmsgYWxsIHNvZnR3YXJlIGlzIG1l
YW50IHRvDQo+IGJlIHBvcnRhYmxlLCB0aG91Z2ggKG9yIHBvcnRhYmxlIHRvIHRob3NlIHBs
YXRmb3JtcykuIE1heWJlIGEgd2FybmluZw0KPiBpcyBpbiBvcmRlciB0aGF0LCBmb3IgcG9y
dGFibGUgY29kZSwgZGV2ZWxvcGVycyBzaG91bGQgY2hlY2sgaXRzIHNpemUNCj4gb24gdGhl
IG90aGVyIHBsYXRmb3JtcyB0YXJnZXRlZC4NCg0KVGhlIHNpemUgdGhpbmcgaXMganVzdCBh
biBhZGRlZCBwcm9ibGVtLiAgVGhlIGRlZXAgcHJvYmxlbSBpcyB0aGF0IHlvdSBuZWVkIHRv
IA0KdXNlIGEgdW5pb24gdGhhdCBjb250YWlucyBhbGwgdHlwZXMgdGhhdCB5b3UgY2FyZSBh
Ym91dCBfcGx1c18gcGxhaW4gc29ja2FkZHIsIA0KYmVjYXVzZSB0aGUgc3RydWN0dXJlIHdp
bGwgYmUgYWNjZXNzZWQgYXQgbGVhc3QgYXMgYSBzb2NrYWRkciwgcGx1cyBvbmUgb2YgdGhl
IA0KZGlmZmVyZW50IHNwZWNpYWxpemVkIHN0cnVjdHVyZXMuICBTbyBldmVuIGZvciBvbmx5
IHNvY2thZGRyX3VuLCB5b3UgbmVlZCBhdCANCmxlYXN0IHRoZSBmb2xsb3dpbmc6DQoNCnVu
aW9uIG15X3VuaXhfc29ja2FkZHIgew0KCXN0cnVjdCBzb2NrYWRkciAgICAgc2E7DQoJc3Ry
dWN0IHNvY2thZGRyX3VuICBzdW47DQp9Ow0KDQpOb3QgZG9pbmcgdGhhdCB3aWxsIG5lY2Vz
c2FyaWx5IHJlc3VsdCBpbiBpbnZva2luZyBVbmRlZmluZWQgQmVoYXZpb3IgYXQgc29tZSBw
b2ludC4NCg0KPiANCj4gSnVzdCBteSAyIGNlbnRzLCBhcyBhbHdheXMsDQo+IFN0ZWZhbi4N
Cg0KVGhlIGdvb2QgdGhpbmcgaXMgdGhhdCBmaXhpbmcgc29ja2FkZHJfc3RvcmFnZSBhbmQg
dGVsbGluZyBldmVyeWJvZHkgdG8gdXNlIGl0IA0KYWx3YXlzIGZpeGVzIHRoZSBwcm9ibGVt
LCBzbyBJJ20gcHJlcGFyaW5nIGEgcGF0Y2ggZm9yIGdsaWJjLg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KPiANCj4+DQo+Pg0KPj4gU2hvdWxkIHdlIHdhcm4gYWJvdXQgdXNlcyBvZiB0aGlz
IHR5cGU/ICBTaG91bGQgd2UgcmVjb21tZW5kIGFnYWluc3QgdXNpbmcgaXQgaW4NCj4+IHRo
ZSBtYW51YWwgcGFnZSwgc2luY2UgdGhlcmUncyBubyBsZWdpdGltYXRlIHVzZXMgb2YgaXQ/
DQo+Pg0KPj4gQ2hlZXJzLA0KPj4NCj4+IEFsZXgNCj4+DQo+PiAtLQ0KPj4gPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------jwWesaTSZ94agaVE2bazmAj8--

--------------Dz6sn1yT3siSndQjoNIYQcpW
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPKi5cACgkQnowa+77/
2zKY4w/9F7LJftlPEkOlcljUuq2oxYD+AKfdrqiL9G/o5XewotR2bj4adbGZE4V8
3fcC9DqzRqgOenfKkKya5LAwmOMCsMx5WNN8J7Vs+Jw1ifByT2i6TDoTGSebmGE+
w6I6vhN9pmlsaazfggI3abtlBIln30KP7I2jMUTOI/XK23e90Qblylly7CCJyOnt
NH+ynC9qUREQKr8qkeiw3zd2BISFlO/B7UjXNtmhZgkyHoHP4M/rJaX/84wxDUl7
gmRcvlIFxaoOmFCFLn4cdRupKecSe14PhuSxcJjWElySWZfsLqK13EWO52rX3TKM
MrXIzKpXeC/NTa/SOp05CFP0nBQQyZKRxfwjpjRNhfZQkHjmoxQpDXxp3ifKautS
TEbUVh3fWl5WC/MXegdUxxhTienuYqui33vTh5Y9mC8iLrmkmbNL+nNK95T39sO4
KLVPqVH4XbQgeulT8XRILtl5MC4w1K+66t0rThVW58/rWb1x+mhHlnJHOVZI87Z+
8Uyly2g8W+C7dRp/8CZzlnie4F1PnSX/ha+78FnUEP+yWVAXrXc+23IDHQDLqJyn
R3aRFyDmvZWB1smvDhvR+oLxeEOFJ5GUP9xt0ObjH2gtj2qXKEaQXF8Pa6dWMf6C
N0mbWH+U4Or9J28Ty03lfbivruR16Rhu+zG9Q36+YYMZ5X18wNU=
=v/IJ
-----END PGP SIGNATURE-----

--------------Dz6sn1yT3siSndQjoNIYQcpW--
