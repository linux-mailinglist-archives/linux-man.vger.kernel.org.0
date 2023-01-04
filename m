Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AA7165DC4D
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 19:42:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230434AbjADSmU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 13:42:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240139AbjADSmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 13:42:10 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E1AF1CFC2
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 10:42:08 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso27254261wmp.3
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 10:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWu0V4LmGMS/YHik1JvKqgDejxALXrLX/c/YaIDJ5x8=;
        b=hK/DHhQDon7KnNZtEuXNXgBDiIkbvmpMZp5zT+Vs4TzbXPHCQGddETtij0dsMjIt9i
         MZvim1BsUjp/M5WSqxBvBAwmsaaOXK3WJI+tXFI7Qfe6ixffuLMXDzrbzt8w4MBLvpbF
         S/M6DZJhMxJoGMeyu2OHj8YVOt77iIdY/SaZ1ZwnLSVfybQJOHY+fSZtCP8tDFAVttrK
         R5WSvOUQuyw2Ac17wd/evJ6colFNH769gcUTdlzG9wZ1hXXRnjuU4SWQs2hyOTcjCl35
         5zjuSstbhoOh8dTPLk8eyTeUPnS3I3DR7l7Skixdd/FKhn3Uu1E9oo0oBfcvSSymb2uV
         /Gmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EWu0V4LmGMS/YHik1JvKqgDejxALXrLX/c/YaIDJ5x8=;
        b=YjaJ2njw64zSsDXsAMFeiSsVumKPGzO/G7B6kw7XKUgwSbiEzrBu06XNzkbxYaKYRL
         Q3CESfbAX1z1b4kKWqNiargONHrOmf8Yrf+Blzs5yxtGxh2QhXJNqmMb6AJofhnymUkp
         //UK51ZOGB8XDu8gne1quSz4Q2ix45VYOP/U54RhEBgXOBc9vAp3bL6ZdfXYYqtGyRxY
         6Hz4URKNB3OzMVCsIBBTgrauwtw711B8pJou6xEH5NTF/94d5LPdDJlrjNv6cOkSCHMm
         ZQYgx1SkOZQiDHV6cjQVBwgc95K5EFeomXyvYu62NW5qZZQ8GiymVi5imTFznDFzzQXP
         +Vzw==
X-Gm-Message-State: AFqh2krEYW6E3r4cI5itsVDVAWNqI9X61GW3MTfB8JyPIcZ3A5wJZdFv
        06/uIOz12FfsoZ7pbABw1JOm1XplFVs=
X-Google-Smtp-Source: AMrXdXt7R2FqcKxfrBF56QayfrYL9WDa3UujuFtSDVTFRyvPzzBiFk6h2dJIb3TR/+juFAB+xCwzyA==
X-Received: by 2002:a05:600c:4e09:b0:3d4:5741:af9b with SMTP id b9-20020a05600c4e0900b003d45741af9bmr38184672wmq.0.1672857726534;
        Wed, 04 Jan 2023 10:42:06 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i17-20020a05600c355100b003d9980c5e7asm28117369wmq.21.2023.01.04.10.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 10:42:06 -0800 (PST)
Message-ID: <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
Date:   Wed, 4 Jan 2023 19:41:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <20230104155512.klkmu62oaz7ore5a@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230104155512.klkmu62oaz7ore5a@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PrlOAQesPvfyTXFEga0dYjOe"
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PrlOAQesPvfyTXFEga0dYjOe
Content-Type: multipart/mixed; boundary="------------2yLVDWmeZbrvLBYCe305YEF3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <529c2d78-395f-b0e6-a114-e214335d4472@gmail.com>
Subject: Re: [PATCH 1/9] ldconfig.8: Fix markup nits
References: <20230104073807.gcohk253vopp4ii3@illithid>
 <8527af62-1921-63cc-a94b-db3d9af4ee49@gmail.com>
 <20230104155512.klkmu62oaz7ore5a@illithid>
In-Reply-To: <20230104155512.klkmu62oaz7ore5a@illithid>

