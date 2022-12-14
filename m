Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 51CB664CEEC
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 18:38:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230129AbiLNRit (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 12:38:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbiLNRis (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 12:38:48 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B21C15828
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:38:47 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id co23so512258wrb.4
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 09:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1FkAa15rLddtgVoBajAcrbd9K+7+6TawUyjKdOkBA0=;
        b=kCzyJ85hXgJx6RfUC3mrXsHDNwUmRRvD0O4tgui5D/HP/8t/GVIs7rs2uLwaNP7Bvy
         SJEuxuLXgIy2cAvc6j9P1KAEWjsyYwnCne9DmGIPtbpR6l/ywBfmgOJZAWfCo+3B7kF+
         71YudNpX130Fu+YtXbNsrP0Q0Vo4+f7pa1o6q70HWkSS8jLn1iPB4D0yRqCQZM2Nt7VH
         ZGaUKiB3l1g6pFuF4btdF5vezX6KpQpy+19UKl/ZDDf4SsNqg/nyePnWW/oM+v3IBizj
         NnL+QDT1fhLOjSEIECcpKikvzY8IOYLWESG4VD0MNBD7iwNcDpiskBLvdeJGNThCOo6O
         +JYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W1FkAa15rLddtgVoBajAcrbd9K+7+6TawUyjKdOkBA0=;
        b=S+M8SAHhGlnQ26Lj/5TkoOmKm9B+OwkuqLtonJkWZ0oFma3uOGnNIDTvQfsHUSm3rW
         2p+ZOXDYpUTxrhlc1+5DxUfPUJ40orSyYXgeEZWq7/XhvLbLmTCmhjbEwXI1+orT0AFp
         h/3pIH4F84GMYxSqPW3A4Rcdsk1XfEWmRzBQHTY4DTptgmJKkeavX4m/9OUB2NPHtyyL
         1LKWkufj5KUiRY69FKSVbuOf8n8JDKXZqs4THSDgzpwaLouzDJBpsUb6HhJAU6DH+7Rk
         +J0mtQr4PsaDb4sp2ZNNhlx8SKVIrkDoxX1M8uYNRlnG16ugHRznndgnb2pavr1yZYI8
         HLGg==
X-Gm-Message-State: ANoB5pmE9Q6ivcJc7OtFGn+R49gxpj6APUjZiI+4Hg1Udnuu72qmIaqH
        UMtV0DENQauc4CIjDv2bEIY=
X-Google-Smtp-Source: AA0mqf4Y2LX3aIhm1mTrOEykcSjACB1lwCWwQV8vfGC8JXTRzmQlnADgNYgiGAonZO2LofQD/4Bb4Q==
X-Received: by 2002:adf:ea8f:0:b0:242:70f1:2134 with SMTP id s15-20020adfea8f000000b0024270f12134mr20457327wrm.60.1671039525887;
        Wed, 14 Dec 2022 09:38:45 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j14-20020a5d564e000000b0024165454262sm3453058wrw.11.2022.12.14.09.38.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 09:38:45 -0800 (PST)
Message-ID: <7fa540c5-5a2c-a6d5-bb83-15916ad50944@gmail.com>
Date:   Wed, 14 Dec 2022 18:38:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [patch] nice.2: wfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org,
        i+linux@1a-insec.net
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
 <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
 <20221214152840.lxramhvf3d5kl3wb@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221214152840.lxramhvf3d5kl3wb@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------HjzbjBCCItmxjO7Fqi2jfhek"
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
--------------HjzbjBCCItmxjO7Fqi2jfhek
Content-Type: multipart/mixed; boundary="------------LDJ655xEcboKeFlYN2w7r2cK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org, i+linux@1a-insec.net
Message-ID: <7fa540c5-5a2c-a6d5-bb83-15916ad50944@gmail.com>
Subject: Re: [patch] nice.2: wfix
References: <53fb2366-517c-9f76-982f-ac2d16d3476c@1a-insec.net>
 <aa61a91d-abc7-fae2-0494-9842b6081bb5@gmail.com>
 <20221214152840.lxramhvf3d5kl3wb@jwilk.net>
In-Reply-To: <20221214152840.lxramhvf3d5kl3wb@jwilk.net>

--------------LDJ655xEcboKeFlYN2w7r2cK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDEyLzE0LzIyIDE2OjI4LCBKYWt1YiBXaWxrIHdyb3RlOg0KPiAq
IEFsZWphbmRybyBDb2xvbWFyIDxhbHgubWFucGFnZXNAZ21haWwuY29tPiwgMjAyMi0xMi0x
MSAxODozMzoNCj4+PiAtdG8gdGhlIG5pY2UgdmFsdWUgZm9yIHRoZSBjYWxsaW5nIHRocmVh
ZC4NCj4+PiArdG8gdGhlIG5pY2UgdmFsdWUgZm9yIHRoZSBjYWxsaW5nIHByb2Nlc3MuDQo+
IA0KPiBuaWNlKCkgYWZmZWN0aW5nIHRoZSB3aG9sZSBwcm9jZXNzLCBub3QganVzdCB0aGUg
Y2FsbGluZyB0aHJlYWQsIGlzIHdoYXQgUE9TSVggDQo+IHJlcXVpcmVzLCBhbmQgd2hhdCBn
bGliYyBkb2N1bWVudHMsIGJ1dCBpdCdzIG5vdCBhY3R1YWxseSBob3cgaXQgd29ya3Mgb24g
TGludXggDQo+IGF0IHRoZSBtb21lbnRbKl0uDQo+IA0KPiBUaGlzIGlzIGRvY3VtZW50ZWQg
aW4gdGhlIHNldHByaW9yaXR5KDIpIG1hbiBwYWdlOg0KPiANCj4gIkFjY29yZGluZyB0byBQ
T1NJWCwgdGhlIG5pY2UgdmFsdWUgaXMgYSBwZXItcHJvY2VzcyBzZXR0aW5nLiBIb3dldmVy
LCB1bmRlciB0aGUgDQo+IGN1cnJlbnQgTGludXgvTlBUTCBpbXBsZW1lbnRhdGlvbiBvZiBQ
T1NJWCB0aHJlYWRzLCB0aGUgbmljZSB2YWx1ZSBpcyBhIA0KPiBwZXItdGhyZWFkIGF0dHJp
YnV0ZTogZGlmZmVyZW50IHRocmVhZHMgaW4gdGhlIHNhbWUgcHJvY2VzcyBjYW4gaGF2ZSBk
aWZmZXJlbnQgDQo+IG5pY2UgdmFsdWVzLiBQb3J0YWJsZSBhcHBsaWNhdGlvbnMgc2hvdWxk
IGF2b2lkIHJlbHlpbmcgb24gdGhlIExpbnV4IGJlaGF2aW9yLCANCj4gd2hpY2ggbWF5IGJl
IG1hZGUgc3RhbmRhcmRzIGNvbmZvcm1hbnQgaW4gdGhlIGZ1dHVyZS4iDQo+IA0KPiBJdCB3
b3VsZCBiZSBwcnVkZW50IHRvIGRvY3VtZW50IHRoaXMgYnVnIGluIHRoZSBuaWNlKDIpIG1h
biBwYWdlIHRvby4NCj4gDQo+IA0KPiBbKl0gSSd2ZSB0ZXN0ZWQgdGhpcyB3aXRoIExpbnV4
IDYuMCArIGdsaWJjIDIuMzYuDQo+IFNlZSB0aGUgYXR0YWNoZWQgdGVzdCBwcm9ncmFtLg0K
DQpJIHRoaW5rIHRoYXQgcGF0Y2ggd291bGQgYmUgYSBncmVhdCBleGFtcGxlIGZvciB0aGUg
cGFnZS4gIFdvdWxkIHlvdSBtaW5kIA0Kc2VuZGluZyBpdCBhcyBhIHBhdGNoPw0KDQpUaGFu
a3MsDQoNCkFsZXgNCg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------LDJ655xEcboKeFlYN2w7r2cK--

--------------HjzbjBCCItmxjO7Fqi2jfhek
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaCiQACgkQnowa+77/
2zLWeQ//YyMoHgZ5L02GIjXGbXgUArs9X4hWcG7HqiOxvwUj3XbW2yfog/hD7BSB
U5p85nBEYkLqcCUKuo8/b9iRd/ufx5l1YtTOguJXgrLmNBNiYw9eHFAXkaYOAUdY
pyYY/LgCtv9Mgc/UHWVfoYS3uA12e6a7gI7t92zPgL+wrYLc+HegB/Xe1DALyXWS
qyWXi4ZU3p9W7VwZdyvdedYw/lWjQimizeQt/Izi7H1qzer0wvNYbRfQDR0VuGTh
JsqOlfI9ZeRegM/2Pea5w3JTjK4tTjkDaXSjz+kGeeYDvEmAVrMynKAz3SWTo3WA
G5wDxh20uiqhNktgbVFktGKZOOrkS2cAOSr846mdQK8cu1rMQNBAYs3cffMHwRsK
xji+yExu0TsZEfWFC9eVQ+AyhyjsFmKwLThi/5GZJ6SX8jUdPvRHKb0Hh2dYNBd5
RpkUWsViXVGzEXjF5hl5FdSgnTApP/iP4W8/K4YCty2PO7lPbqk096PBxlgxW+qk
29N0in9UPFkFUeX1vQhM5hNIbw+kqfBbNospmSvgTx8p5RECBeRgRMnJr8T64Nkm
bJJkTA1RMbiKDrBwIVdeXiK97g9yWJKfTqotaejMYMxbmrAxztSmfyi2bzbyObhi
CWfixwqtcmA9yg5YHkYR38VqXUdekQW/SE5p4uYUHgmP3uPOQaA=
=Kmty
-----END PGP SIGNATURE-----

--------------HjzbjBCCItmxjO7Fqi2jfhek--
