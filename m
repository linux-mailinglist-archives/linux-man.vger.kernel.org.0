Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99A916A2616
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 02:06:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229513AbjBYBGY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 20:06:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjBYBGY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 20:06:24 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B236EA25B
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:06:19 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id l25so976171wrb.3
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 17:06:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y/u1q+EVMmdKFn4ULIIl2LCGtGGpPqNwbJwIhwhxRRk=;
        b=ZN2ZYekvSykxvxEtMMuw8qR3AR3ZtGJJgohnLHGD+bO+KpZQpdRRunAGI/47kTeoIn
         Q3wJMwkXPhT3B5ePgWmNjjnlcM577oOhpmU0TTLWgRWo7UlQQhzXsBC1liO2Gz6c9gtu
         FcWImjmwqG82/tGEb6Pf5lLY7hdgydYn1UTAxFjm+JaOvy1iFlYBy7SKt6OSN1k2zboH
         /BxBlcjegPGjymqkJJ+uMs8fA+GpuTa1oFDk/de27Dch441ZZ3MQu+CiWe+OnY6hiT1M
         LuRyFezKzvVxN0LYJHA+j0oKn8HThttX3F9gSluwR8iipdLr/NN4cYTYC+V3U/gzCq3X
         imPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Y/u1q+EVMmdKFn4ULIIl2LCGtGGpPqNwbJwIhwhxRRk=;
        b=SLr05s7DZQngHHl1v5m1xja1zZ52HP2BYtB57RwQSiyGo2oLInhJILD0R/ttOx39CI
         ZvnN94ijB1X3PCKHQGIvYKqCEZZEpKsu+kfs7xAmBdTcq3U93uTDLiRVnlJ2UjhCeZuR
         wicV2IDF7KGdH/3yrM+5JiI52cjODM1gNnJJTupMoF0UjDyoMSuPjHS7tat5KHXCwwkR
         aE+0In0s8hgYlsgDnVJf9AWZSzjerb660qWBR8I5FjAeaUifzJfV7fqsZzpkzZ0xfpax
         qnYFZ9dkkhoGPzPRIqiT8hqMOLzjrXLQ6n+k5b0/zF01fGql9fd+zGdfy8oNxBLHmLgt
         lkWw==
X-Gm-Message-State: AO0yUKW09eshVwd6nhvre/2TaKPRn5kV7f63KRII68Aogp+S+zfouzRI
        ytn/Vw5R12IqVSLYW2sU7N4=
X-Google-Smtp-Source: AK7set9CGcsA4EipZvyK5kkv3QL7r9PSICSQE6c/yAFcGrAGKDC3XWNKUvVIvVmTo2mGPe7LxB2PMQ==
X-Received: by 2002:adf:ef8e:0:b0:2c7:fc3:5f36 with SMTP id d14-20020adfef8e000000b002c70fc35f36mr6724987wro.45.1677287178064;
        Fri, 24 Feb 2023 17:06:18 -0800 (PST)
Received: from [172.26.3.7] (240.red-88-26-240.staticip.rima-tde.net. [88.26.240.240])
        by smtp.gmail.com with ESMTPSA id y14-20020adfee0e000000b002c71b4d476asm252023wrn.106.2023.02.24.17.06.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 17:06:17 -0800 (PST)
Message-ID: <0f3f221f-5724-97ea-a75f-790d44b145d2@gmail.com>
Date:   Sat, 25 Feb 2023 02:06:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Content-Language: en-US
To:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XRI9ZYtvAxGIT2uk3LEv2gGM"
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
--------------XRI9ZYtvAxGIT2uk3LEv2gGM
Content-Type: multipart/mixed; boundary="------------L0pStZVphCw1CVSSxiHEMdql";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <0f3f221f-5724-97ea-a75f-790d44b145d2@gmail.com>
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
In-Reply-To: <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>

