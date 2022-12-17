Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4638C64F907
	for <lists+linux-man@lfdr.de>; Sat, 17 Dec 2022 14:20:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbiLQNUH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Dec 2022 08:20:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230269AbiLQNUF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Dec 2022 08:20:05 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98C481758F
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 05:20:04 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id o5-20020a05600c510500b003d21f02fbaaso5832816wms.4
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 05:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AmACPcLQvBVvOh4Z/bOx5uPOEf1DIzZKaOmlnzxgCCI=;
        b=IMPOJaFowvGdJDEzzAYQhhrpXEwUBbWqtvb0iy6PSgVr8/G/0cmALJBS+sT81/x84G
         07vb/V7oOt3nMcwSpEOOeY6Iq7c+6nVleruIXpczQh4+fha9jMW3E+MJQHwcWZEHuwEi
         uIXU66Bw9h1ZoY+wm+WOSlPSlnaL54ztYiN3yzklP/5UD1bwNGNaPeqPXjKoh2wGHHo0
         YnExEIBFN0/FPYn0g15mhzU9nH9XlDySNKyz6LcRjbJm4BPpxLu2eEhffn11xFl+rsoA
         QZMxzgMGoFK9uZPFYrafM3ltcOBwTuwj7Rbn8WPy2dLvlw8+saf0gIkw+WC7H3kTjyJ6
         azDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AmACPcLQvBVvOh4Z/bOx5uPOEf1DIzZKaOmlnzxgCCI=;
        b=DPrhthvptheHOf5afJr/rFb89Ueg2H5WBFI9RYHQ3N+G7vRy3s3Xa3ynPhDVJ920XJ
         x9JiUANfxcJngFqaHReGSbvZg0sH+mwbPB37BHNc/sFz8QfI13pteN/cThqRzTsWmPWa
         rBwTLHesYHXhIaPRmAqVuz+MYHeHyuSZFensh7Np/vrkKbsJQF14BuUchntb39rqggS5
         FNrviO6mwdUQAhtoISOEQi34bFh9YVGnpbx/6vkmShYZ34NyIAXuwNDsGr5cg1d7gOG8
         WrASXPSTKvJrCSqgevjZcCwQFr9bhdhsxpOYWxLgQAQumpTWfpM28tBONEYhpsrp+/68
         3yyw==
X-Gm-Message-State: AFqh2kqCvp4OZTTBNTmGUoD28QiHgx2cn16Lk5HbHoK98kCsoLdUsuf2
        gmi+e/SEF0VbQzwj+pysYyc=
X-Google-Smtp-Source: AMrXdXuJ0GITTK0JH9bdYYOC1VhkTeWBr2JqxuMxIISgNi9ZI1T1wtEdokjeFA7BrDdsOpfQojtQYw==
X-Received: by 2002:a1c:7206:0:b0:3d3:3d1b:6354 with SMTP id n6-20020a1c7206000000b003d33d1b6354mr6537956wmc.3.1671283203041;
        Sat, 17 Dec 2022 05:20:03 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x7-20020a05600c188700b003d1cf67460esm12342957wmp.40.2022.12.17.05.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 05:20:02 -0800 (PST)
