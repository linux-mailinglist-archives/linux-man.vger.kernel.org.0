Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55E2C65DC82
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 20:03:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235305AbjADTDl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 14:03:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234591AbjADTDV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 14:03:21 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 433E2186A1
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 11:03:20 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id g10so12584063wmo.1
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 11:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBs8rAzLrWBcQPfR8zUTuRwsZ31b093ZlUWHV1HgYh8=;
        b=LgLE6sBdn6NPOt8kKWPLFEOQWRwhiE79e6r+fn6tA5hSRpSzgfyRuKvCm7+kySH0Aa
         Gpq/4/0atxSe0IyJ+oZJYcA4vo9ataCZITrXgbSGlZ4NSe816efaXmiYsVNGYrgixu3g
         y6+ZdkRcnHy4vDy/o5ctSZn7EOjP+PoERVkNgDX9yhPsPDgDs2iMCfxVqcUI25uKZ3eJ
         1SQy6hiBi4vbXSLZ/0Eea6u5JdO5X3yV3kDhsO0d127cw057tJ2PhPVLjlpQzzxJUVuc
         hsLxV9QuV3Uk2pXcsN8DodRBlutU3t9+hgfOlqga9vb3EQ1S0VcphOGJ0SYyocI50vcM
         bxNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HBs8rAzLrWBcQPfR8zUTuRwsZ31b093ZlUWHV1HgYh8=;
        b=v2XeYwalvxbC/3NEthLE9NE4L/rXYOUa/WrUk/ub06Woyx2nCX9D0HrAh9q3pmNyxR
         AvOgCWQEjjIe+KcIO3mR6v2e0NMQBxwdLNq2urnDdmrmfCMfQvzQqHpHilQpoEp3fZ50
         ZNgAdTjnFUSQew6rWxnmvsHm7wszJtkrHuxOItKc7yL7C+QvrZ6tC7fD5hl5BXvF/RG2
         slWaUDvJ9xFijIjB/prITjepXPr9trowwQf+wvuSY4sC45wADOXOnC14dNSgBcdLFnZ6
         6WHKkfWTnBKsMxcDsf4EP5RvZfYyGUCNxsJ+5oH+zA5swHzk3G8et0xrbs98v77s0deO
         73PA==
X-Gm-Message-State: AFqh2kqqir/5nt0QjJIyYpRXL1NKlAGC0epfcdOkSH2q69ezMFpd6OW7
        Fteg0V/+tTE1hqdpiE2zYa0=
X-Google-Smtp-Source: AMrXdXsCz2WZ9KYMtxNsfVNu+8p7qQhu1A++MOI8Op9HdQf9Oyv+Dyu7W3k+781wFLm4saRdhNKZLg==
X-Received: by 2002:a05:600c:3b82:b0:3cf:900c:de6b with SMTP id n2-20020a05600c3b8200b003cf900cde6bmr34552078wms.15.1672858998842;
        Wed, 04 Jan 2023 11:03:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l15-20020a5d410f000000b002683695bf97sm34814135wrp.58.2023.01.04.11.03.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 11:03:18 -0800 (PST)
Message-ID: <07547001-e13e-a9a2-b0ba-0879d0b1280e@gmail.com>
Date:   Wed, 4 Jan 2023 20:03:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073746.govufof5kk34nonj@illithid>
 <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
 <20230104160530.ony3dowlttbjehha@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104160530.ony3dowlttbjehha@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7Xs5jKYhnb9omAUXcOp00hAA"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------7Xs5jKYhnb9omAUXcOp00hAA
Content-Type: multipart/mixed; boundary="------------OMR0BVhbGzkjer5ncKG9CDxv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <07547001-e13e-a9a2-b0ba-0879d0b1280e@gmail.com>
Subject: Re: [PATCH v2 0/9] intro.3, libc.7, ldconfig.8: Revise
References: <20230104073746.govufof5kk34nonj@illithid>
 <5fc0b202-0829-42b2-760a-25e1de006e34@gmail.com>
 <20230104160530.ony3dowlttbjehha@illithid>
In-Reply-To: <20230104160530.ony3dowlttbjehha@illithid>

