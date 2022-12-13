Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71C6A64BF9D
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 23:46:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236509AbiLMWqd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 17:46:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236303AbiLMWqc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 17:46:32 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BFA621274
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 14:46:31 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id co23so17453245wrb.4
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 14:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OkRgz2lS+feepc2vjG5tlpWPf9Kyx1X3uAVScd10gYo=;
        b=jn+96HbTHoZBQX7gVVI4ri0uVSKHhcRcTFhFu2XbaA1+JYZlzd6DXci6AoGASDEoCN
         w1I6ggRTOzMUKQjKB+pnOetINgWFFl4jXXy4zb69UnXBkO5HKnM+r8iC89Fj+U4ALTzW
         VFTGBj3kdhSUEgSzveA2417H4B4YYbJZ1HBRTiU6z9MQ7xyJCrlNbQXPlVZ0Xs6eIlZe
         +HVk2CXi8kLCMC9KnSOYiRaEfz1A1mjMMZqv15+sYfR6gyMsgkwJZOjIadYpKdxyoQCB
         3vIoRGBgfjZXsMzj1i0CPz2u/bDvC+IWj8tnq96GW0q60Me/3ks3BkMcZgr63zWKOAte
         jw1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OkRgz2lS+feepc2vjG5tlpWPf9Kyx1X3uAVScd10gYo=;
        b=k8P8kTsTmOs7dXECD3D5tYZxIxZbWQheyBxmXZKzkXhzYozNvI30zDO9YQhf8M98/Y
         ECOJ3yVRw36SLhI1mmPQPnU8zO5goV+1MCNeSPTtkK7Ilxw8iqL97zuDzQtNTd0ERI3z
         TqRs8HAuGcKHJro0IQNBF6k3U7qN3iuGd9MsmdxeS0nlsdQ6edJP9rCmUCWfbVYLV7oy
         QU6YVKnqFqgMxWzmNKfZTxumPK0qfOV8kTsJqoTJCE/blWHmDFBA3jHJnRA67c2pcc+f
         o7Ujk9KHlv2+NJL1ptFjDsghbJMtCoi04jhi8KgbMLLV5PKT5d3f8TRUmlXGdfKMhNDq
         5GaA==
X-Gm-Message-State: ANoB5plzhy/gWkcw+J+eWoq5H7cJHH1ra9OOk5h4CVnSxRQ7v30Fey4f
        0wq+zkUo2H8OVlz3ynujRl4=
X-Google-Smtp-Source: AA0mqf4a+QnnAjdIAoQ3D43tw29XC9wj+32EJ5OqgEEKmz0Pzs92A0NWnYcIW/YkQB8tTdVSj1cD2g==
X-Received: by 2002:a5d:4208:0:b0:242:1809:7e13 with SMTP id n8-20020a5d4208000000b0024218097e13mr13624159wrq.11.1670971589783;
        Tue, 13 Dec 2022 14:46:29 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b2-20020adff902000000b002366e3f1497sm1099013wrr.6.2022.12.13.14.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 14:46:29 -0800 (PST)
Message-ID: <6096958b-184c-948e-2c15-9b97954f81aa@gmail.com>
Date:   Tue, 13 Dec 2022 23:46:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
 <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
 <d2bef19a-5181-5852-2d14-e8a96600778d@gmail.com>
In-Reply-To: <d2bef19a-5181-5852-2d14-e8a96600778d@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uf4KztDRyA0GDrZKENmG9150"
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
--------------uf4KztDRyA0GDrZKENmG9150
Content-Type: multipart/mixed; boundary="------------FizwZAhsjzIRfnR0Z0qD3X0p";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>
Message-ID: <6096958b-184c-948e-2c15-9b97954f81aa@gmail.com>
Subject: Re: [PATCH v2 0/3] Rewrite strcpy(3)
References: <20221212142418.27615-1-alx@kernel.org>
 <20221212230044.86105-1-alx@kernel.org>
 <20221213205634.fvqbvyjxqrnxdatd@jwilk.net>
 <d2bef19a-5181-5852-2d14-e8a96600778d@gmail.com>
In-Reply-To: <d2bef19a-5181-5852-2d14-e8a96600778d@gmail.com>

