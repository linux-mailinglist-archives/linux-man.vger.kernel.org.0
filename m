Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99E0B5FE207
	for <lists+linux-man@lfdr.de>; Thu, 13 Oct 2022 20:51:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230423AbiJMSv1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 14:51:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbiJMSvA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 14:51:00 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E001F1905F0
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:49:22 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id t4so1765071wmj.5
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 11:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A6bCDoki4AUJKNFbSvj5KXkEgxsz+H+/7DTCKky0L5g=;
        b=KYN4FjpVzRW9rFah2WC44cmOetHm/6ArPO2NFhsqj7aVRpmnDaeia+ndbDpXKeCgtx
         o0NQ8gJfKJ8ldA9gWiq8Rkl7+cJrBNZwTIzMWiHl4vxoRaXyvSNjZV9dWbhdo4A53PLF
         IaupdlsR9CJu1DiBupYnVK9U8oKz/bWYoBWFA4iQnNaoOuWM0UV+zCNBrWZ8RvU/WBxf
         NcbW47pkec8Ek1pMrLf4fN7gC9xJ+GObxYR70qId0z74HHguTq7K3VOaxRF6fl4gp3OF
         PjzP6dk2M99spExen168sjvzEvRviS+OUPdQ5sQ61Ah6C6rAuInh2VHd3oDv0BY/wjHj
         2m1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A6bCDoki4AUJKNFbSvj5KXkEgxsz+H+/7DTCKky0L5g=;
        b=VFIS+W8Um4odlQu5SCchSuWSWcC5i1yU2X/3LxPvjQI7me6avCeMya/HXEJ5uGXjlK
         gnsouNpbKxGnzot87m+h0CLGIeBqAruGWV1QAD4xADjiB9rCdMH21va5Z9QYCKp9G8RB
         0a2viQgPPc0140xkeSiFyzJnWCkvuZQRqbvRX40H2O9A4L1jb2i1HuxbZS8C5MbDdDMo
         5EXQVixJ7+VZ+LdJ6hPRR5jUfRWTksVQ4gbm49xHSKk+KmiwiRp9joRf6UxNKb8wbeqH
         l6lVIoiTVwhUEa8niN+JpB4pTFu5jq2KJ7njQ0A6oCpAd+Va1kTVXUaPNrvzez8au+OT
         aJKA==
X-Gm-Message-State: ACrzQf1/c2k2IOkS5jm+MSgc84ADPutR8lxmQfK5i6yl2ZhIkkPKckLr
        +/d2ppLQ+0918bUFeo6LjMA=
X-Google-Smtp-Source: AMsMyM6ZxbMcUiGXNa0Cpk7h7B1kJp+tlZquEwml0wUO4iXMbpz2s6qGZYwvATgT7mMAgVAiAYtreQ==
X-Received: by 2002:a05:600c:34c6:b0:3b4:9643:e46d with SMTP id d6-20020a05600c34c600b003b49643e46dmr888831wmq.9.1665686894096;
        Thu, 13 Oct 2022 11:48:14 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o16-20020a056000011000b0022e38c93195sm264227wrx.34.2022.10.13.11.48.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 11:48:13 -0700 (PDT)
Message-ID: <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
Date:   Thu, 13 Oct 2022 20:47:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221013183018.472463-2-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ct0KrUSJM77dSiD33fLREMC0"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Ct0KrUSJM77dSiD33fLREMC0
Content-Type: multipart/mixed; boundary="------------0T1Z0tt4yzSOk9u1xdE5RWSw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <25df66e8-8ce3-1ac6-a93b-460dab055a48@gmail.com>
Subject: Re: [PATCH v2 2/2] feature_test_macros.7: document _TIME_BITS
References: <20221013183018.472463-1-sam@gentoo.org>
 <20221013183018.472463-2-sam@gentoo.org>
In-Reply-To: <20221013183018.472463-2-sam@gentoo.org>

