Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D54B464D4A7
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:28:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbiLOA2G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:28:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiLOA2F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:28:05 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C401E716
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:28:04 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id r83-20020a1c4456000000b003d1e906ca23so5383wma.3
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:28:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6c22XE/50nVzVRKi8Xbi6dqzS7eY+ghL8Av3D1D8kuY=;
        b=YAmN0693LXwPIcEoD+UnRQ8+P4z9Lm42/W4cUrpMONqWl5kk3Fl9IyIjyvyvKG40+3
         Cc8ND3Nnpq+31mtOj8FfGecP3A8L3A2FbzbjhB4XXSIc508tZG8lde4KK4ICMtQ3RXXA
         N99SIQGa7zf8XgPK5wuI0FIanZ5lcUAfJD4cEntHJhcGukL+bqLUBpD/aGnozlsHZQ1a
         ds7b9cEp22VR05evLNI/rKjZnmmtVoVt7k8HBFNFFp9Ev4fRe3t9XHFSgMz6uDdxVgUT
         cktGg2oZbRwH1N8ES2vOn2DknaH6dsUnPhiSpiPyctCn/5CRSMwCmCnilAH97e8iYZpj
         /l6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6c22XE/50nVzVRKi8Xbi6dqzS7eY+ghL8Av3D1D8kuY=;
        b=HFQjVb/ljNntUbWYazDCdUh4+BuQHHPOaMO9R1DUjr0tWtAcjdD9mkN8KQlamKcUv3
         QTJ7A/laFsv/77jGBwdXy+uEgVaqy771/uiRVljYYitbZVN/iAuRuXXPixrl2sICsKWB
         iQW/6CmpflUmA1IbzOmJtqPXi55aysTXLvxbcG+m6HN72bQkSBMZ5BLsIjamoH2L7fhA
         MSYhNPxLgcDt7zgCnwJ4znhgIisHTyuwD7yfQ+UbMEWz9L0+oNtzL1QBTVqFsZHaUbT6
         zem9qJGKk0PeGr3oYL6exbszatR1Jnx69zqIN7a7I6x+mGevyqfmTv8vizXFNZ9WAScq
         KpWQ==
X-Gm-Message-State: ANoB5pnxS5l0IyBd3a1Ll2C6LVCQvNcI6zT3MU/imhw8rdOqtMKW9lx5
        AJrNSrv6GZosGeo2P8zIjDNygPZiRUc=
X-Google-Smtp-Source: AA0mqf5ymL56hYRXgTM53n8IVPJEW24sBLcbC3Yx2laJ70U/2bD/obUkJwcJAWSaVZP4xEvclRV6Cg==
X-Received: by 2002:a05:600c:3b15:b0:3d0:d177:cac1 with SMTP id m21-20020a05600c3b1500b003d0d177cac1mr20333469wms.36.1671064082472;
        Wed, 14 Dec 2022 16:28:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n9-20020a5d67c9000000b00228dbf15072sm4309845wrw.62.2022.12.14.16.28.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 16:28:02 -0800 (PST)
Message-ID: <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
Date:   Thu, 15 Dec 2022 01:27:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-3-alx@kernel.org>
In-Reply-To: <20221215002648.35111-3-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------4qSGh0C0mV2HiGKm60WbbAzr"
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
--------------4qSGh0C0mV2HiGKm60WbbAzr
Content-Type: multipart/mixed; boundary="------------w0TIOefBPs48fcLZP6mKTu8y";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk
 <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
 Iker Pedrosa <ipedrosa@redhat.com>, Andrew Pinski <pinskia@gmail.com>
Message-ID: <ff1858d2-f354-294f-aaf4-35a1becef557@gmail.com>
Subject: Re: [PATCH v5 2/5] stpecpy.3, stpecpyx.3, ustpcpy.3, ustr2stp.3,
 zustr2stp.3, zustr2ustp.3: Add new links to string_copy(7)
References: <20221214161719.12862-1-alx@kernel.org>
 <20221215002648.35111-3-alx@kernel.org>
In-Reply-To: <20221215002648.35111-3-alx@kernel.org>

