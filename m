Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD5974BE82
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbjGHQ4N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:56:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQ4N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:56:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4663ADB
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:56:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D5C6860D2C
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:56:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E5F9C433C8;
        Sat,  8 Jul 2023 16:56:10 +0000 (UTC)
Message-ID: <057290c1-576b-7c88-b593-1fc5fd4ae04a@gmail.com>
Date:   Sat, 8 Jul 2023 18:56:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] fanotify_init.2: remove empty pre-header line
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9KsMrZ8E6B2VHgZdYCmV2tYM"
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
        FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,NML_ADSP_CUSTOM_MED,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------9KsMrZ8E6B2VHgZdYCmV2tYM
Content-Type: multipart/mixed; boundary="------------To23KUAaOkJme5pubRAGQ0mr";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <057290c1-576b-7c88-b593-1fc5fd4ae04a@gmail.com>
Subject: Re: [PATCH] fanotify_init.2: remove empty pre-header line
References: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
In-Reply-To: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>

--------------To23KUAaOkJme5pubRAGQ0mr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8zLzIzIDE2OjQzLCDQvdCw0LEgd3JvdGU6DQo+IFdoaWNoIHlpZWxkcyBhbiBlbXB0
eSBsaW5lIGluIHRoZSBmb3JtYXR0ZWQgb3V0cHV0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
QWhlbGVuaWEgWmllbWlhxYRza2EgPG5hYmlqYWN6bGV3ZWxpQG5hYmlqYWN6bGV3ZWxpLnh5
ej4NCj4gLS0tDQoNCkFwcGxpZWQuICBUaGFua3MsDQpBbGV4DQoNCj4gICBtYW4yL2Zhbm90
aWZ5X2luaXQuMiB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW4yL2Zhbm90aWZ5X2luaXQu
MiBiL21hbjIvZmFub3RpZnlfaW5pdC4yDQo+IGluZGV4IDY1ZDczNTY1Zi4uM2Y0MzU5ZTgz
IDEwMDY0NA0KPiAtLS0gYS9tYW4yL2Zhbm90aWZ5X2luaXQuMg0KPiArKysgYi9tYW4yL2Zh
bm90aWZ5X2luaXQuMg0KPiBAQCAtMSw0ICsxLDQgQEANCj4gLVwiIENvcHlyaWdodCAoQykg
MjAxMywgSGVpbnJpY2ggU2NodWNoYXJkdCA8eHlwcm9uLmdscGtAZ214LmRlPg0KPiArLlwi
IENvcHlyaWdodCAoQykgMjAxMywgSGVpbnJpY2ggU2NodWNoYXJkdCA8eHlwcm9uLmdscGtA
Z214LmRlPg0KPiAgIC5cIg0KPiAgIC5cIiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTGlu
dXgtbWFuLXBhZ2VzLWNvcHlsZWZ0DQo+ICAgLlRIIGZhbm90aWZ5X2luaXQgMiAoZGF0ZSkg
IkxpbnV4IG1hbi1wYWdlcyAodW5yZWxlYXNlZCkiDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxl
amFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMx
MjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0KDQo=

--------------To23KUAaOkJme5pubRAGQ0mr--

--------------9KsMrZ8E6B2VHgZdYCmV2tYM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSplSgACgkQnowa+77/
2zKwFA/+PFZMCRsqz9GCLT8Bt4/fDZs7HqCE6JxsWi2S5MDmKI14Txkpni0H/Nyx
DaHmDFEKvH1K5PtovHe5aj/dum+pcSoPIsPwDN3k2Y5Wg2bINnPK8nbgfKQKUUvS
p5a3ygX3A6a/Wn2jWZqe2gu1p4DHXViVToNRGf96sbbtKF3hJtBpC3dSssPUCfzK
u3FU/jPm5t8V6nj8RaXReeva0nRbbjecWf8LeNEM9/lZFci4qrz7GSdcfx4KCS6U
P1BmXbPe+f1kPEFp6uVEuIjh7jkkU3Lfi+DNibuSEFOwXnKOCy2ANXj2TJnI3SBb
Jiek2HaII7BsIVjvLzX/tt5GPumP8BySVvKMLdKFnMhBvZ8mAEDyqxoaKHKLTG+J
FoHg6Ivxn+LcUTfCHsTRLS7Y9OQoB8O4UaTUqpQ28IlJfjn2VyNS1ca6yVqztoB0
iW5xVa3gknnae7taLnrzoAB+ucBL4O+L8WlrVXKvCLcI2SLjoetc31Dwzzv1xSPV
/EtodN1Swjo1WQg1neD/R2FnoSekDQvjsQG/vJOJbvtoNalOoHGNqed8kXbCZJ6s
Zp3ynIFbI278NKN+9wTKw8gTRe1FTvrXMqmdlqz6ybGLSI75rmP034YO9pygznya
QwAsgDkC3lodb6th7HKZlpvpuv74aXdtF1VnGFFTGnXzmPGln98=
=gzF0
-----END PGP SIGNATURE-----

--------------9KsMrZ8E6B2VHgZdYCmV2tYM--