--------------FizwZAhsjzIRfnR0Z0qD3X0p
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzEzLzIyIDIzOjA1LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
SmFrdWIsDQo+IA0KPiBPbiAxMi8xMy8yMiAyMTo1NiwgSmFrdWIgV2lsayB3cm90ZToNCj4+
IFRoZSBzaGVlciBzaXplIG9mIHRoaXMgcGFnZSBtYWtlIGl0IGFsbW9zdCB1bnVzYWJsZSBm
b3IgbWUuDQoNCk1vcmVvdmVyLCBJJ2QgbGlrZSB0byBhc2ssIHdoYXQncyB5b3VyIHVzZSBj
YXNlIGZvciB0aGVzZSAoc3RyaW5nIGNvcHkpIHBhZ2VzPyANCkFuZCBob3cgYW0gSSBpbXBl
ZGluZyBpdD8NCg0KLSAgc3RwY3B5KDMpDQotICBzdHJjcHkoMykNCi0gIHN0cmNhdCgzKQ0K
DQotICBzdHBuY3B5KDMpDQotICBzdHJuY3B5KDMpDQoNCi0gIHN0cm5jYXQoMykNCg0KDQpF
eGNlcHQgZm9yIHRoZSBsYXN0IG9uZSwgdGhleSBhcmUgc28gc2ltcGxlIGluIHRlcm1zIG9m
IHRoZSBieXRlIG9wZXJhdGlvbiB0aGF0IA0KdGhleSBwZXJmb3JtLCBvciB0aGUgcmV0dXJu
IHZhbHVlLCB0aGF0IHRoZSBwYWdlcyBhcmUgdXNlbGVzcy4gIE9uY2UgeW91IGtub3cgDQp3
aGF0IHRoZXkgZG8sIHlvdSBkb24ndCBmb3JnZXQgKGFuZCBJIGJldCB5b3Uga25vdyB3aGF0
IHRoZXkgZG8pLiAgQW5kIGV2ZW4gDQpzdHJuY2F0KDMpIGlzIHNpbXBsZSwgd2hlbiB5b3Ug
dW5kZXJzdGFuZCBpdC4NCg0KDQpUaGUgcmV0dXJuIHZhbHVlIGlzIHNpbXBsZTogICdyJyBm
dW5jdGlvbnMgcmV0dXJuIGRzdC4gICdwJyBmdW5jdGlvbnMgcmV0dXJuIGEgDQpwb2ludGVy
IHBhc3QgdGhlIGxhc3Qgbm9uLW51bGwgY2hhcmFjdGVyIHdyaXR0ZW4uDQoNClRoZSBvcGVy
YXRpb24gb2YgJ2NhdCcgZnVuY3Rpb25zIGlzIHNpbXBsZTogIHN0cmxlbihkc3QpLCBhbmQg
YXBwZW5kIGEgc3RyaW5nIHRoZXJlLg0KDQpUaGUgb3BlcmF0aW9uIG9mICdzdC5jcHknIGZ1
bmN0aW9ucyBpcyBldmVuIHNpbXBsZXI6IHJlYWQgYSBzdHJpbmcsIGFuZCBjb3B5IGl0IA0K
YXQgZHN0Lg0KDQpUaGUgb3BlcmF0aW9uIG9mIHN0Lm5jcHkoMykgaXMgc2xpZ2h0bHkgbGVz
cyBpbnR1aXRpdmUgKHByb2JhYmx5IGR1ZSB0byANCm1pc2Rlc2lnbiwgdGhlIG5hbWUgZG9l
c24ndCBtYXRjaCB3aGF0IHRoZXkgZG8pOiByZWFkIGEgc3RyaW5nLCBhbmQgY29weSBpdCB3
aXRoIA0KdHJ1bmNhdGlvbiBpbnRvIGEgbnVsbC1wYWRkZWQgY2hhcmFjdGVyIHNlcXVlbmNl
IGluIGEgZml4ZWQtd2lkdGggYXJyYXkuDQoNCnN0cm5jYXQoMykgaXMgdGhlIG1vc3QgbWlz
ZGVzaWduZWQgb2YgYWxsOiAgaXQgcmVhZHMgYSBjaGFyYWN0ZXIgc2VxdWVuY2UgZnJvbSBh
IA0KbnVsbC1wYWRkZWQgZml4ZWQtd2lkdGggYXJyYXksIGFuZCBjcmVhdGVzIGEgc3RyaW5n
IG91dCBvZiBpdC4NCg0KDQpUaGF0IGNvdmVycyBpdCBhbGwuICBJZiBJIHdlcmUgdG8gcHV0
IHRob3NlIHBhcmFncmFwaHMgaW4gYSBzZXBhcmF0ZSBwYWdlIGZvciANCmVhY2ggZnVuY3Rp
b24sIHdoYXQgZ29vZCB3b3VsZCB0aGV5IGRvPw0KDQoNClNvLCB0aGUgcGFnZXMgYXJlIG5v
dCB2ZXJ5IGluZm9ybWF0aXZlIGZvciB0aG9zZSB3aG8gYWxyZWFkeSBrbm93LiAgQW5kIGZv
ciANCnRob3NlIHdobyBkb24ndCBrbm93LCBJIHZlcnkgbXVjaCBwcmVmZXIgdGhhdCB0aGV5
IHJlYWQgdGhlIGVudGlyZSBwYWdlLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KDQoNCj4+IFBs
ZWFzZSBkb24ndCBtZXJnZSBpdC4NCj4+DQo+PiAqIEFsZWphbmRybyBDb2xvbWFyIDxhbHgu
bWFucGFnZXNAZ21haWwuY29tPiwgMjAyMi0xMi0xMyAwMDowMDoNCj4+PiDCoMKgwqDCoMKg
IHN0cGVjcHkoMyksIHN0cGVjcHl4KDMpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IE5vdCBwcm92aWRlZCBieSBhbnkgbGlicmFyeS4NCj4+DQo+PiBUaGVuIHRoZXkgZG9uJ3Qg
YmVsb25nIGluIHRoZSBtYW4tcGFnZXMgcHJvamVjdC4NCj4+DQo+Pj4gwqDCoMKgwqDCoCBz
dHJzY3B5KDMpDQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE5vdCBwcm92aWRlZCBi
eSBhbnkgbGlicmFyeS7CoCBJdMKgIGlzwqAgYcKgIExpbnV4wqAga2VybmVswqAgaW50ZXJu
YWwNCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnVuY3Rpb24uDQo+Pg0KPj4gRGl0
dG8uDQo+IA0KPiBBbmQgc3RyaWN0bHkgc3BlYWtpbmcsIEkgc2hvdWxkbid0IGRvY3VtZW50
IHN0cmxjcHkoM2JzZCkgYW5kIHN0cmxjYXQoM2JzZCkgDQo+IGVpdGhlciBiZWNhdXNlIHRo
ZXkncmUgbm90IHByb3ZpZGVkIGJ5IG91ciBsaWJjOyBsaWJic2QgYWxyZWFkeSBoYXMgbWFu
dWFsIHBhZ2VzIA0KPiBmb3IgdGhlbSwgYW55d2F5Lg0KPiANCj4gUmVnYXJkaW5nIHRoaXMs
IHRoZSBpbnRlbnRpb24gb2YgdGhlIHBhZ2UgaXMgbm90IHRvIGNvbGRseSBkb2N1bWVudCB0
aGUgYmVoYXZpb3IgDQo+IG9mIGZ1bmN0aW9ucyBpbiB0ZXJtcyBvZiB0aGUgYnl0ZSBvcGVy
YXRpb25zIHRoZXkgcGVyZm9ybS7CoCBUaGF0J3Mgd2hhdCBoYXMgYmVlbiANCj4gZG9uZSB1
bnRpbCBub3csIGFuZCB0aGUgcmVzdWx0IGlzIHdoYXQgd2Uga25vdzogbWFueSBzdHJpbmcg
Y29weSBmdW5jdGlvbnMgYXJlIA0KPiBkcmVhZGVkIChlLmcuLCBzdHJuY3B5KDMpKSwgYmVj
YXVzZSBtb3N0IHByb2dyYW1tZXJzIGRvbid0IHVzZSB0aGVtIGNvcnJlY3RseS4NCj4gDQo+
IFRoaXMgbmV3IHBhZ2UgaW5zdGVhZCwgc2hvd3MgYWxsIHN0cmluZyBjb3B5aW5nIGZ1bmN0
aW9ucywgaW5jbHVkaW5nIHRob3NlIA0KPiBkZXZlbG9wZWQgYnkgb3RoZXIgc3lzdGVtcyBh
cyBhbHRlcm5hdGl2ZXMgdG8gdGhlIHN0YW5kYXJkIG9uZXMuwqAgVGhleSBkaWQgaXQgDQo+
IGZvciBhIHJlYXNvbjogdGhlIHN0YW5kYXJkIGZ1bmN0aW9ucyBkb24ndCBjb3ZlciBhbGwg
dXNlIGNhc2VzLCBhbmQgdGhlcmUncyBhIA0KPiBuZWVkIHRvIHJvbGwgeW91ciBvd24uwqAg
QnV0IHJvbGxpbmcgeW91ciBvd24gaXMgYmFkLsKgIEl0J3MgYmV0dGVyIGlmIHNvbWVvbmUg
DQo+IGV4cGxhaW5zIHdoYXQgYWx0ZXJuYXRpdmUgc3RyaW5nIGNvcHkgZnVuY3Rpb25zIGV4
aXN0LCB3aGVuIHRoZXkgYXJlIG1vcmUgDQo+IGFwcHJvcHJpYXRlIHRoYW4gbGliYyBvbmVz
LCBhbmQgd2hlbiB0aGV5IGFyZSBub3QuwqAgRXZlbiB0aGUgb2xkIHBhZ2VzIA0KPiBkb2N1
bWVudGVkIHN0cmxjcHkoMykgYSBsaXR0bGUgYml0IQ0KPiANCj4gSSBzdWdnZXN0IGZvciBh
IGZpcnN0IHJlbGVhc2UgdXNpbmcgdGhlIG5ldyBwYWdlIHN0cmluZ19jb3B5KDcpLsKgIEkn
bGwgcmV3cml0ZSANCj4gYW55d2F5IHN0cmNweSgzKSBhbmQgYWxsIG90aGVycyB0byBiZSBt
aW5pbWFsLCBfYW5kXyBiZSByZWR1Y3Rpb25zIG9mIA0KPiBzdHJpbmdfY29weSg3KSwgZm9y
IGZhc3QgbG9va3VwLg0KPiANCj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCj4gDQo+IA0K
DQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------FizwZAhsjzIRfnR0Z0qD3X0p--

