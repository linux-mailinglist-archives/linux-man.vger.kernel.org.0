Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 430E559E80E
	for <lists+linux-man@lfdr.de>; Tue, 23 Aug 2022 18:56:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241290AbiHWQ4U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Aug 2022 12:56:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244500AbiHWQzC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Aug 2022 12:55:02 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAD73139279
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:24:48 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id r83-20020a1c4456000000b003a5cb389944so9564545wma.4
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=BHHVS2JTblHV6jwNjgiIImYE2HeNgQ9Jj9x5G03a+JQ=;
        b=quCVGPSbTURdrIy0JB0wd1CWjoYZOxBuw+a4tNeqVly7cIirEdPK7mn3la+C48xetI
         1QtRXoZ88K+wj2OKlVTVk65QMeX5OaCyFsJ0Joim1jOPIExiUsmk1E9bx7Ok2aJb4dPC
         ZPoZrjyzJR9+hfVvjeuT5FeN1Q5e3HyVU1g8p98KJhZFplNWcDAAR3RXjEamIyOiMMiK
         MLUy2/pl12EvEjbs60uFgat2diZf3DOlepIxbERPyFPMb6dcGsliu+XK8g3cIP2yZwqT
         +IXhYBspTwPHwRAA2y2IFFiama8jmnvoKxsyrO49m30giRYg/koKZnmsaQaDNIKQWoZE
         o0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=BHHVS2JTblHV6jwNjgiIImYE2HeNgQ9Jj9x5G03a+JQ=;
        b=oFeqrhH1lTJhom/I6mp/5HnDJpv4Q6M+urE27ee11YeTpdoxANpEHN9a0d/z9mnHiJ
         q8jP9+4xbwp3JdTLbVgdIInNoseatcpJJFWJyO162/Ka0jTGhsW5ollcFG6tFn8P2chL
         jIOAnYnVN9jgH1scEFgdfffegq0t+PQSQMk8THeXRD7YXKNJ+0cKZvf7KWxoDx2dPdAZ
         K7sMx2OURO5NUJZZ5lhDoPZbwGdZBXqJO3D4u/RxZJ4bJUsu4S7paNbYl4NI6Hqq4th3
         zpBBHHI0adhdIwBEFfPkQvb5840u/WdL1FMZv79QMzlZAAA0klarXQe9BSFBBmJbZZuw
         Ra2A==
X-Gm-Message-State: ACgBeo1tUjTed04yNKFIgekQ1iSSfNe65r47aGhnl06UY2uFgpLhalPo
        0m7DQA9aspPGKvb4jgt2jNQ=
X-Google-Smtp-Source: AA6agR7dotBd77d7tepwFjzhQHUaIyhTJNNaV6fE19T8EgEu3X4PqTrhzGXQbb6OpvpaHuD1yzeglQ==
X-Received: by 2002:a7b:c8c1:0:b0:3a5:bb57:e7a9 with SMTP id f1-20020a7bc8c1000000b003a5bb57e7a9mr2217390wml.18.1661261087051;
        Tue, 23 Aug 2022 06:24:47 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m9-20020adfe0c9000000b00225206dd595sm14033993wri.86.2022.08.23.06.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:24:46 -0700 (PDT)
Message-ID: <3ff26f4d-1f07-6a0c-0fc3-9c32dd9fd92c@gmail.com>
Date:   Tue, 23 Aug 2022 15:24:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <ba5cd1b5-eadb-3f63-ba69-8a7bd8c2c105@gmail.com>
In-Reply-To: <ba5cd1b5-eadb-3f63-ba69-8a7bd8c2c105@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nxVAkCEI3ZcKni0iDh0l5L5r"
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
--------------nxVAkCEI3ZcKni0iDh0l5L5r
Content-Type: multipart/mixed; boundary="------------MqaeGXDyjLF1NpdjaY0DvvQj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <3ff26f4d-1f07-6a0c-0fc3-9c32dd9fd92c@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
 <ba5cd1b5-eadb-3f63-ba69-8a7bd8c2c105@gmail.com>
In-Reply-To: <ba5cd1b5-eadb-3f63-ba69-8a7bd8c2c105@gmail.com>

