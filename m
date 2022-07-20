Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20B9257B2F3
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 10:30:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240446AbiGTIaN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jul 2022 04:30:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240449AbiGTIaE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jul 2022 04:30:04 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 408A86D2E3
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 01:30:03 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id v67-20020a1cac46000000b003a1888b9d36so885622wme.0
        for <linux-man@vger.kernel.org>; Wed, 20 Jul 2022 01:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=VTPVLGrztVfirODhnQChFdxXQB7S+hh0I57gaKKvfhc=;
        b=G5q7aa4bQgKg4bwwcgFhr+BYU0g1ac+nVTepvfufT0tOn8rOYO2zGeWul5Qw7FS9aY
         Zall4M8c73583M4jhCDCoEFfph4mRIaXMlnDcloW8Iz8Gs4OQzOYyx+5ghe2FDAAXSyA
         7IXBA4rWXlYoKw5sKQECHqM0uxaQIInVC9OZPp0F/LO5ixnFGuVSw00K4a3GGsQATptm
         8/NT/9eJCSvTQXySfXxex5iss1BnTpPNZblwvGjYdi6ygm8ApWwRz8M4CDiCcI2IGJL+
         mOyYZruJEnc6odAiJy3BYXni+OYsPn4d7jr4P9Iy3C7PMUozggGQo71+BowLORbJ3d/G
         ZsKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=VTPVLGrztVfirODhnQChFdxXQB7S+hh0I57gaKKvfhc=;
        b=2kMP2NINrt+tBU3IXEO8wB/0WaxPXkLNIytp8JSoQnlh1AsHyMgdlHEo5rYIf3rJXf
         /HqQujvs/ClGO+PrOTGDeWa0K42OaVy3IGPa7LRqa5RRiP5DqbsVNLQ/eSjBNfNg0Rjk
         2XH0szhwFrDfVWs/S/WkUGqKa3AG36v2zw+qejpN6FwZwVC7VmOkx9NYRqdzE6RyXSyE
         CyT6Gq38Vpv0yv9shYqOKt73GhQFEviZXEyLCcUK6GkdQPthxBIWV3wA94w0qI2z5yCL
         z48ixOkK7wmE5UoWj/QMbVPDoIMwI63xknQGXTABetAb+0C5kPjT1YhtsNsl6kAYUzkr
         TPWA==
X-Gm-Message-State: AJIora9wTR3t/Y7OCZFbOnpm/7lWI0wphDF1SN9T8RN1W9PfwMd1ifGc
        qZEqTyREaSvNdtAdOe7vwUE=
X-Google-Smtp-Source: AGRyM1tAxj/M3QI+wlIg7Fej2wrO8dPLyfpjo7pYhmfKgSZTXx3QrGWgTKBaxLU6pOdcqbHjU5YlCQ==
X-Received: by 2002:a05:600c:4f11:b0:3a1:9c38:4b16 with SMTP id l17-20020a05600c4f1100b003a19c384b16mr2631663wmq.107.1658305801604;
        Wed, 20 Jul 2022 01:30:01 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c14-20020a5d4cce000000b0021d82a6095bsm15301327wrt.95.2022.07.20.01.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jul 2022 01:30:00 -0700 (PDT)
Message-ID: <63c8f27a-08aa-a664-51d4-d88ee8f15bb2@gmail.com>
Date:   Wed, 20 Jul 2022 10:29:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v4] strftime.3, strftime_l.3: mention strftime_l() with
 .so link
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <84e06095-1dac-0f3c-bb86-5ab81610d8c2@gmail.com>
 <20220719222810.gujuec4m6jt7rrbs@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220719222810.gujuec4m6jt7rrbs@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xvhSjpkeLOmHuwtyd1WEosLZ"
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
--------------xvhSjpkeLOmHuwtyd1WEosLZ
Content-Type: multipart/mixed; boundary="------------5mnRtebAcpiNFwo1AYapKxWI";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <63c8f27a-08aa-a664-51d4-d88ee8f15bb2@gmail.com>
Subject: Re: [PATCH v4] strftime.3, strftime_l.3: mention strftime_l() with
 .so link
References: <84e06095-1dac-0f3c-bb86-5ab81610d8c2@gmail.com>
 <20220719222810.gujuec4m6jt7rrbs@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220719222810.gujuec4m6jt7rrbs@tarta.nabijaczleweli.xyz>

