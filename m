Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA08665F5F8
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 22:42:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235888AbjAEVmm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 16:42:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235895AbjAEVmm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 16:42:42 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE60B671BA
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 13:42:40 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id d4so29441535wrw.6
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 13:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etIRjEt0dR8ecoqqMGqOXCs7QofRg6NsMKHy4dvnCv8=;
        b=UUOCV9tBOGqYqrgmA8A0/JIE9GHy3ORbLtn+qlihmn4gb5v8lpBuyKY1Ysd81vIQde
         +5nF36kLDvqeczJ/w3Ju0UUaEexjZVB7xbVTPSr887YZ+QdBY7aZqJ9qdgdBFzOki+ud
         1VpkJjeFLAosJTTeJVJm4wpBRfoZyt6GGs/OkdFvB8hbG5Auk8CMYiLrHujT9LqOU5BF
         Uu+psZRU1fkCOBX5+wgmnM6YWXcVweqVBlQRFbswszA9k+ENfCowZFNK3iTw2qb8luBk
         UwKjqQbb0utag1DHyxh9Q0MCcBNuEWekAqebose8zUjcQLiI8x7a3JIKPmeryKt3rBSw
         pzJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=etIRjEt0dR8ecoqqMGqOXCs7QofRg6NsMKHy4dvnCv8=;
        b=mW27112DXPmLNpQ0b9KSKB4XWVW7bOK05mRJ254dSqQv/hixo77LJBMs/LtLBFIa5l
         z1mHIEtui7aAbeAyngkZqCijVcVSkNHf3h9wrUQokWm601J96aHAmwAlUbwRZ8M5zvll
         sBXqnZnXSc+FVwToTflzuwr2RhjJhGj65rsZyzt0XtlV+GkhU2tceKPFjNTAIrgEakQk
         qgsUoB3jPMIO/2LvXpn+jMCgH0Q1zH/WSbuBgMtIh4n4yd2GmaRGfyDPAdiLdo2q26T8
         wOvFNVT4IHtYNwke21WMImZh+3rXjOEf2jIwQsUDDBRWvDIzohV5noNXM9gGYgGmx3vV
         nzyg==
X-Gm-Message-State: AFqh2koNpqLeGsKmd3FDJEmO3NJPNHxoHyBmzuQ+sZDKUq3CLcVPiVVZ
        anlCmdwOrPfb0Fz0KjhDN54=
X-Google-Smtp-Source: AMrXdXv+amdT4VFMCSCYR4y5aSzX2yKBeewu8c2WDJs1RZMJK2Oa9AUOZmBboMM2WMY8rQJ/J1uSew==
X-Received: by 2002:a5d:6545:0:b0:27f:4a7e:fc47 with SMTP id z5-20020a5d6545000000b0027f4a7efc47mr22640884wrv.67.1672954959270;
        Thu, 05 Jan 2023 13:42:39 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o15-20020adfe80f000000b0028965dc7c6bsm23495137wrm.73.2023.01.05.13.42.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jan 2023 13:42:38 -0800 (PST)
Message-ID: <31543cd0-dc11-9980-167c-a78eb3275c6a@gmail.com>
Date:   Thu, 5 Jan 2023 22:42:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rtime.3, rtnetlink.3, strptime.3,
 NULL.3const, size_t.3type, void.3type, aio.7, netlink.7, unix.7: Prefer
 bzero(3) over memset(3)
Content-Language: en-US
To:     Paul Eggert <eggert@cs.ucla.edu>,
        Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
        linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
        Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
 <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------zmzsch61oqJQrS4dn0z4J0vE"
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------zmzsch61oqJQrS4dn0z4J0vE
Content-Type: multipart/mixed; boundary="------------ghl0l5ZzrQArkYQGmw9O0Wvz";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Paul Eggert <eggert@cs.ucla.edu>,
 Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>,
 linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
 Wilco Dijkstra <Wilco.Dijkstra@arm.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <31543cd0-dc11-9980-167c-a78eb3275c6a@gmail.com>
Subject: Re: [PATCH] bind.2, mount_setattr.2, openat2.2, perf_event_open.2,
 pidfd_send_signal.2, recvmmsg.2, seccomp_unotify.2, select_tut.2, sendmmsg.2,
 set_thread_area.2, sysctl.2, bzero.3, getaddrinfo.3, getaddrinfo_a.3,
 getutent.3, mbrtowc.3, mbsinit.3, rtime.3, rtnetlink.3, strptime.3,
 NULL.3const, size_t.3type, void.3type, aio.7, netlink.7, unix.7: Prefer
 bzero(3) over memset(3)
