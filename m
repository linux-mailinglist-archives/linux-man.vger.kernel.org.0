Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D79636488FF
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 20:33:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbiLITda (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 14:33:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229821AbiLITdW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 14:33:22 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C4C4A4326
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 11:33:21 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so536726wmi.3
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 11:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tIivEDC5ZJT8xjHS9mwUIOVPQbSyoqVwJXvWG6YuGl0=;
        b=ImLjuziPUQvOgIpTwk7/F+32q+FGmIUGD/GdTYUPGcJnZcverJAXLRUHh0R1nwfcVI
         KiBTBSx/QCTYN35C9fKQMJJ5X7CEyH6GIHZ1G/jv+ujnFSK2frFOnAWvO9gJCHyVGJyZ
         IQVco7ubcnnwuzuQqJOrnKqk+1AokYx6EmbpshHI/7OrCxhW3D1vlMSaS+gJW83PskDU
         8a5WPkS1DEYcByz37807OBGUPicnAhXJPbjgbFutotqABDdTvfztmqYy4yzWfWegb15a
         8e+efvUz2gAd1GDxc3t7eqXu6N3UbgFOwp3/d3wxMx0FoDSHgDNBioJyEwiFN1YSUIiN
         q2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tIivEDC5ZJT8xjHS9mwUIOVPQbSyoqVwJXvWG6YuGl0=;
        b=HrHLi6je0pulHBgbr3iIx4MOuUEyZ9dw9+PYN3Qbow4Fs2n8tOaf+mTOjcGXaNu9Ag
         xsdcyILRvAP45hc9vEaABDtjk1igv7+5Suxm9GZsmhgepYfCVWSW4DOWopESAaxge1YW
         6gkkOvbqJyPRxZPJra46RfcecbJBa9iJfEYy/Jcn3onJupQyphZFP4bw/mYVbox/EPqX
         4IrW8eoiQi3eO3lj6wcuvqmIsnVJ+Pgc7/pzrdBYi6gbG9lrLIELW7Kx5xcVBGh+I1Uo
         zzmP+24d+wT427VibGVl5XtUqVIXHSMWx6Qget2yLl7rJpnavxY+gFWBW2fJhWbdWCUH
         ClHg==
X-Gm-Message-State: ANoB5pkvyKcx+KIKWlU5pjRe8paMptQ8QEQkcxGNHjh1stpNSs8NTnaf
        EqvcZsfwee8sEf9iV0T7vWk=
X-Google-Smtp-Source: AA0mqf7s+pePU4rz7ruxuTNrCim2N97ERGIh7UMnnqw0Ab40DP8Fk5Qj8DaXVj/deJfcX81/D1YITg==
X-Received: by 2002:a7b:c445:0:b0:3cf:7004:bdf3 with SMTP id l5-20020a7bc445000000b003cf7004bdf3mr5988703wmi.27.1670614399610;
        Fri, 09 Dec 2022 11:33:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m127-20020a1c2685000000b003d1d5a83b2esm610486wmm.35.2022.12.09.11.33.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 11:33:19 -0800 (PST)
Message-ID: <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
Date:   Fri, 9 Dec 2022 20:33:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Ian Abbott <abbotti@mev.co.uk>, Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tkkP7VOcUYoE26iT9uHQUlse"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tkkP7VOcUYoE26iT9uHQUlse
Content-Type: multipart/mixed; boundary="------------ODAPBn5RQHz80H0QAjcSaKbX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, GNU C Library <libc-alpha@sourceware.org>
Message-ID: <06f70d09-a258-7d6d-4a98-6a89ed761849@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <5f490d45-b31e-279e-edcb-de4806b8ba54@gmail.com>
 <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>
In-Reply-To: <d1ecf57b-72cf-dbb4-3b4a-b19c7cdc93e9@mev.co.uk>

--------------ODAPBn5RQHz80H0QAjcSaKbX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSWFuLA0KDQpPbiAxMi85LzIyIDIwOjI4LCBJYW4gQWJib3R0IHdyb3RlOg0KPiBPbiAw
OS8xMi8yMDIyIDE4OjU5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IE9uIDEyLzgv
MjIgMTM6MzQsIElhbiBBYmJvdHQgd3JvdGU6DQo+Pj4gVGhlIGBzY2FuZigpYCBmdW5jdGlv
biBkb2VzIG5vdCBpbnRlbnRpb25hbGx5IHNldCBgZXJybm9gIHRvIGBFUkFOR0VgLg0KPj4+
IFRoYXQgaXMganVzdCBhIHNpZGUgZWZmZWN0IG9mIHRoZSBjb2RlIHRoYXQgaXQgdXNlcyB0
byBwZXJmb3JtDQo+Pj4gY29udmVyc2lvbnMuwqAgSXQgYWxzbyBkb2VzIG5vdCB3b3JrIGFz
IHJlbGlhYmx5IGFzIGluZGljYXRlZCBpbiB0aGUNCj4+PiAnbWFuJyBwYWdlIHdoZW4gdGhl
IHRhcmdldCBpbnRlZ2VyIHR5cGUgaXMgbmFycm93ZXIgdGhhbiBgbG9uZ2AuDQo+Pj4gVHlw
aWNhbGx5IChhdCBsZWFzdCBpbiBnbGliYykgZm9yIHRhcmdldCBpbnRlZ2VyIHR5cGVzIG5h
cnJvd2VyIHRoYW4NCj4+PiBgbG9uZ2AsIHRoZSBudW1iZXIgaGFzIHRvIGV4Y2VlZCB0aGUg
cmFuZ2Ugb2YgYGxvbmdgIChmb3Igc2lnbmVkDQo+Pj4gY29udmVyc2lvbnMpIG9yIGB1bnNp
Z25lZCBsb25nYCAoZm9yIHVuc2lnbmVkIGNvbnZlcnNpb25zKSBmb3IgYGVycm5vYA0KPj4+
IHRvIGJlIHNldCB0byBgRVJBTkdFYC4NCj4+Pg0KPj4+IERvY3VtZW50aW5nIGBFUkFOR0Vg
IGluIHRoZSBFUlJPUlMgc2VjdGlvbiBraW5kIG9mIGltcGxpZXMgdGhhdA0KPj4+IGBzY2Fu
ZigpYCBzaG91bGQgcmV0dXJuIGBFT0ZgIHdoZW4gYW4gaW50ZWdlciBvdmVyZmxvdyBpcyBl
bmNvdW50ZXJlZCwNCj4+PiB3aGljaCBpdCBkb2Vzbid0IChhbmQgZG9pbmcgc28gd291bGQg
dmlvbGF0ZSB0aGUgQyBzdGFuZGFyZCkuDQo+Pj4NCj4+PiBKdXN0IHJlbW92ZSBhbnkgbWVu
dGlvbiBvZiB0aGUgYEVSQU5HRWAgZXJyb3IgdG8gYXZvaWQgY29uZnVzaW9uLg0KPj4+DQo+
Pj4gRml4ZXM6IDY0NmFmNTQwZTQ2NyAoIkFkZCBhbiBFUlJPUlMgc2VjdGlvbiBkb2N1bWVu
dGluZyBhdCBsZWFzdCBzb21lIG9mIHRoZSANCj4+PiBlcnJvcnMgdGhhdCBtYXkgb2NjdXIg
Zm9yIHNjYW5mKCkuIikNCj4+PiBDYzogTWljaGFlbCBLZXJyaXNrIDxtdGsubWFucGFnZXNA
Z21haWwuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IElhbiBBYmJvdHQgPGFiYm90dGlAbWV2
LmNvLnVrPg0KPj4NCj4+IEkgc2VlLsKgIEhvdyBhYm91dCBzYXlpbmcgc29tZXRoaW5nIGxp
a2UgIml0IG1heSBhbHNvIGZhaWwgZm9yIGFueSBvZiBhbnkgDQo+PiBlcnJvcnMgdGhhdCBm
dW5jdGlvbnMgdXNlZCB0byBwZXJmb3JtIHRoZSBjb252ZXJzaW9ucyBtYXkgZmFpbCI/DQo+
IA0KPiBJdCBkZXBlbmRzIHdoYXQgeW91IG1lYW4gYnkgImZhaWwiLsKgIFRoZXNlIGVycm9y
cyBkbyBub3QgbWFrZSBzY2FuZiByZXR1cm4gRU9GLiAgDQoNCkp1c3QgdG8gY2xhcmlmeS4g
IERvZXMgc2NhbmYoMykgX25ldmVyXyBmYWlsIChFT0YpIGR1ZSB0byBFUkFOR0U/ICBPciBp
cyBpdCB0aGF0IA0KRVJBTkdFIHNvbWV0aW1lcyBtYWtlcyBpdCBmYWlsLCBzb21ldGltZXMg
bm90Pw0KDQpJZiBpdCdzIHRoZSBmb3JtZXIsIEkgYWdyZWUgd2l0aCB5b3VyIHBhdGNoLiAg
V2hlbiBhIGZ1bmN0aW9uIGhhc24ndCByZXBvcnRlZCANCmZhaWx1cmUsIGVycm5vIGlzIHVu
c3BlY2lmaWVkLg0KDQpJZiBpdCdzIHRoZSBsYXR0ZXIsIEknZCB3cml0ZSBzb21ldGhpbmcg
YWJvdXQgaXQuDQoNCg0KPiBUZWNobmljYWxseSwgdGhlIGJlaGF2aW9yIGlzIHVuZGVmaW5l
ZCBpZiB0aGUgcmVzdWx0IG9mIHRoZSBjb252ZXJzaW9uIGNhbm5vdCBiZSANCj4gcmVwcmVz
ZW50ZWQgaW4gdGhlIG9iamVjdCBiZWluZyBhc3NpZ25lZCB0byBieSBzY2FuZi7CoCAoSW4g
dGhlIGNhc2Ugb2YgZ2xpYmMsIA0KPiB0aGF0IHByb2JhYmx5IHJlc3VsdHMgaW4gZWl0aGVy
IHRoZSBpbnRlZ2VyIG9iamVjdCBiZWluZyBzZXQgdG8gYSB0cnVuY2F0ZWQgDQo+IHZlcnNp
b24gb2YgdGhlIGlucHV0IGludGVnZXIsIG9yIHRoZSBpbnRlZ2VyIG9iamVjdCBiZWluZyBz
ZXQgdG8gYSB0cnVuY2F0ZWQgDQo+IHZlcnNpb24gb2YgTE9OR19NSU4gb3IgTE9OR19NQVgs
IGRlcGVuZGluZyBvbiB0aGUgYWN0dWFsIG51bWJlci4pDQoNCkhtbSwgVUIuICBVbmRlciBV
QiwgYW55dGhpbmcgY2FuIGNoYW5nZSwgc28gZXJyb3IgcmVwb3J0aW5nIGlzIGFscmVhZHkg
DQp1bnJlbGlhYmxlLiAgSWYgRU9GK0VSQU5HRSBjYW4gX29ubHlfIGhhcHBlbiB1bmRlciBV
QiwgSSdkIHJhdGhlciByZW1vdmUgdGhlIA0KcGFyYWdyYXBoLiAgUGxlYXNlIGNvbmZpcm0u
DQoNCj4gDQo+IFNldHRpbmcgZXJybm8gdG8gMCBiZWZvcmUgY2FsbGluZyBzY2FuZiBhbmQg
ZXhwZWN0aW5nIGVycm5vIHRvIGhhdmUgYSBtZWFuaW5nZnVsIA0KPiB2YWx1ZSB3aGVuIHNj
YW5mIHJldHVybnMgc29tZXRoaW5nIG90aGVyIHRoYW4gRU9GIGlzIGJvZ3VzIHVzYWdlLg0K
DQpZZXAsIHRoYXQncyBib2d1cy4NCg0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQo8aHR0
cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------ODAPBn5RQHz80H0QAjcSaKbX--

--------------tkkP7VOcUYoE26iT9uHQUlse
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTjW8ACgkQnowa+77/
2zLLdhAAly9XYUPEyY9rXz/qDmFQ1zT4mRU1vyJlQGWOCMTr1I93Ch7UF4FvkMMV
qlu7/jT2ylGP+/iquaRZXEwD9ue4b04CoVzhcl/Kc1opgUBMIUC54spHWTRi6biH
mn7ofs/eVhR88bT12KsCAS+EOdXcHaDrpQKgJePejDLoZ/24cwFPp4+N2hVGqqgl
13TOJYoCvyB5uIEIf5OrySZGOPyqhTD+JTFgNM4mkn5lzYnFpHxXZjOPLChcnQk8
4WN8rAs1CPHMr7zD8ahZOQJh8Dosh/et4ffEXEE9JLph/sJ67Kl3EGztphd7SG8l
jT4bMCFVf4sav2fbuXshhZ6pfl1NypGRoFlcmwJNgoMX4rcPS9ed2r30dDCq6hsu
qW61hmAGEpp62SW1lRwR1JgfYTVBYL6m3pFn7FZca3XwsMKpBlhHkUepovkcglcJ
wBq5cdMWz85wD4QA9yGdvflHSH4kU01AUBlLazWblt5HoeQ+8tYz0TNS4ptNHXIC
HLGBYEr5/0vZUxHfpGdXaxhg23DKm9UN3CfzIEuI6F3ErOgKrFTSEiFeepVap1bz
OsNfp275PLl1qLHNXpdtShpn/iA3OT46xM5mNvhknSlj4hwXP7YkunubeI3Onj5Y
7zv1X+WH1k2OfC7GWoXxQxLEVuK8soV4qwjEJ83T/8fhxIMmYds=
=P2Gb
-----END PGP SIGNATURE-----

--------------tkkP7VOcUYoE26iT9uHQUlse--