--------------0T1Z0tt4yzSOk9u1xdE5RWSw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtLA0KDQpPbiAxMC8xMy8yMiAyMDozMCwgU2FtIEphbWVzIHdyb3RlOg0KPiBSZWZl
cmVuY2U6IGh0dHBzOi8vd2lraS5nZW50b28ub3JnL3dpa2kvUHJvamVjdDpUb29sY2hhaW4v
dGltZTY0X21pZ3JhdGlvbg0KPiBSZWZlcmVuY2U6IGh0dHBzOi8vc291cmNld2FyZS5vcmcv
cGlwZXJtYWlsL2xpYmMtYWxwaGEvMjAyMi1KYW51YXJ5LzEzNDk4NS5odG1sDQo+IFNpZ25l
ZC1vZmYtYnk6IFNhbSBKYW1lcyA8c2FtQGdlbnRvby5vcmc+DQo+IC0tLQ0KPiAgIG1hbjcv
ZmVhdHVyZV90ZXN0X21hY3Jvcy43IHwgMTMgKysrKysrKysrKysrKw0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuNy9mZWF0
dXJlX3Rlc3RfbWFjcm9zLjcgYi9tYW43L2ZlYXR1cmVfdGVzdF9tYWNyb3MuNw0KPiBpbmRl
eCBjZGQ5NjJmN2YuLmQzMzA0MTAwMSAxMDA2NDQNCj4gLS0tIGEvbWFuNy9mZWF0dXJlX3Rl
c3RfbWFjcm9zLjcNCj4gKysrIGIvbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcNCj4gQEAg
LTQxMiw2ICs0MTIsMTUgQEAgbGFyZ2UgZmlsZXMgd2l0aCBvbmx5IGEgcmVjb21waWxhdGlv
biBiZWluZyByZXF1aXJlZC4pDQo+ICAgNjQtYml0IHN5c3RlbXMgbmF0dXJhbGx5IHBlcm1p
dCBmaWxlIHNpemVzIGdyZWF0ZXIgdGhhbiAyIEdpZ2FieXRlcywNCj4gICBhbmQgb24gdGhv
c2Ugc3lzdGVtcyB0aGlzIG1hY3JvIGhhcyBubyBlZmZlY3QuDQo+ICAgLlRQDQo+ICsuQiBf
VElNRV9CSVRTDQo+ICtEZWZpbmluZyB0aGlzIG1hY3JvIHdpdGggdGhlIHZhbHVlIDY0DQo+
ICtjaGFuZ2VzIHRoZSB3aWR0aCBvZg0KPiArLkJSIHRpbWVfdCAoM3R5cGUpDQo+ICt0byA2
NC1iaXQgd2hpY2ggYWxsb3dzIGhhbmRsaW5nIG9mIHRpbWVzdGFtcHMgYmV5b25kDQo+ICsy
MDM4LiBJdCBpcyBjbG9zZWx5IHJlbGF0ZWQgdG8NCg0KUGxlYXNlIHVzZSBzZW1hbnRpYyBu
ZXdsaW5lcy4gIFNlZSBtYW4tcGFnZXMoNyk6DQoNCiAgICBVc2Ugc2VtYW50aWMgbmV3bGlu
ZXMNCiAgICAgICAgSW4gdGhlIHNvdXJjZSBvZiBhIG1hbnVhbCBwYWdlLCBuZXcgc2VudGVu
Y2VzICBzaG91bGQgIGJlDQogICAgICAgIHN0YXJ0ZWQgb24gbmV3IGxpbmVzLCBsb25nIHNl
bnRlbmNlcyBzaG91bGQgYmUgc3BsaXQgaW50bw0KICAgICAgICBsaW5lcyAgYXQgIGNsYXVz
ZSBicmVha3MgKGNvbW1hcywgc2VtaWNvbG9ucywgY29sb25zLCBhbmQNCiAgICAgICAgc28g
b24pLCBhbmQgbG9uZyBjbGF1c2VzIHNob3VsZCBiZSBzcGxpdCBhdCBwaHJhc2UgYm91bmTi
gJANCiAgICAgICAgYXJpZXMuICBUaGlzIGNvbnZlbnRpb24sICBzb21ldGltZXMgIGtub3du
ICBhcyAgInNlbWFudGljDQogICAgICAgIG5ld2xpbmVzIiwgIG1ha2VzIGl0IGVhc2llciB0
byBzZWUgdGhlIGVmZmVjdCBvZiBwYXRjaGVzLA0KICAgICAgICB3aGljaCBvZnRlbiBvcGVy
YXRlIGF0IHRoZSBsZXZlbCBvZiBpbmRpdmlkdWFsIHNlbnRlbmNlcywNCiAgICAgICAgY2xh
dXNlcywgb3IgcGhyYXNlcy4NCg0KVGhhdCBpczogJ3MvMjAzOC4gLzIwMzguXG4vJw0KDQo+
ICsuQiBfRklMRV9PRkZTRVRfQklUUw0KPiArYW5kIGRlcGVuZGluZyBvbiBpbXBsZW1lbnRh
dGlvbiwgbWF5IHJlcXVpcmUgaXQgc2V0Lg0KDQpBbSBJIHVuZGVyc3RhbmRpbmcgdGhpcyBy
aWdodD8gIF9GSUxFX09GRlNFVF9CSVRTIGlzIHJlcXVpcmVkIHRvIGJlIHNldCANCmZvciBf
VElNRV9CSVRTIHRvIGJlIGFsc28gc2V0IChpbiBzb21lIGFyY2hzKT8gIENvdWxkIHlvdSBw
bGVhc2UgbGluayANCmRpcmVjdGx5IHRvIGEgc291cmNlIGZvciB0aGF0IGluIHRoZSBjb21t
aXQgbG9nPyAgVGhleSBhcmUgc29tZXdoYXQgDQpyZWxhdGVkLCBidXQgSSdtIHF1aXRlIHN1
cnByaXNlZCB0aGF0IHNvbWV0aGluZyB0byBkbyB3aXRoIGZpbGUgc2l6ZXMgDQppbnRlcmZl
cmVzIGF0IGFsbCB3aXRoIHNvbWV0aGluZyB0byBkbyB3aXRoIHRpbWUuDQoNClRoYW5rcywN
Cg0KQWxleA0KDQo+ICsuVFANCj4gICAuQlIgX0JTRF9TT1VSQ0UgIiAoZGVwcmVjYXRlZCBz
aW5jZSBnbGliYyAyLjIwKSINCj4gICBEZWZpbmluZyB0aGlzIG1hY3JvIHdpdGggYW55IHZh
bHVlIGNhdXNlcyBoZWFkZXIgZmlsZXMgdG8gZXhwb3NlDQo+ICAgQlNELWRlcml2ZWQgZGVm
aW5pdGlvbnMuDQo+IEBAIC04NTQsNiArODYzLDEwIEBAIG1haW4oaW50IGFyZ2MsIGNoYXIg
KmFyZ3ZbXSkNCj4gICAgICAgcHJpbnRmKCJfRklMRV9PRkZTRVRfQklUUyBkZWZpbmVkOiAl
ZFxlbiIsIF9GSUxFX09GRlNFVF9CSVRTKTsNCj4gICAjZW5kaWYNCj4gICANCj4gKyNpZmRl
ZiBfVElNRV9CSVRTDQo+ICsgICAgcHJpbnRmKCJfVElNRV9CSVRTIGRlZmluZWQ6ICVkXGVu
IiwgX1RJTUVfQklUUyk7DQo+ICsjZW5kaWYNCj4gKw0KPiAgICNpZmRlZiBfQlNEX1NPVVJD
RQ0KPiAgICAgICBwcmludGYoIl9CU0RfU09VUkNFIGRlZmluZWRcZW4iKTsNCj4gICAjZW5k
aWYNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------0T1Z0tt4yzSOk9u1xdE5RWSw--

