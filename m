Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A63E579D77
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 14:51:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241697AbiGSMvq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 08:51:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241704AbiGSMuO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 08:50:14 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99D251E3
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 05:20:02 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d8so1420787wrp.6
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 05:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to;
        bh=ekTQIWwyAZ1syzEgNjETyCwFLxz8dJEYgHZ9GKPBsu0=;
        b=WPNeDB57WBcwjIZ2ab8nDI5c8FYG61QslBLHldgn+nwXaQzzQWBlm7jdTZth/145yo
         C+VY5cfmOGm2yJCQsOKuAeehvy4Jq0rRqvBy1jONRnKDcxnmW3ofHEkGpk9qg8YaL++J
         RRk5uS54BuC0cDrixBt3uPeiG+IZ8emjcU57YCqbeLmzEjSwdHPHfRESkJj7CM3vHRsb
         StWUiFaKB8AI5dLEh4YjfTfYobdf2dDrKFAkPUW0Ox4D8p1AfyDwjYabD9aPzHIjh9od
         cWpEF6VIFwlhrSza2dtHGBNcJ/0TCf7YTrzf/0Nrh9e3IYnGTsBxB1E6JL8p5AqiypEr
         /a7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to;
        bh=ekTQIWwyAZ1syzEgNjETyCwFLxz8dJEYgHZ9GKPBsu0=;
        b=exM8sdcMUtxzZhV6gQ+xfXQVfQKj0VeUKUvJhBPFNiUpnOvsJ4bKVYo7N1SEd9eTdY
         wapizpHEH61jol6ASax1Yw7Pqw1V44PlQhTxzElSE5PgIvFJ38D+65YlDgt9E9YZjrlq
         fw6s1OCTHPkYl02hBDtvuhra1ehlDqhm4GIHlgHkq+0M5svmx52SOpk0/xdLgKQu2y5f
         2WHemq8MnyLb/QrafFzy/mkp0J6GkQ5tWxGpuzolVzRJM2AxOYef7mkiCXrId8RpDDF6
         BcSD6e338SwsGRmfwVUHcZEA0/E2Hi3viuL8qVz8IJyCiXVHHH+7/7en41TsVsbg02ld
         2ubg==
X-Gm-Message-State: AJIora9yTYViw8bGgSzf3/TKwSn8jz5p2PBDT3x1EruHfa9RgVPtLmzl
        7ncDmNXyGca+2oM6tvYQUH8=
X-Google-Smtp-Source: AGRyM1vgCXmCtnQqCXdxV/Qbp6/tdQX4t1gW8+0/03HpBWtX7WFKiq+ayy22HJJ6YVYuNkHywfL/Ug==
X-Received: by 2002:a5d:4601:0:b0:21d:8db4:37c with SMTP id t1-20020a5d4601000000b0021d8db4037cmr27184126wrq.390.1658233200429;
        Tue, 19 Jul 2022 05:20:00 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b4-20020a05600c150400b003a03185231bsm17186080wmg.31.2022.07.19.05.19.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 05:19:59 -0700 (PDT)
Message-ID: <3e660c51-7a41-c1f9-f909-b432e76b3b97@gmail.com>
Date:   Tue, 19 Jul 2022 14:19:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
In-Reply-To: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Agn04NypPu0rYnD4iTB24Yb0"
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
--------------Agn04NypPu0rYnD4iTB24Yb0
Content-Type: multipart/mixed; boundary="------------lY0m5sGxZxk89hM0c1ql9h79";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org,
 "G . Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <3e660c51-7a41-c1f9-f909-b432e76b3b97@gmail.com>
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
In-Reply-To: <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>

