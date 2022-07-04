Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 119EE565F3B
	for <lists+linux-man@lfdr.de>; Mon,  4 Jul 2022 23:57:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231203AbiGDV5u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jul 2022 17:57:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbiGDV5t (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jul 2022 17:57:49 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C57ADF36
        for <linux-man@vger.kernel.org>; Mon,  4 Jul 2022 14:57:48 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id k129so6062041wme.0
        for <linux-man@vger.kernel.org>; Mon, 04 Jul 2022 14:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=/6EvPWd38pjCVuD/ejZE5VKpacityS44YLDVLsz6Sk8=;
        b=Y7knBJCkcT47LQuYT7i8zi6r2gwujad25cU9iOphIjyfqLRPCYpkGU5T2NbwSxVzgy
         9nz4ZqZFOB7eTDFYgKcLJ45I15IdhE479twDAiRbnvvnVsBnhvaokrIdPIHWHKy3ynDR
         SWxeik7KpVUmMEaLBGljpTa5pQioALyKeOTZtk9YbJOoOdLXcyKwgMlbVuQ1zCM8IvsE
         Z89Hj02p7bzpRE9KkGZ5wgTtEjYK9pTv7BSI6OK5sJBGKFUa/djuxN5yb9xEsWvfbfGb
         EZRV78wFYaPhVVQVTxqTff92b2hnsd0imteYjUFRimx+x6EIDNVs/xEC0EZnJlpwL30M
         ZibA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=/6EvPWd38pjCVuD/ejZE5VKpacityS44YLDVLsz6Sk8=;
        b=JUB0qbW7qvnWXm7M+5cXkx6X6oXbmnrUHf3vLLYfjvEWkQJaRrtG/RAk8r7FtHI6To
         g9gVwMyFxX/Pe2PHJar13XZxWTpfyWjcSASaaWB9gVptHWTeyJC67OfDoPiAzpZmFrLv
         pmL/laDYlXnHITSxpRgknz/KudPGahPwvpR4m/HJq8mwije+dJygI1sDj96Y2arsnvpq
         r//0tQv0+eHqQLF18tL4DbShgxuXFvXCGZWzAuBWmi/u9hGTUGIgcauR+LQHwtolGBkN
         YbnfubwzAU8eHNDs3zWwQ6VXVjsrpXiyQTZ6NHl//1Ic1I4mCBcALMe7JvIaj25Ox5+f
         8OxA==
X-Gm-Message-State: AJIora9voe7NtYpPQYcU3woj56aJ89JJobo36t+1+3UQyF8xjfNH6HFk
        8RFnuefouFVNP1EbfUUtV4EC4Jzkv1c=
X-Google-Smtp-Source: AGRyM1v+KZ/xX4iBE3PETS4QpqdY/a0m8wIE5H6fcLitoPSTl1qVcf4wPCtdN6RF4wHxBAp28Wi41A==
X-Received: by 2002:a05:600c:3caa:b0:3a0:18e4:781b with SMTP id bg42-20020a05600c3caa00b003a018e4781bmr33912052wmb.199.1656971867182;
        Mon, 04 Jul 2022 14:57:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m2-20020a05600c3b0200b0039c63f4bce0sm17095853wms.12.2022.07.04.14.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 14:57:46 -0700 (PDT)
Message-ID: <9853f17d-a319-7dde-e1f7-2f7c128209b5@gmail.com>
Date:   Mon, 4 Jul 2022 23:57:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 2/4] fts.3: list primary modes first, remove triplicate
 requirement spiel
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <8a07a62c3dbf9690e6dcb02ecdd2fded7aa17a5b.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <8a07a62c3dbf9690e6dcb02ecdd2fded7aa17a5b.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lMMR7Al0GxARw2lhTRZkCH6U"
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
--------------lMMR7Al0GxARw2lhTRZkCH6U
Content-Type: multipart/mixed; boundary="------------V30pLOHAyWUV59Abt55YDUUQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <9853f17d-a319-7dde-e1f7-2f7c128209b5@gmail.com>
Subject: Re: [PATCH 2/4] fts.3: list primary modes first, remove triplicate
 requirement spiel
References: <552ae4935239ba9240303b1802bd3c8913b564c5.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
 <8a07a62c3dbf9690e6dcb02ecdd2fded7aa17a5b.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <8a07a62c3dbf9690e6dcb02ecdd2fded7aa17a5b.1656887003.git.nabijaczleweli@nabijaczleweli.xyz>

