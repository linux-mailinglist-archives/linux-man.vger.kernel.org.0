Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7D60624E70
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 00:28:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231147AbiKJX2M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 18:28:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbiKJX2M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 18:28:12 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBA5E51C1B
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 15:28:10 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id bs21so4372949wrb.4
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 15:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZwgWJP+kjT+OfFNVlOswrhe0N/KqBx88+3kZWrqpHgA=;
        b=jBTJUbck9uZDlbB2cEJ7gw4E+WVU1qFPgxtGB+e7DYoPtSr5cV8pCVrKjVt6Fmsff/
         4GBwmpsiCxTD5GJobIdniDJ+sgSfflsgp2Xsh3+Rc4/+qrQiAY5my1aiLl3viBmcLDdL
         F9C+agAOgO0aeyuOXYWPpC/XgpGfOXLbXmEvDoaZuNgcQ5ml/9LPWUfRludh8MrFqRqI
         IHuFfd6SKT+iQZunsmWp8OHOr3s06KLw5qN0LAcJN/byEjlHBFcYX8to2Ypwk6DTqILd
         el+fWPNcoig8ood/0xwA2GZIdiEuaSyOyygCz/rYL704DYevrLN4wL9U2YWMSQ/ATMPh
         FL2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZwgWJP+kjT+OfFNVlOswrhe0N/KqBx88+3kZWrqpHgA=;
        b=jU07O3eBz9tlWyIUF5MLyWAHFsfL5zGqWCNOymH8dTj7KDOG1D9AYSm9uFi8jdW0Qd
         zDSSsyw4AAicY0mNY3W5ds6vzT6qql9yVCze8wrLdSMlLvponEwmv1cx1aoc5RuXbKtL
         mrWzXpp17svKjKg9k06Q71Ir1/LYXc4Bz9S5Lz6f8HBT/GHqSNxqGw8kFuiFLATTSSGO
         olz9FL9Ka5fp4MtgOIpATWxmqb/NcLf+QEFej30ajcAkbCc7CRQz+fngqBXnoVNJqPru
         ZEvm7MP03ppv7OQ3dCUPDsQdOa/ohADtBm7VUcrYCrQov3OtXY4eGoeJ3CPT8bspLdeF
         omBw==
X-Gm-Message-State: ANoB5pkR48vL0/SQq4TOsGHJHRhd0B5vdDHh2TTjRzPZPXwK020q5zkE
        E5FPRz3BB85a1HHJk1p0jLE=
X-Google-Smtp-Source: AA0mqf4YKTgo201dtaFg0tfMrOTwn9d5kr0yyFVcEAmZHb3dNoFuohGrNorjVCMCq0NQbhaxRW7+OA==
X-Received: by 2002:a5d:5223:0:b0:241:6e0a:bfe2 with SMTP id i3-20020a5d5223000000b002416e0abfe2mr131868wra.668.1668122889322;
        Thu, 10 Nov 2022 15:28:09 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id bs15-20020a056000070f00b0023677693532sm411879wrb.14.2022.11.10.15.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 15:28:08 -0800 (PST)
Message-ID: <432453e0-a432-cbee-cc88-15b03e0fdba1@gmail.com>
Date:   Fri, 11 Nov 2022 00:28:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>,
        Martin Uecker <uecker@tugraz.at>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
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
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nMTzW1NN4sqjsLNfx5bAvCKA"
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
--------------nMTzW1NN4sqjsLNfx5bAvCKA
Content-Type: multipart/mixed; boundary="------------VaQrbz2vHl1X0LXqATGCY9N6";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>, Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <432453e0-a432-cbee-cc88-15b03e0fdba1@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
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
In-Reply-To: <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>

