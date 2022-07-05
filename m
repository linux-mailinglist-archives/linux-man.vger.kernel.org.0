Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B16BE567582
	for <lists+linux-man@lfdr.de>; Tue,  5 Jul 2022 19:23:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbiGERXb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jul 2022 13:23:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229730AbiGERXa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jul 2022 13:23:30 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DC4E19C29
        for <linux-man@vger.kernel.org>; Tue,  5 Jul 2022 10:23:29 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id b26so18556553wrc.2
        for <linux-man@vger.kernel.org>; Tue, 05 Jul 2022 10:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=2fUHwSPSC+qP49cHjY59nL6mZUBVlQSbekF+MgZ4Q1g=;
        b=Qp1QcLqnBg2GNrxetn4RquuiaFkHizAEBMRfAcevWKZP3TP+f4mV/AZZSSbwu8W0to
         FKHuCIcVa9QyVdUaLRZu1lPJbru3j2bc+6euTToZkljz6UbAYyNrTdMctqMfG61nj1ot
         Td2ZbextXzw73u99WJB9C+3ltSk2Qas7M8dFCh0Y599nCk3N+PcAay6Sjj3mG/AcS81L
         wG6tYEn+sRaOoFDtZyj3FO+JAQXDoepjCw+U1/9T/2pUzpL/F40lIEOCx1PWO2zNCXeF
         dkVq2fTbAPej+u8hY5B5zRyo5KCpFYjDyXx7BoxWF0bGVCaIXVTBn1CQPojOQ/aRXitt
         Ts0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=2fUHwSPSC+qP49cHjY59nL6mZUBVlQSbekF+MgZ4Q1g=;
        b=AcMtGfffAmHOCrzUsQ5TBK6TJwUd5njurM0rwhifgyaEVevnUElLoQ5YukHxsbQCPR
         r1HLtZP4CBMilXoo0tZXvzJRhOAusqUmQPmNsannrvm7ojnmtzrtSKBaa0i09WwFj+rd
         Kz2+sxopxHIJW7cNPbI3I39HO0Xm6y3VRqy0UFYNH//qElZmufUKte3PUitQDYRZpEUO
         +Gg6I17+UaPkRDPyrzlzKc4M9N32ReVQwsTzYDCRS+Oy5sx+tWzV/BZpKfqpJV1Vql9p
         Iyqe43KP+WfUGI2s7LjpH4DHoqvBBCAX/w9QHhRqNXNCFtedjuSGEBnjxBnNp5pwrrhS
         WI5Q==
X-Gm-Message-State: AJIora+/m+OEqitk8IDs8OYN0cWfTjmiacYLYjp0xXLBCqJgjChQWzdy
        tW9r11vWhTM+Ve8M6MyE8RqY3jzwNeQ=
X-Google-Smtp-Source: AGRyM1upASby/7u918y/oaDO7QY8bHjaO/LCLZbrnaoXx1z7Sik/EdB3U+YUiy3iwRlFS1GXgS212A==
X-Received: by 2002:a5d:4e04:0:b0:21d:6ec3:38a2 with SMTP id p4-20020a5d4e04000000b0021d6ec338a2mr6845495wrt.362.1657041807963;
        Tue, 05 Jul 2022 10:23:27 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id i13-20020a0560001acd00b0021d78b570dfsm954077wry.108.2022.07.05.10.23.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 10:23:27 -0700 (PDT)
Message-ID: <cea7313f-a653-0c15-83ce-cd9d2f22b694@gmail.com>
Date:   Tue, 5 Jul 2022 19:23:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/5] fts.3: note that lstat(2) may also provide
 fts_statp
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <b39ecb5c36de2198501ed3e12c937b6ddf06596a.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <b39ecb5c36de2198501ed3e12c937b6ddf06596a.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KEMbq390Z00qcRTkKKqn7CpP"
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
--------------KEMbq390Z00qcRTkKKqn7CpP
Content-Type: multipart/mixed; boundary="------------b5jwM0hrG3wPKKZ0Cxag3tR7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <cea7313f-a653-0c15-83ce-cd9d2f22b694@gmail.com>
Subject: Re: [PATCH v2 1/5] fts.3: note that lstat(2) may also provide
 fts_statp
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <b39ecb5c36de2198501ed3e12c937b6ddf06596a.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <b39ecb5c36de2198501ed3e12c937b6ddf06596a.1657038020.git.nabijaczleweli@nabijaczleweli.xyz>

