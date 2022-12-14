Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B821F64CEA2
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 18:12:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237443AbiLNRL4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 12:11:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237412AbiLNRLy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 12:11:54 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BF1F264BD
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:11:53 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id o15so11823637wmr.4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LJag6MT9nGazTvIaVW3kD8PexYXG/FgFGp7nYNQD8s=;
        b=oGofOjISMmcZA/+qcuQoKE/kjBw5nMnvi5SdmeeSenChnnbvWIpffXXbRcyd1aPpa5
         LpBH7/ZBzC9N+Bf5dNs22Dq9JuChnoJoZAHWvK078fgBvn7v1dbf3CsfWjgf5gmdAwIn
         iZNor07UWhEi0HGyAyAf4cjz8zJtx/TAwP5hn7IbBNqasHajrZ0CBnhlW0opfo9aoqLA
         nU+dGCf1dwNXaJ4DdT0oVsXMfW3grtdYNty2+QQJh0/xVdbaKZiFZpa3QiRbz5oRaekd
         aH1Ml0UaUQ/A+O4zoe7PQTesIGqiPK4kd6SHKNxb7KoU9EvQhAjW+fEI1w70Wuf0me2S
         ySqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7LJag6MT9nGazTvIaVW3kD8PexYXG/FgFGp7nYNQD8s=;
        b=mKUx+Dw/dEiOpJX49STLwjNBE8b7qfM4XOniocmZ19xvp81R6s1hlTJFCQgT8SnDny
         PCrFyfQerxXYyvHOAWw++p0t6Agv1KQF9Y5G2+6BTEDA6mJ6dpUOKxtvKp/9ZjG1N4iM
         LodQaoNPoS6snQj7yGs0hylU2KjDzZAn+nh5iiXhsvQ1mJOPSFJLo3Hbx+2CrSuOzcwo
         69r9QB2UYKTu8Uu/7WxKTxIEfbeh0A4f3bKt6ep6/7L/AP+UIgjnfNW3DUgz07oN6xBL
         UaJdyEeWvRsDnL7t1plCqzNHPLcj5VPImCpARJh5qn2SSpUnA75maRypnaLDPhFYHLpt
         xiJA==
X-Gm-Message-State: ANoB5plkFDysY0OIemAITBdZiKuJ80swAyjZ0oOj687xgdpr8INgWJCe
        8OjkmnnvstJcGnaW8kiRjd5ey7HxL1I=
X-Google-Smtp-Source: AA0mqf59Czh1+eRudU74iPg7ZHM9g1PRhXf43vHQipvKsYsj30oNau4/p/OaTa0mbxXjjLqoZsCnlA==
X-Received: by 2002:a05:600c:21c3:b0:3d2:139e:f64f with SMTP id x3-20020a05600c21c300b003d2139ef64fmr2677426wmj.40.1671037912149;
        Wed, 14 Dec 2022 09:11:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c35d400b003cfa81e2eb4sm3806558wmq.38.2022.12.14.09.11.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 09:11:51 -0800 (PST)
Message-ID: <97feaaf6-f4f4-8cae-afbd-0f43198c3c4a@gmail.com>
Date:   Wed, 14 Dec 2022 18:11:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 1/1] strcpy.3: Rewrite page to document all
 string-copying functions
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-2-alx@kernel.org>
 <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
 <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
In-Reply-To: <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Z49in5ROZI01OL0aPhQTFBs7"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Z49in5ROZI01OL0aPhQTFBs7
Content-Type: multipart/mixed; boundary="------------4xNBrIn6Fn01wv2tejs2nxlK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Jakub Wilk <jwilk@jwilk.net>
Message-ID: <97feaaf6-f4f4-8cae-afbd-0f43198c3c4a@gmail.com>
Subject: Re: [PATCH v3 1/1] strcpy.3: Rewrite page to document all
 string-copying functions
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-2-alx@kernel.org>
 <CAKH6PiUrQzb7vRZxUs0742WnfaLpcUec0QfdJQJ5Di8LqFg+NA@mail.gmail.com>
 <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>
In-Reply-To: <76d2db42-a3ba-9560-91ed-075e94c14f5c@gmail.com>