--------------V30pLOHAyWUV59Abt55YDUUQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQoNClBsZWFzZSBicmVhayB0aGlzIGNvbW1pdCBpbnRvIHNtYWxsZXIgY2h1bmtzLg0K
SSdkIGxpa2UgY29tbWl0cyB0aGF0IG1vdmUgY29kZSB0byBfb25seV8gbW92ZSBjb2RlLA0K
YW5kIGRvIGFueXRoaW5nIGVsc2UgKGFkanVzdCBzdHlsZS9mb3JtYXR0aW5nLCByZW1vdmUg
ZHVwbGljYXRlcywgLi4uKSANCmluIGEgc3Vic2VxdWVudCBwYXRjaC4NClNlZSBhbHNvOiAN
CjxodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL2xhdGVzdC9wcm9jZXNzL3N1Ym1p
dHRpbmctcGF0Y2hlcy5odG1sI3N0eWxlLWNoZWNrLXlvdXItY2hhbmdlcz4NCg0KSXQncyBo
YXJkIGZvciBtZSB0byByZWFkIHRoaXMgcGF0Y2ggYXMgaXMuICBTb3JyeSA6Lw0KDQpDaGVl
cnMsDQoNCkFsZXgNCg0KT24gNy80LzIyIDAwOjIzLCDQvdCw0LEgd3JvdGU6DQo+IFNpZ25l
ZC1vZmYtYnk6IEFoZWxlbmlhIFppZW1pYcWEc2thIDxuYWJpamFjemxld2VsaUBuYWJpamFj
emxld2VsaS54eXo+DQo+IC0tLQ0KPiAgIG1hbjMvZnRzLjMgfCA1NiArKysrKysrKysrKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMzYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvbWFuMy9mdHMuMyBiL21hbjMvZnRzLjMNCj4gaW5kZXggYmYzZTA3NWYyLi40
NDQ2NWI4MTUgMTAwNjQ0DQo+IC0tLSBhL21hbjMvZnRzLjMNCj4gKysrIGIvbWFuMy9mdHMu
Mw0KPiBAQCAtMzc2LDEyICszNzYsNiBAQCBUaGUgb3B0aW9ucyBhcmUgc2VsZWN0ZWQgYnkg
T1JpbmcNCj4gICB0aGUgZm9sbG93aW5nIHZhbHVlczoNCj4gICAuXCIgLkJsIC10YWcgLXdp
ZHRoICJGVFNfUEhZU0lDQUwiDQo+ICAgLlRQDQo+IC0uQiBGVFNfQ09NRk9MTE9XDQo+IC1U
aGlzIG9wdGlvbiBjYXVzZXMgYW55IHN5bWJvbGljIGxpbmsgc3BlY2lmaWVkIGFzIGEgcm9v
dCBwYXRoIHRvIGJlDQo+IC1mb2xsb3dlZCBpbW1lZGlhdGVseSB3aGV0aGVyIG9yIG5vdA0K
PiAtLkIgRlRTX0xPR0lDQUwNCj4gLWlzIGFsc28gc3BlY2lmaWVkLg0KPiAtLlRQDQo+ICAg
LkIgRlRTX0xPR0lDQUwNCj4gICBUaGlzIG9wdGlvbiBjYXVzZXMgdGhlDQo+ICAgZnRzIHJv
dXRpbmVzIHRvIHJldHVybg0KPiBAQCAtMzk4LDE0ICszOTIsMjcgQEAgZmllbGQgaXMgb2J0
YWluZWQgdmlhDQo+ICAgLkJSIHN0YXQgKDIpDQo+ICAgd2l0aCBhIGZhbGxiYWNrIHRvDQo+
ICAgLkJSIGxzdGF0ICgyKS4NCj4gLUVpdGhlcg0KPiAtLkIgRlRTX0xPR0lDQUwNCj4gLW9y
DQo+ICsuVFANCj4gICAuQiBGVFNfUEhZU0lDQUwNCj4gLS5JIG11c3QNCj4gLWJlIHByb3Zp
ZGVkIHRvIHRoZQ0KPiAtLkJSIGZ0c19vcGVuICgpDQo+IC1mdW5jdGlvbi4NCj4gK1RoaXMg
b3B0aW9uIGNhdXNlcyB0aGUNCj4gK2Z0cyByb3V0aW5lcyB0byByZXR1cm4NCj4gKy5JIEZU
U0VOVA0KPiArc3RydWN0dXJlcyBmb3Igc3ltYm9saWMgbGlua3MgdGhlbXNlbHZlcyBpbnN0
ZWFkDQo+ICtvZiB0aGUgdGFyZ2V0IGZpbGVzIHRoZXkgcG9pbnQgdG8uDQo+ICtJZiB0aGlz
IG9wdGlvbiBpcyBzZXQsDQo+ICsuSSBGVFNFTlQNCj4gK3N0cnVjdHVyZXMgZm9yIGFsbCBz
eW1ib2xpYyBsaW5rcyBpbiB0aGUNCj4gK2hpZXJhcmNoeSBhcmUgcmV0dXJuZWQgdG8gdGhl
IGFwcGxpY2F0aW9uOg0KPiArdGhlDQo+ICsuSSBmdHNfc3RhdHANCj4gK2lzIG9idGFpbmVk
IHZpYQ0KPiArLkJSIGxzdGF0ICgyKS4NCj4gKy5UUA0KPiArLkIgRlRTX0NPTUZPTExPVw0K
PiArVGhpcyBvcHRpb24gY2F1c2VzIGFueSBzeW1ib2xpYyBsaW5rIHNwZWNpZmllZCBhcyBh
IHJvb3QgcGF0aCB0byBiZQ0KPiArZm9sbG93ZWQgaW1tZWRpYXRlbHksIGFzIGlmIHZpYQ0K
PiArLkJSIEZUU19MT0dJQ0FMICwNCj4gK3JlZ2FyZGxlc3Mgb2YgdGhlIHByaW1hcnkgbW9k
ZS4NCj4gICAuVFANCj4gICAuQiBGVFNfTk9DSERJUg0KPiAgIEFzIGEgcGVyZm9ybWFuY2Ug
b3B0aW1pemF0aW9uLCB0aGUNCj4gQEAgLTQzOSwyOSArNDQ2LDYgQEAgYW5kIGxlYXZlIHRo
ZSBjb250ZW50cyBvZiB0aGUNCj4gICAuSSBzdGF0cA0KPiAgIGZpZWxkIHVuZGVmaW5lZC4N
Cj4gICAuVFANCj4gLS5CIEZUU19QSFlTSUNBTA0KPiAtVGhpcyBvcHRpb24gY2F1c2VzIHRo
ZQ0KPiAtZnRzIHJvdXRpbmVzIHRvIHJldHVybg0KPiAtLkkgRlRTRU5UDQo+IC1zdHJ1Y3R1
cmVzIGZvciBzeW1ib2xpYyBsaW5rcyB0aGVtc2VsdmVzIGluc3RlYWQNCj4gLW9mIHRoZSB0
YXJnZXQgZmlsZXMgdGhleSBwb2ludCB0by4NCj4gLUlmIHRoaXMgb3B0aW9uIGlzIHNldCwN
Cj4gLS5JIEZUU0VOVA0KPiAtc3RydWN0dXJlcyBmb3IgYWxsIHN5bWJvbGljIGxpbmtzIGlu
IHRoZQ0KPiAtaGllcmFyY2h5IGFyZSByZXR1cm5lZCB0byB0aGUgYXBwbGljYXRpb246DQo+
IC10aGUNCj4gLS5JIGZ0c19zdGF0cA0KPiAtaXMgb2J0YWluZWQgdmlhDQo+IC0uQlIgbHN0
YXQgKDIpLg0KPiAtRWl0aGVyDQo+IC0uQiBGVFNfTE9HSUNBTA0KPiAtb3INCj4gLS5CIEZU
U19QSFlTSUNBTA0KPiAtLkkgbXVzdA0KPiAtYmUgcHJvdmlkZWQgdG8gdGhlDQo+IC0uQlIg
ZnRzX29wZW4gKCkNCj4gLWZ1bmN0aW9uLg0KPiAtLlRQDQo+ICAgLkIgRlRTX1NFRURPVA0K
PiAgIEJ5IGRlZmF1bHQsIHVubGVzcyB0aGV5IGFyZSBzcGVjaWZpZWQgYXMgcGF0aCBhcmd1
bWVudHMgdG8NCj4gICAuQlIgZnRzX29wZW4gKCksDQoNCi0tIA0KQWxlamFuZHJvIENvbG9t
YXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------V30pLOHAyWUV59Abt55YDUUQ--