--------------w0TIOefBPs48fcLZP6mKTu8y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Rm9ybWF0dGVkIHN0cnBjeSgzKToNCg0Kc3RyY3B5KDMpICAgICAgICAgICAgICAgICAgTGli
cmFyeSBGdW5jdGlvbnMgTWFudWFsICAgICAgICAgICAgICAgICAgc3RyY3B5KDMpDQoNCk5B
TUUNCiAgICAgICAgc3RyY3B5IC0gY29weSBvciBjYXRlbmF0ZSBhIHN0cmluZw0KDQpMSUJS
QVJZDQogICAgICAgIFN0YW5kYXJkIEMgbGlicmFyeSAobGliYywgLWxjKQ0KDQpTWU5PUFNJ
Uw0KICAgICAgICAjaW5jbHVkZSA8c3RyaW5nLmg+DQoNCiAgICAgICAgY2hhciAqc3RwY3B5
KGNoYXIgKnJlc3RyaWN0IGRzdCwgY29uc3QgY2hhciAqcmVzdHJpY3Qgc3JjKTsNCiAgICAg
ICAgY2hhciAqc3RyY3B5KGNoYXIgKnJlc3RyaWN0IGRzdCwgY29uc3QgY2hhciAqcmVzdHJp
Y3Qgc3JjKTsNCiAgICAgICAgY2hhciAqc3RyY2F0KGNoYXIgKnJlc3RyaWN0IGRzdCwgY29u
c3QgY2hhciAqcmVzdHJpY3Qgc3JjKTsNCg0KICAgIEZlYXR1cmUgVGVzdCBNYWNybyBSZXF1
aXJlbWVudHMgZm9yIGdsaWJjIChzZWUgZmVhdHVyZV90ZXN0X21hY3Jvcyg3KSk6DQoNCiAg
ICAgICAgc3RwY3B5KCk6DQogICAgICAgICAgICBTaW5jZSBnbGliYyAyLjEwOg0KICAgICAg
ICAgICAgICAgIF9QT1NJWF9DX1NPVVJDRSA+PSAyMDA4MDlMDQogICAgICAgICAgICBCZWZv
cmUgZ2xpYmMgMi4xMDoNCiAgICAgICAgICAgICAgICBfR05VX1NPVVJDRQ0KDQpERVNDUklQ
VElPTg0KICAgICAgICBzdHBjcHkoKQ0KICAgICAgICBzdHJjcHkoKQ0KICAgICAgICAgICAg
ICAgVGhlc2UgZnVuY3Rpb25zIGNvcHkgdGhlIHN0cmluZyBwb2ludGVkIHRvIGJ5IHNyYywg
aW50byBhIHN0cmluZw0KICAgICAgICAgICAgICAgYXQgIHRoZSBidWZmZXIgcG9pbnRlZCB0
byBieSBkc3QuICBUaGUgcHJvZ3JhbW1lciBpcyByZXNwb25zaWJsZQ0KICAgICAgICAgICAg
ICAgZm9yIGFsbG9jYXRpbmcgYSBidWZmZXIgbGFyZ2UgZW5vdWdoLCB0aGF0IGlzLCBzdHJs
ZW4oc3JjKSArICAxLg0KICAgICAgICAgICAgICAgVGhleSBvbmx5IGRpZmZlciBpbiB0aGUg
cmV0dXJuIHZhbHVlLg0KDQogICAgICAgIHN0cmNhdCgpDQogICAgICAgICAgICAgICBUaGlz
IGZ1bmN0aW9uIGNhdGVuYXRlcyB0aGUgc3RyaW5nIHBvaW50ZWQgdG8gYnkgc3JjLCBhdCB0
aGUgZW5kDQogICAgICAgICAgICAgICBvZiAgdGhlIHN0cmluZyBwb2ludGVkIHRvIGJ5IGRz
dC4gIFRoZSBwcm9ncmFtbWVyIGlzIHJlc3BvbnNpYmxlDQogICAgICAgICAgICAgICBmb3Ig
YWxsb2NhdGluZyBhIGJ1ZmZlciBsYXJnZSBlbm91Z2gsICB0aGF0ICBpcywgIHN0cmxlbihk
c3QpICArDQogICAgICAgICAgICAgICBzdHJsZW4oc3JjKSArIDEuDQoNCiAgICAgICAgQW4g
aW1wbGVtZW50YXRpb24gb2YgdGhlc2UgZnVuY3Rpb25zIG1pZ2h0IGJlOg0KDQogICAgICAg
ICAgICBjaGFyICoNCiAgICAgICAgICAgIHN0cGNweShjaGFyICpyZXN0cmljdCBkc3QsIGNv
bnN0IGNoYXIgKnJlc3RyaWN0IHNyYykNCiAgICAgICAgICAgIHsNCiAgICAgICAgICAgICAg
ICBjaGFyICAqZW5kOw0KDQogICAgICAgICAgICAgICAgZW5kID0gbWVtcGNweShkc3QsIHNy
Yywgc3RybGVuKHNyYykpOw0KICAgICAgICAgICAgICAgICplbmQgPSAnXDAnOw0KDQogICAg
ICAgICAgICAgICAgcmV0dXJuIGVuZDsNCiAgICAgICAgICAgIH0NCg0KICAgICAgICAgICAg
Y2hhciAqDQogICAgICAgICAgICBzdHJjcHkoY2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBj
aGFyICpyZXN0cmljdCBzcmMpDQogICAgICAgICAgICB7DQogICAgICAgICAgICAgICAgc3Rw
Y3B5KGRzdCwgc3JjKTsNCiAgICAgICAgICAgICAgICByZXR1cm4gZHN0Ow0KICAgICAgICAg
ICAgfQ0KDQogICAgICAgICAgICBjaGFyICoNCiAgICAgICAgICAgIHN0cmNhdChjaGFyICpy
ZXN0cmljdCBkc3QsIGNvbnN0IGNoYXIgKnJlc3RyaWN0IHNyYykNCiAgICAgICAgICAgIHsN
CiAgICAgICAgICAgICAgICBzdHBjcHkoZHN0ICsgc3RybGVuKGRzdCksIHNyYyk7DQogICAg
ICAgICAgICAgICAgcmV0dXJuIGRzdDsNCiAgICAgICAgICAgIH0NCg0KUkVUVVJOIFZBTFVF
DQogICAgICAgIHN0cGNweSgpDQogICAgICAgICAgICAgICBUaGlzICBmdW5jdGlvbiByZXR1
cm5zIGEgcG9pbnRlciB0byB0aGUgdGVybWluYXRpbmcgbnVsbCBieXRlIGF0DQogICAgICAg
ICAgICAgICB0aGUgZW5kIG9mIHRoZSBjb3BpZWQgc3RyaW5nLg0KDQogICAgICAgIHN0cmNw
eSgpDQogICAgICAgIHN0cmNhdCgpDQogICAgICAgICAgICAgICBUaGVzZSBmdW5jdGlvbnMg
cmV0dXJuIGRlc3QuDQoNCkFUVFJJQlVURVMNCiAgICAgICAgRm9yIGFuIGV4cGxhbmF0aW9u
IG9mIHRoZSB0ZXJtcyAgdXNlZCAgaW4gIHRoaXMgIHNlY3Rpb24sICBzZWUgIGF0dHJpYuKA
kA0KICAgICAgICB1dGVzKDcpLg0KICAgICAgICDilIzilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilKzilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilKzi
lIDilIDilIDilIDilIDilIDilIDilIDilIDilJANCiAgICAgICAg4pSCSW50ZXJmYWNlICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDilIIgQXR0cmlidXRlICAgICDilIIg
VmFsdWUgICDilIINCiAgICAgICAg4pSc4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS84pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS84pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSkDQogICAgICAgIOKUgnN0cGNweSgpLCBzdHJjcHkoKSwg
c3RyY2F0KCkgICAgICAgICAgICAgICAg4pSCIFRocmVhZCBzYWZldHkg4pSCIE1U4oCQU2Fm
ZSDilIINCiAgICAgICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pS04pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSA4pSA4pSYDQoNClNUQU5EQVJEUw0KICAgICAgICBzdHBjcHkoKQ0KICAgICAg
ICAgICAgICAgUE9TSVguMeKAkDIwMDguDQoNCiAgICAgICAgc3RyY3B5KCkNCiAgICAgICAg
c3RyY2F0KCkNCiAgICAgICAgICAgICAgIFBPU0lYLjHigJAyMDAxLCBQT1NJWC4x4oCQMjAw
OCwgQzg5LCBDOTksIFNWcjQsIDQuM0JTRC4NCg0KQ0FWRUFUUw0KICAgICAgICBUaGUgc3Ry
aW5ncyBzcmMgYW5kIGRzdCBtYXkgbm90IG92ZXJsYXAuDQoNCiAgICAgICAgSWYgIHRoZSAg
ZGVzdGluYXRpb24gIGJ1ZmZlciBpcyBub3QgbGFyZ2UgZW5vdWdoLCB0aGUgYmVoYXZpb3Ig
aXMgdW5kZeKAkA0KICAgICAgICBmaW5lZC4gIFNlZSBfRk9SVElGWV9TT1VSQ0UgaW4gZmVh
dHVyZV90ZXN0X21hY3Jvcyg3KS4NCg0KQlVHUw0KICAgICAgICBzdHJjYXQoKQ0KICAgICAg
ICAgICAgICAgVGhpcyBmdW5jdGlvbiBjYW4gYmUgIHZlcnkgIGluZWZmaWNpZW50LiAgIFJl
YWQgIGFib3V0ICBTaGxlbWllbA0KICAgICAgICAgICAgICAgdGhlICAgICAgcGFpbnRlciAg
ICAg4p+oaHR0cHM6Ly93d3cuam9lbG9uc29mdHdhcmUuY29tLzIwMDEvMTIvMTEvDQogICAg
ICAgICAgICAgICBiYWNrLXRvLWJhc2ljcy/in6kuDQoNCkVYQU1QTEVTDQogICAgICAgICNp
bmNsdWRlIDxzdGRpby5oPg0KICAgICAgICAjaW5jbHVkZSA8c3RkbGliLmg+DQogICAgICAg
ICNpbmNsdWRlIDxzdHJpbmcuaD4NCg0KICAgICAgICBpbnQNCiAgICAgICAgbWFpbih2b2lk
KQ0KICAgICAgICB7DQogICAgICAgICAgICBjaGFyICAgICpwOw0KICAgICAgICAgICAgY2hh
ciAgICBidWYxW0JVRlNJWl07DQogICAgICAgICAgICBjaGFyICAgIGJ1ZjJbQlVGU0laXTsN
CiAgICAgICAgICAgIHNpemVfdCAgbGVuOw0KDQogICAgICAgICAgICBwID0gYnVmMTsNCiAg
ICAgICAgICAgIHAgPSBzdHBjcHkocCwgIkhlbGxvICIpOw0KICAgICAgICAgICAgcCA9IHN0
cGNweShwLCAid29ybGQiKTsNCiAgICAgICAgICAgIHAgPSBzdHBjcHkocCwgIiEiKTsNCiAg
ICAgICAgICAgIGxlbiA9IHAgLSBidWYxOw0KDQogICAgICAgICAgICBwcmludGYoIltsZW4g
PSAlenVdOiAiLCBsZW4pOw0KICAgICAgICAgICAgcHV0cyhidWYxKTsgIC8vICJIZWxsbyB3
b3JsZCEiDQoNCiAgICAgICAgICAgIHN0cmNweShidWYyLCAiSGVsbG8gIik7DQogICAgICAg
ICAgICBzdHJjYXQoYnVmMiwgIndvcmxkIik7DQogICAgICAgICAgICBzdHJjYXQoYnVmMiwg
IiEiKTsNCiAgICAgICAgICAgIGxlbiA9IHN0cmxlbihidWYyKTsNCg0KICAgICAgICAgICAg
cHJpbnRmKCJbbGVuID0gJXp1XTogIiwgbGVuKTsNCiAgICAgICAgICAgIHB1dHMoYnVmMik7
ICAvLyAiSGVsbG8gd29ybGQhIg0KDQogICAgICAgICAgICBleGl0KEVYSVRfU1VDQ0VTUyk7
DQogICAgICAgIH0NCg0KU0VFIEFMU08NCiAgICAgICAgc3RyZHVwKDMpLCBzdHJpbmcoMyks
IHdjc2NweSgzKSwgc3RyaW5nX2NvcHkoNykNCg0KTGludXggbWFu4oCQcGFnZXMgKHVucmVs
ZWFzZWQpICAgICAgICAoZGF0ZSkgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJjcHko
MykNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------w0TIOefBPs48fcLZP6mKTu8y--

