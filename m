Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D1FC58B06F
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 21:40:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237858AbiHETkT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 15:40:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238395AbiHETkS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 15:40:18 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2861E47
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 12:40:16 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id v131-20020a1cac89000000b003a4bb3f786bso4419189wme.0
        for <linux-man@vger.kernel.org>; Fri, 05 Aug 2022 12:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=Prq1C5mBn4WQgp+xBX8vHhm0zubizaXAK357q0zPVfs=;
        b=Zpax4IHzVSGiPB0RGCMj3DcinitlTyRWHb+EZua6kroRLz80can8c88saLeiXNTN6d
         7hg+9YukQQRDH/SuWbiRPRmmk4C4/dLE2P7ewCy8uqFIE6tpzx65yXlhC6qejOnQAEbe
         QNIeFAFo3RUQaVoUU5vZJKFWD5jXWl2KFqdZNNVaDuGhWFxpbyT1WdGDhMAvlx12fGou
         /JycHZ2QL3UHhyHvaKWh8r0ndjy5CRbOjAaZl05Q3iDvffE9yYb+j0U7j/+oDMAqnevJ
         c/xE5Zj9A3mYGvQbKOl6EOBUye4Rx4J7i09MMRtbiqcXtFrO9HLVGeY8sOjbpwboX8Uu
         jJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=Prq1C5mBn4WQgp+xBX8vHhm0zubizaXAK357q0zPVfs=;
        b=16ijeE2oU7YHDXF7+/Vm4DHLQk/Pfn4UX35RectGyK+fNH43bFcNHNSKRWJh35Gr4d
         0oPQ286Fayl7RgLk0ZNmE8ncsZ5tTwbK6FEVyY7yqbJkb+Rh2nTskg1C72McTzRm1viR
         I65doVWk3fK/Ilimb8Yr6Gx8x+5dWXm5u+cDnl77sm1Lh0wjfy9xPHxrQ/acIPe8V8EN
         44ozqmuE/odpa1TMDQU+m6czCKwFYTiM/eoi3ZMP7flrBbcFF9+TeBZS57irTPMm3cjg
         xOlYEJdaJiCHO5Aw6UzQxrKl8NK3ESrbZtW2msEtKmIHeF4+DRtPqb7FRjNqD5zwLTgs
         aj0A==
X-Gm-Message-State: ACgBeo1VaXoYyQXw2kFBFlQT7LySCGtJFD9T/7E5ypb0fN07Vw5NiR3i
        n73xdRlbYTv5D7fghGrme2kS/gxiGsQ=
X-Google-Smtp-Source: AA6agR5VYSAjLmsT0+2km71E6QTIYu8FWt30KOkwhvEFghban7ZH7vipCeoYUIR7lAv67SJODKQmlQ==
X-Received: by 2002:a7b:ce95:0:b0:3a5:3f5:291f with SMTP id q21-20020a7bce95000000b003a503f5291fmr8062779wmj.135.1659728415394;
        Fri, 05 Aug 2022 12:40:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f10-20020a05600c4e8a00b003a30fbde91dsm11920146wmq.20.2022.08.05.12.40.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Aug 2022 12:40:14 -0700 (PDT)
Message-ID: <d53c704c-c02a-7361-2cef-5cd97c5aa282@gmail.com>
Date:   Fri, 5 Aug 2022 21:40:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: italicizing pointer stars (was: [PATCH] getline.3: wfix.)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, enh <enh@google.com>
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
 <20220805192007.iwwu4e2n45hqw4cn@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220805192007.iwwu4e2n45hqw4cn@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6hltguDHvJhSSDwGp46O2ydV"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6hltguDHvJhSSDwGp46O2ydV
Content-Type: multipart/mixed; boundary="------------1nnSFkaDg52W2Wo0X9dHMzy2";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>, enh <enh@google.com>
Message-ID: <d53c704c-c02a-7361-2cef-5cd97c5aa282@gmail.com>
Subject: Re: italicizing pointer stars (was: [PATCH] getline.3: wfix.)
References: <CAJgzZopm7h_0_4j=grKiOu5tWr87ik4-nNvMRy1gxxH_b5b7dQ@mail.gmail.com>
 <3d4a4b63-99f2-1d9a-f496-aa4ee68775be@gmail.com>
 <CAJgzZoq1AUJO3wrk3a4OA3Kb2z5yW1otHnmsDWk2GHJbRDafoQ@mail.gmail.com>
 <20220805192007.iwwu4e2n45hqw4cn@illithid>
