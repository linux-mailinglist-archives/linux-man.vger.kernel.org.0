Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77E0168B00A
	for <lists+linux-man@lfdr.de>; Sun,  5 Feb 2023 14:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjBENtQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 08:49:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229553AbjBENtQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 08:49:16 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34FE9741
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 05:49:11 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id k16so6949323wms.2
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 05:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/WA02Afp+moKvw/9u0G08+7YPE/Bcj4tRyukrhoFhs=;
        b=HiSL82ik+KfnV9adOq+h9vkRLQw1WaA76N/K/HaD2RbGIVI0mjRsXn3jHE7a1mHti1
         cgPzqhHHq0UTe5Cmn6WvsyCnk5C4hokAELtYNhMp/FC6ggXLK0RnICxVV8C3vLLK5019
         U5RjGFaZYqXn6J6hpt8RrJNwG9S6vJz/v/NJtPu9zZ1qvCLu8JPPTvKxKrEJUaeQrwlM
         k907Mq4Ipv31BFu4AjvUIAs2YF1dxFuZq+sSH9FbPCntDT9RLqRso9YKq/mIPsdqaUjP
         aj3ScGQjPV1WB4LzLv0yWnzAXgZl8aieOSgWOWs4mPrhe6U6BTTbb7vqbeTJ/hlToqPx
         iV5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=k/WA02Afp+moKvw/9u0G08+7YPE/Bcj4tRyukrhoFhs=;
        b=V/V7glDabzvIhCotSqYLMPn+FUCcYXsh4IVeBEn1NhbK6SkAsb0oipjxPrrxS7qDkd
         SQg06BxMNWclBG4/CLaSMQk7FITyTlVdnUATv6jgYuFI2bMGily3TPe80aE5mU/4RuSu
         7jzCXPx10LurF+X3jrlkHkHtVzRyJiERXCWCnjKgPTyfj3+lDnqdAjpuyVO6HVMRv/nZ
         4yBtOdy5a3pga4omMVotT8/cEelLXCzUfAcC7g9OIQTUo4N/mLPFl+q+jt8oAW3KeVzz
         nKtVmqJDtIMv2/SLPVnn+2SYKa8w4jMz5bbfsAlbH7HCdgwdV6j6gik0zRi4GtgQwojG
         ygfQ==
X-Gm-Message-State: AO0yUKUda3J1F64iObZv85CUKBBSC8etQP7L2ImrvbHcSIa2txzf5hng
        wvR3c99WUl7pXOJAjz5kNmY=
X-Google-Smtp-Source: AK7set+u1I6IuTcV32FKswk/sjGNbvlTzbtiyoI0xsaqyj+VgKYW9QPbQGGMMtzigeRsv/mrIUubcw==
X-Received: by 2002:a05:600c:b86:b0:3db:2dbb:d70e with SMTP id fl6-20020a05600c0b8600b003db2dbbd70emr15774467wmb.6.1675604950338;
        Sun, 05 Feb 2023 05:49:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id ip20-20020a05600ca69400b003dd19baf45asm7766359wmb.40.2023.02.05.05.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 05:49:09 -0800 (PST)
Message-ID: <ca86982e-88ad-9866-6dd9-41659472fb4b@gmail.com>
Date:   Sun, 5 Feb 2023 14:49:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 2/2] landlock.7: tfix
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
        linux-man@vger.kernel.org
References: <20230201224224.16378-1-gnoack3000@gmail.com>
 <20230201224224.16378-2-gnoack3000@gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230201224224.16378-2-gnoack3000@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mxU3siUkf4HHuxyWsxBEKJF7"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mxU3siUkf4HHuxyWsxBEKJF7
Content-Type: multipart/mixed; boundary="------------m1TmFtwaDQR086lHk03CkArJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Cc: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>,
 linux-man@vger.kernel.org
Message-ID: <ca86982e-88ad-9866-6dd9-41659472fb4b@gmail.com>
Subject: Re: [PATCH 2/2] landlock.7: tfix
References: <20230201224224.16378-1-gnoack3000@gmail.com>
 <20230201224224.16378-2-gnoack3000@gmail.com>
In-Reply-To: <20230201224224.16378-2-gnoack3000@gmail.com>

