Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DF615F8767
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 22:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiJHUpd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Oct 2022 16:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbiJHUpc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Oct 2022 16:45:32 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF121DF23
        for <linux-man@vger.kernel.org>; Sat,  8 Oct 2022 13:45:31 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id o5so4722037wms.1
        for <linux-man@vger.kernel.org>; Sat, 08 Oct 2022 13:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQ/4xAntwFPTWooiPihYxTCXKSC3IpTa4JOhYy+8Gy4=;
        b=Y81fJzUOnLws5sS+F00eA3V6sfRPTXNIz4PrwAmoZebk633cImKgzzkcU9AeTQqLYA
         AKhw97btQm1BDyUYLELPJopaaahNvRcmbs1SHlD16FoBIrt+uHPtHclVAagoGMtE6CRV
         W4j5wdqUe3SVbWgI4Eiz2GSoS1ScoF9x4rs850nfnIHjMwqPRgv2FNJrpz+30Ta8zA/8
         nAGMDgZR5OfZyUynC+ZBzZW1Iq+SnELvecXNOaG6EKX+jI8OKQrEI5lpBcQoiDu4gTMj
         8t9eLtasVzLfzqj4gEr9VCu6DFJHtEKNvunBKt2YRtZtSIaNTWpy1JHdsI/+JOAdniA/
         DBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KQ/4xAntwFPTWooiPihYxTCXKSC3IpTa4JOhYy+8Gy4=;
        b=VdhWrIsBRrviov/YyjmTBiSw2itgfs/4z6wlBwJ92+pkKe0tOVAiXIxY65D6GPPy+N
         P+cVsnXKCS1VQx4TbOkwr19xBfnSCpBzB8C7wD5TU9UFS8y20WMR+3XDiFxcJ5LTRkXO
         pum336/5teXdrrjH19TWNDvgEfdvbeX8WnrSA1Yxn5gqQ7FkV96xYjLP228jHhhktSIF
         jc4jI3ltYZ9MobvcgRtcmBhODbGou036n5FWAajLkM1wN9oKMh1nLx1ESNvbVJE3h223
         bh61v3trBENa9J6ZHMjO88eJkAyuD5QCdJR5ivkefJwqLWjXaXElWOLx3P4eul8+H40j
         iNgg==
X-Gm-Message-State: ACrzQf2Q/hQQ/6gBUjt2dkacl48sW5cVtiWsMaPjKDHpcxxJlobht+J2
        jIOObuWDomuio0lStEK90tA=
X-Google-Smtp-Source: AMsMyM54KaP7KM9qbbNFLqrBxuAbO9xe6k8ypMtCUxHa9NwxjOym8HxSylvEvg8cJdy4o7HNXpXw6g==
X-Received: by 2002:a05:600c:310b:b0:3b4:c709:4322 with SMTP id g11-20020a05600c310b00b003b4c7094322mr13975948wmo.141.1665261929718;
        Sat, 08 Oct 2022 13:45:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v12-20020adfe28c000000b0022e51c5222esm5154789wri.86.2022.10.08.13.45.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Oct 2022 13:45:29 -0700 (PDT)
Message-ID: <8706e023-c11e-fa2d-2d14-ab8a8dd0c434@gmail.com>
Date:   Sat, 8 Oct 2022 22:45:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 0/2] Fix typos
To:     =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
 <20221008140514.501942-1-stepnem@smrk.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221008140514.501942-1-stepnem@smrk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ikt9QRHrxyM9IZhbA5XMhOIh"
X-Spam-Status: No, score=-5.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ikt9QRHrxyM9IZhbA5XMhOIh
Content-Type: multipart/mixed; boundary="------------CfXmGymvw07BXu6mN80qtPp3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@smrk.net>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <8706e023-c11e-fa2d-2d14-ab8a8dd0c434@gmail.com>
Subject: Re: [PATCH v1 0/2] Fix typos
References: <a021af5a-7694-b09c-523b-54e758fb2880@gmail.com>
 <20221008140514.501942-1-stepnem@smrk.net>
