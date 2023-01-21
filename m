Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01EB67631D
	for <lists+linux-man@lfdr.de>; Sat, 21 Jan 2023 03:38:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229518AbjAUCiY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 21:38:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbjAUCiX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 21:38:23 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8ED9E73EC8
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 18:38:21 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id q10-20020a1cf30a000000b003db0edfdb74so1712512wmq.1
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 18:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7w28UO5iHatOWzChp/XMA4QEP1u2ppxJPe6VuBBIMK0=;
        b=OcO5YOhFufwfRcuteHheUwZFu1iPN55q0Aibc+OilH398BY6Mv/miJh4zlbkVVza4N
         6y67+xa12SAuqzwK25NC072YT4AgWgB9jydUX1UUv3HHDKQ+tyNXyrUP3RzCJFiowSYs
         KJybsJg2KBoN0FPR4m0n8YwTopgKsxhO9pbZCKM5CtH27qGP7F1Nv+xq+Y/djWtMlvzW
         CWRVGgEbJaIen6EXTlPSSuKkLjL0cv3pGPJkh1jT4i3PF6uYwJ8C700UQv+qyGH7QsC4
         GyBnC774s4a+SJ/oqanW2BlNu2B+OjBxlxduCr11SJmUFKi9PKcwYkHjaPYlmKAlb+eI
         gfyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7w28UO5iHatOWzChp/XMA4QEP1u2ppxJPe6VuBBIMK0=;
        b=Pd0vEiu/SozjcunHO6lJvI6jws8IbsO5riQ6CiYF6S0V9kMKy4uMyJ8iQ3d+pW7tHX
         mQjQEJ4x1bSgK/8RW9S+xbPwcy0FsqBZ7nZnXS02KOrcI1XWPa0r+e5XBhbhv5pkvNC5
         bg1iB5tAdRgUCLcHibYOMvs6/K75wcYlIM2rQEaqi5jl6QGjdJKUxdthSBhXWa+DDMnl
         QK7fVUXzN91MQUYtKvAb5ggjFtCODqh91koP6Ov1sViQiFVws+CeXP/3svira0yxDCtu
         rU3HJcojm1yHh7RlIHQ8TQOv8xFRekkd43W3WcXCZ/O4licSAmZwXCKoiLBOKezS+c0t
         eqfg==
X-Gm-Message-State: AFqh2kr7RSa5Cya9BU6ztqTOD6qhIUEX8o4a0Dsl7gD1kGXJD1Wf0AFp
        toRumM+OuhSZqgSXXfA3d1w=
X-Google-Smtp-Source: AMrXdXtgqAR0oWQLuBmU/etN+OHTb1ltt8brNrSlmJVsGAaJQrVxGAFfh0RBHpLcNparTP8451/POQ==
X-Received: by 2002:a7b:ce15:0:b0:3da:2932:b61a with SMTP id m21-20020a7bce15000000b003da2932b61amr16111148wmc.18.1674268699971;
        Fri, 20 Jan 2023 18:38:19 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i22-20020a05600c355600b003a84375d0d1sm4256090wmq.44.2023.01.20.18.38.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 18:38:19 -0800 (PST)
Message-ID: <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
Date:   Sat, 21 Jan 2023 03:38:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        'linux-man' <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
References: <20230120134043.10247-1-alx@kernel.org>
 <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
 <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
In-Reply-To: <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XzNlPDYYeZq6lWDUbBfGTffp"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------XzNlPDYYeZq6lWDUbBfGTffp
Content-Type: multipart/mixed; boundary="------------uJfRBZQJ7OUq28J2X6DdeXgv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>,
 GNU libc development <libc-alpha@sourceware.org>, gcc@gcc.gnu.org
Cc: Alejandro Colomar <alx@kernel.org>,
 'linux-man' <linux-man@vger.kernel.org>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Eric Blake <eblake@redhat.com>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>
Message-ID: <4d3a8505-1ec1-0e4c-299a-1b56e3525410@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
 <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
In-Reply-To: <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>

