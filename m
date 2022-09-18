Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D39415BC087
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 01:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbiIRX0A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 19:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiIRXZ6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 19:25:58 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2CD315FC2
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 16:25:52 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id l9so5458942lji.4
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 16:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=lwWvf6qc5E8UxJVJwlicRuTMFAF0yxbKJiBWe2IYhRI=;
        b=TuqysuUyCyRin4oZi7pIMxU1W66J1VCbO8JgDFE78PbEq7W4w1rwl/QxzSrnL/Yz2H
         +ZDXHGQHZi3G4n2RgK3rKSW6lVg/dPNnctfxv0lgcGBfZqbLS3d0MFZ3Kaqlvc+0VU14
         RhTIoMOveaanpLDtLDGhgRDmLoK540DcPSXNi+yOHjZUjNWPkKtWjYWqFbDX/1K4u6ZZ
         Dr1FQ23yxg4WTMTX0twfFfSh3IGGUJKsMtCmL2DKcmTXiBWVpEDz4+BVGq838/RQHu7B
         mcHjAlRoXEjPk78Juu0WMbzeoryb8PFUTMOmoj+ZegsclQ+8Jcdwhx/XsJ5zBSUCXYK4
         2UIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=lwWvf6qc5E8UxJVJwlicRuTMFAF0yxbKJiBWe2IYhRI=;
        b=g9PTj4SGDn7lUgkVDruBG2CHw40S7SWHyXyhVTQUV5Cmg49bOnjhfrBzYr7tE2Nhoz
         YTHEggvnWMikaOwVk+jyWigibbvY7bghFxrhzpVvWfavSe+U7osM1uZPEzI5hajmOd2L
         GX7fJJP5tAyUQ7niZzkIHDRTxtyiZ5C0evcmbWrUHKYsq3AsFueuwBuFgBB1EOg1IHNl
         IHMVOMXoN+EunwGJRmlt+SZw5FXKuu6a4ZYhoswLwbX3YzAqEIyjK7MJ8GRxSTfSjGk3
         V8A6VkK5NkY3050GS7Cq3ObkxKqvERciYrpDa3SBVqrGdr1+YiYrUBmjr5vaJhc4b6/s
         pmSQ==
X-Gm-Message-State: ACrzQf1y2Rza8/WWBDpNDJAnhi4wjJ/tn6iBYbhbMalppb3SRtCbh4wZ
        6GSePEVQPvWfdNylK7Yja4Y=
X-Google-Smtp-Source: AMsMyM7C2LEErcyLSXHq/PpmyRPkvkFJWaCDgUxNdM9JUYl1EfEcugKWpsc6GTIZ2+p3eIkJWAp9NA==
X-Received: by 2002:a2e:9606:0:b0:26c:442a:40c2 with SMTP id v6-20020a2e9606000000b0026c442a40c2mr2321128ljh.458.1663543551321;
        Sun, 18 Sep 2022 16:25:51 -0700 (PDT)
Received: from [192.168.1.104] ([31.169.55.19])
        by smtp.gmail.com with ESMTPSA id e19-20020a05651236d300b004994117b0fdsm4886405lfs.281.2022.09.18.16.25.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 16:25:50 -0700 (PDT)
Message-ID: <32dd590f-4f1c-c383-e195-d90fe6465385@gmail.com>
Date:   Mon, 19 Sep 2022 01:25:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Walter Harms <wharms@bfs.de>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
 <20220918231812.htiqn5b77reriljg@illithid>
From:   Alex Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220918231812.htiqn5b77reriljg@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------O0x8llae2nNSvSeL8J9dMFpC"
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------O0x8llae2nNSvSeL8J9dMFpC
Content-Type: multipart/mixed; boundary="------------565CXkD6CZCOiEZEm0rLjZKK";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org,
 Walter Harms <wharms@bfs.de>
Message-ID: <32dd590f-4f1c-c383-e195-d90fe6465385@gmail.com>
Subject: Re: [PATCH] register_printf_speficier.3, register_printf_modifier.3,
 register_printf_type.3: Add new manual page and links
References: <20220918221640.19942-1-alx.manpages@gmail.com>
 <20220918231812.htiqn5b77reriljg@illithid>
In-Reply-To: <20220918231812.htiqn5b77reriljg@illithid>

