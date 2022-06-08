Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71A4F543735
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 17:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244174AbiFHPWU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 11:22:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244732AbiFHPTu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 11:19:50 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09C8B4D624
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 08:13:57 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id z17so6236015wmi.1
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 08:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=7+Oh+OEdTF5cBUeapvMZ8Aqn2ofOfYv/LJdvvjj0840=;
        b=TqQiCGO0YjHm/BH1icoA9iwKWLYnDFNAkz+tGQPyYnPOyo6qgGIml6ufGX6E8I3hAi
         3B5xTv9MSspPsv1nKSYl0nZeUwF9s3iBvxMk9OqtmfhG/tqj1rpMNXJO9T/Q9+paatWH
         rjqIRLBsE2jhb0KTZnWq6sTbfUKCi3O9YSsJKarKLCUNwzBh5paI5ZE0gCOF/eImPTYj
         Zx6aky4EeJ/axGGI+jP8/d5dYrpbKwNOSh1SKJprTiYdoIjEAVZuwNUk4L/loFI3gZx4
         5s7f0P1xLFnJNCkGGXfp6OaPvbhvN3l0EN+Ng/3XKUqxCUN7WmHfiyhUJev1whWDtgGQ
         YKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=7+Oh+OEdTF5cBUeapvMZ8Aqn2ofOfYv/LJdvvjj0840=;
        b=4J+7vdPa3gDNmSzOa/cV2OWVrdv0B/Pu42SlMGlV/BMAF3A2RZdUf6aR2o0GCNtwV/
         /VoeDxv3IItPQ7tD7w0spRXlXJn5QY7QLy7ahrO5iW0cfRLvC5RyU/xdg8dh2ZijZ7RU
         4VRg1Qrnfl+lvmIq8B2K2BPTkglRBoTnGYBIguKoj7camuJFYzo1hcLPp3wV6D5C/oia
         1rY9HfdpN4rQHmNktMrXAhXBVhtNYuDGBah0WUgzQItHhLv305jmPWWt/n/TXA7tjHco
         qEzINVl8JK0ujNHYHaBWKY0GOfmZfUUpR0g1uTp9dUbVtzMZaGpaKWUhKOBGMWeG5QWf
         x5Sw==
X-Gm-Message-State: AOAM530OFPqFDe1fncuYfwwQfhLzb9PXyVZraB9WUmrr5FArz1wwQoZX
        xhlBAQFWLgwX4VfTy8kaVIA=
X-Google-Smtp-Source: ABdhPJxNRMiDE7CtvV7fG4CYav4bOrTWNJbSAZ3cQPhe5OsZpz91NPgdqSf3bgxQ0UM43XmEkMB18w==
X-Received: by 2002:a7b:c5d0:0:b0:389:fe85:3d79 with SMTP id n16-20020a7bc5d0000000b00389fe853d79mr65126266wmk.77.1654701235179;
        Wed, 08 Jun 2022 08:13:55 -0700 (PDT)
Received: from [192.168.157.138] ([62.77.182.180])
        by smtp.gmail.com with ESMTPSA id r8-20020adfdc88000000b0021576694d9dsm14950852wrj.97.2022.06.08.08.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 08:13:54 -0700 (PDT)
Message-ID: <41f170a1-3051-903f-b93a-f5a384eda757@gmail.com>
Date:   Wed, 8 Jun 2022 17:16:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] proc.5: Document bit 57 for /proc/[pid]/pagemap
Content-Language: en-US
To:     Marco Bonelli <marco@mebeim.net>, linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220607190437.219724-1-marco@mebeim.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220607190437.219724-1-marco@mebeim.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Xe6ALXOOkIXmSuP3MUpO8FQF"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Xe6ALXOOkIXmSuP3MUpO8FQF
Content-Type: multipart/mixed; boundary="------------L2qqmV2gpbTbAV67Yr40yhch";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Marco Bonelli <marco@mebeim.net>, linux-man@vger.kernel.org
Cc: Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <41f170a1-3051-903f-b93a-f5a384eda757@gmail.com>
Subject: Re: [PATCH] proc.5: Document bit 57 for /proc/[pid]/pagemap
References: <20220607190437.219724-1-marco@mebeim.net>
In-Reply-To: <20220607190437.219724-1-marco@mebeim.net>

