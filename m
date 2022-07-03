Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5150E564A6D
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 01:05:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229447AbiGCXFG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 3 Jul 2022 19:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229484AbiGCXFF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 3 Jul 2022 19:05:05 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D26982651
        for <linux-man@vger.kernel.org>; Sun,  3 Jul 2022 16:05:03 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id l40-20020a05600c1d2800b003a18adff308so4678297wms.5
        for <linux-man@vger.kernel.org>; Sun, 03 Jul 2022 16:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=MXjuDEfZrTBJZ6bjE3QBMX/Ut4ORd+mSsle6xor56vA=;
        b=ginmpxnhEXFRHgnl9/fucvF4FO813Rt3CmYG598KlctBLvxpGogn8ZtCiWLR3C1rnE
         0hIXaV42cPfhpQHBIy/l5hIYeaqcHentoKYzknJcq2PyIhrCyFghTg1V9b/mK9rnRpgX
         T8WyCoTav78wZx29Pmkf69kzpDZDbeygpHYXOFPNOojGtXGFK0fQm/fZ7O6SnRPTAmY4
         t/KAHZRhEFAf+nSa8vic3SBE0CkGkQbxL7pBxBi+J4GETy8lUYf/p2efyRsmFaOqS4DS
         9KmOzaVHCUwfmeBPHwAZvHnB2eigSi9zxys66NXxXi1MorBis12myePO+QvwDHAP2BvY
         D5pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=MXjuDEfZrTBJZ6bjE3QBMX/Ut4ORd+mSsle6xor56vA=;
        b=bkgKsLNVg2lreLsRTsh2/GZ/meUTppC8LOj9Wvqfgl41HkTtBSfVCEMWF7rZGEq+Ix
         7Hh2tCqNbJFgKxWzYqT0p0wg91UZjs2eAASqwYfxcO4/xGTyD50MIyRpUJU+bV8POqgc
         gBY99ETfLA8oChINDAV/i1VMVWqLXk2lyGQ28GyHlt9SJnzALq8VsnRyILjiPfSQVO+h
         zd18B2KToEb1cVL74/t8G4SEZCUkLi+Wy3BC2q1SilwVRNWogika2PcUOH4PNcy0ID1a
         eAG8NNu9Lb1JsZusXPqp6rv+Qi+gwHBBeahtdRWp10gggH5mczicCJ3AepytrO5IDsWF
         HlUA==
X-Gm-Message-State: AJIora/688tGa1jg8OK5XzdLk9CysmHWz7Cq89GT5bmC/ToZvJ4+V2AZ
        ZCfoK11bM7i3v+oiEeHh0POs4NzSHOY=
X-Google-Smtp-Source: AGRyM1uWAECGu7f1r5ssf8pgetwvh+3CTcdL48W6Y+wUSpwmTXUCMpJJQSQLzVqEXhWRdIxnB5Kcyw==
X-Received: by 2002:a1c:f710:0:b0:394:1960:e8a1 with SMTP id v16-20020a1cf710000000b003941960e8a1mr28443482wmh.154.1656889502270;
        Sun, 03 Jul 2022 16:05:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f18-20020adfb612000000b002185631adf0sm29542627wre.23.2022.07.03.16.05.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 16:05:01 -0700 (PDT)
Message-ID: <9e1cb4dc-921b-8a37-df1f-72b18dff5083@gmail.com>
Date:   Mon, 4 Jul 2022 01:04:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Cd4Lc72E3ZpOrwugHm88aP3L"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Cd4Lc72E3ZpOrwugHm88aP3L
Content-Type: multipart/mixed; boundary="------------1kwm1QSkHl0FJZi1AXSAckqY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <9e1cb4dc-921b-8a37-df1f-72b18dff5083@gmail.com>
Subject: Re: [PATCH 1/4] fts.3: note that lstat(2) may also provide fts_statp
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>

