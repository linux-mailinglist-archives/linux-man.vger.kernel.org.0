Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E51165F7EC
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 00:55:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232516AbjAEXzv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 18:55:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235440AbjAEXzu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 18:55:50 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF60834D5E
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 15:55:44 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id g10so82533wmo.1
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 15:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMHF9R/rrEg9/ryR5jKylue/7Os8GxoIYYh4Sj7RMGI=;
        b=kTIlHdBl5WXuKeGgqgY1wkzgQL0p8NVmTlyHYidg6bSWjZiPcwrzG1JR+c72txkwyF
         GTMyFQpYye3o/HSrM2tovqQxPZAcB/z7WDOg5jzJ3g8H6pDexLS0Gozgd4wjH4+RvcxR
         WzmUaWhq6YJ+pFIkN+vES0pFQdp9H/3P+QO6olMlrGSxvNBJXaC/QbB2sGDZxjiIFaaY
         pc4mliUmQID5Qx7C9hC0IXkB/J/b+NGzu+dywKKWR+lZzmJmGM5crpzjzJ7rDh1IZOwU
         r/eTsbAhtEqsVov05Pkm/4k5xvV0y4D9tVEJDvbB6knJvRW6B8Ge9hng0MBQ8EjNtzzH
         l0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xMHF9R/rrEg9/ryR5jKylue/7Os8GxoIYYh4Sj7RMGI=;
        b=NgJM6IduMCWFNpN+0Oc5/7dUmnG2e8uGzaCVMu96R8MJgcI/303cwJw2RygVn7Ki9F
         4hIiqjALQXZEXzV41BNVK+Eu3cx5mA/aTP3xjr2ZQX7uw4JQbwQ+VU6VP40cr5l1NFSG
         sQf0zSzbaat8m2201zyzBdiAZ/aFthxh7LpY4Az+NAbJot+b0BB2jbz3QFk7JMnNof3V
         xG3E9b/wHl0dvA7y94tlstW+3SjR9hHsBTfsPk7LnLjY/CFma+Xr39il0Zu41o0zHwW9
         8EBRbDhMgda6xCR6lV9D+wJF3S8csj8qT4/lOAK1XlBGmSQmGDzYgb4gqW60Vc+RKJsE
         em/g==
X-Gm-Message-State: AFqh2kp7CtoG+7xwI0xQ80drfby0tSigddoS1zS4XJsfL+sw17288CiT
        MLqBCl5bHvo+biamvkb7tD4=
X-Google-Smtp-Source: AMrXdXt3h4tNb6WuWIriTONpSJZ9pxj1ngcBuZuCo+IPh67dOUElzls2mm+CkAGKcnf6tubO9ODaxw==
X-Received: by 2002:a05:600c:35c7:b0:3d3:5d0f:6dfc with SMTP id r7-20020a05600c35c700b003d35d0f6dfcmr37101823wmq.30.1672962943476;
        Thu, 05 Jan 2023 15:55:43 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i3-20020a1c5403000000b003d35c09d4b9sm4273146wmb.40.2023.01.05.15.55.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 15:55:42 -0800 (PST)
Message-ID: <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
Date:   Fri, 6 Jan 2023 00:55:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 10/13] intro.3: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230105225328.tutvqrvewd6knewc@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230105225328.tutvqrvewd6knewc@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------jWMLP67lBruRg405LM5nfp0B"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------jWMLP67lBruRg405LM5nfp0B
Content-Type: multipart/mixed; boundary="------------0rD0Y40N6U1fXmUXQbQ0w8CU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <7cac58e5-19bf-de63-7bc7-2ef22ee6f6f9@gmail.com>
Subject: Re: [PATCH v3 10/13] intro.3: srcfix
References: <20230105225328.tutvqrvewd6knewc@illithid>
In-Reply-To: <20230105225328.tutvqrvewd6knewc@illithid>