In-Reply-To: <20220805192007.iwwu4e2n45hqw4cn@illithid>

--------------1nnSFkaDg52W2Wo0X9dHMzy2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gOC81LzIyIDIxOjIwLCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBBdCB0aGUgcmlzayBvZiBvcGVuaW5nIGFub3RoZXIgdHlwb2dyYXBoaWNhbCBj
YW4gb2Ygd29ybXMuLi4NCj4gDQo+IEF0IDIwMjItMDgtMDJUMTQ6MTc6MjQtMDcwMCwgZW5o
IHdyb3RlOg0KPj4gZGlmZiAtLWdpdCBhL21hbjMvZ2V0bGluZS4zIGIvbWFuMy9nZXRsaW5l
LjMNCj4+IGluZGV4IDhiNzM1NzgyNS4uY2I5ZTViMDQ5IDEwMDY0NA0KPj4gLS0tIGEvbWFu
My9nZXRsaW5lLjMNCj4+ICsrKyBiL21hbjMvZ2V0bGluZS4zDQo+PiBAQCAtMzYsMTIgKzM2
LDEyIEBAIEZlYXR1cmUgVGVzdCBNYWNybyBSZXF1aXJlbWVudHMgZm9yIGdsaWJjIChzZWUN
Cj4+ICAgLkJSIGdldGxpbmUgKCkNCj4+ICAgcmVhZHMgYW4gZW50aXJlIGxpbmUgZnJvbSBc
ZklzdHJlYW1cZlAsDQo+PiAgIHN0b3JpbmcgdGhlIGFkZHJlc3Mgb2YgdGhlIGJ1ZmZlciBj
b250YWluaW5nIHRoZSB0ZXh0IGludG8NCj4+IC0uSVIgIipsaW5lcHRyIiAuDQo+PiArLklS
ICpsaW5lcHRyIC4NCj4gW3NldmVyYWwgb3RoZXIgaW5zdGFuY2VzIGluIHNhbWUgcGFnZSBz
bmlwcGVkXQ0KPiANCj4gSSdtIHdvbmRlcmluZyBpZiB3ZSBzaG91bGQgcmVhbGx5IGJlIHNl
dHRpbmcgdGhlIGRlcmVmZXJlbmNpbmcgb3BlcmF0b3INCj4gaW4gaXRhbGljcyBoZXJlLg0K
PiANCj4gSW4gZGVjbGFyYXRpb25zLCB0aGUgc3RhciBpcyBwYXJ0IG9mIHRoZSBfdHlwZV8s
IG5vdCB0aGUgaWRlbnRpZmllci4NCj4gU2ltaWxhcmx5LCBpbiBleHByZXNzaW9ucywgdGhl
IHN0YXIgaXMgYW4gb3BlcmF0b3IsIGxpa2UgIisiLCBub3QgcGFydA0KPiBvZiB0aGUgaWRl
bnRpZmllci4NCg0KTGV0IG1lIGVzY2FwZSBvdXQgb2YgdGhpcyBhIGJpdCBzaWRld2F5cyA6
UA0KDQoqZm9vLCBhcyBhIHdob2xlLCBpcyBhbiBleHByZXNzaW9uLCBjb25zaXN0aW5nIG9m
IGFuIG9wZXJhdG9yIGFuZCBhbiANCmlkZW50aWZpZXIuICBTbyBJIHdvbid0IGFwcGx5IGlk
ZW50aWZpZXIgcnVsZXMgZm9yIGhpZ2hsaWdodGluZywgYnV0IA0KZXhwcmVzc2lvbiBydWxl
cy4gIFRoZSBydWxlcyBmb3IgbWFya2luZyBleHByZXNzaW9ucyB1cCBhcmU6DQoNCm1hbi1w
YWdlcyg3KToNCiAgICBGb3JtYXR0aW5nIGNvbnZlbnRpb25zIChnZW5lcmFsKQ0KICAgICAg
ICBbLi4uXQ0KDQogICAgICAgIEV4cHJlc3Npb25zLCAgaWYgbm90IHdyaXR0ZW4gb24gYSBz
ZXBhcmF0ZSBpbmRlbnRlZCBsaW5lLA0KICAgICAgICBzaG91bGQgYmUgc3BlY2lmaWVkIGlu
IGl0YWxpY3MuICBBZ2FpbiwgdGhlIHVzZSAgb2YgIG5vbuKAkA0KICAgICAgICBicmVha2lu
ZyAgc3BhY2VzICBtYXkgYmUgYXBwcm9wcmlhdGUgaWYgdGhlIGV4cHJlc3Npb24gaXMNCiAg
ICAgICAgaW5saW5lZCB3aXRoIG5vcm1hbCB0ZXh0Lg0KDQoNCkFuZCB0aGUgZGVlcCByYXRp
b25hbGUgd2h5IEkgd291bGQgbGlrZSB0byBhdm9pZCBoYXZpbmcgdGhlIHN0YXIgaW4gYSAN
CmRpZmZlcmVudCBmb250IGlzIHRoYXQgaXQgY291bGQgYmUgY29uZnVzZWQgd2l0aCB0aGUg
Z2xvYi1saWtlIA0KZXhwcmVzc2lvbnMgdGhhdCB3ZSB1c2UgZm9yIGV4YW1wbGUgdG8gcmVm
ZXIgdG8gU1lTXyogbWFjcm9zLiAgKEFuZCwgDQpCVFcsIEkgc2hvdWxkIGFwcGx5IHNvbWUg
Y29uc2lzdGVuY3kgZml4ZXMgdG8gdGhvc2UgdG9vLCBzaW5jZSB0aGV5IGFyZSANCmluIG1h
bnkgY2FzZXMgaGlnaGxpZ2h0ZWQgaW4gYm9sZCwgYXMgdGhlIHJlc3Qgb2YgdGhlIGlkZW50
aWZpZXIgLS1hbmQgDQp0aGF0IGlzIHBsYWluIHdyb25nLS0uKQ0KDQpEaWQgSSBkb2RnZSB0
aGUgYnVsbGV0Pw0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21h
cg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------1nnSFkaDg52W2Wo0X9dHMzy2--