--------------b5jwM0hrG3wPKKZ0Cxag3tR7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA3LzUvMjIgMTg6MjEsINC90LDQsSB3cm90ZToNCj4gSW4gRlRT
X1BIWVNJQ0FMICAgICAgICAgICAgICAgICBtb2RlLCBpdCdzIGFsd2F5cyBsc3RhdCgpDQo+
IEluIEZUU19MT0dJQ0FMICAgICAgICAgICAgICAgICAgbW9kZSwgaXQncyBzdGF0KCkgdW5s
ZXNzIGl0IEVOT0VOVHMNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgaW4gd2hpY2ggY2FzZSBpdCdzIGxzdGF0KCkNCj4gSW4gRlRTX1BIWVNJQ0FMIHwgRlRT
X0NPTUZPTExPVyBtb2RlLCBpdCdzIEZUU19MT0dJQ0FMICBmb3IgcGF0aF9hcmd2DQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFuZCAgRlRTX1BIWVNJQ0FM
IGZvciBjaGlsZHJlbg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQWhlbGVuaWEgWmllbWlhxYRz
a2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4NCg0KUGF0Y2ggc2V0IGFw
cGxpZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0KPiBBbGwgb2YgeW91ciBjb21t
ZW50cyBhcHBsaWVkOyBvcmlnaW5hbCAzLzQgb21pdHRlZCBzaW5jZSB5b3UgYXBwbGllZCBp
dC4NCj4gDQo+ICAgbWFuMy9mdHMuMyB8IDI1ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0N
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9tYW4zL2Z0cy4zIGIvbWFuMy9mdHMuMw0KPiBpbmRleCAw
YjM1MTMxOTIuLjUxOTdiNTg2OCAxMDA2NDQNCj4gLS0tIGEvbWFuMy9mdHMuMw0KPiArKysg
Yi9tYW4zL2Z0cy4zDQo+IEBAIC0xMDQsNyArMTA0LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgX2Z0
c2VudCB7DQo+ICAgICAgIHN0cnVjdCBfZnRzZW50ICpmdHNfcGFyZW50OyAgIC8qIHBhcmVu
dCBkaXJlY3RvcnkgKi8NCj4gICAgICAgc3RydWN0IF9mdHNlbnQgKmZ0c19saW5rOyAgICAg
LyogbmV4dCBmaWxlIHN0cnVjdHVyZSAqLw0KPiAgICAgICBzdHJ1Y3QgX2Z0c2VudCAqZnRz
X2N5Y2xlOyAgICAvKiBjeWNsZSBzdHJ1Y3R1cmUgKi8NCj4gLSAgICBzdHJ1Y3Qgc3RhdCAg
ICAqZnRzX3N0YXRwOyAgICAvKiBzdGF0KDIpIGluZm9ybWF0aW9uICovDQo+ICsgICAgc3Ry
dWN0IHN0YXQgICAgKmZ0c19zdGF0cDsgICAgLyogW2xdc3RhdCgyKSBpbmZvcm1hdGlvbiAq
Lw0KPiAgIC5cIiBBbHNvOg0KPiAgIC5cIiAgICAgaW5vX3QgZnRzX2lubzsgICAgICAgICAg
ICAgICAgICAvKiBpbm9kZSAob25seSBmb3IgZGlyZWN0b3JpZXMpKi8NCj4gICAuXCIgICAg
IGRldl90IGZ0c19kZXY7ICAgICAgICAgICAgICAgICAgLyogZGV2aWNlIChvbmx5IGZvciBk
aXJlY3RvcmllcykqLw0KPiBAQCAtMTg2LDcgKzE4Niw3IEBAIEEgcmVndWxhciBmaWxlLg0K
PiAgIC5UUA0KPiAgIC5CIEZUU19OUw0KPiAgIEEgZmlsZSBmb3Igd2hpY2ggbm8NCj4gLS5C
UiBzdGF0ICgyKQ0KPiArLlJCIFsgbCBdIHN0YXQgKDIpDQo+ICAgaW5mb3JtYXRpb24gd2Fz
IGF2YWlsYWJsZS4NCj4gICBUaGUgY29udGVudHMgb2YgdGhlDQo+ICAgLkkgZnRzX3N0YXRw
DQo+IEBAIC0xOTcsNyArMTk3LDcgQEAgZmllbGQgd2lsbCBiZSBzZXQgdG8gaW5kaWNhdGUg
d2hhdCBjYXVzZWQgdGhlIGVycm9yLg0KPiAgIC5UUA0KPiAgIC5CIEZUU19OU09LDQo+ICAg
QSBmaWxlIGZvciB3aGljaCBubw0KPiAtLkJSIHN0YXQgKDIpDQo+ICsuUkIgWyBsIF0gc3Rh
dCAoMikNCj4gICBpbmZvcm1hdGlvbiB3YXMgcmVxdWVzdGVkLg0KPiAgIFRoZSBjb250ZW50
cyBvZiB0aGUNCj4gICAuSSBmdHNfc3RhdHANCj4gQEAgLTMyOCw3ICszMjgsNyBAQCBmaWVs
ZCBhcmUgdW5kZWZpbmVkLg0KPiAgIC5UUA0KPiAgIC5JIGZ0c19zdGF0cA0KPiAgIEEgcG9p
bnRlciB0bw0KPiAtLkJSIHN0YXQgKDIpDQo+ICsuUkIgWyBsIF0gc3RhdCAoMikNCj4gICBp
bmZvcm1hdGlvbiBmb3IgdGhlIGZpbGUuDQo+ICAgLlwiIC5FbA0KPiAgIC5QUA0KPiBAQCAt
MzkxLDcgKzM5MSwxMyBAQCBpbnN0ZWFkIG9mIHRoZSBzeW1ib2xpYyBsaW5rcyB0aGVtc2Vs
dmVzLg0KPiAgIElmIHRoaXMgb3B0aW9uIGlzIHNldCwgdGhlIG9ubHkgc3ltYm9saWMgbGlu
a3MgZm9yIHdoaWNoDQo+ICAgLkkgRlRTRU5UDQo+ICAgc3RydWN0dXJlcw0KPiAtYXJlIHJl
dHVybmVkIHRvIHRoZSBhcHBsaWNhdGlvbiBhcmUgdGhvc2UgcmVmZXJlbmNpbmcgbm9uZXhp
c3RlbnQgZmlsZXMuDQo+ICthcmUgcmV0dXJuZWQgdG8gdGhlIGFwcGxpY2F0aW9uIGFyZSB0
aG9zZSByZWZlcmVuY2luZyBub25leGlzdGVudCBmaWxlczoNCj4gK3RoZQ0KPiArLkkgZnRz
X3N0YXRwDQo+ICtmaWVsZCBpcyBvYnRhaW5lZCB2aWENCj4gKy5CUiBzdGF0ICgyKQ0KPiAr
d2l0aCBhIGZhbGxiYWNrIHRvDQo+ICsuQlIgbHN0YXQgKDIpLg0KPiAgIEVpdGhlcg0KPiAg
IC5CIEZUU19MT0dJQ0FMDQo+ICAgb3INCj4gQEAgLTQ0MSw3ICs0NDcsMTEgQEAgb2YgdGhl
IHRhcmdldCBmaWxlcyB0aGV5IHBvaW50IHRvLg0KPiAgIElmIHRoaXMgb3B0aW9uIGlzIHNl
dCwNCj4gICAuSSBGVFNFTlQNCj4gICBzdHJ1Y3R1cmVzIGZvciBhbGwgc3ltYm9saWMgbGlu
a3MgaW4gdGhlDQo+IC1oaWVyYXJjaHkgYXJlIHJldHVybmVkIHRvIHRoZSBhcHBsaWNhdGlv
bi4NCj4gK2hpZXJhcmNoeSBhcmUgcmV0dXJuZWQgdG8gdGhlIGFwcGxpY2F0aW9uOg0KPiAr
dGhlDQo+ICsuSSBmdHNfc3RhdHANCj4gK2ZpZWxkIGlzIG9idGFpbmVkIHZpYQ0KPiArLkJS
IGxzdGF0ICgyKS4NCj4gICBFaXRoZXINCj4gICAuQiBGVFNfTE9HSUNBTA0KPiAgIG9yDQo+
IEBAIC03NDgsNyArNzU4LDcgQEAgZm9yIGFueSBvZiB0aGUgZXJyb3JzIHNwZWNpZmllZCBm
b3INCj4gICAuQlIgb3BlbmRpciAoMyksDQo+ICAgLkJSIHJlYWRkaXIgKDMpLA0KPiAgIGFu
ZA0KPiAtLkJSIHN0YXQgKDIpLg0KPiArLlJCIFsgbCBdIHN0YXQgKDIpLg0KPiAgIC5QUA0K
PiAgIEluIGFkZGl0aW9uLA0KPiAgIC5CUiBmdHNfY2hpbGRyZW4gKCksDQo+IEBAIC04MTAs
NiArODIwLDcgQEAgYSBwcm9ncmFtIHVzaW5nIHRoZSBMRlMgQVBJcyAoZS5nLiwgd2hlbiBj
b21waWxpbmcgd2l0aA0KPiAgIC5TSCBTRUUgQUxTTw0KPiAgIC5CUiBmaW5kICgxKSwNCj4g
ICAuQlIgY2hkaXIgKDIpLA0KPiArLkJSIGxzdGF0ICgyKSwNCj4gICAuQlIgc3RhdCAoMiks
DQo+ICAgLkJSIGZ0dyAoMyksDQo+ICAgLkJSIHFzb3J0ICgzKQ0KDQotLSANCkFsZWphbmRy
byBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------b5jwM0hrG3wPKKZ0Cxag3tR7--

