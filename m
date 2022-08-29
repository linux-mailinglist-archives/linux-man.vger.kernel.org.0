Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 427295A56FA
	for <lists+linux-man@lfdr.de>; Tue, 30 Aug 2022 00:17:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbiH2WRT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Aug 2022 18:17:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229854AbiH2WRM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Aug 2022 18:17:12 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64A29785AA
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:17:09 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id bu22so11526410wrb.3
        for <linux-man@vger.kernel.org>; Mon, 29 Aug 2022 15:17:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=igX6CRJSaBPHOdezpA3JgJv3/iUC8Ofg+AywOPL//vM=;
        b=DSwVyBq4rclUe0oQhd0eoyRMSx4fWqQfq/7Xb/B/jqpeimJ5Dowwyhm0KPB+TCbHC8
         JzkQp+W/HZl6IZ7XHLZFw2EkriWvV/ejGb50lorgcKN8etL1UxGwujmRD7dV0IlsvKSf
         G2xpdo1zPMvldrJCcRay+Xx4nLbQVWJIov/eZUnx/DONxvvMZKVqL5jGF4NvVhfTeoyd
         L9238XwcvlHoS58K/ga43IL/twAtYLCTiYXyv2OmU5+GbSVgBxHh+TW4oojeVbqYtOVL
         Fgft5Z1V9e1LwXc77W47g3gHA9yOJ16rOtgtCwJHAP64NNClV79nuNqwUl1RmLoHxoRd
         d67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=igX6CRJSaBPHOdezpA3JgJv3/iUC8Ofg+AywOPL//vM=;
        b=RldIHiH4W5cQBnrifnBwbE28LdGtHSJZTCbleQ+Nb9LnJNoUsicPZTPIEmatgZiYxT
         sZRm4PoVSC13JrU6gSSiq79ZoxYbpQWxJnwm9+uFmms5Jo4BdbnMnum+ZQuHplxvsSqL
         wnEavq7DLCRfOuS4vTD97AZ2TMWMYFJ5vsEsy0/fT9+0XPeiVgPmO1aZxg3whf3FpTVo
         kyT/CpwzNkoKUnQlyJi0UkMaCCb+Z5bsTt3ZrG/4XuLccYbBSizYmqe3gagVaP6la7gT
         nyf0slKap7lS5utFUHLYL202hFN58PnAPN29zIgFhYsmBvaCWyB2uMfk/7l4eFSWnhhK
         PBog==
X-Gm-Message-State: ACgBeo2rJzJTcQOcmsNNTJHZ8IwPV0qyJFx7Yv3xaHT5IxHpQqMEUZpN
        7iML6AClFrwDnwsh75vaUtU=
X-Google-Smtp-Source: AA6agR4jZiEn1Rjo+lklCY+hJnhaW8iDBXjE+0HLBjfzpEljmTqvKA4QnvFu958bpED5P6Y1idj+zA==
X-Received: by 2002:a05:6000:1549:b0:225:64d0:a5c2 with SMTP id 9-20020a056000154900b0022564d0a5c2mr6929978wry.87.1661811427386;
        Mon, 29 Aug 2022 15:17:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m13-20020a05600c3b0d00b003a83b066401sm9961127wms.31.2022.08.29.15.17.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 15:17:06 -0700 (PDT)
Message-ID: <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
Date:   Tue, 30 Aug 2022 00:16:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------uaMY7jg06M0iE87f0YFjc9cB"
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
--------------uaMY7jg06M0iE87f0YFjc9cB
Content-Type: multipart/mixed; boundary="------------w0Rbybqc29G97XC0hb6LZl14";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <3cbbf2e5-6213-198f-4cab-c6f42204d471@gmail.com>
Subject: Re: [PATCH 1/2] cc_t.3type, speed_t.3type, tcflag_t.3type: document
 all together
References: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <ad1134a85b71db33671385502931aa61029ffc44.1661809591.git.nabijaczleweli@nabijaczleweli.xyz>

