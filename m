Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 703FB6597FE
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 13:07:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234955AbiL3MH1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 07:07:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234966AbiL3MH0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 07:07:26 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B0FBB48B
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 04:07:25 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id w1so7624850wrt.8
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 04:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87M3j36UqzfuTi1ttc75zzK9rZR0GFAD5cfZQ784ZYM=;
        b=Vifh5ZC04JTFjbXijgJvAAgj4+l5A0LbLr5H2W5stsOeOIBCWLrZGFt6E2nrbb2YKm
         Y8mGM+djHh2yr+bP5+1daRCgnu6LioxdycObdWkfOEgdGGyRH26N7m2BrqQDxytCnxSs
         68dtV+smNZ1d1aazelZ9ZBRJEAt0LxU+xNGtJtYom/IWyx+DrsSo1w4rv+R4yGVHUPw0
         YNs2dsZ5ykAiGZOTIfq0lqteru+oH/jGCRndFdee+Js6AIvdAVIS8U+M88q6cuinXuLp
         nJmUR6S5xcxHR4xCbVyQZJBpb6um6uQdHBtWXhnMf33i75C5bDfNj4Gf2EJHf2wKBqXC
         7BIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=87M3j36UqzfuTi1ttc75zzK9rZR0GFAD5cfZQ784ZYM=;
        b=S6S4HdrtPPe+7hHcMcOWidEoGoaAT/Pk/SBsMDG1UlnRQtvyemOjKDvbknqh9dv22x
         YmVMm/xivDzuRXwyRKOTaZvkE6Q5ff5Wwu0/ioxb3Bypjohqsrf5zMhavs7n5TMKDeLJ
         r7eAWz/Eu5aoUXB06QjO4FxsKyrrDAavB0BTTvIBIUIHp3ED3SE34ktUExGkQzD5zg37
         Dmfa2SJfH4uvgY9tLzXWQRX9foRGGt08i2oXPOO8kaWxFcGkImWA0h0Nc3HkvflHzHI9
         o7BW0JCQ2cdtgLYZMHKMS+fqHXIMn1bt973ypBH5tdVySdjl4XDFLmTVzmLKeOArFaJK
         +NkA==
X-Gm-Message-State: AFqh2kpAvldWbMKy+Dai2PvrfvQEkLvwFN3qzfL595QBdWtb7dRH8mRW
        2ovwLIHIpXZQuFf+P7i014wtFGa81Ig=
X-Google-Smtp-Source: AMrXdXt/SwKZJNi6vsBf6xH8+FmoulxkXFJjASvWnyIniZPJ+tgnlNnKp4I3iQOTwtgjNfVK9KBAdQ==
X-Received: by 2002:a05:6000:10f:b0:286:ad19:731f with SMTP id o15-20020a056000010f00b00286ad19731fmr6436156wrx.19.1672402043968;
        Fri, 30 Dec 2022 04:07:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q1-20020adffec1000000b00281b594c725sm10853539wrs.38.2022.12.30.04.07.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 04:07:23 -0800 (PST)
Message-ID: <2561b1b2-5f40-3600-008c-d46584a7cd65@gmail.com>
Date:   Fri, 30 Dec 2022 13:07:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] scripts: tfix
Content-Language: en-US
To:     Samanta Navarro <ferivoz@riseup.net>, linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com
References: <20221230120354.57vnojrtfx5f2xvf@localhost>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221230120354.57vnojrtfx5f2xvf@localhost>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------wUGzZElfCB9jRzjccJO3tYNV"
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
--------------wUGzZElfCB9jRzjccJO3tYNV
Content-Type: multipart/mixed; boundary="------------wyUbgZAkAAbRv82d0ThCBKri";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Samanta Navarro <ferivoz@riseup.net>, linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com
Message-ID: <2561b1b2-5f40-3600-008c-d46584a7cd65@gmail.com>
Subject: Re: [PATCH 2/2] scripts: tfix
References: <20221230120354.57vnojrtfx5f2xvf@localhost>
In-Reply-To: <20221230120354.57vnojrtfx5f2xvf@localhost>

