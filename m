Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD88459A983
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 01:35:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240363AbiHSXcY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 19:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239403AbiHSXcT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 19:32:19 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B97D10E948
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:32:18 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h5so5940652wru.7
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=6bZKFVhub9CUZ0eb1vCsCw6Cs6RmjaMl0cE9icygjm0=;
        b=gs9Tf14ed+H2jmptpA3McJ3SudGzyPDvFwOPtpvqLwNjIXVLK4hh6fioik0Ochj7qh
         yt98Ja1+M5u7PwYzTsjPWhFIPMVE/siBpeVVTrnCbHyI1ZW/aVqCsXtkRisTrUujAl2V
         Ldz4OI3PJIyE8zOGBDw3qSp3i3bNUc20DaOVu16sHueVXXXIumC0iXJq1nyhEeBpw4fz
         thVujWgWKpuwxo0F3a7mcPo/34KLOpp4rfEO9wZCidwztcHgq2qDzXMmZobeMsiD2Qed
         qmf80qDSHs8/qLCv0pDBY7liwHI6LNlmr2lBNbWyxS5YEYl/ScrcR9CFU9gVq4UVPlYH
         Iuig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=6bZKFVhub9CUZ0eb1vCsCw6Cs6RmjaMl0cE9icygjm0=;
        b=dY2eUX79+JGL3i+ol5zAtBgQv7/CPDWkEmz/R90I372lg7xW1/FzIHqfCcTChhOkNi
         iztPkYPmmyKjMdgMCHkGNQvnSgLEBO0xzPOLZCEEOApqTFQmgvfLZBBdgR8GPyjL9u/k
         EbRQqRG+BEFoTdFaC+1lBPGe/A3I7D2csXxOwZX2weiukC6/NX/CxWADli3uSj2QJaBl
         nzju//mAblImgpOb91rsyhc4Vm9DpaRQ1kEo7fU17tjYmY59pBgnpv0vJom3qERjJ/SJ
         bSuE5L9rkDCyjnbtekL6uV2hbUPF8wEjPZqUGwJQQaDW3aNRv/eMLwcyS2r0DgL3Briq
         FUHQ==
X-Gm-Message-State: ACgBeo1R4QelqOWFWVfaK0KuOCql9Drhisv0V6tmdkS6JSkHGhnk488F
        5nPGKZOE12BxkftRaVyrFaU=
X-Google-Smtp-Source: AA6agR4pUWduNY9gsypWl6fzaeYMGmyH+aIBZUNZA/70uAls/ZYZj+llXxvkHDyDWyg7VZWWtspe0g==
X-Received: by 2002:a5d:4490:0:b0:225:26da:c51c with SMTP id j16-20020a5d4490000000b0022526dac51cmr5174669wrq.400.1660951936881;
        Fri, 19 Aug 2022 16:32:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d7-20020a05600c3ac700b003a5ad7f6de2sm6229840wms.15.2022.08.19.16.32.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 16:32:16 -0700 (PDT)
Message-ID: <eb6a1e41-c48e-ac45-5154-ac57a2c76108@gmail.com>
Date:   Sat, 20 Aug 2022 01:32:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220819190859.6248-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------i70QTVNIfyAKckyfzTrY6IbC"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------i70QTVNIfyAKckyfzTrY6IbC
Content-Type: multipart/mixed; boundary="------------TKcIcQ7Oct7JZKXChXYPwoES";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <eb6a1e41-c48e-ac45-5154-ac57a2c76108@gmail.com>
Subject: Re: [PATCH 01/10] fanotify_init.2: tfix
References: <20220819190859.6248-1-jwilk@jwilk.net>
In-Reply-To: <20220819190859.6248-1-jwilk@jwilk.net>

