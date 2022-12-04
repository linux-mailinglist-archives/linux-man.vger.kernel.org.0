Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A78D641FCD
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 22:22:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229960AbiLDVWQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 16:22:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiLDVWO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 16:22:14 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0608E12ADE
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 13:22:14 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h11so15915412wrw.13
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 13:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZPEp3uAwagrsPAnIRmOYCpawabGIGAjOlq/cI1TgIaQ=;
        b=RT74AzoQow/S+wgkv1L3m0P1hSj0g+nfm+tPUjFvOYtolmyxY/mxkGUevtbD6+pdUE
         v+kp0r4ixSsjHNZfIysx0iQ3aj3keGdSP0NZdwyLGlNmgwJIgFSFQ63OyFdf9WAYU9f7
         SKePRhV2UWGocBsWRL6LqhlOYHnZdizXLfGqkNfjz+VOg/fBMn/l9ZW96e/hXM/rr7ax
         AiMDciUrKQz8vgE+Lq1W98T827aW5RvY++JUON3ojqUEGvyP+gVTMk1QejQ4uLj0HHIa
         beFDym01/D8D+f8gvWSXAI4WzO6bdHG+nVcTtpOZ2vkPKWTGirSE0fEHPGxIDzkKTl3g
         8Gsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZPEp3uAwagrsPAnIRmOYCpawabGIGAjOlq/cI1TgIaQ=;
        b=ehrpj+fZljmUz9chNkLNjyjFEJpRPc07IBBkGFoBj7xWC4vh+JRQdKs+9dMfR6Pak1
         wjz6N5Z9fIpgtWZuURpUvxyFdB1WOzgnjMV7P33AT5qVUDdU/fNx7cMJMQi+H/w+1BzT
         toSQj142M5qndAW5QtQUFlZ6E+Tm2BFcKjggCBZbVVJxgyqbRlgqA3dm0ceUBYyqDOd7
         U4SD52j3ke0SmrLgmgz/apHa4DhhakyXnczPGbsdQbb+Rs/FmuAgRZC0NH0ectVtyui4
         4QXDE3Sk0U8fsFvi1F0xy5rpeNAn88yrcCQLQR7qp6Y0HweNpRFHtcW5FkPJlaHT6nKw
         89Tg==
X-Gm-Message-State: ANoB5plgxpQZEoXwz3jTwHp4qNXSn/9LoBtnTA/A0FZXlxCaF1BL7YIL
        fij5NKx4gVkkyT/ffkH984/YBGl0A98=
X-Google-Smtp-Source: AA0mqf7Ur++b1bjD/9wVdk8z/VBAY1yrbUKOdHcqyimavx37ftHqK8if234M4ZCpr/8snx6A7XQlXQ==
X-Received: by 2002:adf:e103:0:b0:241:e2d5:8ef2 with SMTP id t3-20020adfe103000000b00241e2d58ef2mr35058608wrz.630.1670188932536;
        Sun, 04 Dec 2022 13:22:12 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y5-20020a056000108500b00241d544c9b1sm14811436wrw.90.2022.12.04.13.22.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 13:22:12 -0800 (PST)
Message-ID: <9016dd33-687b-5461-0f2f-10318ca4ed81@gmail.com>
Date:   Sun, 4 Dec 2022 22:22:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page cgroup_namespaces.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221204090718.GA877@Debian-50-lenny-64-minimal>
 <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
 <20221204201107.GE15305@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204201107.GE15305@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cZjVyjM2jZFelyKcdwyxrDE0"
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
--------------cZjVyjM2jZFelyKcdwyxrDE0
Content-Type: multipart/mixed; boundary="------------N0XUh090Wnf8YinUAsowZjDG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <9016dd33-687b-5461-0f2f-10318ca4ed81@gmail.com>
Subject: Re: Issue in man page cgroup_namespaces.7
References: <20221204090718.GA877@Debian-50-lenny-64-minimal>
 <08577b8c-950d-d090-4efb-7ebbd4114f11@gmail.com>
 <20221204201107.GE15305@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204201107.GE15305@Debian-50-lenny-64-minimal>