--------------w0Rbybqc29G97XC0hb6LZl14
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkg0L3QsNCxLCBCcmFuZGVuLA0KDQpPbiA4LzI5LzIyIDIzOjQ2LCDQvdCw0LEgd3JvdGU6
DQo+IHNwZWVkX3QgYW5kIHRjZmxhZ190IHdlcmUgYm90aCB1bm1lbnRpb25lZCBpbiBnZW5l
cmFsDQo+IA0KPiBJc3N1ZSA3IGhhcyB0aGlzIHRvIHNheToNCj4gICAgVGhlIDx0ZXJtaW9z
Lmg+IGhlYWRlciBzaGFsbCBkZWZpbmUgdGhlIGZvbGxvd2luZyBkYXRhIHR5cGVzIHRocm91
Z2ggdHlwZWRlZjoNCj4gICAgICBjY190ICAgICBVc2VkIGZvciB0ZXJtaW5hbCBzcGVjaWFs
IGNoYXJhY3RlcnMuDQo+ICAgICAgc3BlZWRfdCAgVXNlZCBmb3IgdGVybWluYWwgYmF1ZCBy
YXRlcy4NCj4gICAgICB0Y2ZsYWdfdCBVc2VkIGZvciB0ZXJtaW5hbCBtb2Rlcy4NCj4gICAg
VGhlIGFib3ZlIHR5cGVzIHNoYWxsIGJlIGFsbCB1bnNpZ25lZCBpbnRlZ2VyIHR5cGVzLg0K
PiAtLS0NCj4gICBtYW4zdHlwZS9jY190LjN0eXBlICAgICB8IDE0ICsrKysrKysrKysrLS0t
DQo+ICAgbWFuM3R5cGUvc3BlZWRfdC4zdHlwZSAgfCAgMSArDQo+ICAgbWFuM3R5cGUvdGNm
bGFnX3QuM3R5cGUgfCAgMSArDQo+ICAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQ0KPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBtYW4zdHlwZS9z
cGVlZF90LjN0eXBlDQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1hbjN0eXBlL3RjZmxhZ190
LjN0eXBlDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWFuM3R5cGUvY2NfdC4zdHlwZSBiL21hbjN0
eXBlL2NjX3QuM3R5cGUNCj4gaW5kZXggMDI5Y2Y5NDVjLi4wYWZkZDJjZDAgMTAwNjQ0DQo+
IC0tLSBhL21hbjN0eXBlL2NjX3QuM3R5cGUNCj4gKysrIGIvbWFuM3R5cGUvY2NfdC4zdHlw
ZQ0KPiBAQCAtNiw3ICs2LDcgQEANCj4gICAuXCINCj4gICAuVEggQ0NfVCAzdHlwZSAyMDIx
LTExLTAyICJMaW51eCBtYW4tcGFnZXMgKHVucmVsZWFzZWQpIg0KPiAgIC5TSCBOQU1FDQo+
IC1jY190IFwtIHRlcm1pbmFsIHNwZWNpYWwgY2hhcmFjdGVycw0KPiArY2NfdCwgc3BlZWRf
dCwgdGNmbGFnX3QgXC0gdGVybWluYWwgc3BlY2lhbCBjaGFyYWN0ZXJzLCBiYXVkIHJhdGVz
LCBtb2Rlcw0KPiAgIC5TSCBMSUJSQVJZDQo+ICAgU3RhbmRhcmQgQyBsaWJyYXJ5DQo+ICAg
LlJJICggbGliYyApDQo+IEBAIC0xNSwxMCArMTUsMTggQEAgU3RhbmRhcmQgQyBsaWJyYXJ5
DQo+ICAgLkIgI2luY2x1ZGUgPHRlcm1pb3MuaD4NCj4gICAuUFANCj4gICAuQlIgdHlwZWRl
ZiAiIC8qIC4uLiAqLyAiIGNjX3Q7DQo+ICsuQlIgdHlwZWRlZiAiIC8qIC4uLiAqLyAiIHNw
ZWVkX3Q7DQo+ICsuQlIgdHlwZWRlZiAiIC8qIC4uLiAqLyAiIHRjZmxhZ190Ow0KPiAgIC5m
aQ0KPiAgIC5TSCBERVNDUklQVElPTg0KPiAtVXNlZCBmb3IgdGVybWluYWwgc3BlY2lhbCBj
aGFyYWN0ZXJzLg0KPiAtSXQgaXMgYW4gdW5zaWduZWQgaW50ZWdlciB0eXBlLg0KPiArLkIg
Y2NfdA0KDQpUeXBlcyBhcmUgZm9ybWF0dGVkIHdpdGggLkksIGJ1dCB0aGF0IHNlZW1zIHRv
IGJlIGV4aXN0aW5nIHByYWN0aWNlIGFuZCANCkkgZG9uJ3QgZmluZCBpdCBkb2N1bWVudGVk
IGFueXdoZXJlLiAgKEJyYW5kZW4sIGRvIHlvdSBrbm93IG9mIGFueSANCnNvdXJjZSB0aGF0
IGRpc2N1c3NlcyB0aGlzPyAgSXMgaXQgYWxzbyBsaWtlIHRoYXQgaW4gb3RoZXIgbWFudWFs
IHBhZ2VzPyANCiAgV291bGQgeW91IGRvIHRoYXQgZXZlbiBpZiBpdCBpcyB0aGUgbWFpbiBz
dWJqZWN0IG9mIHRoZSBwYWdlPykNCg0KDQoNCj4gK2lzIHVzZWQgZm9yIHRlcm1pbmFsIHNw
ZWNpYWwgY2hhcmFjdGVycywNCj4gKy5CIHNwZWVkX3QNCj4gK1woZW0gYmF1ZCByYXRlcywg
YW5kDQoNCkkgd291bGQgdXNlIGEgJ2ZvcicgaGVyZToNCkEgaXMgdXNlZCBmb3IgWCwgQiBm
b3IgWSwgYW5kIEMgZm9yIFouDQpyYXRoZXIgdGhhbg0KQSBpcyB1c2VkIGZvciBYLCBCIC0t
IFksIGFuZCBDLS1aLg0KDQpCZXN0LA0KDQpBbGV4DQoNCg0KPiArLkIgdGNmbGFnX3QNCj4g
K1woZW0gbW9kZXMuDQo+ICsuUFANCj4gK0FsbCBhcmUgdW5zaWduZWQgaW50ZWdlciB0eXBl
cy4NCj4gICAuU0ggU1RBTkRBUkRTDQo+ICAgUE9TSVguMS0yMDAxIGFuZCBsYXRlci4NCj4g
ICAuU0ggU0VFIEFMU08NCj4gZGlmZiAtLWdpdCBhL21hbjN0eXBlL3NwZWVkX3QuM3R5cGUg
Yi9tYW4zdHlwZS9zcGVlZF90LjN0eXBlDQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGlu
ZGV4IDAwMDAwMDAwMC4uMjZjZmQwMTcxDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWFu
M3R5cGUvc3BlZWRfdC4zdHlwZQ0KPiBAQCAtMCwwICsxIEBADQo+ICsuc28gbWFuM3R5cGUv
Y2NfdC4zdHlwZQ0KPiBkaWZmIC0tZ2l0IGEvbWFuM3R5cGUvdGNmbGFnX3QuM3R5cGUgYi9t
YW4zdHlwZS90Y2ZsYWdfdC4zdHlwZQ0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRl
eCAwMDAwMDAwMDAuLjI2Y2ZkMDE3MQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL21hbjN0
eXBlL3RjZmxhZ190LjN0eXBlDQo+IEBAIC0wLDAgKzEgQEANCj4gKy5zbyBtYW4zdHlwZS9j
Y190LjN0eXBlDQoNCi0tIA0KQWxlamFuZHJvIENvbG9tYXINCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------w0Rbybqc29G97XC0hb6LZl14--

