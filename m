Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08F5C64CE27
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 17:37:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237808AbiLNQg4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 11:36:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237972AbiLNQgz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 11:36:55 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59A155FD4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 08:36:54 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id ja17so8831274wmb.3
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 08:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0jkVdmczLvzdjY/FiS7JV9mV8ytpMx03s5Su9SuQ4tc=;
        b=fxVA5J7ITiokDP66S43TrONE69jHZhX56BGQswT/JquimpkodrQCgO1AwjOJxsxGlU
         chftyjgDrgEbqnWc3EDvL7Sfw8qKJsA15VugdBj266ggzWywEVLZGphjIV+0E9h7y+VT
         GMVpa+fRmrbmp7WYYwbal/3pGSAQxS0DVehRBGTv1nj9zliBrVCHp3A2Yu59tpGwg6/T
         p6Bpvm48K/0m4e+TSzeCh+Jc6SS7D35hA+MwLHUsuWTKUVtJOXBA6BF6a3hB5JHLveNK
         sPVwJDMYx5qnwJsG7WFCardCc2/jgwVtj1qcU4vCP2/CJ/gC8oNw/VXI5b9qtiEVZRiB
         +XqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0jkVdmczLvzdjY/FiS7JV9mV8ytpMx03s5Su9SuQ4tc=;
        b=nDOwMHMpamkOoQQLHMiS6yYlRVARXeXptR/QkK3oVCb9d0kPiVVmkiOvV5H1pg26l1
         0UgXdHJ0ohKnWC81Dz8dwKCk8TLaQLkGmNnbxXhYp77/8QjRRYfQ8ZMKvvPi7HwqOCNB
         wabzGZWruSs84lfzMwdTnGs873398x86zjcz2Yj1iH9757d7ujcc5BqXb18l3uZ3OaM2
         MuBWuQr5+JD4uKQpFq/x4w3ZOVJGJ3B3MM5F069ULLLDc4SWwXEA1qUxosawIwDg6NQo
         gBkyKNwhH/Fmve32XttxpUvz9hLKh+f1MM4pOt1zcJDZGakOWzYSBNv/AMafoNo4SZTL
         fC0w==
X-Gm-Message-State: ANoB5plvHS9O9qYgailxwjbuP8uI303n0JiZ74bNlL5fv1iqSGFkkqz2
        7RuQxJj/jubbF0gvM2mXQjw=
X-Google-Smtp-Source: AA0mqf68dP9l709YgbKmr/xydFomya75yJm4pknOtLdYDpK4aA8GhLORx3TXVhdEcOZbGwcYaZQxkQ==
X-Received: by 2002:a05:600c:4fc8:b0:3cf:614e:b587 with SMTP id o8-20020a05600c4fc800b003cf614eb587mr19602490wmq.26.1671035812505;
        Wed, 14 Dec 2022 08:36:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c228100b003d23928b654sm3049314wmf.11.2022.12.14.08.36.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 08:36:52 -0800 (PST)
Message-ID: <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
Date:   Wed, 14 Dec 2022 17:36:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 1/1] strcpy.3: Rewrite page to document all
 string-copying functions
Content-Language: en-US
To:     Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-2-alx@kernel.org>
 <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qR3NUWrYU040CsmULIofGTpE"
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
--------------qR3NUWrYU040CsmULIofGTpE
Content-Type: multipart/mixed; boundary="------------KM0ABzAPVDFOvj0rqc3Mjx6s";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
Subject: Re: [PATCH v3 1/1] strcpy.3: Rewrite page to document all
 string-copying functions
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-2-alx@kernel.org>
 <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
In-Reply-To: <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>

