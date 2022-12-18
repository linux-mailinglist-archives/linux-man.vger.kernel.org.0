Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B44EE64FEA4
	for <lists+linux-man@lfdr.de>; Sun, 18 Dec 2022 12:26:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230008AbiLRL0A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Dec 2022 06:26:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230195AbiLRLZ7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Dec 2022 06:25:59 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFE4FCE0B
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 03:25:57 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id bi26-20020a05600c3d9a00b003d3404a89faso3354308wmb.1
        for <linux-man@vger.kernel.org>; Sun, 18 Dec 2022 03:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/0ipv1UJM+DzJwKQN/zDMQgeSqG2n+5jM/ewhp1xL8=;
        b=GnHXJY62wtg3fZTsYKC3HDefDVQ/sQuok+IdzXLtcdJedBXQXQ9nF0XVmDBPTrOukD
         IdBjK7nSfOnV0RXrBTYgImZKd6n1ns8/XLgOGz2ulG5mAhdHQzR0QctBqFn+gnd+MjIq
         Bh7HrQ5NUB66Qbn4gmkha7VxCx9yr6KGQuSRnwGZF9J53lVxveSH4UUeG5fw31teyDp0
         jUdgiyJq6BkRSYpJ3gBzF6QAnP73MdL6zyzehrQKXJeacZVGLhf2po9ZaQPaX7kFuGeG
         g1AvF5zptUPT6xMMudoPOnU0Ym7+7scI8Wpo7bLVWAUJ4i0/rteATJUPsurSCRvSyMdV
         6Q1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p/0ipv1UJM+DzJwKQN/zDMQgeSqG2n+5jM/ewhp1xL8=;
        b=15rGPTsjOOq/TFEJSKzI7oKZsP6cDkd7QqrGYx1ZTtMR4ouLou1XmypkGOi7sOVJi+
         BnPmnJVUnUAU+1luDr5r+2a1Fzf3P728BISkzXRtM6bkV7uL0lbvMqpqnGZs7u1SvuMG
         89gDCXszk+pl8N6ZhmHs4h98UADxPwf13vpdk4YMZJ89Da4MetLf00MA2WWry3neHy0w
         h8232nKvvulPolcbv+PCCmcorSqchkaL7rjDs/AN4Mdi1Gs3TQw+miHjRSPH3w1TSUxh
         3pXuLVk3ot0uMB15841bELCNdv7Zujj01xFX/skzyxAdRa/25cY8Sugk/wWtiDdfH3ZK
         vgaA==
X-Gm-Message-State: ANoB5pntDFuONLJ61KTGuF3iRmV5tidniwZfKVUthTIxfABHoZDlV7dv
        12EsN8dNWmh9/dFjHjszz3RkOEDbvUA=
X-Google-Smtp-Source: AA0mqf6SyZa2DfBRUyopObkrldCZvscmaRdeXTMbrI+QbTXP7MpBUKQcAcU1AjS8qfO4CorY/4IL1A==
X-Received: by 2002:a1c:7c15:0:b0:3cf:7197:e67c with SMTP id x21-20020a1c7c15000000b003cf7197e67cmr28959824wmc.25.1671362756245;
        Sun, 18 Dec 2022 03:25:56 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h5-20020a05600c2ca500b003d1e1f421bfsm16586927wmc.10.2022.12.18.03.25.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Dec 2022 03:25:55 -0800 (PST)
