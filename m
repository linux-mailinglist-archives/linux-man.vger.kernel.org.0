Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAA5A62CF8A
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 01:27:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233438AbiKQA1A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 19:27:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234400AbiKQA0z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 19:26:55 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A62B627C1
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:26:54 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id v7so105299wmn.0
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 16:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U8jLXMrC7IE3LG2AmOOFv2pucQoXAfew5E03Ht+EKkU=;
        b=IQWKhdntWDc1rTcO7w7Lq6c1cElnkz1mfszWpk3itIklWkQF5MxhzL3YSzbFF5dDOc
         ZJyuhNxArkgmoE/wflPZapoPqSPvqWxTLrsklxz6Yf3+fC4Gkz+lW6eo1Yieeo9PjuiE
         xb5GZR9uLYvU2uD3NUYfuyxbES8ZuEAj4Mq+LJpLC72TXaIu4FitCTUtFCA+CRM3pH2z
         KlRA85gERnmICy/XDwrmq9zijfnYJ25DbTZDCT4ssKuMCQw8PjYWk3nHXggKfH2ILudI
         +Ik4QK2SH6+eX8a2eVfImb8VFp0jxN6gsLDQo2Nm7jBRiHQZq3fEraDLEvO43ZiozPDg
         D+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U8jLXMrC7IE3LG2AmOOFv2pucQoXAfew5E03Ht+EKkU=;
        b=AaI9ie27/nK0H4cdhSvuXIO6hUuPdW+bRHDu1p0pRVdAYOgzyR9BpVgIOZt2gr2waC
         2M7gdIVyl7IIuQKWmL3AVIyVFYTowTCZ4OKC8KZtlrnwkwyFqbYLmIxZqJfp2x6qj5SO
         anHjubQW9sKpU+6OQzj9vp6678C0r+Khj8s56E/orO4/31RpOJIzYbPPzX5kqWf80rfF
         fl7teS2NOYhrExgrEKtWcy642ojwOIq+h1rsDkHpXHp7ew0ZJ/OmZnxgPOG3rqgjPOVY
         5nykJl+ww7J1nedVw+7S/6R+yhq32EfzFhRRHaa4CIbgj7dAzVnIPhG0BjRFpo3EXTaV
         UpoQ==
X-Gm-Message-State: ANoB5pnVcOvqSxzG4JkNpK7pic96Jy7So2Li2yQgtftyd8JU+1CVQ5Hs
        cBtjVHxHtI5ap93cd4D1mw8=
X-Google-Smtp-Source: AA0mqf6RMMVJ91if+qVrMCnq41TJ+T4QDY11zuvGxCHMmstrILD9XtwzlC6CbXtxStH1Hz7+fnZv0A==
X-Received: by 2002:a05:600c:4c96:b0:3cf:6a66:e324 with SMTP id g22-20020a05600c4c9600b003cf6a66e324mr3561611wmp.158.1668644812826;
        Wed, 16 Nov 2022 16:26:52 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d20-20020a1c7314000000b003cfcf9f9d62sm3525577wmb.12.2022.11.16.16.26.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 16:26:52 -0800 (PST)
Message-ID: <6da4b1d7-238c-c670-400e-a0ef2831d3ce@gmail.com>
Date:   Thu, 17 Nov 2022 01:26:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Thomas Voss <mail@thomasvoss.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
 <20221117001409.16744-1-mail@thomasvoss.com>
 <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
In-Reply-To: <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8GOg1chJ2TKxZV4Vg9rWA4xa"
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
--------------8GOg1chJ2TKxZV4Vg9rWA4xa
Content-Type: multipart/mixed; boundary="------------5ZayFm3rDxHAX0qisRhydgpU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Thomas Voss <mail@thomasvoss.com>
Cc: linux-man@vger.kernel.org, mtk.manpages@gmail.com
Message-ID: <6da4b1d7-238c-c670-400e-a0ef2831d3ce@gmail.com>
Subject: Re: [PATCH v2] EXIT_SUCCESS.3const EXIT_FAILURE.3const: Add pages
References: <00ce9b77-4a83-4039-5dba-eb517c3d3c94@gmail.com>
 <20221117001409.16744-1-mail@thomasvoss.com>
 <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>
In-Reply-To: <1d22a70a-6622-f318-6a04-d30fc0858073@gmail.com>