--------------wyUbgZAkAAbRv82d0ThCBKri
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU2FtYW50aGEhDQoNCk9uIDEyLzMwLzIyIDEzOjAzLCBTYW1hbnRhIE5hdmFycm8gd3Jv
dGU6DQo+IFR5cG9zIGZvdW5kIHdpdGggY29kZXNwZWxsLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogU2FtYW50YSBOYXZhcnJvIDxmZXJpdm96QHJpc2V1cC5uZXQ+DQoNClBhdGNoIHNldCBh
cHBsaWVkLiAgVGhhbmtzIQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBzY3Jp
cHRzL0xpbnV4TWFuQm9vay9ncm9wZGYgIHwgIDIgKy0NCj4gICBzY3JpcHRzL0xpbnV4TWFu
Qm9vay91dHAubWFjIHwgMTAgKysrKystLS0tLQ0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Njcmlw
dHMvTGludXhNYW5Cb29rL2dyb3BkZiBiL3NjcmlwdHMvTGludXhNYW5Cb29rL2dyb3BkZg0K
PiBpbmRleCAzYmViMjA4OWQuLjg0NzRlNTgzZiAxMDA3NTUNCj4gLS0tIGEvc2NyaXB0cy9M
aW51eE1hbkJvb2svZ3JvcGRmDQo+ICsrKyBiL3NjcmlwdHMvTGludXhNYW5Cb29rL2dyb3Bk
Zg0KPiBAQCAtMjc5MSw3ICsyNzkxLDcgQEAgc3ViIGRvX20NCj4gICAgICAgIyBQREYgdXNl
cyBHL1JHL0sgZm9yIGdyYXBoaWMgc3Ryb2tlLCBhbmQgZy9yZy9rIGZvciB0ZXh0ICYgZ3Jh
cGhpYyBmaWxsLg0KPiAgICAgICAjDQo+ICAgICAgICMgVGhpcyBtZWFucyB0aGF0IHdlIG11
c3QgbWFpbnRhaW4gZy9yZy9rIHN0YXRlIHNlcGFyYXRlbHkgZm9yIHRleHQgY29sb3VyICYg
Z3JhcGhpYyBmaWxsICh0aGlzIGlzDQo+IC0gICAgIyBwcm9iYWJseSB3aHkgJ2dzJyBtYWlu
dGFpbnMgc2VwZXJhdGUgZ3JhcGhpYyBzdGF0ZXMgZm9yIHRleHQgJiBncmFwaGljcyB3aGVu
IGRpc3RpbGxpbmcgUFMgLT4gUERGKS4NCj4gKyAgICAjIHByb2JhYmx5IHdoeSAnZ3MnIG1h
aW50YWlucyBzZXBhcmF0ZSBncmFwaGljIHN0YXRlcyBmb3IgdGV4dCAmIGdyYXBoaWNzIHdo
ZW4gZGlzdGlsbGluZyBQUyAtPiBQREYpLg0KPiAgICAgICAjDQo+ICAgICAgICMgVG8gZmFj
aWxpdGF0ZSB0aGlzOi0NCj4gICAgICAgIw0KPiBkaWZmIC0tZ2l0IGEvc2NyaXB0cy9MaW51
eE1hbkJvb2svdXRwLm1hYyBiL3NjcmlwdHMvTGludXhNYW5Cb29rL3V0cC5tYWMNCj4gaW5k
ZXggYjBiNWJiMjcxLi5lZDkwMjdhYjcgMTAwNjQ0DQo+IC0tLSBhL3NjcmlwdHMvTGludXhN
YW5Cb29rL3V0cC5tYWMNCj4gKysrIGIvc2NyaXB0cy9MaW51eE1hbkJvb2svdXRwLm1hYw0K
PiBAQCAtMTYsNyArMTYsNyBAQCBWZXJzaW9uIG9mIDE2IE5vdmVtYmVyIDIwMDINCj4gICAu
bnIgY2hhcHRlcl9wYWdlIDAgICAgICBcIiBhdm9pZCBkaWFnLiBpZiB0aGVyZSdzIG5vIC5T
ZSBjYWxsDQo+ICAgLmRzIGNoYXB0ZXJfbmFtZQ0KPiAgIFwjDQo+IC1cIyBSZWRlZmluZSBM
UCBzbyB0aGF0IGl0IGNhbiB0YWtlIGFuIGFyZ3VtZW50IHRvIHN1cnByZXNzIHNwYWNpbmcN
Cj4gK1wjIFJlZGVmaW5lIExQIHNvIHRoYXQgaXQgY2FuIHRha2UgYW4gYXJndW1lbnQgdG8g
c3VwcHJlc3Mgc3BhY2luZw0KPiAgIFwjDQo+ICAgLmRlIHBhcipzdGFydCpub3NwYWNlDQo+
ICAgLmRzQGF1dG8tZW5kDQo+IEBAIC0yNDMsNyArMjQzLDcgQEAgVmVyc2lvbiBvZiAxNiBO
b3ZlbWJlciAyMDAyDQo+ICAgLi4NCj4gICAuYWxzIEhsIGhvcml6b250YWxfbGluZQ0KPiAg
IFwjDQo+IC1cIyAgU3RhbmRhcmQgU2VjdGlvbiBGb3JtYXRpbmcgUm91dGluZQ0KPiArXCMg
IFN0YW5kYXJkIFNlY3Rpb24gRm9ybWF0dGluZyBSb3V0aW5lDQo+ICAgXCMNCj4gICAuZGUg
Zm9ybWF0X3N0YW5kYXJkX3NlY3Rpb24NCj4gICAuUlQNCj4gQEAgLTI2MCw3ICsyNjAsNyBA
QCBWZXJzaW9uIG9mIDE2IE5vdmVtYmVyIDIwMDINCj4gICAuZWwgLmRzIGNoYXB0ZXJfdHlw
ZSBDaGFwdGVyDQo+ICAgLlwiIElmIHRoZXJlIGlzIGEgc2VjdGlvbiBudW1iZXIsIG91dHB1
dCBUeXBlIGFuZCBzZWN0aW9uIG51bWJlcg0KPiAgIC5pZiAhJ1xcJDEnJyBcczE0XGZCXFwq
W2NoYXB0ZXJfdHlwZV0gXFwkMVxmUFxzMA0KPiAtLlwiIElmIHRoZXJlIGlzIG5vIHNlY3Rp
b24gbnVtYmVyLCBidXQgdGhlcmUgaXMgYSB0eXBlLCB0aGVuIG91cHV0IGl0DQo+ICsuXCIg
SWYgdGhlcmUgaXMgbm8gc2VjdGlvbiBudW1iZXIsIGJ1dCB0aGVyZSBpcyBhIHR5cGUsIHRo
ZW4gb3V0cHV0IGl0DQo+ICAgLmlmICdcXCQxJycgLmlmICEnXFwkMycnIFxzMTRcZkJcXCpb
Y2hhcHRlcl90eXBlXVxmUFxzMA0KPiAgIC5zcCA1cA0KPiAgIC5cIiBQcmludCB0aGUgc2Vj
dGlvbiB0aXRsZSBpZiB0aGVyZSBpcyBvbmUNCj4gQEAgLTM1Nyw3ICszNTcsNyBAQCBWZXJz
aW9uIG9mIDE2IE5vdmVtYmVyIDIwMDINCj4gICAuXCIgbGlzdCBzdGFydCAkMTogQSAtIEFM
UEhBDQo+ICAgLlwiICAgICAgICAgICAgICAgIGEgLSBhbHBoYQ0KPiAgIC5cIiAgICAgICAg
ICAgICAgICBCIC0gYnVsbGV0DQo+IC0uXCIgICAgICAgICAgICAgICAgTiAtIG51bWJlcmlj
DQo+ICsuXCIgICAgICAgICAgICAgICAgTiAtIG51bWVyaWMNCj4gICAuXCIgICAgICAgICAg
ICAgICAgUiAtIFJPTUFOIE5VTUVSQUxTDQo+ICAgLlwiICAgICAgICAgICAgICAgIHIgLSBy
b21hbiBudW1lcmFscw0KPiAgIC5cIiAgICAgICAgICAgICQyOiBpbmRlbnQNCj4gQEAgLTM2
OCw3ICszNjgsNyBAQCBWZXJzaW9uIG9mIDE2IE5vdmVtYmVyIDIwMDINCj4gICAuCXRtIExz
OiBOZWVkIEEsIGEsIEIsIE4sIFIsIG9yIHIgYXMgdHlwZQ0KPiAgIC5uciBsXFxuK1tsMF0g
MCAxDQo+ICAgLmllICdcXCQxJycgXHsuICAgICAgICAgICAgICAgICAgICAgIFwiIHNldCBk
ZWZhdWx0cw0KPiAtLglpZiAnXFxuW2wwXScxJyAuYWYgbFxcbltsMF0gMSAgICBcIm51bWJl
cmljIGF0IDFzdCBsZXZlbA0KPiArLglpZiAnXFxuW2wwXScxJyAuYWYgbFxcbltsMF0gMSAg
ICBcIm51bWVyaWMgYXQgMXN0IGxldmVsDQo+ICAgLglpZiAnXFxuW2wwXScyJyAuYWYgbFxc
bltsMF0gYSAgICBcImFscGhhIGF0IDJuZCBsZXZlbA0KPiAgIC4JaWYgJ1xcbltsMF0nMycg
LmFmIGxcXG5bbDBdIGkgICAgXCJyb21hbiBhdCAzcmQgbGV2ZWwNCj4gICAuCWlmICdcXG5b
bDBdJzQnIC5kcyBsXFxuW2wwXSBcKGJ1IFwiYnVsbGV0IGF0IDR0aCBsZXZlbA0KDQotLSAN
CjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------wyUbgZAkAAbRv82d0ThCBKri--

