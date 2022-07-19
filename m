Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADF2157A9A6
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 00:09:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236934AbiGSWJv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 18:09:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234526AbiGSWJu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 18:09:50 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B731C3AB23
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:09:49 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d8so3643985wrp.6
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=5mh49fEkGkdLqVAqkX8XvLs3ycmlnYKNwRXEDHVqpEs=;
        b=J4uwWZf391388SvoytZJARwpFOaV+DTanToXBmZcFUGOVH9BIjITmLvQRqjqzbhkYd
         Id6aa8gWtkQS3t3z2yVkqcGHUJzcf29o7rJ8utHJoGPg9mk3aYHsaQi6eIoMpe6BWBbm
         ad5tUcHMZqjcU77l4a1hFkpHGFuoKoizT2lFpON6YbqMNPtAjtR7xGGBtoXXlaOc1VRs
         e2jYWAgW70Q3s2O06Ke6OYlKetzk8s1eXNgrBRacPRkB96uzthVAk/OWWsVeyC42jRsK
         E3VnvKl4Tjoz46JnziSnLTLPUcE9f1n++LmCM+mz1Bh3/WwPipRJQeBt1e29RyJcRsZz
         H+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=5mh49fEkGkdLqVAqkX8XvLs3ycmlnYKNwRXEDHVqpEs=;
        b=Yc7lSEt9RxsSRu+iexvotcDmTdk4VRaN6WOJ4ZnUBCiGklEJbamN78kPGsSos7yzA9
         V3i9p6IGofNcxPV/jua5Js/kBccY2LvMCfekeRAcqQs8WYsglDTvAYvp1v9Fo5YuwaBh
         Vxu/615dKYLF+VGU1SxnUwWSNJ3FHgi2znRk6JwGLkRcbXHQQxHWnEaG6NpTqaQZYG2Y
         2pilRuwN6w7ZMxhOmtRKxnNZDRr7N+Mcogl/GmriAm2fumW6M2jyQer4BWZBah74YndH
         giFF913YOldLvftfDwITmh9ipZNFP0UT5EJlRuQFZkBKsFQM4wyu8JWFNm6UWDgixCDl
         jSrQ==
X-Gm-Message-State: AJIora+luAp74Rhoh1DG7HA83sLnc7OaIXKUwjgvoYF7PIUCDYRZQbGR
        mnZi1DI7xBL0vVMFgSGBIxzULSPnjck=
X-Google-Smtp-Source: AGRyM1vCAM2eaQauPOE2khTX+lC8CJvc/DoSbCEM0thYbLbYgRmmVMwuC3x/6tq3xlhGThk07Dhy8A==
X-Received: by 2002:a05:6000:1a41:b0:20e:687f:1c3 with SMTP id t1-20020a0560001a4100b0020e687f01c3mr27640912wry.415.1658268588152;
        Tue, 19 Jul 2022 15:09:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h205-20020a1c21d6000000b003a2fde6ef62sm275492wmh.7.2022.07.19.15.09.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 15:09:47 -0700 (PDT)
Message-ID: <3bd974b4-f2df-7189-de6b-ca1be85a3fd6@gmail.com>
Date:   Wed, 20 Jul 2022 00:09:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v3 1/2] tm.3type: describe tm_zone, tm_gmtoff
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
 <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
 <2a850b7d-a888-9577-6c0a-84deb542c0b9@gmail.com>
 <20220719213653.tljzjqkwkl4ckfrl@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220719213653.tljzjqkwkl4ckfrl@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ydwgPmP5zDPQjx2OziJuMnjG"
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
--------------ydwgPmP5zDPQjx2OziJuMnjG
Content-Type: multipart/mixed; boundary="------------lLli3WXunTKH6Mx0yLWoJLCb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <3bd974b4-f2df-7189-de6b-ca1be85a3fd6@gmail.com>
Subject: Re: [PATCH v3 1/2] tm.3type: describe tm_zone, tm_gmtoff
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
 <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
 <2a850b7d-a888-9577-6c0a-84deb542c0b9@gmail.com>
 <20220719213653.tljzjqkwkl4ckfrl@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220719213653.tljzjqkwkl4ckfrl@tarta.nabijaczleweli.xyz>