--------------5ZayFm3rDxHAX0qisRhydgpU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpZb3UgbWlzc2VkIGEgZmV3IGNvbW1lbnRzIGluIHYzLiAgUGxlYXNl
IGNoZWNrIGJlbG93Lg0KQnV0IG1vc3RseSBsb29rcyBnb29kLg0KDQpDaGVlcnMsDQpBbGV4
DQoNCk9uIDExLzE3LzIyIDAxOjE5LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCj4+IGRp
ZmYgLS1naXQgYS9tYW4zY29uc3QvRVhJVF9GQUlMVVJFLjNjb25zdCBiL21hbjNjb25zdC9F
WElUX0ZBSUxVUkUuM2NvbnN0DQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXgg
MDAwMDAwMDAwLi5iYTBkNjJkZjkNCj4+IC0tLSAvZGV2L251bGwNCj4+ICsrKyBiL21hbjNj
b25zdC9FWElUX0ZBSUxVUkUuM2NvbnN0DQo+PiBAQCAtMCwwICsxIEBADQo+PiArLnNvIG1h
bjNjb25zdC9FWElUX1NVQ0NFU1MuM2NvbnN0DQo+PiBkaWZmIC0tZ2l0IGEvbWFuM2NvbnN0
L0VYSVRfU1VDQ0VTUy4zY29uc3QgYi9tYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNjb25zdA0K
Pj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4+IGluZGV4IDAwMDAwMDAwMC4uZjEyNWFmYjMy
DQo+PiAtLS0gL2Rldi9udWxsDQo+PiArKysgYi9tYW4zY29uc3QvRVhJVF9TVUNDRVNTLjNj
b25zdA0KPj4gQEAgLTAsMCArMSw1OSBAQA0KPj4gKy5cIiBDb3B5cmlnaHQgKGMpIDIwMjIg
YnkgVGhvbWFzIFZvc3MgPG1haWxAdGhvbWFzdm9zcy5jb20+DQo+PiArLlwiDQo+PiArLlwi
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBMaW51eC1tYW4tcGFnZXMtY29weWxlZnQNCj4+
ICsuXCINCj4+ICsuXCINCj4+ICsuVEggRVhJVF9TVUNDRVNTIDNjb25zdCAoZGF0ZSkgIkxp
bnV4IG1hbi1wYWdlcyAodW5yZWxlYXNlZCkiDQo+PiArLlNIIE5BTUUNCj4+ICtFWElUX1NV
Q0NFU1MsIEVYSVRfRkFJTFVSRSBcLSB0ZXJtaW5hdGlvbiBzdGF0dXMgY29uc3RhbnRzDQo+
PiArLlNIIExJQlJBUlkNCj4+ICtTdGFuZGFyZCBDIGxpYnJhcnkNCj4+ICsuUkkgKCBsaWJj
ICkNCj4+ICsuU0ggU1lOT1BTSVMNCj4+ICsubmYNCj4+ICsuQiAjaW5jbHVkZSA8c3RkbGli
Lmg+DQo+PiArLlBQDQo+PiArLkJSICIjZGVmaW5lIEVYSVRfU1VDQ0VTUyAiwqAgMA0KPiAN
Cj4gSSBwcmVmZXIgMiBzcGFjZXMgYmV0d2VlbiB0aGUgbWFjcm8gbmFtZSBhbmQgdGhlIGV4
cGFuc2lvbiwgc28gcGxlYXNlIG9uZSBtb3JlIA0KPiBzcGFjZSBiZWZvcmUgdGhlIHF1b3Rl
Lg0KDQp0aGlzDQoNCj4gDQo+PiArLkJSICIjZGVmaW5lIEVYSVRfRkFJTFVSRSAiwqAgLyog
bm9uemVybyAqLw0KPiANCj4gIi8qIG5vbnplcm8gKi8iIG5lZWRzIHRvIGJlIHF1b3RlZCB0
b28uDQoNCnRoaXMNCg0KPiANCj4+ICsuZmkNCj4+ICsuU0ggREVTQ1JJUFRJT04NCj4+ICsu
QiBFWElUX1NVQ0NFU1MNCj4+ICthbmQNCj4+ICsuQiBFWElUX0ZBSUxVUkUNCj4+ICtyZXBy
ZXNlbnQgYSBzdWNjZXNzZnVsIGFuZCB1bnN1Y2Nlc3NmdWwgZXhpdCBzdGF0dXMgcmVzcGVj
dGl2ZWx5IGFuZCBjYW4gYmUgdXNlZA0KPj4gK2FzIGFyZ3VtZW50cyB0byB0aGUNCj4+ICsu
QlIgZXhpdCAoKQ0KPiANCj4gLkJSIGV4aXQgKDMpDQoNCnRoaXMNCg0KPiANCj4+ICtmdW5j
dGlvbi4NCj4+ICsuU0ggQ09ORk9STUlORyBUTw0KPj4gK0M5OSBhbmQgbGF0ZXI7DQo+PiAr
UE9TSVguMS0yMDAxIGFuZCBsYXRlci4NCj4+ICsuU0ggRVhBTVBMRVMNCj4+ICsuXCIgU1JD
IEJFR0lOIChFWElUX1NVQ0NFU1MuYykNCj4+ICsuRVgNCj4+ICsjaW5jbHVkZSA8c3RkaW8u
aD4NCj4+ICsjaW5jbHVkZSA8c3RkbGliLmg+DQo+PiArDQo+PiAraW50DQo+PiArbWFpbihp
bnQgYXJnYywgY2hhciAqYXJndltdKQ0KPj4gK3sNCj4+ICvCoMKgwqAgRklMRSAqZnA7DQo+
PiArDQo+PiArwqDCoMKgIGlmIChhcmdjICE9IDIpIHsNCj4+ICvCoMKgwqDCoMKgwqDCoCBm
cHJpbnRmKHN0ZGVyciwgIlVzYWdlOiAlcyA8ZmlsZT5cZW4iLCBhcmd2WzBdKTsNCj4+ICvC
oMKgwqDCoMKgwqDCoCBleGl0KEVYSVRfRkFJTFVSRSk7DQo+PiArwqDCoMKgIH0NCj4+ICsN
Cj4+ICvCoMKgwqAgaWYgKChmcCA9IGZvcGVuKGFyZ3ZbMV0sICJyIikpID09IE5VTEwpIHsN
Cj4+ICvCoMKgwqDCoMKgwqDCoCBwZXJyb3IoYXJndlsxXSk7DQo+PiArwqDCoMKgwqDCoMKg
wqAgZXhpdChFWElUX0ZBSUxVUkUpOw0KPj4gK8KgwqDCoCB9DQo+PiArDQo+PiArwqDCoMKg
IC8qIE90aGVyIGNvZGUgb21pdHRlZCAqLw0KPj4gKw0KPj4gK8KgwqDCoCBmY2xvc2UoZnAp
Ow0KPj4gK8KgwqDCoCBleGl0KEVYSVRfU1VDQ0VTUyk7DQo+PiArfQ0KPj4gKy5FRQ0KPj4g
Ky5cIiBTUkMgRU5EDQo+PiArLlNIIFNFRSBBTFNPDQo+PiArLkJSIGV4aXQgKDMpDQo+IA0K
PiBBbHNvIGludGVyZXN0aW5nOg0KPiANCj4gLkJSIHN5c2V4aXRzLmggKDNoZWFkKQ0KPiAN
Cj4gQ2hlZXJzLA0KPiANCj4gQWxleA0KPiANCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------5ZayFm3rDxHAX0qisRhydgpU--

