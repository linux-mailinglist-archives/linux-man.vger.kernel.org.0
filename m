Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 263D565BD88
	for <lists+linux-man@lfdr.de>; Tue,  3 Jan 2023 10:59:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237001AbjACJ7i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Jan 2023 04:59:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232990AbjACJ7h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Jan 2023 04:59:37 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 809D7EE31;
        Tue,  3 Jan 2023 01:59:35 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id y8so28855794wrl.13;
        Tue, 03 Jan 2023 01:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MLIBMGouQmobP8kVmsIkUHnUqoZi7lrFSQF4WjKTeKw=;
        b=S9ETtDyRqt2r/bQL5jRQ3/qQYx0QJsrs2sOqucmenRibHhBr9sCwlkWx/DPoLjFF0K
         JUm6XWrcLHjrW1AGmi9DI+XOmBc/G3in2HMrRW/mDgp0Q1SuZs+2N4OrnLAWwUpv6aMm
         WRPoVZSB/PHoz16uGxDHkYQAIY/efeBak8gxMZ05fSKGMTeU573KvzxVHQ5ZmUtvJ7nY
         NHdNuYqLJeKA8T63+JETFz/Q5xXT9JZat8bh+m4kbatGeSwiFgAOjHKQoLMbtSpkYP8M
         zq6HumuTxjAbYuXvCAdK8rLb4Dc/Yhz7f9e83jQU4L2lyflz+V2eYtrfboTXoWr8b+nv
         DVRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MLIBMGouQmobP8kVmsIkUHnUqoZi7lrFSQF4WjKTeKw=;
        b=v5o4lyx7pmnCmtKlOKfce85CLm1GhmwT3vYUaWSa066NVwAG56CFfbjv+6PW/N5SKq
         MK6QjrlbC4d9fkW4xwnhctMs4LaIAsnXv/VrZkPfQNb73Aasoz/1rpzspXZPAjY4nqrW
         HpPYSnUDGuJlh0jn5mVztF8/Cm9FGvAKcn/1lOtmQ7B9ybPXV9wXjCM6MTyYCJg0DX/I
         ZrtLaPEaonMCMJ2GSp+O1Z39+VkpDBAzcy02bZkysdWQ5EPNUHzToPssM1lZF7Y6lVwr
         eqek66CFS6in9POsp/aVM5redwUPMmZ/bt2OeKVhFFxBVtJ2Nl1Of1sbhVIiNlkZlSaf
         wMsQ==
X-Gm-Message-State: AFqh2krPS/ujfSJq7c7xtPgbknGVuiw+5Erf1bQfoPw9dJZpFnzAhZbd
        rRa3fhryQbTBVxqjaBdj7Bs=
X-Google-Smtp-Source: AMrXdXs5LlGC6+psGmG4txh5Zb59lJlJXCUcagL3nMJKopVxukDh9Zz1MSdcyC82aIbdirJ6aOJ1jg==
X-Received: by 2002:a05:6000:1e04:b0:273:e385:1a89 with SMTP id bj4-20020a0560001e0400b00273e3851a89mr24224697wrb.67.1672739973902;
        Tue, 03 Jan 2023 01:59:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s18-20020adfdb12000000b00241fde8fe04sm31154035wri.7.2023.01.03.01.59.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 01:59:33 -0800 (PST)
Message-ID: <aa0ec1ba-ad47-795f-6e36-d6c0d224f51e@gmail.com>
Date:   Tue, 3 Jan 2023 10:59:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] perf_event_open.2: Update recent changes
To:     Namhyung Kim <namhyung@kernel.org>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Jiri Olsa <jolsa@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Marco Elver <elver@google.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Kan Liang <kan.liang@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        linux-perf-users@vger.kernel.org
References: <20221228021651.1027725-1-namhyung@kernel.org>
 <55416c53-1633-2c9c-e51c-cc96e27b4b11@gmail.com>
 <CAM9d7ci1wwqcBtu0RxeoiNqmDMAnaUnzEv9jTbFNjw+VnGinBA@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAM9d7ci1wwqcBtu0RxeoiNqmDMAnaUnzEv9jTbFNjw+VnGinBA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------kvj0UhbbGa7HE5FTLv6sQ0ez"
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------kvj0UhbbGa7HE5FTLv6sQ0ez
Content-Type: multipart/mixed; boundary="------------0haipMI5tcAB6M9M3w7hwWBx";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Namhyung Kim <namhyung@kernel.org>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Marco Elver <elver@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Kan Liang <kan.liang@linux.intel.com>, Stephane Eranian
 <eranian@google.com>, linux-perf-users@vger.kernel.org
Message-ID: <aa0ec1ba-ad47-795f-6e36-d6c0d224f51e@gmail.com>
Subject: Re: [PATCH] perf_event_open.2: Update recent changes
References: <20221228021651.1027725-1-namhyung@kernel.org>
 <55416c53-1633-2c9c-e51c-cc96e27b4b11@gmail.com>
 <CAM9d7ci1wwqcBtu0RxeoiNqmDMAnaUnzEv9jTbFNjw+VnGinBA@mail.gmail.com>
