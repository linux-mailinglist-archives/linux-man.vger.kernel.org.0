Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C45F9599C2C
	for <lists+linux-man@lfdr.de>; Fri, 19 Aug 2022 14:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348791AbiHSMl7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 08:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348487AbiHSMl6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 08:41:58 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7D8101587
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 05:41:57 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so2420037wms.5
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 05:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc;
        bh=mNQ0E2DbYi4w9RQWSlKCoxbyPO1oXCfYee3ZYmK1rRI=;
        b=Diy+wFL99foejLpDuU4uwDpmrwFjYZ146w2OX4BuHgxcdO2w/SmfDKOlwNstgUxRqy
         HhYdcW6rJuzwQvpbtI35SFzHWBR359VJEsk+yl4UG1Ma18n1MUpLbQVzD8vEjKhkTvsJ
         +3quYXykN1E78pqGXFO25M07DOgmAcs7FH1jzupUHwbCxFXL22Km1Ffq1/ei+9223nVO
         DgUk/lkZhspQVkzksRrsaBswvLlHccXe4kjfEP3vx2aYcudegG7hvecd2ZHqWdZyeIG8
         fglIt+cVd/+A1ndrP/ZRAYD8F95nNC2vvLBWUP/Lf7zs20lR19tisOVaHO02iD8FWirC
         iG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc;
        bh=mNQ0E2DbYi4w9RQWSlKCoxbyPO1oXCfYee3ZYmK1rRI=;
        b=Qo7/f2znTfyLEZjpY5S+NvGdqTIlBw2Vu2joZi3NPMJYDHadlwhchQnF/lsCw9FsXO
         f66D1T/N4chmhZULoqOQg0D9wVGOJK3yD9wtGHN3sCArkAHhYQOpSGAcjJpe9bIdXIIl
         JoQU2J+BCvN7Mr6BGWBNeIB39otxhIrjan1HgmT14KBX8gYJIxu5T+c74c0cubZliZ9L
         wZa7zZ9o7YYyi8kYN34C8IQJKa7WSVI803pIsqxnJlU7k2tGdu8a+shIGRmZuJ6grEML
         3DnGWNhOaoSgl6KbRg6PrkhorYABg8nUpCopbAeUcWYR2gzAWZG4j+D+0oug1Zw8Okj6
         aohg==
X-Gm-Message-State: ACgBeo0l5dXdsJfTYM0PHMDnf1Qg7kXsy5ONF+DaLEJYFTybtz4tR1Kx
        /2uRDqZ1vsMFMdjWC79H1BE=
X-Google-Smtp-Source: AA6agR46QrKgxU30nTIhF7BQFLSVixzFLFwNcg0QcFQpiL5PVApKcXVxL+nODcX8JZuRk9E+v7L0Eg==
X-Received: by 2002:a05:600c:4f85:b0:3a6:243d:3b7d with SMTP id n5-20020a05600c4f8500b003a6243d3b7dmr4734707wmq.84.1660912915947;
        Fri, 19 Aug 2022 05:41:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q11-20020a5d61cb000000b00223b8168b15sm3942895wrv.66.2022.08.19.05.41.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 05:41:55 -0700 (PDT)
Message-ID: <86a5869a-63d8-1852-048e-8d95d4c820f0@gmail.com>
Date:   Fri, 19 Aug 2022 14:41:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, misc@openbsd.org
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: bind(2) documentation about the socklen_t parameter
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gcb5JYX8AbBZ6KkXW2eDNnJf"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------gcb5JYX8AbBZ6KkXW2eDNnJf
Content-Type: multipart/mixed; boundary="------------eG0ZMJdP24GWbJsVsmbWZaxj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Ingo Schwarze <schwarze@usta.de>, linux-man <linux-man@vger.kernel.org>,
 misc@openbsd.org
Message-ID: <86a5869a-63d8-1852-048e-8d95d4c820f0@gmail.com>
Subject: bind(2) documentation about the socklen_t parameter