--------------4xNBrIn6Fn01wv2tejs2nxlK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRG91ZywNCg0KT24gMTIvMTQvMjIgMTc6MzYsIEFsZWphbmRybyBDb2xvbWFyIHdyb3Rl
Og0KPiBPbiAxMi8xNC8yMiAxNzoyMiwgRG91Z2xhcyBNY0lscm95IHdyb3RlOg0KPj4+IGNo
YWluIGNvcHkNCj4+DQo+PiBUaGlzIHRlcm0gaXMgbmV2ZXIgb3ZlcnRseSBkZWZpbmVkLiBU
aGUgZGVmaW5pdGlvbiBtaWdodCBiZSBpbmZlcnJlZA0KPj4gZnJvbSwgIlRvIGNoYWluIGNv
cHkNCj4+IGZ1bmN0aW9ucywgdGhleSBuZWVkIHRvIHJldHVybiBhIHBvaW50ZXIgdG8gdGhl
IGVuZCIsIGJ1dCB0aGUNCj4+IHByb2JsZW1hdGljIGdyYW1tYXIgb2YgdGhlDQo+PiBzZW50
ZW5jZSBkaXZlcnRzIGF0dGVudGlvbiBmcm9tIGl0cyBjb250ZW50Lg0KPiANCj4gT2theSwg
SSdsbCB0cnkgdG8gaW1wcm92ZSB0aGUgd29yZGluZyBpbiB0aGF0IHBhcmFncmFwaDsgaW5k
ZWVkIHRoYXQgc3Vic2VjdGlvbiANCj4gaW50ZW5kZWQgdG8gZGVmaW5lIHRoZSAiY2hhaW4g
Y29weSIgdGVybS4NCj4gDQo+Pg0KDQpJJ2xsIGhvbGQgb24gc2VuZGluZyB2NSB0byBzZWUg
aWYgdGhlcmUgaXMgbW9yZSBmZWVkYmFjayBmcm9tIG90aGVycywgYnV0IGhlcmUncyANCndo
YXQgSSBoYXZlIGZvciBkb2N1bWVudGluZyB0aGUgY2hhaW4gdGVybToNCg0KDQpAQCAtMjAy
LDE1ICsxOTIsMzYgQEAgLlNTIFRlcm1zIChhbmQgYWJicmV2aWF0aW9ucykNCiAgSXQgaXMg
dXNlZCBhcyBhIHNlbnRpbmVsIHZhbHVlLA0KICB0byBiZSBhYmxlIHRvIHRydW5jYXRlIHN0
cmluZ3Mgb3IgY2hhcmFjdGVyIHNlcXVlbmNlcw0KICBpbnN0ZWFkIG9mIG92ZXJydW5uaW5n
IHRoZSBjb250YWluaW5nIGJ1ZmZlci4NCi0uXCIgLS0tLS0gREVTQ1JJUFRJT04gOjogQ29w
eSwgY29uY2F0ZW5hdGUsIGFuZCBjaGFpbi1jb3B5IC0tLS0tLS0tLS0tLS8NCi0uU1MgQ29w
eSwgY29uY2F0ZW5hdGUsIGFuZCBjaGFpbi1jb3B5DQorLlwiIC0tLS0tIERFU0NSSVBUSU9O
IDo6IFRlcm1zIChhbmQgYWJicmV2aWF0aW9ucykgOjogY29weSAtLS0tLS0tLS0tLS0vDQor
LlRQDQorLkkgY29weQ0KK1RoaXMgdGVybSBpcyB1c2VkIHdoZW4NCit0aGUgd3JpdGluZyBz
dGFydHMgYXQgdGhlIGZpcnN0IGVsZW1lbnQgcG9pbnRlZCB0byBieQ0KKy5JUiBkc3QgLg0K
Ky5cIiAtLS0tLSBERVNDUklQVElPTiA6OiBUZXJtcyAoYW5kIGFiYnJldmlhdGlvbnMpIDo6
IGNhdGVuYXRlIC0tLS0tLS0tLw0KKy5UUA0KKy5JIGNhdGVuYXRlDQorVGhpcyB0ZXJtIGlz
IHVzZWQgd2hlbg0KK2EgZnVuY3Rpb24gZmlyc3QgZmluZHMgdGhlIHRlcm1pbmF0aW5nIG51
bGwgYnl0ZSBpbg0KKy5JUiBkc3QgLA0KK2FuZCB0aGVuIHN0YXJ0cyB3cml0aW5nIGF0IHRo
YXQgcG9zaXRpb24uDQorLlwiIC0tLS0tIERFU0NSSVBUSU9OIDo6IFRlcm1zIChhbmQgYWJi
cmV2aWF0aW9ucykgOjogY2hhaW4gLS0tLS0tLS0tLS0vDQorLlRQDQorLkkgY2hhaW4NCitU
aGlzIHRlcm0gaXMgdXNlZCB3aGVuDQoraXQncyB0aGUgcHJvZ3JhbW1lciB3aG8gcHJvdmlk
ZXMgYSBwb2ludGVyIHRvIHRoZQ0KKy5JUiBlbmQgLA0KK2FuZCB0aGUgZnVuY3Rpb24gc3Rh
cnRzIHdyaXRpbmcgYXQgdGhhdCBsb2NhdGlvbi4NCisuSVIgZHN0IC4NCisuXCIgLS0tLS0g
REVTQ1JJUFRJT04gOjogQ29weSwgY2F0ZW5hdGUsIGFuZCBjaGFpbi1jb3B5IC0tLS0tLS0t
LS0tLS0tLS8NCisuU1MgQ29weSwgY2F0ZW5hdGUsIGFuZCBjaGFpbi1jb3B5DQogIE9yaWdp
bmFsbHksDQotdGhlcmUgd2FzIGEgZGlzdGluY3Rpb24gYmV0d2VlbiBmdW5jdGlvbnMgdGhh
dCBjb3B5IGFuZCB0aG9zZSB0aGF0IGNvbmNhdGVuYXRlLg0KK3RoZXJlIHdhcyBhIGRpc3Rp
bmN0aW9uIGJldHdlZW4gZnVuY3Rpb25zIHRoYXQgY29weSBhbmQgdGhvc2UgdGhhdCBjYXRl
bmF0ZS4NCiAgSG93ZXZlciwgbmV3ZXIgZnVuY3Rpb25zIHRoYXQgY29weSB3aGlsZSBhbGxv
d2luZyBjaGFpbmluZw0KICBjb3ZlciBib3RoIHVzZSBjYXNlcyB3aXRoIGEgc2luZ2xlIEFQ
SS4NCiAgVGhleSBhcmUgYWxzbyBhbGdvcml0aG1pY2FsbHkgZmFzdGVyLA0KICBzaW5jZSB0
aGV5IGRvbid0IG5lZWQgdG8gc2VhcmNoIGZvciB0aGUgZW5kIG9mIHRoZSBleGlzdGluZyBz
dHJpbmcuDQotSG93ZXZlciwgZnVuY3Rpb25zIHRoYXQgY29uY2F0ZW5hdGUgaGF2ZSBhIG11
Y2ggc2ltcGxlciB1c2UsDQorSG93ZXZlciwgZnVuY3Rpb25zIHRoYXQgY2F0ZW5hdGUgaGF2
ZSBhIG11Y2ggc2ltcGxlciB1c2UsDQogIHNvIGlmIHBlcmZvcm1hbmNlIGlzIG5vdCBpbXBv
cnRhbnQsDQogIGl0IGNhbiBtYWtlIHNlbnNlIHRvIHVzZSB0aGVtIGZvciBpbXByb3Zpbmcg
cmVhZGFiaWxpdHkuDQogIC5QUA0KDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------4xNBrIn6Fn01wv2tejs2nxlK--

