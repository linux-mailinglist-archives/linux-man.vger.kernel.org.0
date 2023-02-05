Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 627B768B041
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 15:21:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjBEOVV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 09:21:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229457AbjBEOVV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 09:21:21 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 951BC728B;
        Sun,  5 Feb 2023 06:21:19 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id bg26so7000774wmb.0;
        Sun, 05 Feb 2023 06:21:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gMdsYT5ijSMhc0a0AHfSoaeT9xxmkHB8pnsdIxQwrOQ=;
        b=LxP9svaycmuQu2Zp0ntroEzRrsuv9L0X7GqohTndprhXSurTbn2oylLC/GDto/B8or
         LQmVGagNwIkSoHV+uKZRDuiAsChOwvL9i3lboOrjNvKQq8+h6G50e6q9hUyoMiD1f0Tl
         nPyhefn9N7SZmITOKEmd4WaFI1hb+me1OfQS7LoNXP1mRvb32nQ+Xv570oxzuuzr5SXe
         qw6/cq0awfFK/EIaY0pYell45nKeCo/qhVRvymABXCsJ2OXamNC4KjXm2+QcninELOWp
         pKmcVFtZivb9UGo/l0dtdWF4gC9+B2D4CR4i7PyZYf/bkzp/GvU0TVO+RY0BEVqwpOmR
         SNAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gMdsYT5ijSMhc0a0AHfSoaeT9xxmkHB8pnsdIxQwrOQ=;
        b=k5UIy7oVFDInSVb3quds7WiSR7Oy20tjRukNad7NKlB8Uahj28yXU+QLAMDyktN8Ka
         /SBxITt1GUySx3izs8SVt1mwS5hY3xBXEZtKyCCbMyCi3+rYoppYwIbYXQYLDRmpjT8e
         xwQMY+A9TY3kTvkvb108BydqOWEMHaKlACRuYlOsVvU5N3LJ5g15ELOmRAdI+2QpDoK0
         puJSxkidaz7h8Pt52xVvbVK1FrAgESFxgbGx9/Kxe2YuOkwrSIA7cXQPExU5NtMfd3Yd
         PAd9baTgQnlpsGyLF8H1DYXAhpgd8NBBFh1+mMl0M3hAgG0MNKBHUUWWqj7EXyaxMLVT
         +x8w==
X-Gm-Message-State: AO0yUKVaHUV2yjyLumyg07yua4H3CIdCXMUoYIILrUlGCwTAFoUC4IJP
        QbSXkiHXSQdehegkVLhnHKA=
X-Google-Smtp-Source: AK7set9UPSaHrwkcPUDx/tZCSc5Ia3mVRQoyivHA8RXhDbjV5MRM2gqPb0ihPts9K7kYPYcVfZwcrg==
X-Received: by 2002:a05:600c:c0d:b0:3dd:a4ad:ae45 with SMTP id fm13-20020a05600c0c0d00b003dda4adae45mr15732871wmb.12.1675606878175;
        Sun, 05 Feb 2023 06:21:18 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o5-20020a5d6845000000b002bdff778d87sm6587486wrw.34.2023.02.05.06.21.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 06:21:17 -0800 (PST)
Message-ID: <e4f35e3f-b1da-8087-de4b-501504ef3c40@gmail.com>
Date:   Sun, 5 Feb 2023 15:21:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] perf_event_open.2: Update recent changes
Content-Language: en-US
To:     Namhyung Kim <namhyung@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Marco Elver <elver@google.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        linux-perf-users@vger.kernel.org,
        Namhyung Kim <namhyung@kernel.org>
References: <20230117080846.588289-1-namhyung@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230117080846.588289-1-namhyung@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JFajlC0roq4ozC0kND71YkbB"
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
--------------JFajlC0roq4ozC0kND71YkbB
Content-Type: multipart/mixed; boundary="------------1AOwILbGs2NzM02s8w03trJG";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Namhyung Kim <namhyung@gmail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Marco Elver <elver@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Kan Liang <kan.liang@linux.intel.com>, Stephane Eranian
 <eranian@google.com>, linux-perf-users@vger.kernel.org,
 Namhyung Kim <namhyung@kernel.org>
