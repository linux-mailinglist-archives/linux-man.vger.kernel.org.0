Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A21AD5A7CDE
	for <lists+linux-man@lfdr.de>; Wed, 31 Aug 2022 14:05:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiHaMF6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 31 Aug 2022 08:05:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbiHaMFu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 31 Aug 2022 08:05:50 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49D33AC259
        for <linux-man@vger.kernel.org>; Wed, 31 Aug 2022 05:05:48 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id b16so10353601wru.7
        for <linux-man@vger.kernel.org>; Wed, 31 Aug 2022 05:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=m5y6cP6O9Ddd4x8mKwrAj9J1gRDRaSYJIMN9vWv23Sc=;
        b=fm0dGwrr48d1ee9ntRzbpkHWqXJylxsizcafBFOiUt3/Hk1dWeSnKlD95Du2vaDM1s
         l/6x6NLvdvZUjou4Ha6TG3PkGJjrgkmPA9C+xSusyTKkgX2AY1YoDDsdjiewKzy4yiVu
         Kizou7oj0dHtCxBmRjGOgMAhrpC70PJkA/Hc3dQp2JbZz7adWOP10+VCWU0Y/s4nl0li
         QhCRSW1pyRtQeX075d1gfjhY/p5m/GC3zQkw+Obiay0KCskqxzA3zqzyHvC84mV3laAn
         nffz/2ZK0/1ps95BnS0G3/BqmU6c5Vu/LW2DqLYAbBaMrBFx+jrAPou2HQhg+1WwE4Pf
         krwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=m5y6cP6O9Ddd4x8mKwrAj9J1gRDRaSYJIMN9vWv23Sc=;
        b=lmS6vbJQX1UdAJ8ZmTcuLsYQsVo8dPXTRgaA4Xw8PBRlh+wnRRNIYeSQ26uRqHI3gU
         iy4V4c8VmG+JsChnSHtVcM1KgSOYfQOdGabuCJsctTrJsCmadzhA3T9RRTqj9+tlwpZS
         TKy0sgqyh45BRnKo/f6+3yIa8ERBmBvxianLwFcXMbjca16gCGbHumQM+WPNwGYySxMP
         XcOVV0a+JRftvTrbNVam2HKoI6pTURcAUCTPQ82ToA7WR5Myzi9/YOG/+K1MxeIL7Bun
         +5x97qFwpuvA1dXjnBvIHK60imlgCD1QaBNhsX9tflZfFKtLhI6pH9KfxN4Gwj6zWGG5
         ouMg==
X-Gm-Message-State: ACgBeo1MD3+iNdFHWfcsD7luKvrvpgjOQRY2q+H6Icjt6+Ixjh0xmCyt
        w1yjEFGMMKnkN1XWpflulw0TER1DTCI=
X-Google-Smtp-Source: AA6agR6CEf2TAupPZdyaKgedzpAhhGR/rhRFa2bBy0cUBRGfa9iX0fMkxdIsPrwf5l4lkRju7Va41w==
X-Received: by 2002:a5d:6f0c:0:b0:226:eda7:ee93 with SMTP id ay12-20020a5d6f0c000000b00226eda7ee93mr1266361wrb.657.1661947546665;
        Wed, 31 Aug 2022 05:05:46 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f14-20020adff98e000000b002252ec781f7sm11914096wrr.8.2022.08.31.05.05.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 05:05:46 -0700 (PDT)
Message-ID: <9d97bb84-28a7-930d-8186-babd93d431d7@gmail.com>
Date:   Wed, 31 Aug 2022 14:05:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: Repeated ERRORS (was: A typo report in socket(2))
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, Violeta Kabadzhova <vkabadzhova@gmail.com>
References: <CAFxh5QD20xDA0DXYOw9EyWAzN4PCxy8SPEN4zx=rfCieYFgA4w@mail.gmail.com>
 <7cf06ed9-3f25-bd17-dfbf-1488cd53f229@gmail.com>
