Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C4F1614E95
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 16:47:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231443AbiKAPrY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 11:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbiKAPrW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 11:47:22 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B513F5BA
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 08:47:21 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id bs21so20738320wrb.4
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 08:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ua6yeRYAOlwWv5k+j6/J66bTkSBUOduvp2OmQM+JHoI=;
        b=BPLo6Pov63iBHFkISaT9qlgN2R+CoU53pBB0/5ref1IrfgQ09WuRF1BhLwuz46/nbw
         Tm3RjkNOv7qA8DfbLepCaRlsH1PDZ1nAKxcc3goLw6Jrx4Ev+he/TwYRrSwZEYnrhO6n
         61E6MVBJ3UlV4P6mJJzYKLOl5p0xY4yfdrctXQJTw9mihMvJDCk+Um8UD91Z0PQ+G02J
         i3Sgbit7aYjWCLMquVATIMGLinxGSZq8y6EubCMsWdqcDn+ne6EIs+hi2f2RuYNHr1xA
         Z4GbpRRD5iEhSOU0lmjQyA+g1Q0MNGKq1/MNttcG33aBqjQOlB/y06fUHVRvHpXgF/Mj
         EHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ua6yeRYAOlwWv5k+j6/J66bTkSBUOduvp2OmQM+JHoI=;
        b=tfG+f/pCjRRd+pqsRoSVNaOdhtaKqSeK2alfaQZ2xLJ1TVeuLr4A4cJgL15YmPdpvZ
         7mlxC/0xBTBVQbsfgZtIMDUmKm306lGokRpjGnwR6ig2sue1d87nfsupJvw8jkRtNdcy
         iIiDdfAB/s2/B1Gx6xu6owha5ubkaLeu8bSEuvbRuJKz6l/uWdn9c+pSFmIymiViBTBL
         +6G9FhJATjTyChb31yEXmW6fbPnJUQoYaY+uvwExACYn1bHcnyTO61TOCxyI/ViqOgLe
         xFEhO5a4+qV70bs5t5xbgcmxg5iF+SXgqUKuIMN+/iLm/qzdQLSUBcOwQu6jwgE1nX/P
         C3CA==
X-Gm-Message-State: ACrzQf3ymyAshAc2c9yQ4wnmdOb8Sf396L8Jy4QDiEgFi9aPNBn43IrT
        wQr+ojoKb5kVUAeIfKN8wX4=
X-Google-Smtp-Source: AMsMyM7pCRbEO/zVf7/imS8UqvdDA7pyspjkcyVdKkIsoivLVUXnwSV/UKNPUTP2FFmkYi2NPckNlg==
X-Received: by 2002:a05:6000:118c:b0:236:bc26:7e0d with SMTP id g12-20020a056000118c00b00236bc267e0dmr9640070wrx.662.1667317639575;
        Tue, 01 Nov 2022 08:47:19 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c192-20020a1c35c9000000b003c6f3f6675bsm11046443wma.26.2022.11.01.08.47.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 08:47:18 -0700 (PDT)
Message-ID: <d97032ba-0fb4-c182-f1fb-cc8411218b7f@gmail.com>
Date:   Tue, 1 Nov 2022 16:47:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v5] madvise.2: add documentation for
 MADV_COLLAPSE
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221101150323.89743-1-zokeefe@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221101150323.89743-1-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1pzH7AbWWov4Y3pPkyUg5nYq"
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
--------------1pzH7AbWWov4Y3pPkyUg5nYq
Content-Type: multipart/mixed; boundary="------------07010A840wYyUXxQDuAXs6L8";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <d97032ba-0fb4-c182-f1fb-cc8411218b7f@gmail.com>
Subject: Re: [PATCH man-pages v5] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221101150323.89743-1-zokeefe@google.com>
In-Reply-To: <20221101150323.89743-1-zokeefe@google.com>

