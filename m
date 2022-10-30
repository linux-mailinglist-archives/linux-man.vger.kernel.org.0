Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53FA8612A63
	for <lists+linux-man@lfdr.de>; Sun, 30 Oct 2022 12:42:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiJ3LmO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Oct 2022 07:42:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229497AbiJ3LmN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Oct 2022 07:42:13 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37BA7B1F2
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 04:42:12 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id ja4-20020a05600c556400b003cf6e77f89cso248434wmb.0
        for <linux-man@vger.kernel.org>; Sun, 30 Oct 2022 04:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISN04wtFd0J8VdmuN6cD1dZ/6yKCR4tmmLpRWyrax+o=;
        b=Dsp7IrRfAcnmsK34siYNusCmWm+Of9/RTFGDVm5GfahLl+2WQR3k1aa2DA440wYrz3
         Crjq4cuWItolX90Cs4CVjPdvJISpNNt0jMn4D9GshvzIGU8dpWWMpYI3GZGGN50A/F/u
         +tD6Gz7YYOMAL0TQg0LDe7bZpnKPB1LW7IqM8wVBXDzCRfUZHLJSHH49QIIrNh1yrZgp
         7NtfMWryD9j3J9YfJin0SyxcDhwuJM5SJ8jhwmiTTMaQjIOJP0XCZ9GTVWVTSYddqGth
         DLGOk7wVjuX/IbiB4eY0nHgrZBEKZEbusoHg0xm3d9sRcLq6ezLtnhsL43149KY9waTg
         Thmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ISN04wtFd0J8VdmuN6cD1dZ/6yKCR4tmmLpRWyrax+o=;
        b=6aYwNdGHq7nolpTzVShbSIc21jGSVPlu5Gnpn0HJk9wOfC7jY5sqLdlYz+G/e3NRhW
         Vwhj+4LMzoK7AhSWBTFO9QurygJ30YF+lPqzTgyTUgGarRWaPPAbljl008jgIm3dbq3h
         C9IO5rORiYJfM54cj0+oEM//tBbZJ4cB6ZnKqUSyeoG773JLt7F5XPDbqJoJCvtIuyJO
         ZpS7FOJuwUjf8IM8KitkXrjQhRIZv+w9EAT1XgIfY+CpanDNpJunzdrdsEoCIK0ZPT+p
         CLkKxuj7YaxweZLRb3hgx5K9BC0xDuF6LP8QIVi3b/v/PGrcKI0tls9oyXGq9pcZvAp8
         OKHw==
X-Gm-Message-State: ACrzQf0jtX8jFsan7jhzvOlLjB8rXmlpEK0ULA6iiIG4Gn9ECG7u7iu8
        Y9WhxBvcsxRohIm+FoeBxwo=
X-Google-Smtp-Source: AMsMyM5R2AgX1nhq/IHbIYrKGDMbFpFUxa5hV3dFUB5lgRjU89+3m8+ww0ymQwHX5KlLJOeo3i8qlQ==
X-Received: by 2002:a05:600c:310b:b0:3cf:33c4:bc7 with SMTP id g11-20020a05600c310b00b003cf33c40bc7mr4813792wmo.25.1667130130629;
        Sun, 30 Oct 2022 04:42:10 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c469000b003b505d26776sm4756660wmo.5.2022.10.30.04.42.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 04:42:10 -0700 (PDT)
