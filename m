Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D425A59E811
	for <lists+linux-man@lfdr.de>; Tue, 23 Aug 2022 18:56:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243718AbiHWQvU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Aug 2022 12:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245719AbiHWQtU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Aug 2022 12:49:20 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 395841272FA
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:17:01 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id r16so16965377wrm.6
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 06:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=EBel4ni+gTTVIHRX/MxJbzPAX/lfNeB8IA6lzehqa8E=;
        b=H21s3jGyXNrkyGu07cyZNp7Q8E58ntbIjhuLkymr6mCXimqYM0mi1y31qc1K18WMFy
         SlR3me/g/9ZU4OfQ5WMRzcMEg/1ARKEOcVoPmgFigsn4IMpj1uVfYShZMes1GfjJhrGk
         9kECFlfOoUlMHD26cIUyKNT4mz6odKgYSDS1Vjcw7aga2Kk7n/2LKxi/u6btm+aaRfGx
         YNgPubU2wGUP6Y8nyZDhdqOJCjGY/jZDi8NjP5s1CtbvC+lPnonRvXZ3aF0jAVNTfq5k
         8hHmE1DAYUsaieEBOvUFb2KAzSV1opttcZGA8DPCZNXLoCb5Md0u9TZrSmOKea6oJ8pP
         3qGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=EBel4ni+gTTVIHRX/MxJbzPAX/lfNeB8IA6lzehqa8E=;
        b=CRdyqhJevxhwnjXADyr/xzj1XIdXCksboZ6ka8WLAjzxRwUJw3wc+YU1Nk5pu1GeUF
         TRkIfD9i9UDGoPWoCp0E0FkxqcnpAFeI5CicITIZKnfqASS6Ya7ymlujOj9y3zQwnrW9
         5r8rWp5TZ2bO9tfkNkb8kCGTXP0UFjlWMeSMR8aQGS/p83kHZh9DQti0t99O5aXlhtM2
         hWjsVK+d7ZNMyDPFYL77tP7bAAKZB1J0/ZsP+EtuZI3vzPrRwpYUi1BHsD55sxCqVjfN
         yBCT+kgk/pqxszq62mSBY53nLxmb5eY+aVPcuxy4KAHcuCJ+zv3kl7t55Hl9tm/NAikU
         TsqQ==
X-Gm-Message-State: ACgBeo0TA7nPx5ErZ6oZGBfkcZYkdKuoN6yHSkET6hxcvesj/ORNnzv7
        vFFA0ZGN9u7ptUmxyWtTKdE=
X-Google-Smtp-Source: AA6agR6uaeZH1RGIenPtWUn7x31gOoaMtbe3RkJpAQJV0NNqB6wzoVpAfaQS0Xt1GbSN7V8F/eNiMw==
X-Received: by 2002:a5d:4587:0:b0:225:5f3f:1d7a with SMTP id p7-20020a5d4587000000b002255f3f1d7amr4193070wrq.181.1661260619640;
        Tue, 23 Aug 2022 06:16:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id z24-20020a1cf418000000b003a5dadcf1a8sm17670518wma.19.2022.08.23.06.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 06:16:59 -0700 (PDT)
Message-ID: <ba5cd1b5-eadb-3f63-ba69-8a7bd8c2c105@gmail.com>
Date:   Tue, 23 Aug 2022 15:16:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
Content-Language: en-US
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87mtbv4chu.fsf@oldenburg.str.redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------qE0AIsJeodSlkj2An0WmlMw9"
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
--------------qE0AIsJeodSlkj2An0WmlMw9
Content-Type: multipart/mixed; boundary="------------PHP1bBjb7ZsgiSX4EsUk0QW3";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Message-ID: <ba5cd1b5-eadb-3f63-ba69-8a7bd8c2c105@gmail.com>
Subject: Re: [PATCH v2] _Generic.3: New page documenting _Generic()
References: <20220820171009.34196-1-alx.manpages@gmail.com>
 <20220821115506.22850-1-alx.manpages@gmail.com>
 <87mtbv4chu.fsf@oldenburg.str.redhat.com>
In-Reply-To: <87mtbv4chu.fsf@oldenburg.str.redhat.com>

