Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93DB0675545
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 14:12:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230384AbjATNMa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 08:12:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230468AbjATNM3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 08:12:29 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BA59BD17E
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 05:12:17 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id c10-20020a05600c0a4a00b003db0636ff84so3672620wmq.0
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 05:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T95ujafLCH2QeqZjupMiqLqkIDD40MTvTLSA/6DiqPQ=;
        b=hwbUOE6sJOW4wOASqkrwn2m3ZcJ3nhG5xLRNFT/OZgwoJ4PCMZCdwD9iyxQ05YL6P8
         Sus81lMcVsziBzj/3qqCtTk3P5ijeKQ9jF7WFFRx3cyeHGt7wgF1Bfx7yDjxlVjmWJXI
         rDuzvMSBxoiKdUAYfHEz7LRDjdUh9HLECXZ/Y3f3Nn6WCrsG0IaqpeHkTdBGfkWK+FnD
         n665Izk5a33Urhudyo8I+YpzOFCeiGuWOAX6SpaYF7nDByZdWM27E4cpeglExLwcVMEg
         F5V/NzAwyyD61MyqyUE/ukNkYVqf8QEY7gPmMGHahPLrgGKNsXrkN1E+ETadGEFAEUmq
         4cgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T95ujafLCH2QeqZjupMiqLqkIDD40MTvTLSA/6DiqPQ=;
        b=ecFy4e49Um3JRQIa+Z5eK1fVvunTZh99chZz3X28yM18k00iYYqmgo1X1JC+lKo08M
         FWCSX+SLij193c2J2LC+t+Yc5K5ZGH+vfZN/1ntxSjp+U5EBiuovmwDbE17TLa8c7RmH
         8snFJgncr0fWVw9RgNIP7xf5NF6vXVID3bgGpy8XBxNSo1LL+Fr0OxchlH15qBittnCs
         io7QvgF7H4bTDHo+cn/c15wyZR3vWmLDeusHUM0ucGB/VvVcKKXm5buqLbCzdlwNQANR
         TknKCisNXbdto2828T5xLDO1/jr/euRYvu3mwMd2bvMufRuZ7gSZlmbGecrx5Jx8iMJZ
         q5Vg==
X-Gm-Message-State: AFqh2krJRyBzSI9HAvkaMn5MEaPA2UTqOlOsFD2Ki6yyyAQb97hvWbfb
        r0fZPhSK4lfeMOz4Y4ESSiU=
X-Google-Smtp-Source: AMrXdXu81/MBw+Nr2dlQE74EUpvCLPwx41i/kq9N8Xh7GU1uSepIGDA/megGKojy2RbZYeY/FbhgmA==
X-Received: by 2002:a05:600c:a13:b0:3db:1de2:af31 with SMTP id z19-20020a05600c0a1300b003db1de2af31mr6395678wmp.37.1674220335583;
        Fri, 20 Jan 2023 05:12:15 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o4-20020a1c7504000000b003da28dfdedcsm2654119wmc.5.2023.01.20.05.12.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 05:12:15 -0800 (PST)
Message-ID: <b929eaed-0e8f-bb6c-87cb-8a36573c2769@gmail.com>
Date:   Fri, 20 Jan 2023 14:12:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>
Cc:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
 <Y8oT53gEtkAOX0Zb@sol.localdomain>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <Y8oT53gEtkAOX0Zb@sol.localdomain>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0CjFlfxuahlbko5bda0qQVYM"
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
--------------0CjFlfxuahlbko5bda0qQVYM
Content-Type: multipart/mixed; boundary="------------9bEwrCwFO2pQ64HXs89v709f";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Biggers <ebiggers@kernel.org>
Cc: Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Message-ID: <b929eaed-0e8f-bb6c-87cb-8a36573c2769@gmail.com>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
 <Y8oT53gEtkAOX0Zb@sol.localdomain>
In-Reply-To: <Y8oT53gEtkAOX0Zb@sol.localdomain>

