Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43CA260295C
	for <lists+linux-man@lfdr.de>; Tue, 18 Oct 2022 12:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229687AbiJRKdM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Oct 2022 06:33:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbiJRKdH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Oct 2022 06:33:07 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED131B40F5
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:33:03 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id bu30so22746101wrb.8
        for <linux-man@vger.kernel.org>; Tue, 18 Oct 2022 03:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZS0zyM0M3Qlht7ka5hwFveGer2Q2OTv8CzioGYd4mw4=;
        b=hnG3agYmGiidRz+oDWTDt35aNDQTreOWfjOAx5dI6Ga5uS/MVn3hdWsZgD+06Bs071
         9UEYo9PHgb8EH7CpKEAxwkd/ExjxKlla1nV8kSRvIHLD1R4RTGi9MIhYiGo4upG1hNB4
         kcucCNcxbjUkJACfb/ho5TVigjjF3qfZ/HHa1JPDdRSbUhKRPl4UYzjQuIJGETfJlSS6
         0K3ujyFqP7DGKflCWUQHP40ElSa2okb8Aev+G7MIjITy4XUqvINj4HuyEiMIaO3Pcjnw
         UU+3Az4qpeb3Cuz/dTCIybLUFzGijmyyJMrB7SkU0Ur/HNTsiSPPCCZBN25uEJZOK4gw
         AGHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZS0zyM0M3Qlht7ka5hwFveGer2Q2OTv8CzioGYd4mw4=;
        b=aLGZGgOHYSFE62rM1g/DSkTd7WjWeMqjg54QI1oJTrDprsGkwc7sb5TjXp46H3J2dq
         z2ClyI/lsCImh7yBiBMJ3CyermqdOkw5dfQfJSMs3DYTfkmLowPLAHAn1PqcRszeCHIB
         a96mqndR03TEa2bIjHukv+//XEodOFXPHfLVfU8iom88D/z72ViW6urW0KRuAOIi+EMf
         /Hv71SQuxNIkvoQ00W2YVqCoGUcRJS+sMQ7qt7HvGSJLdVRMnowRTXwuEwWIsMbD6UBO
         dBQnoyT8E9WYLfL+vkclsUhCCFgB3nHzTbvIL8fie4ZyyOPA6Uv56l9W55Edu0agG9KQ
         l16A==
X-Gm-Message-State: ACrzQf19fV8Myy6d/GqOktnuL2Ku8W+HXJx91mhogAxBBGgWs99do7ju
        1CzRhk3jqQ3iCBOERw3nkoM=
X-Google-Smtp-Source: AMsMyM4cATRgZNWdo/SbyStGXqi29/RliHTvDoGcc4B+fV1uyNaIvsg/5oO24bTpU2CYrqHiYFKq1g==
X-Received: by 2002:a5d:6683:0:b0:22c:dcc5:abb2 with SMTP id l3-20020a5d6683000000b0022cdcc5abb2mr1396886wru.85.1666089181953;
        Tue, 18 Oct 2022 03:33:01 -0700 (PDT)
Received: from [192.168.43.80] ([46.6.220.148])
        by smtp.gmail.com with ESMTPSA id q65-20020a1c4344000000b003a8434530bbsm18155832wma.13.2022.10.18.03.33.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Oct 2022 03:33:01 -0700 (PDT)
Message-ID: <d748d5dd-d1ef-d421-25f3-1706e9ce1eea@gmail.com>
Date:   Tue, 18 Oct 2022 12:32:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH man-pages 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
Content-Language: en-US
To:     Zach OKeefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-2-zokeefe@google.com>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221017175523.2048887-2-zokeefe@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OP3A9qggn6kXK2sehj32h1SM"
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
--------------OP3A9qggn6kXK2sehj32h1SM
Content-Type: multipart/mixed; boundary="------------aZGZWuXkFe7t0ilBde61ceQC";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Zach OKeefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org
Message-ID: <d748d5dd-d1ef-d421-25f3-1706e9ce1eea@gmail.com>
Subject: Re: [PATCH man-pages 1/4] madvise.2: update THP file/shmem
 documentation for +5.4
References: <20221017175523.2048887-1-zokeefe@google.com>
 <20221017175523.2048887-2-zokeefe@google.com>
In-Reply-To: <20221017175523.2048887-2-zokeefe@google.com>

