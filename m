Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B39C2623801
	for <lists+linux-man@lfdr.de>; Thu, 10 Nov 2022 01:09:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232040AbiKJAJa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 19:09:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231927AbiKJAJ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 19:09:28 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DDA6AE64
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 16:09:27 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id g12so74599wrs.10
        for <linux-man@vger.kernel.org>; Wed, 09 Nov 2022 16:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qgOtPRM8gUPn9P+3r2ZkULrpbeqXO4+gM4bLxRhmzNY=;
        b=CEP+udA+KL6RFJz0XfEDNoyPxt8xD8zgYiHZqpo3LG/bXjJZdzjsmLGS3R9CGcTASU
         FfjCURGZH0XyhvIrNJ7U3VRzd3K0PoY8FS3HU7zs8NMAsSo3b+hbzo6DY6B5hOWl+/dq
         l9KKmouoOrObVbj9bMf+rgVxNp4BdO3Wtpg3xuOENo5j5IvWWgYGGXAL93fj46Z9s+Zw
         /+38Dcat5Hc2Zr3aiMT+tGzXA7mgX6kgNND/mvl6sy8KtZOPNXBJA3Q864AjvKZ59MmU
         0WgmLL0Z+ASZF67WmoHWvsHvj/kWH7aWCTvYqUeFqNeopcqoZijcAXYIdr6SrpbhoTAe
         8OOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qgOtPRM8gUPn9P+3r2ZkULrpbeqXO4+gM4bLxRhmzNY=;
        b=UiZEetV5YvHGGMUDz3OLIDiIKj5uCGusmsK2a/SSqPfCMS7HDYfthXFXhYgcDd5SqQ
         QMBmWjxqR0lNZy33NzJ/b4Cvr+vb8q1bGjnDTGfIGywUonv+Gg4AUJMjOnXQwhpBOzCQ
         UGWc2h529kS/u220yQY6togCxjabN7Mcx/pgbExnpNAJMozpFMLWz2pPuz3pwQ7iV+bv
         UyJ6E+uQIFdMcmAxKgvzSAECz+ZWjIWIheTlnYZS+z+qUOAnjCYiXUzl7rAkPF16HnEj
         P6uZ5WpVT86NpgP4oxsIhTSjQky6VlMX0sM2lGnJaC6QS5Sa5NojiFgzzCU08F8vePd9
         pu9Q==
X-Gm-Message-State: ACrzQf3iQMt0pSTnAjojZOeRrr9kNopvnsKwnrziRJ34V7KAHVZtk0dk
        olnZnv0l77hLSWeXJIn0ko8=
X-Google-Smtp-Source: AMsMyM6JCdnZJGqGEXhN3w/oJBV8QOT9irNH5bHRfkDvFN2UPzVE+qRaLmODYb6OL8K+dMP61BdduQ==
X-Received: by 2002:a5d:5386:0:b0:236:bec0:d935 with SMTP id d6-20020a5d5386000000b00236bec0d935mr35653795wrv.547.1668038965727;
        Wed, 09 Nov 2022 16:09:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q10-20020adff94a000000b0022e035a4e93sm14092005wrr.87.2022.11.09.16.09.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Nov 2022 16:09:25 -0800 (PST)
Message-ID: <601680ae-30d7-1481-e152-034083f6dde1@gmail.com>
Date:   Thu, 10 Nov 2022 01:09:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>
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
In-Reply-To: <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Tw0to516gEz5jbjjiJJDdXUa"
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
--------------Tw0to516gEz5jbjjiJJDdXUa
Content-Type: multipart/mixed; boundary="------------hX6v1d1gdz0ozIBDz7V2mY0s";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <601680ae-30d7-1481-e152-034083f6dde1@gmail.com>
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
In-Reply-To: <e9ba79ff-fb73-c4d4-b966-d8d15062f7b7@gmail.com>

