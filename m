Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF29659B5C
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 19:20:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbiL3SUu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 13:20:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235334AbiL3SUt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 13:20:49 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C8DA2BD5
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 10:20:47 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id k26-20020a05600c1c9a00b003d972646a7dso12576846wms.5
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 10:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lzDy6+654nuDbiXtqK1/8xbE69u9MWPiZtX0LJ3fMV0=;
        b=LhP8cEiDKXwFM+9iZtSLZSLv51W8U0Mzm8oGSYAIChvBS7mrzwI/SGRe9cUi6pdGPL
         X2SRi9rak8JRaJ8qLMuHjqYYDpxyFFyyY+r4bIiqJ753FqVzAY3Cbtmgu9/nIKcDAIxg
         NW1tqsOPDIcNBsFQRcJ8vHf6vvll9KBZ8TKEUscpsJU+NZyvrFmiMXWVnMTmOw3IjwWk
         uY/w2SnJOY1g1ooA4E1mefKQ8SUpJMDKcuoWa4fP1eiCwWhwlYjO+SPOtHB+O5C2jjss
         YsYkcn7/F7bhUHqedv1jICUmrogE0HE98/Zfu9XGJ2M0kr6GRwM6R9KQJLgq6J1EQtJG
         OskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lzDy6+654nuDbiXtqK1/8xbE69u9MWPiZtX0LJ3fMV0=;
        b=YYD7LQ5uXrhX4V60sW3nMhFd/+IYiFSXSkBtqGtifOz8Srp+0tGXtZ/8hjqtlnApH/
         2AF3Fi2KX7DhaG7XjNpENEDjQ9WSdMZMM+Ub7y6RD/gn4DUTDemhQo+w7E3nLCSohOY9
         5jI9hYQaxsX6ol0QteA/OyDR5+GmTNudNKeLq1F3MtoFGGqc6hvs/sgXGAcTd4DbCae3
         DLa8JBavqeQ/UsvFSTO8RHU4Zy1lyGOA+mIGftCDmKS2LzQqLcXfxamphFMH5GipwjWN
         ZN/vq9DyGflmFIKhxCN7kOAzN7wkfhH/CdDEv5xpJqKMMzLu4wvJC2iJZwE4wWY310hW
         /5dg==
X-Gm-Message-State: AFqh2kqMbRUEv6z4B7xUdI0p9aQad90BfuGtFoEPVpgH7IAMQOZbzvce
        Dp34mUc+VYInHZ8pBOjkONWsxtxA+tg=
X-Google-Smtp-Source: AMrXdXsE83vSM8lPD4ewE/9rbPsrSYtXFMnlVlpnABIxBcjPfyfoLNeO8YhbiIZltYWyGIIKUL22Xw==
X-Received: by 2002:a05:600c:42d4:b0:3d0:6d39:c62e with SMTP id j20-20020a05600c42d400b003d06d39c62emr23571825wme.12.1672424445848;
        Fri, 30 Dec 2022 10:20:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b003c6f8d30e40sm36540351wms.31.2022.12.30.10.20.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 10:20:45 -0800 (PST)
Message-ID: <e7c6da15-c5ef-e5b8-1225-23126aa54c76@gmail.com>
Date:   Fri, 30 Dec 2022 19:20:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>,
        =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
 <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------504Qrn0fiWnt1zzU5uFdFAkF"
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
--------------504Qrn0fiWnt1zzU5uFdFAkF
Content-Type: multipart/mixed; boundary="------------2G0FE4Tq0eVjAUdVdH23nal4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>,
 =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <e7c6da15-c5ef-e5b8-1225-23126aa54c76@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
 <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com>
 <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
In-Reply-To: <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>