--------------2yLVDWmeZbrvLBYCe305YEF3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMS80LzIzIDE2OjU1LCBHLiBCcmFuZGVuIFJvYmluc29uIHdy
b3RlOg0KPiBIaSBBbGV4LA0KPiANCj4gQXQgMjAyMy0wMS0wNFQxMzoyNjozMyswMTAwLCBB
bGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IFRoaXMgcGF0Y2ggbG9va3MgZ29vZCB0byBt
ZS4gIEhvd2V2ZXIsIEkgZGlkbid0IGFwcGx5IGl0LCBzaW5jZSBJIGhhdmUNCj4+IGEgZmV3
IGNvbW1lbnRzIGJlbG93Lg0KPiANCj4gT2suICBWMywgaGVyZSB3ZSBjb21lIQ0KPiANCj4+
PiAgICAuU0ggTkFNRQ0KPj4+ICAgIGxkY29uZmlnIFwtIGNvbmZpZ3VyZSBkeW5hbWljIGxp
bmtlciBydW4tdGltZSBiaW5kaW5ncw0KPj4+ICAgIC5TSCBTWU5PUFNJUw0KPj4NCj4+IFdl
IHNob3VsZCB3cmFwIHRoaXMgaW4gLm5mLy5maQ0KPiANCj4gVGhhdCB3aWxsIGhhdmUgYSBj
b3N0LiAgSXQgd2lsbCBtZWFuIHVzaW5nIGEgbG90IG9mIFxjIGVzY2FwZSBzZXF1ZW5jZXMN
Cj4gdG8gY29ubmVjdCB0aGUgb3V0cHV0IGxpbmVzLg0KPiANCj4gVGhlIGV4aXN0aW5nIHN5
bm9wc2lzIGZpdHMgd2l0aGluIDc0IG91dHB1dCBjb2x1bW5zIG9uIGEgdGVybWluYWwuDQo+
IA0KPiBEbyB5b3UgdGhpbmsgaXQncyB3b3J0aCBpdD8NCg0KQnV0LCBpdCB3ZSBkb24ndCB1
c2UgaXQsIGlmIHNvbWVvbmUgdXNlcyBhIHNtYWxsZXIgdGVybWluYWwsIHRoZXJlIG1pZ2h0
IGFwcGVhciANCm91ciBiZWxvdmVkIGh5cGhlbnMgYnJlYWtpbmcgYSB3b3JkLi4uDQoNCj4g
DQo+PiBBbHRob3VnaCBtYXliZSB0aGlzIGdvZXMgYmV0dGVyIGluIHRoZSBzdHlsZSBwYXRj
aCwgc2luY2UgaXQncyBhDQo+PiBmb3JtYXR0aW5nIGZpeC4NCj4gDQo+IEkgY2FuIHNoaWZ0
IGl0Lg0KPiANCj4+IEkgd2lsbCBzdWdnZXN0IGFnYWluIHRoYXQgSSBiZWxpZXZlIFwlIHNo
b3VsZCBiZSB0aGUgZGVmYXVsdCBpbiBtYW51YWwNCj4+IHBhZ2VzLiBDb3VudCBob3cgbWFu
eSB0aW1lcyB5b3Ugd2FudCB0byBicmVhayBoaWdobGlnaHRlZCBzdHVmZiB2cyBob3cNCj4+
IG1hbnkgdGltZXMgeW91IHdhbnQgdG8gbm90IGJyZWFrIHN1Y2ggc3R1ZmYuDQo+IA0KPiBJ
IGRvbid0IHNlZSBnb29kIHByb3NwZWN0cyBvZiB0aGlzIGZvciB0aGUgc2FtZSByZWFzb24g
dGhhdCBJIHdhcyBhYmxlDQo+IHRvIHRhbGsgSW5nbyBTY2h3YXJ6ZSBvdXQgb2Yga2VlcGlu
ZyBzZWN0aW9uIGhlYWRpbmdzIGluIHNob3V0aW5nDQo+IGNhcGl0YWxzLiAgSXQncyBhIG1h
dHRlciBvZiBwcmVmZXJlbmNlLCBidXQgb25lIHByZWZlcmVuY2UgbWVhbnMNCj4gZGlzY2Fy
ZGluZyBpbmZvcm1hdGlvbiBpcnJldm9jYWJseSBpbiB0aGUgc291cmNlIGRvY3VtZW50LCBh
bmQgdGhlIG90aGVyDQo+IG1lYW5zIHRoYXQgdGhlIGluZm9ybWF0aW9uIGlzIHByZXNlbnQg
YnV0IHVudXNlZC4NCg0KSXMgdGhlcmUgYW55dGhpbmcgdGhhdCAicmV2ZXJ0cyIgXCU/ICBT
byB0aGF0IGlmIGl0IHdlcmUgdGhlIGRlZmF1bHQsIHdlIGNvdWxkIA0KdXNlIFxhbnRpLSUg
dG8gc2F5ICJncm9mZiwgeW91IG1pZ2h0IGJyZWFrIHRoaXMgd29yZCI/DQoNCj4gDQo+IGdy
b2ZmIG1hbig3KSBfaGFzXyBhIG1lY2hhbmlzbSBmb3IgdGhpcywgYW5kIGhhcyBzaW5jZSBn
cm9mZiAxLjE5DQo+ICgyMDAzKS4gIEl0J3MgdGhlIGBIWWAgcmVnaXN0ZXIuICBQZW9wbGUg
Y2FuIHB1dCB0aGlzIGluIHRoZWlyIG1hbi5sb2NhbA0KPiBmaWxlcyAob24gRGViaWFuLWJh
c2VkIHN5c3RlbXMsIHRoYXQncyBpbiAvZXRjL2dyb2ZmKS4NCj4gDQo+IC5uciBIWSAwDQoN
Ckkga25vdywgYnV0IEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIHdyaXRlIG1hbnVhbCBwYWdl
cyBpbiBhIHdheSB0aGF0IGZvcmNlcyANCmRpc3RyaWJ1dG9ycyB0byB1c2Ugc3VjaCBhIHRo
aW5nLiAgRWl0aGVyIHRoZSBwYWdlcyBhcmUgd3JpdHRlbiBwbGFndWVkIHdpdGggXCUsIA0K
YW5kIHRoZSBkaXN0cm9zIGRvbid0IG5lZWQgdG8gdXNlIC5IWSwgb3Igd2Ugd3JpdGUgcGFn
ZXMgbGF6aWx5IHNvIHRoYXQgZGlzdHJvcyANCm5lZWQgdG8gZml4IHRoZSBoeXBoZW5hdGlv
bi4gIEJ1dCB3cml0aW5nIHRoZSBwYWdlcyBsYXppbHkgYW5kIGhhdmluZyANCmRpc3RyaWJ1
dG9ycyBpZ25vcmUgaXQgd291bGQgcmVzdWx0IGluIHN1Ym9wdGltYWwgcGFnZXMgZm9yIG91
ciByZWFkZXJzLg0KDQo+IA0KPiBDb2xpbiBXYXRzb24ncyBtYW4tZGIgbWFuKDEpIGFsc28g
aGFzIGEgZmVhdHVyZSB0byBzdXBwcmVzcyBoeXBoZW5hdGlvbiwNCj4gdXNpbmcgYSBoYWNr
OyBpdCdzIG5vdCBwcmV0dHkgYnV0IGl0IHdvcmtzIGV2ZW4gb24gb3RoZXIgKnJvZmYNCj4g
Zm9ybWF0dGVycy4NCg0KRG9lcyB0aGF0IGRpc2FibGUgaHlwaGVuYXRpb24gZm9yIG1hY3Jv
cywgb3IgZm9yIHRoZSBlbnRpcmUgZG9jdW1lbnQ/ICBJIG9ubHkgDQp3YW50IHRvIGRpc2Fi
bGUgaXQgaW4gaGlnaGxpZ2h0aW5nIG1hY3Jvcy4NCg0KPiANCj4gSSBkb24ndCBpbnNpc3Qg
dGhhdCBwZW9wbGUga2VlcCBoeXBoZW5hdGlvbiBlbmFibGVkLCBidXQgYXNzdW1pbmcgdGhh
dA0KPiBubyBvbmUgd2lsbCBkbyBzbyB3aWxsIGtlZXAgdXMgZnJvbSBwdXR0aW5nIHdvcnRo
d2hpbGUgaW5mb3JtYXRpb24gaW4NCj4gb3VyIG1hbiBwYWdlcy4NCj4gDQo+IElmIHlvdSBk
cmVhZCB0aGUgdGVkaXVtIG9mIGFkZGluZyBcJSBlc2NhcGUgc2VxdWVuY2VzIHRvICJrZXl3
b3JkcyIgYWxsDQo+IG92ZXIgdGhlIHBsYWNlLCBJIGRvbid0IGJsYW1lIHlvdS4gIFRoaXMg
aXMgb25lIHJlYXNvbiBJIHByb3Bvc2VkIG15DQo+IG1vc3QgYW1iaXRpb3VzIG1hbig3KSBl
eHRlbnNpb24geWV0LCBhIHR3by1tYWNybyBzZW1hbnRpYyB0YWcgbWVjaGFuaXNtLg0KPiAN
Cj4gaHR0cHM6Ly9tYXJjLmluZm8vP2w9bGludXgtbWFuJm09MTY1ODY4MzY2MTI2OTA5Jnc9
Mg0KDQpJIHN0aWxsIGRvbid0IGtub3cgd2hhdCB0byB0aGluayBhYm91dCB0aGF0Lg0KDQo+
IA0KPiBBcyB3aXRoIHRoZSBuZXcgYE1SYCBpbiBncm9mZiAxLjIzLCB5b3UgY291bGQgdGhl
biBzdXBwcmVzcyBoeXBoZW5hdGlvbg0KPiBpbiB0aGUgaW50ZXJuYWwgbWFjcm9zIHRoYXQg
d3JhcCAidGFnZ2VkIiBrZXl3b3Jkcy4NCj4gDQo+Pj4gLS5cIiBGSVhNRSBnbGliYyAyLjcg
YWRkZWQgLWkNCj4+DQo+PiBBbmQgdGhpcyBpcyB3aHkgY29tbWVudHMgYXJlIGhhcm1mdWwu
ICBJIGZpbnQgaXQgcmF0aGVyIHVuY29tbW9uIGZvcg0KPj4gY29tbWVudHMgdG8gYmUgdXAt
dG8tZGF0ZSB3aXRoIHRoZSBjb2RlIDpQDQo+IA0KPiBJIGdlbmVyYWxseSBmaW5kIEZJWE1F
IGNvbW1lbnRzIHVzZWZ1bC4gIEl0J3MgYSBoYXBweSBkYXkgd2hlbiBJIGZpbmQNCj4gb25l
IHRoYXQncyBhbHJlYWR5IGJlZW4gYWRkcmVzc2VkLiAgOikNCg0KOikNCg0KSSBoYWQgZnVu
IHdpdGggb25lIGxhc3QgbW9udGg6DQoNCjxodHRwczovL2dpdGh1Yi5jb20vc2hhZG93LW1h
aW50L3NoYWRvdy9jb21taXQvNDI4YTIwNzhiNmM0MzVmMTc4MGVjOGYzODEwMzNlN2JkOTM3
ZDI5ZT4NCg0KSSdsbCBxdW90ZSBpdCBoZXJlOg0KDQoiWFhYIC0gcXVpY2sgaGFjaywgc2hv
dWxkIGRpc2FwcGVhciBiZWZvcmUgYW55b25lIG5vdGljZXMgOikuIg0KDQpPZiBjb3Vyc2Us
IHRoZSBxdWljayBoYWNrIG5ldmVyIGRpc2FwcGVhcmVkIGFmdGVyIE9jdCA3LCAyMDA3LCB3
aGVuIGl0IHdhcyANCndyaXR0ZW4gaW4gc3RvbmUuDQoNCkkgaGF2ZSBwbGFucyB0byBnZXQg
cmlkIG9mIGl0LCBidXQgb3RoZXIgZGlub3NhdXJzIGFuZCBtYWdpYyBjcmVhdHVyZXMga2Vl
cCANCmdldHRpbmcgaW4gbXkgd2F5Lg0KDQoNCkFuZCBhbm90aGVyIG9uZSAodGhpcyBvbmUg
SSBnb3QgcmlkIG9mIGl0KToNCg0KPGh0dHBzOi8vZ2l0aHViLmNvbS9zaGFkb3ctbWFpbnQv
c2hhZG93L2NvbW1pdC82YjZlMDA1Y2UxY2M0YTVlNGZjN2ZjNDBhNTJmMmVkMjI5ZjU0YjVi
Pg0KDQoiWFhYIC0gaXMgdGhlIGFib3ZlIG9rIG9yIHNob3VsZCBpdCBiZSA8dGltZS5oPiBv
biB1bHRyaXg/Ig0KDQo+IA0KPiBSZWdhcmRzLA0KPiBCcmFuZGVuDQoNCkNoZWVycywNCg0K
QWxleA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------2yLVDWmeZbrvLBYCe305YEF3--