Message-ID: <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
Date:   Sat, 17 Dec 2022 14:19:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters of
 the manual (was: Bug#1018737: ...))
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
In-Reply-To: <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JuDpLLkCmK7HJ1N1BpOHlTy4"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JuDpLLkCmK7HJ1N1BpOHlTy4
Content-Type: multipart/mixed; boundary="------------Nvx0S2zgVaZlfSeC69kFxzWm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>
Cc: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
Subject: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters of
 the manual (was: Bug#1018737: ...))
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
In-Reply-To: <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>

--------------Nvx0S2zgVaZlfSeC69kFxzWm
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRGVyaSwNCg0KT24gMTIvMTcvMjIgMTI6NTEsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPj4+IEkgbm90aWNlZCBhIGZldyBzbWFsbCBpc3N1ZXM6DQo+Pj4NCj4+IEhpIEFsZXgs
DQo+Pg0KPj4+IC3CoCBsaW5rICguc28pIHBhZ2VzIGFwcGVhciBtaXNwbGFjZWQgaW4gdGhl
IG5hdmlnYXRpb24uwqAgRm9yIGV4YW1wbGUNCj4+PiB3cml0ZXYuMiBhcHBlYXJzIGluc2lk
ZSBtYW4ydHlwZS4NCj4+Pg0KPj4+IC3CoCBpbnRybygqKSBzaG91bGQgYmUgdGhlIGZpcnN0
IHBhZ2Ugb2YgZWFjaCBzZWN0aW9uLsKgIChTbyBmYXIsIHN1YnNlY3Rpb25zDQo+Pj4gZG9u
J3QgaGF2ZSBpbnRybywgYnV0IEkgd291bGRuJ3QgZGlzY2FyZCB0aGF0LikNCj4+DQo+PiBC
b3RoIGZpeGVkIGluIGxhdGVzdCB2ZXJzaW9uLiBXaGljaCB5b3UgY2FuIGZpbmQgaGVyZTot
DQo+Pg0KPj4gaHR0cDovL2NodXp6bGV3aXQuY28udWsvTGludXhNYW5Cb29rLnBkZg0KPiAN
Cg0KQW5vdGhlciBidWcgcmVwb3J0IChidXQgbm90IGFib3V0IHRoZSBzY3JpcHQ7IHRoaXMg
c2VlbXMgdG8gYmUgYWJvdXQgdGJsKDEpIA0KaW50ZXJhY3Rpb24gd2l0aCBncm9wZGYoMSks
IEkgZ3Vlc3MpOg0KDQo8aHR0cDovL2NodXp6bGV3aXQuY28udWsvTGludXhNYW5Cb29rLnBk
ZiNwZGYlM0FibTExODEzPg0KDQpSdW5uaW5nIGFsbCB0aGUgbGludGVycyBJIGtub3cgZG9l
c24ndCB0cmlnZ2VyIGFueSB3YXJuaW5ncyBvbiB0aGUgcGFnZSBzb3VyY2U6DQoNCiQgdG91
Y2ggLi9tYW43L3N1ZmZpeGVzLjcNCiQgbWFrZSBsaW50DQpMSU5UIChncm9mZikJdG1wL2xp
bnQvbWFuNy9zdWZmaXhlcy43LmxpbnQtbWFuLmdyb2ZmLnRvdWNoDQpMSU5UIChtYW5kb2Mp
CXRtcC9saW50L21hbjcvc3VmZml4ZXMuNy5saW50LW1hbi5tYW5kb2MudG91Y2gNCkxJTlQg
KHRibCkJdG1wL2xpbnQvbWFuNy9zdWZmaXhlcy43LmxpbnQtbWFuLnRibC50b3VjaA0KJCB0
b3VjaCAuL21hbjcvc3VmZml4ZXMuNw0KJCBtYWtlIGxpbnQgVj0xDQpMSU5UIChncm9mZikJ
dG1wL2xpbnQvbWFuNy9zdWZmaXhlcy43LmxpbnQtbWFuLmdyb2ZmLnRvdWNoDQp0YmwgbWFu
Ny9zdWZmaXhlcy43IFwNCnwgZXFuIC1UdXRmOCAgXA0KfCB0cm9mZiAtbWFuIC10IC1NIC4v
ZXRjL2dyb2ZmL3RtYWMgLW0gY2hlY2tzdHlsZSAtckNIRUNLU1RZTEU9MyAtd3cgLVR1dGY4
IA0KLXJMTD03OG4gIFwNCnwgZ3JvdHR5IC1jICBcDQp8IGNvbCAtYiAtcCAteCAgXA0KfCAo
ISBncmVwIC1uICcuXHs4MFx9LicgfCBzZWQgJ3MsXixtYW43L3N1ZmZpeGVzLjc6LCcgPiYy
KQ0KdG91Y2ggdG1wL2xpbnQvbWFuNy9zdWZmaXhlcy43LmxpbnQtbWFuLmdyb2ZmLnRvdWNo
DQpMSU5UIChtYW5kb2MpCXRtcC9saW50L21hbjcvc3VmZml4ZXMuNy5saW50LW1hbi5tYW5k
b2MudG91Y2gNCiEgKG1hbmRvYyAtbWFuIC1UbGludCAgbWFuNy9zdWZmaXhlcy43IDI+JjEg
XA0KICAgIHwgZ3JlcCAtdiAnU1RZTEU6IGxvd2VyIGNhc2UgY2hhcmFjdGVyIGluIGRvY3Vt
ZW50IHRpdGxlOicgXA0KICAgIHwgZ3JlcCAtdiAnVU5TVVBQOiBpZ25vcmluZyBtYWNybyBp
biB0YWJsZTonIFwNCiAgICB8IGdyZXAgLXYgJ1dBUk5JTkc6IGNhbm5vdCBwYXJzZSBkYXRl
LCB1c2luZyBpdCB2ZXJiYXRpbTogVEggKGRhdGUpJyBcDQogICAgfCBncmVwIC12ICdXQVJO
SU5HOiBlbXB0eSBibG9jazogVVInIFwNCiAgICB8fDo7IFwNCikgXA0KfCBncmVwICcuJyA+
JjINCnRvdWNoIHRtcC9saW50L21hbjcvc3VmZml4ZXMuNy5saW50LW1hbi5tYW5kb2MudG91
Y2gNCkxJTlQgKHRibCkJdG1wL2xpbnQvbWFuNy9zdWZmaXhlcy43LmxpbnQtbWFuLnRibC50
b3VjaA0KaWYgZ3JlcCAtcSAnXlwuVFMkJyBtYW43L3N1ZmZpeGVzLjcgJiYgISBoZWFkIC1u
MSBtYW43L3N1ZmZpeGVzLjcgfCBncmVwIC1xICdcXCIgDQp0JCc7IFwNCnRoZW4gXA0KCTI+
JjEgZWNobyAibWFuNy9zdWZmaXhlcy43OjE6IG1pc3NpbmcgJ1xcXCIgdCcgY29tbWVudDoi
OyBcDQoJMj4mMSBoZWFkIC1uMSA8bWFuNy9zdWZmaXhlcy43OyBcDQoJZXhpdCAxOyBcDQpm
aQ0KaWYgaGVhZCAtbjEgbWFuNy9zdWZmaXhlcy43IHwgZ3JlcCAtcSAnXFwiIHQkJyAmJiAh
IGdyZXAgLXEgJ15cLlRTJCcgDQptYW43L3N1ZmZpeGVzLjc7IFwNCnRoZW4gXA0KCTI+JjEg
ZWNobyAibWFuNy9zdWZmaXhlcy43OjE6IHNwdXJpb3VzICdcXFwiIHQnIGNvbW1lbnQ6Ijsg
XA0KCTI+JjEgaGVhZCAtbjEgPG1hbjcvc3VmZml4ZXMuNzsgXA0KCWV4aXQgMTsgXA0KZmkN
CmlmIHRhaWwgLW4rMiA8bWFuNy9zdWZmaXhlcy43IHwgZ3JlcCAtcSAnXFwiIHQkJzsgXA0K
dGhlbiBcDQoJMj4mMSBlY2hvICJtYW43L3N1ZmZpeGVzLjc6IHNwdXJpb3VzICdcXFwiIHQn
IG5vdCBpbiBmaXJzdCBsaW5lOiI7IFwNCgkyPiYxIGdyZXAgLW4gJ1xcIiB0JCcgbWFuNy9z
dWZmaXhlcy43IC9kZXYvbnVsbDsgXA0KCWV4aXQgMTsgXA0KZmkNCnRvdWNoIHRtcC9saW50
L21hbjcvc3VmZml4ZXMuNy5saW50LW1hbi50YmwudG91Y2gNCg0KDQoNCk9rYXksIEkgaGF2
ZSBhIGZldyBkaXNhYmxlZCBiZWNhdXNlIHRoZXkgd2VyZSBub2lzeSwgYnV0IEkgZ3Vlc3Mg
dGhleSBzaG91bGRuJ3QgDQpiZSBpbXBvcnRhbnQuICBZb3UgY2FuIHNlZSB0aGUgbWFuZG9j
KDEpIGlnbm9yZWQgd2FybmluZ3MganVzdCBmcm9tIHRoZSBhYm92ZSANCmNvbW1hbmQuICBI
ZXJlIGFyZSB0aGUgZ3JvZmYgb25lczoNCg0KDQokIGNhdCAuL2V0Yy9ncm9mZi90bWFjL2No
ZWNrc3R5bGUudG1hYw0KLmFtIGFuLXN0eWxlLXdhcm4NCi4JZHMgTEFORE1JTkVcIg0KLi4N
Ci5cIg0KLmRlIGVuZC1vZi1pbnB1dC1tYWNybw0KLglpZiBkIExBTkRNSU5FIC5hYiBmb3Vu
ZCBzdHlsZSBwcm9ibGVtczsgYWJvcnRpbmcNCi4uDQouXCINCi5lbSBlbmQtb2YtaW5wdXQt
bWFjcm8NCi5cIg0KLmRlIGFuLWJsYW5rLWxpbmUtdHJhcA0KLglzcA0KLi4NCg0KDQpDaGVl
cnMsDQoNCkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVz
Lz4NCg==

--------------Nvx0S2zgVaZlfSeC69kFxzWm--

--------------JuDpLLkCmK7HJ1N1BpOHlTy4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOdwfsACgkQnowa+77/
2zIvGA//RkiVUoWVwUvUl6TrIzaCx9otbGgy6Mit8CYvRRE7yZYknpUPUWfjGdSI
iYVQDOanXYj8OEcUZ/agjDfz3LfWF6uiXcnTpp5OckZ18fUi34VjUDAmB0TaIke0
dATIDG8/8D3rq5QNGvMEqScH/VMwxyHSKrHPFygddnnP6LKMUzXT0XfeFUAQt8Wd
Zh8vr9jk4Kf2/6O8PbWBoYtfy3HfoM2VLGJN6Qs3ZOBrTXyC3LV/klyYjeW5iGC0
JiWiE5y8EUZc38ibSDfrm6r8lVuMg3/6Breu220UuC9AhowLDWzTd0ennFpnK8ah
N+aepTWweTMeliKBxirxOU7XvoJfCBJescG4mgg2m37B8YBeurybwMu8Sd/QIvWX
MZept+YdUeAjfI92KfWqSxARvK6428Mb6X4M9uZHv0w/ZIVgZDWb209FztzN/MXX
Hb3C8zIjxY2m3VHpqcAWF2MGjFuyIwDFS5cumLSoMY/ORF9W9tLBmvgQhiwCzn/2
f7b1pNpfVqncqOGeQMUmtQJS+/SLADjzRuAJS4a4dXdo6Yf8uB2HmtlOwJMXhbLl
DAKL0CYevBJtcEoH7R104aEmunUPy/0jWCDjyFXOjZTMtdtGnfrVdx+G3sLQlY/B
cIOIrPIf+40rC4TFRC3gIkzURx57Y68NoPZxnPL/sVRHMvOtbYI=
=uUae
-----END PGP SIGNATURE-----

--------------JuDpLLkCmK7HJ1N1BpOHlTy4--
