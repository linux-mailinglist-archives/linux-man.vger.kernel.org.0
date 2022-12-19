Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71F78651268
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 20:11:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232183AbiLSTKl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 14:10:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232012AbiLSTKh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 14:10:37 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 006B265EE
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 11:10:35 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id ja17so7135956wmb.3
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 11:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3JA/pgjJ2W9Fen4iyfCnRKr8TDUUz04i6BbsAeeXsug=;
        b=DX3YxST2W9Yc3k7+UwlPxSsULEtpeVDliGj4mpve1lxgK3RLP5AV3sFMyZjN3aAAEW
         cP6IyxnQ2J12LDs+2VkelrUhANlaCvykkZTFJbMUDTvFATPwpz4O7ljjKNrwxQGP/VRA
         BWAJ6KW1JaJ/vZ2atscdAa4VUVZp8Z7Ql130ZAroybf/i5hr1hhu/xdelOAFz/abnZ8s
         UbtdFVivq2dmHogPo3foGAa3mkRGDTe+CO8JTwzK616hfEHcizN/6ZL7AJwWOv1w04m8
         8nHo+9hgvZ9cKq5nROmIv6xx0sB5vYbPyNYm7IPLoghDO0mDFMKj9o1XQuLleW4wGiHK
         KElg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3JA/pgjJ2W9Fen4iyfCnRKr8TDUUz04i6BbsAeeXsug=;
        b=JnsR/I82ZPMJdKaUHnN0V4kJ/CB6O9cn87sjZLHkHoThEq29tl3+lETer/QRK2I7ag
         rFmgOD0KgmYtfN8XFDjXxefwCeboahxuL0hKgIdYzG8sxgqWmGhGPGnjsxl3KPeBDOMK
         jbWwO72A0/qQFGox6PQph+H/kT9KtiFNQNK610gATWiD0j3m1j5qqgHj18pYHBjokYmu
         XijVU4550NBKiZx/FeVxo4dRpRRLU/w4ZqpN3zqiWwBcNozQsYiBXksfA6+02NtK6HmH
         FZbaaKcOAFDb7HZTy7HHdyxgQkwkSwdWQImrUqY/580x+IOW03rNsb+HQBKvEwCXSy4z
         ka8Q==
X-Gm-Message-State: ANoB5pk5pH+5gbqPl64X/O42WKPJuWhKnnOjQ+4LasHRe0ODb88RdDhD
        bgfxZs+EUbmyw96k8JESdzegJL7xdQI=
X-Google-Smtp-Source: AA0mqf7x2XmMKwudUAFsoDoKVw8VAxAY0gIMIkA5Kp3sQDZPnslGYlfHsOWC98cp/lAP/OgsFX1oag==
X-Received: by 2002:a05:600c:3799:b0:3d1:f74d:4f60 with SMTP id o25-20020a05600c379900b003d1f74d4f60mr32507814wmr.22.1671477034464;
        Mon, 19 Dec 2022 11:10:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 189-20020a1c02c6000000b003cfd58409desm20506195wmc.13.2022.12.19.11.10.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 11:10:34 -0800 (PST)
Message-ID: <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
Date:   Mon, 19 Dec 2022 20:10:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: patching suffixes(7) (was: groff 1.23.0.rc2 status report)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221219165900.dfgjj5spciy4cqlt@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tgB7f0rFKZVMQNN0MuugVEQj"
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
--------------tgB7f0rFKZVMQNN0MuugVEQj
Content-Type: multipart/mixed; boundary="------------vxfOA5MS0kW7FLRMrNiI8obF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <acebbd20-d235-7668-5481-2f043cb2c9cb@gmail.com>
Subject: Re: patching suffixes(7) (was: groff 1.23.0.rc2 status report)
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
 <20221217160830.rcvgr65axz4hpcge@illithid>
 <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com>
 <20221219053245.j5omcuyxd7rnj4qt@illithid>
 <839023e9-cbe4-8039-d51e-e2df581644e2@gmail.com>
 <20221219165900.dfgjj5spciy4cqlt@illithid>
In-Reply-To: <20221219165900.dfgjj5spciy4cqlt@illithid>