--------------07010A840wYyUXxQDuAXs6L8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCENCg0KT24gMTEvMS8yMiAxNjowMywgWmFjaCBPS2VlZmUgd3JvdGU6DQo+IEZy
b206IFphY2ggTydLZWVmZSA8em9rZWVmZUBnb29nbGUuY29tPg0KPiANCj4gTGludXggNi4x
IGludHJvZHVjZWQgTUFEVl9DT0xMQVBTRSBpbiB1cHN0cmVhbSBjb21taXQgN2Q4ZmFhZjE1
NTQ1DQo+ICgibW0vbWFkdmlzZTogaW50cm9kdWNlIE1BRFZfQ09MTEFQU0Ugc3luYyBodWdl
cGFnZSBjb2xsYXBzZSIpIGFuZA0KPiB1cHN0cmVhbSBjb21taXQgMzQ0ODgzOTlmYTA4ICgi
bW0vbWFkdmlzZTogYWRkIGZpbGUgYW5kIHNobWVtIHN1cHBvcnQgdG8NCj4gTUFEVl9DT0xM
QVBTRSIpLiAgVXBkYXRlIHRoZSBtYW4tcGFnZXMgZm9yIG1hZHZpc2UoMikgYW5kDQo+IHBy
b2Nlc3NfbWFkdmlzZSgyKS4NCj4gDQo+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LW1tLzIwMjIwOTIyMjI0MDQ2LjExNDMyMDQtMS16b2tlZWZlQGdvb2dsZS5jb20v
DQo+IExpbms6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzIwMjIwNzA2MjM1
OTM2LjIxOTcxOTUtMS16b2tlZWZlQGdvb2dsZS5jb20vDQo+IFNpZ25lZC1vZmYtYnk6IFph
Y2ggTydLZWVmZSA8em9rZWVmZUBnb29nbGUuY29tPg0KDQpQYXRjaCBhcHBsaWVkLg0KU2Vl
IGEgbWlub3IgZWRpdCBiZWxvdyBmb3IgY3VyaW9zaXR5Lg0KSXQgd2FzIHZlcnkgbmljZSB0
byBnZXQgdGhpcyBwYXRjaCBzZXQgaW1wcm92ZWQgYW5kIGFwcGxpZWQhDQoNCkNoZWVycywN
Cg0KQWxleA0KDQo+IC0tLQ0KPiANCj4gdjRbMV0gLT4gdjUNCj4gLSBSZWJhc2VkIHRvIGxh
dGVzdCBtYXN0ZXINCj4gLSAoQWxlamFuZHJvIENvbG9tYXIpIEFwcGxpZWQgZGlmZiB0byBy
ZW1vdmUgc3B1cmlvdXMgZmlsZSBhbmQgZml4DQo+ICAgIHNlbWFudGljIG5ld2xpbmVzLg0K
PiAtIChBbGVqYW5kcm8gQ29sb21hcikgUmV3b3JkZWQgZG9jdW1lbnRhdGlvbiBkZXNjcmli
aW5nIGJlaGF2aW9yIG9mDQo+ICAgIHNldHRpbmcgZXJybm8gd2hlbiBtdWx0aXBsZSBodWdl
cGFnZS1hbGlnbmVkL3NpemVkIHJlZ2lvbnMgZmFpbCB0bw0KPiAgICBjb2xsYXBzZS4NCj4g
DQo+IHYzWzJdIC0+IHY0DQo+IC0gUmViYXNlZCB0byBsYXRlc3QgbWFzdGVyDQo+IC0gKEFs
ZWphbmRybyBDb2xvbWFyKSBGaXhlZCB3ZWlyZCwgbm9uLWFzY2lpIGNoYXJzOiBlMiA4MCA5
OSAtPiAiJyINCj4gLSAoQWxlamFuZHJvIENvbG9tYXIpIFJlcGxhY2VkIC5CUiB3aXRoIC5C
IGRpcmVjdGl2ZSB3aGVuIHRoZSBlbnRpcmUNCj4gICAgbGluZSB3YXMgYm9sZCAobm8gbm9u
LWJvbGQgcGFydCkNCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1t
YW4vMjAyMjEwMzEyMjU1MDAuMzk5NDU0Mi0xLXpva2VlZmVAZ29vZ2xlLmNvbS8NCj4gWzJd
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1hbi9iYjNiNWMzYy0zOTY2LWVhMWEt
NmQ4NC00ZjdmM2FmYTM3Y2FAZ21haWwuY29tL1QvI3UNCj4gDQo+ICAgbWFuMi9tYWR2aXNl
LjIgICAgICAgICB8IDkxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLQ0KPiAgIG1hbjIvcHJvY2Vzc19tYWR2aXNlLjIgfCAxMCArKysrKw0KPiAgIDIgZmls
ZXMgY2hhbmdlZCwgOTkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9tYW4yL21hZHZpc2UuMiBiL21hbjIvbWFkdmlzZS4yDQo+IGluZGV4IGVk
ZjgwNTc0MC4uMDM4ZTYwMjNkIDEwMDY0NA0KPiAtLS0gYS9tYW4yL21hZHZpc2UuMg0KPiAr
KysgYi9tYW4yL21hZHZpc2UuMg0KPiBAQCAtMzg2LDkgKzM4NiwxMCBAQCBzZXQgKHNlZQ0K
PiAgIC5CUiBwcmN0bCAoMikpLg0KPiAgIC5JUA0KPiAgIFRoZQ0KPiAtLkIgTUFEVl9IVUdF
UEFHRQ0KPiArLkJSIE1BRFZfSFVHRVBBR0UgLA0KPiArLkJSIE1BRFZfTk9IVUdFUEFHRSAs
DQo+ICAgYW5kDQo+IC0uQiBNQURWX05PSFVHRVBBR0UNCj4gKy5CIE1BRFZfQ09MTEFQU0UN
Cj4gICBvcGVyYXRpb25zIGFyZSBhdmFpbGFibGUgb25seSBpZiB0aGUga2VybmVsIHdhcyBj
b25maWd1cmVkIHdpdGgNCj4gICAuQiBDT05GSUdfVFJBTlNQQVJFTlRfSFVHRVBBR0UNCj4g
ICBhbmQgZmlsZS9zaG1lbSBtZW1vcnkgaXMgb25seSBzdXBwb3J0ZWQgaWYgdGhlIGtlcm5l
bCB3YXMgY29uZmlndXJlZCB3aXRoDQo+IEBAIC00MDEsNiArNDAyLDgyIEBAIGFuZA0KPiAg
IC5JIGxlbmd0aA0KPiAgIHdpbGwgbm90IGJlIGJhY2tlZCBieSB0cmFuc3BhcmVudCBodWdl
cGFnZXMuDQo+ICAgLlRQDQo+ICsuQlIgTUFEVl9DT0xMQVBTRSAiIChzaW5jZSBMaW51eCA2
LjEpIg0KPiArLlwiIGNvbW1pdCA3ZDhmYWFmMTU1NDU0Zjg3OThlYzU2NDA0ZmFjYTI5YTgy
Njg5Yzc3DQo+ICsuXCIgY29tbWl0IDM0NDg4Mzk5ZmEwOGZhYWY2NjQ3NDNmYTU0YjI3MWVi
NmY5ZTEzMjENCj4gK1BlcmZvcm0gYSBiZXN0LWVmZm9ydCBzeW5jaHJvbm91cyBjb2xsYXBz
ZSBvZg0KPiArdGhlIG5hdGl2ZSBwYWdlcyBtYXBwZWQgYnkgdGhlIG1lbW9yeSByYW5nZQ0K
PiAraW50byBUcmFuc3BhcmVudCBIdWdlIFBhZ2VzIChUSFBzKS4NCj4gKy5CIE1BRFZfQ09M
TEFQU0UNCj4gK29wZXJhdGVzIG9uIHRoZSBjdXJyZW50IHN0YXRlIG9mIG1lbW9yeSBvZiB0
aGUgY2FsbGluZyBwcm9jZXNzIGFuZA0KPiArbWFrZXMgbm8gcGVyc2lzdGVudCBjaGFuZ2Vz
IG9yIGd1YXJhbnRlZXMgb24gaG93IHBhZ2VzIHdpbGwgYmUgbWFwcGVkLA0KPiArY29uc3Ry
dWN0ZWQsDQo+ICtvciBmYXVsdGVkIGluIHRoZSBmdXR1cmUuDQo+ICsuSVANCj4gKy5CIE1B
RFZfQ09MTEFQU0UNCj4gK3N1cHBvcnRzIHByaXZhdGUgYW5vbnltb3VzIHBhZ2VzIChzZWUN
Cj4gKy5CUiBtbWFwICgyKSksDQo+ICtzaG1lbSBwYWdlcywNCj4gK2FuZCBmaWxlLWJhY2tl
ZCBwYWdlcy4NCj4gK1NlZQ0KPiArLkIgTUFEVl9IVUdFUEFHRQ0KPiArZm9yIGdlbmVyYWwg
aW5mb3JtYXRpb24gb24gbWVtb3J5IHJlcXVpcmVtZW50cyBmb3IgVEhQLg0KPiArSWYgdGhl
IHJhbmdlIHByb3ZpZGVkIHNwYW5zIG11bHRpcGxlIFZNQXMsDQo+ICt0aGUgc2VtYW50aWNz
IG9mIHRoZSBjb2xsYXBzZSBvdmVyIGVhY2ggVk1BIGlzIGluZGVwZW5kZW50IGZyb20gdGhl
IG90aGVycy4NCj4gK0lmIGNvbGxhcHNlIG9mIGEgZ2l2ZW4gaHVnZSBwYWdlLWFsaWduZWQv
c2l6ZWQgcmVnaW9uIGZhaWxzLA0KPiArdGhlIG9wZXJhdGlvbiBtYXkgY29udGludWUgdG8g
YXR0ZW1wdCBjb2xsYXBzaW5nDQo+ICt0aGUgcmVtYWluZGVyIG9mIHRoZSBzcGVjaWZpZWQg
bWVtb3J5Lg0KPiArLkIgTUFEVl9DT0xMQVBTRQ0KPiArd2lsbCBhdXRvbWF0aWNhbGx5IGNs
YW1wIHRoZSBwcm92aWRlZCByYW5nZSB0byBiZSBodWdlcGFnZS1hbGlnbmVkLg0KPiArLklQ
DQo+ICtBbGwgbm9uLXJlc2lkZW50IHBhZ2VzIGNvdmVyZWQgYnkgdGhlIHJhbmdlDQo+ICt3
aWxsIGZpcnN0IGJlIHN3YXBwZWQvZmF1bHRlZC1pbiwNCj4gK2JlZm9yZSBiZWluZyBjb3Bp
ZWQgb250byBhIGZyZXNobHkgYWxsb2NhdGVkIGh1Z2VwYWdlLg0KPiArSWYgdGhlIG5hdGl2
ZSBwYWdlcyBjb21wb3NlIHRoZSBzYW1lIFBURS1tYXBwZWQgaHVnZXBhZ2UsDQo+ICthbmQg
YXJlIHN1aXRhYmx5IGFsaWduZWQsDQo+ICthbGxvY2F0aW9uIG9mIGEgbmV3IGh1Z2VwYWdl
IG1heSBiZSBlbGlkZWQgYW5kDQo+ICtjb2xsYXBzZSBtYXkgaGFwcGVuIGluLXBsYWNlLg0K
PiArVW5tYXBwZWQgcGFnZXMgd2lsbCBoYXZlIHRoZWlyIGRhdGEgZGlyZWN0bHkgaW5pdGlh
bGl6ZWQgdG8gMA0KPiAraW4gdGhlIG5ldyBodWdlcGFnZS4NCj4gK0hvd2V2ZXIsDQo+ICtm
b3IgZXZlcnkgZWxpZ2libGUgaHVnZXBhZ2UtYWxpZ25lZC9zaXplZCByZWdpb24gdG8gYmUg
Y29sbGFwc2VkLA0KPiArYXQgbGVhc3Qgb25lIHBhZ2UgbXVzdCBjdXJyZW50bHkgYmUgYmFj
a2VkIGJ5IHBoeXNpY2FsIG1lbW9yeS4NCj4gKy5JUA0KPiArLkIgTUFEVl9DT0xMQVBTRQ0K
PiAraXMgaW5kZXBlbmRlbnQgb2YgYW55IHN5c2ZzDQo+ICsoc2VlDQo+ICsuQlIgc3lzZnMg
KDUpKQ0KPiArc2V0dGluZyB1bmRlcg0KPiArLklSIC9zeXMva2VybmVsL21tL3RyYW5zcGFy
ZW50X2h1Z2VwYWdlICwNCj4gK2JvdGggaW4gdGVybXMgb2YgZGV0ZXJtaW5pbmcgVEhQIGVs
aWdpYmlsaXR5LA0KPiArYW5kIGFsbG9jYXRpb24gc2VtYW50aWNzLg0KPiArU2VlIExpbnV4
IGtlcm5lbCBzb3VyY2UgZmlsZQ0KPiArLkkgRG9jdW1lbnRhdGlvbi9hZG1pblwtZ3VpZGUv
bW0vdHJhbnNodWdlLnJzdA0KPiArZm9yIG1vcmUgaW5mb3JtYXRpb24uDQo+ICsuQiBNQURW
X0NPTExBUFNFDQo+ICthbHNvIGlnbm9yZXMNCj4gKy5CIGh1Z2U9DQo+ICt0bXBmcyBtb3Vu
dCB3aGVuIG9wZXJhdGluZyBvbiB0bXBmcyBmaWxlcy4NCj4gK0FsbG9jYXRpb24gZm9yIHRo
ZSBuZXcgaHVnZXBhZ2UgbWF5IGVudGVyIGRpcmVjdCByZWNsYWltIGFuZC9vciBjb21wYWN0
aW9uLA0KPiArcmVnYXJkbGVzcyBvZiBWTUEgZmxhZ3MNCj4gKyh0aG91Z2gNCj4gKy5CIFZN
X05PSFVHRVBBR0UNCj4gK2lzIHN0aWxsIHJlc3BlY3RlZCkuDQo+ICsuSVANCj4gK1doZW4g
dGhlIHN5c3RlbSBoYXMgbXVsdGlwbGUgTlVNQSBub2RlcywNCj4gK3RoZSBodWdlcGFnZSB3
aWxsIGJlIGFsbG9jYXRlZCBmcm9tDQo+ICt0aGUgbm9kZSBwcm92aWRpbmcgdGhlIG1vc3Qg
bmF0aXZlIHBhZ2VzLg0KPiArLklQDQo+ICtJZiBhbGwgaHVnZXBhZ2Utc2l6ZWQvYWxpZ25l
ZCByZWdpb25zIGNvdmVyZWQgYnkgdGhlIHByb3ZpZGVkIHJhbmdlIHdlcmUNCj4gK2VpdGhl
ciBzdWNjZXNzZnVsbHkgY29sbGFwc2VkLA0KPiArb3Igd2VyZSBhbHJlYWR5IFBNRC1tYXBw
ZWQgVEhQcywNCj4gK3RoaXMgb3BlcmF0aW9uIHdpbGwgYmUgZGVlbWVkIHN1Y2Nlc3NmdWwu
DQo+ICtOb3RlIHRoYXQgdGhpcyBkb2Vzbid0IGd1YXJhbnRlZSBhbnl0aGluZyBhYm91dA0K
PiArb3RoZXIgcG9zc2libGUgbWFwcGluZ3Mgb2YgdGhlIG1lbW9yeS4NCj4gK0luIHRoZSBl
dmVudCBtdWx0aXBsZSBodWdlcGFnZS1hbGlnbmVkL3NpemVkIGFyZWFzIGZhaWwgdG8gY29s
bGFwc2UsDQo+ICtvbmx5IHRoZSBtb3N0IHJlY2VudGx5LWZhaWxlZCBjb2RlIHdpbGwgYmUg
c2V0IGluDQoNCkkgc2xpZ2h0bHkgY2hhbmdlZCB0aGUgdXNlIG9mIGh5cGhlbnMgYWJvdmUg
d2l0aCB0aGUgZm9sbG93aW5nIGRpZmY6DQoNCmRpZmYgLS1naXQgYS9tYW4yL21hZHZpc2Uu
MiBiL21hbjIvbWFkdmlzZS4yDQppbmRleCAwMzhlNjAyM2QuLjMzMTQ2NWNmYyAxMDA2NDQN
Ci0tLSBhL21hbjIvbWFkdmlzZS4yDQorKysgYi9tYW4yL21hZHZpc2UuMg0KQEAgLTQ3NSw3
ICs0NzUsNyBAQCAuU1MgTGludXgtc3BlY2lmaWMgYWR2aWNlIHZhbHVlcw0KICBOb3RlIHRo
YXQgdGhpcyBkb2Vzbid0IGd1YXJhbnRlZSBhbnl0aGluZyBhYm91dA0KICBvdGhlciBwb3Nz
aWJsZSBtYXBwaW5ncyBvZiB0aGUgbWVtb3J5Lg0KICBJbiB0aGUgZXZlbnQgbXVsdGlwbGUg
aHVnZXBhZ2UtYWxpZ25lZC9zaXplZCBhcmVhcyBmYWlsIHRvIGNvbGxhcHNlLA0KLW9ubHkg
dGhlIG1vc3QgcmVjZW50bHktZmFpbGVkIGNvZGUgd2lsbCBiZSBzZXQgaW4NCitvbmx5IHRo
ZSBtb3N0LXJlY2VudGx5XFtlbl1mYWlsZWQgY29kZSB3aWxsIGJlIHNldCBpbg0KICAuSVIg
ZXJybm8gLg0KICAuVFANCiAgLkJSIE1BRFZfRE9OVERVTVAgIiAoc2luY2UgTGludXggMy40
KSINCg0KDQpSYXRpb25hbGU6DQo8aHR0cHM6Ly9saXN0cy5nbnUub3JnL2FyY2hpdmUvaHRt
bC9ncm9mZi8yMDIyLTEwL21zZzAwMDE5Lmh0bWw+DQoNCg0KPiArLklSIGVycm5vIC4NCj4g
Ky5UUA0KPiAgIC5CUiBNQURWX0RPTlREVU1QICIgKHNpbmNlIExpbnV4IDMuNCkiDQo+ICAg
LlwiIGNvbW1pdCA5MDlhZjc2OGU4ODg2NzAxNmY0MjcyNjRhZTM5ZDI3YTU3YjZhOGVkDQo+
ICAgLlwiIGNvbW1pdCBhY2NiNjFmZTdiYjBmNWMyYTQxMDIyMzllNDk4MTY1MGY5MDQ4NTE5
DQo+IEBAIC02MjAsNiArNjk3LDExIEBAIEEga2VybmVsIHJlc291cmNlIHdhcyB0ZW1wb3Jh
cmlseSB1bmF2YWlsYWJsZS4NCj4gICAuQiBFQkFERg0KPiAgIFRoZSBtYXAgZXhpc3RzLCBi
dXQgdGhlIGFyZWEgbWFwcyBzb21ldGhpbmcgdGhhdCBpc24ndCBhIGZpbGUuDQo+ICAgLlRQ
DQo+ICsuQiBFQlVTWQ0KPiArKGZvcg0KPiArLkJSIE1BRFZfQ09MTEFQU0UgKQ0KPiArQ291
bGQgbm90IGNoYXJnZSBodWdlcGFnZSB0byBjZ3JvdXA6IGNncm91cCBsaW1pdCBleGNlZWRl
ZC4NCj4gKy5UUA0KPiAgIC5CIEVGQVVMVA0KPiAgIC5JIGFkdmljZQ0KPiAgIGlzDQo+IEBA
IC03MTcsNiArNzk5LDExIEBAIG1heGltdW0gcmVzaWRlbnQgc2V0IHNpemUuDQo+ICAgTm90
IGVub3VnaCBtZW1vcnk6IHBhZ2luZyBpbiBmYWlsZWQuDQo+ICAgLlRQDQo+ICAgLkIgRU5P
TUVNDQo+ICsoZm9yDQo+ICsuQlIgTUFEVl9DT0xMQVBTRSApDQo+ICtOb3QgZW5vdWdoIG1l
bW9yeTogY291bGQgbm90IGFsbG9jYXRlIGh1Z2VwYWdlLg0KPiArLlRQDQo+ICsuQiBFTk9N
RU0NCj4gICBBZGRyZXNzZXMgaW4gdGhlIHNwZWNpZmllZCByYW5nZSBhcmUgbm90IGN1cnJl
bnRseQ0KPiAgIG1hcHBlZCwgb3IgYXJlIG91dHNpZGUgdGhlIGFkZHJlc3Mgc3BhY2Ugb2Yg
dGhlIHByb2Nlc3MuDQo+ICAgLlRQDQo+IGRpZmYgLS1naXQgYS9tYW4yL3Byb2Nlc3NfbWFk
dmlzZS4yIGIvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiBpbmRleCBhYzk4ODUwYTkuLjky
ODc4Mjg2YiAxMDA2NDQNCj4gLS0tIGEvbWFuMi9wcm9jZXNzX21hZHZpc2UuMg0KPiArKysg
Yi9tYW4yL3Byb2Nlc3NfbWFkdmlzZS4yDQo+IEBAIC03Myw2ICs3MywxMCBAQCBhcmd1bWVu
dCBpcyBvbmUgb2YgdGhlIGZvbGxvd2luZyB2YWx1ZXM6DQo+ICAgU2VlDQo+ICAgLkJSIG1h
ZHZpc2UgKDIpLg0KPiAgIC5UUA0KPiArLkIgTUFEVl9DT0xMQVBTRQ0KPiArU2VlDQo+ICsu
QlIgbWFkdmlzZSAoMikuDQo+ICsuVFANCj4gICAuQiBNQURWX1BBR0VPVVQNCj4gICBTZWUN
Cj4gICAuQlIgbWFkdmlzZSAoMikuDQo+IEBAIC0xNzMsNiArMTc3LDEyIEBAIFRoZSBjYWxs
ZXIgZG9lcyBub3QgaGF2ZSBwZXJtaXNzaW9uIHRvIGFjY2VzcyB0aGUgYWRkcmVzcyBzcGFj
ZSBvZiB0aGUgcHJvY2Vzcw0KPiAgIC5UUA0KPiAgIC5CIEVTUkNIDQo+ICAgVGhlIHRhcmdl
dCBwcm9jZXNzIGRvZXMgbm90IGV4aXN0IChpLmUuLCBpdCBoYXMgdGVybWluYXRlZCBhbmQg
YmVlbiB3YWl0ZWQgb24pLg0KPiArLlBQDQo+ICtTZWUNCj4gKy5CUiBtYWR2aXNlICgyKQ0K
PiArZm9yDQo+ICsuSVIgYWR2aWNlIC1zcGVjaWZpYw0KPiArZXJyb3JzLg0KPiAgIC5TSCBW
RVJTSU9OUw0KPiAgIFRoaXMgc3lzdGVtIGNhbGwgZmlyc3QgYXBwZWFyZWQgaW4gTGludXgg
NS4xMC4NCj4gICAuXCIgY29tbWl0IGVjYjhhYzhiMWYxNDY5MTVhYTZiOTY0NDliNjZkZDQ4
OTg0Y2FhY2MNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------07010A840wYyUXxQDuAXs6L8--