Message-ID: <e4f35e3f-b1da-8087-de4b-501504ef3c40@gmail.com>
Subject: Re: [PATCH v3] perf_event_open.2: Update recent changes
References: <20230117080846.588289-1-namhyung@gmail.com>
In-Reply-To: <20230117080846.588289-1-namhyung@gmail.com>

--------------1AOwILbGs2NzM02s8w03trJG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTmFtaHl1bmcsDQoNCk9uIDEvMTcvMjMgMDk6MDgsIE5hbWh5dW5nIEtpbSB3cm90ZToN
Cj4gRnJvbTogTmFtaHl1bmcgS2ltIDxuYW1oeXVuZ0BrZXJuZWwub3JnPg0KPiANCj4gQWRk
IG1pc3NpbmcgcGVyZl9ldmVudF9hdHRyIGZpZWxkcywgbmV3IGV2ZW50IGNvZGVzIGFuZCBz
YW1wbGUgdHlwZS4NCj4gQWxzbyBhZGQgZGVzY3JpcHRpb25zIGZvciBQRVJGX0ZPUk1BVF9M
T1NULg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTmFtaHl1bmcgS2ltIDxuYW1oeXVuZ0BrZXJu
ZWwub3JnPg0KPiAtLS0NCj4gICBtYW4yL3BlcmZfZXZlbnRfb3Blbi4yIHwgMjAxICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDE5MyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL21hbjIvcGVyZl9ldmVudF9vcGVuLjIgYi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yDQo+
IGluZGV4IDhlOTRmYjRhYy4uMDVmMDZjZjY4IDEwMDY0NA0KPiAtLS0gYS9tYW4yL3BlcmZf
ZXZlbnRfb3Blbi4yDQo+ICsrKyBiL21hbjIvcGVyZl9ldmVudF9vcGVuLjINCg0KWy4uLl0N
Cg0KPiBAQCAtMjIwMSw3ICsyMzMyLDkgQEAgc3RydWN0IHsNCj4gICAgICAgY2hhciAgIGRh
dGFbc2l6ZV07ICAvKiBpZiBQRVJGX1NBTVBMRV9TVEFDS19VU0VSICovDQo+ICAgICAgIHU2
NCAgICBkeW5fc2l6ZTsgICAgLyogaWYgUEVSRl9TQU1QTEVfU1RBQ0tfVVNFUiAmJg0KPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpemUgIT0gMCAqLw0KPiAtICAgIHU2NCAg
ICB3ZWlnaHQ7ICAgICAgLyogaWYgUEVSRl9TQU1QTEVfV0VJR0hUICovDQo+ICsgICAgdW5p
b24gcGVyZl9zYW1wbGVfd2VpZ2h0Ow0KDQpUaGlzIGlzIGEgdHlwZSBkZWNsYXJhdGlvbiwg
YnV0IGRlZmluZXMgbm8gc3RvcmFnZS4gIERpZCB5b3UgaW50ZW5kIHRvIHVzZSBpdCBhcyAN
CmFuIGFub255bW91cyB1bmlvbiwgb3IgZGlkIHlvdSBhY2NpZGVudGFsbHkgbWlzcyBhIHZh
cmlhYmxlIG5hbWU/DQoNCkNoZWVycywNCg0KQWxleA0KDQo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAvKiBpZiBQRVJGX1NBTVBMRV9XRUlHSFQgKi8NCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgIC8qIHx8IFBFUkZfU0FNUExFX1dFSUdIVF9TVFJVQ1QgKi8NCj4gICAgICAg
dTY0ICAgIGRhdGFfc3JjOyAgICAvKiBpZiBQRVJGX1NBTVBMRV9EQVRBX1NSQyAqLw0KPiAg
ICAgICB1NjQgICAgdHJhbnNhY3Rpb247IC8qIGlmIFBFUkZfU0FNUExFX1RSQU5TQUNUSU9O
ICovDQo+ICAgICAgIHU2NCAgICBhYmk7ICAgICAgICAgLyogaWYgUEVSRl9TQU1QTEVfUkVH
U19JTlRSICovDQo+IEBAIC0yMjA5LDYgKzIzNDIsMTIgQEAgc3RydWN0IHsNCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAvKiBpZiBQRVJGX1NBTVBMRV9SRUdTX0lOVFIgKi8NCj4g
ICAgICAgdTY0ICAgIHBoeXNfYWRkcjsgICAvKiBpZiBQRVJGX1NBTVBMRV9QSFlTX0FERFIg
Ki8NCj4gICAgICAgdTY0ICAgIGNncm91cDsgICAgICAvKiBpZiBQRVJGX1NBTVBMRV9DR1JP
VVAgKi8NCj4gKyAgICB1NjQgICAgZGF0YV9wYWdlX3NpemU7DQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgLyogaWYgUEVSRl9TQU1QTEVfREFUQV9QQUdFX1NJWkUgKi8NCj4gKyAgICB1
NjQgICAgY29kZV9wYWdlX3NpemU7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgLyogaWYg
UEVSRl9TQU1QTEVfQ09ERV9QQUdFX1NJWkUgKi8NCj4gKyAgICB1NjQgICAgc2l6ZTsgICAg
ICAgIC8qIGlmIFBFUkZfU0FNUExFX0FVWCAqLw0KPiArICAgIGNoYXIgICBkYXRhW3NpemVd
OyAgLyogaWYgUEVSRl9TQU1QTEVfQVVYICovDQo+ICAgfTsNCj4gICAuRUUNCj4gICAuaW4N
ClsuLi5dDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BH
IGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUy
NUJCNQ0K