--------------uaMY7jg06M0iE87f0YFjc9cB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmMNOtoACgkQnowa+77/
2zLZ/g/9GkV//sGqk2PgqIWSmeMN6MtT8ciwu2AD3XaOHxs/3a9wzRZmDf+j+uIQ
ROmsOgN/3Xy5pLS32tQmcuem7PcG7fWQPie/+7Wo3inZS33TN2STLvuOb6LEM6n0
IO5I6k/6eemKsRcCjMApaGJrbK6Wr5ip479SaIOhEX4/EsFF3pjgrUVlLkDs7JR9
QjHUEObJ1LsM6YXzVBD0mZZuS3Jrz6TdE+SAy4PN63dmXea19vFEDhi32E5HOFTG
SfpZgM0Rd93egORYZrMw0GycdP9Pw+kC+fbv9AF7TTp1PIyl/axKPM5HCS+piKAp
1QI0qNMvw8GA1LCNH4gd6ZHjo3lqZguxrnogSer/bJDfxY7BHO1LBHuux/GxtVh5
oIkUqgGfDaFzEpzZapxcm/AbfWTeBs9AhfLQR29qYpmQsgjNE19ZjDVQLo2z+XDZ
21rynKRQXa/Q8uvdTjLQd3OLyDjwgGv9be2TWT1e+c56i2c4VjRZeRzKCR++8XSf
H5XlSxwIAmghzc95S9CKKjdbDye+2LSTReUOwfT7LCED/XXn0IqwKEajTLwwmfrE
U4VrTS2I0UUpT5e9tKsNyCo9dXYXzaRXhQRVqgSECi4yyD9SQYMpwn57JIGoZrb5
9/FwuQjRYgB1hEGHpvXK46wep/6tgrpripgb4CZhxqyBReLITnc=
=L3s0
-----END PGP SIGNATURE-----

--------------uaMY7jg06M0iE87f0YFjc9cB--
