Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22D86626ABB
	for <lists+linux-man@lfdr.de>; Sat, 12 Nov 2022 18:09:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234540AbiKLRJM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Nov 2022 12:09:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbiKLRJL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Nov 2022 12:09:11 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99DCC15FE8
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 09:09:04 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id a11-20020a05600c2d4b00b003cf6f5fd9f1so5020246wmg.2
        for <linux-man@vger.kernel.org>; Sat, 12 Nov 2022 09:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZP+6kFRdWVAUIKfdlSkREsQMRKERlqNtjO9K+1XDows=;
        b=TwwJLjqzUFIkWy5q62ZciKts1DTNgXoHEyQME8NQL8XwueTS0RWdtZazFnxsqu7uzy
         8g+vjY8gn4o811r4A72goUyIbFaw6fFHUG/D7RpAYmjE1i9CXRYINujfcU0jfBiUW5z2
         uX1/SVAWKt/FHVfRVZY5Asykr84s8KwQumuADO7j0UiNvU440wgxKurRMvvpjXwi7sF9
         klx25YsWE8JkKUAsGRXLp5WWbRwLSFKtDt+72mCy3OvegbdkBWi8CKktnLQYZJX6Bchb
         URNiemGmBxsuSd8FYsueEtBBOhQfN+1jKZqcOfvYLFE2IuX9JPm00aC8htIqU1PX8mQ9
         JrmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZP+6kFRdWVAUIKfdlSkREsQMRKERlqNtjO9K+1XDows=;
        b=Dt23BRogBxRakYPo7MkeDDz2J7bmnyJCZPC1iCUihOWEjKOe6fuReWa9b9Jtx1U1lv
         me89+1YzTvPQ9YUEP/0vAExIs4e8whk14TmP1/Z9C8KU5oBjgYmEQsJ3uJdHDA0gSnvx
         MOpbWlamuJex4s7MDarktS6bFPbipN4KUKSKwakk0CGN/EAjViaXJaw3ZSofvWLqnnhr
         btgA3lz4vvVvO44nh19qO9B1j6L4r8zxw04107kbpBDG3vt1TYqOwNdjuOBcQh1j1BMa
         pAS1PYFEfIm2bdusUBz6RbtGKLXo8duFZ0yoggRLjpDEfU/WUomGthzp7s7ZN2ErvvdH
         SgvQ==
X-Gm-Message-State: ANoB5pmP8oGpSza0qWZAgZsa5zIJnElknAVNuwUiBSC/W3ipD8ARC4ZF
        fyq8ikS66JaEj/nbjIgZ1w83Aoy0CvY=
X-Google-Smtp-Source: AA0mqf6wSnhR0k5li8ZP+BFO5FkrNLkwkmjVPN+r5158JWyF7T2B9nxraG8S2RatFt95HMkY1OJR+A==
X-Received: by 2002:a7b:c3d8:0:b0:3cf:7125:fc1d with SMTP id t24-20020a7bc3d8000000b003cf7125fc1dmr4418174wmj.70.1668272943010;
        Sat, 12 Nov 2022 09:09:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n9-20020a7bcbc9000000b003b47ff307e1sm6902463wmi.31.2022.11.12.09.09.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Nov 2022 09:09:02 -0800 (PST)
Message-ID: <7fe31637-bb3d-3e42-e06f-8d7161363f98@gmail.com>
Date:   Sat, 12 Nov 2022 18:08:54 +0100
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
 <2193ac67-3b8c-b335-6e34-f7cc58062bb8@gmail.com>
 <4e8866d-ac46-e2c4-d1fa-b163d470b84e@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4e8866d-ac46-e2c4-d1fa-b163d470b84e@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------DktFfuBwWhMswPQlVWFa20pm"
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
--------------DktFfuBwWhMswPQlVWFa20pm
Content-Type: multipart/mixed; boundary="------------MKNvlefpy6OnJrA3c2YjWegG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: Martin Uecker <uecker@tugraz.at>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <7fe31637-bb3d-3e42-e06f-8d7161363f98@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
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
 <2193ac67-3b8c-b335-6e34-f7cc58062bb8@gmail.com>
 <4e8866d-ac46-e2c4-d1fa-b163d470b84e@codesourcery.com>
In-Reply-To: <4e8866d-ac46-e2c4-d1fa-b163d470b84e@codesourcery.com>