--------------lY0m5sGxZxk89hM0c1ql9h79
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDcvMTkvMjIgMTQ6MTcsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPiBIaSwg
0L3QsNCxIGFuZCBCcmFuZGVuIQ0KPiANCj4gT24gNy8xOS8yMiAwMzo1Niwg0L3QsNCxIHdy
b3RlOg0KPj4gRnJlZUJTRCB0aW1lem9uZSgzKSBpcyBWNyBjaGFyICp0aW1lem9uZShpbnQg
em9uZSwgaW50IGRzdCksDQo+PiBvdXIgZG9jdW1lbnRhdGlvbiB3b3VsZCBpbXBseSBpdCdz
IGltcG9zc2libGUgdG8gc2VydmljZSB0aGlzIHR5cGUgb2YNCj4+IHN5c3RlbSBwb3J0YWJs
eQ0KPj4NCj4+IEluZGVlZCwgZ2xpYmMgZGVmaW5lcyB0aGVtIGJvdGgsIGFuZCB0aGV5IG1h
a2UgbW9yZSBzZW5zZSBmb3IgbW9zdA0KPj4gdXNlLWNhc2VzIHRoYW4gdHJ5aW5nIHRvIHVz
ZSB0aGUgZ2xvYmFscw0KPiANCj4gR3JlYXQhDQo+IA0KPj4NCj4+IGdsaWJjIGNpdGVkIGZv
ciBfX1VTRV9NSVNDLCB0bV96b25lIGludmFsaWRhdGlvbiBpcyBEZWJpYW4gMi4zMy03DQo+
IA0KPiBCdXQgSSBndWVzcyBpdCBpcyBwcmVzZW50IGluIG11Y2ggb2xkZXIgZ2xpYmNzLCBy
aWdodD8NCj4gT3RoZXJ3aXNlIHdlIHNob3VsZCBhZGQgYSBWRVJTSU9OUyB0aGluZ3kuDQo+
IA0KPj4gUE9TSVggY2l0ZWQgZm9yIFhTSSBtYXJraW5nIGlzIElzc3VlIDcgVEMyDQo+PiBD
U1JHIENEICMyIGNvbnRhaW5zIDQuM0JTRC1UYWhvZSB3aXRoIGJvdGggbWVtYmVycw0KPj4N
Cj4+IFRoaXMgYWxzbyBmaXhlcyB0aGUgbXVsdGlwbGUgbGllcyBpbiBtYW4tcGFnZXMgNS4x
MCBsb2NhbHRpbWUoMyksDQo+PiB3aGljaCBzYXlzIG9ubHk6DQo+PiDCoMKgwqDCoCBUaGUg
Z2xpYmMgdmVyc2lvbiBvZiBzdHJ1Y3QgdG0gaGFzIGFkZGl0aW9uYWwgZmllbGRzDQo+PiDC
oMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKnRtX3pvbmU7wqDCoMKgwqDCoCAvKiBUaW1l
em9uZSBhYmJyZXZpYXRpb24gKi8NCj4+IMKgwqDCoMKgIGRlZmluZWQgd2hlbiBfQlNEX1NP
VVJDRSB3YXMgc2V0IGJlZm9yZSBpbmNsdWRpbmcgPHRpbWUuaD4uDQo+PiDCoMKgwqDCoCBU
aGlzIGlzIGEgQlNEIGV4dGVuc2lvbiwgcHJlc2VudCBpbiA0LjNCU0QtUmVuby4NCj4gDQo+
IERpZCB5b3UgZm9yZ2V0IHRoYXQgcmVtb3ZhbCBvZiBsaWVzP8KgIEkgZG9uJ3Qgc2VlIGl0
IGluIHRoZSBwYXRjaC4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBBaGVsZW5pYSBaaWVtaWHF
hHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0KPj4gLS0tDQo+PiDC
oCBtYW4zL3RtLjN0eXBlIHwgNDUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrDQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKQ0K
Pj4NCj4+IGRpZmYgLS1naXQgYS9tYW4zL3RtLjN0eXBlIGIvbWFuMy90bS4zdHlwZQ0KPj4g
aW5kZXggMTkzMWQ4OTBkLi44YjZmOGQ5YmYgMTAwNjQ0DQo+PiAtLS0gYS9tYW4zL3RtLjN0
eXBlDQo+PiArKysgYi9tYW4zL3RtLjN0eXBlDQo+PiBAQCAtMjUsOCArMjUsMjYgQEAgU3Rh
bmRhcmQgQyBsaWJyYXJ5DQo+PiDCoCAuQlIgIsKgwqDCoCBpbnTCoCB0bV95ZGF5OyIgXA0K
Pj4gwqAgIsKgwqAgLyogRGF5IG9mIHRoZSB5ZWFywqAgWyIgMCAiLCAiIDM2NSAiXSAoSmFu
LzAxID0gIiAwICIpICovIg0KPj4gwqAgLkJSICLCoMKgwqAgaW50wqAgdG1faXNkc3Q7IiAi
wqAgLyogRGF5bGlnaHQgc2F2aW5ncyBmbGFnICovIg0KPj4gKw0KPj4gKy5CUiAiwqDCoMKg
IGxvbmcgdG1fZ210b2ZmOyIgIiAvKiBTZWNvbmRzIEVhc3Qgb2YgVVRDICovIg0KPj4gKy5C
UiAiwqDCoMKgIGNoYXIqdG1fem9uZTsiICLCoMKgIC8qIFRpbWV6b25lIGFiYnJldmlhdGlv
biAqLyINCj4gDQo+IFBsZWFzZSBhZGQgY29zbWV0aWMgd2hpdGVzcGFjZSAoYXQgbGVhc3Qg
MSBmb3IgZXZlcnkgbWVtYmVyLCBwb3NzaWJseSAyLCANCj4gZGVwZW5kaW5nIG9uIHlvdXIg
dGFzdGUpIDopDQoNCkJUVywgc2luY2UgdGhpcyBjb21taXQgaXMgYWxyZWFkeSBhZGRpbmcg
YSBsb3Qgb2Ygc3R1ZmYsIEkgcHJlZmVyIGlmIHlvdSANCmFkZCB0aGUgd2hpdGVzcGFjZSBp
biBhIHNlcGFyYXRlIGNvbW1pdC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCg0KLS0gDQpBbGVq
YW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------lY0m5sGxZxk89hM0c1ql9h79--