--------------9bEwrCwFO2pQ64HXs89v709f
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvMjAvMjMgMDU6MDksIEVyaWMgQmlnZ2VycyB3cm90ZToNCj4gSGkgQWxlamFu
ZHJvLA0KPiANCg0KWy4uLl0NCg0KPj4NCj4+IDxodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vZG9jcy9tYW4tcGFnZXMvbWFuLXBhZ2VzLmdpdC9jb21taXQvP2lkPWExNWQzNDMy
NmM1ODFlYWIxMDdiZjA1NzgyY2M2MGQ4ZWJkY2FkNjk+DQo+Pg0KPj4gQ2hlZXJzLA0KPj4N
Cj4gDQo+IFRoaXMgaXMgY29tbW9ubHkgdXNlZCBmdW5jdGlvbmFsaXR5IHdpdGggbm8gcmVw
bGFjZW1lbnQgc3VnZ2VzdGVkLg0KDQpNYXliZSB3ZSBzaG91bGQgc3VnZ2VzdCB1c2luZyBz
dHJ0b2woMykgaW4gQlVHUy4NCg0KPiAgU2hvdWxkIGl0DQo+IHJlYWxseSBiZSBkZXByZWNh
dGVkPw0KDQpXaGlsZSB0aGUgaW50ZXJmYWNlIG9mIHNzY2FuZigzKSBudW1lcmljIGNvbnZl
cnNpb25zIGlzIG5vdCBtaXMtZGVzaWduZWQgYW5kIA0KY291bGQgYmUgZml4ZWQsIGl0IGlz
IG5vdCBjb3JyZWN0bHkgaW1wbGVtZW50ZWQsIG5vciBldmVuIHN0YW5kYXJkaXplZC4NCg0K
SSB0aGluayBpdCdzIGNvcnJlY3QgdG8gZGVwcmVjYXRlIHVubGVzcyB0aGVyZSdzIGEgY2xl
YXIgZWZmb3J0IHRvIGZpeCBpdC4NCg0KVGhpcyBpcyBzaW1pbGFyIGJ1dCBkaWZmZXJlbnQg
dG8gYnplcm8oMykuICBiemVybygzKSB3YXMgYnJva2VuIG9yIHNsb3cgaW4gc29tZSANCmlt
cGxlbWVudGF0aW9ucy4gIFRoYXQncyBwcm9iYWJseSB3aHkgaXQgd2FzIG5ldmVyIGFkZGVk
IHRvIElTTyBDLCBhbmQgd2h5IFBPU0lYIA0KbGF0ZXIgcmVtb3ZlZCBpdC4gIFRoZSBBUEkg
d2Fzbid0IGJhZCwgYW5kIGluIGZhY3QgaXQncyBncmVhdCwgSSBwcmVmZXIgaXQgb3ZlciAN
Cm1lbXNldCgzKS4gIFRoZSBkaWZmZXJlbmNlIGJldHdlZW4gYnplcm8oMykgYW5kIHNzY2Fu
ZigzKSBpcyB0aGF0IGJ6ZXJvKDMpIGhhcyANCm5vdyBiZWVuIGZpeGVkLCBhbmQgaXMgX3Ro
ZSBiZXN0XyBBUEksIHdoaWxlIHNzY2FuZigzKSBpcyBzdGlsbCBicm9rZW4uDQoNCj4gIElz
IHRoZSB1bmRlZmluZWQgYmVoYXZpb3IgaGVyZSBhIHJlYWwgd29ybGQgaXNzdWUNCj4gYW55
d2hlcmUsIG9yIGlzIHRoaXMganVzdCBhIHRoZW9yZXRpY2FsIGlzc3VlIGJhc2VkIG9uIGlu
dGVycHJldGF0aW9uIG9mIHRoZSBDDQo+IHN0YW5kYXJkPw0KDQpBbGwgaW1wbGVtZW50YXRp
b25zIG9mIHNzY2FuZigzKSBwcm9kdWNlIFVuZGVmaW5lZCBCZWhhdmlvciAoVUIpLCBBRkFJ
Sy4gIEhvdyANCm11Y2ggeW91IGNvbnNpZGVyIFVCIHRvIGJlIGEgcmVhbC13b3JsZCBpc3N1
ZSBkaWZmZXJzIGZvciBlYWNoIHByb2dyYW1tZXIsIGJ1dCBJIA0KdGVuZCB0byBjb25zaWRl
ciBhbGwgVUIgdG8gYmUgYXMgYmFkIGFzIG5hc2FsIGRlbW9ucy4gIEknbSBub3Qgc2F5aW5n
IFVCIA0Kc2hvdWxkbid0IGV4aXN0LCBqdXN0IHRoYXQgeW91IHNob3VsZG4ndCBpbnZva2Ug
aXQuICBBbmQgYSBmdW5jdGlvbiB0aGF0IGlzIHVzZWQgDQpmb3Igc2Nhbm5pbmcgdXNlciBp
bnB1dCBpcyBvbmUgb2YgdGhvc2UgcGxhY2VzIHdoZXJlIHlvdSByZWFsbHkgd2FudCB0byBh
dm9pZCANCmludm9raW5nIFVCLg0KDQo+ICBQZXJoYXBzIGluc3RlYWQgb2YgYSBkZXByZWNh
dGlvbiwgdGhpcyBqdXN0IGRlc2VydmVzIGEgbWVudGlvbiBpbiB0aGUNCj4gQlVHUyBzZWN0
aW9uIG9mIHRoZSBtYW4gcGFnZSwgYW5kIGEgcmVxdWVzdCB0byB0aGUgQyBzdGFuZGFyZCBj
b21taXR0ZWUgdG8gZml4DQo+IHRoZSB0ZXh0IGluIHRoZSBzdGFuZGFyZCB0byBtYWtlIHRo
ZSBiZWhhdmlvciBkZWZpbmVkPw0KDQpJIGNvdWxkIGNoYW5nZSB0aGUgImRlcHJlY2F0ZWQi
IHN0YXRlbWVudHMgYnkgInNlZSBidWdzIiwgYnV0IEkgZG9uJ3QgdGhpbmsgaXQncyANCmEg
cmVhc29uYWJsZSBkaWZmZXJlbmNlLiAgSG93ZXZlciwgeWVzLCBJIHNob3VsZCBzdGlsbCBh
ZGQgc29tZXRoaW5nIHRvIEJVR1MuDQoNCldoaWxlIEknbSBkb2luZyBzb21lIGVmZm9ydCB0
byBmaXggaW1wbGVtZW50YXRpb25zIGFuZCBzdGFuZGFyZHMgaW4gb3RoZXIgQVBJcyANCnRo
YXQgbWF0dGVyIHRvIG1lLCBzdWNoIGFzIHNvY2thZGRyX3N0b3JhZ2UsIG9yIGJ6ZXJvKDMp
LCBJIGRvbid0IHVzZSBzc2NhbmYoMyksIA0Kc28gSSdtIHNvcnJ5IHRoYXQgSSB3b24ndCBk
byB0aGUgc2FtZSBmb3IgaXQuDQoNCkhvd2V2ZXIsIGlmIHNvbWVib2R5IHJlYWxseSB3YW50
cyB0byB1c2UgdGhhdCBmdW5jdGlvbiwgYW5kIHdvdWxkIGxpa2UgdG8gZml4IA0KaXQsIEkg
ZW5jb3VyYWdlIHRoYXQgZWZmb3J0LiAgSWYgdGhlIGZ1bmN0aW9uIGlzIGZpeGVkLCB3aGlj
aCBzaG91bGRuJ3QgYmUgdGhhdCANCmhhcmQsIEknbSBmaW5lIHJlbW92aW5nIHRoZSBtZXNz
YWdlcyBhZ2FpbnN0IGl0cyB1c2FnZSBpbiB0aGUgbWFudWFsLg0KDQpXaGlsZSB0aGF0IGRv
ZXNuJ3QgaGFwcGVuLCBJIHByZWZlciBzdHJvbmdseSByZWNvbW1lbmRpbmcgYWdhaW5zdCB0
aGVpciB1c2FnZSBpbiANCnRoZSBtYW51YWwuICBBbmQgZGljdCgxKSBzZWVtcyB0byBzYXkg
dGhhdCB0aGUgdmVyYiBmb3IgdGhhdCBpcyAidG8gZGVwcmVjYXRlIiA6KQ0KDQo+IA0KPiBJ
J2xsIG5vdGUgdGhhdCBtZW1jcHkoKSBpcyBub3QgZGVwcmVjYXRlZCwgZXZlbiB0aG91Z2gg
dGhlIEMgc3RhbmRhcmQgaGFzIGEgYnVnDQo+IHdoZXJlICdtZW1jcHkoZHN0LCBzcmMsIDAp
JyBpcyB1bmRlZmluZWQgaWYgZWl0aGVyIHBvaW50ZXIgaXMgTlVMTC4gIFRoYXQncyBhDQo+
IHZlcnkgc2ltaWxhciBzb3J0IG9mIGlzc3VlLiAgVGhlIGZpeCwgb2YgY291cnNlLCBpcyBm
b3IgaW1wbGVtZW50YXRpb25zIHRvDQo+IGlnbm9yZSB0aGUgZGVmZWN0aXZlIHN0YW5kYXJk
IGFuZCBtYWtlIHRoZSBiZWhhdmlvciBkZWZpbmVkLi4uDQoNClJpZ2h0LiAgbWVtY3B5KDMp
IGhhcyBhIGJ1ZyBpbiB0aGUgc3RhbmRhcmQuICBIb3dldmVyLCBpbXBsZW1lbnRhdGlvbnMg
ZG8gdGhlIA0KUmlnaHQgVGhpbmcgKHRtKS4gIElmIGltcGxlbWVudGF0aW9ucyBkaWQgdGhl
IHJpZ2h0IHRoaW5nIGZvciBzc2NhbmYoMyksIHRoYXQgDQp3b3VsZCBiZSBlbm91Z2ggdG8g
cmVtb3ZlIHRoZSByZWNvbW1lbmRhdGlvbiBhZ2FpbnN0IGl0LiAgQnV0IG15IHVuZGVyc3Rh
bmRpbmcgDQppcyB0aGF0IHRoZSBzc2NhbmYoMykgaW1wbGVtZW50YXRpb24gaXMgbm90IGZy
ZWUgb2YgdGhhdCBwcm9ibGVtLg0KDQo+IA0KPiAtIEVyaWMNCg0KQ2hlZXJzLA0KDQpBbGV4
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------9bEwrCwFO2pQ64HXs89v709f--