--------------8GOg1chJ2TKxZV4Vg9rWA4xa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1f8sACgkQnowa+77/
2zK+4A//U1NWPG1spS51nvO1++B8VfswkoCdmOuHDdPwcApgsju6RapbrLF+C6L/
w20U8UCexkeNFUpu462tT0s6QlQWj6u93pUnDCALcakaKqoGAMzK8VlQlgYGyHUN
SZHVnrbApJqQM5Rt22cKkKnkeCdwxNkOzvE+eB8w28BMF8TL72morzBgOmV2DjO2
VBj+LVxKrUaFRuariZWg3xjtdz+5n7I/Y+G5K9GBIZlzXL9ao0yL5MvE57BlTrUL
IuKcYh29RtUEhMuczvFZRx6VSJI+YbJIu25EpRqRqS2YQaNIbnUzIa95DITp8HIG
yS0956L5NpXyV5WRwk0AbKR6YHmAdfbnlIo58puhSP6lflMYQh6H/NGXU+mXUbFw
j42AEl/5I/nV6h4v8rN0opI4741oThXE4wgOfJB+BGJvPQBdbW676zHo6RzPt/qb
HTAiuVRHhwTgngNbE/Flr1OUjKKZyuQzGGxPx7QinyGEcNiIgGQcOluKq4xUqHvg
Yd0M04bJsqs1da8dnzfKG4V70L1v7E5rqyvnbsU3dqM9i+I36hy0XqqJj5wnqi3G
axOuHrGbWbguLodCUjrnEe1iWuy/kmTR3H4nFikvJudyjql6kHrvo8TijmdGBbp2
gzh9HX4eOjXgaZlxLwJT6ZXLzZWYjTYFILjOzDgDzAteAu2pK2A=
=yAWu
-----END PGP SIGNATURE-----

--------------8GOg1chJ2TKxZV4Vg9rWA4xa--