--------------KM0ABzAPVDFOvj0rqc3Mjx6s
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRG91ZyENCg0KVGhhbmtzIGZvciBoYXZpbmcgYSBsb29rIGF0IGl0IQ0KDQpPbiAxMi8x
NC8yMiAxNzoyMiwgRG91Z2xhcyBNY0lscm95IHdyb3RlOg0KPj4gYSBzZXF1ZW5jZSBvZiB6
ZXJvIG9yIG1vcmUgbm9uLW51bGwgY2hhcmFjdGVycyBmb2xsb3dlZCBieSBhIG51bGwgYnl0
ZQ0KPiANCj4gVmFyeWluZyAgdGVybWlub2xvZ3kgKGNoYXJhY3RlciB2cyBieXRlKSBpcyBw
b29yIHN0eWxlIGluIHRlY2huaWNhbCB3cml0aW5nLg0KDQpJIHRob3VnaHQgb2YgdXNpbmcg
bnVsbCBjaGFyYWN0ZXIsIGJ1dCBpdCB3YXMgbG9uZ2VyLCBhbmQgSSBwcmVmZXIgc2hvcnRl
ciB0ZXJtcy4NCg0KQWJvdXQgdXNpbmcgYnl0ZSBmb3IgZXZlcnl0aGluZy4uLiBpdCBmZWVs
cyBhIGJpdCB3cm9uZyBlc3BlY2lhbGx5IHdoZW4gSSdtIA0KdHJ5aW5nIHRvIG1ha2UgYSBj
bGVhciBkaXN0aW5jdGlvbiBiZXR3ZWVuIHN0cmluZ3MgYW5kIGNoYXJhY3RlciBzZXF1ZW5j
ZXMgdGhhdCANCmRvbid0IGhhdmUgYSB0ZXJtaW5hdGluZyBOVUwuDQoNCkFuZCwgc2luY2Ug
dGhlIHR3byBhcmUgZGlzdGluY3QgdGhpbmdzIHRoYXQgc2hvdWxkIG5vdCBiZSBtaXhlZCAo
YXMgZmFyIGFzIA0Kc3RyaW5ncyBhcmUgY29uY2VybmVkKSwgaXQgZG9lc24ndCBmZWVsIHNv
IGJhZCB1c2luZyBkaWZmZXJlbnQgdGVybXMgZm9yIHRoZW0uDQoNCj4gDQo+PiBjb25jYXRl
bmF0ZQ0KPiANCj4gV2UgYmVnYW4gZmlnaHRpbmcgdGhpcyBwb21wb3NpdHkgYmVmb3JlIHY3
LiBUaGVyZSBoYXMgb25seSBiZWVuDQo+IGJhY2tzbGlkaW5nIHNpbmNlLi4NCj4gIkNhdGVu
YXRlIiBpcyBjcmlzcGVyLCBtZWFucyB0aGUgc2FtZSB0aGluZywgYW5kIGNvbmN1cnMgd2l0
aCB0aGUgImNhdCIgY29tbWFuZC4NCj4gSSBpbnZpdGUgeW91IHRvIGpvaW4gdGhlIGJhdHRs
ZSBmb3Igc2ltcGxpY2l0eS4NCg0KSGVoLCBJIGRpZG4ndCBrbm93IHRoZSB3b3JkIGV4aXN0
ZWQuICBJbiBTcGFuaXNoIHdlIG9ubHkgaGF2ZSAiY29uY2F0ZW5hciIuIA0KSSdsbCBoYXBw
aWx5IGpvaW4gdGhpcyBiYXR0bGUgZm9yIHNpbXBsaWNpdHkgOikNCg0KPiANCj4+IGNoYWlu
IGNvcHkNCj4gDQo+IFRoaXMgdGVybSBpcyBuZXZlciBvdmVydGx5IGRlZmluZWQuIFRoZSBk
ZWZpbml0aW9uIG1pZ2h0IGJlIGluZmVycmVkDQo+IGZyb20sICJUbyBjaGFpbiBjb3B5DQo+
IGZ1bmN0aW9ucywgdGhleSBuZWVkIHRvIHJldHVybiBhIHBvaW50ZXIgdG8gdGhlIGVuZCIs
IGJ1dCB0aGUNCj4gcHJvYmxlbWF0aWMgZ3JhbW1hciBvZiB0aGUNCj4gc2VudGVuY2UgZGl2
ZXJ0cyBhdHRlbnRpb24gZnJvbSBpdHMgY29udGVudC4NCg0KT2theSwgSSdsbCB0cnkgdG8g
aW1wcm92ZSB0aGUgd29yZGluZyBpbiB0aGF0IHBhcmFncmFwaDsgaW5kZWVkIHRoYXQgc3Vi
c2VjdGlvbiANCmludGVuZGVkIHRvIGRlZmluZSB0aGUgImNoYWluIGNvcHkiIHRlcm0uDQoN
Cj4gDQo+PiBzdHJzY3B5DQo+IA0KPiBEb2Vzbid0IGl0IG11ZGR5IHRoZSB3YXRlcnMgdG8g
aW5jbHVkZSBhIG5vbi1saWJyYXJ5IGZ1bmN0aW9uIGluIG1hbjM/DQoNCkluaXRpYWxseSBJ
IHdhbnRlZCB0byBkaXNjdXNzIGl0IGJlY2F1c2UgaXQgYWx3YXlzIGNvbWVzIHVwIGluIGRp
c2N1c3Npb25zIGFib3V0IA0KYmV0dGVyIHN0cmluZy1jb3B5aW5nIGZ1bmN0aW9ucy4NCg0K
QnV0IHNpbmNlIEkgZG9uJ3QgcHJvdmlkZSBhbiBpbXBsZW1lbnRhdGlvbiBmb3IgaXQgKHNp
bmNlIGl0J3MgaGFyZCB0byBnZXQgDQpyaWdodCkgKGFzIG9wcG9zZWQgdG8gdGhlIG90aGVy
IGZ1bmN0aW9ucyB0aGF0IGFyZSBub3QgaW4gbGlicmFyaWVzLCBmb3Igd2hpY2ggSSANCnNo
b3cgdHJpdmlhbCBpbXBsZW1lbnRhdGlvbnMpLCBhbmQgZG9uJ3Qgc2VlIGl0IHZlcnkgdXNl
ZnVsLCBJIGNhbiByZW1vdmUgaXQuIA0KTGVzcyBsaW5lcyB3YXN0ZWQgd2l0aCBpdC4NCg0K
TWF5YmUgSSdsbCBrZWVwIGEgc21hbGwgbWVudGlvbiB0byBpdC4NCg0KPiANCj4gRG91Zw0K
DQpDaGVlcnMsDQoNCkFsZXgNCg==