References: <20230105193751.18846-1-alx@kernel.org>
 <2e3e0b30-0fdd-cf17-fa84-a241d2169745@linaro.org>
 <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>
In-Reply-To: <18377873-00df-84fa-a9e9-5d1207e4ea52@cs.ucla.edu>

--------------ghl0l5ZzrQArkYQGmw9O0Wvz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGF1bCwNCg0KT24gMS81LzIzIDIxOjU1LCBQYXVsIEVnZ2VydCB3cm90ZToNCj4gT24g
MjAyMy0wMS0wNSAxMjo0OCwgQWRoZW1lcnZhbCBaYW5lbGxhIE5ldHRvIHZpYSBMaWJjLWFs
cGhhIHdyb3RlOg0KPj4NCj4+DQo+PiBPbiAwNS8wMS8yMyAxNjozNywgQWxlamFuZHJvIENv
bG9tYXIgdmlhIExpYmMtYWxwaGEgd3JvdGU6DQo+Pj4gYnplcm8oMykgaXMgc2ltcGxlciB0
byB1c2UsIGFuZCBjYW4gYXZvaWQgc2lsbHkgbWlzdGFrZXMgdGhhdCBhcmUgaGFyZA0KPj4+
IHRvIHNwb3QuwqAgbWVtc2V0KDMpLCB3aGlsZSBpdCBpcyBuZWNlc3NhcnkgaW4gYSBmZXcg
dmVyeS1zcGVjaWZpYyBjYXNlcywNCj4+PiBzaG91bGQgYmUgYXZvaWRlZCB3aGVuIHRoZSBt
ZW1vcnkgaXMgdG8gYmUgemVyb2VkLg0KPj4+DQo+Pj4gUE9TSVggYW5kIElTTyBjYW4gc2F5
IG90aGVyd2lzZSwgYnV0IGl0IGRvZXNuJ3QgbWFrZSBhbnkgc2Vuc2UgdG8NCj4+PiByZWNv
bW1lbmQgdXNpbmcgbWVtc2V0KDMpIG92ZXIgYnplcm8oMykuDQo+Pg0KPj4gYnplcm8gaXMg
ZGVwcmVjYXRlZCBieSBQT1NJWC4xLTIwMDEsIHJlbW92ZWQgYnkgUE9TSVguMS0yMDA4LCBh
bmQgb24gZ2xpYmMNCj4+IGltcGxlbWVudGF0aW9uIG5vdyBjYWxscyBtZW1zZXQgKHByZXZp
b3VzbHkgc29tZSBhcmNoaXRlY3R1cmUgYWRkZWQgaWZ1bmMNCj4+IHJlZGlyZWN0aW9uIHRv
IG9wdGltaXplZCBiemVybyB0byBhdm9pZCB0aGUgZXh0cmEgZnVuY3Rpb24gY2FsbCwgaXQg
d2FzDQo+PiByZW1vdmVkIGZyb20gYWxsIGFyY2hpdGVjdHVyZXMpLg0KPj4NCj4+IEFsc28s
IEdDQyBmb3Igc29tZSB0aW1lIGFsc28gcmVwbGFjZXMgYnplcm8gd2l0aCBtZW1zZXQgc28g
dGhlcmUgaXMgbm8gZ2Fpbg0KPj4gaW4gYWN0dWFsbHkgY2FsbCBiemVybyAoY2hlY2sgZ2xp
YmMgY29tbWl0IA0KPj4gOTQwM2I3MWFlOTdlM2YxYTkxYzc5NmRkY2JiNGU2ZjA0NDQzNDcz
NCkuDQo+IA0KPiBJbiBhZGRpdGlvbiwgZ2NjIC1XYWxsIHdhcm5zIGlmIHlvdSBtaXN0YWtl
bmx5IHBhc3MgMCBhcyBtZW1zZXQncyAzcmQgYXJnLCB3aGljaCANCj4gdW5kZXJjdXRzIHRo
ZSBhcmd1bWVudCB0aGF0IGJ6ZXJvIGF2b2lkcyBzaWxseSBtaXN0YWtlcy4NCg0KVGhhdCdz
IGEgZ29vZCBjb3VudGVyYXJndW1lbnQgZm9yIHRoZSBzaWxseSBtaXN0YWtlcyBwb2ludC4g
IEJ1dCB0aGUgY29nbml0aXZlIA0KbG9hZCB0aGF0IHByb2dyYW1tZXJzIG5lZWQgdG8gY2Fy
ZSBhYm91dCB0aGUgZXh0cmEgdXNlbGVzcyBhcmd1bWVudCBmb3Igbm8gZ29vZCANCnJlYXNv
biBpcyBzdGlsbCBhIHByb2JsZW0gb2YgdGhlIG1lbXNldCgzKSBBUEkgdGhhdCBic3plcm8o
Mykgc2ltcGx5IGhhc24ndC4NCg0KSWYgaXQncyBhYm91dCBkZWZlbmRpbmcgYSBtaW5pbWFs
IHNldCBvZiBmdW5jdGlvbnMgdGhhdCBzZXJ2ZSB0aGUgYmFzaWMgcHVycG9zZXMgDQp0aGF0
IHByb2dyYW1tZXIgbWF5IG5lZWQsIEknbGwgcHJlcGFyZSBhIGNvdW50ZXJhcmd1bWVudDoN
Cg0KV2h5IGRvZXMgUE9TSVggaGF2ZSBzdHJubGVuKDMpPyAgc3RybmxlbihzLCBuKSBpcyBq
dXN0IGEgc2hvcnRoYW5kIGZvciBtZW1jaHIocywgDQonXDAnLCBuKTsNCg0KSWYgdGhlIHNp
bWlsYXJpdHkgd2Fzbid0IG9idmlvdXMgZW5vdWdoLCBJJ2xsIHB1dCB0aGVtIHRvZ2V0aGVy
Og0KDQpzdHJubGVuKHAsIG4pICAtLS0tICBtZW1jaHIocCwgMCwgbikNCmJ6ZXJvKHAsIG4p
ICAgIC0tLS0gIG1lbXNldChwLCAwLCBuKQ0KDQpJJ2QgbGlrZSB0byBnZXQgYSByYXRpb25h
bGUgZm9yIHdoeSB3ZSBzaG91bGQgcHJvbW90ZSBzdHJubGVuKDMpIGJ1dCBub3QgDQpiemVy
bygzKSB0aGF0IGRvZXNuJ3QgcmVkdWNlIHRvICJpdCBpcyBzdGFuZGFyZCIuICBXaHkgd291
bGQgdGhlIHN0YW5kYXJkIGNvdmVyIA0Kb24gYW5kIG5vdCB0aGUgb3RoZXI/DQoNCkNoZWVy
cywNCg0KQWxleA0KDQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------ghl0l5ZzrQArkYQGmw9O0Wvz--

