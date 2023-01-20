Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D9CB675E01
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 20:26:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229993AbjATT0o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 14:26:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbjATT0n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 14:26:43 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A564B4E02
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 11:26:24 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so4460512wmq.0
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 11:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1a3XgOS9YOk/GEegFvmjUd7Hnmb4kJ6wNaX1sdRZbY=;
        b=DpV1y9TEKszpo8cuAx5XNjTcp22puICGADzi7PG/PoH5O5R9JJ9nUtaXKh/G9WopzQ
         tmM8i3r2d+2HzE3dYNwksXpZwjoBiI62cC6wwgT4/vY9pphTT4NQJcFVpDCmHW0xvywd
         CgAKM1H5yKvJstx2DQOjjy4rEiGmYUt8MJ5/UY8RCcfLgLgueLDmPzVHcJ21W50vFLmz
         Gqyr3kO1rNnqujkqZh18RK6B+dj3CDydL9PBnk/OoUuK3ZG9hNCYnYgr629d5+C/hLIA
         huhH0TjzfpYi04J8mhmDzqVdok57gfDQ+umkE/SzFB9SOk39jv2DE2g8JTFEVojDBbFC
         5eng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r1a3XgOS9YOk/GEegFvmjUd7Hnmb4kJ6wNaX1sdRZbY=;
        b=wEoBXfJf702PbfCVO3Tll3nVIs1fgb6j9fOhjcf2lLER8U/G0nlFFREU15qUsiDGcF
         7mtY4VyVNvpiP93W9bhjQIYJN8YLn4V4XyrF0hkNnhFJ08U7t1rQqn/UgcJ/0dnMhp8y
         mIh8wWQRKjJ8o3n0XIr5He7HxADvVf0F3j84X9DAe+kT6jvX/LXIRkwMuapV7HUGKmuY
         N5MCJiQ7/1qVQSGMvfy7zagTuc4Wx4okP7KjYU+XwbfaN2ReC5qRBeQFkEyzoUCajwyz
         LAVsLa5r3PQZl5zpLhbk3zuj90Mluyh8IYTkHFQnVGUT0X368kj1ZDPMtqO6LTcJYXel
         6W4w==
X-Gm-Message-State: AFqh2kqi2e1sJRzqm138TV68WDEEbuxRYfV7zBY29Rb9Cn8QffMTASci
        Tazcrk7/ok+a4BdPFbNW7MA=
X-Google-Smtp-Source: AMrXdXs5mpF/3qBp6PjBgfavog3KP20kwWfvZVXOKfO2bwohm3g502sTm0I41RgHvnDM6ulf0BqKWQ==
X-Received: by 2002:a05:600c:4c21:b0:3cf:900c:de6b with SMTP id d33-20020a05600c4c2100b003cf900cde6bmr14793643wmp.15.1674242779730;
        Fri, 20 Jan 2023 11:26:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020a05600c4e9200b003d1e3b1624dsm3732141wmq.2.2023.01.20.11.26.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 11:26:19 -0800 (PST)
Message-ID: <304d8644-d007-e3cd-c1ed-d24b6aa2a88c@gmail.com>
Date:   Fri, 20 Jan 2023 20:26:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
Content-Language: en-US
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     libc-alpha@sourceware.org, Alejandro Colomar <alx@kernel.org>,
        linux-man@vger.kernel.org,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
References: <20230120134043.10247-1-alx@kernel.org>
 <aa5ff22-b919-ce0-f16-f9857bbe1f7d@codesourcery.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <aa5ff22-b919-ce0-f16-f9857bbe1f7d@codesourcery.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XHEFSYMJQuW51pqNtxPFpoSu"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XHEFSYMJQuW51pqNtxPFpoSu
Content-Type: multipart/mixed; boundary="------------0zs00PrYKfGNuqU72dfJzD5T";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Joseph Myers <joseph@codesourcery.com>
Cc: libc-alpha@sourceware.org, Alejandro Colomar <alx@kernel.org>,
 linux-man@vger.kernel.org, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Eric Blake <eblake@redhat.com>,
 Zack Weinberg <zack@owlfolio.org>, Stefan Puiu <stefan.puiu@gmail.com>,
 Igor Sysoev <igor@sysoev.ru>
Message-ID: <304d8644-d007-e3cd-c1ed-d24b6aa2a88c@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <aa5ff22-b919-ce0-f16-f9857bbe1f7d@codesourcery.com>
In-Reply-To: <aa5ff22-b919-ce0-f16-f9857bbe1f7d@codesourcery.com>