In-Reply-To: <CAM9d7ci1wwqcBtu0RxeoiNqmDMAnaUnzEv9jTbFNjw+VnGinBA@mail.gmail.com>

--------------0haipMI5tcAB6M9M3w7hwWBx
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTmFtaHl1bmcsDQoNCk9uIDEvMy8yMyAwNDoxMywgTmFtaHl1bmcgS2ltIHdyb3RlOg0K
PiBIaSBBbGVqYW5kcm8sDQo+IA0KPiBIYXBweSBuZXcgeWVhciENCg0KSGFwcHkgbmV3IHll
YXIhIDopDQoNCj4+PiBAQCAtMjIwOSw2ICsyMzM2LDEyIEBAIHN0cnVjdCB7DQo+Pj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLyogaWYgUEVSRl9TQU1QTEVfUkVHU19JTlRSICov
DQo+Pj4gICAgICAgIHU2NCAgICBwaHlzX2FkZHI7ICAgLyogaWYgUEVSRl9TQU1QTEVfUEhZ
U19BRERSICovDQo+Pj4gICAgICAgIHU2NCAgICBjZ3JvdXA7ICAgICAgLyogaWYgUEVSRl9T
QU1QTEVfQ0dST1VQICovDQo+Pj4gKyAgICB1NjQgICAgZGF0YV9wYWdlX3NpemU7DQo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgIC8qIGlmIFBFUkZfU0FNUExFX0RBVEFfUEFHRV9T
SVpFICovDQo+Pg0KPj4gVGhlIGxpbmUgYWJvdmUgcnVucyBwYXN0IDgwIGNvbHVtbi4NCj4+
DQo+Pj4gKyAgICB1NjQgICAgY29kZV9wYWdlX3NpemU7DQo+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgIC8qIGlmIFBFUkZfU0FNUExFX0NPREVfUEFHRV9TSVpFICovDQo+Pg0KPj4g
VGhlIGxpbmUgYWJvdmUgcnVucyBwYXN0IDgwIGNvbHVtbi4NCj4+DQo+IA0KPiBIbW0uLiB0
aGV5IGRvbid0IHJ1biBwYXN0IDgwIGNvbHVtbiBieSB0aGVtc2VsdmVzLg0KPiBXaWxsIHRo
ZXkgZ2V0IG1lcmdlZCBzb21laG93Pw0KDQpUaGV5IGRvbid0IHJ1biBwYXN0IDgwIGluIHRo
ZSBzb3VyY2UsIGJ1dCBydW4gcGFzdCA4MCBpbiB0aGUgZm9ybWF0dGVkIHBhZ2UuIA0KQmVj
YXVzZSB0aGVyZSdzIGFscmVhZHkgYSA3LXNwYWNlIGluZGVudGF0aW9uIGZvciBldmVyeXRo
aW5nIGluIGEgbWFudWFsIHBhZ2UsIA0KZXhjZXB0IGZvciB0aGUgc2VjdGlvbiB0aXRsZXMu
DQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBUaGFua3MsDQo+IE5hbWh5dW5nDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------0haipMI5tcAB6M9M3w7hwWBx--

--------------kvj0UhbbGa7HE5FTLv6sQ0ez
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOz/HwACgkQnowa+77/
2zI4OA//QGhUdGanmLglT1a+EKN0HpxTqy/E3mvidQ0Icz+cLzP1rZWPAXktncBZ
jlMl+mkV8J4etYHXVw5sO3JW5PHpTYKWQyxDi/GFdyrMf1vM9SNhODN/53j3Hiqi
rpnnjg/GkaBfN7It3j8OO0Z3wrCZmanIq8xXUfvGZu5Sf532IIswWs5asQp3UrM2
TXYy0rzwOK7AFmBdf2228v3JllngAIKnEmYdZMtlfZAr++0emJOLaY6ldZbZcaOj
ovlhmESz20GBRDeLX7LhLPcZ9rwp2W025ka/qOt+utJg2HefqI2P87JTPam6GVTf
CzrPZZE4TIvb1x8QVuB/kvtqeCSNkmnaA27e2WbK4BMcYT8yduAMrusZHmQ/91fc
SnP8Zz+K+AqjDVCpvNcHFemXX0oP+6eh5wT/+NmCPbee5S9MtoYEO6xaGFRLBYr5
xtfRvK0kk4JfoOIsc6jGHWMIMFPurtMQSE7RReNPK1brR3gNaaNidhxeStvYKp7+
4ZPfqbHFQZTIvU+pp7UjyswpIiCxzhIDZYgUi1oL40b4c7fAygTfC20swGdox+V/
U5G1Hf/uDYT3dULxDFfYCYlEwy9ct5xnPnUuBmtDfT3LQVcFFB3PnYd23zxLbZ4F
ESoUzS8XYuWkG346EX9hkcM4CM7Flgjz1p8Rox4ruwt7GIoKfiM=
=m9RN
-----END PGP SIGNATURE-----

--------------kvj0UhbbGa7HE5FTLv6sQ0ez--