--------------OMR0BVhbGzkjer5ncKG9CDxv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS80LzIzIDE3OjA1LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNFQxMzozNDo1OSswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+PiB2MjoNCj4+Pg0KPj4+ICogTm8gbG9uZ2Vy
IG1pZ3JhdGVzIGBQUGAgbWFjcm9zIHRvIGBQYC4NCj4+PiAqIE5vIGxvbmdlciBtaWdyYXRl
cyBBU0NJSSAiYXJyb3ciIGAtPmAgdG8gdHJvZmYgc3BlY2lhbCBjaGFyYWN0ZXIuDQo+PiBJ
J2QgbGlrZSB0aGlzIGNoYW5nZSwgaWYgeW91IGNhbiBhcHBseSBpdCBnbG9iYWxseS4gIEJ1
dCB3ZSdsbCBsZWF2ZQ0KPj4gaXQgZm9yIGEgc2VwYXJhdGUgcGF0Y2ggc2V0Lg0KPiANCj4g
WWVzLiAgSSBhbHJlYWR5IGNoYXNlZCBpdCBkb3duLiAgIkdsb2JhbGx5IiBhZmZlY3RzIDIg
cGFnZXMuDQo+IA0KPiBUaGVyZSBpcyBtb3JlIGVsYWJvcmF0ZSBBU0NJSSBhcnQgaW4gc2No
ZWQoNykuICBUaGF0IGNhbiBiZSBtYWRlDQo+IHJlbGF0aXZlbHkgcHJldHR5IHdpdGggVW5p
Y29kZSBhcnJvdyBjaGFyYWN0ZXJzOyB0aGUgZm91ciBvcnRob2dvbmFsDQo+IHNpbmdsZS1z
dGVtbWVkIGFycm93cyBldmVuIGhhcHBlbiB0byBoYXZlIHBvcnRhYmxlIHNwZWNpYWwgY2hh
cmFjdGVyDQo+IGlkZW50aWZpZXJzIGdvaW5nIGJhY2sgdG8gMTk3NiBBVCZUIHRyb2ZmLg0K
PiANCj4gQnV0IEknbSBub3Qgc3VyZSBhYm91dCBjaGV3aW5nIHRoYXQgb25lIG9mZi4gIFVz
aW5nIHNwZWNpYWwgY2hhcmFjdGVyDQo+IGVzY2FwZSBzZXF1ZW5jZXMgd291bGQgbWFrZSB0
aGUgc291cmNlIGxvb2tlZCB3ZWlyZGVyIGFuZCBtaXNhbGlnbmVkLg0KPiBUaGVyZSdzIGEg
d2F5IGFyb3VuZCB0aGF0ICh0aGUgYHRyYCByZXF1ZXN0KSBidXQgdGhhdCdzIGEgZmFpcmx5
IGNodW5reQ0KPiBicmVhY2ggb2YgdGhlICJubyAqcm9mZiByZXF1ZXN0cyBpbiBtYW4gcGFn
ZSBzb3VyY2VzKSBydWxlIHRoYXQgSW5nbw0KPiBTY2h3YXJ6ZSBhbmQgSSB0cnkgdG8gaG9s
ZCB0by4NCj4gDQo+IFN0aWxsLCBpdCdzIHdvcnRoIHRoaW5raW5nIGFib3V0IHdoZXRoZXIg
eW91J2QgbGlrZSB0byBoYXZlIHBpYygxKQ0KPiBkaWFncmFtcyBpbiB0aGUgTGludXggbWFu
LXBhZ2VzLCB3aXRoIEFTQ0lJL1VuaWNvZGUtYXJ0IGZhbGxiYWNrcyBmb3INCj4gdGVybWlu
YWwgZGV2aWNlcy4NCg0KSSBkb24ndCBrbm93LiAgQ2FuIHlvdSBzaG93IHNvdXJjZSBjb2Rl
IGFuZCBmb3JtYXR0ZWQgb3V0cHV0IG9mIHNvbWUgZXhhbXBsZXMsIA0Kc28gSSBjYW4gY29t
cGFyZT8NCg0KPiANCj4+IFRoaXMgbW9yZSBvciBsZXNzIGNvcnJlc3BvbmRzIHRvIHdoYXQg
d2UgY2FsbCBzcmNmaXggKGFsdGhvdWdoIHNvbWUgbWlnaHQNCj4+IHF1YWxpZnkgYXMgZmZp
eDsgdGhlIG9uZXMgeW91IGNhbGxlZCBpbXByZWNpc2UpLg0KPiBbLi4uXQ0KPj4gVGhpcyBt
b3JlIG9yIGxlc3MgY29ycmVzcG9uZHMgdG8gd2hhdCB3ZSBjYWxsIHRmaXguDQo+IFsuLi5d
DQo+PiBUaGlzIG1vcmUgb3IgbGVzcyBjb3JyZXNwb25kcyB0byB3aGF0IHdlIGNhbGwgd2Zp
eC4gIHdmaXggY2FuIGVuZ2xvYmUNCj4+IHRmaXggbm9ybWFsbHkuDQo+IFsuLi5dDQo+PiBU
aGlzIG1vcmUgb3IgbGVzcyBjb3JyZXNwb25kcyB0byB3aGF0IHdlIGNhbGwgZmZpeC4gIEl0
IG1pZ2h0IGJlIGdvb2QNCj4+IHRvIGJyZWFrIHN1Y2ggY2hhbmdlcyBpbiB0d28gb3IgdGhy
ZWUgc2VwYXJhdGUgY2F0ZWdvcmllcywgYWx0aG91Z2gNCj4+IHNvbWV0aW1lcyBvbmUgbmVl
ZHMgdGhlIG90aGVyLCBhbmQgaXQncyBzaW1wbGVyIHRvIGp1c3QgYXBwbHkgb25lDQo+PiBw
YXRjaCB0aGF0IGRvZXMgYWxsIG9mIHRoZW0uDQo+IA0KPiBJIHdpbGwgcmVjYXN0IG15IGNo
YXJhY3Rlcml6YXRpb25zIGluIHRoZSBjb21taXQgbWVzc2FnZXMuICBJIHVzZWQgdG8NCj4g
a25vdyB0aGUgYWJvdmUgY2F0ZWdvcmllcywgYnV0IHRoZXkgYml0LXJvdHRlZCBpbiBteSBi
cmFpbiBkdWUgdG8gbXkNCj4gZmV2ZXJpc2ggcnVzaCB0byBnZXQgZ3JvZmYgMS4yMyByZWFk
eS4gIENvbnRleHQgc3dpdGNoZXMgYXJlIGV4cGVuc2l2ZQ0KPiBpbiBtZWF0c3BhY2UsIHRv
by4uLg0KPiANCj4gRG8geW91IGNvbnRpbnVlIHRvIHByYWN0aWNlIE1pY2hhZWwncyBpbmRp
ZmZlcmVuY2UgdG8gR2l0J3MgZmlyc3QtbGluZQ0KPiAibGltaXQiIHRvIGNvbW1pdCBtZXNz
YWdlcz8NCg0KWWVzLiAgV2hpbGUgSSB0cnkgdG8gbWFrZSBzdWJqZWN0cyBzaG9ydCwgYXMg
YW55b25lIGVsc2UsIEkgZG9uJ3QgaGF2ZSBhbnkgDQpzdHJpY3QgcnVsZXMgYWJvdXQgaXQu
ICBJZiB0aGUgbnVtYmVyIG9mIGZpbGVzIGJlaW5nIG1vZGlmaWVkIGlzIGEgYml0IGxhcmdl
LCANCml0J3MgZWFzeSB0byBnbyBwYXN0IHRoZSA4MC1jb2wsIGFuZCBJJ20gZmluZSB3aXRo
IHRoYXQuDQoNCkhvd2V2ZXIsIE1pY2hhZWwgYW5kIEkgdXNlZCBzb21lIGFiYnJldmlhdGlv
bnMsIHN1Y2ggYXMgIk1hbnkgcGFnZXM6IC4uLiIsIG9yIA0KIlZhcmlvdXMgcGFnZXM6IC4u
LiIsIGFuZCBzaW1pbGFyLCB3aGVuIHRoZXJlIHdlcmUgYSBsYXJnZSBhbW91bnQgb2YgcGFn
ZXMgYnV0IA0KdGhlIGNoYW5nZSB3YXMgYSBnbG9iYWwgZml4IGFuZCB0aGUgcGFnZSBuYW1l
cyB3ZXJlIGNvbXBsZXRlbHkgaXJyZWxldmFudC4gIFdlIA0KdXNlZCAidmFyaW91cyIgZm9y
IGEgc21hbGxpc2ggbnVtYmVyIG9mIHBhZ2VzIG92ZXIgMTAgb3Igc28uICAiTWFueSIgd2Fz
IG1vcmUgDQpmb3IgdGhpbmdzIGxpa2UgNTAwIHBhZ2VzLg0KDQo+ICBJIGhhdmUgc29tZSBw
ZW5kaW5nIHBhdGNoZXMgdGhhdCBsb29rIGxpa2UNCj4gdGhpcy4NCj4gDQo+IGNvbW1pdCBh
YjIxOGQ5ZjAyYmNmYjlkNmM3YzEyN2VkOTBjOWE4YzM0Y2Q4YmE1DQo+IEF1dGhvcjogRy4g
QnJhbmRlbiBSb2JpbnNvbiA8Zy5icmFuZGVuLnJvYmluc29uQGdtYWlsLmNvbT4NCj4gRGF0
ZTogICBXZWQgSmFuIDQgMDI6MzE6MzcgMjAyMyAtMDYwMA0KPiANCj4gICAgICBhZGp0aW1l
eC4yLCBldmVudGZkLjIsIG1tYXAyLjIsIHBlcmZfZXZlbnRfb3Blbi4yLCBxdW90YWN0bC4y
LCBzaG1nZXQuMiwgdGltZXMuMiwgZHJhbmQ0OC4zLCBsZGV4cC4zLCByYW5kb20uMywgdGdh
bW1hLjMsIHByb2MuNSwgbW91bnRfbmFtZXNwYWNlcy43LCByYW5kb20uNywgc2NoZWQuNywg
dGNwLjcsIHVkcGxpdGUuNywgdW5pdHMuNywgdW5peC43LCB1dGYtOC43OiBzcmNmaXgNCg0K
WW91IGNvdWxkIHVzZSAiVmFyaW91cyBwYWdlczogc3JjZml4IiBoZXJlLg0KDQpCVFcsIGFu
b3RoZXIgdGhpbmcgSSBub3RpY2VkIHlvdSBwcmFjdGljZSBpcyB3cml0aW5nIGEgdHJhaWxp
bmcgJy4nIGluIHRoZSANCnN1YmplY3QgbGluZS4NCkkgZG9uJ3QgaGF2ZSBhbnkgc3Ryb25n
IHByZWZlcmVuY2UgdGhlcmUsIGJ1dCBmb2xsb3dlZCB0aGUgcHJhY3RpY2Ugb2Ygbm90IA0K
d3JpdGluZyBpdCwgYXMgTWljaGFlbCBkaWQuICBJdCBoYXMgdGhlIGFkdmFudGFnZSBvZiBo
YXZpbmcgb25lIG1vcmUgYnl0ZSBmb3IgDQp0aGUgc3ViamVjdC4NCg0KSSBndWVzcyB5b3Ug
cHJlZmVyIGxhbmd1YWdlIGNvbnNpc3RlbmN5Lg0KDQo+IA0KPiAgICAgIFVzZSBjb3JyZWN0
ICpyb2ZmIHNwZWNpYWwgY2hhcmFjdGVyIGZvciBoYXQvY2FyZXQvY2lyY3VtZmxleCBhY2Nl
bnQuDQo+IA0KPiAgICAgIFNpZ25lZC1vZmYtYnk6IEcuIEJyYW5kZW4gUm9iaW5zb24gPGcu
YnJhbmRlbi5yb2JpbnNvbkBnbWFpbC5jb20+DQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVu
DQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xv
bWFyLmVzLz4NCg==