--------------eG0ZMJdP24GWbJsVsmbWZaxj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSW5nbywNCg0KSSdtIG1vZGlmeWluZyBzb21lIFVuaXggc29ja2V0cyBjb2RlIHRvIGFk
ZCBzdXBwb3J0IGZvciBhYnN0cmFjdCBzb2NrZXRzIA0KKGluIExpbnV4IG9ubHksIG9mIGNv
dXJzZSksIGFuZCB3aGlsZSBJIChtb3N0bHkpIGtub3cgaG93IGJpbmQoMikgd29ya3MsIA0K
SSd2ZSBmb3VuZCBzdXJwcmlzaW5nIHRoYXQgbm9uZSBvZiB0aGUgYmluZCgyKSBwYWdlcyBJ
J3ZlIHJlYWQgDQpkb2N1bWVudGVkIGF0IGFsbCBob3cgdGhlIHNvY2tsZW5fdCBwYXJhbWV0
ZXIgd29ya3MuICBJIGNoZWNrZWQgdGhlIA0KTGludXgsIE9wZW5CU0QsIGFuZCBQT1NJWCBt
YW51YWwgcGFnZXMuDQoNCkFsbCBvZiB0aGUgcGFnZXMganVzdCBzYXkgdGhhdCB0aGUgcGFy
YW1ldGVyIHRlbGxzIHRoZSBrZXJuZWwgdGhlIHNpemUgDQpvZiB0aGUgc3RydWN0dXJlLCBh
cyBpZiBvbmUgd2FzIG9ibGlnYXRlZCB0byBwYXNzIGl0IGFzICdzaXplb2Yoc3RydWN0IA0K
c29ja2FkZHJfdW4pJy4gIEFuZCB3aGlsZSB0aGF0J3MgcGFydGx5IGNvcnJlY3QsIGluIHRo
YXQgdGhlIGtlcm5lbCB3aWxsIA0Kbm90IHJlYWQgcGFzdCB0aGF0LCBpdCdzIG5vdCBhIGdy
ZWF0IHRoaW5nIHRvIHdvcmQgaXQsIG9yIGF0IGxlYXN0IHNvbWUgDQptb3JlIGluZm8gY291
bGQgYmUgYWRkZWQ6DQoNCkEgdXNlciBjYW4gdXNlIHRoYXQgZmllbGQgdG8gbWFrZSB0aGUg
a2VybmVsIHJlYWQgbGVzcyBieXRlcyB0aGFuIHdoYXQgDQp0aGUgc3RydWN0dXJlIGNhbiBo
b2xkLiAgWW91IGNhbiBmb3IgZXhhbXBsZSBwYXNzIDQgYXMgdGhlIGFyZ3VtZW50LCBhbmQg
DQp0aGVuIHN1bl9wYXRoIHdpbGwgZWZmZWN0aXZlbHkgYmUgMiBieXRlcy4gIE5vIG1hdHRl
ciB3aGF0IHRoZSByZWFsIHNpemUgDQpvZiB0aGUgc3RydWN0dXJlIHdhcy4NCg0KVGhpcyBp
cyBvbmx5IGxpZ2h0bHkgbWVudGlvbmVkIGluIGEgcGFyYWdyYXBoIG9mIExpbnV4J3MgdW5p
eCg3KSwgQUZBSUNTOg0KDQogICAgICAgICogIGFic3RyYWN0OiBhbiBhYnN0cmFjdCBzb2Nr
ZXQgYWRkcmVzcyBpcyAgZGlzdGluZ3Vpc2hlZA0KICAgICAgICAgICAoZnJvbSAgYSBwYXRo
bmFtZSBzb2NrZXQpIGJ5IHRoZSBmYWN0IHRoYXQgc3VuX3BhdGhbMF0NCiAgICAgICAgICAg
aXMgYSBudWxsIGJ5dGUgKCdcMCcpLiAgVGhlIHNvY2tldOKAmXMgYWRkcmVzcyAgaW4gIHRo
aXMNCiAgICAgICAgICAgbmFtZXNwYWNlIGlzIGdpdmVuIGJ5IHRoZSBhZGRpdGlvbmFsIGJ5
dGVzIGluIHN1bl9wYXRoDQogICAgICAgICAgIHRoYXQgIGFyZSAgY292ZXJlZCAgYnkgdGhl
IHNwZWNpZmllZCBsZW5ndGggb2YgdGhlIGFk4oCQDQogICAgICAgICAgIGRyZXNzIHN0cnVj
dHVyZS4gIChOdWxsIGJ5dGVzIGluIHRoZSBuYW1lIGhhdmUgbm8gc3Bl4oCQDQogICAgICAg
ICAgIGNpYWwgc2lnbmlmaWNhbmNlLikgIFRoZSBuYW1lIGhhcyBubyAgY29ubmVjdGlvbiAg
d2l0aA0KICAgICAgICAgICBmaWxlc3lzdGVtIHBhdGhuYW1lcy4gIFdoZW4gdGhlIGFkZHJl
c3Mgb2YgYW4gYWJzdHJhY3QNCiAgICAgICAgICAgc29ja2V0ICBpcyAgcmV0dXJuZWQsICB0
aGUgcmV0dXJuZWQgYWRkcmxlbiBpcyBncmVhdGVyDQogICAgICAgICAgIHRoYW4gc2l6ZW9m
KHNhX2ZhbWlseV90KSAoaS5lLiwgZ3JlYXRlciB0aGFuICAyKSwgIGFuZA0KICAgICAgICAg
ICB0aGUgIG5hbWUgb2YgdGhlIHNvY2tldCBpcyBjb250YWluZWQgaW4gdGhlIGZpcnN0IChh
ZOKAkA0KICAgICAgICAgICBkcmxlbiAtIHNpemVvZihzYV9mYW1pbHlfdCkpIGJ5dGVzIG9m
IHN1bl9wYXRoLg0KDQoNClRoaXMgaXMgZXNwZWNpYWxseSBpbXBvcnRhbnQsIGJlY2F1c2Ug
c3VuX3BhdGggaXMgb25lIG9mIHRoZSBmZXcgcGxhY2VzIA0KaW4gQyB3aGVyZSB3ZSBkZWFs
IHdpdGggZml4ZWQtd2lkdGggY2hhciBhcnJheXMsIGluc3RlYWQgb2YgDQpOVUwtdGVybWlu
YXRlZCBzdHJpbmdzLCBzbyBwcm9ncmFtbWVycyBzaG91bGQga25vdyBpbiBkZXRhaWwgaG93
IHRoZSANCmtlcm5lbCB3aWxsIGhhbmRsZSBjb3JuZXIgY2FzZXMsIGFuZCBBRkFJSyBkaWZm
ZXJlbnQga2VybmVscyBiZWhhdmUgDQpkaWZmZXJlbnRseSB3aXRoIHN1bl9wYXRoLCBzbyBp
dCBpcyBldmVuIG1vcmUgaW1wb3J0YW50IHRvIGRvY3VtZW50IGl0IA0KaW4gZGV0YWlsLg0K
DQpJIG1vcmUgb3IgbGVzcyBrbm93IGhvdyBiaW5kKDIpIHdvcmtzIHJlZ2FyZGluZyBzb2Nr
bGVuX3QsIGJ1dCBhbSBub3QgDQpjb21mb3J0YWJsZSBlbm91Z2ggdG8gd3JpdGUgZG9jdW1l
bnRhdGlvbiBhYm91dCBpdC4gIFdvdWxkIHlvdSBtaW5kIA0KZG9jdW1lbnRpbmcgaXQgaW4g
T3BlbkJTRCwgc28gdGhhdCBpdCBtYXkgaGVscCBtZSBkb2N1bWVudCBpdCBpbiBMaW51eD8N
Cg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8v
d3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------eG0ZMJdP24GWbJsVsmbWZaxj--