--------------1pzH7AbWWov4Y3pPkyUg5nYq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNhP30ACgkQnowa+77/
2zJTrg//cavY7NeZ1x2/lj4UixlWhzNu+Cw0oXz+O01pOCq+LHrEnPK2n1vcJVRc
lTQj4l+nwmHua3M+nhFuyLIDk3JBDKzMKdWQBjRLNKV8T+122H/4fAlc7Thhzyse
s08+ENKcwoslrf3U6vROe6jhisk8xcqcumfJgBsvA9kG8QSzGO0HXEOQbFf1DtYh
oh1LDIj2vSPAwNcaDEAqQJFK/As4Eo5xY/ywNbWlt82H67oFOd54h8PAhu87dGdE
LP9xfM0NDk/35ZharI46rK70X1Nt7a2uR1DADwDgcenrR51qNh7pJqLq2frxw0y4
PbVjEHYvqoMFCUbZyKtq/xGBbpl3COE63nCLX0QaXSyyeTx0hRPjwjokot8HbeWf
ttdOvHp7OAuVOdPCWCzLWo+QLHRemkQUBhxa/rx3zeZMIOr/T+6euI08LW0j0uJ3
PwBrBRtbO5V4LpgUd5cUR3+cC4aWUgtRnidw5jpcYb6pdjy/y9rJZKa4wOHu/89S
NfqAUiW9wK0AFJuL7cBrUUmZEj6JXM6ryanwp8k/+ogl+CGnftrbwJBpp4n6ocIj
9b1tROYyFGi2JBlBRh7ln/R0xRESg+kMFXrDY957ErJfmduYCVqdgCz2w+QW7LTl
wHxuJ+TNC6Mouh+197c9tJbpVtallwCiE5qpZn3ipxiz7HI5DZE=
=7Z9A
-----END PGP SIGNATURE-----

--------------1pzH7AbWWov4Y3pPkyUg5nYq--