--------------TKcIcQ7Oct7JZKXChXYPwoES
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDgvMTkvMjIgMjE6MDgsIEpha3ViIFdpbGsgd3JvdGU6DQo+IFNp
Z25lZC1vZmYtYnk6IEpha3ViIFdpbGsgPGp3aWxrQGp3aWxrLm5ldD4NCg0KSSBhcHBsaWVk
IHRoZSBlbnRpcmUgcGF0Y2ggc2V0LCB3aXRoIHRoZSBleGNlcHRpb24gb2YgMDEvMTAgKHRo
aXMgb25lKSwgDQpzaW5jZSBJIGFza2VkIGEgcXVlc3Rpb24gYWJvdXQgaXQgKGJ1dCBJIGxp
a2UgdGhlIHBhdGNoKS4NCg0KVGhhbmtzIQ0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi9m
YW5vdGlmeV9pbml0LjIgfCA0ICsrLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvZmFub3Rp
ZnlfaW5pdC4yIGIvbWFuMi9mYW5vdGlmeV9pbml0LjINCj4gaW5kZXggOWVhYzZkMmQ3Li4y
NjJjNTA1ZmEgMTAwNjQ0DQo+IC0tLSBhL21hbjIvZmFub3RpZnlfaW5pdC4yDQo+ICsrKyBi
L21hbjIvZmFub3RpZnlfaW5pdC4yDQo+IEBAIC0xODYsNyArMTg2LDcgQEAgb2JqZWN0cyBi
eSBmaWxlIGhhbmRsZXMuDQo+ICAgTm90ZSB0aGF0IHdpdGhvdXQgdGhlIGZsYWcNCj4gICAu
QlIgRkFOX1JFUE9SVF9UQVJHRVRfRklEICwNCj4gICBmb3IgdGhlIGRpcmVjdG9yeSBlbnRy
eSBtb2RpZmljYXRpb24gZXZlbnRzLA0KPiAtdGhlcmUgaXMgYW4gaW5mb3JhbXRpb24gcmVj
b3JkIHRoYXQgaWRlbnRpZmllcyB0aGUgbW9kaWZpZWQgZGlyZWN0b3J5DQo+ICt0aGVyZSBp
cyBhbiBpbmZvcm1hdGlvbiByZWNvcmQgdGhhdCBpZGVudGlmaWVzIHRoZSBtb2RpZmllZCBk
aXJlY3RvcnkNCj4gICBhbmQgbm90IHRoZSBjcmVhdGVkL2RlbGV0ZWQvbW92ZWQgY2hpbGQg
b2JqZWN0Lg0KPiAgIFRoZSB1c2Ugb2YNCj4gICAuQiBGQU5fQ0xBU1NfQ09OVEVOVA0KPiBA
QCAtNDc3LDcgKzQ3Nyw3IEBAIHVzZXJzIG1heSBjYWxsDQo+ICAgLkJSIGZhbm90aWZ5X2lu
aXQgKCkNCj4gICB3aXRob3V0IHRoZQ0KPiAgIC5CIENBUF9TWVNfQURNSU4NCj4gLWNhcGFi
aWxpdHkgdG8gY3JlYXRlIGFuZCBpbnRpYWxpemUgYW4gZmFub3RpZnkgZ3JvdXAgd2l0aCBs
aW1pdGVkIGZ1bmN0aW9uYWxpdHkuDQo+ICtjYXBhYmlsaXR5IHRvIGNyZWF0ZSBhbmQgaW5p
dGlhbGl6ZSBhbiBmYW5vdGlmeSBncm91cCB3aXRoIGxpbWl0ZWQgZnVuY3Rpb25hbGl0eS4N
Cj4gICAuVFANCj4gICBUaGUgbGltaXRhdGlvbnMgaW1wb3NlZCBvbiBhbiBldmVudCBsaXN0
ZW5lciBjcmVhdGVkIGJ5IGEgdXNlciB3aXRob3V0IHRoZQ0KPiAgIC5CIENBUF9TWVNfQURN
SU4NCg0KLS0gDQpBbGVqYW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNv
bG9tYXIuZXMvPg0K

--------------TKcIcQ7Oct7JZKXChXYPwoES--

--------------i70QTVNIfyAKckyfzTrY6IbC
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMAHX8ACgkQnowa+77/
2zKSVA/+J7vhc71mZ9H+duCFKkwW6oDcMnBJdv8clRO4+PncSyLMREA4n8lG3oCk
juA5IJ+vKQrXgNZW6e34fgpALhRLURFqLplKs9so25Hsmj6V9qUz1kxtErrqHsCp
+ciUoJpXUecKRXtbKWo4AFs5wQ44KkGbDhbrSp8GDdEi+q0D9zQ/PVa5tK75cqBN
v1TqernMs3XW7Cwkjh0G7z0WVm3BQYx+YXH14ya6tYwqgFCD13psOmVH87C2U6W0
SH+zTuVZc7uJL5AYEMbs5e5LbA7uq9BEKGncijCtbYoQLSP4hd5ukO6xAnQjMk9L
wuhif2tUyaSgxpQBXdW3F5Rh+JkjsRJEi0mGhgbaE5/xwEZnDARomyaOPsM5fNRV
3Pteb5ljoTtg9bNVnMtU0plhS6YPmi1t6Dng/W5ERGLUVUDBnM7wjAEGYvYAgmOb
AHROHDQRwcqRB+f3Djj/teMMOWdbYgY1jPsIHv8Kf8D4QqUh1hvvFO18GWiYAENd
MDWv5Ec9NseLu6rNvQXQt8zl5xF1UKvSu/Xco75R99eawSo6G8D+apJ/pSLLdJjM
1DT0yga2mwAqtnZXfM/Fh/F/XWn+SJU/d6j+2W5xctio7wveS0oPXTJfc6XKBbLU
yTflnc6TZs8Tq3wrHr4c5B6eR9ALY3Q0NyxuH0TIic4JtxfFNdk=
=zyWd
-----END PGP SIGNATURE-----

--------------i70QTVNIfyAKckyfzTrY6IbC--