--------------vxfOA5MS0kW7FLRMrNiI8obF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMTkvMjIgMTc6NTksIEcuIEJyYW5kZW4gUm9iaW5zb24g
d3JvdGU6DQo+IFtkcm9wcGluZyBEZXJpIGFuZCBncm9mZkBdDQo+IA0KPiBBdCAyMDIyLTEy
LTE5VDE3OjM5OjM3KzAxMDAsIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gV291bGQg
eW91IG1pbmQgc2VuZGluZyBhIHBhdGNoIHRoYXQgSSBjYW4gYXBwbHkgd2l0aCBnaXQ/ICBJ
IGNvdWxkDQo+PiBtYW51YWxseSBlZGl0IHRoZSBmaWxlIHlvdSBhdHRhY2hlZCwgYnV0IEkn
bSBmZWVsaW5nIGxhenkgZm9yIHRoYXQgOlwNCj4gDQo+IERhbW4uICBPdXIgbGF6aW5lc3Nl
cyBhcmUgZHVlbGxpbmcuICA6UA0KDQo6UA0KDQpJIGFjdHVhbGx5IHdvbmRlciBob3cgcHJv
ZHVjaW5nIHN1Y2ggYSBkaWZmIHdhcyBzaW1wbGVyIHRoYW4ganVzdCBjb3B5aW5nIHRoZSAN
Cm91dHB1dCBvZiBnaXQgZGlmZi4uLg0KDQpCVFcsIEkgc3RpbGwgcGxhbiByZWxlYXNpbmcg
bWFuLXBhZ2VzLTYuMDIgaW4gYSB0d28gZGF5cywgYW5kIGZlZWwgY29uZmlkZW50IA0KZW5v
dWdoIGFib3V0IHRoZSBzdHJpbmcgY2hhbmdlcyAobW9kdWxvIGEgZmV3IHR3ZWFrcyB0aGF0
IEknbGwgYXBwbHkpIHRvIHNoaXAgDQp0aGVtIGluIGl0LiAgSWYgeW91IGhhdmUgYW55IGNv
bW1lbnRzIGFib3V0IHRoZW0sIHBsZWFzZSB2b2ljZSB0aGVtIDopDQoNCj4gDQo+IFllcywg
SSdsbCBkbyBpdC4gIE1heWJlIHRvZGF5LCBtYXliZSBsYXRlciB0aGlzIHdlZWsuDQoNClN1
cmUuICBJIGRvbid0IHRoaW5rIHdlIGNhbiBzYXkgdGhpcyBpcyBhbiBSQyBidWcgMjIgeWVh
cnMgYWZ0ZXIgdGhlIHBhZ2Ugd2FzIA0KbGFzdCB1cGRhdGVkIGluIGFjdHVhbCBjb250ZW50
IChyYXRoZXIgdGhhbiBtaW5vciB1cGRhdGVzIGZyb20gTWljaGFlbCwgbW9zdGx5IA0KYXMg
cGFydCBvZiBnbG9iYWwgZml4ZXMpLg0KDQo+IA0KPj4gSSBoYXZlIGEgcGF0Y2ggZm9yIGFu
IGV4dGVuc2lvbiB0aGF0IHdhc24ndCBjb3ZlcmVkIGJ5IHRoaXMgZmlsZS4gIEknbQ0KPj4g
Z3Vlc3NpbmcgcGtnLWNvbmZpZyB3YXNuJ3QgaW52ZW50ZWQgd2hlbiB0aGlzIHBhZ2Ugd2Fz
IHdyaXR0ZW4/DQo+PiBUaGF0J3MgcmVhbGx5IG9sZC4uLiAgSXQgc2VlbXMgdGhlIHBhZ2Ug
Z29lcyBiYWNrIHRvIG1hbi1wYWdlcyAxLjANCj4+ICh3aXRoIHNvbWUgYWRkaXRpb25zIGxh
dGVyOyBtb3N0bHkgaW4gMS4yMSkuDQo+IA0KPiBUaGUgbGFzdCBwZXJzb24gY3JlZGl0ZWQg
YXMgY2hhbmdpbmcgaXQgaW4gdGhlIGZpbGUgaXRzZWxmLCBhcyB5b3Ugbm8NCj4gZG91YnQg
c2F3LA0KDQpBY3R1YWxseSwgSSBkaWRuJ3QuICBJJ20gc28gdXNlZCB0byBnaXQgbG9nLCB0
aGF0IEkgdXN1YWxseSBmb3JnZXQgdG8gY2hlY2sgcGFnZSANCmhlYWRlcnMuICBFc3BlY2lh
bGx5IG5vdyB0aGF0IEkgaGF2ZSBhY2Nlc3MgdG8gdGhlIGVudGlyZSBoaXN0b3J5IChubyBh
dXRob3JzLCANCmJ1dCBhdCBsZWFzdCB2ZXJzaW9ucyBhbmQgdGltZXMpLg0KDQpCVFcsIEkg
YWdyZWUgd2l0aCB5b3UgdGhhdCB0aGUgcmV2ZXJzZWQgaGlzdG9yeSBpcyBhIGJpdCB3ZWly
ZCBhbmQgY29uZnVzaW5nLiAgSSANCnRob3VnaHQgb2YgYSBuZXcgbWV0aG9kIHRoYXQgd291
bGQgY29ubmVjdCBib3RoIGhpc3RvcmllcyB3aGlsZSBrZWVwaW5nIGEgDQpmb3J3YXJkIGhp
c3Rvcnk6DQoNCkEgc2VwYXJhdGUgb3JwaGFuIGJyYW5jaCBpbiBub3JtYWwgb3JkZXIsIHN0
YXJ0aW5nIGF0IDEuMCwgd2hpY2ggZW5kcyBhdCAxLjcwLiANCkFuZCB0aGVuIGdpdCBhbGxv
d3MgbWVyZ2luZyBvcnBoYW4gYnJhbmNoZXMsIHNvIEkgY2FuIGNyZWF0ZSBhIG1lcmdlIGNv
bW1pdCANCmJldHdlZW4gYm90aCAxLjcwIGNvbW1pdHMsIHdoaWNoIG9mIGNvdXJzZSBpcyBh
IG5vLW9wLCBidXQgb25lIHRoYXQgdGVsbHMgZ2l0IA0Kd2hlcmUgYW5kIGhvdyB0aGVzZSBi
cmFuY2hlcyBqb2luLg0KDQo+IHdhcyBEYXZpZCBXaGVlbGVyIChubywgdGhlIG90aGVyIG9u
ZSkNCg0KRGlkbid0IGtub3cgb2YgdGhlIG90aGVyIERhdmlkIFdoZWVsZXIuDQoNCj4gaW4g
MjAwMC4gIEkgdGhpbmsgdGhhdA0KPiBkb2VzIGFudGVkYXRlIHBrZy1jb25maWcuDQoNCkFj
Y29yZGluZyB0byB3aWtpcGVkaWEsIHBrZy1jb25maWcoMSkncyBpbml0aWFsIHJlbGVhc2Ug
aXMgYWxzbyBmcm9tIDIwMDAuICBTbywgDQp5ZXMsIHByb2JhYmx5IGl0IHdhc24ndCB3aWRl
bHkga25vd24gYXQgdGhlIHRpbWUuDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IEJyYW5kZW4NCg0K
Q2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0K