--------------uf4KztDRyA0GDrZKENmG9150
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZALAACgkQnowa+77/
2zL6Pg/6A7lwzpS/MVmFQ/7nOHEPFkUZ4EzzXcKBHq/qQIjbuCX5tPhlfcJDc3ae
k667CWICrHEwKS2hfdQXDdj9MCaulxoMRtw5VyTbPdYQMLm3bMFG4xRLFXPWR6Ec
LfEBBQeDFEApKWwO/798DX/9Je+gNdaDPLdet+ArLnKZ9Jc4xd5UQl9vdOZ4ndT4
HFFiY5OSCCdm4/MEeKT44Hrghwk8JG3JSYpHsp+OAa12Bj8rJWM5Vqx2FFe87X/Q
Yq0+1KaKSYZjZRpg07AoGCZoQncUu0rZ+kbeuftVyWxVC/Z4mPtXgbZ5K2NGhmu7
Ume7yoZxy5o+u92aRlO0jZjrg22q3QzNZXqFu8Y/1M3ca9kFDL3dZVnXuivajjk2
Kx/u6WYfNQQ+fciyzIrpyOf9gww8404d/J6JKI7ngsTNXXcK2y17sXoZIrFzO2Ml
fiCSOllF0yGVykaf0CKlvPHriWxPxVrokJDd57XFPvz1U4GgeEIB1isz+vUT7D3X
9wwaAN/Tud5vXZDa7Uxfril1QJCHPupMfDvyrGXqYqA3CJcePJTxbLr5LKmHdG4o
QTSMqlBlVqzqm0998XOpCyb8ZyOJ9y8tG5WVe6dFF3N8fUkyhPqx28F7AjlLctCp
wb+Zfgo04EZ+17mw93/1gHu7O8jIJ3CgR3e0q9FBaPuphfn9wQM=
=c/k5
-----END PGP SIGNATURE-----

--------------uf4KztDRyA0GDrZKENmG9150--
