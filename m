Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8283457A884
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 22:50:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240293AbiGSUuS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 16:50:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237788AbiGSUuS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 16:50:18 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8802B21824
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 13:50:16 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id b6so9139125wmq.5
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 13:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=4bt42O+ytvCYpuG73TcbYqAL9+OXviavJY/O3J8c/vM=;
        b=V1Z/KHh+/10iv0q7DE5CY5UMwUkcYmVVGJTmhw8Xx4jwi3IWyO/civt3Gk+JL46qnQ
         J9cPhXITCOxfhnzyTtmWAxOT1AW684cNYMogL1Wjps4zsUDbkMMF9hu4V4YYysemD0AX
         Rh0vxSeLhimp7TY/Ogy+D1qKVPWV4PL7zQdt7jg/kEBKUIetTSUt4twKrG69EefjiQeB
         HPU7ZKWaaTByBg3SDit3mSTUVhz1yuYMMt0RznBZvdWc/oqziWoVbW4uz/MVr5Q7mOgj
         TcdqUUMqJxSefltxKJVhAht9AjcPgjvZDvgs3+sj3EbojkSLEymsQaLyDEUf0D/dOYIM
         lsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=4bt42O+ytvCYpuG73TcbYqAL9+OXviavJY/O3J8c/vM=;
        b=GXupTsQgFaPgcAeMTwzrY2fORXKwCmEOHhDBc+aqFOHb0metR1hdFozbC1fCmlKxT0
         7quh1Bli8VKjvRQk7BpYvX99EGkWdTGqBt/c48uTc0BBLxY7jfKLTZydUNZHDfQ2gweU
         NMkqDtE/KY7OGKgEG0eVamj7OtD3KybTZUw36wV/ilK5BhNpgz8S+mRRFck1RJ1dvKmO
         z9B1BpA9nuwYtZ5rwMpIok94gtIkmqVAm9cfN5kwymLvGKVEPOUElmXVNvSe5J3FTVj/
         6IPn45C/c68Yls+elYAsDoig3LOq8CK+Js7McEzcTvNuIuj2dQYJEjrexx146NvwBIqz
         hk7Q==
X-Gm-Message-State: AJIora+TRkLi/j6s5P0PUzrKqN5phw81uJPJFeIMDzeHXlLY+7c4sHj6
        fI9ZAWoxoZ3KRl/rwYQlsdHhszzES80=
X-Google-Smtp-Source: AGRyM1sTLpUgqjzEaC6SqP8ya/CLNvJWpsYypd+g1zvSACSDBV/j1g+PI4F2e3iD7wHX8Z01zaprWw==
X-Received: by 2002:a7b:cb82:0:b0:39e:f9cf:12b7 with SMTP id m2-20020a7bcb82000000b0039ef9cf12b7mr896678wmi.135.1658263815033;
        Tue, 19 Jul 2022 13:50:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o3-20020a5d4743000000b0020d07d90b71sm14091693wrs.66.2022.07.19.13.50.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 13:50:14 -0700 (PDT)
Message-ID: <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
Date:   Tue, 19 Jul 2022 22:50:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0cP25F7V01Kw0WBY6jcDfitu"
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
--------------0cP25F7V01Kw0WBY6jcDfitu
Content-Type: multipart/mixed; boundary="------------4jSuxKdPEJBLMj2m0KicrKKR";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>

--------------4jSuxKdPEJBLMj2m0KicrKKR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