--------------2G0FE4Tq0eVjAUdVdH23nal4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5IEpvc2VwaCENCg0KT24gMTIvMzAvMjIgMTk6MTUsIEpvc2VwaCBNeWVycyB3cm90ZToN
Cj4gT24gV2VkLCAyOCBEZWMgMjAyMiwgQ3Jpc3RpYW4gUm9kcsOtZ3VleiB2aWEgTGliYy1h
bHBoYSB3cm90ZToNCj4gDQo+PiBPbiBUdWUsIERlYyAyNywgMjAyMiBhdCA5OjQxIFBNIEFs
ZWphbmRybyBDb2xvbWFyDQo+PiA8YWx4Lm1hbnBhZ2VzQGdtYWlsLmNvbT4gd3JvdGU6DQo+
Pj4NCj4+PiBIaSBCcmFuZGVuLA0KPj4+DQo+Pj4gT24gMTIvMjgvMjIgMDE6MDAsIEcuIEJy
YW5kZW4gUm9iaW5zb24gd3JvdGU6DQo+Pj4+IEF0IDIwMjItMTItMjhUMDA6MzM6MTMrMDEw
MCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+Pg0KPj4+IChJIHVzZWQgQzIzIHN5bnRh
eCBmb3Igcm91bmRpbmcgdXAgdG8gYSBwb3dlciBvZiAyLCB0byBhdm9pZCBzb21lIG1hZ2lj
IG1hY3JvLg0KPj4+IFRoYXQgbGluZSBpcyBub3QgbmVjZXNzYXJ5LCBidXQgaW1wcm92ZXMg
cGVyZm9ybWFuY2UgY29uc2lkZXJhYmx5IGZvciBzbWFsbA0KPj4+IHVwcGVyIGJvdW5kcy4g
IEkgZG9uJ3Qga25vdyBpZiBpdCdzIGF2YWlsYWJsZSBhbHJlYWR5IGluIEdDQyBvciBDbGFu
Zy4pDQo+Pg0KPj4gYXQgbGVhc3QgY3VycmVudCBnY2MxMyBkb2VzIG5vdCBpbXBsZW1lbnQg
TjMwMjIgeWV0IDotfCB0aGF0IGFjdHVhbGx5DQo+PiBhIG5pY2UgYW5kIGxvb29uZyBuZWVk
ZWQgYWRkaXRpb24gKGxpa2UgMzAgeWVhcnMgbGF0ZSkNCj4gDQo+IEkgZXhwZWN0IHRvIGlt
cGxlbWVudCB0aGVzZSBmdW5jdGlvbnMgaW4gZHVlIGNvdXJzZSBmb3IgZ2xpYmMgKG5vdCBH
Q0MsDQo+IHNpbmNlIHRoZXNlIGFyZSBsaWJyYXJ5IGZ1bmN0aW9ucywgd2l0aCB0aGUgdXN1
YWwgcmVxdWlyZW1lbnRzIGZvcg0KPiBkZWZpbml0aW9ucyB3aXRoIGV4dGVybmFsIGxpbmth
Z2UsIHRob3VnaCBtb3N0IHdvdWxkIGFsc28gaGF2ZSBpbmxpbmUNCj4gaGVhZGVyIGltcGxl
bWVudGF0aW9ucyBiYXNlZCBvbiBleGlzdGluZyBsb25nc3RhbmRpbmcgYnVpbHQtaW4gZnVu
Y3Rpb25zKS4NCg0KSXMgdGhlcmUgYW55IGJ1aWx0aW4gZm9yIHN0ZGNfYml0X2NlaWwoKT8g
IEkndmUgdHJpZWQgdG8gc2VhcmNoIGZvciBpdCwgYnV0IA0KZGlkbid0IGZpbmQgaXQuICBJ
IGNhbWUgdG8gdGhlIGNvbmNsdXNpb24gdGhhdCBJIG5lZWQgdG8gd3JpdGUgdGhlIHVnbHkg
Y29kZSANCmFyb3VuZCBfX2J1aWx0aW5fY2x6KCkuDQoNCkNoZWVycywNCg0KQWxleA0KPiAN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------2G0FE4Tq0eVjAUdVdH23nal4--

--------------504Qrn0fiWnt1zzU5uFdFAkF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOvK+4ACgkQnowa+77/
2zLeBBAAgyYk5XKHtDnsAlmu0G1X/bg1Cqva0zrWD4JpK+dq/S4Ktvh7g/5loysd
0R1FTM0Ow18OPCdTU73PWyfUy4vD3MVHwXn6zjCjDLoYyv0d3zkCoog1lmN65ip8
9W7IXoFI4YZXyvrQgWSZJ6/9vdgblnthYa8lgYIzaivYXkintfeONH7Tgurv6br/
8jYDuYNaT5o/VSicYDAubALEULcOttG3feLbZ8pzvbYnGBfmI4JXaBrlHYLJe1x5
hSp/ZB0ZXImSLuELAUTNZmO9Gv+bfqyx5jL5ZRhzrjBDl8j3/yu6qhVotdL8Kbwq
nzieOIX52RljuGnn5cDs7yDM6JibhW+nOzUDXW2ehcjSxI5m/TN4fi85FMAmT/9p
is+lfNIfmFkYNpLVHBPY7pmcA8+3RcrQX64RlkQI4zgSAx5LOzGXm27dg5yQDY9V
+UtbuFmjmnT22Os5v8LmCcZOZ1vJpGMDiwyfrPdhL+IyfxDxo73twBzwI2e6LXmN
4e2Hw9NrIOOMWQf0cD4xTZ83ai7/z+Bx/0P2wMVpzAYcJz0jvjemju5rK8ivy2kU
1Hnxxp+yfiPAoeMhNlfz08DtooS8wtxRxzWu7coGSadvSDx/4zruB2W8aJ3uQyXX
NJU+F2NE7XNYvEJWKRqJqsNBfdOaLNrmwJ4gQtxtHAjq12rgR9U=
=poPQ
-----END PGP SIGNATURE-----

--------------504Qrn0fiWnt1zzU5uFdFAkF--