--------------PrlOAQesPvfyTXFEga0dYjOe
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO1yG8ACgkQnowa+77/
2zLECA//Q224EcFkRmoQ5FY+1/MVQM5PRSUIMh6IOhYggmz2IkCwwLKS764SUAEp
SASwCC8EsBPXYX2TMWoKgImPchjm/LiO/cMsLUD+2lDnUs5BUOhx+uXoDO+YlFJY
g6p7ne/njCmh810IVgwORzAlvnwWqwNxcbmXt0Jqnf1OFWLP06wf3nJQ9yvvewYv
VWfRPyCMVxT8nEestzXxPwN5qZ88/L0ADhDLf3mOyXoYHKdkYvowinH3H2/g8VKb
FfdkTw9Z4V72ClPCjftHzeJwCealGJlNhvioRaoOg44J6DS9ro+FhYmiNEYW8jXm
U7ZaAP4KLWxKMxEZJOWOolbjtixFfjU0r2kAG1fTVDZWiMK4tSRhT/VKG2ogqA7S
U6HzWxQXrS7+hwvVrfXelJXni62NSy6lR9kxZF6FpK2jgRGN53fKF9lYakDpJB8D
X88XQqPbkdHFj3mTzfQkQwvZXgkBdb9IgEvveDRNVOFStlU78NjqwEzwS8+xhcF+
j4Yk/rMyqxfyzuCjSRJPb/DRvgJFqpZCKbhx+TWRp5QxMm/ZM0+VleeZkW3TuqO4
VgL0OqqEZdIPLwWfNkaDqLDEoE6iEO0GhDdJzwD4AShO9Bs+KrG/mYRCOKiKmpnU
9HL4zt+W+e7aJ+mK1hH11EuMUChUohkdinCHAWohPpvk12dqqaw=
=uzJm
-----END PGP SIGNATURE-----

--------------PrlOAQesPvfyTXFEga0dYjOe--