--------------0rD0Y40N6U1fXmUXQbQ0w8CU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS81LzIzIDIzOjUzLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiAqIEJyZWFrIGlucHV0IGxpbmVzIGF0IHBocmFzZSBib3VuZGFyaWVzIG1vcmUg
b2Z0ZW4uDQo+ICogQnJlYWsgaW5wdXQgbGluZXMgYWZ0ZXIgY29tbWFzLg0KPiAqIFNldCBt
dWx0aS13b3JkIHBhcmVudGhldGljYWxzIG9uIHRoZWlyIG93biBpbnB1dCBsaW5lcy4NCj4g
KiBQcm90ZWN0IG1hbiBwYWdlIGNyb3NzIHJlZmVyZW5jZSBmcm9tIGh5cGhlbmF0aW9uLiAg
KFRoaXMgd2lsbCBub3QgYmUNCj4gICAgbmVjZXNzYXJ5IHVwb24gbWlncmF0aW9uIHRvIGdy
b2ZmIDEuMjMncyBgTVJgIG1hY3JvLikNCg0KSSBwbGFuIHRvIG1pZ3JhdGUgYXMgc29vbiBh
cyBpdCBpcyBpbiBEZWJpYW4sIHNvIG1heWJlIGl0J3Mgbm90IHdvcnRoIGRvaW5nIHRoYXQu
DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBHLiBCcmFuZGVu
IFJvYmluc29uIDxnLmJyYW5kZW4ucm9iaW5zb25AZ21haWwuY29tPg0KPiAtLS0NCj4gICBt
YW4zL2ludHJvLjMgfCA0NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCAxNiBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL2ludHJvLjMgYi9tYW4zL2ludHJv
LjMNCj4gaW5kZXggZTg1YzA2NzdhLi4zYmY1MDM1Y2YgMTAwNjQ0DQo+IC0tLSBhL21hbjMv
aW50cm8uMw0KPiArKysgYi9tYW4zL2ludHJvLjMNCj4gQEAgLTcsMjAgKzcsMjMgQEANCj4g
ICAuU0ggTkFNRQ0KPiAgIGludHJvIFwtIGludHJvZHVjdGlvbiB0byBsaWJyYXJ5IGZ1bmN0
aW9ucw0KPiAgIC5TSCBERVNDUklQVElPTg0KPiAtU2VjdGlvbiAzIG9mIHRoZSBtYW51YWwg
ZGVzY3JpYmVzIGFsbCBsaWJyYXJ5IGZ1bmN0aW9ucyBleGNsdWRpbmcgdGhlIGxpYnJhcnkN
Cj4gLWZ1bmN0aW9ucyAoc3lzdGVtIGNhbGwgd3JhcHBlcnMpIGRlc2NyaWJlZCBpbiBTZWN0
aW9uIDIsDQo+ICtTZWN0aW9uIDMgb2YgdGhlIG1hbnVhbCBkZXNjcmliZXMgYWxsIGxpYnJh
cnkgZnVuY3Rpb25zDQo+ICtleGNsdWRpbmcgdGhlIGxpYnJhcnkgZnVuY3Rpb25zDQo+ICso
c3lzdGVtIGNhbGwgd3JhcHBlcnMpDQo+ICtkZXNjcmliZWQgaW4gU2VjdGlvbiAyLA0KPiAg
IHdoaWNoIGltcGxlbWVudCBzeXN0ZW0gY2FsbHMuDQo+ICAgLlBQDQo+ICAgTWFueSBvZiB0
aGUgZnVuY3Rpb25zIGRlc2NyaWJlZCBpbiB0aGUgc2VjdGlvbiBhcmUgcGFydCBvZiB0aGUN
Cj4gICBTdGFuZGFyZCBDIExpYnJhcnkNCj4gICAuUkkgKCBsaWJjICkuDQo+IC1Tb21lIGZ1
bmN0aW9ucyBhcmUgcGFydCBvZiBvdGhlciBsaWJyYXJpZXMgKGUuZy4sDQo+ICtTb21lIGZ1
bmN0aW9ucyBhcmUgcGFydCBvZiBvdGhlciBsaWJyYXJpZXMNCj4gKyhlLmcuLA0KPiAgIHRo
ZSBtYXRoIGxpYnJhcnksDQo+ICAgLklSIGxpYm0gLA0KPiAgIG9yIHRoZSByZWFsLXRpbWUg
bGlicmFyeSwNCj4gICAuSVIgbGlicnQgKQ0KPiAtaW4gd2hpY2ggY2FzZSB0aGUgbWFudWFs
IHBhZ2Ugd2lsbCBpbmRpY2F0ZSB0aGUgbGlua2VyDQo+IC1vcHRpb24gbmVlZGVkIHRvIGxp
bmsgYWdhaW5zdCB0aGUgcmVxdWlyZWQgbGlicmFyeQ0KPiAraW4gd2hpY2ggY2FzZSB0aGUg
bWFudWFsIHBhZ2Ugd2lsbCBpbmRpY2F0ZQ0KPiArdGhlIGxpbmtlciBvcHRpb24gbmVlZGVk
IHRvIGxpbmsgYWdhaW5zdCB0aGUgcmVxdWlyZWQgbGlicmFyeQ0KPiAgIChlLmcuLA0KPiAg
IC5JIFwtbG0NCj4gICBhbmQNCj4gQEAgLTMyLDE5ICszNSwyNCBAQCBJbiBzb21lIGNhc2Vz
LA0KPiAgIHRoZSBwcm9ncmFtbWVyIG11c3QgZGVmaW5lIGEgZmVhdHVyZSB0ZXN0IG1hY3Jv
IGluIG9yZGVyIHRvIG9idGFpbg0KPiAgIHRoZSBkZWNsYXJhdGlvbiBvZiBhIGZ1bmN0aW9u
IGZyb20gdGhlIGhlYWRlciBmaWxlIHNwZWNpZmllZA0KPiAgIGluIHRoZSBtYW4gcGFnZSBT
WU5PUFNJUyBzZWN0aW9uLg0KPiAtKFdoZXJlIHJlcXVpcmVkLCB0aGVzZSBmZWF0dXJlIHRl
c3QgbWFjcm9zIG11c3QgYmUgZGVmaW5lZCBiZWZvcmUgaW5jbHVkaW5nDQo+ICsoV2hlcmUg
cmVxdWlyZWQsDQo+ICt0aGVzZSBmZWF0dXJlIHRlc3QgbWFjcm9zIG11c3QgYmUgZGVmaW5l
ZCBiZWZvcmUgaW5jbHVkaW5nDQo+ICAgLkkgYW55DQo+ICAgaGVhZGVyIGZpbGVzLikNCj4g
LUluIHN1Y2ggY2FzZXMsIHRoZSByZXF1aXJlZCBtYWNybyBpcyBkZXNjcmliZWQgaW4gdGhl
IG1hbiBwYWdlLg0KPiAtRm9yIGZ1cnRoZXIgaW5mb3JtYXRpb24gb24gZmVhdHVyZSB0ZXN0
IG1hY3Jvcywgc2VlDQo+IC0uQlIgZmVhdHVyZV90ZXN0X21hY3JvcyAoNykuDQo+ICtJbiBz
dWNoIGNhc2VzLA0KPiArdGhlIHJlcXVpcmVkIG1hY3JvIGlzIGRlc2NyaWJlZCBpbiB0aGUg
bWFuIHBhZ2UuDQo+ICtGb3IgZnVydGhlciBpbmZvcm1hdGlvbiBvbiBmZWF0dXJlIHRlc3Qg
bWFjcm9zLA0KPiArc2VlDQo+ICsuQlIgXCVmZWF0dXJlX3Rlc3RfbWFjcm9zICg3KS4NCj4g
ICAuXCINCj4gICAuXCIgVGhlcmUNCj4gICAuXCIgYXJlIHZhcmlvdXMgZnVuY3Rpb24gZ3Jv
dXBzIHdoaWNoIGNhbiBiZSBpZGVudGlmaWVkIGJ5IGEgbGV0dGVyIHdoaWNoDQo+ICAgLlwi
IGlzIGFwcGVuZGVkIHRvIHRoZSBjaGFwdGVyIG51bWJlcjoNCj4gICAuXCIgLklQICgzQykN
Cj4gLS5cIiBUaGVzZSBmdW5jdGlvbnMsIHRoZSBmdW5jdGlvbnMgZnJvbSBjaGFwdGVyIDIg
YW5kIGZyb20gY2hhcHRlciAzUyBhcmUNCj4gLS5cIiBjb250YWluZWQgaW4gdGhlIEMgc3Rh
bmRhcmQgbGlicmFyeSBsaWJjLCB3aGljaCB3aWxsIGJlIHVzZWQgYnkNCj4gKy5cIiBUaGVz
ZSBmdW5jdGlvbnMsDQo+ICsuXCIgdGhlIGZ1bmN0aW9ucyBmcm9tIGNoYXB0ZXIgMiBhbmQg
ZnJvbSBjaGFwdGVyIDNTIGFyZQ0KPiArLlwiIGNvbnRhaW5lZCBpbiB0aGUgQyBzdGFuZGFy
ZCBsaWJyYXJ5IGxpYmMsDQo+ICsuXCIgd2hpY2ggd2lsbCBiZSB1c2VkIGJ5DQo+ICAgLlwi
IC5CUiBjYyAoMSkNCj4gICAuXCIgYnkgZGVmYXVsdC4NCj4gICAuXCIgLklQICgzUykNCj4g
QEAgLTU1LDkgKzYzLDExIEBAIEZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGZlYXR1cmUg
dGVzdCBtYWNyb3MsIHNlZQ0KPiAgIC5cIiBUaGVzZSBmdW5jdGlvbnMgYXJlIGNvbnRhaW5l
ZCBpbiB0aGUgYXJpdGhtZXRpYyBsaWJyYXJ5IGxpYm0uICBUaGV5IGFyZQ0KPiAgIC5cIiB1
c2VkIGJ5IHRoZQ0KPiAgIC5cIiAuQlIgZjc3ICgxKQ0KPiAtLlwiIEZPUlRSQU4gY29tcGls
ZXIgYnkgZGVmYXVsdCwgYnV0IG5vdCBieSB0aGUNCj4gKy5cIiBGT1JUUkFOIGNvbXBpbGVy
IGJ5IGRlZmF1bHQsDQo+ICsuXCIgYnV0IG5vdCBieSB0aGUNCj4gICAuXCIgLkJSIGNjICgx
KQ0KPiAtLlwiIEMgY29tcGlsZXIsIHdoaWNoIG5lZWRzIHRoZSBvcHRpb24gXGZJXC1sbVxm
UC4NCj4gKy5cIiBDIGNvbXBpbGVyLA0KPiArLlwiIHdoaWNoIG5lZWRzIHRoZSBvcHRpb24g
XGZJXC1sbVxmUC4NCj4gICAuXCIgLklQICgzRikNCj4gICAuXCIgVGhlc2UgZnVuY3Rpb25z
IGFyZSBwYXJ0IG9mIHRoZSBGT1JUUkFOIGxpYnJhcnkgbGliRjc3LiAgVGhlcmUgYXJlIG5v
DQo+ICAgLlwiIHNwZWNpYWwgY29tcGlsZXIgZmxhZ3MgbmVlZGVkIHRvIHVzZSB0aGVzZSBm
dW5jdGlvbnMuDQo+IEBAIC03Niw3ICs4Niw5IEBAIGFuZCBpdHMgbWFueSBpbXBsZW1lbnRh
dGlvbnM6DQo+ICAgM3R5cGUNCj4gICAuUFANCj4gICBUaGlzIGRpZmZpY3VsdCBoaXN0b3J5
IGZyZXF1ZW50bHkgbWFrZXMgaXQgYSBwb29yIGV4YW1wbGUgdG8gZm9sbG93DQo+IC1pbiBk
ZXNpZ24sIGltcGxlbWVudGF0aW9uLCBhbmQgcHJlc2VudGF0aW9uLg0KPiAraW4gZGVzaWdu
LA0KPiAraW1wbGVtZW50YXRpb24sDQo+ICthbmQgcHJlc2VudGF0aW9uLg0KPiAgIC5QUA0K
PiAgIElkZWFsbHksDQo+ICAgYSBsaWJyYXJ5IGZvciB0aGUgQyBsYW5ndWFnZQ0KPiBAQCAt
MTAyLDggKzExNCw4IEBAIFNlZQ0KPiAgIC5CUiBzdGFuZGFyZHMgKDcpLg0KPiAgIC5TSCBO
T1RFUw0KPiAgIC5TUyBBdXRob3JzIGFuZCBjb3B5cmlnaHQgY29uZGl0aW9ucw0KPiAtTG9v
ayBhdCB0aGUgaGVhZGVyIG9mIHRoZSBtYW51YWwgcGFnZSBzb3VyY2UgZm9yIHRoZSBhdXRo
b3IocykgYW5kIGNvcHlyaWdodA0KPiAtY29uZGl0aW9ucy4NCj4gK0xvb2sgYXQgdGhlIGhl
YWRlciBvZiB0aGUgbWFudWFsIHBhZ2Ugc291cmNlDQo+ICtmb3IgdGhlIGF1dGhvcihzKSBh
bmQgY29weXJpZ2h0IGNvbmRpdGlvbnMuDQo+ICAgTm90ZSB0aGF0IHRoZXNlIGNhbiBiZSBk
aWZmZXJlbnQgZnJvbSBwYWdlIHRvIHBhZ2UhDQo+ICAgLlNIIFNFRSBBTFNPDQo+ICAgLkJS
IGludHJvICgyKSwNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------0rD0Y40N6U1fXmUXQbQ0w8CU--