In-Reply-To: <7cf06ed9-3f25-bd17-dfbf-1488cd53f229@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------31Udzeb2ylEGAvFP2EBOTwis"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        UPPERCASE_50_75 autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------31Udzeb2ylEGAvFP2EBOTwis
Content-Type: multipart/mixed; boundary="------------YE0RElexkMe0LMSSKCxAjsi4";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, Violeta Kabadzhova <vkabadzhova@gmail.com>
Message-ID: <9d97bb84-28a7-930d-8186-babd93d431d7@gmail.com>
Subject: Re: Repeated ERRORS (was: A typo report in socket(2))
References: <CAFxh5QD20xDA0DXYOw9EyWAzN4PCxy8SPEN4zx=rfCieYFgA4w@mail.gmail.com>
 <7cf06ed9-3f25-bd17-dfbf-1488cd53f229@gmail.com>
In-Reply-To: <7cf06ed9-3f25-bd17-dfbf-1488cd53f229@gmail.com>

--------------YE0RElexkMe0LMSSKCxAjsi4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8zMS8yMiAxNDowMSwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IG1hbl9zZWN0
aW9uKCkNCj4gew0KPiAgwqDCoMKgwqBpZiBbICQjIC1sdCAyIF07IHRoZW4NCj4gIMKgwqDC
oMKgwqDCoMKgID4mMiBlY2hvICJVc2FnZTogJHtGVU5DTkFNRVswXX0gPGRpcj4gPHNlY3Rp
b24+Li4uIjsNCj4gIMKgwqDCoMKgwqDCoMKgIHJldHVybiAkRVhfVVNBR0U7DQo+ICDCoMKg
wqDCoGZpDQo+IA0KPiAgwqDCoMKgwqBsb2NhbCBwYWdlPSIkMSI7DQo+ICDCoMKgwqDCoHNo
aWZ0Ow0KPiAgwqDCoMKgwqBsb2NhbCBzZWN0PSIkKiI7DQo+IA0KPiAgwqDCoMKgwqBmaW5k
ICIkcGFnZSIgLXR5cGUgZiBcDQo+ICDCoMKgwqDCoHx4YXJncyB3YyAtbCBcDQo+ICDCoMKg
wqDCoHxncmVwIC12IC1lICdcYjEgJyAtZSAnXGJ0b3RhbFxiJyBcDQo+ICDCoMKgwqDCoHxh
d2sgJ3sgcHJpbnQgJDIgfScgXA0KPiAgwqDCoMKgwqB8c29ydCBcDQo+ICDCoMKgwqDCoHx3
aGlsZSByZWFkIC1yIG1hbnBhZ2U7IGRvDQo+ICDCoMKgwqDCoMKgwqDCoCAoc2VkIC1uICcv
XlwuVEgvLC9eXC5TSC97L15cLlNILyFwfScgPCIkbWFucGFnZSI7DQo+ICDCoMKgwqDCoMKg
wqDCoMKgIGZvciBzIGluICRzZWN0OyBkbw0KPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
IiRtYW5wYWdlIiBcDQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNlZCAtbiBcDQo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLWUgIi9eXC5TSCAkcy9wIiBcDQo+ICDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLWUgIi9eXC5TSCAkcy8sL15cLlNIL3sv
XlwuU0gvIXB9IjsNCj4gIMKgwqDCoMKgwqDCoMKgwqAgZG9uZTspIFwNCj4gIMKgwqDCoMKg
wqDCoMKgIHxtYW4gLVAgY2F0IC1sIC0gMj4vZGV2L251bGw7DQo+ICDCoMKgwqDCoGRvbmU7
DQo+IH0NCj4gDQo+IA0KPiBBbmQgdGhlIGxpc3QgaXM6DQoNCkFuZCB0aGUgbGlzdCBmb3Ig
bWFuMyBpcyBhIGJpdCBzaG9ydGVyOg0KDQoNCiQgbWFuX3NlY3Rpb24gbWFuMyBFUlJPUlMg
fCBncmVwIC1lICdeXHcqKDMpJyAtZSAnXiAgICAgICBFJyB8IGdyZXAgLW8gDQonXiAqW14g
XSonIHwgc2VkICcvXlx3L3AnIHwgdW5pcSAtZCB8IHRhYyB8IHNlZCAtbiAnL14gLywvXlte
IF0vcCcgfCB0YWMgDQp8IHRlZSAvZGV2L3R0eSB8IHdjIC1sDQpGUEFUSENPTkYoMykNCiAg
ICAgICAgRUlOVkFMDQpGVVRJTUVTKDMpDQogICAgICAgIEVOT1NZUw0KR0VUQ1dEKDMpDQog
ICAgICAgIEVJTlZBTA0KR0VURU5UUk9QWSgzKQ0KICAgICAgICBFSU8NCktJTExQRygzKQ0K
ICAgICAgICBFU1JDSA0KTElPX0xJU1RJTygzKQ0KICAgICAgICBFQUdBSU4NCk1LRklGTygz
KQ0KICAgICAgICBFTk9URElSDQpNUV9PUEVOKDMpDQogICAgICAgIEVBQ0NFUw0KICAgICAg
ICBFSU5WQUwNCiAgICAgICAgRU5PRU5UDQpORVdMT0NBTEUoMykNCiAgICAgICAgRUlOVkFM
DQpQT1NJWF9NQURWSVNFKDMpDQogICAgICAgIEVJTlZBTA0KUFRIUkVBRF9BVFRSX1NFVEFG
RklOSVRZX05QKDMpDQogICAgICAgIEVJTlZBTA0KUFRIUkVBRF9DUkVBVEUoMykNCiAgICAg
ICAgRUFHQUlODQpQVEhSRUFEX0pPSU4oMykNCiAgICAgICAgRUlOVkFMDQpQVEhSRUFEX1NF
VEFGRklOSVRZX05QKDMpDQogICAgICAgIEVJTlZBTA0KUFRIUkVBRF9TRVRDQU5DRUxTVEFU
RSgzKQ0KICAgICAgICBFSU5WQUwNClBUSFJFQURfU0VUTkFNRV9OUCgzKQ0KICAgICAgICBF
UkFOR0UNClJBTkRPTSgzKQ0KICAgICAgICBFSU5WQUwNClJBTkRPTV9SKDMpDQogICAgICAg
IEVJTlZBTA0KU0NBTkRJUigzKQ0KICAgICAgICBFTk9URElSDQpTRU1fT1BFTigzKQ0KICAg
ICAgICBFSU5WQUwNClNFTV9XQUlUKDMpDQogICAgICAgIEVJTlZBTA0KU0hNX09QRU4oMykN
CiAgICAgICAgRUFDQ0VTDQogICAgICAgIEVOT0VOVA0KNDcNCg0KDQotLSANCkFsZWphbmRy
byBDb2xvbWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------YE0RElexkMe0LMSSKCxAjsi4--