--------------6hltguDHvJhSSDwGp46O2ydV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLtchYACgkQnowa+77/
2zIKlg/9EOM1jvgXTjrkcYJevx2xEUBqT7tf3Ia36hTkQp6ShaY71xvo7+sSByxN
gDsEkOxODcUEH6EQ3KrA7gIZ5Yvn8tqeLvg4rqLR2OhppbJsJALcZjR1Ksrl1d4i
63ej0xTv4LScKtfDYZYDQKULwT4R20RaQPtp8GPZ7jCYYagMvsssbh6P0if9nXeD
Yj7QpOCJg3bnuQP0AVt0lOzVFg/R4M4ITFh/AujQOKYJRFSqljAf8lGTd0Wa1b5i
FImUQgvconl6UVVf1DzosxzEGJndGVd+ZKr5mvGn3E+HZ7L7m/+gUBQILYnwX9KU
D+PxK1WJj2K8AcgaDSfViYHUXegCP4yrEP7kpWi0nUPNS4REjIOkxDXvJZ8E4bgV
dfHH+6cTXgwvketi6+M+LiMkB/6D8m7SQmHPtv1ekM/XQMTczSbab85Xbi42lbCV
o4yaHDHnt4DrbyVOtHxA4oAklDvZS/wFMPBFcj1yBjJGig8OQHjpNld1fqDftVVX
JEc/74UelBkp6/Oq4t5fe+TfjPaGfxqm1+ePUfs4+CSw/2VzvN8Qm0XJJh/O3lag
aPueLhPGNAUGvAEpDW6QvWGYuZx250gJdd2w1oWinSzruB6wp8CW4JZis08jMYHw
U+IrpO0n4UhNCdmZ8jrnMS5HSGCfieyG+W3By7d84msMAkR8jX4=
=NYDo
-----END PGP SIGNATURE-----

--------------6hltguDHvJhSSDwGp46O2ydV--