--------------5mnRtebAcpiNFwo1AYapKxWI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8yMC8yMiAwMDoyOCwg0L3QsNCxIHdyb3RlOg0KPiBQT1NJWC4xLTIwMDggVEMyOg0K
Pj4gW0NYXSBUaGUgc3RyZnRpbWVfbCgpIGZ1bmN0aW9uIHNoYWxsIGJlIGVxdWl2YWxlbnQg
dG8gdGhlIHN0cmZ0aW1lKCkNCj4gICAgZnVuY3Rpb24sIGV4Y2VwdCB0aGF0IHRoZSBsb2Nh
bGUgZGF0YSB1c2VkIGlzIGZyb20gdGhlIGxvY2FsZQ0KPiAgICByZXByZXNlbnRlZCBieSBs
b2NhbGUuDQo+PiBbQ1hdIFRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQgaWYgdGhlIGxvY2Fs
ZSBhcmd1bWVudCB0byBzdHJmdGltZV9sKCkNCj4gICAgaXMgdGhlIHNwZWNpYWwgbG9jYWxl
IG9iamVjdCBMQ19HTE9CQUxfTE9DQUxFIG9yIGlzIG5vdCBhIHZhbGlkIGxvY2FsZQ0KPiAg
ICBvYmplY3QgaGFuZGxlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlh
xYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCg0KUGF0Y2ggYXBw
bGllZC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMy9zdHJmdGltZS4z
ICAgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgIG1hbjMvc3RyZnRpbWVf
bC4zIHwgIDEgKw0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtYW4zL3N0cmZ0aW1lX2wuMw0K
PiANCj4gZGlmZiAtLWdpdCBhL21hbjMvc3RyZnRpbWUuMyBiL21hbjMvc3RyZnRpbWUuMw0K
PiBpbmRleCBkYzk4YTUxMjIuLjZlZmY4MTVhZCAxMDA2NDQNCj4gLS0tIGEvbWFuMy9zdHJm
dGltZS4zDQo+ICsrKyBiL21hbjMvc3RyZnRpbWUuMw0KPiBAQCAtMjcsNiArMjcsMTEgQEAg
U3RhbmRhcmQgQyBsaWJyYXJ5DQo+ICAgLkJJICJzaXplX3Qgc3RyZnRpbWUoY2hhciAqcmVz
dHJpY3QgIiBzICIsIHNpemVfdCAiIG1heCAsDQo+ICAgLkJJICIgICAgICAgICAgICAgICAg
Y29uc3QgY2hhciAqcmVzdHJpY3QgIiBmb3JtYXQgLA0KPiAgIC5CSSAiICAgICAgICAgICAg
ICAgIGNvbnN0IHN0cnVjdCB0bSAqcmVzdHJpY3QgIiB0bSApOw0KPiArLlBQDQo+ICsuQkkg
InNpemVfdCBzdHJmdGltZV9sKGNoYXIgKnJlc3RyaWN0ICIgcyAiLCBzaXplX3QgIiBtYXgg
LA0KPiArLkJJICIgICAgICAgICAgICAgICAgY29uc3QgY2hhciAqcmVzdHJpY3QgIiBmb3Jt
YXQgLA0KPiArLkJJICIgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IHRtICpyZXN0cmlj
dCAiIHRtICwNCj4gKy5CSSAiICAgICAgICAgICAgICAgIGxvY2FsZV90ICIgbG9jYWxlICk7
DQo+ICAgLmZpDQo+ICAgLlNIIERFU0NSSVBUSU9ODQo+ICAgVGhlDQo+IEBAIC00NzEsNiAr
NDc2LDE3IEBAIGFzIGFuIGFyZ3VtZW50IHRvIGENCj4gICBPbmUgZXhhbXBsZSBvZiBzdWNo
IGFsdGVybmF0aXZlIGZvcm1zIGlzIHRoZSBKYXBhbmVzZSBlcmEgY2FsZW5kYXIgc2NoZW1l
IGluIHRoZQ0KPiAgIC5CIGphX0pQDQo+ICAgZ2xpYmMgbG9jYWxlLg0KPiArLlBQDQo+ICsu
QlIgc3RyZnRpbWVfbCAoKQ0KPiAraXMgZXF1aXZhbGVudCB0bw0KPiArLkJSIHN0cmZ0aW1l
ICgpLA0KPiArZXhjZXB0IGl0IHVzZXMgdGhlIHNwZWNpZmllZA0KPiArLkkgbG9jYWxlDQo+
ICtpbnN0ZWFkIG9mIHRoZSBjdXJyZW50IGxvY2FsZS4NCj4gK1RoZSBiZWhhdmlvdXIgaXMg
dW5kZWZpbmVkIGlmDQo+ICsuSSBsb2NhbGUNCj4gK2lzIGludmFsaWQgb3INCj4gKy5CUiBM
Q19HTE9CQUxfTE9DQUxFIC4NCj4gICAuU0ggUkVUVVJOIFZBTFVFDQo+ICAgUHJvdmlkZWQg
dGhhdCB0aGUgcmVzdWx0IHN0cmluZywNCj4gICBpbmNsdWRpbmcgdGhlIHRlcm1pbmF0aW5n
IG51bGwgYnl0ZSwgZG9lcyBub3QgZXhjZWVkDQo+IEBAIC01MTYsMTQgKzUzMiwyMiBAQCBs
YnggbGIgbGINCj4gICBsIGwgbC4NCj4gICBJbnRlcmZhY2UJQXR0cmlidXRlCVZhbHVlDQo+
ICAgVHsNCj4gLS5CUiBzdHJmdGltZSAoKQ0KPiArLkJSIHN0cmZ0aW1lICgpLA0KPiArLkJS
IHN0cmZ0aW1lX2wgKCkNCj4gICBUfQlUaHJlYWQgc2FmZXR5CU1ULVNhZmUgZW52IGxvY2Fs
ZQ0KPiAgIC5URQ0KPiAgIC5oeQ0KPiAgIC5hZA0KPiAgIC5zcCAxDQo+ICAgLlNIIENPTkZP
Uk1JTkcgVE8NCj4gKy5CUiBzdHJmdGltZSAoKToNCj4gICBTVnI0LCBDODksIEM5OS4NCj4g
Ky5QRCAwDQo+ICsuUFANCj4gKy5QRA0KPiArLkJSIHN0cmZ0aW1lX2wgKCk6DQo+ICtQT1NJ
WC4xLTIwMDguDQo+ICsuUFANCj4gICAuXCIgRklYTUUgc3RyZnRpbWUoKSBpcyBpbiBQT1NJ
WC4xLTIwMDEgYW5kIFBPU0lYLjEtMjAwOCwgYnV0IHRoZSBkZXRhaWxzDQo+ICAgLlwiIGlu
IHRoZSBzdGFuZGFyZHMgY2hhbmdlZCBhY3Jvc3MgdmVyc2lvbnMuIEludmVzdGlnYXRlIGFu
ZA0KPiAgIC5cIiB3cml0ZSB1cC4NCj4gZGlmZiAtLWdpdCBhL21hbjMvc3RyZnRpbWVfbC4z
IGIvbWFuMy9zdHJmdGltZV9sLjMNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXgg
MDAwMDAwMDAwLi4wMmU3OTdhMjMNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9tYW4zL3N0
cmZ0aW1lX2wuMw0KPiBAQCAtMCwwICsxIEBADQo+ICsuc28gbWFuMy9zdHJmdGltZS4zDQoN
Ci0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------5mnRtebAcpiNFwo1AYapKxWI--

