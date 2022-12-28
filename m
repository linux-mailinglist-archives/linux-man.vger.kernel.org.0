Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFE936586B3
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 21:27:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230460AbiL1U1V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Dec 2022 15:27:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230406AbiL1U1V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Dec 2022 15:27:21 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6981815F02
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:27:19 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id fm16-20020a05600c0c1000b003d96fb976efso9750156wmb.3
        for <linux-man@vger.kernel.org>; Wed, 28 Dec 2022 12:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1b86w0I3ERechjjSJJQdD+5q0+E+0JRPj05yMG34WU8=;
        b=U4Qfw9gzHNSR1uPFXt0O9tTL1kVUlRBDjYCqVPFRjf1c5GwveaE0aHBW/HRXG5Gybd
         Y8cavvRJWSqizYI//L9GsRyNJG//fYMkUpYel+2h01bXmEPp37WjSQOEC13HQUkzElth
         shY9blyF85e6v05IDrwi9A8kzXa7LJBVZDjLtJhnvRm/JxMYL6e4esSl+F2V2cO0eS97
         mCP2Jb6ZArk+SWITP1LddKSm/HMEWuTea20aGuDKK822fY5qhsdrtT12LvT540UOYA1l
         UMMeG7uKGIO51n8pMNlDsU4DRSwl4OcDhydi6UKmMLqXJ/1bnLlhCj69ofCOvDom4Obd
         0Wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1b86w0I3ERechjjSJJQdD+5q0+E+0JRPj05yMG34WU8=;
        b=f7qFZwQy+A0Ij5zuhvZFSm7LQrzXM1id6YF1EXYK/UgppS/RamQxrOeXzC5/SkGM3H
         +HQK2+B92fpBTvkupqh9QU6PITVdVt3EonOLdR6DZUTxKnVxh0gvCMZza6BoLdb2/Zh9
         6FrUDYk9AaujhkVTivWBhNLSizQdc21EJQ1tpzeJ/oC7Q5aZOPJUWkHasWBJUpM99dT5
         0TswJFu4XmznSRdq7HFaYxkIr5oj7XxVXFOoCnt/KOaduNtYUKdXJRgLtCbOwwFWoo5K
         m20gyHPb6oRTkfVi+uLkjQ8yAkSsDO2E65IFLBv5P/MNYil3BVUEBI2sz+VDDvMAaTdI
         HPpQ==
X-Gm-Message-State: AFqh2krOkOujhMk9RBaqGtAbjFk5tfVJng9VxHlkJmIMoyFml94tG6+I
        WYSf0tJyNS9BGpj0/Ih7wXs=
X-Google-Smtp-Source: AMrXdXsYfYk33YnCg0PK2HbJO9pmodQXb/FQlgkeSxrbTzzTJ1yaf8CBCfsWecDI/I6mg6Bf+e70oQ==
X-Received: by 2002:a7b:c408:0:b0:3d5:64bf:ccc2 with SMTP id k8-20020a7bc408000000b003d564bfccc2mr18115177wmi.32.1672259237932;
        Wed, 28 Dec 2022 12:27:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c35c900b003d6b71c0c92sm36630203wmq.45.2022.12.28.12.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 12:27:17 -0800 (PST)
Message-ID: <6f424f4b-6fa2-488d-74c9-0e66199baa07@gmail.com>
Date:   Wed, 28 Dec 2022 21:27:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] proc.5: note that "cmdline" might be favored over
 "stat.comm" by ps(1)
Content-Language: en-US
To:     =?UTF-8?B?w4Z2YXIgQXJuZmrDtnLDsCBCamFybWFzb24=?= <avarab@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, Tejun Heo <tj@kernel.org>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
 <patch-1.2-90c53495f-20221223T174835Z-avarab@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <patch-1.2-90c53495f-20221223T174835Z-avarab@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------x4vJSO5rykLyLypAz0pBrAkb"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------x4vJSO5rykLyLypAz0pBrAkb
Content-Type: multipart/mixed; boundary="------------gZT8FXo7oDY12uADNYN5yQ4k";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?w4Z2YXIgQXJuZmrDtnLDsCBCamFybWFzb24=?= <avarab@gmail.com>,
 linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Tejun Heo <tj@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Craig Small <csmall@enc.com.au>, Alexey Dobriyan <adobriyan@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <6f424f4b-6fa2-488d-74c9-0e66199baa07@gmail.com>
Subject: Re: [PATCH 1/2] proc.5: note that "cmdline" might be favored over
 "stat.comm" by ps(1)
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
 <patch-1.2-90c53495f-20221223T174835Z-avarab@gmail.com>
In-Reply-To: <patch-1.2-90c53495f-20221223T174835Z-avarab@gmail.com>

