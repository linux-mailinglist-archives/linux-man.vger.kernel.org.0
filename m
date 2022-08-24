Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11EB859F8CF
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 13:49:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236121AbiHXLtU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 07:49:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235744AbiHXLtT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 07:49:19 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 890F9861C5
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 04:49:18 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id v7-20020a1cac07000000b003a6062a4f81so774231wme.1
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 04:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=hCSLtaC9rSxXycNxc/rIoi7mh8YV0/NKwt+XmOZedXA=;
        b=kuPwTb6GYWFuuWVeCaP7+AyvhEt22IDBuxr3UHIpjvPg04bxXmrBoXOKmyoCQmYRPn
         gwuG4/QUzrcOUHCqW11egTlRv5tgNFKw5GO1KFgfYtjiJi/qS1yAA/ky0Fa7Gs8BMV5D
         PgPrV5tbdZGaWL17FZxSlBEdZ5eDkzSAC9jaaqqxFf/+k9RH75xXIn65BUj1OrfsfmiG
         5VCGhptIJmWo1f3reHxL+OswfjO83lAhkNLhga8hbUgm5A1VedXl7RzydqAX2aiZm+xY
         4k2Gy5VNy+08NlJ7+FHNp1bVT7f5TUtsBLdtm5Xy/BrBC/YOyepuvJAiJxhdrYS3QRrJ
         GHlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=hCSLtaC9rSxXycNxc/rIoi7mh8YV0/NKwt+XmOZedXA=;
        b=PqJU/X4Kiidb+HCTdGaCgJQ6ivZnve6KMCGYudytJgjsEqVug8hdzQ/feGFpyqMdhP
         l0MzhNru4a9wk4lDMLrVUzeePPcGnLSMnr9bCWoXpZGvC/N2kk9QH9FDfvRwKx87v3S/
         BC1uqYs5esl1VPEd/j4B3eY7pwBmhJk8dt4iqBwGxtle5lndzrMjZ1G6mdC8j55mfEQj
         p+kj7gKxh5yjx1B9QidJoF8svbmOgIJde+2QhbISP+pEARuXo4s7GGHBw9CM+ofks79m
         Rd6+/o2pyMgEc1SyJuDjdk9Lm5AuEU2yHJ9Q6MpHBIQMVuRoM5bm8TqdGlkNtBrV/zuT
         rJwA==
X-Gm-Message-State: ACgBeo3sdRhWGludMSGgQ2OwS/1wSGqW4qqtJaxr4KWqRwPK9FTFZw2S
        Yw+5jC/lhOegfC8zv3BV6IpWIAzmTo0=
X-Google-Smtp-Source: AA6agR6oAsYF8rAe/FTx4yLquYDv697n0sfUVo8xIotjAQR/Cq6ZHFCNCjtVzJyjiHddqVKXqw251w==
X-Received: by 2002:a7b:c399:0:b0:3a5:f3fb:85e0 with SMTP id s25-20020a7bc399000000b003a5f3fb85e0mr5039199wmj.38.1661341757113;
        Wed, 24 Aug 2022 04:49:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g11-20020a5d488b000000b0022377df817fsm16902838wrq.58.2022.08.24.04.49.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 04:49:16 -0700 (PDT)
Message-ID: <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
Date:   Wed, 24 Aug 2022 13:49:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
Content-Language: en-US
To:     Jeff Layton <jlayton@kernel.org>, NeilBrown <neilb@suse.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
 <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------72tLAIFvrp7pvmaXujUVTOKb"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------72tLAIFvrp7pvmaXujUVTOKb
Content-Type: multipart/mixed; boundary="------------U0bAT0LL20AQB0a01wN0vJ5q";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jeff Layton <jlayton@kernel.org>, NeilBrown <neilb@suse.de>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
 <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
In-Reply-To: <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>