--------------31Udzeb2ylEGAvFP2EBOTwis
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMPTpkACgkQnowa+77/
2zJD2A//ZkWFo8USywvYGAUYOaKkz6UdP4EzpkvDKxQhOep8MuWyqtdZ9sg1zsRm
yDTT8BnVUoR0NzapAivk8OkozY4u/tQXMcVDRyf/yJYTbqasMLQxf5L//9cgDB4L
99ma8EOi6WQU3zKUgAJFIymqQdkAZ5nLG4vNLVl88n7FSkvb8xAxKE4WMfswRH66
gv1JvoO03PuZelOebFR5nwfbZhFrHoq80eIza99Uq2UtmGG7j6q7N4TFdd54mEpA
sbH5JPc4tzD1jtC7vtX27HM/Rd2QIUr8cmOg0mm9agFFYDQ54i0KSL4Jc00a09zR
eb4XwWcq3p3Fb3sK5gDitxMHk2LeT8z4vU7T3Q+bVIRHq5E9syRQCPzawpwgzhnK
Fq7pBf+zonVnAo6H5fOLNqBQ0QXQt8j75LydeoaRG67MwStO5ItUxAqsCP59/YnK
VO5wyJvjicd7p4v04xTjeakuzg/8Yqdbp3EOcubg559srxbJHEl3UzRs5hwAOopZ
ETR/1XrtsMc+7a5fpArRpwz5YeBlAvYM3D+eR0jn6zKjbVT39LGrvz6Mzs5SAuYQ
Vcn2QPYEWEqNAIPYcMA2KER9S/a7mK2r2hzaBsnXjQg7WHXAQyuzkdHIaGnMQBiY
Pdwy+vyhtE2KqJM/Er1ulxNprVIlFny/Ik3OoC27UWbQ1HQQWzw=
=XHsQ
-----END PGP SIGNATURE-----

--------------31Udzeb2ylEGAvFP2EBOTwis--
