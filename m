Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A575951B9
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:11:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230247AbiHPFLX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:11:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231164AbiHPFLF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:11:05 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA123E1E
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:18:03 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id ay39-20020a05600c1e2700b003a5503a80cfso4474791wmb.2
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=zfeh725dme1BMGdgfXEGHsSySQRX8XZ579fs2tkqa8s=;
        b=bGpRjJxGxzbxhn2zSrRFZU3BzKkqziXBlaRnAvsCRviUcwVWTLw8Q2OO6flZPiMUuO
         Wo874/DSzXsX/Ok1KXOMX7jpWmAJzPKjNkt40yEMz4rdXapbETP6e0hWqflf+lT4tbbV
         4Jj/diJnRESadhMVe5DEc72Tk4WXiNSKB87CiLDK92ATJtcvD3by+yFPwdDewkArh6eE
         Sh/kwMHkdFRCOj7eIcXJe+0RONbB6+ZNlVs45IZIzV91nKLZt2pP/pYYC/Zdtkehz/Kd
         SsL3/TvBHS8oBmVviWdz2BPfR53WoMcEpK3O9oKcOuxM7DTQjBzlpjin/csCHsvSMbsj
         6g/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=zfeh725dme1BMGdgfXEGHsSySQRX8XZ579fs2tkqa8s=;
        b=U/drFzo4NksNnz2sL+baaLp1wneFWVTy20tMn+VIwlIyAmKF/8T3So3yTPv2ZeWwuN
         wpd/X19Xo7WHL2+ih+uTSsjUy4E5fQvNIanO7hAflD9BuG8wZGx2Mt2RkLtDVrckVqMh
         TMKYjkoSdhsVxxxBaF7KL88GLYi2Qzy2JEqcJ564I/b36PFpdToroTyfJcLXJ8UT++s9
         suE2tA4QpKy/SnxvLzeJMi3e7Cos5I4GL2nikCuVOAWmaY6BBkz1zIjss+sVkdYZt2Ur
         QSSUCi5TQvGCM7uxX6hJDeGZMrg4Q2931endyRcsrIUKU3aw25Ib3hMdBfzBOG/vzfH3
         kWdg==
X-Gm-Message-State: ACgBeo3HaUZDE8bBWsKRRv9ks8RE8r2N/9OUoa57aAkRw2GiZuvTt9dp
        nJs2+f/284abPVNIqaBYGd2o3Dp6/UU=
X-Google-Smtp-Source: AA6agR76fdJiex1uFAtYbxIE15iFqzTvFDPLnkFxmmMEqTdAne1/q8mgL62Ix3nCIegy/soSVrTbEA==
X-Received: by 2002:a05:600c:3516:b0:3a5:c28a:f01d with SMTP id h22-20020a05600c351600b003a5c28af01dmr13115631wmq.165.1660598282228;
        Mon, 15 Aug 2022 14:18:02 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j3-20020a5d6043000000b0021d6dad334bsm8348661wrt.4.2022.08.15.14.18.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:18:01 -0700 (PDT)
Message-ID: <eb10942a-5894-fdb4-9163-5aaa290a6e99@gmail.com>
Date:   Mon, 15 Aug 2022 23:18:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XcfTjSkO6RErhBy8nWVF32g0"
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
--------------XcfTjSkO6RErhBy8nWVF32g0
Content-Type: multipart/mixed; boundary="------------i9HInyRzcCmCxImoo7G0CQrG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <eb10942a-5894-fdb4-9163-5aaa290a6e99@gmail.com>
Subject: Re: [PATCH v2 1/3] getaddrinfo_a.3: {ftp.us => mirrors}.kernel.org,
 likewise for IP
References: <bbdf48b6666c5ced765a2b2e81feaea2270cde78.1659402663.git.nabijaczleweli@nabijaczleweli.xyz>
 <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>

