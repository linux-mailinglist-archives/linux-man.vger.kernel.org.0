Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D7EA641931
	for <lists+linux-man@lfdr.de>; Sat,  3 Dec 2022 22:18:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiLCVSz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Dec 2022 16:18:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbiLCVSy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Dec 2022 16:18:54 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50FB61A045
        for <linux-man@vger.kernel.org>; Sat,  3 Dec 2022 13:18:53 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id h10so3539940wrx.3
        for <linux-man@vger.kernel.org>; Sat, 03 Dec 2022 13:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=auQp3UWVNkY67jVg3GYATdbCoGuG5Shnnk7IekUXdmo=;
        b=DigxoLKEQpSuYZIQ+sA+GMd+Iz+gXvYFpICdEhn/rgf2wKFe2pju1INwqSDFf5d/3E
         7VlSIEZHuotU/3NAdXa2KiN0DdKTPi38oFUQHj/HeBDfcc9e9VHTsZcC8XUS/91rzCsY
         ZrMi/9IvX90Y80LtoDLu/dA638l7U6J/V71M1j8c/AT/OZRiHeot57CtmykMKJQwl9t1
         wjbr4813YNgNiFWBS9Cq9zQ61S06uYPsEWeKU9NapXGem9eM8Rc2L2/+P+N8b+Q2bK69
         1ktpg9S2Mf7+rcl9lq912ZTKYdCfjLvdgqfB/J+hf/eFyQbbclKqb8WH3iqzN8MF3GGV
         LeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=auQp3UWVNkY67jVg3GYATdbCoGuG5Shnnk7IekUXdmo=;
        b=jR6Qobm0BQGN83ipgSZafPD8nC+iXbVU1TSMAqDxDshttABuJGnM8qT6/8NMuC6Oez
         /5Y091PTb7PRbveHGcMpOGgB3q8Lq6Et948M+giG3N1A3XMP0/PAnMVGET5B9DIiqBQ3
         aNMMStVy4Lyb+VO8M1ehFi+RPvUXjsr7oNOBPmtZVSJW8um1MO9NuFabGN/Sh64HwxAV
         HxVTinzGclHcyetVA28ZztMBp7ap9irzmqCMHAttEdHKfqpnVqRi37nqG9eugb1O7cPi
         4V5p1F+L+uTqnw+0ivG0L3saQsE19VBF01T0CzcWTYDox7smUw5QfjmqW6aCIFgbvewm
         uecQ==
X-Gm-Message-State: ANoB5pmFvKYuvvJBbwstRDMh/nD7xC//EXtHpCQplAVdOlX+mztFWHr4
        Bsfhc1KLeZoKdnPG6MOiJiY=
X-Google-Smtp-Source: AA0mqf6HhRy38EbuwKJBM8FUzm0vAqL6XLeDSdAGryK/aQstjIL0p/irhE4Oet2Bc+xlXjmaiwOJ5g==
X-Received: by 2002:a5d:52cb:0:b0:236:4a87:2c25 with SMTP id r11-20020a5d52cb000000b002364a872c25mr45619852wrv.19.1670102331871;
        Sat, 03 Dec 2022 13:18:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l38-20020a05600c1d2600b003cf75f56105sm17215056wms.41.2022.12.03.13.18.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Dec 2022 13:18:51 -0800 (PST)
Message-ID: <bb5473ef-0ea3-1be3-83f3-56e91f1aadcf@gmail.com>
Date:   Sat, 3 Dec 2022 22:18:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
To:     Martin Uecker <muecker@gwdg.de>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Michael Matz <matz@suse.de>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
 <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
 <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
 <934a8af56874734dd113a1791ae1c9772c8956fc.camel@gwdg.de>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <934a8af56874734dd113a1791ae1c9772c8956fc.camel@gwdg.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uan8bMjbo5ximvCffjgdLWk3"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uan8bMjbo5ximvCffjgdLWk3
Content-Type: multipart/mixed; boundary="------------mp0mFemhwslhTtIghHd9knxi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Martin Uecker <muecker@gwdg.de>, Jonathan Wakely <jwakely.gcc@gmail.com>,
 Joseph Myers <joseph@codesourcery.com>, Michael Matz <matz@suse.de>
Cc: Ingo Schwarze <schwarze@usta.de>, JeanHeyd Meneide <wg14@soasis.org>,
 linux-man@vger.kernel.org, gcc@gcc.gnu.org
Message-ID: <bb5473ef-0ea3-1be3-83f3-56e91f1aadcf@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
 <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
 <4f36c878-e7a5-761d-8f27-6cc38f5b1c95@gmail.com>
 <934a8af56874734dd113a1791ae1c9772c8956fc.camel@gwdg.de>
In-Reply-To: <934a8af56874734dd113a1791ae1c9772c8956fc.camel@gwdg.de>

