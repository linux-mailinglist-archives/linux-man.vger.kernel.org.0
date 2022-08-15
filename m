Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6270D5951EA
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 07:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232212AbiHPFWg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 01:22:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232197AbiHPFWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 01:22:04 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5486840E1D
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:49:00 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id p10so10486901wru.8
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 14:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=j8sFwSY6V7pzUPRUTq3DnXy30YIaCf7WbLh2JlISW6M=;
        b=GuxMxg9gVQCDowkUnOIcoyxsDR9MXOQvA388hLUX24kWCsJZWHXtq5LgZIFENsW74a
         i7OSg5SQOIkQTrr6I/+jll8rlnArvKI73l6/EGVHhM1CH9UQfvy8M7SdGmFqFAC/IuYt
         PzujS2ksVYvGY3jt3xTb8KqyoLFxKVfhHcwz5YW2hAvTE56igLuyOfHfwa5tPPr5CR+i
         1bgBEyd3862GSCXW8UtqF/BoyxLuxjXLqWuznN1vnzN4rzFAGBE5Wkchc9waH2DM3t9y
         KJcBNvD97Xf/IYwTDTRDzwY52UQ01sFrTDMkUh/dmI3t9vKx1PiW5wnEkzletRB89Fiz
         jtPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=j8sFwSY6V7pzUPRUTq3DnXy30YIaCf7WbLh2JlISW6M=;
        b=K/d5l6ttWZGEVqSoeHrTFCYD9bKNDXU37N1O7rYoq0jlg0q9qQMjM9xcjJ95EGYTRN
         CkCwrKm7MjZ4XyRoyBtiMRhr1ErAKHlCJUgVoYGeMv+OhezCMXDsIRFF4syhaUH2rGZt
         UTsVNopnXQR5EkTkjztCqUo3qbLPGfPWCqb8qwe5eTmEfBR6h5tawKWSU3oyZHdjxoZm
         QD0g+3vpHZUOYkBKiJsukDhKBWyC/KjEWM52IhFCdEb84TUGj76pBLa6h76Z0399DbIH
         6pXAroIo4FyN7SKlc5HN4l7sRg2TItgQdrkPTF5v9ScSCDYGsZpw5kCs82n+xbwf/fDV
         YbZQ==
X-Gm-Message-State: ACgBeo2zNgEZoROXVAPO21lz71HngooQvMF13hBi3oacxxHqAHbxWtYm
        7lYwZt5bGus3gt+2bQVYbkLiR+F88qE=
X-Google-Smtp-Source: AA6agR6goMFeGji2XN2dDoXQBvUUvWMOW81k+V47nIiAPooih2NoKvdv6hKCcHy9tcdk4v42zqBS0w==
X-Received: by 2002:adf:f882:0:b0:21e:d672:1260 with SMTP id u2-20020adff882000000b0021ed6721260mr9946445wrp.257.1660600137680;
        Mon, 15 Aug 2022 14:48:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y2-20020adfe6c2000000b002207cec45cesm10581540wrm.81.2022.08.15.14.48.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 14:48:57 -0700 (PDT)
Message-ID: <6859c2d6-beaf-da65-1f3e-40e6157ae6fd@gmail.com>
Date:   Mon, 15 Aug 2022 23:48:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v3 3/3] getaddrinfo_a.3: actually gnu.cz => gnu.org
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
 <e3066c02785707f606606504abf1d5c9f7d3ddf3.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <e3066c02785707f606606504abf1d5c9f7d3ddf3.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GVQIa5fy0uBfqyeRH7vT5UGF"
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
--------------GVQIa5fy0uBfqyeRH7vT5UGF
Content-Type: multipart/mixed; boundary="------------Kb89K0q7ir3Eb188o0f74LdH";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <6859c2d6-beaf-da65-1f3e-40e6157ae6fd@gmail.com>
Subject: Re: [PATCH v3 3/3] getaddrinfo_a.3: actually gnu.cz => gnu.org
References: <6d48a9a552a9390cd029f2a4ea582f4bd61c4d73.1659461236.git.nabijaczleweli@nabijaczleweli.xyz>
 <e3066c02785707f606606504abf1d5c9f7d3ddf3.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <e3066c02785707f606606504abf1d5c9f7d3ddf3.1660599213.git.nabijaczleweli@nabijaczleweli.xyz>