--------------zmzsch61oqJQrS4dn0z4J0vE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmO3RE0ACgkQnowa+77/
2zLgGhAAivO+BuHHTzOc0NnqzLOndbZRe0JKo3SYKgM0E1t15WoYnrItVn/Pa3qj
DSAy11IMtN5aLl7nf6TPejHTvxhjbPY0BERXJjH3e4z/D4txk9TypwShJf5GZhac
liqDon5aIZ9HRLIoJs2xjqsizWJ1yJNSg6G9VQX0H6bFmeZpQYjPkEs6oQs2XrRf
2rBk7uEx4d+C9Wn5e15jShpALiw9ugBJjEL9QrFajDRi2V28vEM8jMukwLVP3nXM
xF7x/Xo50wlQr3VBJGQl8m2uxvM3YSdQjDEZnBFjvJL2zSj1cb5vgNj+YYLct226
iitENDK/OA+ImWNFgawQpufptvyAtPkFEQaRt3Be8dGEqgcoaMv7Kfmbili4K/Ym
+HaOI2UXmSZIhbWtZjlFim06V1iu9m1rDN57Xh/HDRPftNC6FsIpylN8ZqoCpuw1
sh/ou8l9gijkqcj28VHqNgAEsT5pn1+2XlW2tZHnEp+iYjVfeaUi0xzBJE646oqs
K0lLxfqvR8K72AnJ+fAIsaxefCyODhA6ma7SLA3dm5of2ORdHNE+s3yDXFaYACn+
+74P+OC4EVDK8hhwI8qD4vcE4i/NP1ES/wiQewP03peWzMvf5S7wGkpUi3F1n4Gf
cwmMxVhWniKo631RYXQ4ttixZFlfbWFUwXZ43hsrI75DL/qeDyk=
=425f
-----END PGP SIGNATURE-----

--------------zmzsch61oqJQrS4dn0z4J0vE--