--------------lLli3WXunTKH6Mx0yLWoJLCb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkhDQoNCk9uIDcvMTkvMjIgMjM6MzYsINC90LDQsSB3cm90ZToNCj4+PiArLlBQDQo+Pj4g
Ky5CUiB0aW1lem9uZSAoMyksDQo+Pj4gK2FzIGEgdmFyaWFibGUsIGlzIGFuIFhTSSBleHRl
bnNpb246IHNvbWUgc3lzdGVtcyBwcm92aWRlIHRoZSBWNy1jb21wYXRpYmxlDQo+Pj4gKy5c
IiBGcmVlQlNEDQo+Pj4gKy5CUiB0aW1lem9uZSAoKQ0KPj4NCj4+IEkndmUgYmVlbiB0aGlu
a2luZyBhYm91dCBpZiB3ZSBzaG91bGQgcHV0IHRoZXJlIGEgc2VjdGlvbiBudW1iZXIuDQo+
PiBJIHRoaW5rIHdlIHNob3VsZC4gIEFjdHVhbGx5LCB0aW1lem9uZSgzKSBkb2N1bWVudHMg
dGhlIGZ1bmN0aW9uIGluIE5PVEVTLg0KPiANCj4gRGlzYWdyZWU6IHRpbWV6b25lKCkgaXMg
L25vdC8gdGltZXpvbmUoMykuDQoNCkkgdW5kZXJzdGFuZCB0aGF0IHRpbWV6b25lKCkgaXMg
bm90IF9vdXJfIHRpbWV6b25lKDMpLiAgQW5kIHRoYXQncyB3aHkgSSANCnN0aWxsIGhhdmUg
c29tZSBkb3VidHMuICBJIHRob3VnaHQgYWJvdXQgdXNpbmcgdGltZXpvbmUoM0JTRCksIGJ1
dCANCnNhZGx5LCBsaWJic2QgZG9lc24ndCBwcm92aWRlIHRoZSB0aW1lem9uZSgpIGZ1bmN0
aW9uLg0KDQo+IA0KPiBPdXIgKGFuZCBYU0kpIHRpbWV6b25lKDMpIGlzDQo+ICAgIGV4dGVy
biBsb25nIHRpbWV6b25lOw0KPiB3aGVyZWFzIHRoZSBWNy1jb21wYXRpYmxlIHRpbWV6b25l
KCkgaXMNCj4gICAgZXh0ZXJuIGNoYXIgKnRpbWV6b25lKGludCB6b25lLCBpbnQgZHN0KTsN
Cj4gY2YuIGh0dHBzOi8vd3d3LmZyZWVic2Qub3JnL2NnaS9tYW4uY2dpP3F1ZXJ5PXRpbWV6
b25lJmFwcm9wb3M9MCZzZWt0aW9uPTAmbWFucGF0aD1GcmVlQlNEKzEzLjEtUkVMRUFTRSth
bmQrUG9ydHMmYXJjaD1kZWZhdWx0JmZvcm1hdD1odG1sDQo+IA0KPiBUaGF0J3Mgd2h5IEkg
WHJlZCB0aGUgZmlyc3QgdXNhZ2UgKHdoaWNoIHJlZmVycyB0byB0aGUgdmFyaWFibGUgd2UN
Cj4gZG9jdW1lbnQpIGFuZCBub3QgdGhlIHNlY29uZCAod2hpY2ggcmVmZXJzIHRvIGEgZnVu
Y3Rpb24gd2UgZG9uJ3QpLg0KDQpCdXQgd2UgZG8gZG9jdW1lbnQgQlNEJ3MgdGltZXpvbmUo
KSBpbiBvdXIgdGltZXpvbmUoMykgKGFsdGhvdWdoIHRoYXQgDQpkb2N1bWVudGF0aW9uIGNv
dWxkIHByb2JhYmx5IGJlIGltcHJvdmVkKToNCg0KDQokIG1hbiB0aW1lem9uZSB8IHNlZCAt
biAnL05PVEVTLywvXiQvcCcNCk5PVEVTDQogICAgICAgIDQuM0JTRCBoYWQgYSBmdW5jdGlv
biBjaGFyICp0aW1lem9uZSh6b25lLCBkc3QpIHRoYXQgIHJl4oCQDQogICAgICAgIHR1cm5l
ZCAgdGhlICBuYW1lICBvZiAgdGhlICB0aW1lem9uZSBjb3JyZXNwb25kaW5nIHRvIGl0cw0K
ICAgICAgICBmaXJzdCBhcmd1bWVudCAobWludXRlcyBXZXN0IG9mIFVUQykuICBJZiB0aGUg
c2Vjb25kICBhcuKAkA0KICAgICAgICBndW1lbnQgIHdhcyAgMCwgdGhlIHN0YW5kYXJkIG5h
bWUgd2FzIHVzZWQsIG90aGVyd2lzZSB0aGUNCiAgICAgICAgZGF5bGlnaHQgc2F2aW5nIHRp
bWUgdmVyc2lvbi4NCg0KQ29uc2lkZXJpbmcgYWxzbyBtYW4tcGFnZXMoNyk6DQogICAgICAg
IFNFRSBBTFNPDQogICAgICAgICAgICAgICBbLi4uXQ0KDQogICAgICAgICAgICAgICBHaXZl
biB0aGUgZGlzdHJpYnV0ZWQsIGF1dG9ub21vdXMgbmF0dXJlICBvZiAgRk9TUw0KICAgICAg
ICAgICAgICAgcHJvamVjdHMgIGFuZCB0aGVpciBkb2N1bWVudGF0aW9uLCBpdCBpcyBzb21l
dGltZXMNCiAgICAgICAgICAgICAgIG5lY2Vzc2FyeeKAlGFuZCBpbiBtYW55IGNhc2VzIGRl
c2lyYWJsZeKAlHRoYXQgdGhlIFNFRQ0KICAgICAgICAgICAgICAgQUxTTyBzZWN0aW9uIGlu
Y2x1ZGVzIHJlZmVyZW5jZXMgdG8gIG1hbnVhbCAgcGFnZXMNCiAgICAgICAgICAgICAgIHBy
b3ZpZGVkIGJ5IG90aGVyIHByb2plY3RzLg0KDQoNCkknZCBzYXkgd2Ugc2hvdWxkIC5YciAo
Lk1SKSBpdC4gIFVudGlsIC5NUiBpcyB3aWRlbHkgYXZhaWxhYmxlLCAuQlIgKDMpIA0KaXMg
Z29vZCBlbm91Z2ggOikNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KPiANCj4gVGhvdWdodHM/
DQo+IA0KPiBCZXN0LA0KPiDQvdCw0LENCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------lLli3WXunTKH6Mx0yLWoJLCb--

