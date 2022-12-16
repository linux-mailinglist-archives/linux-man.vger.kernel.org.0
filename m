Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6531F64F15C
	for <lists+linux-man@lfdr.de>; Fri, 16 Dec 2022 20:04:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231542AbiLPTEM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Dec 2022 14:04:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbiLPTEE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Dec 2022 14:04:04 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9AC6A768
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 11:04:03 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m19so2508055wms.5
        for <linux-man@vger.kernel.org>; Fri, 16 Dec 2022 11:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVRV/7KSTFiWyNpOhvGhU8RwglCLSJK3wpTFnsnsaTo=;
        b=U19mF0erKnIRStg/dG+fG44FuGD7/tygaxMUSn1gGWOSrWPoyEP3Vqq+kNU5MigYeC
         w2WxyXV89Dn73YibBiWVkAZYV0+tbAYBBMUgwRjXZ7MnvDUl27iux/h2Qsp+CYmRm82y
         eQD/ZqXVdJvlBj4Dt1AfrF4P3JnTd9jZsURB7vAu47dcN7XRq42V5zAOyNi5yIiAAoL4
         CnKos1RVVY/vVJuTXC3Gi7dF/FRAtV4Pbel9GHLBNzS1qY+kYlIAhtjQ22AT3u/Zk05N
         z11D07vaCvYZr+gsaCn6L2tPyXCgLvZF5C7UzLavZ3mM4aZTLV2HxQc8IbHWyh1+lKC+
         dDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JVRV/7KSTFiWyNpOhvGhU8RwglCLSJK3wpTFnsnsaTo=;
        b=MDM0/O8YhnTYk8iXp0F8HkSs7CRyNF94njpepzIjBVmOD/vd6ie/Zlg8aYSnythKtJ
         HoaFr9T/9wSfmDPVL3tt4eKIAEHFom+/XwDM0cD5ZYaOtyfeGfxIt2FFKHd/RpXoX1kE
         w8ECaST6xsVCgyovnrVMtFY29776FlptRxdHfBBU9iDmJyRCv6gebGh3sU6UFudYoeae
         DiYi+rdVDBt0t5Lc4i6kVU5KOPcF0HMjk0oTDoijGkXjGTMMGeZv67cEQyJTbkUxXQEh
         JxHNiQl3mU8yleY/cD4XIPiYBwmMx7pfYd+iYZELc7NMLyVpuhqQipJu2qyhFTL/ZbYg
         BMbQ==
X-Gm-Message-State: ANoB5pmVwHToLK5Y1mRZf/HmqpBV3eA/iI55PB6mtyZ0IK7NZ64DBijM
        3fkGs60IYgqYr6bG6jjWgv8=
X-Google-Smtp-Source: AA0mqf7nwighmpSRJUSdeI1xuw/IeTARWINwXNnYgm2VMrIasQD3VVob2zgrHravYjm85opWcj1SAw==
X-Received: by 2002:a05:600c:3549:b0:3c6:e61e:ae8c with SMTP id i9-20020a05600c354900b003c6e61eae8cmr36046809wmq.28.1671217441523;
        Fri, 16 Dec 2022 11:04:01 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j17-20020a05600c1c1100b003cf774c31a0sm12458604wms.16.2022.12.16.11.04.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 11:04:01 -0800 (PST)
Message-ID: <5abac28c-e8fa-d62b-2211-5ddd6820e882@gmail.com>
Date:   Fri, 16 Dec 2022 20:03:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-3-alx@kernel.org>
 <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
 <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4z8RW44oTOAthmfw8yfhHUYj"
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
--------------4z8RW44oTOAthmfw8yfhHUYj
Content-Type: multipart/mixed; boundary="------------UBbESfkLli6zHQGsV5oolOhs";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>
Message-ID: <5abac28c-e8fa-d62b-2211-5ddd6820e882@gmail.com>
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-3-alx@kernel.org>
 <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
 <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>
In-Reply-To: <CACKs7VDYWBaMtAELqnV31eJjRNebPH-m9kZiXXq4fABgvQ+E5Q@mail.gmail.com>