--------------1kwm1QSkHl0FJZi1AXSAckqY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxIQ0KDQpPbiA3LzQvMjIgMDA6MjMsINC90LDQsSB3cm90ZToNCj4gU2lnbmVk
LW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6
bGV3ZWxpLnh5ej4NCg0KSXQgc2VlbXMgeW91J3ZlIGJlZW4gaW52ZXN0aWdhdGluZyBhYm91
dCB0aGVzZSBzdHJ1Y3R1cmVzLiAgV291bGQgeW91IA0KbWluZCBhZGRpbmcgYSBuZXcgLjN0
eXBlIHBhZ2UgYWJvdXQgdGhlbSwgbWF5YmU/DQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0t
LQ0KPiAgIG1hbjMvZnRzLjMgfCAyNSArKysrKysrKysrKysrKysrKystLS0tLS0tDQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvbWFuMy9mdHMuMyBiL21hbjMvZnRzLjMNCj4gaW5kZXggNDk1YWUx
ZDhiLi5iZjNlMDc1ZjIgMTAwNjQ0DQo+IC0tLSBhL21hbjMvZnRzLjMNCj4gKysrIGIvbWFu
My9mdHMuMw0KPiBAQCAtMTA0LDcgKzEwNCw3IEBAIHR5cGVkZWYgc3RydWN0IF9mdHNlbnQg
ew0KPiAgICAgICBzdHJ1Y3QgX2Z0c2VudCAqZnRzX3BhcmVudDsgICAvKiBwYXJlbnQgZGly
ZWN0b3J5ICovDQo+ICAgICAgIHN0cnVjdCBfZnRzZW50ICpmdHNfbGluazsgICAgIC8qIG5l
eHQgZmlsZSBzdHJ1Y3R1cmUgKi8NCj4gICAgICAgc3RydWN0IF9mdHNlbnQgKmZ0c19jeWNs
ZTsgICAgLyogY3ljbGUgc3RydWN0dXJlICovDQo+IC0gICAgc3RydWN0IHN0YXQgICAgKmZ0
c19zdGF0cDsgICAgLyogc3RhdCgyKSBpbmZvcm1hdGlvbiAqLw0KPiArICAgIHN0cnVjdCBz
dGF0ICAgICpmdHNfc3RhdHA7ICAgIC8qIFtsXXN0YXQoMikgaW5mb3JtYXRpb24gKi8NCj4g
ICAuXCIgQWxzbzoNCj4gICAuXCIgICAgIGlub190IGZ0c19pbm87ICAgICAgICAgICAgICAg
ICAgLyogaW5vZGUgKG9ubHkgZm9yIGRpcmVjdG9yaWVzKSovDQo+ICAgLlwiICAgICBkZXZf
dCBmdHNfZGV2OyAgICAgICAgICAgICAgICAgIC8qIGRldmljZSAob25seSBmb3IgZGlyZWN0
b3JpZXMpKi8NCj4gQEAgLTE4Niw3ICsxODYsNyBAQCBBIHJlZ3VsYXIgZmlsZS4NCj4gICAu
VFANCj4gICAuQiBGVFNfTlMNCj4gICBBIGZpbGUgZm9yIHdoaWNoIG5vDQo+IC0uQlIgc3Rh
dCAoMikNCj4gKy5SQiBbIGwgXSBzdGF0ICgyKQ0KPiAgIGluZm9ybWF0aW9uIHdhcyBhdmFp
bGFibGUuDQo+ICAgVGhlIGNvbnRlbnRzIG9mIHRoZQ0KPiAgIC5JIGZ0c19zdGF0cA0KPiBA
QCAtMTk3LDcgKzE5Nyw3IEBAIGZpZWxkIHdpbGwgYmUgc2V0IHRvIGluZGljYXRlIHdoYXQg
Y2F1c2VkIHRoZSBlcnJvci4NCj4gICAuVFANCj4gICAuQiBGVFNfTlNPSw0KPiAgIEEgZmls
ZSBmb3Igd2hpY2ggbm8NCj4gLS5CUiBzdGF0ICgyKQ0KPiArLlJCIFsgbCBdIHN0YXQgKDIp
DQo+ICAgaW5mb3JtYXRpb24gd2FzIHJlcXVlc3RlZC4NCj4gICBUaGUgY29udGVudHMgb2Yg
dGhlDQo+ICAgLkkgZnRzX3N0YXRwDQo+IEBAIC0zMjgsNyArMzI4LDcgQEAgZmllbGQgYXJl
IHVuZGVmaW5lZC4NCj4gICAuVFANCj4gICAuSSBmdHNfc3RhdHANCj4gICBBIHBvaW50ZXIg
dG8NCj4gLS5CUiBzdGF0ICgyKQ0KPiArLlJCIFsgbCBdIHN0YXQgKDIpDQo+ICAgaW5mb3Jt
YXRpb24gZm9yIHRoZSBmaWxlLg0KPiAgIC5cIiAuRWwNCj4gICAuUFANCj4gQEAgLTM5MSw3
ICszOTEsMTMgQEAgaW5zdGVhZCBvZiB0aGUgc3ltYm9saWMgbGlua3MgdGhlbXNlbHZlcy4N
Cj4gICBJZiB0aGlzIG9wdGlvbiBpcyBzZXQsIHRoZSBvbmx5IHN5bWJvbGljIGxpbmtzIGZv
ciB3aGljaA0KPiAgIC5JIEZUU0VOVA0KPiAgIHN0cnVjdHVyZXMNCj4gLWFyZSByZXR1cm5l
ZCB0byB0aGUgYXBwbGljYXRpb24gYXJlIHRob3NlIHJlZmVyZW5jaW5nIG5vbmV4aXN0ZW50
IGZpbGVzLg0KPiArYXJlIHJldHVybmVkIHRvIHRoZSBhcHBsaWNhdGlvbiBhcmUgdGhvc2Ug
cmVmZXJlbmNpbmcgbm9uZXhpc3RlbnQgZmlsZXM6DQo+ICt0aGUNCj4gKy5JIGZ0c19zdGF0
cA0KPiArZmllbGQgaXMgb2J0YWluZWQgdmlhDQo+ICsuQlIgc3RhdCAoMikNCj4gK3dpdGgg
YSBmYWxsYmFjayB0bw0KPiArLkJSIGxzdGF0ICgyKS4NCj4gICBFaXRoZXINCj4gICAuQiBG
VFNfTE9HSUNBTA0KPiAgIG9yDQo+IEBAIC00NDIsNyArNDQ4LDExIEBAIG9mIHRoZSB0YXJn
ZXQgZmlsZXMgdGhleSBwb2ludCB0by4NCj4gICBJZiB0aGlzIG9wdGlvbiBpcyBzZXQsDQo+
ICAgLkkgRlRTRU5UDQo+ICAgc3RydWN0dXJlcyBmb3IgYWxsIHN5bWJvbGljIGxpbmtzIGlu
IHRoZQ0KPiAtaGllcmFyY2h5IGFyZSByZXR1cm5lZCB0byB0aGUgYXBwbGljYXRpb24uDQo+
ICtoaWVyYXJjaHkgYXJlIHJldHVybmVkIHRvIHRoZSBhcHBsaWNhdGlvbjoNCj4gK3RoZQ0K
PiArLkkgZnRzX3N0YXRwDQo+ICtpcyBvYnRhaW5lZCB2aWENCj4gKy5CUiBsc3RhdCAoMiku
DQo+ICAgRWl0aGVyDQo+ICAgLkIgRlRTX0xPR0lDQUwNCj4gICBvcg0KPiBAQCAtNzQ5LDcg
Kzc1OSw3IEBAIGZvciBhbnkgb2YgdGhlIGVycm9ycyBzcGVjaWZpZWQgZm9yDQo+ICAgLkJS
IG9wZW5kaXIgKDMpLA0KPiAgIC5CUiByZWFkZGlyICgzKSwNCj4gICBhbmQNCj4gLS5CUiBz
dGF0ICgyKS4NCj4gKy5SQiBbIGwgXSBzdGF0ICgyKS4NCj4gICAuUFANCj4gICBJbiBhZGRp
dGlvbiwNCj4gICAuQlIgZnRzX2NoaWxkcmVuICgpLA0KPiBAQCAtODExLDYgKzgyMSw3IEBA
IGEgcHJvZ3JhbSB1c2luZyB0aGUgTEZTIEFQSXMgKGUuZy4sIHdoZW4gY29tcGlsaW5nIHdp
dGgNCj4gICAuU0ggU0VFIEFMU08NCj4gICAuQlIgZmluZCAoMSksDQo+ICAgLkJSIGNoZGly
ICgyKSwNCj4gKy5CUiBsc3RhdCAoMiksDQo+ICAgLkJSIHN0YXQgKDIpLA0KPiAgIC5CUiBm
dHcgKDMpLA0KPiAgIC5CUiBxc29ydCAoMykNCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0K
PGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------1kwm1QSkHl0FJZi1AXSAckqY--