--------------lMMR7Al0GxARw2lhTRZkCH6U
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLDYlkACgkQnowa+77/
2zK1zg//YfzSIxxBrFi0xYMX0ZoZLy72T0i26R3swCebAeOn2a0ojyJnLGbp7h1r
BrZKxc9nyLzzKiKJusIa1osQyKREzQ9FBBTUEOV0siTQbOeubGZpfbkBFGm9Cmjv
culkrkJ621tCSpZKTiB0736PJiwPDQYFGAqVQmPInlGqGHEJfiAjU1okOhqqVcSM
ALWZJZ4vOV4R68mjadwQv/T5ObpwgFh9dbKgenbOKR6zh+BbUbrHjzd3fjHjcxCM
inhlb9F1mx0ARTWxLZ0R1vy6yePgD1kSFT/NWJa+jrnLdtWAVunoCjj5YN42rc++
riCd2NfaN3LrKVhTMQGbQs3Vpqbxz4kemVeNOyIwW+0GtJfh3cmPAdm/eIHsZh/t
6fz71VwsfsaGX0ct9kQiA10JDgq2C6UfVfJgXXEw5dnAMDyQ2Q873qfTg5Nkyann
k7ymDzX82Z5lDJ/1ZtFMeGS194aPtNF8AAvKk0177kivsPVoVRBh8AcbLFNNgXq6
wqptHYL3EqHM7wyKsvDYpM4T5DTja9XSB0snxXDxw/cZil3k5H0ZsXwe7cIcXMWk
Ly5WmoMSHBWs6Yxo5ZpcZ+7utpI+s8rrm/w5rHt7avGBv8lAGWGlDkuWcsgXXqn3
/0BqCuwMcCq3S5V3X15ryZlpv/khQsbFWi8r+e2HNe7jg1KYbdk=
=FQpD
-----END PGP SIGNATURE-----

--------------lMMR7Al0GxARw2lhTRZkCH6U--