In-Reply-To: <20221008140514.501942-1-stepnem@smrk.net>

--------------CfXmGymvw07BXu6mN80qtPp3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEwLzgvMjIgMTY6MDUsIMWgdMSbcMOhbiBOxJttZWMgd3JvdGU6DQo+IE9uIFNh
dCwgMDggT2N0IDIwMjIgMDI6MTc6NTYgKzAyMDANCj4gQWxlamFuZHJvIENvbG9tYXIgd3Jv
dGU6DQo+IA0KPj4+IC0tLSBhL21hbjIvcGl2b3Rfcm9vdC4yDQo+Pj4gKysrIGIvbWFuMi9w
aXZvdF9yb290LjINCj4+PiBAQCAtNjAsNyArNjAsNyBAQCBtdXN0IG5vdCBiZSBvbiB0aGUg
c2FtZSBtb3VudCBhcyB0aGUgY3VycmVudCByb290Lg0KPj4+ICAgIC5JUCBcLQ0KPj4+ICAg
IFxmSXB1dF9vbGRcZlAgbXVzdCBiZSBhdCBvciB1bmRlcm5lYXRoIFxmSW5ld19yb290XGZQ
Ow0KPj4+ICAgIHRoYXQgaXMsIGFkZGluZyBzb21lIG5vbm5lZ2F0aXZlDQo+Pj4gLW51bWJl
ciBvZiAiXGZJLy4uXGZQIiBwcmVmaXhlcyB0byB0aGUgcGF0aG5hbWUgcG9pbnRlZCB0byBi
eQ0KPj4+ICtudW1iZXIgb2YgIlxmSS8uLlxmUCIgc3VmZml4ZXMgdG8gdGhlIHBhdGhuYW1l
IHBvaW50ZWQgdG8gYnkNCj4+DQo+PiBJJ2QgbGlrZSB0aGlzIGNoYW5nZSB0byBiZSBzZXBh
cmF0ZSBmcm9tIHRoZSByZXN0LCBhcyBpdCdzIG5vdCBhbg0KPj4gb2J2aW91cyB3cml0aW5n
IHR5cG8sIGJ1dCByYXRoZXIgb25lIHRoYXQgbmVlZHMgdW5kZXJzdGFuZGluZyB0aGUgY29u
dGV4dC4NCj4+DQo+PiBXb3VsZCB5b3UgbWluZCBzcGxpdHRpbmcgaW50byBhIHNlcGFyYXRl
IHBhdGNoPw0KPiANCj4gSGVyZSBpdCBpcy4gKEkgd2FudGVkIHRvIHRlc3QgdGhlIHdhdGVy
cyBvZiBzdWJtaXR0aW5nIGFjY3VtdWxhdGVkDQo+IHRyaXZpYWwgZml4ZXMgYXMgYSBzaW5n
bGUgcGF0Y2gsIGFzIEkgdGhpbmsgaXQgc2F2ZXMgYm90aCBzb21lIGVsZWN0cm9ucw0KPiBh
bmQgdGhlIHJlc291cmNlcyBvZiBldmVyeW9uZSBlbHNlIGludm9sdmVkLikNCg0KRXhjZXB0
IHRoYXQgSSBkb24ndCBhZ3JlZSBvbiB0aGF0IG9uZSBiZWluZyB0aGF0IHRyaXZpYWwgOikN
CkJ1dCB5ZXMsIGlmIHlvdSBmaW5kIG1hbnkgdHJpdmlhbCB0eXBvcywgeW91IGNhbiBmaWxl
IHRoZW0gYXMgYSBzaW5nbGUgDQpwYXRjaC4NCg0KPiANCj4gSSB0b29rIHRoaXMgb3Bwb3J0
dW5pdHkgdG8gc3F1YXNoIGluIGFub3RoZXIgbWlzc2luZyBhcnRpY2xlIHRvIHRoZQ0KPiB0
cml2aWFsIHR5cG8gcGF0Y2ggKDEvMikuDQo+IA0KDQpUaGF0J3MgZmluZS4NClBhdGNoIHNl
dCBhcHBsaWVkLg0KDQpDaGVlcnMsDQpBbGV4DQoNCj4gVGhhbmtzLA0KPiANCj4gICAgxaB0
xJtww6FuDQo+IA0KPiDFoHTEm3DDoW4gTsSbbWVjICgyKToNCj4gICAgbWVtZmRfY3JlYXRl
LjIsIG1sb2NrLjIsIHBvbGwuMiwgc2VsZWN0LjIsIGZvcGVuLjMsIGNhcGFiaWxpdGllcy43
OiB0Zml4DQo+ICAgIHBpdm90X3Jvb3QuMjogRml4IGEgdHlwby90aGlua28NCj4gDQo+ICAg
bWFuMi9tZW1mZF9jcmVhdGUuMiB8IDIgKy0NCj4gICBtYW4yL21sb2NrLjIgICAgICAgIHwg
MiArLQ0KPiAgIG1hbjIvcGl2b3Rfcm9vdC4yICAgfCAyICstDQo+ICAgbWFuMi9wb2xsLjIg
ICAgICAgICB8IDIgKy0NCj4gICBtYW4yL3NlbGVjdC4yICAgICAgIHwgMiArLQ0KPiAgIG1h
bjMvZm9wZW4uMyAgICAgICAgfCAyICstDQo+ICAgbWFuNy9jYXBhYmlsaXRpZXMuNyB8IDQg
KystLQ0KPiAgIDcgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQ0KPiANCj4gDQo+IGJhc2UtY29tbWl0OiBhNGEwNzNhZTc3MzdmYjhmMjBjMzkwYTYw
Yjg1NTVhN2NmZGFjZTk4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------CfXmGymvw07BXu6mN80qtPp3--