--------------Ct0KrUSJM77dSiD33fLREMC0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIXV4ACgkQnowa+77/
2zJY9xAAk0fbRLP9Lte6sHFpA/3Uzhzx3Hm2rBsJL4dokQa82IDDwLZaTWw8VjVR
/E6v8ln021S/t0bxCUwaI5vNPPqlYCQmos4lCaQDfidsHdwfGXpMF9aqyDJ2xzzE
eneu6GtKQh8gY6+aVCa1DOI2AUwTte8BcrYR35io5TPRW39bDxHE+2KdOYavbrQW
EmHHVm3H0LCRe1t6QRwmvdCBPqpyazUco4bNdGtrMSJNSdsb17XRvf3mECV/aQdi
MbLfSJGIqWWy1sb5Qf2dCsThEjYBy/SLk1tnP+AMdvE7rPyv1NXRQn8x/rnoUR2B
T6tjQq3TIU0wyNy8iJOn0X9+xTbpkOUmhQvaO2meD4D9PPKFkmx6awzkiDXRV5hE
hhJc+HomlKZ66pgX14Oo6S4BBNlkAcMc4v1QHkSvQFk6xZrwriCZfgTpODrt23A/
PxuMeUOaggdXGGHaRdnrnQ5sIkHhuwaPhbENh06ghHPg0y+P/oy/uFqX2SJXnmuZ
YWDTyZ04lNfCaMTL49xC9ZSy9cz7eMjKZ+H2U1720S41HCTUQJSKMKSRZJdiDcjo
1eAgaqFfQ0tzctZHccIL3KRG4Kz8WgDN/FUOxZ0pvNwrfpxHZIjxSjSrHb4CONke
oZcKLaThuabLrh1RHqVLOI0XVWwAtbhRILiRQmjR9yZoXyjdpJU=
=YAxE
-----END PGP SIGNATURE-----

--------------Ct0KrUSJM77dSiD33fLREMC0--
