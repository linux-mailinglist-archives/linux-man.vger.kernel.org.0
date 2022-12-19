Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E11B665109B
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 17:40:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232239AbiLSQkB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 11:40:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbiLSQkA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 11:40:00 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D9F52603
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 08:39:59 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h7so9262227wrs.6
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 08:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1vZ9KqVZvvEsYET+WSSg2D7ABI7MBc0vbRUeid1MWeo=;
        b=qEwc8O9UjTjXGc5zmEDwSITc1qAJrSLVrqMiCeX9GBMyi7hvsX5LAeab/KbXBpQlzW
         tPiKBu9vTU+1mzc8adQNrLdHQxF3S99f030tmTyN3P4LMGbr+nvsgXFSo5BY55GlTFOn
         sl1wDjTjwfPpF95eZQ+hG5GCfvYHQ8XMwxuOzEpl6l5pU0ip/WUmbzfXcdIBPGuP6lqs
         P6xxTQGtsN+o6D2ONScbex/3EOpoPjg54KQ4O9ZHCmGPsK3a3wMnjHqnJRA7CikhSUdD
         aXFq6JfFZtYjI1lH9hW6H7MD/TxCqbW+Aoi+qysL3KeG3Bzdif8zZZeYuyjrI0kqDTbv
         u7vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1vZ9KqVZvvEsYET+WSSg2D7ABI7MBc0vbRUeid1MWeo=;
        b=rl1bGuhoHDU7OJqUsY7VvOYeXW+YD/XuUGM/psKu7h4EKHxQE+fKG0qMQ/GJ2Edcto
         rfEwUdjp2MpO/lHp1S+gZU1c/nNuSNEIHKtWDkF8L9EFQ1k5OZ5azH1UE0k13jWUWMnN
         WSvZlTnb8HhCEQ9y46F9bxl+4B+FqxBzSKOyp0HVkSkuSaC/Amteu/z4rORbF5XDHIF7
         uS75L7GvzvogA9taRK4xV04JuD0oc84L8jrZniwWdBi32fUgdAB5sO4sjyEI57qPpXGM
         vxYr3hXWz88FRUBTnLxoAzVP1TKuf1EFQUJu4lmgkTse+bpzbdSeSiS0lkrbHh6EySDO
         LYEQ==
X-Gm-Message-State: ANoB5pm8kE3ePgA0Qi3XaKsJzL7unDw3QQ++nYwbB80gVQDf9h7TDIrW
        /YyVhVlbc+eeNdigk7A/65+Uz3sELM8=
X-Google-Smtp-Source: AA0mqf4cIvnvJUOAlE/kE+n5kPCUmxIJEwzgQG8EO0vBcPO0zeHVmD4tJBX4V/IcUPaGETbW9eQq9g==
X-Received: by 2002:a5d:5f07:0:b0:250:22e4:b89e with SMTP id cl7-20020a5d5f07000000b0025022e4b89emr21206014wrb.65.1671467997816;
        Mon, 19 Dec 2022 08:39:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b18-20020adfe652000000b00241d2df4960sm10445748wrn.17.2022.12.19.08.39.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 08:39:57 -0800 (PST)
Message-ID: <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
Date:   Mon, 19 Dec 2022 17:39:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: groff 1.23.0.rc2 status report (was: [BUG] gropdf, tbl:
 Completely broken table)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221219053245.j5omcuyxd7rnj4qt@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eeUCdLOCyIOPVQwkloIREMzb"
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
--------------eeUCdLOCyIOPVQwkloIREMzb
Content-Type: multipart/mixed; boundary="------------YjqOuZZdcXarRwPk3ZFR6SBj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
 linux-man <linux-man@vger.kernel.org>
Message-ID: <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
Subject: Re: groff 1.23.0.rc2 status report (was: [BUG] gropdf, tbl:
 Completely broken table)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
In-Reply-To: <20221219053245.j5omcuyxd7rnj4qt@illithid>

