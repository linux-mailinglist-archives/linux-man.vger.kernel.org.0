Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90C4258198B
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 20:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230437AbiGZSQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 14:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229493AbiGZSQo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 14:16:44 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C5AC2A944
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 11:16:43 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id id17so9241527wmb.1
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 11:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=+Eq4CKx+oIYdSixJ0EqkRBCO/XXMr7JIqVyh7UPSnrs=;
        b=LSHqHyujmGQGI0cFdKRBiIub6elSUfikyblnb8rDU7N7CCE+nVcZ+7LwTXauCxkYMF
         iemLbT7GGnkYcpdbHF1k2BcuEX7j0pmZjXVF9kfEj2h+2tJOl6vQ1zGqJxxovesxfMP/
         ghMceQgvV43nK5JBdt6Vke4R+Yr+fn+/6vC0GFJ1iZeSDV/wYRfHLoDy4yl4cb+MzIHq
         ao+wk89CxmbdqxjtCeMQsTamvh+m+jREnbhxlEEKRZ/J8KKqgq9fl9tf/gQYDA311whz
         5Of3q2JXSfJqJR8ekN6qgX14vY/ldaNiv3cS/MihVw44tFgF3359GYmPwZE5ucnGwj5g
         rQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=+Eq4CKx+oIYdSixJ0EqkRBCO/XXMr7JIqVyh7UPSnrs=;
        b=EWj0cteC/TqqFMkvpoiVMbz3fcPFq//L3PQcHXYC0DTMznf9JmRsNgOTciqGrB+lmF
         i+8BYLiRGxhpgKXLSY7Z7C1hv2TCYVPG7mXquZvDYgz+ED2S88E6/jBIq68eMUfsN2mX
         XgUUjsPbhGc5ygP/ab1vPJP+U4W1w5eqPsMYwRDh5znwwDmpWqKZ00aSrSRkh6LGzitB
         i/t7cWT/xjxGWCDOpOOJ8SC8YC1TPqV/Ve0M46QNiPlkcYDQtgXG07ZtFuqwDjJ3K906
         nzwEp44jhf7WPgiVZZRAXup3LYSM6E1iZtWItGRP+avk0CcAfF7LS5oCNc6EpmFkF0LK
         U/bQ==
X-Gm-Message-State: AJIora9uFHCL7FOr6yxC/d6qUWyzrYNzYQ2sTgvCPDRs5oqb5nkv8CLe
        SKr66VW6mw8w+LQuHxTd1jk=
X-Google-Smtp-Source: AGRyM1sgy5GzqMxf4dOuzMhvP53vTRTlASj+aF15TKtZHM6mO03iQdSiMzDZhknbyqpxyCRt4/oxUA==
X-Received: by 2002:a1c:2783:0:b0:3a2:fd82:bf46 with SMTP id n125-20020a1c2783000000b003a2fd82bf46mr301159wmn.29.1658859401907;
        Tue, 26 Jul 2022 11:16:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f7-20020a1c3807000000b003a3080eacb9sm18838108wma.24.2022.07.26.11.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 11:16:41 -0700 (PDT)
Message-ID: <02ca88db-3efc-2d8a-1d2a-24bf86156fab@gmail.com>
Date:   Tue, 26 Jul 2022 20:16:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH] strsignal.3: fix str(d)abbrev typo
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <20220726175338.o6kto56ogecrhzgs@tarta.nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220726175338.o6kto56ogecrhzgs@tarta.nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kn6D6LboN9oiw4A6zPXZ9a0e"
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
--------------kn6D6LboN9oiw4A6zPXZ9a0e
Content-Type: multipart/mixed; boundary="------------ZFV0vItqtXDsqq0eNtDgAU9L";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <02ca88db-3efc-2d8a-1d2a-24bf86156fab@gmail.com>
Subject: Re: [PATCH] strsignal.3: fix str(d)abbrev typo
References: <20220726175338.o6kto56ogecrhzgs@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220726175338.o6kto56ogecrhzgs@tarta.nabijaczleweli.xyz>

