Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1BEDC60E8FB
	for <lists+linux-man@lfdr.de>; Wed, 26 Oct 2022 21:26:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233983AbiJZT0V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Oct 2022 15:26:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234094AbiJZT0U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Oct 2022 15:26:20 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74E7E5755A;
        Wed, 26 Oct 2022 12:26:18 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id w14so3847439wru.8;
        Wed, 26 Oct 2022 12:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=64tY0YpU8fQILXC9YRxDKfbMv1GXMHIfonz4Qb2UxfQ=;
        b=qtBWmyAbHdGesJGyvQcQHSuJhEfwiWKbTQg+J2UN1LDtjd4eCrh4W5NH5DP/P94p5H
         qvy8/YnUM86risRYUOSbqfwn+VbaDe20mk2drRPc+YaLeqpW8iWAsdAWLKFfgLm1o+/0
         gyYJvnxNMGrB7Bq/kAXFwITsE+eyMbiiDiSRGNqaMDFFm4ExmQnhKHgIONMIYVYN0Zcf
         v/pMYkv1QZqfmjfMxf8/7RXTMRmwbmEz/cXzITVHUw9K2T/oo6pov1jo8Ob1MGtlfm1Z
         ouUqZ8AcTDOG1UCWOjwLf5MXZXcCDABBt4d53wSC/YWkVMQwUBDPffsC/mfI38Cpqpui
         Nelw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=64tY0YpU8fQILXC9YRxDKfbMv1GXMHIfonz4Qb2UxfQ=;
        b=Rkvz2CGTSWxnIh/S1/GXbBqFQAAQo43c4cLSNlYDiwhvlDhAw8yDbtLowRTi86tvTd
         p5mmgWxp4pHJgGE6QytRoES3hB1ZqrYOpJ/bHbrWHXSuh2Dv+gSI3jkLv4QgI6U8/57J
         UQ8GHxk7FB+Uqj78+wERq/Ngx3V8dXFUhnK5SjXXDxP0CRh81vO/zO2wK9tye6Df+wxX
         15WAxNWPjoOXiUQrUbbYtNQUEna2ViNKhoEs8gPcYKj8leuX6SrfSceiu+2Yz8W8k5sE
         dTFZHXDPmC7vpG9hv3IJV11HGj2n5xwIAEC97ZtTHSawf/6K+zUqsXgk058rpouyhhy3
         PpIQ==
X-Gm-Message-State: ACrzQf1w0WZ02CSzgDv3rNlIf6N3nWY5NBs2B7FfjdoJKlkC5t9tJy8q
        tSISmNyPezZumjb8/ZRXluerQnD8Ve0=
X-Google-Smtp-Source: AMsMyM7XxRClBYeudJRntlTY0J5WQ71HTQVIGzNR3DyF4gkXjhiT23Fne861TaPftcEcE8zO1AaRJw==
X-Received: by 2002:a05:6000:2ad:b0:231:48fb:3a64 with SMTP id l13-20020a05600002ad00b0023148fb3a64mr29106999wry.184.1666812376933;
        Wed, 26 Oct 2022 12:26:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n66-20020a1ca445000000b003cdf141f363sm2772309wme.11.2022.10.26.12.26.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 12:26:16 -0700 (PDT)
Message-ID: <6d9bb637-6733-fe0c-1836-1c1649a20d11@gmail.com>
Date:   Wed, 26 Oct 2022 21:26:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] ioctl_tty.2: Document TIOCSERGETLSR/TIOCSER_TEMT
Content-Language: en-US
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org
Cc:     linux-serial@vger.kernel.org
References: <20221026191202.5510-1-pali@kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221026191202.5510-1-pali@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vrsGdLNa8kHZKvMReQp0sMPU"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------vrsGdLNa8kHZKvMReQp0sMPU
Content-Type: multipart/mixed; boundary="------------phNbzwtUlG24IC0VTn3UhLu9";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>, linux-man@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Message-ID: <6d9bb637-6733-fe0c-1836-1c1649a20d11@gmail.com>
Subject: Re: [PATCH] ioctl_tty.2: Document TIOCSERGETLSR/TIOCSER_TEMT
References: <20221026191202.5510-1-pali@kernel.org>
In-Reply-To: <20221026191202.5510-1-pali@kernel.org>