--------------0zs00PrYKfGNuqU72dfJzD5T
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSm9zZXBoLA0KDQpPbiAxLzIwLzIzIDE4OjQ5LCBKb3NlcGggTXllcnMgd3JvdGU6DQo+
IE9uIEZyaSwgMjAgSmFuIDIwMjMsIEFsZWphbmRybyBDb2xvbWFyIHZpYSBMaWJjLWFscGhh
IHdyb3RlOg0KPiANCj4+IFRoaXMgcGF0Y2ggZml4ZXMgc29ja2FkZHJfc3RvcmFnZSB0byBy
ZW1vdmUgVUIgb24gaXRzIHVzZXMgYW5kIG1ha2UgaXQNCj4+IHRoYXQgc3RydWN0dXJlIHRo
YXQgZXZlcnlib2R5IHNob3VsZCBiZSB1c2luZy4gIEl0IGFsc28gYWxsb3dzIHJlbW92aW5n
DQo+PiBtYW55IGNhc3RzIGluIGNvZGUgdGhhdCBuZWVkcyB0byBwYXNzIGEgc29ja2FkZHIg
YXMgYSBzaWRlIGVmZmVjdC4NCj4gDQo+IFRoaXMgcGF0Y2ggb25seSBjaGFuZ2VzIHRoZSBm
YWxsYmFjayB2ZXJzaW9uIG9mIGJpdHMvc29ja2V0LmggdGhhdCB3b3VsZA0KPiBiZSB1c2Vk
IGJ5IGEgbmV3IE9TIHBvcnQgdGhhdCBkb2Vzbid0IGhhdmUgaXRzIG93biwgbm90IGVpdGhl
ciBvZiB0aGUNCj4gdmVyc2lvbnMgdGhhdCBhbnkgY3VycmVudCBnbGliYyBwb3J0IGFjdHVh
bGx5IHVzZXMNCj4gKHN5c2RlcHMvdW5peC9zeXN2L2xpbnV4L2JpdHMvc29ja2V0LmggYW5k
DQo+IHN5c2RlcHMvbWFjaC9odXJkL2JpdHMvc29ja2V0LmgpLg0KDQpIaSBKb3NlcGghDQoN
ClRoYW5rczsgSSBkaWRuJ3Qgbm90aWNlIGFib3V0IHRob3NlLiAgSXQgc2VlbXMgdGhhdCBw
YXRjaGluZyB0aG9zZSBpcyBub3Qgc28gDQp0cml2aWFsLCBzaW5jZSBiaXRzL3NvY2tldC5o
IGlzIGluY2x1ZGVkIGJ5IHRoZSBoZWFkZXJzIHRoYXQgcHJvdmlkZSB0aGUgDQpzcGVjaWFs
aXplZCBzb2NrYWRkcl8qIHR5cGVzLiAgSSBndWVzcyB3ZSBuZWVkIHRvIG1vdmUgc29ja2Fk
ZHJfe2luLGluNix1bn0gdG8gDQpiaXRzLyBoZWFkZXJzLCByaWdodD8NCg0KQ2hlZXJzLA0K
DQpBbGV4DQoNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
Pg0K

--------------0zs00PrYKfGNuqU72dfJzD5T--

--------------XHEFSYMJQuW51pqNtxPFpoSu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPK6toACgkQnowa+77/
2zJilQ//a3O3bCSZnDGU1SOHGSOgIionNsLW2NgNiTJ13QKqwNDFJroy48cTI79F
zhdznwQSbUkUg0OTS2y1QXuRWP2LL8V6LQWfNomW8FmmdGJJq/0PrD+fOKNYpfMB
mMxzoYCZLHqE/TFgpB2EUbzLHQxud7gcEOmatCfwpOdM+LXQpVa3H/bzAnTIcBNy
rrXW62xsxvIEROwToPvvQM2WqmvAy5W1Lm+rNTpIIGGs+JDWMVBO5rrOzW/yumJ5
nQtOwofVezEHYeITsKeCcgb0Q7qvq/nxrUzEWkpuk5zLO5cuZjdlOdDUBCT19RCX
qo+QWppq0CMjLGHbthLGNquD6hdN4u0OO6vMs+h4VwhbzksqpbWl9EMZdoLWSROH
ARr5qZJsoN/Wl90DxOTYxreEoMA58VBCQo+bVnBbYOgeoWp3jH2BEHeUjwX4xCMu
aQdGcO9ZegVqk7dmlo/nMnvEvaFuhszG6Xd2aCapgXoOyxkT8e44DUaO94a5Qdyc
nM32XUKxJBGf1gSO5RRBulibmPJd72gQ6GpsF8TtzgBdiDVZPXw3IkSSSrywJcT5
+afDK3JpZnaXHUeB0ttXE12XZZ50dRDYNrcsk8Bclq3I8PbQEfmyGxJx7tk+yp4I
5GGyXv94fxTAYFKjzRP3KLJbxMBJILNwc8Rh3o4LuJOb3Q6lZ7E=
=0wRJ
-----END PGP SIGNATURE-----

--------------XHEFSYMJQuW51pqNtxPFpoSu--
