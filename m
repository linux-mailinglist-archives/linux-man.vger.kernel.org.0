Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8926159E892
	for <lists+linux-man@lfdr.de>; Tue, 23 Aug 2022 19:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343562AbiHWRHG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Aug 2022 13:07:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344138AbiHWRFN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Aug 2022 13:05:13 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F91D150B8E
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:34:08 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id m10-20020a05600c3b0a00b003a603fc3f81so7760637wms.0
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=zumYYwhZLIcLspGReQSK8cNFiZ6FqJCAef5Fpq9R8Hg=;
        b=qIptb7dJOHBfCpk71TjsQYVhqbymC6yOzUUP8YCoubjf8khxQRaf+iNlILEuLZuE+N
         VIXc2DISaqqmMIEbNl6+8ezCOXB5udlFpB80zhT8U9v/RNqOenmUJzbcb68VC5VQwCCE
         MUHlnEKMbpLHlkWvizpTTbeZOYBfizQpSg4xPClHDiC+IY9/zEmqVuIG6snlFpF15OQ2
         ZwS9SSYVUIoxNldnaXALmyi6sB1gQ4BVjjwJBoMWSpKZeRn91HOVyStE1/cJ0ngaua8o
         OfDJTAAmLsoxG5znhpMPl+g5wg/3qxeyIIGcKIQD4R4LLPWX2W6IdqOqkVHImC1XWdZr
         g9Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=zumYYwhZLIcLspGReQSK8cNFiZ6FqJCAef5Fpq9R8Hg=;
        b=j5Y4SakhuNyzld9HDvTOn2ewV61/TaYy74JHY3f8AX6x6Jwx2IjVGiCmpOrl/uw6K+
         7CAw2AxNtzTRtgoaZu7hulUG4EWaqK8J8FBiSRwY7G4wQD6Is5DaMxV3uhbf6mC10EPY
         SRTnezodQxSy7+MdckeDCvbmU0rGIHgJig3Ch6UgHXjUiqKwRz+JT0F0PJUiPSyUjaly
         z2rYJgR7wRo8+YyoU9j5T4mJbL+cTJLRGF2GaI0n1M44mwVrsbl6hBGt+e6kiYy3N4T6
         NYNhK3FmX5cxZaTHjjJm+UizCro1j5jRLWBqjjQuXE008M5q3jw7YQukk7MXHc6zR9WY
         pqpg==
X-Gm-Message-State: ACgBeo2q6rECVQUh67xSK8Cf84jilu7mFqmTtshyEYqjgwk7jG+4IP9I
        WOzJtrsQI/TZ/vU98varUWoNHApg11c=
X-Google-Smtp-Source: AA6agR5ZC/2H9UVC1/JA8BE7kLWHo/moF8bk2dbkbBqnF7A/2EmA3dlADVwNT5eS3RM4ZPZnMwIb0g==
X-Received: by 2002:a05:600c:4fc4:b0:3a5:c9ed:ca2 with SMTP id o4-20020a05600c4fc400b003a5c9ed0ca2mr2292635wmq.73.1661261646495;
        Tue, 23 Aug 2022 06:34:06 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h11-20020a05600c350b00b003a63a3b55c3sm15021598wmq.14.2022.08.23.06.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:34:06 -0700 (PDT)
Message-ID: <5235bcbd-11fc-88f4-ba9d-87982081e962@gmail.com>
Date:   Tue, 23 Aug 2022 15:34:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <d7309d7a-445f-efd8-1739-9a9a8cb4eb95@gmail.com>
In-Reply-To: <d7309d7a-445f-efd8-1739-9a9a8cb4eb95@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------d1DD0IYEn8RPE1wO08ZPxU0u"
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
--------------d1DD0IYEn8RPE1wO08ZPxU0u
Content-Type: multipart/mixed; boundary="------------8tflTWoDeFj3REHyt96WdXxt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <5235bcbd-11fc-88f4-ba9d-87982081e962@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <d7309d7a-445f-efd8-1739-9a9a8cb4eb95@gmail.com>
In-Reply-To: <d7309d7a-445f-efd8-1739-9a9a8cb4eb95@gmail.com>