--------------wUGzZElfCB9jRzjccJO3tYNV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOu1GsACgkQnowa+77/
2zIw8g//bS1DBo+vgWMA1imKy0SywfupRHMZezb2V0xijd0YMDu/w+l3Sannzvka
X3AzLitWEMX+SII54SDb9xVA7VxufAhlmHO9UAFHuT52Qp+8Y5S2mGZzkQnayu7d
kLD25qbKSbe6ek81udWNUQala59UNZ4NVXairdEPPFWtJeyDUio9Vf4N4Hw5B2jx
FB4Ttrne3rvx+grhWaI0WhY9dWjzv/2F4DyiVzkz1vcK+r9d4dIswwKvrSY+8FnB
Z3VVSjz6kRuZWiq43WJerhO/xYbF8gd69FeTqbsX7i7lAec13yka3zj2liEU/S1A
eDKo61s4jcGch/hrMSuFMIVuxV0VCoQTCSn2x3zTrj1f2bMBxdhYKJcTancce2t6
JbPAf4DMlG/XZGMPXV3vJMswwSiir6DWlg74hB7z29Isti+Ul/NmDTn/VzhcpO2E
hZYTOxijbwi1QtHSqsMX7d8XkXTb8msRCwOOz+0ZkmSGq6aFSBMR+oBpinm1Tvyj
AzsNHT/1cXzOnq/XhVp2u1p3eKVsie/OjFZAKvCFR4rP1SYLtQjmVc/3mdRhfbnQ
a7yj867Ok+MWwW5VzC4eGARvar0IonQJvKGFJvWTSrZsm8lMgZKWLYRb5iy7aOH1
3AHEpC8YhJqrGRBt0Q9ztPUpFn4X+ZSU6sQixziM0InczojtjsM=
=cuNN
-----END PGP SIGNATURE-----

--------------wUGzZElfCB9jRzjccJO3tYNV--