--------------aZGZWuXkFe7t0ilBde61ceQC
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaCwNCg0KT24gMTAvMTcvMjIgMTk6NTUsIFphY2ggT0tlZWZlIHdyb3RlOg0KPiBG
cm9tOiBaYWNoIE8nS2VlZmUgPHpva2VlZmVAZ29vZ2xlLmNvbT4NCj4gDQo+IFNpbmNlIExp
bnV4IDUuNCwgVHJhbnNwYXJlbnQgSHVnZSBQYWdlcyBub3cgc3VwcG9ydCBib3RoIGZpbGUt
YmFja2VkDQo+IG1lbW9yeSBhbmQgc2htZW0gbWVtb3J5LiBVcGRhdGUgTUFEVl9IVUdFUEFH
RSBhZHZpY2UgZGVzY3JpcHRpb24gdG8NCj4gcmVmbGVjdCB0aGlzLg0KPiANCj4gQWRkaXRp
b25hbGx5LCBleHBhbmQgdGhlIGRlc2NyaXB0aW9uIG9mIHJlcXVpcmVtZW50cyBmb3IgbWVt
b3J5IHRvIGJlDQo+IGNvbnNpZGVyZWQgZWxpZ2libGUgZm9yIFRIUDogYWxpZ25tZW50IC8g
bWFwcGluZyByZXF1aXJlbWVudHMsIFZNQQ0KPiBmbGFncywgcHJjdGwoMikgc2V0dGluZ3Ms
IGlub2RlIHN0YXR1cywgZXRjLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogWmFjaCBPJ0tlZWZl
IDx6b2tlZWZlQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgIG1hbjIvbWFkdmlzZS4yIHwgMzcg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQ0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL21hbjIvbWFkdmlzZS4yIGIvbWFuMi9tYWR2aXNlLjINCj4gaW5kZXggODFjY2U1NmFm
Li5lMTRlMGY3ZmIgMTAwNjQ0DQo+IC0tLSBhL21hbjIvbWFkdmlzZS4yDQo+ICsrKyBiL21h
bjIvbWFkdmlzZS4yDQo+IEBAIC0zMjAsOCArMzIwLDYgQEAgRW5hYmxlIFRyYW5zcGFyZW50
IEh1Z2UgUGFnZXMgKFRIUCkgZm9yIHBhZ2VzIGluIHRoZSByYW5nZSBzcGVjaWZpZWQgYnkN
Cj4gICAuSSBhZGRyDQo+ICAgYW5kDQo+ICAgLklSIGxlbmd0aCAuDQo+IC1DdXJyZW50bHks
IFRyYW5zcGFyZW50IEh1Z2UgUGFnZXMgd29yayBvbmx5IHdpdGggcHJpdmF0ZSBhbm9ueW1v
dXMgcGFnZXMgKHNlZQ0KPiAtLkJSIG1tYXAgKDIpKS4NCj4gICBUaGUga2VybmVsIHdpbGwg
cmVndWxhcmx5IHNjYW4gdGhlIGFyZWFzIG1hcmtlZCBhcyBodWdlIHBhZ2UgY2FuZGlkYXRl
cw0KPiAgIHRvIHJlcGxhY2UgdGhlbSB3aXRoIGh1Z2UgcGFnZXMuDQo+ICAgVGhlIGtlcm5l
bCB3aWxsIGFsc28gYWxsb2NhdGUgaHVnZSBwYWdlcyBkaXJlY3RseSB3aGVuIHRoZSByZWdp
b24gaXMNCj4gQEAgLTM1NCwxMiArMzUyLDQ1IEBAIGFuIGFjY2VzcyBwYXR0ZXJuIHRoYXQg
dGhlIGRldmVsb3BlciBrbm93cyBpbiBhZHZhbmNlIHdvbid0IHJpc2sNCj4gICB0byBpbmNy
ZWFzZSB0aGUgbWVtb3J5IGZvb3RwcmludCBvZiB0aGUgYXBwbGljYXRpb24gd2hlbiB0cmFu
c3BhcmVudA0KPiAgIGh1Z2VwYWdlcyBhcmUgZW5hYmxlZC4NCj4gICAuSVANCj4gKy5cIiBj
b21taXQgOTljYjBkYmQ0N2ExNWQzOTViZjNmYWE3OGRjMTIyYmM1ZWZlM2ZjMA0KPiArU2lu
Y2UgTGludXggNS40LA0KPiArYXV0b21hdGljIHNjYW4gb2YgZWxpZ2libGUgYXJlYXMgYW5k
IHJlcGxhY2VtZW50IGJ5IGh1Z2UgcGFnZXMgd29ya3Mgd2l0aA0KPiArcHJpdmF0ZSBhbm9u
eW1vdXMgcGFnZXMgKHNlZQ0KPiArLkJSIG1tYXAgKDIpKSwNCj4gK3NobWVtLWJhY2tlZCBw
YWdlcyAoaW5jbHVkaW5nIHRtcGZzIChzZWUNCj4gKy5CUiB0bXBmcyAoNSkpLA0KDQpJIHRo
aW5rIGhlcmUncyBtaXNzaW5nIGEgY2xvc2luZyBwYXJlbnRoZXNpcy4gIFBsZWFzZSBjaGVj
ay4gIE1heWJlIHlvdSANCnByZWZlciBjb21iaW5pbmcgZW0gZGFzaGVzIG9yIGNvbW1hcyB3
aXRoIHBhcmVudGhlc2VzIHRvIGltcHJvdmUgDQp2aXN1YWxseSBkaXNjZXJuaW5nIHN1YmNs
YXVzZXMuDQoNCkNoZWVycywNCkFsZXgNCg0KPiArYW5kIGZpbGUtYmFja2VkIHBhZ2VzLg0K
PiArRm9yIGFsbCBtZW1vcnkgdHlwZXMsDQo+ICttZW1vcnkgbWF5IG9ubHkgYmUgcmVwbGFj
ZWQgYnkgaHVnZSBwYWdlcyBvbiBodWdlcGFnZS1hbGlnbmVkIGJvdW5kYXJpZXMuDQo+ICtG
b3IgZmlsZS1tYXBwZWQgbWVtb3J5IChpbmNsdWRpbmcgdG1wZnMpIHRoZSBtYXBwaW5nIG11
c3QgYWxzbyBiZSBuYXR1cmFsbHkNCj4gK2h1Z2VwYWdlLWFsaWduZWQgd2l0aGluIHRoZSBm
aWxlLg0KPiArQWRkaXRpb25hbGx5LA0KPiArZm9yIGZpbGUtYmFja2VkIChub3QgdG1wZnMp
IG1lbW9yeSwNCj4gK3RoZSBmaWxlIG11c3Qgbm90IGJlIG9wZW4gZm9yIHdyaXRlIGFuZCB0
aGUgbWFwcGluZyBtdXN0IGJlIGV4ZWN1dGFibGUuDQo+ICsuSVANCg0KWy4uLl0NCg0KLS0g
DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQoNCg==