--------------KEMbq390Z00qcRTkKKqn7CpP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLEc44ACgkQnowa+77/
2zI2cw/9E6wIVxSPL1takC+oPBxkj5WjAmCpVQ4YECz3YPkBr5Rr6qA76pyyT3VN
aUkfJCNZ9EWhq2zI7do6aWpfpHjRcwPrmdJGfGwC3mCAkkbcDbkeGiGpyDvPNHrS
5Ow1NoRELImI4CINXupFLGE0x695iWoCPE266S2N1SJ+jZhDcc0wzxFnJIxck2Pe
z/sYFdjAhTvUXCcXrNVPhqT742tWtfPa7N/wkcomaABC3s3W3iDRTwiShjZErYR0
1HPly0sQlM5NNBO01kOrls3014BQSNv+b5hfYMbs4pEYf71zFHva5QkiEd2AXR6Z
8A6qsmnQUO5tSROQRvVTeTF7OlW+6LBAlYeypqbABphNKch4q2kwMjymJNB5Xsk9
hvI7mhbaPuPFosOrhHeK4blxz/wrsXwxJvZQnCvFoE3IRk48HnWdO3uNBfmUiKMp
2tkGHI+Y1RdBKpdShfFj2wrTPwf/UcGhi4fe4GGUxX/4H4JESOfb0C94uODBUOJI
Je//Avv+xu3qUNjyiWvZs9ymFFDTZTui0ePfaJ829UpmRvLdJh51EV48axLpxevV
cHRq5OH8zeWXzFX6n5M/DhMEFh3fRVjyODnzww5PaZ9bqKX/2+sgaTdTRztfiDY1
pLLRtvfq0aRPnAaD90odCqvPqJxofMQZOJe6v/x/hZOAqFyerQQ=
=BgU1
-----END PGP SIGNATURE-----

--------------KEMbq390Z00qcRTkKKqn7CpP--