--------------4qSGh0C0mV2HiGKm60WbbAzr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOaagoACgkQnowa+77/
2zKe5xAAhNKuQoo+YqQg97DykB64h++rLaTM+IwZxEjqRvVvrOF+8/JhO8Wgr3G9
6N0XAA+HdByohH48zHG/BGLXwjikloYcuMjVpDBhUhuOdxendDVnqnO9ObxxjZzI
HCAMOtfX8uHinvLqLK/OAdMOvd9pxD49xD0mm2pn6CpX/q6ZI/7zthv1sBYa5N4G
6t6zguWZM8dXLHUEzP3Ksu5R7vbUCZRBPK7tyPisSiRuWKVy/dKf2+gSR3wikK1n
SxUCF1OJV7swig+XJjCwxIxpcz326aQQT2nT0pjA+LXSAxMHtdJqvHu5RcqpEdcl
fUe4JJs6ODxLJwoswXu7bvEZUS+SRy1saCXevNrelaSRm45rFB9V38dd8wx8Zmjc
aGaVyisdw8vSKa7KxIzNE9Iw9lzDyIYmAnf3eF3G60D5CK5YrdE3XxLKdGI3dvL8
oDh966KN9xLbOhGxkfS7sC9pjzuHCtnPLh2yT4HxVGr7Pl3mPSQEJOX8LnncQhWb
zLUyO563oOaP2eFSCMeXoY0xiQrRQBMTi/KrM6Xzw3F3aSXI1j/JFpH5qdjbuDX+
Pu/30c0TErHa4lOfclD6XzSInGdXh8qDoDhPOijC0OQSs5nNb0Y8hUwK8dfxNQlb
zCykD5CA/YZteSkud0rlUQ4Eyxwns5s1e9/2w/SBQtBqoUvmqSk=
=ktdM
-----END PGP SIGNATURE-----

--------------4qSGh0C0mV2HiGKm60WbbAzr--