--------------UBbESfkLli6zHQGsV5oolOhs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlZmFuLA0KDQpPbiAxMi8xNi8yMiAxOTo0NywgU3RlZmFuIFB1aXUgd3JvdGU6DQo+
IEhpIEFsZXghDQo+IA0KPiBPbiBUaHUsIERlYyAxNSwgMjAyMiBhdCAyOjQ2IEFNIEFsZWph
bmRybyBDb2xvbWFyDQo+IDxhbHgubWFucGFnZXNAZ21haWwuY29tPiB3cm90ZToNCj4+DQo+
PiBGb3JtYXR0ZWQgc3RycGN5KDMpOg0KPj4NCj4+IHN0cmNweSgzKSAgICAgICAgICAgICAg
ICAgIExpYnJhcnkgRnVuY3Rpb25zIE1hbnVhbCAgICAgICAgICAgICAgICAgIHN0cmNweSgz
KQ0KPj4NCj4+IE5BTUUNCj4+ICAgICAgICAgIHN0cmNweSAtIGNvcHkgb3IgY2F0ZW5hdGUg
YSBzdHJpbmcNCj4+DQo+PiBMSUJSQVJZDQo+PiAgICAgICAgICBTdGFuZGFyZCBDIGxpYnJh
cnkgKGxpYmMsIC1sYykNCj4+DQo+PiBTWU5PUFNJUw0KPj4gICAgICAgICAgI2luY2x1ZGUg
PHN0cmluZy5oPg0KPj4NCj4+ICAgICAgICAgIGNoYXIgKnN0cGNweShjaGFyICpyZXN0cmlj
dCBkc3QsIGNvbnN0IGNoYXIgKnJlc3RyaWN0IHNyYyk7DQo+PiAgICAgICAgICBjaGFyICpz
dHJjcHkoY2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMpOw0K
Pj4gICAgICAgICAgY2hhciAqc3RyY2F0KGNoYXIgKnJlc3RyaWN0IGRzdCwgY29uc3QgY2hh
ciAqcmVzdHJpY3Qgc3JjKTsNCj4+DQo+PiAgICAgIEZlYXR1cmUgVGVzdCBNYWNybyBSZXF1
aXJlbWVudHMgZm9yIGdsaWJjIChzZWUgZmVhdHVyZV90ZXN0X21hY3Jvcyg3KSk6DQo+Pg0K
Pj4gICAgICAgICAgc3RwY3B5KCk6DQo+PiAgICAgICAgICAgICAgU2luY2UgZ2xpYmMgMi4x
MDoNCj4+ICAgICAgICAgICAgICAgICAgX1BPU0lYX0NfU09VUkNFID49IDIwMDgwOUwNCj4+
ICAgICAgICAgICAgICBCZWZvcmUgZ2xpYmMgMi4xMDoNCj4+ICAgICAgICAgICAgICAgICAg
X0dOVV9TT1VSQ0UNCj4+DQo+PiBERVNDUklQVElPTg0KPj4gICAgICAgICAgc3RwY3B5KCkN
Cj4+ICAgICAgICAgIHN0cmNweSgpDQo+PiAgICAgICAgICAgICAgICAgVGhlc2UgZnVuY3Rp
b25zIGNvcHkgdGhlIHN0cmluZyBwb2ludGVkIHRvIGJ5IHNyYywgaW50byBhIHN0cmluZw0K
Pj4gICAgICAgICAgICAgICAgIGF0ICB0aGUgYnVmZmVyIHBvaW50ZWQgdG8gYnkgZHN0LiAg
VGhlIHByb2dyYW1tZXIgaXMgcmVzcG9uc2libGUNCj4+ICAgICAgICAgICAgICAgICBmb3Ig
YWxsb2NhdGluZyBhIGJ1ZmZlciBsYXJnZSBlbm91Z2gsIHRoYXQgaXMsIHN0cmxlbihzcmMp
ICsgIDEuDQo+PiAgICAgICAgICAgICAgICAgVGhleSBvbmx5IGRpZmZlciBpbiB0aGUgcmV0
dXJuIHZhbHVlLg0KPiANCj4gQSBkZXN0aW5hdGlvbiBidWZmZXIgbGFyZ2UgZW5vdWdoPyBJ
dCdzIG5vdCB0aGF0IG9idmlvdXMgdG8gbWUgZnJvbQ0KPiB0aGUgdGV4dCwgYnV0IG1heWJl
IEknbSB0aXJlZCA6KS4NCg0KU3VyZS4gIFRoYW5rcyENCg0KPiBJIHdhcyBhbHNvIGEgYml0
IGF0IGEgbG9zcyBhYm91dCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIHRoZSB0d287IG1heWJl
DQo+IHlvdSBjYW4gc2F5ICJGb3IgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgdHdvLCBz
ZWUgUkVUVVJOIFZBTFVFIj8NCg0KVGhhdCBjYW4gbWFrZSBzZW5zZSwgeWVzLg0KDQo+IA0K
Pj4NCj4+ICAgICAgICAgIHN0cmNhdCgpDQo+PiAgICAgICAgICAgICAgICAgVGhpcyBmdW5j
dGlvbiBjYXRlbmF0ZXMgdGhlIHN0cmluZyBwb2ludGVkIHRvIGJ5IHNyYywgYXQgdGhlIGVu
ZA0KPj4gICAgICAgICAgICAgICAgIG9mICB0aGUgc3RyaW5nIHBvaW50ZWQgdG8gYnkgZHN0
LiAgVGhlIHByb2dyYW1tZXIgaXMgcmVzcG9uc2libGUNCj4+ICAgICAgICAgICAgICAgICBm
b3IgYWxsb2NhdGluZyBhIGJ1ZmZlciBsYXJnZSBlbm91Z2gsICB0aGF0ICBpcywgIHN0cmxl
bihkc3QpICArDQo+PiAgICAgICAgICAgICAgICAgc3RybGVuKHNyYykgKyAxLg0KPiANCj4g
RGl0dG8gaGVyZS4NCg0KOikNCg0KPiANCj4+DQo+PiAgICAgICAgICBBbiBpbXBsZW1lbnRh
dGlvbiBvZiB0aGVzZSBmdW5jdGlvbnMgbWlnaHQgYmU6DQo+Pg0KPj4gICAgICAgICAgICAg
IGNoYXIgKg0KPj4gICAgICAgICAgICAgIHN0cGNweShjaGFyICpyZXN0cmljdCBkc3QsIGNv
bnN0IGNoYXIgKnJlc3RyaWN0IHNyYykNCj4+ICAgICAgICAgICAgICB7DQo+PiAgICAgICAg
ICAgICAgICAgIGNoYXIgICplbmQ7DQo+Pg0KPj4gICAgICAgICAgICAgICAgICBlbmQgPSBt
ZW1wY3B5KGRzdCwgc3JjLCBzdHJsZW4oc3JjKSk7DQo+PiAgICAgICAgICAgICAgICAgICpl
bmQgPSAnXDAnOw0KPj4NCj4+ICAgICAgICAgICAgICAgICAgcmV0dXJuIGVuZDsNCj4+ICAg
ICAgICAgICAgICB9DQo+Pg0KPj4gICAgICAgICAgICAgIGNoYXIgKg0KPj4gICAgICAgICAg
ICAgIHN0cmNweShjaGFyICpyZXN0cmljdCBkc3QsIGNvbnN0IGNoYXIgKnJlc3RyaWN0IHNy
YykNCj4+ICAgICAgICAgICAgICB7DQo+PiAgICAgICAgICAgICAgICAgIHN0cGNweShkc3Qs
IHNyYyk7DQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiBkc3Q7DQo+PiAgICAgICAgICAg
ICAgfQ0KPj4NCj4+ICAgICAgICAgICAgICBjaGFyICoNCj4+ICAgICAgICAgICAgICBzdHJj
YXQoY2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBzcmMpDQo+PiAg
ICAgICAgICAgICAgew0KPj4gICAgICAgICAgICAgICAgICBzdHBjcHkoZHN0ICsgc3RybGVu
KGRzdCksIHNyYyk7DQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiBkc3Q7DQo+PiAgICAg
ICAgICAgICAgfQ0KPiANCj4gQXJlIHlvdSBzdXJlIHRoaXMgc2VjdGlvbiBhZGRzIGFueSB2
YWx1ZT8gSSB0aGluayBnb29kIGRvY3VtZW50YXRpb24NCj4gc2hvdWxkIGV4cGxhaW4gaG93
IGEgZnVuY3Rpb24gd29ya3Mgd2l0aG91dCBkZWx2aW5nIGludG8gdGhlDQo+IGludGVycHJl
dGF0aW9uLg0KDQpUbyBiZSBob25lc3QsIHRoaXMgcGFnZSBkb2Vzbid0IGJlbmVmaXQgdG9v
IG11Y2ggZnJvbSBpdC4gIHN0cmNweSgzKS9zdHJjYXQoMykgDQphcmUgZGVhZCBzaW1wbGUs
IGFuZCB0aGUgZXhwbGFuYXRpb25zIGFib3ZlIHNob3VsZCBiZSBlbm91Z2guDQoNCkhvd2V2
ZXIsIHRoZSBzYW1lIHRoaW5nIGluIHN0cm5jcHkoMykgYW5kIHN0cm5jYXQoMykgaXMgdmVy
eSBoZWxwZnVsLCBJTU8uICBGb3IgDQpjb25zaXN0ZW5jeSBJIGp1c3Qgc2hvd2VkIHRyaXZp
YWwgaW1wbGVtZW50YXRpb25zIGluIGFsbCBvZiB0aGUgcGFnZXMuICAoQW5kIGluIA0KZmFj
dCwgdGhlcmUgd2FzIGFuIGV4YW1wbGUgaW1wbGVtZW50YXRpb24gaW4gdGhlIG9sZCBzdHJu
Y2F0KDMpIGFuZCBtYXliZSBhIGZldyANCm90aGVycywgSUlSQy4pDQoNCj4gQWxzbywgcGVv
cGxlIG1pZ2h0IGdldCBjb25mdXNlZCBhbmQgdGhpbmsgdGhpcyBpcyB0aGUNCj4gYWN0dWFs
IGltcGxlbWVudGF0aW9uLg0KDQpJIGRvbid0IHRoaW5rIHRoZXJlJ3MgYW55IHByb2JsZW0g
aWYgb25lIGJlbGlldmVzIHRoaXMgaXMgdGhlIGltcGxlbWVudGF0aW9uLiANCkV4Y2VwdCBm
b3Igc3RwY3B5KDMpLCBpbiB3aGljaCBJIHByZWZlcnJlZCByZWFkYWJpbGl0eSwgdGhleSBh
cmUgYWN0dWFsbHkgcXVpdGUgDQpnb29kIGltcGxlbWVudGF0aW9ucy4gIEEgZmFzdGVyIGlt
cGxlbWVudGF0aW9uIG9mIHN0cGNweSgzKSBtaWdodCBiZSBkb25lIGluIA0KdGVybXMgb2Yg
bWVtY2NweSgzKS4NCg0KRnVubmlseSBlbm91Z2gsIEkganVzdCBjaGVja2VkIHdoYXQgbXVz
bCBsaWJjIGRvZXMsIGFuZCBpdCdzIHRoZSBzYW1lIGFzIHNob3duIGhlcmU6DQoNCg0KYWx4
QGRlYmlhbjp+L3NyYy9tdXNsL211c2wkIGdyZXBjIC10ZmQgc3RyY3B5DQouL3NyYy9zdHJp
bmcvc3RyY3B5LmM6MzoNCmNoYXIgKnN0cmNweShjaGFyICpyZXN0cmljdCBkZXN0LCBjb25z
dCBjaGFyICpyZXN0cmljdCBzcmMpDQp7DQoJX19zdHBjcHkoZGVzdCwgc3JjKTsNCglyZXR1
cm4gZGVzdDsNCn0NCmFseEBkZWJpYW46fi9zcmMvbXVzbC9tdXNsJCBncmVwYyAtdGZkIHN0
cmNhdA0KLi9zcmMvc3RyaW5nL3N0cmNhdC5jOjM6DQpjaGFyICpzdHJjYXQoY2hhciAqcmVz
dHJpY3QgZGVzdCwgY29uc3QgY2hhciAqcmVzdHJpY3Qgc3JjKQ0Kew0KCXN0cmNweShkZXN0
ICsgc3RybGVuKGRlc3QpLCBzcmMpOw0KCXJldHVybiBkZXN0Ow0KfQ0KDQoNCj4gDQo+Pg0K
Pj4gUkVUVVJOIFZBTFVFDQo+PiAgICAgICAgICBzdHBjcHkoKQ0KPj4gICAgICAgICAgICAg
ICAgIFRoaXMgIGZ1bmN0aW9uIHJldHVybnMgYSBwb2ludGVyIHRvIHRoZSB0ZXJtaW5hdGlu
ZyBudWxsIGJ5dGUgYXQNCj4+ICAgICAgICAgICAgICAgICB0aGUgZW5kIG9mIHRoZSBjb3Bp
ZWQgc3RyaW5nLg0KPj4NCj4+ICAgICAgICAgIHN0cmNweSgpDQo+PiAgICAgICAgICBzdHJj
YXQoKQ0KPj4gICAgICAgICAgICAgICAgIFRoZXNlIGZ1bmN0aW9ucyByZXR1cm4gZGVzdC4N
Cj4+DQo+PiBBVFRSSUJVVEVTDQo+PiAgICAgICAgICBGb3IgYW4gZXhwbGFuYXRpb24gb2Yg
dGhlIHRlcm1zICB1c2VkICBpbiAgdGhpcyAgc2VjdGlvbiwgIHNlZSAgYXR0cmli4oCQDQo+
PiAgICAgICAgICB1dGVzKDcpLg0KPj4gICAgICAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSs4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSs4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQDQo+PiAgICAgICAgICDilIJJbnRl
cmZhY2UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIOKUgiBBdHRyaWJ1dGUg
ICAgIOKUgiBWYWx1ZSAgIOKUgg0KPj4gICAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pS84pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pS84pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQo+PiAgICAgICAgICDilIJzdHBj
cHkoKSwgc3RyY3B5KCksIHN0cmNhdCgpICAgICAgICAgICAgICAgIOKUgiBUaHJlYWQgc2Fm
ZXR5IOKUgiBNVOKAkFNhZmUg4pSCDQo+PiAgICAgICAgICDilJTilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilLTilIDilIDilIDilIDilIDilIDilIDilIDilIDilJgNCj4+DQo+PiBTVEFOREFSRFMN
Cj4+ICAgICAgICAgIHN0cGNweSgpDQo+PiAgICAgICAgICAgICAgICAgUE9TSVguMeKAkDIw
MDguDQo+Pg0KPj4gICAgICAgICAgc3RyY3B5KCkNCj4+ICAgICAgICAgIHN0cmNhdCgpDQo+
PiAgICAgICAgICAgICAgICAgUE9TSVguMeKAkDIwMDEsIFBPU0lYLjHigJAyMDA4LCBDODks
IEM5OSwgU1ZyNCwgNC4zQlNELg0KPj4NCj4+IENBVkVBVFMNCj4+ICAgICAgICAgIFRoZSBz
dHJpbmdzIHNyYyBhbmQgZHN0IG1heSBub3Qgb3ZlcmxhcC4NCj4+DQo+PiAgICAgICAgICBJ
ZiAgdGhlICBkZXN0aW5hdGlvbiAgYnVmZmVyIGlzIG5vdCBsYXJnZSBlbm91Z2gsIHRoZSBi
ZWhhdmlvciBpcyB1bmRl4oCQDQo+PiAgICAgICAgICBmaW5lZC4gIFNlZSBfRk9SVElGWV9T
T1VSQ0UgaW4gZmVhdHVyZV90ZXN0X21hY3Jvcyg3KS4NCj4+DQo+PiBCVUdTDQo+PiAgICAg
ICAgICBzdHJjYXQoKQ0KPj4gICAgICAgICAgICAgICAgIFRoaXMgZnVuY3Rpb24gY2FuIGJl
ICB2ZXJ5ICBpbmVmZmljaWVudC4gICBSZWFkICBhYm91dCAgU2hsZW1pZWwNCj4+ICAgICAg
ICAgICAgICAgICB0aGUgICAgICBwYWludGVyICAgICDin6hodHRwczovL3d3dy5qb2Vsb25z
b2Z0d2FyZS5jb20vMjAwMS8xMi8xMS8NCj4+ICAgICAgICAgICAgICAgICBiYWNrLXRvLWJh
c2ljcy/in6kuDQo+IA0KPiBJJ20gbm90IHN1cmUgdGhpcyBpcyBhIGJ1ZywgcmF0aGVyIGEg
ZGVzaWduIGxpbWl0YXRpb24uIE1heWJlIGl0DQo+IGJlbG9uZ3MgaW4gTk9URVMgb3IgQ0FW
RUFUUz8NCg0KWWVhaCwgSSBoYWQgYmVlbiB0aGlua2luZyBvZiBkb3duZ3JhZGluZyBpdC4g
IEknbGwgZG8gaXQuDQoNCj4gQWxzbywgSSB0aGluayB0aGlzIGNhbiBiZSBzdW1tYXJpemVk
DQo+IGFsb25nIHRoZSBsaW5lcyBvZiAnc3RyY2F0IG5lZWRzIHRvIHdhbGsgdGhlIGRlc3Rp
bmF0aW9uIGJ1ZmZlciB0bw0KPiBmaW5kIHRoZSBudWxsIHRlcm1pbmF0b3IsIHNvIGl0IGhh
cyBsaW5lYXIgY29tcGxleGl0eSB3aXRoIHJlc3BlY3QgdG8NCj4gdGhlIHNpemUgb2YgdGhl
IGRlc3RpbmF0aW9uIGJ1ZmZlciB1cCB0byB0aGUgdGVybWluYXRvcicgKGhtbSwgSSdtDQo+
IHN1cmUgdGhpcyBjYW4gYmUgZXhwcmVzc2VkIG1vcmUgY29uY2lzZWx5KSwgc28gdGhlIHBh
Z2UgaXMgbW9yZSBzZWxmDQo+IGNvbnRhaW5lZC4gT3V0c2lkZSBsaW5rcyBzb21ldGltZXMg
Z28gZGVhZCwgbGlrZSBvbiBXaWtpcGVkaWEsIHNvIEkNCj4gdGhpbmsganVzdCBpbiBjYXNl
LCBpdCBoZWxwcyB0byBtYWtlIGV4cGxpY2l0IHRoZSBwb2ludCB0aGF0IHlvdSB3YW50DQo+
IHRoZSByZWFkZXIgdG8gc3R1ZHkgZnVydGhlciBpbiB0aGUgVVJMLg0KDQpJIHdhc24ndCBp
bnNwaXJlZCB0byB3cml0ZSBpdCBzaG9ydCBlbm91Z2ggdG8gbm90IGJlIHRvbyB2ZXJib3Nl
LiAgTWF5YmUgSSdsbCANCndyaXRlIHNvbWV0aGluZyBiYXNlZCBvbiB5b3VyIHN1Z2dlc3Rp
b24uDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IFN0ZWZhbi4NCg0KVGhhbmtzIGZvciB0aGUgcmV2
aWV3IQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4+DQo+PiBFWEFNUExFUw0KPj4gICAg
ICAgICAgI2luY2x1ZGUgPHN0ZGlvLmg+DQo+PiAgICAgICAgICAjaW5jbHVkZSA8c3RkbGli
Lmg+DQo+PiAgICAgICAgICAjaW5jbHVkZSA8c3RyaW5nLmg+DQo+Pg0KPj4gICAgICAgICAg
aW50DQo+PiAgICAgICAgICBtYWluKHZvaWQpDQo+PiAgICAgICAgICB7DQo+PiAgICAgICAg
ICAgICAgY2hhciAgICAqcDsNCj4+ICAgICAgICAgICAgICBjaGFyICAgIGJ1ZjFbQlVGU0la
XTsNCj4+ICAgICAgICAgICAgICBjaGFyICAgIGJ1ZjJbQlVGU0laXTsNCj4+ICAgICAgICAg
ICAgICBzaXplX3QgIGxlbjsNCj4+DQo+PiAgICAgICAgICAgICAgcCA9IGJ1ZjE7DQo+PiAg
ICAgICAgICAgICAgcCA9IHN0cGNweShwLCAiSGVsbG8gIik7DQo+PiAgICAgICAgICAgICAg
cCA9IHN0cGNweShwLCAid29ybGQiKTsNCj4+ICAgICAgICAgICAgICBwID0gc3RwY3B5KHAs
ICIhIik7DQo+PiAgICAgICAgICAgICAgbGVuID0gcCAtIGJ1ZjE7DQo+Pg0KPj4gICAgICAg
ICAgICAgIHByaW50ZigiW2xlbiA9ICV6dV06ICIsIGxlbik7DQo+PiAgICAgICAgICAgICAg
cHV0cyhidWYxKTsgIC8vICJIZWxsbyB3b3JsZCEiDQo+Pg0KPj4gICAgICAgICAgICAgIHN0
cmNweShidWYyLCAiSGVsbG8gIik7DQo+PiAgICAgICAgICAgICAgc3RyY2F0KGJ1ZjIsICJ3
b3JsZCIpOw0KPj4gICAgICAgICAgICAgIHN0cmNhdChidWYyLCAiISIpOw0KPj4gICAgICAg
ICAgICAgIGxlbiA9IHN0cmxlbihidWYyKTsNCj4+DQo+PiAgICAgICAgICAgICAgcHJpbnRm
KCJbbGVuID0gJXp1XTogIiwgbGVuKTsNCj4+ICAgICAgICAgICAgICBwdXRzKGJ1ZjIpOyAg
Ly8gIkhlbGxvIHdvcmxkISINCj4+DQo+PiAgICAgICAgICAgICAgZXhpdChFWElUX1NVQ0NF
U1MpOw0KPj4gICAgICAgICAgfQ0KPj4NCj4+IFNFRSBBTFNPDQo+PiAgICAgICAgICBzdHJk
dXAoMyksIHN0cmluZygzKSwgd2NzY3B5KDMpLCBzdHJpbmdfY29weSg3KQ0KPj4NCj4+IExp
bnV4IG1hbuKAkHBhZ2VzICh1bnJlbGVhc2VkKSAgICAgICAgKGRhdGUpICAgICAgICAgICAg
ICAgICAgICAgICAgICAgc3RyY3B5KDMpDQo+Pg0KPj4gLS0NCj4+IDxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29s
b21hci5lcy8+DQo=