--------------OMR0BVhbGzkjer5ncKG9CDxv--

--------------7Xs5jKYhnb9omAUXcOp00hAA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO1zWwACgkQnowa+77/
2zJrgA/7Bgi9Rabyhd01ljf0cb14lz0Z9Yoyv7xVVrt8Lq3MNpXjYYWCEAMG3+wz
Y3oprMxhpBY0og6lNMrbNIggNbMzKQQ8VGUuD87Hf5ewbqNa7ks0iCADs5sEID/M
ot5VjcHKXO5RaZOglablxgs7oBRIhTRvd7OB9JPLTyO1+viHhtXc36tFnxVPWOYJ
wGMRj8xgW2inYZ7kMgqfBa9kehMm/L0XNu6yb5cj/K64B0YPtUJOCOh3BSZl5D77
oGoi6vJHKLsR/hzKWH5S7U8nqNgK8QM+JTlDLQgqmZazx6DTzmBlecNKsYQyxByB
6TisPsz0wwSM7HFONxIsPB5w3oLXVsNFn5mGtS/KL067YkVxUqpI5rB4fxzTz8CW
Cir+WT/8aJceBXEKRpYp9M5Op6h6YQYppdaFLJ9xeA22b+tTQrkA7Y0I3MRMnTo7
Kye2XvdRgAygfSghP1HBWK9mVwWhmAudaCVbp3cJHkjZXrNeaa1zUg1Hef6jiW5/
Z8rY0IUg61CVqPxFJbIBLHsCmKEEaYRD9XXzxL3jfKxfYqf7byiwM0+Dd5mkBZiO
uhVJx3fMxmgUfR0P9sn6r8PCKWtwt5C9v/J0ShO2VkJj1yefemZ67rSCdh3GYZEf
JcBC7zexFw115amx/s0+bhRqhQIR/YMbpfrJMic9HQMJGteag1w=
=N2oO
-----END PGP SIGNATURE-----

--------------7Xs5jKYhnb9omAUXcOp00hAA--