--------------gcb5JYX8AbBZ6KkXW2eDNnJf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL/hQoACgkQnowa+77/
2zIE0A/+MpdPoYg3zz4gaMay51aSGf/zBbSMmfzp6Q+vM7Yho+QfEhjMxtoflr13
OV92nd3vLGgC1XFDftZTTif/UMpqORJ3yr9oWZGnbgMdhWi1JjGNuPcT7GTWRU8f
90Q0RPIxgOQb6CV8VJYWJ57bMqZ+fLHw4czak/ro/P4Ox4F5rJyzv+OIUtKttESJ
HNc7t+AE4ZMcGMNNqC4mw4daZBbSSJt3fcTmS5x2GXABch4zi1ExN+yPlvLy4y84
m3TrFgryjQ8qpowdboCN0Q0tum2216GBzfTb6pramF/CVZv3gNGqTOVWSCl2x89u
WvdcT2Sy5qvz3MNPIsmLqU3fvCk2kghvN5bXPq4PPmQLyVEz4E+7Nzny/RQ6YdWo
xSXCJrNOloZ9dibsavt8R0w3ZE+EF8hzNwlUAcWU7ZESdWowIJ0ex0HetUBIGQNY
Ne0sfYtQUgHfzjIGYf80T60KK5wpQHZO2KzxsB/WbL0PdhhXBQkgLlck1St49H1J
tbKrWoM3OqdKlkvmglTg5i+gsv3he31SjNIsre8n7M/dYoZrbm6bpe2fNhEbQJUs
jj96oRe4QxMRoxZkcOujmHmWKKbnAIPYtRobAF1is8BvDOxK3FvEEVf3oxow/aHw
0EJd9qODGo2aS8z+nTsRp8M23sJ6bdmSZJdYD4CMoCO+W4v03u4=
=My+v
-----END PGP SIGNATURE-----

--------------gcb5JYX8AbBZ6KkXW2eDNnJf--