--------------YjqOuZZdcXarRwPk3ZFR6SBj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMTkvMjIgMDY6MzIsIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQoNCj4+PiBVbm9mZmljaWFsIHBhdGNoIGF0dGFjaGVkLg0KPj4NCj4+IERvIHlv
dSBsaWtlIHRoZSBwYXRjaD8NCj4gDQo+ICJMaWtlIiBpcyBhIHN0cm9uZyB3b3JkLiAgSXQg
bWFrZXMgdGhlIHBhZ2UgbGVzcyB3ZWlyZC4gIEknbGwgc3RhbmQgYnkNCj4gaXQsIGlmIHRo
YXQncyB3aGF0IHlvdSBtZWFuLg0KPiANCj4+IFNob3VsZCBJIGFwcGx5IGl0LCBvciBpcyBp
dCBqdXN0IGEgZHJhZnQ/DQo+IA0KPiBHbyByaWdodCBhaGVhZC4gIFRoZSByZWFsIHdvcmsg
aXMgaW4gYXVkaXRpbmcgdGhhdCB0YWJsZSBsaW5lIGJ5IGxpbmUuDQoNCldvdWxkIHlvdSBt
aW5kIHNlbmRpbmcgYSBwYXRjaCB0aGF0IEkgY2FuIGFwcGx5IHdpdGggZ2l0PyAgSSBjb3Vs
ZCBtYW51YWxseSBlZGl0IA0KdGhlIGZpbGUgeW91IGF0dGFjaGVkLCBidXQgSSdtIGZlZWxp
bmcgbGF6eSBmb3IgdGhhdCA6XA0KDQo+IA0KPiBJIHNhdyByZWZlcmVuY2UgdG8gc29tZSBj
b21wcmVzc2lvbiBwcm9ncmFtIGNhbGxlZCAieWFiYmEiIGFuZCBJDQo+IHRob3VnaHQsICJ3
aGF0IHRoZSBIdXR0PyINCg0KOikNCg0KSSBoYXZlIGEgcGF0Y2ggZm9yIGFuIGV4dGVuc2lv
biB0aGF0IHdhc24ndCBjb3ZlcmVkIGJ5IHRoaXMgZmlsZS4gIEknbSBndWVzc2luZyANCnBr
Zy1jb25maWcgd2Fzbid0IGludmVudGVkIHdoZW4gdGhpcyBwYWdlIHdhcyB3cml0dGVuPyAg
VGhhdCdzIHJlYWxseSBvbGQuLi4gIEl0IA0Kc2VlbXMgdGhlIHBhZ2UgZ29lcyBiYWNrIHRv
IG1hbi1wYWdlcyAxLjAgKHdpdGggc29tZSBhZGRpdGlvbnMgbGF0ZXI7IG1vc3RseSBpbiAN
CjEuMjEpLg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiANCj4gUmVnYXJkcywNCj4gQnJhbmRl
bg0KPiANCj4gWzFdIGh0dHBzOi8vc2F2YW5uYWguZ251Lm9yZy9idWdzL2luZGV4LnBocD9n
b19yZXBvcnQ9QXBwbHkmZ3JvdXA9Z3JvZmYmZnVuYz0mc2V0PWN1c3RvbSZtc29ydD0wJnJl
cG9ydF9pZD0yMjUmYWR2c3JjaD0wJmJ1Z19pZD0mc3VtbWFyeT0mc3VibWl0dGVkX2J5PTAm
cmVzb2x1dGlvbl9pZD0wJmFzc2lnbmVkX3RvPTAmYnVnX2dyb3VwX2lkPTAmc3RhdHVzX2lk
PTEmc2V2ZXJpdHk9MCZjYXRlZ29yeV9pZD0wJnBsYW5fcmVsZWFzZV9pZD0xMDMmaGlzdG9y
eV9zZWFyY2g9MCZoaXN0b3J5X2ZpZWxkPTAmaGlzdG9yeV9ldmVudD1tb2RpZmllZCZoaXN0
b3J5X2RhdGVfZGF5ZmQ9MTkmaGlzdG9yeV9kYXRlX21vbnRoZmQ9MTImaGlzdG9yeV9kYXRl
X3llYXJmZD0yMDIyJmNodW5rc3o9NTAmc3BhbXNjb3JlPTUmYm94b3B0aW9ud2FudGVkPTEj
b3B0aW9ucw0KPiANCj4gWzJdIGh0dHBzOi8vZ2l0LnNhdmFubmFoLmdudS5vcmcvY2dpdC9n
cm9mZi5naXQvY29tbWl0Lz9pZD0wZDg1NjE1YzYyZDA3YjAyOGI5NzJkZmYzOGJmYTc1ODlk
YWQ4Y2YxDQo+IFszXSBvYmxpZ2F0b3J5IG9ic2N1cmUgY3VsdHVyYWwgcmVmZXJlbmNlDQo+
IFs0XSBodHRwczovL3d3dy5nbnUub3JnL3NvZnR3YXJlL2dyb2ZmL2dyb2ZmLW1pc3Npb24t
c3RhdGVtZW50Lmh0bWwNCj4gDQo+IEZvciBmdW4gSSB0aG91Z2h0IEknZCBzZWUgd2hhdCB0
aGUgZGlmZnN0YXQgYmV0d2VlbiAxLjIyLjQgYW5kIG1hc3Rlcg0KPiBsb29rZWQgbGlrZSwg
YW5kIGZpbHRlcmVkIG91dCBmaWxlcyB3aXRoIGZld2VyIHRoYW4gMSwwMDAgbGluZXMgb2Yg
ZGlmZi4NCj4gDQo+ICAgQ2hhbmdlTG9nICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAxODgzMiArKysrKysrKysrKysrKystLS0tDQo+ICAgQ2hhbmdlTG9n
LjEyMiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNTMzMSArKysr
KysNCj4gICBORVdTICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAyMzAyICsrLQ0KPiAgIGNvbnRyaWIvZ2xpbHlwb25kL2dsaWx5cG9uZC5wbCAg
ICAgICAgICAgICAgICAgICAgIHwgIDEyOTYgKy0NCj4gICBjb250cmliL2dyb2ZmZXIvZ3Jv
ZmZlci4xLm1hbiAgICAgICAgICAgICAgICAgICAgICB8ICAzODIyIC0tLS0NCj4gICBjb250
cmliL2dyb2ZmZXIvbWFpbl9zdWJzLnBsICAgICAgICAgICAgICAgICAgICAgICB8ICAyMTMy
IC0tLQ0KPiAgIGNvbnRyaWIvbW0vZ3JvZmZfbW0uNy5tYW4gICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgIDI0NDQgKystDQo+ICAgY29udHJpYi9tb20vb20udG1hYyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgMjMzOSArKy0NCj4gICBjb250cmliL3JmYzEzNDUv
cmZjMTM0NS50bWFjICAgICAgICAgICAgICAgICAgICAgICB8ICAxNzA1ICsrDQo+ICAgZG9j
L2dyb2ZmLnRleGkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxODc4
MiArKysrKysrKystLS0tLS0tLS0NCj4gICBkb2MvbWVyZWYubWUgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAyMjQxIC0tLQ0KPiAgIGRvYy9tZXJlZi5tZS5p
biAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI0MzkgKysrDQo+ICAg
ZG9jL21zLm1zICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
NDM3OCArKysrKw0KPiAgIG00L2dyb2ZmLm00ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgIDEzOTcgKy0NCj4gICBtYW4vZ3JvZmYuNy5tYW4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICA5MDI1ICsrKysrLS0tLQ0KPiAgIG1hbi9n
cm9mZl9jaGFyLjcubWFuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI5OTIg
Ky0tDQo+ICAgbWFuL2dyb2ZmX2RpZmYuNy5tYW4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgNTAzOSArKystLQ0KPiAgIG1hbi9ncm9mZl9mb250LjUubWFuICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDEyNTIgKy0NCj4gICBtYW4vZ3JvZmZfdG1hYy41
Lm1hbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxNTc1ICstDQo+ICAgbWFu
L3JvZmYuNy5tYW4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMjky
MSArKy0NCj4gICBzcmMvZGV2aWNlcy9ncm9odG1sL3Bvc3QtaHRtbC5jcHAgICAgICAgICAg
ICAgICAgICB8ICAxMjgyICstDQo+ICAgc3JjL2RldmljZXMvZ3JvcGRmL2dyb3BkZi4xLm1h
biAgICAgICAgICAgICAgICAgICAgfCAgMTAwOCArLQ0KPiAgIHNyYy9kZXZpY2VzL2dyb3Bz
L2dyb3BzLjEubWFuICAgICAgICAgICAgICAgICAgICAgIHwgIDE2MTUgKy0NCj4gICBzcmMv
cHJlcHJvYy9lcW4vZXFuLjEubWFuICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxNjIx
ICstDQo+ICAgc3JjL3ByZXByb2MvcGljL3BpYy4xLm1hbiAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTE5NiArLQ0KPiAgIHNyYy9wcmVwcm9jL3JlZmVyL3JlZmVyLjEubWFuICAg
ICAgICAgICAgICAgICAgICAgIHwgIDEyNjAgKy0NCj4gICBzcmMvcHJlcHJvYy90YmwvdGJs
LjEubWFuICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyNDA0ICsrLQ0KPiAgIHNyYy9y
b2ZmL2dyb2ZmL2dyb2ZmLjEubWFuICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDI4NDQg
Ky0tDQo+ICAgc3JjL3JvZmYvZ3JvZy9zdWJzLnBsICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTI2NiAtLQ0KPiAgIHNyYy9yb2ZmL3Ryb2ZmL2lucHV0LmNwcCAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgIDE0MjQgKy0NCj4gICBzcmMvcm9mZi90cm9mZi90cm9m
Zi4xLm1hbiAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxMDEyICstDQo+ICAgdG1hYy9h
bi50bWFjICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTU1MyAr
LQ0KPiAgIHRtYWMve2RvYy50bWFjLXUgPT4gZG9jLnRtYWN9ICAgICAgICAgICAgICAgICAg
ICAgIHwgIDEyMTggKy0NCj4gICB0bWFjL2dyb2ZmX21hbi43Lm1hbiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8ICAyNjEzIC0tLQ0KPiAgIHRtYWMvZ3JvZmZfbWFuLjcubWFu
LmluICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDQxODcgKysrKysNCj4gICB0bWFj
L2dyb2ZmX21kb2MuNy5tYW4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAzNDcw
ICsrLS0NCj4gICB0bWFjL2dyb2ZmX21zLjcubWFuICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAzNTA4ICsrLS0NCj4gICB0bWFjL2h5cGhlbmV4LnVzICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAxNDU0IC0tDQo+ICAgOTYwIGZpbGVzIGNoYW5n
ZWQsIDEyNjA4NCBpbnNlcnRpb25zKCspLCA3MjkxMSBkZWxldGlvbnMoLSkNCj4gDQo+IEkg
aG9wZSBwZW9wbGUgd2lsbCB0YWtlIG1lIHNlcmlvdXNseSB3aGVuIEkgc3VnZ2VzdCB0aGF0
IGdyb2ZmJ3MNCj4gZG9jdW1lbnRhdGlvbiBoYXMgdW5kZXJnb25lIHJldmlzaW9uLg0KDQpX
b3chDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------YjqOuZZdcXarRwPk3ZFR6SBj--