--------------hX6v1d1gdz0ozIBDz7V2mY0s
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzEwLzIyIDAxOjA2LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4gSGkg
TWFydGluLA0KPiANCj4gT24gOS8zLzIyIDE3OjMxLCBNYXJ0aW4gVWVja2VyIHdyb3RlOg0K
Pj4gTXkgZXhwZXJpZW5jZSBpcyB0aGF0IGlmIG9uZSB3YW50cyB0byBzZWUgc29tZXRoaW5n
IGZpeGVkLA0KPj4gb25lIGhhcyB0byBwdXNoIGZvciBpdC7CoCBTdGFuZGFyZGl6YXRpb24g
aXMgbWVhbnQNCj4+IHRvIHN0YW5kYXJkaXplIGV4aXN0aW5nIHByYWN0aWNlLCBzbyBpZiB3
ZSB3YW50IHRvIHNlZQ0KPj4gdGhpcyBpbXByb3ZlZCwgd2UgY2FuIG5vdCB3YWl0IGZvciB0
aGlzLg0KPiANCj4gSSBmdWxseSBhZ3JlZSB3aXRoIHlvdS7CoCBJJ3ZlIGJlZW4gcnVtaW5h
dGluZyB0aGVzZSBwYXRjaGVzIGZvciBzb21lIHRpbWUsIGZvciANCj4gaGF2aW5nIHNvbWUg
bW9yZSB0aW1lIHRvIHRoaW5rIGFib3V0IHRoZW0uwqAgTm93LCBJIGxpa2UgdGhlbSBlbm91
Z2ggdG8gcHVzaC4gU28sIA0KPiBhZnRlciBhIGZldyBtaW5vciBjb3NtZXRpYyBpc3N1ZXMg
ZGV0ZWN0ZWQgYnkgc29tZSBsaW50ZXJzLCBJJ3ZlIHB1c2hlZCB0aGUgDQo+IGNoYW5nZXMg
dG8gZG9jdW1lbnQgYWxsIG9mIG1hbjIgYW5kIG1hbjMgd2l0aCBoeXBvdGhldGljYWwgVkxB
IHN5bnRheC4NCj4gDQo+IE5vdywgSSd2ZSByZWxlYXNlZCBtYW4tcGFnZXMtNi4wMSB2ZXJ5
IHJlY2VudGx5IChqdXN0IGEgZmV3IHdlZWtzIGFnbyksIGFuZCBJIA0KPiBkb24ndCBwbGFu
IHRvIHJlbGVhc2UgYWdhaW4gaW4gYSB5ZWFyIG9yIHR3bywgc28gdGhlcmUncyB0aW1lIHRv
IGRvIHRoZSANCj4gaW1wbGVtZW50YXRpb24gaW4gR0NDLsKgIEZyb20gbXkgc2lkZSwgcGxl
YXNlIGNvbnNpZGVyIHRoaXMgYW4gQUNLIG9yIGV2ZW4gDQo+IHNvbWV3aGF0IG9mIGEgcHVz
aCB0byBnZXQgdGhpbmdzIGRvbmUgaW4gdGhlIGNvbXBpbGVyIHNpZGUgb2YgdGhpbmdzIDop
DQo+IA0KPiBJJ2xsIHNob3cgaGVyZSBhbiBleGNlcnB0IG9mIHdoYXQga2luZCBvZiBzeW50
YXggaGFzIGJlZW4gcHVzaGVkLsKgIE9mIGNvdXJzZSwgDQo+IHRoZXJlJ3Mgcm9vbSBmb3Ig
aW1wcm92aW5nL2ZpeGluZywgc2luY2UgaXQncyBub3Qgc2VlbiBhbiBvZmZpY2lhbCByZWxl
YXNlLCBidXQgDQo+IGZvciBub3csIHRoaXMgaXMgd2hhdCdzIHVwIHRoZXJlOg0KPiANCj4g
DQo+ICDCoMKgwqDCoMKgwqAgaW50IHN0cm5jbXAoY29uc3QgY2hhciBzMVsubl0sIGNvbnN0
IGNoYXIgczJbLm5dLCBzaXplX3Qgbik7DQo+IA0KPiAgwqDCoMKgwqDCoMKgIGxvbmcgbWJp
bmQodm9pZCBhZGRyWy5sZW5dLCB1bnNpZ25lZCBsb25nIGxlbiwgaW50IG1vZGUsDQo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHVuc2lnbmVkIGxvbmcg
bm9kZW1hc2tbKC5tYXhub2RlICsgVUxPTkdfV0lEVEgg4oCQIDEpDQo+ICDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvIFVMT05HX1dJRFRIXSwNCj4gIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBtYXhub2RlLCB1
bnNpZ25lZCBpbnQgZmxhZ3MpOw0KPiANCj4gIMKgwqDCoMKgwqDCoCBpbnQgY2FjaGVmbHVz
aCh2b2lkIGFkZHJbLm5ieXRlc10sIGludCBuYnl0ZXMsIGludCBjYWNoZSk7DQo+IA0KPiAN
Cj4gSSd2ZSBzaG93biB0aGUgdGhyZWUga2luZHMgb2YgcHJvdG90eXBlcyB0aGF0IGhhdmUg
YmVlbiBjaGFuZ2VkOg0KPiANCj4gLcKgIE5vcm1hbCBWTEE7IG5vdGhpbmcgZmFuY3kgZXhj
ZXB0IGZvciB0aGUgJy4nLg0KPiAtwqAgQ29tcGxleCBzaXplIGV4cHJlc3Npb25zLg0KPiAt
wqAgJ3ZvaWQgKicgVkxBcyAoYXNzdW1pbmcgR05VIGNvbnZlbnRpb25zOiBzaXplb2Yodm9p
ZCAqKT09MSkuDQoNCk9vcHM6IHNpemVvZih2b2lkKT09MQ0KPiANCj4gDQo+IENoZWVycywN
Cj4gDQo+IEFsZXgNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------hX6v1d1gdz0ozIBDz7V2mY0s--