--------------ydwgPmP5zDPQjx2OziJuMnjG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXK6MACgkQnowa+77/
2zLwFg//Zagf5ehYzALC2R31PFO1TVOGBfxIMKFFmGNv5pTf9abcKB+LUkuU/cvP
bmaQjvq0eV2fhFxInaF7fMs8DuZstlHTJPN+TvkJANCdTX0V7OBDc2T6HxwzvIDo
dxzLh0trGZa2g28ivJwvb/gKDp9ocD2ei82h+4nsuft77OCL1N7SFpmTdvrjhvVy
bf9I1WBW81uLo9l6Pqb/hAON7vSHa+32PlXvNnjBlY1dwYMEtMTaQ1qzCTm1w+El
sz9kKRhfS8BiYNhLGnCqUE7PiQW3y0scmkP8BMcjxFNZIc9DRwHBtUtT5hvau+6f
BiuitwKKBEJcxbG6+XnDp1u1+n13irqD3cdZGPHtr2JUFOcYbWtm7wSCkWj5g6Te
hsHo0QU8+bMXKgpybo5fz8ZpOOcld74TMSAzl86ivk8VJ/bCgjT5LU7erUgRGq0s
VQ6rLWBJfCRaeFyXpvXZbf0wOaeYlTR4vwvpehgadv2u9zImKu6kftOhEBpTKdEw
6Rm9u46hSwhlb1N1aKz3fr/I5OIO0Nim+Tzme4QP/dAOND61KNYDhJ5ZicMhCW7P
RA2W+UBVeuzHPa7tupqTozym4ZDSiHCkTdFmSAd81lgVpB30rH6O2i0moOunw35T
hXcDMhuuZW+iLK48IQo703G92XXkM5Jum8k2zs5giCFsL6w3mp4=
=mwPX
-----END PGP SIGNATURE-----

--------------ydwgPmP5zDPQjx2OziJuMnjG--