--------------N0XUh090Wnf8YinUAsowZjDG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMjE6MTEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IEhlbGxvIEFsZWphbmRybywNCj4gT24gU3VuLCBEZWMgMDQsIDIwMjIgYXQgMDk6MDc6
NDVQTSArMDEwMCwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+PiBPbiAxMi80LzIyIDEw
OjA3LCBIZWxnZSBLcmV1dHptYW5uIHdyb3RlOg0KPj4+IFdpdGhvdXQgZnVydGhlciBhZG8s
IHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPj4+DQo+Pj4gSXNzdWU6ICAgIHVzZXIgSUQg
4oaSIFVJRA0KPj4NCj4+IElNTywgKGFuZCBJIGJlbGlldmUgQnJhbmRlbiB3aWxsIGFncmVl
KSwgdXNlciBJRCBpcyBtb3JlIGluZm9ybWF0aXZlIHRoYW4NCj4+IFVJRC4gSWYgYW55IGNo
YW5nZSwgSSdkIGFwcGx5IHNvbWUgY29uc2lzdGVuY3kgaW4gdGhlIG90aGVyIGRpcmVjdGlv
biAoZG9uJ3QNCj4+IGtub3cgaG93IG11Y2ggaW5jb25zaXN0ZW50IHRoZSBwYWdlcyBhcmUg
cmVnYXJkaW5nIHRoYXQpOiBVSUQgLT4gdXNlciBJRC4NCj4+DQo+PiBTbywgV09OVEZJWC4g
IFRoYW5rcyBmb3IgdGhlIHJlcG9ydHMhDQo+IA0KPiBOb3RlZC4NCj4gDQo+IEhvd2V2ZXIs
IHlvdSBtaWdodCBjb25zaWRlciBtYWtpbmcgdGhlIGxpbmsgb25jZSwgaS5lLiBvbiBmaXJz
dA0KPiBvY2N1cmVuY2UgZG8NCj4gdXNlciBJRCDihpIgdXNlciBJRCAoVUlEKQ0KPiANCg0K
WWVwLCBJJ2xsIGRvIHRoYXQuICBUaGFua3MhDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IEdy
ZWV0aW5ncw0KPiANCj4gICAgICAgICAgIEhlbGdlDQo+IA0KPiANCg0KLS0gDQo8aHR0cDov
L3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------N0XUh090Wnf8YinUAsowZjDG--

--------------cZjVyjM2jZFelyKcdwyxrDE0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOND4MACgkQnowa+77/
2zLQbQ//Q02q8SWilMo/5yVABKJz7P10k/xw1FlX8oRpt/xUsff7/cwkjHsiEGa7
rVJETxks3DWCA5d6mgyE0WTa7TRU4N6MR+3W2pcYaJMMet6rI4VU3JgwCjQvD1d+
QK8wNI8mO0PjMojVdh32kBHLJjGHkYX5awfkxf/CDoVIPierqUFI5C8/Afs1s95H
2nSVFxSjVccN5TNkpm4RueJOGyaHqXQmKt4hzeG+Mubna9iNNGj+8LHPk6xQm1rm
ra9AQTDuMv/4fORvlForKesb616Q0K3SnfXeQCgVKSWf4cGTiDmw5Em8KumFSBMC
+0U3Di/TFVg/not/OWaX/t05ZIqAydG6ij1UenwF5YE3mCDnOyIDOOfq4sm8wNdF
7PSNXDJTH/f8dmr9SeddF0u0RT2GKrDwQbw9DKc4HzKQG/YjjruvR+TwksKedr06
1qjSxC5aVFvCYYqIKrdFRoQ12UvA0toaVgal4ZCIEgH3kanne8/LrAh9Xaas2mme
Qdx3fFXPaWTqgCoMmqS7V+U3QjWWZHKzI0fi9VMtbu0E58uNj0H3M759ZjGrDf6d
r8sqk6Hrp+FCTkWSplrAHv5H6aYOc1V4gTAjYoSvMMIFkSBchN8/KGbCOqoYmBX1
Q8tQhM4caKq/nL4cnBUtwA8VJfZk1ttI6Lv7wMoL4gqh0+QmiWI=
=0lHJ
-----END PGP SIGNATURE-----

--------------cZjVyjM2jZFelyKcdwyxrDE0--