--------------gZT8FXo7oDY12uADNYN5yQ4k
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgw4Z2YXIsDQoNCk9uIDEyLzIzLzIyIDE4OjU5LCDDhnZhciBBcm5masO2csOwIEJqYXJt
YXNvbiB3cm90ZToNCj4gV2l0aCAicHMgLUEiIHRoZSBvdXRwdXQgdXNlcyB0aGUgInN0YXQu
Y29tbSIgZmllbGQsIGJ1dCAicHMgYSIgd2lsbA0KPiBkaXNwbGF5IHRoZSB2YWx1ZSBpbiAi
Y21kbGluZSIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiDDhnZhciBBcm5masO2csOwIEJqYXJt
YXNvbiA8YXZhcmFiQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICAgbWFuNS9wcm9jLjUgfCA2ICsr
KysrLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW41L3Byb2MuNSBiL21hbjUvcHJvYy41DQo+IGlu
ZGV4IDY1YTRjMzhlMy4uMTE1Yzg1OTJlIDEwMDY0NA0KPiAtLS0gYS9tYW41L3Byb2MuNQ0K
PiArKysgYi9tYW41L3Byb2MuNQ0KPiBAQCAtMjA4Nyw3ICsyMDg3LDExIEBAIFRoZSBhZmZl
Y3RlZCBmaWVsZHMgYXJlIGluZGljYXRlZCB3aXRoIHRoZSBtYXJraW5nIFtQVF0uDQo+ICAg
VGhlIHByb2Nlc3MgSUQuDQo+ICAgLlRQDQo+ICAgKDIpIFxmSWNvbW1cZlAgXCAlcw0KPiAt
VGhlIGZpbGVuYW1lIG9mIHRoZSBleGVjdXRhYmxlLCBpbiBwYXJlbnRoZXNlcy4NCj4gK1Ro
ZSBmaWxlbmFtZSBvZiB0aGUgZXhlY3V0YWJsZSwgaW4gcGFyZW50aGVzZXMuIFRvb2xzIHN1
Y2ggYXMNCg0KUGxlYXNlIHVzZSBzZW1hbnRpYyBuZXdsaW5lcy4gIFNlZSBtYW4tcGFnZXMo
Nyk6DQoNCiAgICBVc2Ugc2VtYW50aWMgbmV3bGluZXMNCiAgICAgICAgSW4gIHRoZSBzb3Vy
Y2Ugb2YgYSBtYW51YWwgcGFnZSwgbmV3IHNlbnRlbmNlcyBzaG91bGQgYmUgc3RhcnRlZCBv
biBuZXcNCiAgICAgICAgbGluZXMsIGxvbmcgc2VudGVuY2VzIHNob3VsZCBiZSBzcGxpdCBp
bnRvIGxpbmVzIGF0IGNsYXVzZSBicmVha3MgKGNvbeKAkA0KICAgICAgICBtYXMsIHNlbWlj
b2xvbnMsIGNvbG9ucywgYW5kIHNvIG9uKSwgYW5kIGxvbmcgY2xhdXNlcyBzaG91bGQgIGJl
ICBzcGxpdA0KICAgICAgICBhdCAgcGhyYXNlICBib3VuZGFyaWVzLiAgIFRoaXMgY29udmVu
dGlvbiwgc29tZXRpbWVzIGtub3duIGFzICJzZW1hbnRpYw0KICAgICAgICBuZXdsaW5lcyIs
IG1ha2VzIGl0IGVhc2llciB0byBzZWUgdGhlIGVmZmVjdCBvZiAgcGF0Y2hlcywgIHdoaWNo
ICBvZnRlbg0KICAgICAgICBvcGVyYXRlIGF0IHRoZSBsZXZlbCBvZiBpbmRpdmlkdWFsIHNl
bnRlbmNlcywgY2xhdXNlcywgb3IgcGhyYXNlcy4NCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0K
PiArLkJSIHBzICgxKQ0KPiArbWF5IGFsdGVybmF0aXZlbHkgKG9yIGFkZGl0aW9uYWxseSkg
dXNlDQo+ICsuSVIgL3Byb2MvIHBpZCAvY21kbGluZS4NCj4gKy5JUA0KPiAgIFN0cmluZ3Mg
bG9uZ2VyIHRoYW4NCj4gICAuQiBUQVNLX0NPTU1fTEVODQo+ICAgKDE2KSBjaGFyYWN0ZXJz
IChpbmNsdWRpbmcgdGhlIHRlcm1pbmF0aW5nIG51bGwgYnl0ZSkgYXJlIHNpbGVudGx5IHRy
dW5jYXRlZC4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------gZT8FXo7oDY12uADNYN5yQ4k--

--------------x4vJSO5rykLyLypAz0pBrAkb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOspqQACgkQnowa+77/
2zKSMA/9Hftw6fw+mRqZTOdl7kqAOu1DBshHWXUFt2NFAcbVSRunpyITDrlJfJkU
oGWUpW76GRTaCK7JWX5+NdNuehSEpNTk3vOfnd5nsWTc30V+CVfGTNMU071eqmNb
BN1MXufgkokFyVo8kzdmGiFrsit+PoRLhvyCIpljl625kCF7ZO4jWhx/9xwXk5pH
cOWrdCaWB4zQsjIeS42H+Lg7dCDsAabOFcwDT00MKVorJ8QhPrdti1UvmsVbrw0I
7SUZDMzVVHeIvsrgvljPdKjvIp9twHSARDqFOXjjPSqxwfDBsZZLYdF77XKi1aPj
J/VKZ5x45RaB37flUv2hteA9cId2PshopoKyGWRRcnr9pmBoktuZ9YJ8xUcYF4oA
ghbw7XIXA5ORQU8iA1LI307Xd2ET4L/5ozzLwneU4Vzy5ZnRrU12x9hm29z9AZbl
W2vLIEOZgD/ivAKOvGQGt95r5bHRxawGEezzOwotyAaHL4U8jc92nJ/FrotRvIsK
HftHavz4ZK5arITpAkxpSo64S2JfsiBKxp10YW4Ph2VfpGfoFHnjWDNLO+mgCQeo
7+/5lyEb951TedH4z1dD1BUx9grwYVyRkvcZ/GK5eX4EMmEKgHKKG/MaBMAUiA/w
CNgwtNLLPcPPLya4SBLl6mbYmOJSkvJDtpAagz1aT7rc9hOhLxw=
=I0Ri
-----END PGP SIGNATURE-----

--------------x4vJSO5rykLyLypAz0pBrAkb--
