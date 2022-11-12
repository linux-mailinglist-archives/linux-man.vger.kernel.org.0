Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AFCC626A42
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 16:35:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234986AbiKLPfw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 10:35:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231404AbiKLPfv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 10:35:51 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9DE17439
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 07:35:50 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso7436975wme.5
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 07:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kb93uV5lzbRx+RHcnTQ/pVAK3MJvxvlMsKxjBU2JBLk=;
        b=kJm0z/guImTPp2aqJA3cJHSNBHutFo2jA3/Nnsfc2upI+jBkXltF+g2E+/jhFIRsOg
         AOFnzOf6E8mvq9Q3rqy0NpUmWoU4VOrMFQ5JltLe+G81stHeqQ+9P9sC8HbU+4AglLWU
         M96NsLlN5qTeGHVT7UGZgGcuiD4S/7VCojiNbxBQkUbH1wgAFCXoJ3nj/yBzL4Kr6imF
         WWK+wQUuqNA1sPZPJM82MOQPea2ybNQ4KTpgZ7weKmxjp7c6eiUT9u8P7FlNNLxnuKDv
         hEPl1cMzDqiqTRKEsUfeKoWtWsaakWp2VTblQKTBobsLvOAxJTv6cJaWRecaQLlMgEJo
         17oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kb93uV5lzbRx+RHcnTQ/pVAK3MJvxvlMsKxjBU2JBLk=;
        b=mLHVu+24Wf4U+q9OG0Lq4G1ja3JzQxrceYMUUZZ7X8nD6i6syBuUp0v1EtBBplF0kB
         BUEgR7c6B2too/WTuhfyDEY1Qmi+YkRpmDOtj1DD7OAv+IXWpF9JLMI2A8dOJFwJNjn7
         dmzHb+2QAN6UWr9NIPvICqmShEW2KEyQDaJLLlvs+7PYEAOmhfbhZEfB18EmJxxUasLy
         aQsC5mfjSgMl8y7I7Xt3cd2o6BrVQaQVWy886R/5lOpxGw9mHNmj9Y/rdIq58Clejapl
         98/trwX6lki6JSdv6Pa1+mcZ45qZU8yz+J9cu/cGkAPIulctPKvM3bYbvZwo6PI2DPR1
         Q+Kg==
X-Gm-Message-State: ANoB5pnccJlwXcDE+nZsdUkDyL6drtRITtsEJOEY6M/Xm8hBor8r6NJH
        9JbAYcSzVauI+0pCqd6mEoU=
X-Google-Smtp-Source: AA0mqf4xKN1hje8Khd99fwL6thiKq7klcybMHtDtCy3HyJ+hrxFdsWIwdW4ISgxkVJFVVu/jBE4VCg==
X-Received: by 2002:a7b:cb0d:0:b0:3cf:a4a6:a048 with SMTP id u13-20020a7bcb0d000000b003cfa4a6a048mr4035725wmj.202.1668267348781;
        Sat, 12 Nov 2022 07:35:48 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b3-20020adff903000000b002366fb99cdasm4673095wrr.50.2022.11.12.07.35.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 07:35:48 -0800 (PST)
Message-ID: <2193ac67-3b8c-b335-6e34-f7cc58062bb8@gmail.com>
Date:   Sat, 12 Nov 2022 16:35:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------02m90gc6LfTYDXhbujxWBqgZ"
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
--------------02m90gc6LfTYDXhbujxWBqgZ
Content-Type: multipart/mixed; boundary="------------MpedzzfXCi1IPLUbqJcKZHGg";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <2193ac67-3b8c-b335-6e34-f7cc58062bb8@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
 <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
 <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
 <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
 <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
 <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
 <69d694b3-756-792d-8880-87bab482ea34@codesourcery.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
In-Reply-To: <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>