--------------xvhSjpkeLOmHuwtyd1WEosLZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXvQAACgkQnowa+77/
2zKCpA//RlBQiyPD2BB2JFjraSdFFNO3uEjUNBVu2jt3U7uPalOOIV5lvZEjxKpL
37cY1jRCvH05NjvK9RrM6MonrOw4u2U5g+IYMR97hryb/ciui2ksdS66No5fLVUy
/zkaYfmbv8sRvSzlFVlwFI411GUWOzdDqob5Z5KP7rcZukG8Bn/H6W8OKOioLVZj
OVeewAb2e3kSdq9I9uE3j7iEXz0aXydjCJkYioqsOTaEOKCy+5HL9Te0Fm2STrlr
DslAsoAWgfUcjJveK5k3LqtP4LL+G61F6tDcH1WVNqSFE2XnlNRO1RW2XFYB2ElQ
LP82A/eisu901ixHjtbEK3b/T1fY/ahQQXMK3JFatLTTVXSV49TjfBEWcO6gXB1X
Ttp1tXvjLB7FB+8ZQkE6X7QLD8va4fNxu3bdAQK8zu1zWBfrBo+I0v71wmd8KAJs
aEHI5vBv2yNVrBZL7khgnezMP9qUZ3nzEAfVR4h+YFVa29mbZOCKmubnbLjVLlgL
nPWspNAjS8WzfMRi7QcBfqNpY94WYly6w3PNOsGiHPC43lC3IEwWuEri7TuPCPtl
EwoeChLPwVMKh4FNDc1qPnJHPB4J+avCJsrOVw4nNAaaX0LCnJg4R1G4fjvtDRAs
l46/E1nKCZDS8sqUctL9gULlRcnIZ2EffijeoiMkj4jPX0vWyV8=
=/8WQ
-----END PGP SIGNATURE-----

--------------xvhSjpkeLOmHuwtyd1WEosLZ--