Message-ID: <a82b66ad-0c73-aaea-c6d5-2e5596d12438@gmail.com>
Date:   Sun, 18 Dec 2022 12:25:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters
 of the manual (was: Bug#1018737: ...))
Content-Language: en-US
To:     Deri <deri@chuzzlewit.myzen.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid> <1889004.IobQ9Gjlxr@pip>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <1889004.IobQ9Gjlxr@pip>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Ek4ZpoMowfsFo3snUUTaH6DY"
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
--------------Ek4ZpoMowfsFo3snUUTaH6DY
Content-Type: multipart/mixed; boundary="------------uD1jYJiuQlODSRIJNIK9Clci";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Message-ID: <a82b66ad-0c73-aaea-c6d5-2e5596d12438@gmail.com>
Subject: Re: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters
 of the manual (was: Bug#1018737: ...))
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid> <1889004.IobQ9Gjlxr@pip>
In-Reply-To: <1889004.IobQ9Gjlxr@pip>

--------------uD1jYJiuQlODSRIJNIK9Clci
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGVyaSwNCg0KT24gMTIvMTcvMjIgMjI6MjYsIERlcmkgd3JvdGU6DQo+IEhpIEFsZXgs
DQo+IA0KPiBUaGlzIGlzIGEgYnVnIGluIG15IHBlcmwgc2NyaXB0IHdoaWNoIGFzc2VtYmxl
cyB0aGUgTGludXggTWFucGFnZSBCb29rLA0KPiBub3RoaW5nIHRvIGRvIHdpdGggZ3JvZmYs
IHRibCBvciBncm9wZGYsIGp1c3QgYSBiYWQgaGFiaXQgSSBoYXZlIG9mIHNjcnViYmluZw0K
PiBsZWFkaW5nIHNwYWNlcyBiZWZvcmUgcGFyc2luZyBhIGxpbmUsIG5vcm1hbGx5IGZpbmUs
IGJ1dCBkaXNhc3Ryb3VzIHdoZW4gdGhlDQo+IHNwYWNlIGlzIGludGVuZGVkIHRvIHByb3Rl
Y3QgYSBmdWxsIHN0b3AgYmVpbmcgdGhlIGZpcnN0IGNoYXJhY3Rlci4NCg0KQWhoLCBtYWtl
cyBzZW5zZS4NCg0KSSB0aG91Z2h0IGl0IGNvdWxkIGJlIGEgYnVnIGluIGdyb2ZmLCBzaW5j
ZSBJIGhhZCBzZWVuIHRoZSBzYW1lIGlzc3VlIGxhc3QgeWVhciwgDQpJIHRoaW5rIHdpdGgg
Z3JvaHRtbCAoYnV0IEknbSB0YWxraW5nIGZyb20gbWVtb3J5KS4gIE1heWJlIEJyYW5kZW4g
cmVtZW1iZXJzLg0KDQo+IA0KPiBGb3IgdGhpcyByZWFzb24sIGlmIHlvdSBmaW5kIGlzc3Vl
cyB3aXRoIHRoZSBib29rIGl0IHByb2JhYmx5IGlzIG5vdCByZWxldmVudA0KPiB0byB0aGUg
Z3JvZmYgbGlzdCwgc2luY2UgaXQgaXMgbW9yZSBsaWtlbHkgdG8gYmUgYW4gaXNzdWUgd2l0
aCBjb2RlIHdoaWNoIGlzDQo+IGp1c3QgYSBmZXcgaG91cnMgb2xkLiBBbnkgZmF1bHRzLCBv
ciBjaGFuZ2VzIHlvdSB3b3VsZCBsaWtlLCBwbGVhc2Ugc2VuZCB0bw0KPiBtZSwgc2luY2Ug
aXQgaXMgbm90IHJlbGV2ZW50IHRvIHRoZSBncm9mZiBsaXN0Lg0KDQpVbmRlcnN0b29kIQ0K
DQpJJ20gaW1wYXRpZW50IHRvIHNlZSB0aGF0IHNjcmlwdCA6KQ0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KPiANCj4gQ2hlZXJzDQo+IA0KPiBEZXJpDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------uD1jYJiuQlODSRIJNIK9Clci--

--------------Ek4ZpoMowfsFo3snUUTaH6DY
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOe+MIACgkQnowa+77/
2zJggQ/+PaM6uafcYcNeKKuB1qKFg95KAJ4IivdAcf8QWgrEUq6j4YgtE5TZd3jf
2p/wFv9s/8SuYD4XAFffJKLFedMkOC2v4UX+98jZEbKVDNPJxoaZXOiJgIN+3o5Y
Vdp9krW006HHWmYlwndV+aS8cgwxVKU0vkbJqbYU9PWKhxoU8LbTTQLCkatcJJlW
X3k81Rk70eQNqiLm6OarJ2vtYb0jeDIrzlVR0GCNMwTZwSCXSfTek2rsgPrnjss6
9aSUIxP3aGbdir+nGgTO4biH4HE2+HeXGrNgAhbyxjpwEPfG/oDoLww02Aauz+s8
CcOunai6Tv7sNx1S2RZun6IUPXY5LoiTvcGQE5BKoWWdkvyEjRhVkY/l7BPr6A7w
M5w7KpGIglOkg8HJWTmtj3eFa50qUnStLPVlXgc7Zw8FNv/TiTSU62yeOztCN6Ld
sOx1ujMirHx/zOsNfeffJfAr3Xs6UsevDkx/jnGBs1MRhnBg+jhipgxlGd+HGx6G
bFg7cS6+pl2OsLwY3a+9+Q8LC9UTJ5FXfGEu/zL3c6ccZIHTFwYMAB8NyevkQDnl
hi0RXO/2Hv5yJRE5jiq31/ptOG+Gd23Zy0Qa+qzVJO9OCBf+KCWzuseyuSmLS5Gm
8kXl6aVjU2QbQiS0GrlogBQeCeif9L2KOI73CLJt18L/C0HZUUk=
=kYh3
-----END PGP SIGNATURE-----

--------------Ek4ZpoMowfsFo3snUUTaH6DY--