--------------MKNvlefpy6OnJrA3c2YjWegG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEyLzIyIDE4OjAyLCBKb3NlcGggTXllcnMgd3JvdGU6DQo+IE9uIFNhdCwg
MTIgTm92IDIwMjIsIEFsZWphbmRybyBDb2xvbWFyIHZpYSBHY2Mgd3JvdGU6DQo+IA0KPj4+
PiBObywgYXNzaWduaW5nIHRvIGEgZnVuY3Rpb24gcGFyYW1ldGVyIGZyb20gd2l0aGluIGFu
b3RoZXIgcGFyYW1ldGVyDQo+Pj4+IGRlY2xhcmF0aW9uIHdvdWxkbid0IG1ha2Ugc2Vuc2Uu
ICBUaGV5IHNob3VsZCBiZSByZWFkb25seS4gIFNpZGUgZWZmZWN0cw0KPj4+PiBzaG91bGQg
YmUgZm9yYmlkZGVuLCBJIHRoaW5rLg0KPj4+DQo+Pj4gU3VjaCBhc3NpZ25tZW50cyBhcmUg
YWxyZWFkeSBhbGxvd2VkLiAgSW4gYSBmdW5jdGlvbiBkZWZpbml0aW9uLCB0aGUgc2lkZQ0K
Pj4+IGVmZmVjdHMgKGluY2x1ZGluZyBpbiBzaXplIGV4cHJlc3Npb25zIGZvciBhcnJheSBw
YXJhbWV0ZXJzIGFkanVzdGVkIHRvDQo+Pj4gcG9pbnRlcnMpIHRha2UgcGxhY2UgYmVmb3Jl
IGVudHJ5IHRvIHRoZSBmdW5jdGlvbiBib2R5Lg0KPj4NCj4+IFRoZW4sIEknbSBndWVzc2lu
ZyB0aGF0IHJ1bGVzIG5lZWQgdG8gY2hhbmdlIGluIGEgd2F5IHRoYXQgLmluaXRpYWxpemVy
IGNhbm5vdA0KPj4gYXBwZWFyIGFzIHRoZSBsZWZ0IG9wZXJhbmQgb2YgYW4gYXNzaWdubWVu
dC1leHByZXNzaW9uLg0KPiANCj4gSSB0aGluayBuZWVkaW5nIHN1Y2ggYSB2ZXJ5IHNwZWNp
YWwgY2FzZSBydWxlIHRlbmRzIHRvIGluZGljYXRlIHRoYXQgc29tZQ0KPiBhbHRlcm5hdGl2
ZSBzeW50YXgsIG5vdCBuZWVkaW5nIHN1Y2ggYSBydWxlLCB3b3VsZCBiZSBiZXR0ZXIuDQoN
CldlbGwsIGJ5IG5vdCBiZWluZyBhbiBsdmFsdWUsIGl0IGNhbid0IGJlIGFzc2lnbmVkIHRv
LiAgVGhhdCB3b3VsZCBiZSBzb21ld2hhdCANCmxpa2Ugc2l6ZW9mKGlkZW50aWZpZXIpLCB3
aGljaCBpcyBhbHNvIGEgdW5hcnktZXhwcmVzc2lvbiwgc28gaXQncyBub3Qgc28gbXVjaCAN
Cm9mIGEgc3BlY2lhbCBjYXNlLCBpcyBpdD8NCg0Kdm9pZCBmKHNpemVfdCBzLCBpbnQgYVtz
aXplb2YoMSkgPSAxXSk7ICAvLyBjb25zdHJhaW50IHZpb2xhdGlvbg0Kdm9pZCBnKHNpemVf
dCBzLCBpbnQgYVsucyA9IDFdKTsgICAgICAgICAvLyBBbHNvIGNvbnN0cmFpbnQgdmlvbGF0
aW9uDQp2b2lkIGgoc2l6ZV90IHMsIGludCBhW3MgPSAxXSk7ICAgICAgICAgIC8vIFRoaXMg
aXMgZmluZQ0KDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+
DQo=

--------------MKNvlefpy6OnJrA3c2YjWegG--

--------------DktFfuBwWhMswPQlVWFa20pm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNv0yYACgkQnowa+77/
2zLvPw/+KVRkTiTKwOE6iRhSt8RZMLFsshxkqeDQMZ+x9LeGxjHPktzeL+R0W1de
XQdk8yMQc3Bs0j09TsC+DHfQQ/0ISAvuaGAUuYhV+6QzyKPF/dEIyGV363Fx9S7N
IQ2MLchxSfsscjj60dznggvLfF/9pNz40a3YhehVVe+KM4EXQOw5Qo4sXiS7rIo3
+Ld1YAiRQkcPhQzy3MvojmYHtdHY1IMBXpG5GC/vQmDV8JYSobQimhq6geYYMFOI
MhPTjFcfHnYwaHHD9BqgmNmMNoh9lPwCkISX8w9GFazYiQkv1zekLGp5sRkk/bsJ
XcaG9xkn0XBtcDj7OBQ7Uj3vk7yrJAhSZFXEOin+oZDXYeq8cCtQu5CkvHKlIxk7
Mii36Fpcx8QJsGAtAoa8WAL0e7TCqCJSeI7Ykw/mjPHbuNFZbodlndU99uFimxQ0
Nk/JIAAL6lwe1YeZc0U/dk//9KtjVggoJkV/pPkIjywuFWU9Jn0elFVGXDGsXOrf
UoKrrxyxjr83MDxxoxEexrl9BukKM8fam0d6fJsTDjKAHOkH70U8jamHwg5gWCNR
8kmZOrexrILXWBb0F012EdfqycQjeULHVJTBJ8LVfUYfXgZcWXafbjZxt7PXRzMX
/tPY+Pr8P1jrWMZYal72O9zqvYO8Dpru6fi2aa8uOe0OCb5FTco=
=WrCQ
-----END PGP SIGNATURE-----

--------------DktFfuBwWhMswPQlVWFa20pm--
