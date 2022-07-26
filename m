Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94DCA581335
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 14:37:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232255AbiGZMhC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 08:37:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231395AbiGZMhC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 08:37:02 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5F8D1FCF2
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 05:37:00 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id v13so12182201wru.12
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 05:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=3Th4R3GA3JEDBqMX0Jpc3yK7kUwhC7ioxi571Tks05Q=;
        b=M6+qokYoqKVEu9rWlHFiWvwWt41abCgrWnL/Hc1b3wf7qfWsKERWbzDtWdJlvtItIk
         TrsYMo5rhICuU0v4QkGUXelcbBxK+tkQr/fevUP/ejwrn2phXlJ4xqxSMX4vCeycQa6f
         e19Xc1oqe93GXQIj0vxxfDBR2j65vKH39Pu2nEy50XVyv8Gkvg157SiZ89C7Yd/v8GRX
         woQfUM5dmSB6QkOU7WXQoQ2TyoJjgjV1yeu0/C6buj+2elvUlb83RXwUR+gqoXVGM1Hz
         H5lT2ie7zuQdxa0SdsnQIZPTJIGve9lh0RSmQSo9gZTWJtH/txbhWY7zK7D77vp5ffrl
         wwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=3Th4R3GA3JEDBqMX0Jpc3yK7kUwhC7ioxi571Tks05Q=;
        b=p2q+u7HK2wbBazH566kGnbKAFhSfrebQZbGbZzYC43TkTXn1siOY3wFgigdWRhG28n
         7hZBR9Ol/Exx7v1jSU98GuT/FhFHRftm6HrE8/2klZiln3cE4a3w1DFBH14nyL0cgZN/
         6oYNkeg26IYCocaX5cu4qrhZf2sEusz/mDMvTy9Jl9+rXH23aVBjKVAd75AsXV/Ev5z3
         Wppqr46FRVEgrS2S8zgQ/cTvh46xzvnG+98NuMk8F1UCCbFth56El7Der4mvbohlY4Lc
         GsqmhtmNbJ5FVX/nFumMX4w703kVD+tNI0D9x/AuKJGHoEoKKxYFsae3L2fYjO/BiOh4
         RAkA==
X-Gm-Message-State: AJIora+4DlJleTZK9D2sa75GRwoPIdw+pCQnjUAjrXX/ZZnpj7Rmm1V3
        Un8HXqV6GVrqJVrAADgLMZg=
X-Google-Smtp-Source: AGRyM1tJ4//T3QYxpCG2jUhIIQLs1NhLZGe9DV8mnBqKiLa/UJ6WQIyfZ2+IwBRYhUyCv+Fn9RCM6Q==
X-Received: by 2002:a05:6000:15c1:b0:21e:8048:1b1a with SMTP id y1-20020a05600015c100b0021e80481b1amr8668521wry.370.1658839019289;
        Tue, 26 Jul 2022 05:36:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p20-20020a05600c1d9400b003a3561d4f3fsm8554169wms.43.2022.07.26.05.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 05:36:58 -0700 (PDT)
Message-ID: <54ab414c-b811-21db-80df-7c3934a85166@gmail.com>
Date:   Tue, 26 Jul 2022 14:36:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org, groff@gnu.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <20220725185704.zbebcx6yjs32uac4@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220725185704.zbebcx6yjs32uac4@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GNt626YsUYiLDDYvZ0WcjdjH"
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
--------------GNt626YsUYiLDDYvZ0WcjdjH
Content-Type: multipart/mixed; boundary="------------q6o3csl01dgUxfFU4yS3QdFw";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, groff@gnu.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ralph Corderoy <ralph@inputplus.co.uk>, Ingo Schwarze <schwarze@usta.de>
Message-ID: <54ab414c-b811-21db-80df-7c3934a85166@gmail.com>
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
 <20220725185704.zbebcx6yjs32uac4@jwilk.net>
In-Reply-To: <20220725185704.zbebcx6yjs32uac4@jwilk.net>