--------------MqaeGXDyjLF1NpdjaY0DvvQj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8yMy8yMiAxNToxNiwgQWxlamFuZHJvIENvbG9tYXIgd3JvdGU6DQo+IEkuZS4sIEFG
QUlLLCBteV9pbWF4YWJzKCsreCkgd291bGQgb25seSBkbyB0aGUgKysgb25jZSwgcmlnaHQ/
wqAgSXMgdGhhdCANCj4gd2hhdCB5b3Ugd2VyZSBzdWdnZXN0aW5nPw0KDQpJZiB0aGF0J3Mg
d2hhdCB5b3UgbWVhbnQsIHRoZSBtYWNybyBzZWVtcyBzYWZlOg0KDQokIGNhdCBpbWF4YWJz
LmMNCiNpbmNsdWRlIDxzdGRpbnQuaD4NCiNpbmNsdWRlIDxzdGRpby5oPg0KI2luY2x1ZGUg
PHN0ZGxpYi5oPg0KDQojZGVmaW5lIG15X2ltYXhhYnMoaikgIF9HZW5lcmljKElOVE1BWF9D
KDApLCAgXA0KICAgICBsb25nOiAgICAgICAgICAgbGFicyhqKSwgICAgICAgICAgICAgICAg
ICBcDQogICAgIGxvbmcgbG9uZzogICAgICBsbGFicyhqKSAgICAgICAgICAgICAgICAgIFwN
CiAgLyogbG9uZyBsb25nIGxvbmc6IGxsbGFicyhqKSAqLyAgICAgICAgICAgICAgXA0KKQ0K
DQppbnQNCm1haW4odm9pZCkNCnsNCiAgICAgb2ZmX3QgIGE7DQoNCiAgICAgYSA9IChpbnRt
YXhfdCkgLTE7DQogICAgIHByaW50ZigiaW1heGFicyglamQpID09ICVqZFxuIiwgKGludG1h
eF90KSAtMiwgbXlfaW1heGFicygtLWEpKTsNCg0KICAgICBleGl0KEVYSVRfU1VDQ0VTUyk7
DQp9DQoNCiQgY2MgLVdhbGwgLVdleHRyYSBpbWF4YWJzLmMNCiQgLi9hLm91dA0KaW1heGFi
cygtMikgPT0gMg0KDQoNCkNoZWVycywNCg0KQWxleA0KDQotLSANCkFsZWphbmRybyBDb2xv
bWFyDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------MqaeGXDyjLF1NpdjaY0DvvQj--

--------------nxVAkCEI3ZcKni0iDh0l5L5r
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmME1R0ACgkQnowa+77/
2zKPUg/4pyxNOjDFvsepzPXvR86H1ChupJ6f+Cjn8YQcduZZ3pdjD+ddGKVM5MYH
wtKO3QAuNa222DhrOFdDx6nQmk0BjYD4oJOk75E66ecGlg2laA6+rU1RHZEDBSTo
V9KUIzEw0Q3Lm73qUkeO8jtQzXBewNNDNR8seIfbvnT/iJUXJmDWr7UrPEn5mV6Y
eT24t5DeFVNF3QPH6StbfK1/fEpciZAhadJ+zEPXU4IR0QsHwqy8Pwf45Ixsuh5o
5i0wa7yDPIqoYRRda1L3HsgMfXszXJLcaSvzAp2uAHHsq3NDL/vPrkqV4KWKBuDY
XjvZ+EanuHjPAJzwX0ZOYrgVVjgIJ11ngTsogVRUAeQp9eqnHmo+1Q+A2XBIK+wp
q7h2WQbUign8PNT1mxyiBUnPf/Q4crKv+dQXOkOmLZj59rzMQsJIgNr+aMaX1+s5
qZXQbvWtwInizqbOCWdtmPJs8fbiePPZYeYfQ7fivc9nik3b22bhjQ9FVVqGpabf
gqsjSH72unQcq1JZoCI/4BN9ve2F8S86ab5tl/+H5D3pMY7utrNyAZAQnZT6x4vL
3KvKI2IUtK7HVK2cyPQ5Kj0snojbFi/vgDNYPy93cRd/edSVTjVQvbT7xCqT2hGV
QENKFVfyoqKsMH7wpbdFLt1wihF3MPyMSNSJqMa64/VgNrOrOg==
=1FnD
-----END PGP SIGNATURE-----

--------------nxVAkCEI3ZcKni0iDh0l5L5r--