--------------i9HInyRzcCmCxImoo7G0CQrG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA4LzIvMjIgMTk6MjcsINC90LDQsSB3cm90ZToNCj4gZnRwLnVz
Lmtlcm5lbC5vcmcgRUFJX05PTkFNRXM6IHR1cm4gaXQgaW50byBtaXJyb3JzLmtlcm5lbC5v
cmcsDQo+IGJlY2F1c2UgdGhlIGN1cnJlbnQgdGV4dCB1c2VzIDEzOS4xNzguODguOTkgd2hp
Y2ggaXMgbWlycm9ycy5rZXJuZWwub3JnDQoNClRoZSBjdXJyZW50IHRleHQgZG9lc24ndCB1
c2UgMTM5Li4uIDopDQpXb3VsZCB5b3UgbWluZCByZXdyaXRpbmcgdGhlIG1lc3NhZ2U/DQoN
ClRoYW5rcywNCg0KQWxleA0KDQo+IA0KPiBNYWtlIHRoZSBhZGRyZXNzIGNvbnNpc3RlbnQg
YmV0d2VlbiAxMjguMzAuMi4zNg0KPiAoc29tZSBhZGRyZXNzIGluIE1JVCBzcGFjZSkgYW5k
IDEzOS4xNzguODguOTkgKHZhbGlkLCBjdXJyZW50KQ0KPiANCj4gU2lnbmVkLW9mZi1ieTog
QWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5
ej4NCj4gLS0tDQo+ICAgbWFuMy9nZXRhZGRyaW5mb19hLjMgfCAxMiArKysrKystLS0tLS0N
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0K
PiANCj4gZGlmZiAtLWdpdCBhL21hbjMvZ2V0YWRkcmluZm9fYS4zIGIvbWFuMy9nZXRhZGRy
aW5mb19hLjMNCj4gaW5kZXggZTQ3ODc0ZjViLi40YTViMzgwNzggMTAwNjQ0DQo+IC0tLSBh
L21hbjMvZ2V0YWRkcmluZm9fYS4zDQo+ICsrKyBiL21hbjMvZ2V0YWRkcmluZm9fYS4zDQo+
IEBAIC0zMjMsOCArMzIzLDggQEAgVGhlIHByb2dyYW0gbWlnaHQgYmUgdXNlZCBsaWtlIHRo
aXM6DQo+ICAgLlBQDQo+ICAgLmluICs0bg0KPiAgIC5FWA0KPiAtJCBcZkIuL2Eub3V0IGZ0
cC51cy5rZXJuZWwub3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnIGdudS5jelxmUA0K
PiAtZnRwLnVzLmtlcm5lbC5vcmc6IDEyOC4zMC4yLjM2DQo+ICskIFxmQi4vYS5vdXQgbWly
cm9ycy5rZXJuZWwub3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnIGdudS5jelxmUA0K
PiArbWlycm9ycy5rZXJuZWwub3JnOiAxMzkuMTc4Ljg4Ljk5DQo+ICAgZW5vZW50LmxpbnV4
Zm91bmRhdGlvbi5vcmc6IE5hbWUgb3Igc2VydmljZSBub3Qga25vd24NCj4gICBnbnUuY3o6
IDg3LjIzNi4xOTcuMTMNCj4gICAuRUUNCj4gQEAgLTQwMywxNyArNDAzLDE3IEBAIEFuIGV4
YW1wbGUgc2Vzc2lvbiBtaWdodCBsb29rIGxpa2UgdGhpczoNCj4gICAuaW4gKzRuDQo+ICAg
LkVYDQo+ICAgJCBcZkIuL2Eub3V0XGZQDQo+IC0+IGEgZnRwLnVzLmtlcm5lbC5vcmcgZW5v
ZW50LmxpbnV4Zm91bmRhdGlvbi5vcmcgZ251LmN6DQo+ICs+IGEgbWlycm9ycy5rZXJuZWwu
b3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnIGdudS5jeg0KPiAgID4gYyAyDQo+ICAg
WzJdIGdudS5jejogUmVxdWVzdCBub3QgY2FuY2VsZWQNCj4gICA+IHcgMCAxDQo+IC1bMDBd
IGZ0cC51cy5rZXJuZWwub3JnOiBGaW5pc2hlZA0KPiArWzAwXSBtaXJyb3JzLmtlcm5lbC5v
cmc6IEZpbmlzaGVkDQo+ICAgPiBsDQo+IC1bMDBdIGZ0cC51cy5rZXJuZWwub3JnOiAyMTYu
MTY1LjEyOS4xMzkNCj4gK1swMF0gbWlycm9ycy5rZXJuZWwub3JnOiAxMzkuMTc4Ljg4Ljk5
DQo+ICAgWzAxXSBlbm9lbnQubGludXhmb3VuZGF0aW9uLm9yZzogUHJvY2Vzc2luZyByZXF1
ZXN0IGluIHByb2dyZXNzDQo+ICAgWzAyXSBnbnUuY3o6IDg3LjIzNi4xOTcuMTMNCj4gICA+
IGwNCj4gLVswMF0gZnRwLnVzLmtlcm5lbC5vcmc6IDIxNi4xNjUuMTI5LjEzOQ0KPiArWzAw
XSBtaXJyb3JzLmtlcm5lbC5vcmc6IDEzOS4xNzguODguOTkNCj4gICBbMDFdIGVub2VudC5s
aW51eGZvdW5kYXRpb24ub3JnOiBOYW1lIG9yIHNlcnZpY2Ugbm90IGtub3duDQo+ICAgWzAy
XSBnbnUuY3o6IDg3LjIzNi4xOTcuMTMNCj4gICAuRUUNCg0KLS0gDQpBbGVqYW5kcm8gQ29s
b21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------i9HInyRzcCmCxImoo7G0CQrG--

--------------XcfTjSkO6RErhBy8nWVF32g0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6uAgACgkQnowa+77/
2zL5yw/9Fn5drRHqJYYhAWT5cJ00+rnaTsBfnnFpplRlYPZ0tvbK38DbZ2/GZCwf
WfQ0Hh2gWot06zAbi6+px64ymKN8Gow7TBtyQdoSUkSXcdIHX97avzY6euVNksvQ
Ck4epg4Bjo1HyFEy29fJifoh2PhF2aoaPdxmVRRkMhOxJ6KnBLceYRvv2LVSWV1H
+iU+D5nG0bczDmbwIIBawLZZtRMiV2GVpxQsGYRu11jO4EyQz6r0PtWrX9CI2OEE
RKE55P+Ew+71BggvYwSMFttOm6JtuFlDQ/fea87iX/eyli7hFztWiJfldyjRGLcZ
gQTCV9wmbWM4PBIUB047X5RurXQ2qnfs5jIJDKAy0U6woXgV/7IhezeO7+1ynHNt
y845Vwfler9x6ZnDENtQrarSFvw1hkCtwZ798xjDw9O8ouCOILiJu1yEhZOY1kNa
N/A1y/CqQgiVXMIzB5sycLF32lcdD6D8pAQKaU4tfgSZKGZKXYp8z1nI4Ql8X/na
3tKD/Qw8b4IW80KNRysZabnuQbP/ETwns4FvFbX2dU5jn1LOJJ9HEOWI6/eN68uP
5RuOQ/2DR7kk7GTTcd+i7lZNxH1UcrZvv6b1HI/cAveDHrZxRGqsyRam8FrJdKai
JAz4WYc5KVlCJxi37AhKJodkUX9OQ1lmhNBMwjvv/0zHBxjQJ3Y=
=8k/3
-----END PGP SIGNATURE-----

--------------XcfTjSkO6RErhBy8nWVF32g0--