--------------565CXkD6CZCOiEZEm0rLjZKK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gOS8xOS8yMiAwMToxOCwgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gQXQgMjAyMi0wOS0xOVQwMDoxNjo0MSswMjAwLCBBbGV4IENvbG9tYXIgd3Jv
dGU6DQo+PiBJIHdyb3RlIHRoaXMgbWFudWFsIHBhZ2UgYWZ0ZXIgb24gYW4gb2xkIGRpc2N1
c3Npb24gd2l0aCBXYWx0ZXIsDQo+PiB3aGljaCBJIHBvc3Rwb25lZCB0b28gbXVjaC4gIEkg
aGFkIGEgbG9uZyB0aW1lIGFnbyB3cml0dGVuIHNvbWUNCj4+IHVzaW5nIHJlZ2lzdGVyX3By
aW50Zl9zcGVjaWZpZXIoMyksIGFuZCBJIHJlbWVtYmVyIGhhdmluZyBhIGxvdCBvZg0KPj4g
dHJvdWJsZSB1c2luZywgc2luY2UgdGhlcmUncyBmZXcgZG9jdW1lbnRhdGlvbiBhYm91dCBp
dCwgaWYgYXQNCj4+IGFsbC4gIEkgaGFkIHRvIGd1ZXNzIG11Y2ggb2YgaXQuDQo+PiBXZWxs
LCBwbGVhc2UgcmV2aWV3IHRoaXMgcGFnZSwgYW5kIGNvbW1lbnQgYW55dGhpbmcgeW91IGRv
bid0IGxpa2UuDQo+IFsuLi5dDQo+PiAgIG1hbjMvcmVnaXN0ZXJfcHJpbnRmX3NwZWZpY2ll
ci4zIHwgNDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4gDQo+IFdlbGws
IGZvciBhIHN0YXJ0LCBJJ2Qgc3BlbGwgdGhlIG5ldyBmaWxlIG5hbWUgY29ycmVjdGx5LCBh
dm9pZGluZyBhDQo+IGNvbnRyb3ZlcnNpYWwgZ2l0IHJlbmFtZSBpbiB0aGUgZnV0dXJlLiAg
Oy0pDQoNClllYWgsIHRoYXQgbWF5IGJlIGEgZ29vZCBzdGFydCA6KQ0KDQpJJ20gc3RpbGwg
ZmFyIGZyb20gcHVzaGluZyBhbnl0aGluZyBsaWtlIHRoYXQsIHNvIGV4cGVjdCBhIGxvdCBv
ZiB0eXBvcy4gDQogIEhvdyBhYm91dCB0aGUgbGF5b3V0IGFuZCBjb250ZW50cyBvZiB0aGUg
cGFnZT8gIERvIHlvdSBsaWtlIHRoZW0/IA0KQWxzbyBJIGNvbnNpZGVyZWQgYWRkaW5nIGRv
Y3VtZW50YXRpb24gYWJvdXQgdGhlIHJlbGF0ZWQgdHlwZXMgaW4gdGhlIA0Kc2FtZSBwYWdl
LCBzaW5jZSB0aGlzIGlzIG9uZSBvZiB0aG9zZSB3aGVyZSB0aGUgaGVhZGVyIGlzIHJlYWxs
eSBzbWFsbCwgDQphbmQgdGhlIHR5cGVzIGRvbid0IGxlYWsgb3V0IG9mIHRoZW0sIHNvIHdl
IGNhbiBoYXZlIGEgdHJ1ZSBtYW51YWwgcGFnZSANCihldmVuIGlmIHNvbWV3aGF0IGJpZywg
c2luY2UgdGhvc2UgZnVuY3Rpb25zIGFyZSBhIGhlbGwgdG8gdW5kZXJzdGFuZCwgDQphbmQg
dGhlcmVmb3JlIGRvY3VtZW50KS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IFJlZ2Fy
ZHMsDQo+IEJyYW5kZW4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5l
cy8+DQoNCg==

--------------565CXkD6CZCOiEZEm0rLjZKK--

--------------O0x8llae2nNSvSeL8J9dMFpC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMnqPYACgkQnowa+77/
2zJoxhAAiQopr8A3EOfiYaqwo7yxiEvKX5/XTVHrBH3UKoRslPdj1EStkOMIr00G
BJGToQA2Q3KeZtdpDTU/dyT43BqWuoFlowu12b9qwmkUnFIF5ngF58f1OivDlbh+
Ti46LQT0EGpVN7+7TOjcgCjw4sFtxmUigPcEot0G4kYWH/AE05iEhyAHDqO22shB
KEeR/FF4TTiLnobRJlz0b1J/MscfG1wc3CQ9tbrcdiUxiAKLroRZeNIoKuRKS90C
6luv6gloxpYzq+SrXh8fWacMCgr5TLx+ffmHcsxbe55IR6cBHn3I0HGhAah0w8VV
Y4O2j+7FrdiVB89m2BgpP86kt9nd15vbgzq6FS0Qi6IMIiX1z19QI38f4iOS8qGx
LDYNYVv0efyCUVPrYznsCfGxlmXYJjNBK+WM8srg1RGYRQN8pu/3GILIZHkKKHXp
4N+TAFp8IBsO4mtW4LhUq5yJs2RyNTB6iJzyXinxmTwt6rMl2TomKfU6dA6qsyIf
8IoFuVKnZ3+SUibyl3yL3dUvTuRYKZ2b19YG0nlQDj8wtlfJaURYUrTShAwZwCcB
L6Ojl3h3g3C+5BDi1uCbq+2YjNe6mLLl9PK6xsf57rQ7UwbiVnY4zl+qMkzbTxqi
hOwIK3DTIra9H15mlHLL9r9coNK3oAdTMRn0nbRVs9l9/KAIazY=
=4I9C
-----END PGP SIGNATURE-----

--------------O0x8llae2nNSvSeL8J9dMFpC--