--------------VaQrbz2vHl1X0LXqATGCY9N6
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxMS8xMS8yMiAwMDoxOSwgSm9zZXBoIE15ZXJzIHdyb3RlOg0K
PiBPbiBUaHUsIDEwIE5vdiAyMDIyLCBNYXJ0aW4gVWVja2VyIHZpYSBHY2Mgd3JvdGU6DQo+
IA0KPj4gT25lIHByb2JsZW0gd2l0aCBXRzE0IHBhcGVycyBpcyB0aGF0IHBlb3BsZSBwdXQg
aW4gdG9vIG11Y2gsDQo+PiBiZWNhdXNlIHRoZSBvdmVyaGVhZCBpcyBzbyBoaWdoIGFuZCB0
aGUgc3RhbmRhcmQgaXMgbm90IHVwZGF0ZWQNCj4+IHZlcnkgb2Z0ZW4uICBJdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8gYnVpbGQgc3VjaCBmZWF0dXJlIG1vcmUNCj4+IGluY3JlbWVudGFsbHks
IHdoaWNoIGNvdWxkIGJlIGRvbmUgbW9yZSBlYXNpbHkgd2l0aCBhIGNvbXBpbGVyDQo+PiBl
eHRlbnNpb24uICBPbmUgY291bGQgc3RhcnQgc3VwcG9ydGluZyBqdXN0IFsueF0gYnV0IG5v
dCBtb3JlDQo+PiBjb21wbGljYXRlZCBleHByZXNzaW9ucy4NCj4gDQo+IEV2ZW4gYSBjb21w
aWxlciBleHRlbnNpb24gcmVxdWlyZXMgdGhlIGxldmVsIG9mIGRldGFpbCBvZiBzcGVjaWZp
Y2F0aW9uDQo+IHRoYXQgeW91IGdldCB3aXRoIGEgV0cxNCBwYXBlciAoYW5kIHRoZSBsZXZl
bCBvZiB3b3JrIG9uIGZpbmRpbmcgYnVncyBpbg0KPiB0aGF0IHNwZWNpZmljYXRpb24pLCB0
byBhdm9pZCB0aGUgcHJvYmxlbSB3ZSd2ZSBoYWQgYmVmb3JlIHdpdGggdG9vIG1hbnkNCj4g
ZmVhdHVyZXMgYWRkZWQgaW4gR0NDIDIueCBkYXlzIHdoZXJlIGEgcG9vcmx5IGRlZmluZWQg
ZmVhdHVyZSBpcyAid2hhdGV2ZXINCj4gdGhlIGNvbXBpbGVyIGFjY2VwdHMiLg0KPiANCj4g
SWYgeW91IHVzZSAueCBhcyB0aGUgbm90YXRpb24gYnV0IGRvbid0IGxpbWl0IGl0IHRvIFsu
eF0sIHlvdSBoYXZlIGENCj4gY29tcGxldGVseSBuZXcgYW1iaWd1aXR5IGJldHdlZW4gb3Jk
aW5hcnkgaWRlbnRpZmllcnMgYW5kIG1lbWJlciBuYW1lcw0KPiANCj4gc3RydWN0IHMgeyBp
bnQgYTsgfTsNCj4gdm9pZCBmKGludCBhLCBpbnQgYlsoKHN0cnVjdCBzKSB7IC5hID0gMSB9
KS5hXSk7DQo+IA0KPiB3aGVyZSBpdCdzIG5ld2x5IGFtYmlndW91cyB3aGV0aGVyICIuYSA9
IDEiIGlzIGFuIGFzc2lnbm1lbnQgdG8gdGhlDQo+IGV4cHJlc3Npb24gIi5hIiBvciBhIHVz
ZSBvZiBhIGRlc2lnbmF0ZWQgaW5pdGlhbGl6ZXIuDQo+IA0KPiAoSSB0aGluayB0aGF0IGlm
IHlvdSBhZGQgYW55IHN5bnRheCBmb3IgdGhpcywgR05VIFZMQSBmb3J3YXJkIGRlY2xhcmF0
aW9ucw0KPiBhcmUgY2xlYXJseSB0byBiZSBwcmVmZXJyZWQgdG8gaW52ZW50aW5nIHNvbWV0
aGluZyBuZXcgbGlrZSBbLnhdIHdoaWNoDQo+IGludHJvZHVjZXMgaXRzIG93biBwcm9ibGVt
cy4pDQoNClllYWgsIEkgdGhpbmsgbGltaXRpbmcgaXQgdG8gWy5uXSBpbml0aWFsbHksIGFu
ZCBvbmx5IG1vdmluZyBmb3J3YXJkLCBzdGVwIGJ5IA0Kc3RlcCwgaWYgaXQncyBwZXJmZWN0
bHkgY2xlYXIgdGhhdCBpdCdzIGRvYWJsZSBzZWVtcyB2ZXJ5IHJlYXNvbmFibGUuDQoNClJl
OiBHTlUgVkxBIGZ3ZCBkZWNsOg0KDQpUaGlzIGV4YW1wbGUgaXMgd2hhdCBJJ20gd29ycmll
ZCBhYm91dDoNCg0KICAgICAgICAgaW50IGZvbyhpbnQgYTsgaW50IGJbYV0sIGludCBhKTsN
CiAgICAgICAgIGludCBmb28oaW50IGEsIGludCBiW2FdLCBpbnQgbyk7DQoNCk9rYXksIHBh
cmFtZXRlcnMgc2hvdWxkIGhhdmUgbW9yZSByZWFkYWJsZSBuYW1lcy4uLiAgQnV0IHN0aWxs
LCBpdCBhbGxvd3MgZm9yIGEgDQpoaWdoIGNoYW5jZSBvZiB3dGYgbW9tZW50cy4gIEhvd2V2
ZXIsIEkgY2FuIHRoaW5rIG9mIGEgc3ludGF4IHZlcnkgc2ltaWxhciB0byANCkdOVSdzLCB0
aGF0IHdvdWxkIG1ha2UgaXQgYSBiaXQgYmV0dGVyIGluIHRlcm1zIG9mIHJlYWRhYmlsaXR5
OiBub3QgZGVjbGFyaW5nIA0KdGhlIHR5cGUgaW4gdGhlIGZ3ZCBkZWNsOg0KDQoNCiAgICAg
ICAgIGludCBmb28oYTsgaW50IGJbYV0sIGludCBhKTsNCiAgICAgICAgIGludCBmb28oaW50
IGEsIGludCBiW2FdLCBpbnQgbyk7DQoNCkNoZWVycywNCg0KQWxleA0KDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------VaQrbz2vHl1X0LXqATGCY9N6--

