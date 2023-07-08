Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89EC974BE83
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 18:56:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbjGHQ4V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 12:56:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229483AbjGHQ4V (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 12:56:21 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CEDFDB
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 09:56:20 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0092E60D2C
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 16:56:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 975ADC433C7;
        Sat,  8 Jul 2023 16:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1688835379;
        bh=Yq677CcG8u64UqJXxNMTdfY4BdNQaH0wzxtWhYeySSc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=iQm9jhRqZJsfTJ79EZjayhZVgAdGhd+R6guNDESp4brQu6yYhxYZ5ZhMMo/RnLhNY
         Z2zceiiA29/m3MRmqPjClp5yDkY0kIyO3zX3e5eDoOI00/yu/K2D4I9JdrDaQG9kz9
         vGzs9GTn1PX1LAMoJqqtYNsHkduqwqDaEKf2i+aVK02IRt0c4LEBIoZiBlMkFVlYL7
         /cxHO4B5RmRUuV2O2U3kHTsPrcXZC6haDvmki+d+3SQA7wBsOMlU75ZBUINJsBWK0p
         fgnB7zAF9kibl0svYSaWDU+hXwMH7iZ9XQPprXj2v5S6wDu9pMgYmF99MCiZlioai7
         Jx7dAoSdDfxbQ==
Message-ID: <99f965e9-e9c0-1eb8-aeb7-0f411f9d0356@kernel.org>
Date:   Sat, 8 Jul 2023 18:56:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] fanotify_init.2: remove empty pre-header line
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
From:   Alejandro Colomar <alx@kernel.org>
In-Reply-To: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kSQBtWievtIw1nO6RK6HhJTv"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kSQBtWievtIw1nO6RK6HhJTv
Content-Type: multipart/mixed; boundary="------------kSKmD0yq4k0jAbnqOCBvOux8";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <99f965e9-e9c0-1eb8-aeb7-0f411f9d0356@kernel.org>
Subject: Re: [PATCH] fanotify_init.2: remove empty pre-header line
References: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>
In-Reply-To: <egwuot7zgfcelb6632w4rkneeccrqug45aumfntkzhevrxcbcp@hdcujacv2gyt>

--------------kSKmD0yq4k0jAbnqOCBvOux8
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

--------------kSKmD0yq4k0jAbnqOCBvOux8--

--------------kSQBtWievtIw1nO6RK6HhJTv
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSplTAACgkQnowa+77/
2zJScw/+Lvzeeq/uImn7TZz2ZU4dlFBDFvNnwFLfAE2BgJjO+gLJ76FvhCEPkYS+
VCQPD4fqjmWguyHIptmvVk9+w5U4eVzTV6a5LPSABvfN8Xblo7oPzEpss7ePwFUb
zdZWkh28Kh3ohGuqg0uuXxq9Hrwk9NVCL56MHv8wcUboYFRW0PiRWJuBnauSJOfB
cWvX/0d5uV4HlsPZb5pXK80o78oiJdQ6UETeXuFz3LM6l38/AQIvLO2hQ5p4jJmZ
5GsTQqklWcbUvqw/NLDxG7Zvl4wbg+UjVcfwqu1a3N3hsKimRS7svtMwbsEWhtzj
Pm14prUhiNHDdbxJDycXdn4xmAZS5N2E7LJkvqWMn/gwccRN4+cYbMFUGuhoTGeJ
GypnHjMpd8KHGWKIkkID7wdeAXuU/2y0D9vrFtNMwzP9jsAI9+ZnWUSbOFf8jZmE
FmeWbCcJTeH1uz/zMkQxTlb2bXeK8mjB5nU18C8NUCuGpYnphJfGx4h/t+453R1b
KfMijAnNUF7U0dHTXipXk2lwp231qeVvEKfRTtB8hRxGI0aHcP20ZTxadh6tI6Dz
G+zCkJT1Aiz2q2oDBdmJQVjwRss0fsTjh6ZEViKGxBWYJDuaedL3LCFWh50AktdS
+aAoHWlTJJ99jh5SQw4gaMtRCeSb+1kdKvuFh/VdAesahY+CAVo=
=8Lvw
-----END PGP SIGNATURE-----

--------------kSQBtWievtIw1nO6RK6HhJTv--