--------------MpedzzfXCi1IPLUbqJcKZHGg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMS8xMi8yMiAxNTo1NCwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBTYXQsIDEyIE5vdiAyMDIyLCBBbGVqYW5kcm8gQ29sb21hciB2aWEgR2NjIHdyb3Rl
Og0KPiANCj4+IFNpbmNlIGl0J3MgdG8gYmUgdXNlZCBhcyBhbiBydmFsdWUsIG5vdCBhcyBh
IGx2YWx1ZSwgSSBndWVzcyBhDQo+PiBwb3N0Zml4LWV4cHJlc3Npb24gd291bGRuJ3QgYmUg
dGhlIHJpZ2h0IG9uZS4NCj4gDQo+IFNldmVyYWwgZm9ybXMgb2YgcG9zdGZpeC1leHByZXNz
aW9uIGFyZSBvbmx5IHJ2YWx1ZXMuDQo+IA0KPj4+ICh3aXRoIGEgc3BlY2lhbCBydWxlIGFi
b3V0IGhvdyB0aGUgaWRlbnRpZmllciBpcyBpbnRlcnByZXRlZCwgZGlmZmVyZW50DQo+Pj4g
ZnJvbSB0aGUgbm9ybWFsIHNjb3BlIHJ1bGVzKT8gIElmIHNvLCB0aGVuICIuYSA9IDEiIGNv
dWxkIGVpdGhlciBtYXRjaA0KPj4+IGFzc2lnbm1lbnQtZXhwcmVzc2lvbiBkaXJlY3RseSAo
YXNzaWduaW5nIHRvIHRoZSBwb3N0Zml4LWV4cHJlc3Npb24gIi5hIikuDQo+Pg0KPj4gTm8s
IGFzc2lnbmluZyB0byBhIGZ1bmN0aW9uIHBhcmFtZXRlciBmcm9tIHdpdGhpbiBhbm90aGVy
IHBhcmFtZXRlcg0KPj4gZGVjbGFyYXRpb24gd291bGRuJ3QgbWFrZSBzZW5zZS4gIFRoZXkg
c2hvdWxkIGJlIHJlYWRvbmx5LiAgU2lkZSBlZmZlY3RzDQo+PiBzaG91bGQgYmUgZm9yYmlk
ZGVuLCBJIHRoaW5rLg0KPiANCj4gU3VjaCBhc3NpZ25tZW50cyBhcmUgYWxyZWFkeSBhbGxv
d2VkLiAgSW4gYSBmdW5jdGlvbiBkZWZpbml0aW9uLCB0aGUgc2lkZQ0KPiBlZmZlY3RzIChp
bmNsdWRpbmcgaW4gc2l6ZSBleHByZXNzaW9ucyBmb3IgYXJyYXkgcGFyYW1ldGVycyBhZGp1
c3RlZCB0bw0KPiBwb2ludGVycykgdGFrZSBwbGFjZSBiZWZvcmUgZW50cnkgdG8gdGhlIGZ1
bmN0aW9uIGJvZHkuDQoNClRoZW4sIEknbSBndWVzc2luZyB0aGF0IHJ1bGVzIG5lZWQgdG8g
Y2hhbmdlIGluIGEgd2F5IHRoYXQgLmluaXRpYWxpemVyIGNhbm5vdCANCmFwcGVhciBhcyB0
aGUgbGVmdCBvcGVyYW5kIG9mIGFuIGFzc2lnbm1lbnQtZXhwcmVzc2lvbi4NCg0KVGhhdCBp
cywgZm9yIHRoZSBmb2xsb3dpbmcgY3VycmVudCBkZWZpbml0aW9uIG9mIHRoZSBhc3NpZ25t
ZW50LWV4cHJlc3Npb24gKGFzIA0Kb2YgTjMwNTQpOg0KDQphc3NpZ25tZW50LWV4cHJlc3Np
b246DQogICAgIGNvbmRpdGlvbmFsLWV4cHJlc3Npb24NCiAgICAgdW5hcnktZXhwcmVzc2lv
biBhc3NpZ25tZW50LW9wZXJhdG9yIGFzc2lnbm1lbnQtZXhwcmVzc2lvbg0KDQpUaGUgdW5h
cnktZXhwcmVzc2lvbiBjYW5ub3QgYmUgZm9ybWVkIGJ5IGEgLmluaXRpYWxpemVyLg0KDQpX
b3VsZCB0aGF0IGJlIGRvYWJsZSBhbmQgc3VmZmljaWVudD8NCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCj4gDQo+IEFuZCwgaW4gYW55IGNhc2UsIGlmIHlvdSBkaWQgaGF2ZSBhIGNvbnN0cmFp
bnQgZGlzYWxsb3dpbmcgc3VjaA0KPiBhc3NpZ25tZW50cywgaXQgd291bGRuJ3Qgc3VmZmlj
ZSBmb3Igc3ludGFjdGljIGRpc2FtYmlndWF0aW9uIChzZWUgdGhlDQo+IHByZXZpb3VzIHBv
aW50IEkgbWFkZSBhYm91dCB0aGF0OyBJIGhhdmUgc29tZSByb3VnaCBub3RlcyB0b3dhcmRz
IGEgV0cxNA0KPiBwYXBlciBvbiBzeW50YWN0aWMgZGlzYW1iaWd1YXRpb24sIGJ1dCBoYXZl
bid0IGNvbnZlcnRlZCB0aGVtIGludG8gYQ0KPiBjb2hlcmVudCBwYXBlcikuDQo+IA0KDQot
LSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------MpedzzfXCi1IPLUbqJcKZHGg--

--------------02m90gc6LfTYDXhbujxWBqgZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNvvUsACgkQnowa+77/
2zKsGQ/9GxDIf2gox5ptfJnmAsCP4piOftqd0iHg6ujzlAc2tuG/eC1zdKXXyEwT
FYhg8VI+4msPZg7u5qcY6l0b6xdgJX10o5NTOIsB3JRWWoqV8KNQZK7h2nFyP7zP
rtNXNbbXo+0ivXS2WI5XuRwN78f74OsRKTcKz1OhLJWzz1Tyz1qodgQw0B+ArmgG
XrSIBFZ7ZRaYSCfv6O1RGAfLBrhPGNtPdgZ5VMvsdoapbXw7C7wuh2vDG+WRoXpF
dNOj8EtyMzWiVBVpyO5q1yU7Yoj8YtJxAvdPhgKiAI7oVTPC98HjRRI9lgqvfPU1
QioKtds1HYgtqXSrFiZX09OMbYWYw1YCXmagE7/rzL/E2NYgzlp5SawRgdpBvcf0
du0rOJ4VeKeXDpfxxPGjMXFOGcg0HiFuI2FCv1PurQvPx3VsoYoxZMjIfUmQZ8O7
uY/9wNXmawVSoKW1GcEC9h3jl5rZa+/CbiA5vqRVbwQBguVwydkcuKVNWf/y8qnC
NaHMy2VqJLAHMQK5lfmH3a+W1Q7KyQDezRffQZB636yHgro4NAuQSPNgxbOq7yMW
/YswC5PH0SJV/VNCfPPXGK0bnv3JgJY048akid/kjyKURL+XonlUGHFICxcurBwy
VXsn6DR1JpSgOrcCoXiRQMdleO0s/3sWGkgm22A80DNgfEWXgtg=
=hH59
-----END PGP SIGNATURE-----

--------------02m90gc6LfTYDXhbujxWBqgZ--
