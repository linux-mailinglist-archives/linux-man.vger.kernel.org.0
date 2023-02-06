Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BF8C68B2FA
	for <lists+linux-man@lfdr.de>; Mon,  6 Feb 2023 01:05:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229562AbjBFAFi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Feb 2023 19:05:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjBFAFh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Feb 2023 19:05:37 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C3716AF7
        for <linux-man@vger.kernel.org>; Sun,  5 Feb 2023 16:05:35 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id f47-20020a05600c492f00b003dc584a7b7eso9647713wmp.3
        for <linux-man@vger.kernel.org>; Sun, 05 Feb 2023 16:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oJMtoEpmnNqmEV8hGde87gkPrn9hBlrWKwC8Ra8DUfE=;
        b=DhEGpouCRDL/tgy77pe7pwilJQi6iTAn3rTtF61wlq7s6vBhZhCFzjJenOFLzMS299
         ad1sn9tlMAk3FytCKUqO6bFaI+xaqGE+rLB53I190tMC60RuPNMiLtEW4bMOdOBGMcHe
         dDvkJVv5C/TqdVhrik6Bsz2hyfvsYGISbMZWpSbVX+xiljroBA8PHXNa+Fj/+TlVCrpP
         BmfvxadZ/kYiZX95l7yOsGvTjs/K5oa6SR0fl11fvLRVW9fAy7avvHHD8x7CrC4Wm2Om
         YloysX/zkzNWHsJVthhy+C55DqmJtX1kPUV8VHRXBdDYot0nfQJYyDd4DDiNcbkQuhbh
         83pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oJMtoEpmnNqmEV8hGde87gkPrn9hBlrWKwC8Ra8DUfE=;
        b=X/VAcS/8RR5K2CyZTNYTJLsfEX7sBpIL91qw35goPOhoiZxJnpFVZXEEc5PlvxwWrL
         JJ5YY6cp5wx8Sl4c0n7APYVQpnMSgYKhTewtZabopyYCof+QSvk3LcwRd5VKF6vtbRZh
         FupkYlibxBRuGAWFAu1lCy3gyveNVjUIIpQfLH/Tv25dMWRPyJPJpV8x8dQgG+tdOxKb
         ld0ZCGaNEilgMhcUeec/hE668ItR7uCmw5C2YkD1Rna6zrV8MzQhhQ7uihUa9kdhDXHW
         MM8+BqXWcpspHvCdAl+wMJ/qu9IkHIWGWrT4/ZZU+r0c1pSleXyaeHMYXLx+96vkdRvL
         3o2Q==
X-Gm-Message-State: AO0yUKVOXoM6jpQckPSDmISfTcYy7Lwb+3Yg6Xl2Shsvu0i41H+d3/+5
        3OqkOxPTzBu9bDfa9YwocA3xhb8PnpM=
X-Google-Smtp-Source: AK7set8wDbhUru9BMCFCHZJUPWkK8VCPyjRx4ll0VC+AFyQO04kkjxwfDTlT1PpT3cWKeEChiRwc+A==
X-Received: by 2002:a05:600c:21ce:b0:3df:f61f:9b01 with SMTP id x14-20020a05600c21ce00b003dff61f9b01mr3845624wmj.31.1675641934246;
        Sun, 05 Feb 2023 16:05:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p9-20020a05600c468900b003dc53217e07sm10047002wmo.16.2023.02.05.16.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 16:05:33 -0800 (PST)
Message-ID: <4cc8be2e-6202-6181-6e49-453849e73a69@gmail.com>
Date:   Mon, 6 Feb 2023 01:05:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
Content-Language: en-US
To:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------J1AMFtalBlQcw0SIOatoGHHK"
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
--------------J1AMFtalBlQcw0SIOatoGHHK
Content-Type: multipart/mixed; boundary="------------klsR09MeU5MeTy8p80AMkzHj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Linux Man-Pages <linux-man@vger.kernel.org>
Message-ID: <4cc8be2e-6202-6181-6e49-453849e73a69@gmail.com>
Subject: Re: [PATCH 01/11] man2/shmget.2: fix limit units suffix from SI to
 IEC
References: <20230205225924.63300-1-Brian.Inglis@Shaw.ca>
 <20230205225924.63300-2-Brian.Inglis@Shaw.ca>
In-Reply-To: <20230205225924.63300-2-Brian.Inglis@Shaw.ca>

--------------klsR09MeU5MeTy8p80AMkzHj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJpYW4sDQoNCk9uIDIvNS8yMyAyMzo1OSwgQnJpYW4gSW5nbGlzIHdyb3RlOg0KPiAt
LS0NCj4gICBtYW4yL3NobWdldC4yIHwgMiArLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KDQpUaGUgU0kgYWxzbyBzcGVjaWZpZXMgTWlC
LiAgU2VlIHVuaXRzKDcpIGFuZCANCuKfqGh0dHBzOi8vd3d3LmJpcG0ub3JnL2RvY3VtZW50
cy8yMDEyNi80MTQ4MzAyMi9TSeKAkEJyb2NodXJl4oCQOS5wZGbin6kuDQoNCkNoZWVycywN
Cg0KQWxleA0KDQoNCj4gDQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIu
ZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDogQTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3
NjMzRDQ0MUUyNUJCNQ0K

--------------klsR09MeU5MeTy8p80AMkzHj--

--------------J1AMFtalBlQcw0SIOatoGHHK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPgREwACgkQnowa+77/
2zJW0Q//R8sKMDMqKtStUJ2WlmpE4LEyXirHJk80FhsKvsI/vHp01RIaXfM5Hss1
Gf5PM7bUjH+RgGdNyTwLeL+kkZpZATndnX4uSutOeyKw+6qzXh1C6cPOsTEl51DI
+YwC6z/Dbv4DGAV/pPYytG0Ak8s1UztKZ+4z2aI3h1BBj78fG6O0hENKX/t5pbSY
auMMRYNRJNc43xbXWVB87WWBAkZSYXrdep+/D9A6zUpxSkigN2vrFxvfmHbl2L63
WOvEulOtLE78B8c0A1OG44x8PBlraadEplt5oziuh+gw1aQuIyKj+GbCZzLqgyZV
lHcaSkBP8+HBfcuD+D9aKiypov7pwoL1h7baXuIlS52oqOhsDMfl7G+IrPXL89Eg
4/v/tHgYuZ7i3U1Y5FJ1gq5bAExstmWcAZl35Fm+j/DdNiKSKnjlKam7e83/iQj/
yc/UiSXcxLvolzcG02lLFe1hgiLGsT0C4JrcFt6tdksGK+rk2uAfiAg9sJahpnfK
gz9usASxGEo4lG6jyFRG3j+QXCmIGFrV/8IAP9Axi90p/JCGBwqjeW876iIWxOm3
iw+i6Qte1gCj0EEL9CVdQIUWr/Rf6sKYLAMNnO5fAjSMXxSJenq1ghuRX9Ckm6Mm
P4i/XWo/6tNhji3jaXRnr6uXVTZahXXotnPhhU3WNFZdXtjUySc=
=wWAm
-----END PGP SIGNATURE-----

--------------J1AMFtalBlQcw0SIOatoGHHK--