--------------U0bAT0LL20AQB0a01wN0vJ5q
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTmVpbCBhbmQgSmVmZiwNCg0KT24gOC8yNC8yMiAxMjoxNSwgSmVmZiBMYXl0b24gd3Jv
dGU6DQo+IE9uIFdlZCwgMjAyMi0wOC0yNCBhdCAxMToyMSArMTAwMCwgTmVpbEJyb3duIHdy
b3RlOg0KPj4gdXRpbWUgYW5kIHJlbGF0ZWQgY2FsbHMgYWx3YXlzIGNoYW5nZSB0aGUgY3Rp
bWUuICBJdCBpcyB3b3J0aCBtYWtpbmcNCj4+IHRoaXMgZXhwbGljaXQuDQo+PiBUaGlzIGlz
IGNsZWFyIGZyb20gdGhlIGNvZGUgKHZmc191dGltZXMoKSBpbiBmcy91dGltZXMuYyBhbHdh
eXMgc2V0cw0KPj4gQVRUUl9DVElNRSkgYW5kIGlzIGRvY3VtZW50ZWQgaW4NCj4+ICAgIGh0
dHBzOi8vcHVicy5vcGVuZ3JvdXAub3JnL29ubGluZXB1YnMvMDA3OTA0ODc1L2Z1bmN0aW9u
cy91dGltZXMuaHRtbA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IE5laWxCcm93biA8bmVpbGJA
c3VzZS5kZT4NCj4+IC0tLQ0KPj4gICBtYW4yL3V0aW1lLjIgICAgIHwgMiArKw0KPj4gICBt
YW4yL3V0aW1lbnNhdC4yIHwgMyArKysNCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKykNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvbWFuMi91dGltZS4yIGIvbWFuMi91dGlt
ZS4yDQo+PiBpbmRleCA1MzM4NzIzNTc0ZTIuLjc1NTdkNjgwYWZhMyAxMDA2NDQNCj4+IC0t
LSBhL21hbjIvdXRpbWUuMg0KPj4gKysrIGIvbWFuMi91dGltZS4yDQo+PiBAQCAtMzksNiAr
MzksOCBAQCB0byB0aGUNCj4+ICAgZmllbGRzIG9mDQo+PiAgIC5JIHRpbWVzDQo+PiAgIHJl
c3BlY3RpdmVseS4NCj4+ICtUaGUgc3RhdHVzIGNoYW5nZSB0aW1lIChjdGltZSkgd2lsbCBi
ZSBzZXQgdG8gdGhlIGN1cnJlbnQgdGltZSwgZXZlbiBpZiB0aGUNCj4+ICtvdGhlciB0aW1l
IHN0YW1wcyBkb24ndCBhY3R1YWxseSBjaGFuZ2UuDQo+PiAgIC5QUA0KPj4gICBJZg0KPj4g
ICAuSSB0aW1lcw0KPj4gZGlmZiAtLWdpdCBhL21hbjIvdXRpbWVuc2F0LjIgYi9tYW4yL3V0
aW1lbnNhdC4yDQo+PiBpbmRleCAxMWNmM2VlMjQxMjkuLjJhYmY4ZTE5NmVlMSAxMDA2NDQN
Cj4+IC0tLSBhL21hbjIvdXRpbWVuc2F0LjINCj4+ICsrKyBiL21hbjIvdXRpbWVuc2F0LjIN
Cj4+IEBAIC0xMDEsNiArMTAxLDkgQEAgSWYNCj4+ICAgLkkgdGltZXMNCj4+ICAgaXMgTlVM
TCwgdGhlbiBib3RoIHRpbWVzdGFtcHMgYXJlIHNldCB0byB0aGUgY3VycmVudCB0aW1lLg0K
Pj4gICAuXCINCj4+ICsuUFANCj4+ICtUaGUgc3RhdHVzIGNoYW5nZSB0aW1lIChjdGltZSkg
d2lsbCBiZSBzZXQgdG8gdGhlIGN1cnJlbnQgdGltZSwgZXZlbiBpZiB0aGUNCj4+ICtvdGhl
ciB0aW1lIHN0YW1wcyBkb24ndCBhY3R1YWxseSBjaGFuZ2UuDQo+PiAgIC5TUyBQZXJtaXNz
aW9ucyByZXF1aXJlbWVudHMNCj4+ICAgVG8gc2V0IGJvdGggZmlsZSB0aW1lc3RhbXBzIHRv
IHRoZSBjdXJyZW50IHRpbWUgKGkuZS4sDQo+PiAgIC5JIHRpbWVzDQo+IA0KPiBSZXZpZXdl
ZC1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4NCg0KUGF0Y2ggYXBwbGll
ZCwgd2l0aCB0aGUgdGFnLiAgVGhhbmsgeW91IGJvdGghDQoNCkNoZWVycywNCkFsZXgNCg0K
UC5TLjogUGxlYXNlIENDIG1lIGluIHRoZSBwYXRjaGVzLCBvciBJIG1pZ2h0IG5vdCBzcG90
IHRoZW0uDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRy
by1jb2xvbWFyLmVzLz4NCg==

--------------U0bAT0LL20AQB0a01wN0vJ5q--

--------------72tLAIFvrp7pvmaXujUVTOKb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMGEDQACgkQnowa+77/
2zINNw//ccVMdn2zvAU2MvC4ScVoHvtWLvLoswJwuMUfDrYWzGnFTJ86PBkk3fLN
2FwvFyvKSoxF97k5WpnqrdCLc4kpVx0sOFkByXcCnr8w8wtH3DtS9etMl+6Z/EZs
MlDTWpG9BMuSxOgv5ElivhbQu7ssXz6CDdSx322UNqZQeRa2uvqlmP6WQnVSn9v2
8quAub+VVyCkSqcTmLy7E8Pr/EBUMhd+Gj/NXLNVfKt0vHUrigWsPAzMlEk7fUVJ
5vL2t3gpnoVugEWoEEki3x4oU96uiNBCZkJykZWyWXPO9H1FEyWqOo+WQTpQKqrd
2UrarH3LeNGHAb4fD+IwYe5its2CpRnQwyt/d3XsSjdSVtsQ3t3ffzn615bRIRuw
UNvNtuW6cKynr31c7CQqZCEPhCOPxiirqzqiBgEWR0DWIH9OWEElYYyttu2OCdWC
iz6lTOAbPvYE6DZRjBbTus9/T6NdmBM/O8DfySW05zT43zv0+frrAY5AIykYM4tY
Kee4qvU1lhryVEmqECQsSzXbgkERZaA078HcT4T8YaBYC7BeZE5JeVhxOm/doI7C
T9nT44Q4ZYb2VR0L9YhOK5VfFbmwIx0LcZuGOPv0WH3xVpJsNa8ycVoMLeoLiYVq
dScRu3NbNoc0ITwm9x5yt1Vf1WGGkSFRX8eJuO8MJGe9CCuuUx0=
=m8mA
-----END PGP SIGNATURE-----

--------------72tLAIFvrp7pvmaXujUVTOKb--