ID4gbWVudGlvbiBzdHJmdGltZV9sKCkgd2l0aCAuc28gbGluaw0KDQpNZW50aW9uPyByZWFs
bHk/DQoNClRoYXQncyB0aGUgbW9zdCBkb3ducGxheWluZyB3b3JkIGZvciBkZXNjcmliaW5n
IHRoZSBhZGRpdGlvbiBvZiBmdWxsIA0KZG9jdW1lbnRhdGlvbiBmb3IgYSBmdW5jdGlvbi4g
eEQNCg0KQWxzbywgcGxlYXNlIGFkZCB0aGUgbGluayBwYWdlIG5hbWUgdG8gdGhlIGxpc3Qg
b2YgYWZmZWN0ZWVkIHBhZ2VzOg0Kc3RyZnRpbWUuMywgc3RyZnRpbWVfbC4zOiAuLi4NCg0K
WW91IGNhbiB1c2UgdGhlICQobWFuX2dpdHN0YWdlZCkgYmFzaCBmdW5jdGlvbiBmcm9tIC4v
c2NyaXB0cy8gdG8gDQpwcm9kdWNlIHlvdXIgZ2l0IG1lc3NhZ2VzLiAgSSB0eXBpY2FsbHkg
dXNlIGl0IGFzOg0KDQpnaXQgY29tbWl0IC1zbSAiJChtYW5fZ2l0c3RhZ2VkKTogRGVzY3Jp
cHRpb24gZ29lcyBoZXJlIg0KDQpJIGFwcGVuZGVkIHRoZSBmb2xsb3dpbmcgdG8gbXkgLmJh
c2hfYWxpYXNlczoNCg0KaWYgWyAtZiB+L3NyYy9saW51eC9tYW4tcGFnZXMvbWFuLXBhZ2Vz
L3NjcmlwdHMvYmFzaF9hbGlhc2VzIF07IHRoZW4NCgkuIH4vc3JjL2xpbnV4L21hbi1wYWdl
cy9tYW4tcGFnZXMvc2NyaXB0cy9iYXNoX2FsaWFzZXM7DQpmaTsNCg0KDQpPbiA3LzE5LzIy
IDIwOjQ4LCDQvdCw0LEgd3JvdGU6DQo+IFNpZ25lZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1p
YcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFjemxld2VsaS54eXo+DQo+IC0tLQ0KPiAg
IG1hbjMvc3RyZnRpbWUuMyAgIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrKystDQo+
ICAgbWFuMy9zdHJmdGltZV9sLjMgfCAgMSArDQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyNyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1h
bjMvc3RyZnRpbWVfbC4zDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9zdHJmdGltZS4zIGIv
bWFuMy9zdHJmdGltZS4zDQo+IGluZGV4IGRjOThhNTEyMi4uMTFkYTdlNzg3IDEwMDY0NA0K
PiAtLS0gYS9tYW4zL3N0cmZ0aW1lLjMNCj4gKysrIGIvbWFuMy9zdHJmdGltZS4zDQpbLi4u
XQ0KPiBAQCAtNTE2LDE0ICs1MzUsMjAgQEAgbGJ4IGxiIGxiDQo+ICAgbCBsIGwuDQo+ICAg
SW50ZXJmYWNlCUF0dHJpYnV0ZQlWYWx1ZQ0KPiAgIFR7DQo+IC0uQlIgc3RyZnRpbWUgKCkN
Cj4gKy5CUiBzdHJmdGltZSAoKSwNCj4gKy5CUiBzdHJmdGltZV9sICgpDQo+ICAgVH0JVGhy
ZWFkIHNhZmV0eQlNVC1TYWZlIGVudiBsb2NhbGUNCj4gICAuVEUNCj4gICAuaHkNCj4gICAu
YWQNCj4gICAuc3AgMQ0KPiAgIC5TSCBDT05GT1JNSU5HIFRPDQo+ICsuQlIgc3RyZnRpbWUg
KCk6DQo+ICAgU1ZyNCwgQzg5LCBDOTkuDQo+ICsuYnINCg0KUHJlZmVyIC5QUA0KDQpXZSBh
dm9pZCByYXcgcm9mZiByZXF1ZXN0cyBpbiBtYW4oNykgcGFnZXMgYXMgbXVjaCBhcyBwb3Nz
aWJsZS4NCkknZCB0ZWxsIHlvdSBob3cgdG8gZ2V0IHRoZSBzYW1lIGJlaGF2aW9yIHdpdGgg
cmFyZSBtYW4oNykgbWFjcm9zLCBidXQgSSANCmRvbid0IHRoaW5rIHdlIG5lZWQgdG8gY29t
cGxpY2F0ZSBpdCwgd2hlbiAuUFAgaXMgYWxzbyBuaWNlIGhlcmUuDQpCdXQganVzdCBmb3Ig
eW91IHRvIGtub3csIHRoZXJlJ3MgLlBEIDAgaW4gbWFuKDcpLg0KDQoNCkNoZWVycywNCg0K
QWxleA0KDQo+ICsuQlIgc3RyZnRpbWVfbCAoKToNCj4gK1BPU0lYLjEtMjAwOC4NCj4gKy5Q
UA0KPiAgIC5cIiBGSVhNRSBzdHJmdGltZSgpIGlzIGluIFBPU0lYLjEtMjAwMSBhbmQgUE9T
SVguMS0yMDA4LCBidXQgdGhlIGRldGFpbHMNCj4gICAuXCIgaW4gdGhlIHN0YW5kYXJkcyBj
aGFuZ2VkIGFjcm9zcyB2ZXJzaW9ucy4gSW52ZXN0aWdhdGUgYW5kDQo+ICAgLlwiIHdyaXRl
IHVwLg0KPiBkaWZmIC0tZ2l0IGEvbWFuMy9zdHJmdGltZV9sLjMgYi9tYW4zL3N0cmZ0aW1l
X2wuMw0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAuLmEzYWE0
YjQxYw0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL21hbjMvc3RyZnRpbWVfbC4zDQo+IEBA
IC0wLDAgKzEgQEANCj4gKy5zbyBtYW4zL3N0cmZ0aW1lLjMNCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------4jSuxKdPEJBLMj2m0KicrKKR--

--------------0cP25F7V01Kw0WBY6jcDfitu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLXGP4ACgkQnowa+77/
2zLTxg//QP4ReTjM6o6CVBn5knWm2aES4r6ImfrJQNHx4Kv6/MaGrsOjyTszjcOV
tI4QWmoNP+XCVbsgHGTh0mO7wRpETDoPy06rdkpZc9nvsYPXsLzzYJaFtJrAwPtf
VKmyVscD9ZIbzA6a6YT9K4x0uQSySBmAe68d+FjYjo943VKbTvrjK/7RjqJSRiwp
3JesVCAvSxo4Kih5Ob0uo2J40ch6HZKORRquOPFFPI5lETi0CqRZTRxLU6Tx5H+c
64CfJkPgBzDoE80eDuBPk8nmAraMoNQqasYjUl2fLHd1f9nYgogdEvxinxONBhdy
nrG9YMmw9yQDzTQ+yNFRuN/fTmi0r+M0XmmAU3vRiXgtsJfWxyr3MsLPWutwU6wR
zsqZ1BpQjOp8Di/3QxWMxG2X6zVrbBL5gsuZy9xUen8EJzoEGe84GPneVTbcCi9O
9byBcBYUyiaonOZWenTRlqDwPQ5+avGM/I83KDDhxsQelF1GyFgmdDQkuEPjHxco
TPdzo5lDlpy/XFBEnQ/TyEu1xys+SbPVg6W6OHsvf1rvABVdlJNhsmJ+pOi2b0zj
ZNoNbO73FrKMVIDJPAs1d5ZeA1QZEzgv6/J0lGT7606UZYq9/ujd3txq2bDo6i1c
5YpW0OccW9fv1tSvjJKGo/6XYZKP31KWAzYSIslu0US1sxAwFOg=
=xKnB
-----END PGP SIGNATURE-----

--------------0cP25F7V01Kw0WBY6jcDfitu--