--------------mp0mFemhwslhTtIghHd9knxi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFydGluIGFuZCBBbmRyZXchDQoNCk9uIDEyLzMvMjIgMjI6MTUsIE1hcnRpbiBVZWNr
ZXIgd3JvdGU6DQo+IEFtIFNhbXN0YWcsIGRlbSAwMy4xMi4yMDIyIHVtIDIyOjAzICswMTAw
IHNjaHJpZWIgQWxlamFuZHJvIENvbG9tYXI6DQo+IC4uLg0KPj4gU2luY2Ugd2UndmUgc2Vl
biB0aGF0IHVzaW5nIGEgJy4nIHByZWZpeCBzZWVtcyB0byBiZSBwcm9ibGVtYXRpYw0KPj4g
YmVjYXVzZSBvZiBsb29rYWhlYWQsIGFuZCByZWNlbnRseSBNaWNoYWVsIE1hdHogcHJvcG9z
ZWQgdXNpbmcgYQ0KPj4gZGlmZmVyZW50IHB1bmN0dWF0b3IgKGhlIHByb3Bvc2VkICdAJykg
Zm9yIGRpZmZlcmVudGlhdGluZyBwYXJhbWV0ZXJzDQo+PiBmcm9tIHN0cnVjdCBtZW1iZXJz
LCBJIHRoaW5rIGdvaW5nwqAgaW4gdGhhdCBkaXJlY3Rpb24gbWF5IGJlIGEgZ29vZA0KPj4g
aWRlYS4NCj4+DQo+PiBIb3cgYWJvdXQgJyQnPw0KPiANCj4gSSBkb24ndCBzZWUgaG93IHRo
ZSBsb29rYWhlYWQgaXNzdWUgaGFzIGFueXRoaW5nIHRvIGRvIHdpdGggdGhlIGNob2ljZQ0K
PiBvZiB0aGUgc3ltYm9sLg0KDQpJbiBzaW1wbGUgWy5pZGVudGlmaWVyXSBleHByZXNzaW9u
cyBpdCdzIG5vdCBhIHByb2JsZW0uICBJIHdhcyBmb3Jlc2VlaW5nIG1vcmUgDQpjb21wbGV4
IGV4cHJlc3Npb25zLCBhcyBJIHN1Z2dlc3RlZCBlYXJsaWVyLg0KDQo+IEhlcmUsIGFsc28g
d2l0aCB0aGUgY29udGV4dCB3b3VsZCBmdWxseSBkaXNhbWJpZ3VhdGUNCj4gYmV0d2VlbiBv
dGhlciB1c2VzIHNvIEkgZG8gbm90IHRoaW5rIHRoZXJlIGlzIGFueSBpc3N1ZSB3aXRoIHVz
aW5nIHRoaXMNCj4gc3ludGF4LsKgICckJyBpcyBtdWNoIG1vcmUgcHJvYmxlbWF0aWMgYXMg
cGVvcGxlIHVzZSBpdCBpbiBpZGVudGlmaWVycywNCj4gJ0AnIG1heSBjYXVzZSBjb25mdXNp
b24gd2l0aCBvYmplY3RpdmUgQy4NCg0KT24gMTIvMy8yMiAyMjoxMywgQW5kcmV3IFBpbnNr
aSB3cm90ZToNCiA+ICQgaXMgYSBHTlUgZXh0ZW5zaW9uIGZvciBpZGVudGlmaWVycyBhbHJl
YWR5Lg0KID4gU2VlaHR0cHM6Ly9nY2MuZ251Lm9yZy9vbmxpbmVkb2NzL2djYy0xMi4yLjAv
Z2NjL0RvbGxhci1TaWducy5odG1sI0RvbGxhci1TaWducw0KID4NCiA+IFRoYW5rcywNCiA+
IEFuZHJldw0KID4NCg0KSG1tbSwgSSBzZWUuICAnJCcgaXMgdG9vIGJhZC4gICdAJyBpcyBj
b25mdXNpbmcuICBJIHRoaW5rIEknbGwga2VlcCB0aGUgJy4nIGZvciANCm5vdyB0aGVuLCBh
bmQgYXNzdW1lIHRoYXQgdGhlcmUncyBhIGhpZ2ggcG9zc2liaWxpdHkgdGhhdCB3ZSdsbCBu
ZXZlciBoYXZlIA0KY29tcGxleCBleHByZXNzaW9ucyB3aXRoIGl0Lg0KDQo+IA0KPiBNYXJ0
aW4NCj4gDQoNClRoYW5rcyB5b3UhDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------mp0mFemhwslhTtIghHd9knxi--

--------------uan8bMjbo5ximvCffjgdLWk3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOLvTQACgkQnowa+77/
2zKMow//St6eNnz9onnPn1PH+eBxniE9uJeOvt36+Ylg0mZwisMJ6yPBpjCd4VTZ
ohidSp/nffwOZU8oJTDbIUXtOxwnmp2ur5X1kG1nkeLOBZLlV6cxv4XN4o757SOw
YDAw6TyMGGLoOBFn/wGlWpj0E0Apzn7ZAk2g6QWhV09pxZ0RjRmTYatawmjzKhVs
0j3BnLOf0WWgxA0ZiBGpYAr5FndLX0UibHdmm842vxuDasB7IlgPcAye3VkPiBbo
/iAfXD49DLmY0Qs8otJZ5k0QOH25iBeQ4baUdod6d7yZ/l1vzFdnezIFpYs8o5R0
sUFL9nnhF9rLiFqEtd47NyZn0l3bjJVtDIN8IBGGunC0dyDuFMNojgACScNaZJHY
4T7DNIQpmY/fzZQWvToiymwxvBSkHRo40hlui+J90WYACqhScItxNuur0Y7bfCKb
aMH2uRDbaJUBKbRV7ASjGTrnhmBXEmdMfj5BcrY2G1dzE4FmqPtTubiN+mBkiuE9
XLBpz9ydPXOVZTwMV5wHcTwgO0OyJRQ8Y+3iYQ97cyBZoQmKFcUf7O2XWybzP6Zl
nv6yAoD3WlAyi8CBduQcyHt6bIQ9c7soFEZP4HZW7pZPl+MqNK4bo5g0eh/bBY2d
tK8P3se0wCsVmIvnAS96PX0V/1b/0oYOz7BlBagQOqm7zUVEUmU=
=LZdk
-----END PGP SIGNATURE-----

--------------uan8bMjbo5ximvCffjgdLWk3--