--------------PHP1bBjb7ZsgiSX4EsUk0QW3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgRmxvcmlhbiwNCg0KT24gOC8yMy8yMiAwOTo1OCwgRmxvcmlhbiBXZWltZXIgd3JvdGU6
DQogPiAqIEFsZWphbmRybyBDb2xvbWFyOg0KID4NCiA+PiArLlNIIEVYQU1QTEVTDQogPj4g
K1RoZSBmb2xsb3dpbmcgcHJvZ3JhbSBkZW1vbnN0cmF0ZXMgaG93IHRvIHdyaXRlDQogPj4g
K2EgcmVwbGFjZW1lbnQgZm9yIHRoZSBzdGFuZGFyZA0KID4+ICsuQlIgaW1heGFicyAoMykN
CiA+PiArZnVuY3Rpb24sIHdoaWNoIGJlaW5nIGEgZnVuY3Rpb24gY2FuJ3QgcmVhbGx5IHBy
b3ZpZGUgd2hhdCBpdCBwcm9taXNlczoNCiA+PiArc2VhbWxlc3NseSB1cGdyYWRpbmcgdG8g
dGhlIHdpZGVzdCBhdmFpbGFibGUgdHlwZS4NCiA+PiArLlBQDQogPj4gKy5cIiBTUkMgQkVH
SU4gKF9HZW5lcmljLmMpDQogPj4gKy5FWA0KID4+ICsjaW5jbHVkZSA8c3RkaW50Lmg+DQog
Pj4gKyNpbmNsdWRlIDxzdGRpby5oPg0KID4+ICsjaW5jbHVkZSA8c3RkbGliLmg+DQogPj4g
Kw0KID4+ICsjZGVmaW5lIG15X2ltYXhhYnMoaikgIF9HZW5lcmljKChpbnRtYXhfdCkgMCwg
IFxlDQogPj4gKyAgICBpbnQ6ICAgICAgICAgICAgYWJzKGopLCAgICAgICAgICAgICAgICAg
ICAgXGUNCiA+PiArICAgIGxvbmc6ICAgICAgICAgICBsYWJzKGopLCAgICAgICAgICAgICAg
ICAgICBcZQ0KID4+ICsgICAgbG9uZyBsb25nOiAgICAgIGxsYWJzKGopICAgICAgICAgICAg
ICAgICAgIFxlDQogPj4gKyAvKiBsb25nIGxvbmcgbG9uZzogbGxsYWJzKGopICovICAgICAg
ICAgICAgICAgXGUNCiA+PiArKQ0KID4NCiA+IFRoZSBtYWNybyBuYW1lIGRvZXMgbm90IHJl
YWxseSBtYXRjaCB3aGF0IHRoZSBmdW5jdGlvbiBkb2VzLiAgSXQncyBhDQogPiB0eXBlLWdl
bmVyaWMgYWJzIGZ1bmN0aW9uLCBub3QgcmVsYXRlZCB0byB0aGUgbWF4IGZ1bmN0aW9uIG9y
IGludG1heF90Lg0KTm8sIGl0J3Mgbm90IGEgdHlwZS1nZW5lcmljIGZ1bmN0aW9uLCBwZXIg
dGhlIHVzdWFsIGRlZmluaXRpb24gb2YgDQoidHlwZS1nZW5lcmljIGZ1bmN0aW9uIi4gIEl0
IGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSBpbnB1dCB0eXBlLiAgVGhlIA0Kc2VsZWN0b3IgaXMg
Zml4ZWQuICBJdCdzIGFjdHVhbGx5IG1vcmUgb3IgbGVzcyBsaWtlIHN3aXRjaC1jYXNlLWlu
ZyBvbiBhIA0KY29tcGlsZS10aW1lIGNvbnN0YW50LiAgQlRXLCBJIGNvdWxkIGltcHJvdmUg
aXQgdG8gYmUgSU5UTUFYX0MoMCkuDQoNCkl0IGJlaGF2ZXMgdGhlIHNhbWUgYXMgdGhlIHN0
YW5kYXJkIGltYXhhYnMoMyk6DQoNClRoZSBpbnB1dCBpcyBjb252ZXJ0ZWQgdG8gaW50bWF4
X3QgYmVmb3JlIGJlaW5nIHBhc3NlZCB0byB0aGUgZnVuY3Rpb24gDQooaS5lLiwgX19pbnQx
Mjggd291bGQgYmUgdHJ1bmNhdGVkIHRvIGludG1heF90KSwgYW5kIHRoZSBvdXRwdXQgaXMg
b2YgDQp0eXBlIGludG1heF90LiAgKE9yLCBhY3R1YWxseSwgdGhlIHVuZGVybHlpbmcgdHlw
ZSBiZWhpbmQgaW50bWF4X3QuKQ0KDQogPg0KID4gTm90ZSB0aGF0IHRoaXMgYXBwcm9hY2gg
ZG9lcyBub3QgcmVhbGx5IHdvcmsgdGhhdCB3ZWxsIGluIHByYWN0aWNlDQogPiBiZWNhdXNl
IG1hY3JvcyB1c2luZyBfR2VuZXJpYyBleHBhbmQgYWxsIHRoZSBhbHRlcm5hdGl2ZXMNClll
YWgsIGl0IGV4cGFuZHMgYWxsLCBpbnN0ZWFkIG9mIGJlaGF2aW5nIGxpa2UgYSBsb3Qgb2Yg
I2lmJ3MuICBNYXliZSANCiNpZidzIHdvdWxkIGJlIGJldHRlciBmb3IgYSBsaWJjLCBidXQg
X0dlbmVyaWMoKSBjb3VsZCBiZSBnb29kIGVub3VnaCANCmZvciBzb21lIGltcGxlbWVudGF0
aW9ucywgb3IgY291bGQgYmUgZ29vZCBmb3IgYSB1c2VyIHRoYXQgZG9lc24ndCB3YW50IA0K
dG8gdXNlIHRoZSBicm9rZW4tYnktZGVzaWduIHN0YW5kYXJkIGltYXhhYnMoMykuDQoNCiA+
IChpbiBjdXJyZW50DQogPiBpbXBsZW1lbnRhdGlvbnM7IGRvaW5nIHRoaXMgZGlmZmVyZW50
bHkgcmVxdWlyZXMgZGV2aWF0aW5nIGZyb20gdGhlDQogPiBsYXllcmVkIGltcGxlbWVudGF0
aW9uIHN0cmF0ZWd5IHN1Z2dlc3RlZCBpbiB0aGUgQyBzdGFuZGFyZCkuDQpUaGUgc3RhbmRh
cmQgaXMgYnJva2VuIGluIHRoaXMgcmVnYXJkLiAgTXkgaGludCBpcyB0byBmaXggdGhlIHN0
YW5kYXJkLCANCm5vdCB0byBmaXggbGliYy4gIEFsdGhvdWdoIGdsaWJjIG1pZ2h0IGJlbmVm
aXQgZnJvbSBkZXZpYXRpbmcgZnJvbSB0aGUgDQpzdGFuZGFyZCBmb3IgZ29vZCBoZXJlLg0K
DQpUaGUgcHJvYmxlbSBpcyBpbiBlbWl0dGluZyBsaW5rZXIgY29kZSBmb3IgYSBmdW5jdGlv
biB3aG9zZSB0eXBlIGlzIA0KZXhwZWN0ZWQgdG8gY2hhbmdlIGluIHRoZSBmdXR1cmUuICBB
IG1hY3JvIGlzIGZyZWUgZnJvbSBBQkkgcHJvYmxlbXMgYnkgDQpub3QgZW1pdHRpbmcgYW55
IGxpbmtlciBjb2RlLg0KDQpCVFcsIGFzIGEgdmVyeS1sb25nIHRlcm0gc3VnZ2VzdGlvbiBp
bXByb3ZlbWVudCBmb3IgbGliYyBhbmQgSVNPIEMsIA0KZnVuY3Rpb25zIHNob3VsZCBiZSBl
bWl0dGVkIG9ubHkgZm9yIGZpeGVkIHdpZHRoIGludGVnZXIgdHlwZXMsIGxpa2UNCg0KYWJz
MzIoKSwgYWJzNjQoKSwgYWJzMTI4KCksIC4uLg0KDQpJZiBvbmx5IGZpeGVkLXdpZHRoIGZ1
bmN0aW9uIGlkZW50aWZpZXJzIGV4aXN0ZWQgKGluc3RlYWQgb2YgbGFicygpIGFuZCANCmxs
YWJzKCksIC4uLiksIEFCSSBzdGFiaWxpdHkgd291bGQgYmUgbGVzcyBwcm9ibGVtYXRpYyB0
aGFuIGl0IGlzIHJpZ2h0IG5vdy4NCg0KID4gIFRoaXMNCiA+IG1lYW5zIHRoYXQgX0dlbmVy
aWMtdXNpbmcgbWFjcm9zIGNhbiBvbmx5IGJlIG5lc3RlZCBtYXliZSB0aHJlZSBvciBmb3Vy
DQogPiBsZXZlbHMgZGVlcCwgZGVwZW5kaW5nIG9uIHRoZSBudW1iZXIgb2YgX0dlbmVyaWMg
YWx0ZXJuYXRpdmVzIG9uIGVhY2gNCiA+IGxldmVsLiAgRm9yIDx0Z21hdGguaD4sIHRoaXMg
aXMgcmVhbGx5IG5vdCBlbm91Z2gsIHNvIGEgaGlnaC1xdWFsaXR5DQogPiBpbXBsZW1lbnRh
dGlvbiBvZiA8dGdtYXRoLmg+IHVzaW5nIF9HZW5lcmljIGlzIG5vdCBmZWFzaWJsZS4gIEdD
Qw0KID4gcHJvdmlkZXMgX19idWlsdGluX3RnbWF0aCwgd2hpY2ggaXMgZGVzaWduZWQgaW4g
c3VjaCBhIHdheSB0aGF0IHdoZW4NCiA+IHVzZWQgaW4gYSBtYWNybywgdGhlIG1hY3JvIGFy
Z3VtZW50IGlzIG9ubHkgZXhwYW5kZWQgb25jZS4+DQogPiBNYXliZSBtZW50aW9uIHRoaXMg
dW5kZXIgQlVHUz8NCkknbSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIGJ1Zy4gIFRoZSBj
b2RlIGlzIGV4cGFuZGVkLCBidXQgaXQncyBub3QgDQpldmFsdWF0ZWQsIHJpZ2h0Pw0KDQpJ
LmUuLCBBRkFJSywgbXlfaW1heGFicygrK3gpIHdvdWxkIG9ubHkgZG8gdGhlICsrIG9uY2Us
IHJpZ2h0PyAgSXMgdGhhdCANCndoYXQgeW91IHdlcmUgc3VnZ2VzdGluZz8NCg0KT3RoZXJ3
aXNlLCBwbGVhc2Ugc2VuZCBhIHBhdGNoIGZvciBCVUdTLiAgSXQgbWlnaHQgaGVscC4NCg0K
ID4NCiA+IEMrKyB0ZW1wbGF0ZXMgZG8gbm90IHN1ZmZlciBmcm9tIHRoaXMgcGFydGljdWxh
ciBwcm9ibGVtLg0KID4NCiA+IFRoYW5rcywNCiA+IEZsb3JpYW4NCiA+DQpUaGFua3MgZm9y
IHRoZSByZXZpZXchIQ0KDQpDaGVlcnMsDQoNCkFsZXgNCg0KLS0gDQpBbGVqYW5kcm8gQ29s
b21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------PHP1bBjb7ZsgiSX4EsUk0QW3--