--------------Cd4Lc72E3ZpOrwugHm88aP3L
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLCIJUACgkQnowa+77/
2zJpjhAAgJ1VnxltH7FXCRDejOadklG5BoI2/FObE1wUTimvbym4qXeIsaosdWmP
J3kXC7PIvo5SdnK5EC5uaJrvzGJYI0+lx+aWr/5qnyKhmx7mlfcBfeW5pgEXFk20
NIYT4vRrVrk2bDoUmk5i+e8v6WmmNqvRx6YTc9/5icRxcCIE568vQczQEr0IK42b
2PXUmtQpU56ELQ5S5pjl/bJtBiGBUxZPdbDqHIugjJNHiCjBynF2lWNM6JUeb7mz
Zfimk7JadEJjjc15aRJ11byOV4yt47Cgd21V5DS73lPsWKsshr8NHuTENafQYduA
n9lMmb63sDda55aUjqzESwH2nmgoKkm0Cf0SWYKLM2hRJY9q36jeuxxEgFn+m8ze
G0gpvvpONKXDUAXgIQVeBVSV1ChP1bUero57QikhMOYdRfkX13G7+M5AqYuM6tdb
WTyrTTLIMNcM6kr9jCAUPfF3BvfqfAz4Hfoft6rr5Z1M3+alJ8WSjUuF+nHJSs1L
TZCRaw7jAXZ2bmzOdQVizy363PZyxq+baPOgzJ/ZR3ZyzFKR7eUaprJ+8bUapBfb
YGzTmh9Z/RNKmTaMQxRePLfMoxSDnbPakP00c8lpKvFV8d7YR53gbTAHnx5mdq7e
kiReZJuSxBYBJiJAD/XIP4lebTPS2dsB2Y1wF22iAhp8E0dSgQo=
=AcRe
-----END PGP SIGNATURE-----

--------------Cd4Lc72E3ZpOrwugHm88aP3L--