--------------Agn04NypPu0rYnD4iTB24Yb0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLWoW4ACgkQnowa+77/
2zJfwQ//UtUYSrU9fsTr29TuJ22gJtSzQskUtac70zAF1ka6ZcRLlhkVH8RnRig8
pXoLuweq88eP2Tyskru3ydy8uuNhTVsjQE1uSX/EVb55JBSj5SWDXAvrk+q5wtOV
tzaUDh4ikCutzRWquJiR4Rqzf6CCtSmvMMx0I3eSkKP2bZ5yKqlYwzPwDOM/yeWt
XpVQapV0Po9EAlMow9v7Ij1J4/G5mQlxU8+d2UbIbbFDTWvnAzFZ2N1WYtwTzBnr
nxkkUcOjKm0ZEwhKuCMHbraqm6aB0XoMUiwdBeHFkeMbI8oxlPaROlbmf7JqE4aq
7TcLMyAepiPR/jQnJ2KJZsf4FfUxOQk5Yc0aOxyTPKCCcdZ6fTjtZUu/jSj1qznU
NyG+bzrk/U3LTc3pJ/3ROLSbLZ5RCpFApgUB2Mt52tN05smm/qwVGSYzcrT8auXR
gB5He7XOGWJkOs5xBOGsB/WDrBj0pPVQ1mjhus/cLV4bX2fQ9kHDeXV/P9DQxRrP
qurobg8E6kZ/I6QKtH+zwtcEaF6qLXkZNXcrf8OK3qODt1UhYsyX17+JAIYUzCBw
VwSc6pN870uCvuTIjQAIpc0aVQtCK7i8gbeoewFDO3rEaKsqFtTtLVQDjrEzCyKp
Roh0/irbOzN849Fih930IDbT1t4al+iajs0agppQiJnRvOsjdS4=
=od1G
-----END PGP SIGNATURE-----

--------------Agn04NypPu0rYnD4iTB24Yb0--