--------------KM0ABzAPVDFOvj0rqc3Mjx6s--

--------------qR3NUWrYU040CsmULIofGTpE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZ+5sACgkQnowa+77/
2zK9WA/7BLMiQxO+TdekYPzGy5/eqIOQ48IBnghY+EQKtOUcU44ZqkKANHlxBmnB
D1b5YePVz8yeiH+zws6XV8w+5lfM2rWTY7BlYqv/nLy2GjF6fq+2ytLUHQfcXIaj
7UJq31hT/jX7GGLZoMDhn4trtpgLVZEA11unZp/bcI5Z/YPTuUi8ZARL1OTQDPwA
6uFxhNB1SBCZtYA38duUu/4645vH8BsidgP3YgLPQhY38cK/Lqr5RuTShYdVLzoZ
K3nb8KlM911/s4JSS/VjGuxJfTeKffMy1D1ukf/I3ONeWDaivQhWiY2DZuWwfPv8
mPJgRBh5YPNYMZ/B/eJEVJfqyTXxTyIJXp8aN7774obmSdm7o1dEPllEm5Y74MQg
ItVeP9E9gjRyrkJLBCxpkJLLyfq+igAGj8QcOdd9131BguQmuUKzbiHCEst4Q7Tw
PTgJsKhL4zqp03oA7WnFh2RpXvkC0vl/+aXYMfRbxQHT4SVgcUe+9iBw35a60wfu
8Yg+bcXDMLPbvMtvv1sbBu8bxn1qV7fPbvVBuGoM5Jpdf+i0Lcu6PvRgXHteUrDY
AXB7qJ9+4h5Z8HOX39YlH+YSsg2lsBsXltYd62ORaTjookgdPWJwbsVdmSCAIJ2G
L0VMZKn9LeV6QrabGzXpEKw5SoQtkxxLK8PVw4AYe7ldscrL3Ik=
=6u+c
-----END PGP SIGNATURE-----

--------------qR3NUWrYU040CsmULIofGTpE--