--------------uJfRBZQJ7OUq28J2X6DdeXgv
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgWmFjaywNCg0KT24gMS8yMC8yMyAyMDoyNSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6
DQo+IFtDQyArPSBHQ0NdwqAgLy8gcHVuIG5vdCBpbnRlbmRlZCA6UA0KPiANCj4gSGkgWmFj
aywNCj4gDQo+IE9uIDEvMjAvMjMgMTk6MDQsIFphY2sgV2VpbmJlcmcgd3JvdGU6DQo+PiBP
biBGcmksIEphbiAyMCwgMjAyMywgYXQgODo0MCBBTSwgQWxlamFuZHJvIENvbG9tYXIgd3Jv
dGU6DQo+Pj4gVGhlIGhpc3RvcmljYWwgZGVzaWduIG9mIGBzb2NrYWRkcl9zdG9yYWdlYCBt
YWtlcyBpdCBpbXBvc3NpYmxlIHRvIHVzZQ0KPj4+IHdpdGhvdXQgYnJlYWtpbmcgc3RyaWN0
IGFsaWFzaW5nIHJ1bGVzLsKgIE5vdCBvbmx5IHRoaXMgdHlwZSBpcyB1bnVzYWJsZSwNCj4+
PiBidXQgZXZlbiB0aGUgdXNlIG9mIG90aGVyIGBzb2NrYWRkcl8qYCBzdHJ1Y3R1cmVzIGRp
cmVjdGx5ICh3aGVuIHRoZQ0KPj4+IHByb2dyYW1tZXIgb25seSBjYXJlcyBhYm91dCBhIHNp
bmdsZSBhZGRyZXNzIGZhbWlseSkgaXMgYWxzbyBpbmNvcnJlY3QsDQo+Pj4gc2luY2UgYXQg
c29tZSBwb2ludCB0aGUgc3RydWN0dXJlIHdpbGwgYmUgYWNjZXNzZWQgYXMgYSBgc29ja2Fk
ZHJgLCBhbmQNCj4+PiB0aGF0IGJyZWFrcyBzdHJpY3QgYWxpYXNpbmcgcnVsZXMgdG9vLg0K
Pj4+DQo+Pj4gU28sIHRoZSBvbmx5IHdheSBmb3IgYSBwcm9ncmFtbWVyIHRvIG5vdCBpbnZv
a2UgVW5kZWZpbmVkIEJlaGF2aW9yIGlzIHRvDQo+Pj4gZGVjbGFyZSBhIHVuaW9uIHRoYXQg
aW5jbHVkZXMgYHNvY2thZGRyYCBhbmQgYW55IGBzb2NrYWRkcl8qYCBzdHJ1Y3R1cmVzDQo+
Pj4gdGhhdCBhcmUgb2YgaW50ZXJlc3QsIHdoaWNoIGFsbG93cyBsYXRlciBhY2Nlc3Npbmcg
YXMgZWl0aGVyIHRoZSBjb3JyZWN0DQo+Pj4gc3RydWN0dXJlIG9yIHBsYWluIGBzb2NrYWRk
cmAgZm9yIHRoZSBzYV9mYW1pbHkuDQo+Pg0KPj4gLi4uDQo+Pg0KPj4+IMKgwqDCoMKgIHN0
cnVjdCBuZXdfc29ja2FkZHJfc3RvcmFnZcKgIG5zczsNCj4+Pg0KPj4+IMKgwqDCoMKgIC8v
IC4uLiAoaW5pdGlhbGl6ZSBvc3MgYW5kIG5zcykNCj4+Pg0KPj4+IMKgwqDCoMKgIGluZXRf
c29ja2FkZHIyc3RyKCZuc3Muc2EpO8KgIC8vIGNvcnJlY3QgKGFuZCBoYXMgbm8gY2FzdHMp
DQo+Pg0KPj4gSSB0aGluayB3ZSBuZWVkIHRvIG1vdmUgc2xvd2x5IGhlcmUgYW5kIGJlIF9z
dXJlXyB0aGF0IGFueSBwcm9wb3NlZCBjaGFuZ2UNCj4+IGRvZXMgaW4gZmFjdCByZWR1Y2Ug
dGhlIGFtb3VudCBvZiBVQi4NCj4gDQo+IFN1cmUsIEknbSBqdXN0IHNlbmRpbmcgdGhlIHBh
dGNoIHRvIHBvbGlzaCB0aGUgaWRlYSBhcm91bmQgc29tZSBjb25jcmV0ZSBjb2RlLiANCj4g
V2hpbGUgSSBjaGVja2VkIHRoYXQgaXQgY29tcGlsZXMsIEkgZGlkbid0IGFkZCBhbnkgdGVz
dHMgYWJvdXQgaXQgb3IgYW55dGhpbmcsIA0KPiB0byBzZWUgdGhhdCBpdCdzIHVzYWJsZSAo
YW5kIEpvc2VwaCdzIGVtYWlsIHNob3dlZCBtZSB0aGF0IGl0J3MgZmFyIGZyb20gYmVpbmcg
DQo+IGZpbmlzaGVkKS7CoCBJIGV4cGVjdCB0aGF0IHRoaXMnbGwgdGFrZSBzb21lIHRpbWUu
DQo+IA0KPiANCj4+IMKgVGhpcyBjb25zdHJ1Y3QsIGluIHBhcnRpY3VsYXIsIG1pZ2h0DQo+
PiBub3QgYWN0dWFsbHkgYmUgY29ycmVjdCBpbiBwcmFjdGljZTogc2VlIGh0dHBzOi8vZ29k
Ym9sdC5vcmcvei9ybjUxY3JhY24gZm9yDQo+PiBhIGNhc2Ugd2hlcmUsIGlmIEknbSByZWFk
aW5nIGl0IHJpZ2h0LCB0aGUgY29tcGlsZXIgYXNzdW1lcyB0aGF0IGEgd3JpdGUNCj4+IHRo
cm91Z2ggYSBgc3RydWN0IGZhbmN5ICpgIGNhbm5vdCBhbHRlciB0aGUgdmFsdWVzIGFjY2Vz
c2libGUgdGhyb3VnaCBhDQo+PiBgc3RydWN0IHNpbXBsZSAqYCBldmVuIHRob3VnaCBib3Ro
IHBvaW50ZXJzIHBvaW50IGludG8gdGhlIHNhbWUgdW5pb24uDQo+PiAoVGVzdCBjYXNlIHBy
b3ZpZGVkIGJ5IDxodHRwczovL3N0YWNrb3ZlcmZsb3cuY29tL3VzZXJzLzM2Mzc1MS9zdXBl
cmNhdD47DQo+IA0KDQpbLi4uXQ0KDQpJIHdhcyB3cm9uZyBpbiBteSBndWVzczsgdGhlIGNv
cnJlY3Qgb3V0cHV0IGlzIDMvMzsgSSB0aGluayBJIGhhZCByZWFkIGl0IHRoZSANCm90aGVy
IHdheSBhcm91bmQuICBTbyB5ZXMsIEkgYmVsaWV2ZSBpdCdzIGRvaW5nIHdoYXQgeW91IGp1
c3Qgd3JvdGUgdGhlcmUsIGJ1dCANCmNhbid0IHVuZGVyc3RhbmQgd2h5Lg0KDQpJIHJlZHVj
ZWQgQHN1cGVyY2F0J3MgZXhhbXBsZSB0byBhIHNtYWxsZXIgcmVwcm9kdWNlciBwcm9ncmFt
IChJIGNvdWxkbid0IA0KbWluaW1pemUgaXQgYW55IG1vcmUgdGhhbiB0aGlzOyBhbnkgZnVy
dGhlciBzaW1wbGlmaWNhdGlvbiByZW1vdmVzIHRoZSBpbmNvcnJlY3QgDQpiZWhhdmlvcik6
DQoNCiNpbmNsdWRlIDxzdGRpby5oPg0KDQpzdHJ1Y3QgYSB7IGludCB5WzFdO307DQpzdHJ1
Y3QgYiB7IGludCB5WzFdO307DQp1bmlvbiB1ICB7IHN0cnVjdCBhIGE7IHN0cnVjdCBiIGI7
IH07DQoNCg0KaW50IHJlYWRfYShzdHJ1Y3QgYSAqYSkNCnsNCiAgICAgcmV0dXJuIGEtPnlb
MF07DQp9DQoNCnZvaWQgd3JpdGVfYihzdHJ1Y3QgYiAqYiwgaW50IGopDQp7DQogICAgIGIt
Pnlbal0gPSAyOw0KfQ0KDQppbnQgdXNlX3VuaW9uKHVuaW9uIHUgKnUsIGludCBqKQ0Kew0K
ICAgICBpZiAodS0+YS55WzBdID09IDApDQogICAgICAgICB3cml0ZV9iKCZ1LT5iLCBqKTsN
CiAgICAgICAgIC8vd3JpdGVfYigoc3RydWN0IGIgKil1LCBqKTsgICAvLyB0aGlzIGhhcyB0
aGUgc2FtZSBpc3N1ZQ0KICAgICByZXR1cm4gcmVhZF9hKCZ1LT5hKTsNCiAgICAgcmV0dXJu
IHJlYWRfYSgoc3RydWN0IGEgKil1KTsgICAgICAvLyB0aGlzIGhhcyB0aGUgc2FtZSBpc3N1
ZQ0KfQ0KDQppbnQgKCp2b2xhdGlsZSB2dGVzdCkodW5pb24gdSAqdSwgaW50IGopID0gdXNl
X3VuaW9uOw0KDQppbnQgbWFpbih2b2lkKQ0Kew0KICAgICBpbnQgICAgICAgcjEsIHIyOw0K
ICAgICB1bmlvbiB1ICAgdTsNCiAgICAgc3RydWN0IGIgIGIgPSB7MH07DQoNCiAgICAgdS5i
ID0gYjsNCiAgICAgcjEgPSB2dGVzdCgmdSwgMCk7DQogICAgIHIyID0gdS5hLnlbMF07DQoN
CiAgICAgcHJpbnRmKCIlZC8lZFxuIiwgcjEsIHIyKTsNCn0NCg0KDQpDaGVlcnMsDQoNCkFs
ZXgNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------uJfRBZQJ7OUq28J2X6DdeXgv--