--------------nMTzW1NN4sqjsLNfx5bAvCKA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtiQEACgkQnowa+77/
2zJ02w/9EFEUEY6910vE3eKG9PgW4/hnGGKdVCmyl2MCu+7D0uQ6Gzn94LulcZv4
Uue7ljuB7EkcFgwXU0Dp+tJfdCIYhTH4bbjweCmDrzTaDE3XrpYc0WUQsF8GoOfK
6qPpKgZVBhcJxKxcW0CUVLsDEnHehlsQu0CkSEKDw2MPecKmPwmgX98df9KVNSjK
RGNfhKlz+5xwrvJ1LcUgqBm36yWtduuzaqMyK0BOI/hbeX0m8it0TM8CKt3luGvv
iDvz/UxmL8hcxa0pERkMWp6CqPqNhtvb3wBRaoxBq0zb+kK1QQWyMOcRsAJH4QKd
swbc+JR5K/+JuLyM4tLARgEj9jOIBNDYEzRI11nlBobQhfxZnWYpSJBtkGGl7YrV
zjqSGO/wIatndahWHRUY7sXo+Ol0ir821opjZm1PddZepmr6KJ0mYb/5lq0TmNFc
TI972gXeAqFdbKJdcKtyMLDYXHgD/bGUYOZKNYz+lM8YZIEkAd3wdEiGotx40klK
P/OJeBY07iZ20bnUsIZmKYihNmng7Mc1HDaAROF0P0GpexrhbKdedIQS6v87SYiY
wbPqJSL+jdIuiUh1jSYk62KoxmiJ8BIUtoVhFEE/SDLy601ClI3Sd6UPMGlBnrK1
IUZSZhf/8q0GBeQXKDv3TCaeI2Rs30XBXu5a8nUViRW7lGIy5K4=
=GFoi
-----END PGP SIGNATURE-----

--------------nMTzW1NN4sqjsLNfx5bAvCKA--