--------------Tw0to516gEz5jbjjiJJDdXUa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNsQTQACgkQnowa+77/
2zKL4g/+OIkE2MC2xpqxcYXlrE7nKLnJ7mzpiFye5kn5Vpe56MKETIAwf9wP7UpM
SZA9jZnRi9qZr+7yQa4RMe88oRjOKh2sPj8C0iYk6Ps7fhNgkzUSewkPFSZzdH8l
KZQshaHWalxbkk3wskSnkQ7XhzjI62hjdffP4sClvdA5P0lBrtep1aj77G1S65mp
odG5Lnn+L/2cCG9LZzxXnvDRshsdhhA1/JNe8b5qa1UvQU3jfyiitFKh6NUEaSZi
Z2BXS1kV6zPxljMqSE7GFD49ZnpuqPXk83Hz5Xq/APzRNZwdcYnIJFXEgYd0qxJM
UJNqNIEojR3MbNBjoQ1PnoxTARxfqhSuhoHf/jcD2h8f0ZNI8bWdGhdatsg/maQ/
Kaf1fXQDhRStM0DJCtg/qwyPB0YejAm9HiygUEgBulpnGp9ZRHW9Dllm2v5Ker8w
lQDfT9wFn+Mg8GD0JKW/GD2U8n5Htfh3jgCoIFJaUuLFLP1bCbTdPd6ITUNHrU8c
uoacvN/TVxSmqBX7zpUm5XPMhjKsS3FIz2a2MUIe9FQeNPm5Kxo6hgSdDJn3fZnp
opi7XK32QvGUlzm3k7SzQHwspAcuw1a0y5/ojz76X2T5deOq36Sp7Xhl5X3UZDFP
5UcI//xcSTNRzThY4WvxIde+JuBnpawL1DazCAB8LEOH+0mLVbU=
=VCjo
-----END PGP SIGNATURE-----

--------------Tw0to516gEz5jbjjiJJDdXUa--