--------------jWMLP67lBruRg405LM5nfp0B
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3Y30ACgkQnowa+77/
2zIClw/+I6pQPJlfz5msUi9Zmnh3jt3BYY8/j4s4Lx7lMNbitjiHZfybjv8tp1Uf
tOSB4SyudB93z/g0wga/KqAUPHb0iXCixQWWG1TCbrC131T0Fe+QCZxrhLBI2wik
2klCwKAcb+rZ64xrXe6feBl4p/xZrFSDW+qjSPLx2zoT5cpGV5T2ntc4+B83QT4v
CJ+JdZbQPlLv0S9k2slM8FxFS0ylfg/0/VCD3GQx8Mz/jUd4dWAEsuoB+ej6H+J7
6xEZbVZ7CIb7obOYFu40sd69vzMqAwAjYt0erJSQ0e72rhpYNUlJ8Vh+Z8BpGh75
pvqXzqjYug9FzbhKaMLXEWg7jM2QUxwGWTDqk79Grqr41jQOhsbz/JH8jIl0TSSQ
y7TzHJtI2Q8DnKBPxc0qZ63D6awLlAN3L0xEog8P+v302zNT2LseBjKvadcNUOLk
lOLK73HY9WLk18isjELw/PTU2VpB3UAQSCkK1C9YgK5erYfmX7bZJtGxmZTpcIZL
0GzO1Yfxv+BLIk6L/CfV7litUfwZ8RuFBMcnRfJhkvkl4zI2NO1sQSpUzAmOB40/
XGa1YlUDftT3+6bJzzs1n1AvFobXzy87uk31RBMu/tocn/ltgCW32AMavrzoh+cD
tTOj/NY5twja0sCUcImyGXBDKlvR+TGlODAFvsPkJriN/n/UxxM=
=DUUD
-----END PGP SIGNATURE-----

--------------jWMLP67lBruRg405LM5nfp0B--