--------------eeUCdLOCyIOPVQwkloIREMzb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOgk8kACgkQnowa+77/
2zLVkRAAogrqwsdx9RBOpbUqwRCVrVNo7pRqXVwtz+1e9Eh/Vrj1odVgY8ssvm80
B7jFq1iJuM8nlBQGWzCyhQkxUsKna0G4nXowGQkRp5PcgukAuBo5h33e4rjE8HUV
qfKNbkORJzMuYpBCUE6w6f/Uy5gIKNzCfBYMQi+GK0ilIN8XQXW+wnJXBRVHcfjL
Si7zE72e7rwGJ1P9voWpwpQtlbKfFhRhPnBTCDYT0blKApdenJEPBX/lj7MjbWCc
WLIc7VA7FIxvgdrKTKaTihQ/y0+R4ycHw/BV+jArkAgDr7w34eNeGbe/xgD9V0vo
kiIvCAID+IDyekmr8glKsYnk+BsGsS0nxqR98Syix9osJ3W26wl9td4HuMIQE0yc
u7/v1YODHHlYqd4NlKg3/zW42mdHrfZ2NfhCSzIlbWhkNp05eA9+S3Da7MjXUwJR
v5X500cQ6jpl52DrqaOCvg4T0OvNZl2fv+TyYYWWdmvnP2yWLKsPbTcWqtxWt4mU
ADIrxb0x076m2m4slgPd43+vSeuIM8A59dBoiBuXQHJiQzRLBSZB7Ca7f+WvluhC
SZAuisXDaW1vthtU3OIrCLQ1RJXAgOOAW01g9QKXGbr3QSLOPHxmguW4E1vYKtEp
U20IymhqdcgzRQWPSozW9wQVxF2sXangCgx0DwlOBlGxYASNM/c=
=9TDh
-----END PGP SIGNATURE-----

--------------eeUCdLOCyIOPVQwkloIREMzb--