--------------XzNlPDYYeZq6lWDUbBfGTffp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPLUBAACgkQnowa+77/
2zL/Yg//X5D9v9lx+Pio1Lj7PYpuB4YjLK4kHIV75NzB1qlhhQr6pk/lfh+6RsO+
46cmItnqGThpgdD72K1rwS8K+7Yoo5wGR90nHDLCzZE6XP3IHPMGM/n4iMAU4W0i
b2YybMUcpf6YCjGlsqxRxr1Or8hDN4EvOBuT9904o9JqFmLR+59dsFV4OIX3NRI4
H4qmxHRaYkHLlxwXRzGCf5FeIlab3W4Wf4aUmnwA55s3k7dQNuHUyXCybEaCa1DX
jQwpaXIeAHtFZmurRjkG59+fe5LdYVrH+0jwH9pwpZZ6S8brfttXJxzIVJ3z3RF3
LwDmDzV7WCHWqKvedi3qRF/XdRo4I7q3OWeknXc7oC3OyzJQnwqq0cKAnTpoh1rJ
8m0fLGGo9nzyH4z+8c5OG5hS/+bHFKuRhPgQhbOWEKhbaUbaklKOs3wnECgUYctO
U1jPFEdJMQNL58QOVBief3Jb7MH8pqofznSxsu1ySN8n8mbVqgmO0pjcCkh0hCI+
nLF0qaQFhAcy3QoFfH/16aGCKxNy2Bvo/nsja1M0tcCOL9vDROgpTxf9+U2TN1Dn
WikKU39EKRmFrz4mPVpoqkgbDcD1Ooa6jReCe5fgB0cyR1jgwnC+TLcEpZtz49bV
S+xh0N4Ew4cwD3JaqKawcVHq8PvNuVrCSNAfCGx0MK9axhN/+Mc=
=/Oa+
-----END PGP SIGNATURE-----

--------------XzNlPDYYeZq6lWDUbBfGTffp--