--------------0CjFlfxuahlbko5bda0qQVYM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPKkycACgkQnowa+77/
2zJfDg/9FHZyyVXtwbbZWd/5zTHywQ0OA0KNwSlxFhmGXcxHoxkqHeENikNmDaNg
H7/z7M/YD0WljcLpDcTGn1kQtx0pDmGNpI7w+6RsMy0may9UzSW0WCmkgNYBqDyg
tJjWqmMaZBEPJ3YEqPeQ6aFTZFMnyvGMzkFzrIdndgHIY7/JrJqJGSBt1byS1vni
VNt2t6ylHvygUMtV2xJrhUeGNgRqxtBlUSZOuaQjYKhcH1SaEbFALbq6Je+KURTI
pOip4I7oRS7t3uomMlsdG+MXhoXJ2or6Hqujrpt9jsV2/TGDlQTsH/PTyUexmIxp
QyL8y82mDWm9d9avkFwTSZrRFxANA5GRAwJAgESkydKMgudNY7HsLhrlZlKVzo6y
Ff1fvGoMzY1HDPMCX03jKjDJzFwSb7sLMN7OffySBtMcruNqlFkaSufzS4cSladr
5BN79TT1X6HbFXNqBMvAZM+cVxD9v8ZYqKKR9t6Vb2rUOfF4Sq9/KMBheoC9yZ+9
BPmmHNfnn8zvl2TO40sOnGyGJlh/s/j1oXsM/S4IlWFPHPCudL3vzzk36LfstLxR
sanhVyAILS2V/zxkBsf/uN5vbzOOjqm/NbBiisxmOWCDynjgp1TSwzxD2AdUw6wG
pwFznWkKfCN/vwoRjMceP/iOyh9XixZl3OJFxIRYmHlhAGlRb3A=
=9nAe
-----END PGP SIGNATURE-----

--------------0CjFlfxuahlbko5bda0qQVYM--