--------------qE0AIsJeodSlkj2An0WmlMw9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmME00MACgkQnowa+77/
2zKCdg//WiZRCU3Nhg3W1vIUg52lk++nixVHDu4I37sAxU2VqLgfbE8tmoLZKogY
SMgAw2rY7gYsea2z1ddxbnIv6zgiZtm8ycrAMz6a7dKP4aGRu6X6YZMYO5S1sb3I
0IzcN82+gF2OfPMVuHm3KmDeggUqiUYqKUcSXjr9A0r4gD7V7nZQr1Nm7g50Cf5C
j/G+F0aeglgiBP3TebZ4HUhyvtHff2UgckLAMzR/D6I+YxgXvv2pYepPcYPg5cht
+IAP+3L40qfuWozIT7sBDPx8+6W+ckwNmoRVQU227oG1V21xjVcXZxvmw7rqVf/+
FwV4n+l4UPygb3cy0PEHkU2DFxUVMiFpPE+X+AdVoMqfCWYk836V0VDZR6qQGaEq
b3NUFFFs/2p4mZ4M+KT6U0pyxOOPAgmXisuIh5PcaBslQlWSSUxcjSNwdAUcgrrS
Ht7v0R5DtiJPMPd9VfqOAeASy6pmVcuWaNqF2cURKPlt8cnVC132Kog8rSenDfNh
nzIk9Hub3iQHZiOKUZ7w+T+V7UI/RtiswdO5TBs/Ys+BMa1aiDhm/gNS0CwG+6Ki
brvAf1gAvxPXg7D8EVcv+6umCLEGb8d2ijK3jHf9NbgkUjXI0W1fGIJixGk4V1/j
GcPpCKz0lqlPyoyyXEWoXkvmQgGJJ0xL5vYYk12IXD436n/fTB4=
=JpK7
-----END PGP SIGNATURE-----

--------------qE0AIsJeodSlkj2An0WmlMw9--