--------------ZFV0vItqtXDsqq0eNtDgAU9L
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNy8yNi8yMiAxOTo1Mywg0L3QsNCxIHdyb3RlOg0KPiBTaWduZWQtb2ZmLWJ5OiBBaGVs
ZW5pYSBaaWVtaWHFhHNrYSA8bmFiaWphY3psZXdlbGlAbmFiaWphY3psZXdlbGkueHl6Pg0K
DQrQvdCw0LEsIHBhdGNoIGFwcGxpZWQuDQoNClRoYW5rcywNCg0KQWxleA0KDQo+IC0tLQ0K
PiAgIG1hbjMvc3Ryc2lnbmFsLjMgfCA0ICsrLS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjMv
c3Ryc2lnbmFsLjMgYi9tYW4zL3N0cnNpZ25hbC4zDQo+IGluZGV4IDA0N2RhNmNhMC4uZmMz
NzZlMmFjIDEwMDY0NA0KPiAtLS0gYS9tYW4zL3N0cnNpZ25hbC4zDQo+ICsrKyBiL21hbjMv
c3Ryc2lnbmFsLjMNCj4gQEAgLTE0OSw3ICsxNDksNyBAQCBQcmVzZW50IG9uIFNvbGFyaXMg
YW5kIHRoZSBCU0RzLg0KPiAgIC5QUA0KPiAgIC5CUiBzaWdkZXNjcl9ucCAoKQ0KPiAgIGFu
ZA0KPiAtLkJSIHNpZ2RhYmJyZXZfbnAgKCkNCj4gKy5CUiBzaWdhYmJyZXZfbnAgKCkNCj4g
ICBhcmUgR05VIGV4dGVuc2lvbnMuDQo+ICAgLlBQDQo+ICAgLkkgc3lzX3NpZ2xpc3QNCj4g
QEAgLTE1Nyw3ICsxNTcsNyBAQCBpcyBub25zdGFuZGFyZCwgYnV0IHByZXNlbnQgb24gbWFu
eSBvdGhlciBzeXN0ZW1zLg0KPiAgIC5TSCBOT1RFUw0KPiAgIC5CUiBzaWdkZXNjcl9ucCAo
KQ0KPiAgIGFuZA0KPiAtLkJSIHNpZ2RhYmJyZXZfbnAgKCkNCj4gKy5CUiBzaWdhYmJyZXZf
bnAgKCkNCj4gICBhcmUgdGhyZWFkLXNhZmUgYW5kIGFzeW5jLXNpZ25hbC1zYWZlLg0KPiAg
IC5TSCBTRUUgQUxTTw0KPiAgIC5CUiBwc2lnbmFsICgzKSwNCg0KLS0gDQpBbGVqYW5kcm8g
Q29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------ZFV0vItqtXDsqq0eNtDgAU9L--

--------------kn6D6LboN9oiw4A6zPXZ9a0e
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLgL4gACgkQnowa+77/
2zJxvA/+LB0/5CZeDFNKtsar0M609mnq2YJZ8hxGTcMuqF+xAyt9xjANtwj3ymxC
xGY9MBJosPvENKsJLD0uZJpYK+RT7CScbEL8lwu00D0mLtrk/0OKJZERHnU+5SWq
rtVfYN7M6nNcKn/88a01E163cbKi6nqLLScdDiPTT/9jJsZN8FTJDGhaMd+FXy5a
BXKEQxYYXknLab/h7xQTVGAsiIRXD/ClnP+XHi/M/Gi+LzPmsCINx36VjbLNmSEM
JZuT580V2Dl8q652QTCwHbLvDK/3ZE5Z+RIv8gmVJ0o46FUTbpCbj82bukcoynLo
SoXJOasQ6dw5zvQydEhXkHTscygRT1hWMVmDQ8ybV2MkutwsaOE+HavyygaF0slW
ZTSq+fQD0ho49vGcCZ6xtRPcdkUPjhKdjyEzxYWaKKPGDrzpsPasWCiWsxu2grbC
EYCcOhDpjPdoVdlYIv+8kSxYT2q26eGSUA5IZRxlk9zJ51z7iL4xjwJKrLvHQwOA
TZW+FjYaOMaYo7CCPh8cXmHRVdbkK5OrSuLfOzWLZMy7eiOIktYleZWCbqEDB/k4
GToU2xHU5fwnqgKK07FuJoxI2Qs5y83q9/KIFps6xU5bNqBW+khg7lJrRGUW6zcE
w9pvqdFUGpCtSCPLUn/MKp5j96v5cICJTflR2h4sIXKrMCDbUuQ=
=PRXb
-----END PGP SIGNATURE-----

--------------kn6D6LboN9oiw4A6zPXZ9a0e--