--------------1AOwILbGs2NzM02s8w03trJG--

--------------JFajlC0roq4ozC0kND71YkbB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfu00ACgkQnowa+77/
2zL+zw/+OAZ8fCLu299d7z339baVltmSV7B2xs85SWIc6j4/DMJBrFV28JhK+gvR
YmtI1Tb/EGyFEKg8UkB7bIlnHNIu0YCz3LRKL9AJTcD4cxAycFfbTNfJBSciR7UO
GU+9UA3Pv0gdAYvlnq+vmf0eDO1RdN6i5xkPiWSGUmHa1WQJygtumAY0J2w5Hl0k
HcloQBBrRx8N2fEceU6nhxBg1S51yPhONLy01uiN3tc0Htopkjs2cNwAehxPawy/
PubDkbIfPQpnra1S55SNKxk5+eLRXbsAM4qVfa9QJrzumaB+lJgrqJSqD/8zIP1/
eXYsWGjDH5XJRVFD8oAl9wMQWPDok36pcqVXcKcHnDqd0892GMXFoc2ybpYXTHz9
fVRPweN6BnrhkipNeiQw1OZ4cJ9UdVKopSFzChytjyRCOiB1Zqh/whRHgPZj1Ptb
pwIzlmi722JTj90W1vwhIlf9PsQS+erVZ3dL4gRyY/XAi9cgIZVQmGUyVyD+lwVJ
/jfTz91i3FMdi+C3NmQEW8o/s0FPKPihYGzlqZERoTLazFgt14BhnVvmW0AhyHYp
LzhiSInqrkzorjMHBHfXXqTiVNjfXr3UPL0gytIQapR38+xA3hTw7yP3XVfFB6aC
n+LW/LeMyQX21TrHhvPokfByotWh112ka6oeDC3U9WH5ZymRbhY=
=c3mC
-----END PGP SIGNATURE-----

--------------JFajlC0roq4ozC0kND71YkbB--