Message-ID: <715d8645-16ea-d230-0488-46ea01792bc6@gmail.com>
Date:   Sun, 30 Oct 2022 12:41:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v3 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-2-zokeefe@google.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221021223300.3675201-2-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wqt520wayN1HGpsXAFnzBqIn"
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
--------------wqt520wayN1HGpsXAFnzBqIn
Content-Type: multipart/mixed; boundary="------------vBGeZdrlh6jKMX94o1beoLOU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <715d8645-16ea-d230-0488-46ea01792bc6@gmail.com>
Subject: Re: [PATCH man-pages v3 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
References: <20221021223300.3675201-1-zokeefe@google.com>
 <20221021223300.3675201-2-zokeefe@google.com>
In-Reply-To: <20221021223300.3675201-2-zokeefe@google.com>

--------------vBGeZdrlh6jKMX94o1beoLOU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCENCg0KT24gMTAvMjIvMjIgMDA6MzIsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IFNpbmNlIExp
bnV4IDUuNCwgVHJhbnNwYXJlbnQgSHVnZSBQYWdlcyBub3cgc3VwcG9ydCBib3RoIGZpbGUt
YmFja2VkDQo+IG1lbW9yeSBhbmQgc2htZW0gbWVtb3J5LiBVcGRhdGUgTUFEVl9IVUdFUEFH
RSBhZHZpY2UgZGVzY3JpcHRpb24gdG8NCj4gcmVmbGVjdCB0aGlzLg0KPiANCj4gQWRkaXRp
b25hbGx5LCBleHBhbmQgdGhlIGRlc2NyaXB0aW9uIG9mIHJlcXVpcmVtZW50cyBmb3IgbWVt
b3J5IHRvIGJlDQo+IGNvbnNpZGVyZWQgZWxpZ2libGUgZm9yIFRIUDogYWxpZ25tZW50IC8g
bWFwcGluZyByZXF1aXJlbWVudHMsIFZNQQ0KPiBmbGFncywgcHJjdGwoMikgc2V0dGluZ3Ms
IGlub2RlIHN0YXR1cywgZXRjLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogWmFjaCBPJ0tlZWZl
IDx6b2tlZWZlQGdvb2dsZS5jb20+DQoNClBhdGNoIGFwcGxpZWQhICBUaGFua3MuDQpTaW5j
ZSB5b3Ugd2VyZSBpbnRlcmVzdGVkLCBJIGFtZW5kZWQgaXQgd2l0aCB0aGUgZm9sbG93aW5n
IGRpZmY6DQoNCg0KZGlmZiAtLWdpdCBhL21hbjIvbWFkdmlzZS4yIGIvbWFuMi9tYWR2aXNl
LjINCmluZGV4IDY0Zjc4OGFjZS4uNDhiZGE3MDNjIDEwMDY0NA0KLS0tIGEvbWFuMi9tYWR2
aXNlLjINCisrKyBiL21hbjIvbWFkdmlzZS4yDQpAQCAtMzYxLDkgKzM2MSwxMCBAQCAuU1Mg
TGludXgtc3BlY2lmaWMgYWR2aWNlIHZhbHVlcw0KICBhbmQgZmlsZS1iYWNrZWQgcGFnZXMu
DQogIEZvciBhbGwgbWVtb3J5IHR5cGVzLA0KICBtZW1vcnkgbWF5IG9ubHkgYmUgcmVwbGFj
ZWQgYnkgaHVnZSBwYWdlcyBvbiBodWdlcGFnZS1hbGlnbmVkIGJvdW5kYXJpZXMuDQotRm9y
IGZpbGUtbWFwcGVkIG1lbW9yeSBcKGVtIGluY2x1ZGluZyB0bXBmcyAoc2VlDQotLkJSIHRt
cGZzICgyKSkNCi1cKGVtIHRoZSBtYXBwaW5nIG11c3QgYWxzbyBiZSBuYXR1cmFsbHkgaHVn
ZXBhZ2UtYWxpZ25lZCB3aXRoaW4gdGhlIGZpbGUuDQorRm9yIGZpbGUtbWFwcGVkIG1lbW9y
eQ0KK1woZW1pbmNsdWRpbmcgdG1wZnMgKHNlZQ0KKy5CUiB0bXBmcyAoMikpXChlbQ0KK3Ro
ZSBtYXBwaW5nIG11c3QgYWxzbyBiZSBuYXR1cmFsbHkgaHVnZXBhZ2UtYWxpZ25lZCB3aXRo
aW4gdGhlIGZpbGUuDQogIEFkZGl0aW9uYWxseSwNCiAgZm9yIGZpbGUtYmFja2VkLA0KICBu
b24tdG1wZnMgbWVtb3J5LA0KQEAgLTM4Miw3ICszODMsNyBAQCAuU1MgTGludXgtc3BlY2lm
aWMgYWR2aWNlIHZhbHVlcw0KICBUaGUgcHJvY2VzcyBtdXN0IGFsc28gbm90IGhhdmUNCiAg
LkIgUFJfU0VUX1RIUF9ESVNBQkxFDQogIHNldCAoc2VlDQotLkJSIHByY3RsICgyKSApLg0K
Ky5CUiBwcmN0bCAoMikpLg0KICAuSVANCiAgVGhlDQogIC5CIE1BRFZfSFVHRVBBR0UNCg0K
DQotIFRoZSBlbSBkYXNoZXMgeW91IHVzZWQgd2VyZSBjb3JyZWN0IHdpdGggc3BhY2VzIGlu
IGJvdGggc2lkZXM7IHRoZXJlIGFyZSB0aG9zZSANCndobyB1c2UgdGhlbSB3aXRoIHNwYWNl
cyBpbiBib3RoIHNpZGVzIGFuZCB0aG9zZSB3aG8gdXNlIHRoZW0gd2l0aCBubyBzcGFjZXMg
YXQgDQphbGwuICBBbmQgdGhlbiB0aGVyZSBhcmUgdGhvc2Ugd2hvIHB1dCBzcGFjZXMgYXMg
aWYgdGhleSB3ZXJlIHBhcmVudGhlc2VzIA0KKGFkbWl0dGVkbHkgdGhpcyBpcyBtdWNoIGxl
c3MgY29tbW9uKS4gIEkgcHJlZmVyIHRoaXMgbGF0dGVyIGNhc2UsIHNpbmNlIGl0IA0KbWFr
ZXMgdGVjaG5pY2FsIHRleHRzIG1vcmUgcGFyc2VhYmxlLg0KDQotIEkgdXNlZCBhIHNlbWFu
dGljIG5ld2xpbmUgYnJlYWsgZm9yIHRoZSBlbSBkYXNoZXMsIHNpbmNlIHRoZXkgYXJlIHNp
bWlsYXIgdG8gYSANCmNvbWEuDQoNCi0gUmVtb3ZlZCBhIHNwdXJpb3VzIHNwYWNlIGluIEJS
IHRoYXQgd291bGQgaGF2ZSBtYWRlIHRoZSBmb3JtYXR0aW5nIHdlaXJkLg0KDQpDaGVlcnMs
DQoNCkFsZXgNCg0KDQo+IC0tLQ0KPiAgIG1hbjIvbWFkdmlzZS4yIHwgMzggKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKystLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMzUg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4y
L21hZHZpc2UuMiBiL21hbjIvbWFkdmlzZS4yDQo+IGluZGV4IDgxY2NlNTZhZi4uNjRmNzg4
YWNlIDEwMDY0NA0KPiAtLS0gYS9tYW4yL21hZHZpc2UuMg0KPiArKysgYi9tYW4yL21hZHZp
c2UuMg0KPiBAQCAtMzIwLDggKzMyMCw2IEBAIEVuYWJsZSBUcmFuc3BhcmVudCBIdWdlIFBh
Z2VzIChUSFApIGZvciBwYWdlcyBpbiB0aGUgcmFuZ2Ugc3BlY2lmaWVkIGJ5DQo+ICAgLkkg
YWRkcg0KPiAgIGFuZA0KPiAgIC5JUiBsZW5ndGggLg0KPiAtQ3VycmVudGx5LCBUcmFuc3Bh
cmVudCBIdWdlIFBhZ2VzIHdvcmsgb25seSB3aXRoIHByaXZhdGUgYW5vbnltb3VzIHBhZ2Vz
IChzZWUNCj4gLS5CUiBtbWFwICgyKSkuDQo+ICAgVGhlIGtlcm5lbCB3aWxsIHJlZ3VsYXJs
eSBzY2FuIHRoZSBhcmVhcyBtYXJrZWQgYXMgaHVnZSBwYWdlIGNhbmRpZGF0ZXMNCj4gICB0
byByZXBsYWNlIHRoZW0gd2l0aCBodWdlIHBhZ2VzLg0KPiAgIFRoZSBrZXJuZWwgd2lsbCBh
bHNvIGFsbG9jYXRlIGh1Z2UgcGFnZXMgZGlyZWN0bHkgd2hlbiB0aGUgcmVnaW9uIGlzDQo+
IEBAIC0zNTQsMTIgKzM1Miw0NiBAQCBhbiBhY2Nlc3MgcGF0dGVybiB0aGF0IHRoZSBkZXZl
bG9wZXIga25vd3MgaW4gYWR2YW5jZSB3b24ndCByaXNrDQo+ICAgdG8gaW5jcmVhc2UgdGhl
IG1lbW9yeSBmb290cHJpbnQgb2YgdGhlIGFwcGxpY2F0aW9uIHdoZW4gdHJhbnNwYXJlbnQN
Cj4gICBodWdlcGFnZXMgYXJlIGVuYWJsZWQuDQo+ICAgLklQDQo+ICsuXCIgY29tbWl0IDk5
Y2IwZGJkNDdhMTVkMzk1YmYzZmFhNzhkYzEyMmJjNWVmZTNmYzANCj4gK1NpbmNlIExpbnV4
IDUuNCwNCj4gK2F1dG9tYXRpYyBzY2FuIG9mIGVsaWdpYmxlIGFyZWFzIGFuZCByZXBsYWNl
bWVudCBieSBodWdlIHBhZ2VzIHdvcmtzIHdpdGgNCj4gK3ByaXZhdGUgYW5vbnltb3VzIHBh
Z2VzIChzZWUNCj4gKy5CUiBtbWFwICgyKSksDQo+ICtzaG1lbSBwYWdlcywNCj4gK2FuZCBm
aWxlLWJhY2tlZCBwYWdlcy4NCj4gK0ZvciBhbGwgbWVtb3J5IHR5cGVzLA0KPiArbWVtb3J5
IG1heSBvbmx5IGJlIHJlcGxhY2VkIGJ5IGh1Z2UgcGFnZXMgb24gaHVnZXBhZ2UtYWxpZ25l
ZCBib3VuZGFyaWVzLg0KPiArRm9yIGZpbGUtbWFwcGVkIG1lbW9yeSBcKGVtIGluY2x1ZGlu
ZyB0bXBmcyAoc2VlDQo+ICsuQlIgdG1wZnMgKDIpKQ0KPiArXChlbSB0aGUgbWFwcGluZyBt
dXN0IGFsc28gYmUgbmF0dXJhbGx5IGh1Z2VwYWdlLWFsaWduZWQgd2l0aGluIHRoZSBmaWxl
Lg0KPiArQWRkaXRpb25hbGx5LA0KPiArZm9yIGZpbGUtYmFja2VkLA0KPiArbm9uLXRtcGZz
IG1lbW9yeSwNCj4gK3RoZSBmaWxlIG11c3Qgbm90IGJlIG9wZW4gZm9yIHdyaXRlIGFuZCB0
aGUgbWFwcGluZyBtdXN0IGJlIGV4ZWN1dGFibGUuDQo+ICsuSVANCj4gK1RoZSBWTUEgbXVz
dCBub3QgYmUgbWFya2VkDQo+ICsuQlIgVk1fTk9IVUdFUEFHRSAsDQo+ICsuQlIgVk1fSFVH
RVRMQiAsDQo+ICsuQlIgVk1fSU8gLA0KPiArLkJSIFZNX0RPTlRFWFBBTkQgLA0KPiArLkJS
IFZNX01JWEVETUFQICwNCj4gK29yDQo+ICsuQlIgVk1fUEZOTUFQICwNCj4gK25vciBjYW4g
aXQgYmUgc3RhY2sgbWVtb3J5IG9yIGJhY2tlZCBieSBhIERBWC1lbmFibGVkIGRldmljZQ0K
PiArKHVubGVzcyB0aGUgREFYIGRldmljZSBpcyBob3QtcGx1Z2dlZCBhcyBTeXN0ZW0gUkFN
KS4NCj4gK1RoZSBwcm9jZXNzIG11c3QgYWxzbyBub3QgaGF2ZQ0KPiArLkIgUFJfU0VUX1RI
UF9ESVNBQkxFDQo+ICtzZXQgKHNlZQ0KPiArLkJSIHByY3RsICgyKSApLg0KPiArLklQDQo+
ICAgVGhlDQo+ICAgLkIgTUFEVl9IVUdFUEFHRQ0KPiAgIGFuZA0KPiAgIC5CIE1BRFZfTk9I
VUdFUEFHRQ0KPiAgIG9wZXJhdGlvbnMgYXJlIGF2YWlsYWJsZSBvbmx5IGlmIHRoZSBrZXJu
ZWwgd2FzIGNvbmZpZ3VyZWQgd2l0aA0KPiAtLkJSIENPTkZJR19UUkFOU1BBUkVOVF9IVUdF
UEFHRSAuDQo+ICsuQiBDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0UNCj4gK2FuZCBmaWxl
L3NobWVtIG1lbW9yeSBpcyBvbmx5IHN1cHBvcnRlZCBpZiB0aGUga2VybmVsIHdhcyBjb25m
aWd1cmVkIHdpdGgNCj4gKy5CUiBDT05GSUdfUkVBRF9PTkxZX1RIUF9GT1JfRlMgLg0KPiAg
IC5UUA0KPiAgIC5CUiBNQURWX05PSFVHRVBBR0UgIiAoc2luY2UgTGludXggMi42LjM4KSIN
Cj4gICBFbnN1cmVzIHRoYXQgbWVtb3J5IGluIHRoZSBhZGRyZXNzIHJhbmdlIHNwZWNpZmll
ZCBieQ0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------vBGeZdrlh6jKMX94o1beoLOU--

--------------wqt520wayN1HGpsXAFnzBqIn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNeYvwACgkQnowa+77/
2zJIDQ//aFeUQpw8QqmHp6xBcqzQZYvIvbaZVjEUyPITwB+cw4C+PcLPgcMo0hH2
aHOy/nWfZEGYe9F48ilrIPuw3uOuk3AbGR+jjK22jHgZa138/nOnIBEDR33gr0oz
vm8ynM9vKLDIO/QCIWH62ZQVw0/p9X+f82EHElClzZWk+kYFsN8cC8XiDlY2cZDx
dPDZv0iviB4/3wnHcWDNLUoGzh72Achduz+tNNL0MJYeV5Jwq9OLT2IMheLo1yI4
yEMVrvxHq93a9rvdwXNOwgWfFpiX0xklMQFW30Mc1U231KaIlhSX18kCFOUv8SCg
wGUozWaIpf4METO4XDZdaNuIezDePh8Om+BnfKsEu1ThRTIv1as3sik5+aUpwJ0Q
MZmwbIv7HWK4rn617mUowGmcoxSTXDTc0T8+4w0iwvZoq3xkATqsxA7fa5W8xrla
P3ZX1TGadcrU8Is69II6YnLl1WuMKAwd2d7T46wI/Qki4Z+LmLrWGyEZTJLJR6Bm
1P2auk0eOkGzoD9dy+MZkjZLHDNTZNsSjXzNG1/ouHKpQoGePc5bh9FODxF1wG+m
Pkx4Oa23LdG8QxSpfreJW92XE1tX1WN2GOZzEzCxkNTTzdaEvp8v9tG6ySobl4L7
VZDOQYREjlBk05mKU4isuWXx58nEEkm5GP2pb6Hc4RYwN4WL5s0=
=LM5L
-----END PGP SIGNATURE-----

--------------wqt520wayN1HGpsXAFnzBqIn--