--------------phNbzwtUlG24IC0VTn3UhLu9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGFsaSENCg0KT24gMTAvMjYvMjIgMjE6MTIsIFBhbGkgUm9ow6FyIHdyb3RlOg0KPiBT
aWduZWQtb2ZmLWJ5OiBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwub3JnPg0KDQpQYXRjaCBh
cHBsaWVkLiAgVGhhbmtzIQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW4y
L2lvY3RsX3R0eS4yIHwgMTYgKysrKysrKysrKysrKysrLQ0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
bWFuMi9pb2N0bF90dHkuMiBiL21hbjIvaW9jdGxfdHR5LjINCj4gaW5kZXggNzU5ZWE3YmJh
NjJmLi40MWZmMzhiNmY1NzggMTAwNjQ0DQo+IC0tLSBhL21hbjIvaW9jdGxfdHR5LjINCj4g
KysrIGIvbWFuMi9pb2N0bF90dHkuMg0KPiBAQCAtMzA5LDYgKzMwOSwyMSBAQCBmb3IgdGhl
IGFyZ3VtZW50IHZhbHVlcw0KPiAgIC5CUiBUQ0lGTFVTSCAsDQo+ICAgLkJSIFRDT0ZMVVNI
ICwNCj4gICAuQlIgVENJT0ZMVVNIIC4NCj4gKy5UUA0KPiArLkIgVElPQ1NFUkdFVExTUg0K
PiArQXJndW1lbnQ6DQo+ICsuQkkgImludFx+KiIgYXJncA0KPiArLklQDQo+ICtHZXQgbGlu
ZSBzdGF0dXMgcmVnaXN0ZXIuIFN0YXR1cyByZWdpc3RlciBoYXMNCj4gKy5CIFRJT0NTRVJf
VEVNVA0KPiArYml0IHNldCB3aGVuIG91dHB1dCBidWZmZXIgaXMgZW1wdHkgYW5kIGFsc28g
aGFyZHdhcmUgdHJhbnNtaXR0ZXIgaXMgcGh5c2ljYWxseSBlbXB0eS4NCj4gKy5JUA0KPiAr
RG9lcyBub3QgaGF2ZSB0byBiZSBzdXBwb3J0ZWQgYnkgYWxsIHNlcmlhbCB0dHkgZHJpdmVy
cy4NCj4gKy5JUA0KPiArLkJSIHRjZHJhaW4gKDMpDQo+ICtkb2VzIG5vdCB3YWl0IGFuZCBy
ZXR1cm5zIGltbWVkaWF0ZWx5IHdoZW4NCj4gKy5CIFRJT0NTRVJfVEVNVA0KPiArYml0IGlz
IHNldC4NCj4gICAuU1MgRmFraW5nIGlucHV0DQo+ICAgLlRQDQo+ICAgLkIgVElPQ1NUSQ0K
PiBAQCAtODkwLDcgKzkwNSw2IEBAIG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkNCj4g
ICAuXCIgVElPQ1NFUkdXSUxECQlpbnQgKg0KPiAgIC5cIiBUSU9DU0VSU1dJTEQJCWNvbnN0
IGludCAqDQo+ICAgLlwiIFRJT0NTRVJHU1RSVUNUCQlzdHJ1Y3QgYXN5bmNfc3RydWN0ICoN
Cj4gLS5cIiBUSU9DU0VSR0VUTFNSCQlpbnQgKg0KPiAgIC5cIiBUSU9DU0VSR0VUTVVMVEkJ
CXN0cnVjdCBzZXJpYWxfbXVsdGlwb3J0X3N0cnVjdCAqDQo+ICAgLlwiIFRJT0NTRVJTRVRN
VUxUSQkJY29uc3Qgc3RydWN0IHNlcmlhbF9tdWx0aXBvcnRfc3RydWN0ICoNCj4gICAuXCIg
VElPQ0dTRVJJQUwsIFRJT0NTU0VSSUFMIChzZWUgYWJvdmUpDQoNCi0tIA0KPGh0dHA6Ly93
d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------phNbzwtUlG24IC0VTn3UhLu9--

--------------vrsGdLNa8kHZKvMReQp0sMPU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNZidcACgkQnowa+77/
2zITKQ//c4TwwITMBibbwl5UOqIUiDN3cHChga2pK1S8eyArcWv4Zzm+ZCejLigI
byT/iPGwn79Fgg1Td0yfDRcxDxPaoTJf76joA22M4knUSds8RSyvankMMlvPWxf3
N9r/y11RxerZHX8jwyJHO8LtbKVrjE9TszeuBLeYCWFzV1JT71XPFYVAVmBvzCyV
FUhsgAfHvPF99k0U9c9Pm4uLI/SYjsu6bu2GtsASRD9zp0RoSKBeFGm/5Rbwi/e4
DkY09fuDkv/h39NKNz8XE1xbCP8dT11rOv75QDa6pgasHRMFZZi3udrk9S0/KTop
VqgcpaxvfuL7l8ESCga2qUffYoOn5NMCYlRTyMKjekFl+euRecsdAZtTLXco1fZm
pQGzlnVufCV4l+yKcTtCKLwX84IDqUqEBot/UF3DCG5CBPB2lvGv20t+ZSSDItcC
syez9kAzwHrX1/ijfaOB9Chel2xJA/2gs4Lyjcs9L22BBh7KGs5KVPcvcG7MxXKP
io86bdXwuGINiuNk1DSz7Uq2Bp2r+wrHm8l82UHBMX3XwhPx2rule+Q2L/j2GWJI
BAsrNhlLTVrN2vb1HSDiW+gxeeE6nx2jvS82Iv7kgao9il7RLIfTPiTPdTj7eEOn
fO+h14orc3PHgF2upN1cjT9n+euAVMMFGUXMqIIXZiGu6ZhZfdU=
=aLEU
-----END PGP SIGNATURE-----

--------------vrsGdLNa8kHZKvMReQp0sMPU--