--------------L0pStZVphCw1CVSSxiHEMdql
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlja2HDq2wsDQoNCk9uIDIvMjIvMjMgMDg6MzYsIE1pY2thw6tsIFNhbGHDvG4gd3Jv
dGU6DQo+IE9uIDIwMjMtMDItMjFUMjE6NTA6MjIuMDAwKzAxOjAwLCBHw7xudGhlciBOb2Fj
ayB3cm90ZToNCj4gDQo+IFsuLi5dDQo+IA0KPj4gICAuU0ggVkVSU0lPTlMNCj4+IC1MYW5k
bG9jayB3YXMgYWRkZWQgaW4gTGludXggNS4xMy4NCj4+ICtMYW5kbG9jayB3YXMgaW50cm9k
dWNlZCBpbiBMaW51eCA1LjEzLg0KPj4gKy5QUA0KPj4gK1RoZSBhdmFpbGFiaWxpdHkgb2Yg
aW5kaXZpZHVhbCBMYW5kbG9jayBmZWF0dXJlcyBpcyB2ZXJzaW9uZWQgdGhyb3VnaA0KPj4g
K0FCSSBsZXZlbHM6DQo+PiArLlRTDQo+PiArYm94Ow0KPj4gK250YnwgbnRifCBsYngNCj4+
ICtudHwgbnR8IGxieC4NCj4+ICtBQkkJS2VybmVsCU5ld2x5IGludHJvZHVjZWQgYWNjZXNz
IHJpZ2h0cw0KPj4gK18JXwlfDQo+PiArMQk1LjEzCUxBTkRMT0NLX0FDQ0VTU19GU19FWEVD
VVRFDQo+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1dSSVRFX0ZJTEUNCj4+ICtcXglc
XglMQU5ETE9DS19BQ0NFU1NfRlNfUkVBRF9GSUxFDQo+PiArXF4JXF4JTEFORExPQ0tfQUND
RVNTX0ZTX1JFQURfRElSDQo+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX1JFTU9WRV9E
SVINCj4+ICtcXglcXglMQU5ETE9DS19BQ0NFU1NfRlNfUkVNT1ZFX0ZJTEUNCj4+ICtcXglc
XglMQU5ETE9DS19BQ0NFU1NfRlNfTUFLRV9DSEFSDQo+PiArXF4JXF4JTEFORExPQ0tfQUND
RVNTX0ZTX01BS0VfRElSDQo+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfUkVH
DQo+PiArXF4JXF4JTEFORExPQ0tfQUNDRVNTX0ZTX01BS0VfU09DSw0KPj4gK1xeCVxeCUxB
TkRMT0NLX0FDQ0VTU19GU19NQUtFX0ZJRk8NCj4+ICtcXglcXglMQU5ETE9DS19BQ0NFU1Nf
RlNfTUFLRV9CTE9DSw0KPj4gK1xeCVxeCUxBTkRMT0NLX0FDQ0VTU19GU19NQUtFX1NZTQ0K
Pj4gK18JXwlfDQo+PiArMgk1LjE5CUxBTkRMT0NLX0FDQ0VTU19GU19SRUZFUg0KPj4gKy5U
RQ0KPj4gKy5QUA0KPiANCj4gQSBsaW5lIGJyZWFrIHdvdWxkIGJlIG5pY2UgaGVyZS4NCg0K
LlBQIHNob3VsZCBiZSBwZXJmb3JtaW5nIGEgbGluZSBicmVhay4gIEkgZGlkbid0IHlldCBy
ZWFkIHRoZSBmb3JtYXR0ZWQgDQp2ZXJzaW9uLCBzbyBtYXliZSB0aGVyZSdzIHNvbWV0aGlu
ZyB3cm9uZyB3aXRoIHRoZSB0YWJsZSwgYnV0IGZyb20gDQppbnNwZWN0aW9uIG9mIHRoZSBz
b3VyY2UgaXQgc2VlbXMgcmVhc29uYWJsZSB0byBtZS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gDQo+PiArVG8gcXVlcnkgdGhlIHJ1bm5pbmcga2VybmVsJ3MgTGFuZGxvY2sgQUJJIGxl
dmVsLCBwcm9ncmFtcyBtYXkgcGFzcw0KPiANCj4gcy9sZXZlbC92ZXJzaW9uLw0KPiANCj4+
ICt0aGUNCj4+ICsuQiBMQU5ETE9DS19DUkVBVEVfUlVMRVNFVF9WRVJTSU9ODQo+PiArZmxh
ZyB0bw0KPj4gKy5CUiBsYW5kbG9ja19jcmVhdGVfcnVsZXNldCAoMikuDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDog
QTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------L0pStZVphCw1CVSSxiHEMdql--

--------------XRI9ZYtvAxGIT2uk3LEv2gGM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmP5XwgACgkQnowa+77/
2zL2SA/+OhbOeZbjknPEW1Q3+FD+1hH7n2V/o+MDJ+5+VWwlPXVxnhd3tZne79xe
OzVKhTwq2soaoXONRqK7BBsDRzUGXddsthrDjU4yTOAjcvnceG9wofWcwwc8X/8K
GcVAfm1LCa3jpfi5U/apnh9W53SE3ZyIdZgZfrGJ3q4rRNLEbTDJfjqjahj74VRZ
94d+9jZWFGTeHg3gbQNgeBJxWlvUrURW1Q/QVYEndGos5I5q9xPq5fIHg7tlriao
e9FN5oL/ST7s2J+m157RnU/2oIxZ5o2neQEJkw2KFGSE2CxKVIA498mUKaTTuF9+
h2/O71ue7UaCT42n9xAZFyzHUD4z2fnqVSZyTy3/HKqgrd+4WZHJdkmWY4N9yRIC
R4zj6TrLKN6lT/pzyjKqEBHq2y3wlPIcBSoUfHUrkhGWcVI24VWYZgqZRxp3ykwP
Nppu8b12cE3p09Dwbh2yriuAKOvrZbUDA/oc2qkdMJRT0MEqSpwPynzcztevmpiz
/J86H1wXGgply+QEd9ut3yzmA4DFzcPsuL1iK54nR7wjvm9YSsRWluiMmgl3OZQG
aOcVF+I0b9tDpyEsRBOOh8ZkjonSmDvjC98mR28rWAHXsgywo/mVW9qvl6XQiCjf
y5npLDoqoTUofD/YAujm4m3NzjdX+f97nuUWf6a3SVSjwvm0hfY=
=yi62
-----END PGP SIGNATURE-----

--------------XRI9ZYtvAxGIT2uk3LEv2gGM--