--------------8tflTWoDeFj3REHyt96WdXxt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8yMy8yMiAxNTozMiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEhpIEZsb3Jp
YW4sDQo+IA0KPiBPbiA4LzIzLzIyIDA5OjU4LCBGbG9yaWFuIFdlaW1lciB3cm90ZToNCj4g
DQo+PiBOb3RlIHRoYXQgdGhpcyBhcHByb2FjaCBkb2VzIG5vdCByZWFsbHkgd29yayB0aGF0
IHdlbGwgaW4gcHJhY3RpY2UNCj4+IGJlY2F1c2UgbWFjcm9zIHVzaW5nIF9HZW5lcmljIGV4
cGFuZCBhbGwgdGhlIGFsdGVybmF0aXZlcyAoaW4gY3VycmVudA0KPj4gaW1wbGVtZW50YXRp
b25zOyBkb2luZyB0aGlzIGRpZmZlcmVudGx5IHJlcXVpcmVzIGRldmlhdGluZyBmcm9tIHRo
ZQ0KPj4gbGF5ZXJlZCBpbXBsZW1lbnRhdGlvbiBzdHJhdGVneSBzdWdnZXN0ZWQgaW4gdGhl
IEMgc3RhbmRhcmQpLsKgIFRoaXMNCj4+IG1lYW5zIHRoYXQgX0dlbmVyaWMtdXNpbmcgbWFj
cm9zIGNhbiBvbmx5IGJlIG5lc3RlZCBtYXliZSB0aHJlZSBvciBmb3VyDQo+PiBsZXZlbHMg
ZGVlcCwgZGVwZW5kaW5nIG9uIHRoZSBudW1iZXIgb2YgX0dlbmVyaWMgYWx0ZXJuYXRpdmVz
IG9uIGVhY2gNCj4+IGxldmVsLsKgIEZvciA8dGdtYXRoLmg+LCB0aGlzIGlzIHJlYWxseSBu
b3QgZW5vdWdoLCBzbyBhIGhpZ2gtcXVhbGl0eQ0KPj4gaW1wbGVtZW50YXRpb24gb2YgPHRn
bWF0aC5oPiB1c2luZyBfR2VuZXJpYyBpcyBub3QgZmVhc2libGUuwqAgR0NDDQo+PiBwcm92
aWRlcyBfX2J1aWx0aW5fdGdtYXRoLCB3aGljaCBpcyBkZXNpZ25lZCBpbiBzdWNoIGEgd2F5
IHRoYXQgd2hlbg0KPj4gdXNlZCBpbiBhIG1hY3JvLCB0aGUgbWFjcm8gYXJndW1lbnQgaXMg
b25seSBleHBhbmRlZCBvbmNlLg0KPj4NCj4+IE1heWJlIG1lbnRpb24gdGhpcyB1bmRlciBC
VUdTPw0KPj4NCj4+IEMrKyB0ZW1wbGF0ZXMgZG8gbm90IHN1ZmZlciBmcm9tIHRoaXMgcGFy
dGljdWxhciBwcm9ibGVtLg0KPiANCj4gDQo+IEFoaCwgSSBnZXQgaXQgbm93LsKgIFlvdSBt
ZWFuIHRoYXQgdGhlIHByZXByb2Nlc3NlZCBjb2RlIGNvdWxkIGdyb3cgDQo+IGV4cG9uZW50
aWFsbHksIGV2ZW4gaWYgdGhlIGFzc2VtYmx5IGNvZGUgaXMgc2FmZSBmcm9tIHN1Y2ggYmxv
YXQsIHJpZ2h0Pw0KPiANCj4gWWVhaCwgcHJvYmFibHkgdGhhdCBzaG91bGQgZ28gaW50byBD
QVZFQVRTLg0KPiANCj4gV291bGQgeW91IG1pbmQgc2VuZGluZyBhIHBhdGNoPw0KPiANCj4g
QW55d2F5LCBpZiB0aGUgc3RhbmRhcmQgZGVmaW5lZCBpbnRtYXhfdCBhcyBhIG1hY3JvLCBp
dCBzaG91bGQgcHJvYmFibHkgDQoNCnMvaW50bWF4X3QvaW1heGFicygpLw0KDQo+IG5vdCBz
cGVjaWZ5IGhvdyB0aGF0IG1hY3JvIGlzIGltcGxlbWVudGVkOyB0aGlzIGlzIGp1c3QgYSBz
aW1wbGUgDQo+IHN1Z2dlc3Rpb24sIGJ1dCBhIGJ1aWx0aW4gb2YgY291cnNlIHdvdWxkIGJl
IGJldHRlci4NCj4gDQo+IENoZWVycywNCj4gDQo+IEFsZXgNCj4gDQoNCi0tIA0KQWxlamFu
ZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------8tflTWoDeFj3REHyt96WdXxt--

--------------d1DD0IYEn8RPE1wO08ZPxU0u
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmME10wACgkQnowa+77/
2zKq/Q/9HfJPdDZHyaJQnCl7h+OUmSKDcP1t+YOGMr3lt2JnfGApLsZ33h9Lvfb5
JPyfu4TpC5VSF7wJV3SyGq5sQXGzYT6FvC+zCgBaQHReCTRhYUFb0z5EBTdocIpJ
Ej0vhhkyfZXeDkylATo3jQXLs1V0smbgNw2fVJZjNIewCf/yBmoznKl/c+p9kDY8
cISfCCpJ7Fjj3SvVE/MXPOneJEUov3cFXulx+gmSTgCPceSs/W3BojtOb+XrG33c
GLl/6GZnxK7Cs3SuxL6AoMZk9wB5yJz8wOwqWFUQwM7Dop2T10yJVX4untC2JqAL
p03y1yWWpusgAuwp/kwe7iDuIkXKh3miCRysynLhqLPx3IaGEF/T8VU8aNfGFe14
jd94nO3NYthqnNJWO9T3xDK1Ds7H03w9Qv6hjbxJ2fzKX79LoSFzeJewtTxcg7RO
Qewtke87LQA+5kLOD6vFhv6NLT6vT3GZDz5rMFSSKR4NNHVb6sPYXYYLhf7iiT+X
4ruHgd+rbgfnQmvDXycr/oDjmTxDxHyvMHd28EXQN+uwWf5cZP1U4x++zer7qJ8M
zOLIGozBK1dCJysPHvAcKDt33+QvleKH7+iqJY/FP4nZ4IGqQp1y1zs/TOUIPoi6
pRHQz1LAh4RioZBSb+mQ0SlS0256iuyNdgjrYaQ6t3CtxnHNozI=
=NTZb
-----END PGP SIGNATURE-----

--------------d1DD0IYEn8RPE1wO08ZPxU0u--