--------------aZGZWuXkFe7t0ilBde61ceQC--

--------------OP3A9qggn6kXK2sehj32h1SM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNOgNsACgkQnowa+77/
2zJATg//YLtG7dQAFqFSz/dVrc8iHddhnhwnXZz6nQuB6454mN7fMYn8eUhvPHj0
MQPQg4icCdkmHEx+hXjQuaogRh7kijcDajPjUGN1UXfDcHFoc03O4LfwQGsEyOw4
K2yjZKW+RLCCxMqSZHpR+wW9AQIN2kYMNAMIuIIgutNKLt11l4fRkWa2wGwAN1zq
i4RYZF881STwk81oi0nvxjfqq8vSQMShR6MUWoC8/NB6LOPHiQx95d0pVzY+Dw14
P+EHoHY2tsFLURP+C6OyBSlLJ800Oyrvb7xAGHDZBGEY8BPY5C+OCaOzYBd5HyI+
y8m4H2129a5+0mirZTq0izqNXUvgz3FrWeSHzxi+LQ04sJDtdogNLsU4A1ShHmv5
U2KkIfkGAdVKd7TzmTFvJXfEgLuqRfg42d+J+mhkPPRkO/eCJT84GVSDWl3chJ27
fkRDAHKraQgMvLkno6Djck5DiAX55fqZy3vpSqfdUs9Htqn+7HA6AH/7p+LB+Qxm
Q2EBcOX6vH51/iuY4OZiRU1X2AzNg8IM6Jbuj6xmfurDOmpSXX3Ex563kZFnNDGT
NA91euiKXg2PB7IiVpL1S1/qwFEtwPGBe7n4Djy6YUeUxzFn5ZN28WRhNnwKKUaw
CMMBo68YA+1jpX6PcKf1PqK2kCzFydAlcT8HNBO4sRKH2qeOAik=
=GViq
-----END PGP SIGNATURE-----

--------------OP3A9qggn6kXK2sehj32h1SM--