--------------ikt9QRHrxyM9IZhbA5XMhOIh
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNB4WAACgkQnowa+77/
2zLQfQ//S9wecL82yqQTqw52AxPy/ZvWmWYBsF0bxPAvWkwr7oWYbefQsbjr3nbD
GGNnIDhe1P66+pSQKByuFjFJyCLGEFkj6JzwRhSBNrlx90uwsB2QygsU7qRtc1di
xj8OhtHNqh/REjahBK5/tF93sNHghmJveSnRob9/y/7ubYpDQ0d1+2aTPiPIeutP
vi3zESlbD4DZFK7sDx47NOBBZX4UqTbCaLeGGZtnnzGbc8Sq+IaE5eM/YtbuxdGM
oFnUpW6FAqWoq2QUmTEBLdKAwFG6t/5TMXqipld+3hbV0E9KILh2MqZpZaaIU2Hq
Z6CJ/l2D43v5kcQE+9YjvW8kET1M4HFpb361RKVGLHL86pzRF5vz0/LBgmgpcqz9
LJ4L3e5ZLiBMl9a9OutYRm8VxEQMK3S3PGGVNckhbSf/WGbkTrtvusVTbAKVbmQ5
wZ+RphBfopiFNRShxbndr674Cqmoue3qUiV/13lQjQ6Wkih/kWXkhbz8gvosdHSO
o+lKS3vliXfEdQxdprnsH4QUZOLYWfAYZBvPSwDIdw/7JPx02J93rHZcNS3QLQJc
3lzNZHla59E+fab50Pv27dvWg3TB24zDYrHyFpMoSPglDNl0LX+zEC4hXpf4zGde
OU7cSORlBYA7djAC9OZn8R5Uy5MQzSAxqqcavurjaSUn02afKgA=
=bW4D
-----END PGP SIGNATURE-----

--------------ikt9QRHrxyM9IZhbA5XMhOIh--