--------------L2qqmV2gpbTbAV67Yr40yhch
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWFyY28sDQoNCk9uIDYvNy8yMiAyMTowNCwgTWFyY28gQm9uZWxsaSB3cm90ZToNCj4g
Qml0IDU3IHdhcyBpbnRyb2R1Y2VkIGluIExpbnV4IHY1LjE0IHRvIHJlZmxlY3QgdGhlIHVz
ZXJmYXVsdGZkDQo+IHdyaXRlLXByb3RlY3QgYml0IChjb21taXQgZmI4ZTM3ZjM1YTJmZTFm
OTgzYWMyMTg1MGU4NTZlMmM3NDk4ZDQ2OSkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYXJj
byBCb25lbGxpIDxtYXJjb0BtZWJlaW0ubmV0Pg0KDQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFu
a3MsDQoNCkFsZXgNCg0KPiAtLS0NCj4gICBtYW41L3Byb2MuNSB8IDYgKysrKystDQo+ICAg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL21hbjUvcHJvYy41IGIvbWFuNS9wcm9jLjUNCj4gaW5kZXggYzY2ODQ2
Mi4uYzRiNDg1OCAxMDA2NDQNCj4gLS0tIGEvbWFuNS9wcm9jLjUNCj4gKysrIGIvbWFuNS9w
cm9jLjUNCj4gQEAgLTE3NjEsMTAgKzE3NjEsMTQgQEAgSWYgc2V0LCB0aGUgcGFnZSBpcyBp
biBzd2FwIHNwYWNlDQo+ICAgNjEgKHNpbmNlIExpbnV4IDMuNSkNCj4gICBUaGUgcGFnZSBp
cyBhIGZpbGUtbWFwcGVkIHBhZ2Ugb3IgYSBzaGFyZWQgYW5vbnltb3VzIHBhZ2UuDQo+ICAg
LlRQDQo+IC02MFwoZW41NyAoc2luY2UgTGludXggMy4xMSkNCj4gKzYwXChlbjU4IChzaW5j
ZSBMaW51eCAzLjExKQ0KPiAgIFplcm8NCj4gICAuXCIgTm90IHF1aXRlIHRydWU7IHNlZSBj
b21taXQgNTQxYzIzN2MwOTIzZjU2N2M5YzRjYWJiOGE4MTYzNWJhYWRjNzEzZg0KPiAgIC5U
UA0KPiArNTcgKHNpbmNlIExpbnV4IDUuMTQpDQo+ICtJZiBzZXQsIHRoZSBwYWdlIGlzIHdy
aXRlLXByb3RlY3RlZCB0aHJvdWdoDQo+ICsuQlIgdXNlcmZhdWx0ZmQgKDIpLg0KPiArLlRQ
DQo+ICAgNTYgKHNpbmNlIExpbnV4IDQuMikNCj4gICAuXCIgY29tbWl0IDc3YmI0OTliYjYw
ZjRiNzljY2E3ZDEzOWM4MDQxNjYyODYwZmNmODcNCj4gICAuXCIgY29tbWl0IDgzYjRiMGJi
NjM1ZWVlMmI4ZTA3NTA2MmU0ZTAwOGQxYmMxMTBlZDcNCg0KDQotLSANCkFsZWphbmRybyBD
b2xvbWFyDQpMaW51eCBtYW4tcGFnZXMgY29tYWludGFpbmVyOyBodHRwOi8vd3d3Lmtlcm5l
bC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMv
DQo=

--------------L2qqmV2gpbTbAV67Yr40yhch--

--------------Xe6ALXOOkIXmSuP3MUpO8FQF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKgvWIACgkQnowa+77/
2zKnWg/7B4jGGW2J2Ywjm9y+/Vp0rJMAWHMg9djgR2Rs+Y+uf7BfDQKIuoZBOdm/
rq+EkOOP/B6fnetN2eSKq1oXNaKZ1NiBmjT8j4yTrZxQsh9dxdDVKccL2KjVfjwt
JTw1y52TEeTKsOyFVJbVVs8aa0iwc8HBxkNOSStsmsVPlkkpgM9HEua9l+2bD70W
SCkktKmgvt9TSgih3zjaQ7yQ5aVYV01yD1etnEAu3kgi201Av9ou2tk7DJy6RTFM
MI9BA7edzVxERx8PkVARAYUP1CkEucC0yetuska7qUuhIEiuMGLI19IqQ6M2IFIl
nzSNIA0eIHjvu+15fw/Gv8dRMLISg4jUZvHAYBnFN2/1Z0K640zA0soCsQXL4dVH
X1lud6wpC6d4WCkJNx9gERquXcp6nmHhuehkqXYOasnD4JtytbwgLUf/Quao9mCQ
2Hbe4irQ+UNuHnvn+HrmbPusQPHT3KpgmWP2WeTQySRO5AzYhUDwIL2rxHOQ28yw
Aqu5sYJj4XYyAA7sBz3faBLM4FM2m13Qv2ctwtJ3n+718bavLMzQPffr40p7eLd6
f2MLjqHRBkHuD9ewzAiyYsSzwfStlQG4vlL9Fnt7UKH4lbply7JXw6Pw3Ov0NddI
abq8qJEHRmTf6CcrZp2+rclaHS2eLXLqX1kjoEsJBBr7mEFKV0I=
=Dic5
-----END PGP SIGNATURE-----

--------------Xe6ALXOOkIXmSuP3MUpO8FQF--