--------------Kb89K0q7ir3Eb188o0f74LdH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLA0KDQpPbiA4LzE1LzIyIDIzOjMzLCDQvdCw0LEgd3JvdGU6DQo+IEZpeGVz
OiBhMmZlYjNlMTRmNTFhMGU3NGRhZWI2ZjAyMTc4ODdjYTMxNzk5OTY3ICgiZ2V0YWRkcmlu
Zm9fYS4zOg0KPiAgIGdudS5jeiA9PiBnbnUub3JnIikNCj4gU2lnbmVkLW9mZi1ieTogQWhl
bGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5ej4N
Cg0KUGF0Y2ggc2V0IGFwcGxpZWQuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IC0tLQ0KPiAg
IG1hbjMvZ2V0YWRkcmluZm9fYS4zIHwgNCArKy0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4z
L2dldGFkZHJpbmZvX2EuMyBiL21hbjMvZ2V0YWRkcmluZm9fYS4zDQo+IGluZGV4IGE1ZWI4
NTg0My4uMjUyODNkY2U5IDEwMDY0NA0KPiAtLS0gYS9tYW4zL2dldGFkZHJpbmZvX2EuMw0K
PiArKysgYi9tYW4zL2dldGFkZHJpbmZvX2EuMw0KPiBAQCAtMzIzLDcgKzMyMyw3IEBAIFRo
ZSBwcm9ncmFtIG1pZ2h0IGJlIHVzZWQgbGlrZSB0aGlzOg0KPiAgIC5QUA0KPiAgIC5pbiAr
NG4NCj4gICAuRVgNCj4gLSQgXGZCLi9hLm91dCBtaXJyb3JzLmtlcm5lbC5vcmcgZW5vZW50
LmxpbnV4Zm91bmRhdGlvbi5vcmcgZ251LmN6XGZQDQo+ICskIFxmQi4vYS5vdXQgbWlycm9y
cy5rZXJuZWwub3JnIGVub2VudC5saW51eGZvdW5kYXRpb24ub3JnIGdudS5vcmdcZlANCg0K
T29wcywgSSBicm9rZSB0aGlzIGR1cmluZyB0aGUgcmViYXNlIDovDQoNClRoYW5rcyENCg0K
PiAgIG1pcnJvcnMua2VybmVsLm9yZzogMTM5LjE3OC44OC45OQ0KPiAgIGVub2VudC5saW51
eGZvdW5kYXRpb24ub3JnOiBOYW1lIG9yIHNlcnZpY2Ugbm90IGtub3duDQo+ICAgZ251Lm9y
ZzogMjA5LjUxLjE4OC4xMTYNCj4gQEAgLTQwMyw3ICs0MDMsNyBAQCBBbiBleGFtcGxlIHNl
c3Npb24gbWlnaHQgbG9vayBsaWtlIHRoaXM6DQo+ICAgLmluICs0bg0KPiAgIC5FWA0KPiAg
ICQgXGZCLi9hLm91dFxmUA0KPiAtPiBhIG1pcnJvcnMua2VybmVsLm9yZyBlbm9lbnQubGlu
dXhmb3VuZGF0aW9uLm9yZyBnbnUuY3oNCj4gKz4gYSBtaXJyb3JzLmtlcm5lbC5vcmcgZW5v
ZW50LmxpbnV4Zm91bmRhdGlvbi5vcmcgZ251Lm9yZw0KPiAgID4gYyAyDQo+ICAgWzJdIGdu
dS5vcmc6IFJlcXVlc3Qgbm90IGNhbmNlbGVkDQo+ICAgPiB3IDAgMQ0KDQotLSANCkFsZWph
bmRybyBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------Kb89K0q7ir3Eb188o0f74LdH--

--------------GVQIa5fy0uBfqyeRH7vT5UGF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmL6v0gACgkQnowa+77/
2zJ/0hAApO8b73V1QgZ/zjVQDD0lu2RuyEtC7gpn0r5iq5lI0wiqjurBwwYrQq1R
zAeopCwLPdnGH9K0TWlFJj7a+59tgUV2gXypYzlyWiWCMeFhn5oYiyuGGNIz011w
Ixo8XQufnQmfJrvHQnl5VTZdsL3IC3ksoICDB9C4lXpWebXUNJZ6//IVzSM6c0cK
UnvP0k1kUUtGrv2dXkQYFhPIFuGcr+Xb23B2JzJLFpxknevEBsy0wy5TNTh6hsbW
jjY9wM6QvAplj7HVisfF7XZnap8mWtYKoUbPFxvyTksBIMk/Z5Y+/yOOq8JSAW1Z
/GDcF9o8KLZaM9RZTyPOoFmqZxKPTF98nxqjRTJgRVyeHEAZhLQGKU/PV7Tz3jJN
4JupNSE5ouGnwPD87BS+7ZZyV7Mm73WtYTvfPNSnvfMLm0guHqwxyYsLDZiiFoQg
D6+H/JQkf0hMR/YFgRRdqO1Aqyia3+dDp/mESbP1Grep9H0Uf9IWy1RRy77rMadr
sP37c9RYe2eH3P5dfBVhpc7Wy6zcSE9+5iEFZoxA2Ul5lGbbdifKYRu+XXr4MERw
5VqHSR1oSoAET4BEqkkOGunZpKTM3+SiVZKGIiaZmevcSe1HHu6JUT4UvvMP708q
TjggbGtfotufMlcl2fEO09nCRVlBgOlfW+9ALWgxSXU2+xCohnw=
=n1xh
-----END PGP SIGNATURE-----

--------------GVQIa5fy0uBfqyeRH7vT5UGF--
