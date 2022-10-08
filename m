Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 167D95F8227
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 03:52:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229673AbiJHBwj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Oct 2022 21:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229525AbiJHBwj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Oct 2022 21:52:39 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC5A69C2DF
        for <linux-man@vger.kernel.org>; Fri,  7 Oct 2022 18:52:35 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id j7so9545516wrr.3
        for <linux-man@vger.kernel.org>; Fri, 07 Oct 2022 18:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Iif59jROpD8UgyVcqmXcjUNMjNUsbIl982SPWQlWhns=;
        b=CaWDJB1tA6BaEjUOkOYTlIW3/42fkVHOk3aarP3CKb/1BVBZGc8Cw4ZOVBKunxevkM
         mq/QQ1pUEFlOw4HB+pOIsEX+1orWoABVnKORJI/mJWpBwmjP0zjS0SSB0RM7GceUcPsG
         pKr4NZ31Wv3RPsraxNWw/dvWAzWnBsu+YPaQRya9DaSHjNEwjj9BVO6lm/lXz2lGuehr
         In0VoU9ZiFhF33gm73uJQJM9XAv/EHSUSnEhZbA8fPAK5+YVRQiutMjD7UC6WoR4xZfU
         VVw+/cdG08K/XLl3ikHNQlYnkF59QwwtBnLZ1YKspViNjFzflzsazcyxmaTTtzFXu1Po
         8jyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Iif59jROpD8UgyVcqmXcjUNMjNUsbIl982SPWQlWhns=;
        b=WWDcm3nmtwpcby9jgESQUu8LylQRJ3QBI27dL9t1m/d34atsHx4V8qxsSJLS8bY2iW
         o94AxLi5pcWZO+JmL1TRNkxJ8pidgBgGwV1pxtCqsa73gi1f4tC3vtf78SkpURfG/evd
         wQnaLxqZbA6d9CEdDA0HJymqRZoHFCl0oVgWfn3oPAPPrARB/mk/k5gyaXXhzTKYxBep
         hPAqleYLLLras+y6gASrC0Csm1O72ghxGpzTvLlHSBC4Eu0fZrGbnEkqUsKDqc12wepa
         OrPkr9rj4qPeH4iIO/8HJdhdKk8WU2M0VTpCFKvrlnrc/D8kC56vOP0i/FIW69EvuPO5
         91Ng==
X-Gm-Message-State: ACrzQf1y6fSp7Xehkw9pO1Ssjs91r+hjryCkNo5LHV9CZFeSo7qbxzDw
        qd4bt0sEW+HpNjAI02aUFsPRXPxLTIg=
X-Google-Smtp-Source: AMsMyM4COjfwRswzAB6vUeuwMmpWn5LqTRtJKGT++QjX9t6ce4g7f9D6tjjgD02KYZVbeQus3VKDqA==
X-Received: by 2002:adf:ea0f:0:b0:22e:6ef7:aaa8 with SMTP id q15-20020adfea0f000000b0022e6ef7aaa8mr5041151wrm.670.1665193953726;
        Fri, 07 Oct 2022 18:52:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f15-20020a05600c4e8f00b003b51a4c61aasm10079417wmq.40.2022.10.07.18.52.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 18:52:33 -0700 (PDT)
Message-ID: <2aaa89b0-94d5-8e20-7fbe-098cb70b22df@gmail.com>
Date:   Sat, 8 Oct 2022 03:52:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [patch] proc.5: tfix
Content-Language: en-US
To:     Andrea Cervesato <andrea.cervesato@suse.com>,
        linux-man@vger.kernel.org
References: <20221006130656.25124-1-andrea.cervesato@suse.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221006130656.25124-1-andrea.cervesato@suse.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uVBlbTUZPv5sL67lQ9yI6k9N"
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------uVBlbTUZPv5sL67lQ9yI6k9N
Content-Type: multipart/mixed; boundary="------------nMx2DKdys5CM9N2kYveXwZXl";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andrea Cervesato <andrea.cervesato@suse.com>, linux-man@vger.kernel.org
Message-ID: <2aaa89b0-94d5-8e20-7fbe-098cb70b22df@gmail.com>
Subject: Re: [patch] proc.5: tfix
References: <20221006130656.25124-1-andrea.cervesato@suse.com>
In-Reply-To: <20221006130656.25124-1-andrea.cervesato@suse.com>