--------------UBbESfkLli6zHQGsV5oolOhs--

--------------4z8RW44oTOAthmfw8yfhHUYj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOcwRkACgkQnowa+77/
2zI/yhAAmOHDtOgHz49jUST9w8oxIuobbGsgYwRHcM3GM4uNso4G8VC2b64B0bXG
o3ry119D7UDXX/ZOkLfUzk7neFvAz4/fRBNhBwRTXR63d7FQOdTzKaF5tYcDI6SH
egISsXCragVIQdMgH6glTR8HMVPNKzo+CtqZT3Z3PI9ADMVn6xhO9pI6N31R1Pd5
NwSIQ013v41Ul1+/5ROZigVdBtTD9aj7TGvz4ORrUzygFkh6XRAxOJPvprSFEVk9
WwynA5DuJaPo4tzwzO+TwOwAN1/BcRrCPXn1vh2T62kLZGQiE4RqCkGkUDL9dRgS
s12pF447+/7bfFHwvtvVbZiGKvyrn9HnKTlJ1jnXVCqVU/c9Zf6lwEK8s8Dyje9v
RnhxM3nKHgSKADepyuPJCuMh+aEjg33690CeGj962SYX5hUQCGlcnIcUHFkj78ty
bWdgKHmIk9RFfeI2/8VTTDquaCQfb2yX1HnW9VGQ/a7ZvsS5LGghC1qD/3sDErOY
RvBN4cFHdhVPMTSigYX4koTwEKjiprjM+AiQE7KkNqI6EJ2vaomfw0mGLVK9o3c+
tLVFd4KFeq+xZi0KepTWjugDD5Tz/TaDs5CO4X6l9zU6vA99hcL3NMboSeu4kcET
nKxTIXy1lWodprxHqCeTCK82tPwkU9JLB2N+/yQxuhFeQsXC41Q=
=Ty6E
-----END PGP SIGNATURE-----

--------------4z8RW44oTOAthmfw8yfhHUYj--