--------------m1TmFtwaDQR086lHk03CkArJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgR8O8bnRoZXIsDQoNCk9uIDIvMS8yMyAyMzo0MiwgR8O8bnRoZXIgTm9hY2sgd3JvdGU6
DQo+IFNpZ25lZC1vZmYtYnk6IEfDvG50aGVyIE5vYWNrIDxnbm9hY2szMDAwQGdtYWlsLmNv
bT4NCg0KUGF0Y2ggc2V0IGFwcGxpZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0K
PiAgIG1hbjcvbGFuZGxvY2suNyB8IDIgKy0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tYW43L2xhbmRs
b2NrLjcgYi9tYW43L2xhbmRsb2NrLjcNCj4gaW5kZXggODRlNDIyZjNjLi4yYjljMmY5NTcg
MTAwNjQ0DQo+IC0tLSBhL21hbjcvbGFuZGxvY2suNw0KPiArKysgYi9tYW43L2xhbmRsb2Nr
LjcNCj4gQEAgLTIyMSw3ICsyMjEsNyBAQCBXZSBmaXJzdCBuZWVkIHRvIGNyZWF0ZSB0aGUg
cnVsZXNldCB0aGF0IHdpbGwgY29udGFpbiBvdXIgcnVsZXMuDQo+ICAgRm9yIHRoaXMgZXhh
bXBsZSwNCj4gICB0aGUgcnVsZXNldCB3aWxsIGNvbnRhaW4gcnVsZXMgdGhhdCBvbmx5IGFs
bG93IHJlYWQgYWN0aW9ucywNCj4gICBidXQgd3JpdGUgYWN0aW9ucyB3aWxsIGJlIGRlbmll
ZC4NCj4gLVRoZSBydWxlc2V0IHRoZW4gbmVlZHMgdG8gaGFuZGxlIGJvdGggb2YgdGhlc2Ug
a2luZCBvZiBhY3Rpb25zLg0KPiArVGhlIHJ1bGVzZXQgdGhlbiBuZWVkcyB0byBoYW5kbGUg
Ym90aCBvZiB0aGVzZSBraW5kcyBvZiBhY3Rpb25zLg0KPiAgIFNlZSBiZWxvdyBmb3IgdGhl
IGRlc2NyaXB0aW9uIG9mIGZpbGVzeXN0ZW0gYWN0aW9ucy4NCj4gICAuUFANCj4gICAuaW4g
KzRuDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtl
eSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJC
NQ0K

--------------m1TmFtwaDQR086lHk03CkArJ--

--------------mxU3siUkf4HHuxyWsxBEKJF7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPfs9QACgkQnowa+77/
2zLNuA//W8vKmTKndrpqJhAg4aOZZ5OK4Qcy7TRZi/sYEO/W7GcXGgZ51WZ6uVIq
P+Oyp81GzHyia8p4DN/BrzmQpxl2d0KeXuWDgsY4F84fKsCkfmwg3qus0TNhw8Kb
a6heMmmNLn0UbONJ1MQy2LSYgK09IupjVlQBtn7E0wi5tq0z/+zcDd30EdVRzfbp
oDfUOJP7y47WpqrL24VBh4FrAb8qe8nB/L3sagn/9qsrnIa4Av4mm9X3vT2w7cpR
Qj86s2wUdNE+3NeGwd25T0gTnYPW1cASspFroEhZ+25Xp3eAQ+KmJ5BkU4y+8QG6
c4jHQtTbW2OJ58Qgj/Qr7spCEGGfo4jBFfAbn6y4BBhZPhFYcXaSiRPrTIsM36/+
R1cgtgavS9WwdZZQjEy9//MWVAQKNpLXEhjzLx5COmIor1V7zh9QHFUlihE0d/Z5
ww7pcZZyVWe/8SeUtqmcV1oOjXWphtxYf2uK/P1WroJpjyQ5IJGBgAnaocOOi3bk
UBVU/oX6hVfO1CnZeMON3DJwyFKA++6Z4NU6l+7pJlhMEYY3v6rVUCri9ymR/Zi7
TYix/A9FTzesbkWl0D3Yigi1VAYZ488PTEDSrH8Om5wcUT9HZcX5B+5FfNaLEDkh
sfCmBNavGs2sHuhrrxeM9qwmuPd/TJMAqf3R9fq+2QJTfja78dc=
=UAIh
-----END PGP SIGNATURE-----

--------------mxU3siUkf4HHuxyWsxBEKJF7--