--------------nMx2DKdys5CM9N2kYveXwZXl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQW5kcmVhLA0KDQpPbiAxMC82LzIyIDE1OjA2LCBBbmRyZWEgQ2VydmVzYXRvIHdyb3Rl
Og0KPiAiS2VybmVsUGFnZVNpemUiIGFuZCAiTU1VUGFnZVNpemUiIGFyZSByZXBlYXRlZCBp
biB0aGUNCj4gL3Byb2MvW3BpZF0vc21hcHMgZm9ybWF0IGV4YW1wbGUuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZWEgQ2VydmVzYXRvIDxhbmRyZWEuY2VydmVzYXRvQHN1c2UuY29t
Pg0KDQpUaGFua3MhICBJIGFwcGxpZWQgdGhlIHBhdGNoLg0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KPiAtLS0NCj4gICBtYW41L3Byb2MuNSB8IDIgLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW41L3Byb2MuNSBiL21hbjUv
cHJvYy41DQo+IGluZGV4IDFmYzZjZDAzZC4uZDhiYmVjM2FhIDEwMDY0NA0KPiAtLS0gYS9t
YW41L3Byb2MuNQ0KPiArKysgYi9tYW41L3Byb2MuNQ0KPiBAQCAtMTk1OSw4ICsxOTU5LDYg
QEAgU2htZW1QbWRNYXBwZWQ6ICAgICAgICAwIGtCDQo+ICAgU3dhcDogICAgICAgICAgICAg
ICAgICAwIGtCDQo+ICAgS2VybmVsUGFnZVNpemU6ICAgICAgICA0IGtCDQo+ICAgTU1VUGFn
ZVNpemU6ICAgICAgICAgICA0IGtCDQo+IC1LZXJuZWxQYWdlU2l6ZTogICAgICAgIDQga0IN
Cj4gLU1NVVBhZ2VTaXplOiAgICAgICAgICAgNCBrQg0KPiAgIExvY2tlZDogICAgICAgICAg
ICAgICAgMCBrQg0KPiAgIFByb3RlY3Rpb25LZXk6ICAgICAgICAgMA0KPiAgIFZtRmxhZ3M6
IHJkIGV4IG1yIG13IG1lIGR3DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9t
YXIuZXMvPg0K

--------------nMx2DKdys5CM9N2kYveXwZXl--

--------------uVBlbTUZPv5sL67lQ9yI6k9N
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNA19cACgkQnowa+77/
2zK2Jw/+KgOPNH2Mxy6ah6ZvmA+WvkwAA8XdAqjknFRuJEf6wsbjieDxzWsrnekh
dXZT1nQbSUUhTaD6qtZeZi3BAKVRQzSjTwhilU3fi4j5Ck8nlh240vFlDBfQlnJv
On4zm3Ub3jGN/qebuujA0gLF9Rys0JMv/NCqu874bD4ewFpyipzBRgem+nxT4I8y
6lreyNPgnV09JDnGPADY+WrsoHNWrKnYTZx+N3w2iDMkEl0OdJCdeylDJ2xoA859
T64f28aDmrjn/buIfZjqwPxMYC3NGpx5CHEKpfsj6iiDMk43Qj0S9NQFJ7FTH3Qj
X5o6WzRRXlehJZ4z+nCDwHUp82K+XmrudPWhxfb2tPmIuy09CunIUPlHscEsYvvg
IIvN9NsBbGchvkqPBXFN8YcqYosNXpYuS+j+DV7b/Ho76q/zbj0/8N75tvQzfkSB
K4oTwETK9LU3UkmZAaQ78WNsu0ov4h4btp6MAiMr9YGEg9DN+aZl6Sz2wYbvISPM
T5vXFQFV8NZQTbV+b3CSEkEpLcNj/ZPMWCh4yn4tdEHv9s0uBysH5aEOtGcq1Iho
byl0hX7UO6Bh2s3RRiMHvZVkOkJeMILERRG/k4Gn9Wm7eL6RJ+UaSY97ZdFDEA65
wMRxpASvvfyPafr9AL04+N1yh9lc/6r0ZtLhfFQ98q3pSZY9s5I=
=sO6h
-----END PGP SIGNATURE-----

--------------uVBlbTUZPv5sL67lQ9yI6k9N--