--------------Z49in5ROZI01OL0aPhQTFBs7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaA8YACgkQnowa+77/
2zLLAhAAlBrgGgbW+UsPfOjCB9DrpMxuhzDrMPldGQ9tXaQFj4yxA3ZVFVh1ULcv
T47V1xxRMJSoQZVE+96EN/Ne6nrl+2BVHAg1Xvq/ifI81MshHqUyRppYxKZxnmnl
+V8u6nyoWWXKhpemuxQtesjxIWrdArIF24qoutuirObIulsVuebELzT1uPGfWQ5E
hPazuDyhN3h56dSVA/e3BPXtS6/2pjgT8BUkyjAWp6gtxo/v5+nI5iFRslIWiun0
0eoXapyx1Rau7Bx8IYzKZMvUB4CUYCxvP/D1d21rKUoNBSqo8zz8GgMsjasjkOg5
DtbK56ms0IRoM15qmcBjUDMCMlez0lZ+EiTi+dCGlt+ArIsmuVwRSJJOs8mbKFCY
fxV0r+a6MLVirloQBEUeZwBO6Vm7XxdeHQF4JEsitgTPl9U3ZjGZoRjZ1lZrjhCZ
5l3LiFMW5CK0jgey1O4BASeDO9bTlwpCUFMETXu9nkn+1WhNXRnfhoLqCBjl+L9B
DMbTZSTkx0gWV/v2k0Ve1zR9UXrk9CsWqUDttt1OQi7M1GPerSn875lkP7s5j1/r
Smyula222PwXmunc50Es4Jc2qxuspbYp8z8FHG0mD258huN1nNqKYNp0o4cQCE1E
X2+OS52yV9DYTkQ/LQ/1o/gAr0+LtoT/zqn3j1O4vAJVii/WhbQ=
=JIRx
-----END PGP SIGNATURE-----

--------------Z49in5ROZI01OL0aPhQTFBs7--