--------------vxfOA5MS0kW7FLRMrNiI8obF--

--------------tgB7f0rFKZVMQNN0MuugVEQj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOgtyEACgkQnowa+77/
2zIU7xAAg9nJLSna0oudq7LCLEe+W6W5ItAWiJ1Q/6f0qouSgHexTKz5NaiR996s
AT+aHdcRPzS4fzVZ5QGEirWEaaGx87Kd5KAAZp8EOPdInPIfp6VSm6dmb/HKQ2+y
dB0uIjXWSt0a5I71C+XuC5kzJy2+73KbPkTPbK282llvSjl4b17ihGM4BkfkOglm
qxN3m0ERjTtDj1ddB8YbF0xICt9tN8MIDsk9tV8G8OseYrb/W1DuBEU/G5ISl7Bp
6B62dAZm8EJ0kFQxTBdZv37RZBgqP8DUMik2VTp8AACiHOMgSONJ7upLVRCfewMO
u6Llqbl1xlUUzS/Wbw0ObWjarHwRucRr8e6dh2TDyL2nlViZc+kjNWCTjkVxLSCK
FDK29r4nZfm7XymUiQYe9qcLuwgXhx1AoRSn6bCB8ArsJLqiZq0WFkmYTaCtp8v5
++fKgTVQY3F2Gxi9RTMdfu53eFx7TTnC0pOJj8MxykDPu8Wackn1E+aMzzwjy/2d
buK2QIYqpmyN/zEa9x2ouJzGW30FDiGK4JcNBp8cSiOzy4DdajYxcsYzHXUOuIvp
EPSe+eE7do4B4dnM0ZYCMMBQgZmQI6dfmV30UDXJY2v7jLJ1vFzMpiBmUXz0NEkO
my5QtE2Apg5pTd/qo2u9ApKqt8IfuNBlUXT2H4JRH91dOfzneYM=
=TR15
-----END PGP SIGNATURE-----

--------------tgB7f0rFKZVMQNN0MuugVEQj--