--------------q6o3csl01dgUxfFU4yS3QdFw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIsDQoNCk9uIDcvMjUvMjIgMjA6NTcsIEpha3ViIFdpbGsgd3JvdGU6DQo+ICog
QWxlamFuZHJvIENvbG9tYXIgPGFseC5tYW5wYWdlc0BnbWFpbC5jb20+LCAyMDIyLTA3LTI0
LCAyMToxOToNCj4+ICsuQiAiI2RlZmluZSBOVUxMwqAgKCh2b2lkICopIDApIg0KPj4gKy5m
aQ0KPj4gKy5TSCBERVNDUklQVElPTg0KPj4gKy5CIE5VTEwNCj4+ICtyZXByZXNlbnRzIGEg
bnVsbCBwb2ludGVyIGNvbnN0YW50Lg0KPj4gKy5QUA0KPj4gK0FjY29yZGluZyB0byBQT1NJ
WCwNCj4+ICtpdCBzaGFsbCBleHBhbmQgdG8gYW4gaW50ZWdlciBjb25zdGFudCBleHByZXNz
aW9uIHdpdGggdGhlIHZhbHVlDQo+PiArLkIgMA0KPj4gK2Nhc3QgdG8gdHlwZQ0KPj4gKy5J
UiAidm9pZCAqIiAuDQo+IA0KPiBNaWdodCBiZSB3b3J0aCBub3RpbmcgdGhhdCB0aGUgY2Fz
dCByZXF1aXJlbWVudCB3YXMgYWRkZWQgb25seSBpbiANCj4gUE9TSVguMS0yMDA4IGFrYSBT
VVN2NC4NCj4gDQo+PiArLlNIIENPTkZPUk1JTkcgVE8NCj4+ICtDOTkgYW5kIGxhdGVyOw0K
PiANCj4gSXQncyBpbiBDODkgdG9vLg0KDQpNaWNoYWVsIGFuZCBJIGFncmVlZCB0aGF0IGZv
ciBuZXcgcGFnZXMsIHdlJ3JlIGdvaW5nIHRvIGlnbm9yZSB0aGUgQzg5IA0Kc3RhbmRhcmQs
IGFzIGFsbW9zdCBhbGwgY3VycmVudCBjb2RlIGFzc3VtZXMgQzk5IGlzIGF2YWlsYWJsZSwg
YXQgbGVhc3QgDQp0byBhIGNlcnRhaW4gZGVncmVlIG9mIHN1cHBvcnQuDQoNClRoZSBzYW1l
IGFzIFBPU0lYLjEtMTk5MCBpcyBhbHNvIGlnbm9yZWQgZm9yIHNpbXBsaWNpdHksIGFuZCB3
ZSBzdGFydCANCmNvdW50aW5nIGZyb20gUE9TSVguMS0yMDAxLg0KDQpJJ20gbm90IHN1cmUg
aWYgZG9jdW1lbnRpbmcgQzg5IHByb3ZpZGVzIGFueSB2YWx1ZSAoYXBhcnQgZnJvbSANCmhp
c3RvcmljYWwgY3VyaW9zaXR5LCB0aGF0IGlzKS4NCg0KPiANCj4+ICsuSSBOVUxMIFwtIE5V
TEwNCj4+ICtpcywgc3VycHJpc2luZ2x5LCB1bmRlZmluZWQgYmVoYXZpb3IsIGFjY29yZGlu
ZyB0byBJU08gQy4NCj4gDQo+IEZXSVcsIEkgZG9uJ3QgZmluZCBpdCBzdXJwcmlzaW5nIGF0
IGFsbC4NCg0KVGhlbiB5b3UgbWlnaHQgcGVyaGFwcyBmaW5kIGl0IHN1cnByaXNpbmcgdGhh
dCBpbiBDKysgaXQncyBkZWZpbmVkIHRvIGJlIDAuDQoNCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFy
LmVzLz4NCg==

--------------q6o3csl01dgUxfFU4yS3QdFw--

--------------GNt626YsUYiLDDYvZ0WcjdjH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLf3+EACgkQnowa+77/
2zI+tQ/+MoTf1GrcK1/vbSQoVjc9NY76EQdc3Pt4BMirRHI865OyB6qoEbVHw4IY
T4sRFsr5C92YGa6sAb+yjgFmdWcBQ7TuImnS9iIdcs/d0gvWPUDLodRDj8TbfkxY
yHHL6Ux3h/8LP+4UYPgcY4421qYtccW0MxpWwsNcxAtk3cQzEnw7fYgDuWkLo73a
2tLbok4Di/sBiYP0uNg45TwMVjf7LYEu6NJgIQxPwSlYhJ7d8UswlkXd/zYP6vYg
LUsxVMyo95/94ILdBsrmwvmPMPthswiXzBGsB2PcRd+29U6YAP/RVRbi/gRSS0P+
YjWLaegWh/5zCGsoLa1dj/Y4TLoeiyW9wbT30QzFlEAeXiVge9bjE+Q6F24XDxb8
KLeBmjRcgU02XzXfR4Z2Sbmv+rRCd/5C1LvzVDhKBn7ytIDkByhrhsolDu42iRa7
xjw3Ei0PSvQxuM9H0pax1Xgr9SpzAe7gOh9rmWb/m9XTQ+K+ArpyFhQahwutAR1M
BTNTen2DrDXZIt5mMZbXrL0o/GFLGFaF43Gg1FYx9LJ6ZqesgVTVHm7SaRIxod/G
2NGtG4+UrC59y30WmxBx4jXnF6mMVuetVKsOIxKCXyWTAXKVH9HVh42BDqrlX4/f
6/GR3hWTM/CEE7w+N8d1JPDdWbiEme1r11NXB4VVFhbXiGzPM1s=
=+Isd
-----END PGP SIGNATURE-----

--------------GNt626YsUYiLDDYvZ0WcjdjH--
