Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9383D5446DE
	for <lists+linux-man@lfdr.de>; Thu,  9 Jun 2022 11:04:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233594AbiFIJEx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Jun 2022 05:04:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232235AbiFIJEw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Jun 2022 05:04:52 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1786C1A409A
        for <linux-man@vger.kernel.org>; Thu,  9 Jun 2022 02:04:51 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id u8so27134211wrm.13
        for <linux-man@vger.kernel.org>; Thu, 09 Jun 2022 02:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to;
        bh=evQ/krvG/grZ3mfRrwsfaQGBTdcMO5HY3WsV2DOG/k8=;
        b=njDX3RM117Buhxk5VBKJ5UhiRFywF2zixRI1zS3AJZrFyzy8k9l9KJoy8kTcccR3FO
         YflWoDVwmDT6WABDr6fv7+GMEQn38Xi/muYRKq3kTYdYiR/q+K5sJLJ6WLGQMCNXQmFC
         vxncLqzBcOzaDB/v0o+45UCcaaRfG856nlPLyVuzlfaer84k1X6qaMssnQ0WyZVrE+yY
         QIliJ38f7Wo+s/9S8GVl2FrqoET+DzBdpaVcwTWeSzFyeWEOFmd8bs2Czsoe+V8BK8sI
         7AP5OHkFKOv/9ZhIoQHJB3sRTSiTQXfJHJxz8qLksbn4AB41xoDK+1k2dND0RrXMc7Yc
         Ny6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to;
        bh=evQ/krvG/grZ3mfRrwsfaQGBTdcMO5HY3WsV2DOG/k8=;
        b=dzMm1NJWtHAUkUr+J+rQ2PVhZFW7JkPVVM5RqJ067yWLc8JiSY1pK25XG7TaQAQrse
         EszVIEQPTvK+jrompdpxYYO8346smQYs9jv5sIxg1MjBa5il8Kv+5Ju/5YJtist2SSXo
         Bj3D7k8GP1ueFZuENyuUt75PIeAGXpjePa6dfal3BFI4/LTwnia6IqMLCXW3hE/b/yZh
         Rb56fr91av1HJ6gXBYYqrD77+FJvkJbooY8hDS5s5G0YF91Y0VQ6QdGSFuzcaONRyIWG
         lJz9HSGCvFOeqH0UOo8HRJ/Esz1v6G+spcz147NSgrSmtgaIobAU2o2czwAnGJx5ahFc
         KIoQ==
X-Gm-Message-State: AOAM533/qdhmB/f9p6EL4y2u2pPEg6Hj370T0CMYoR+qe5fjza8g5t6X
        XJZCxPjVWHsk77Q54lJMpC0M5iHu2eBOUg==
X-Google-Smtp-Source: ABdhPJxrn5Qt6WTRuYcdlk4Ippl73OdpwxoGhI7RbL960r71cqw/Ae2J5xSLHQvTbv69vpRSWSJYxA==
X-Received: by 2002:a5d:47a1:0:b0:218:423a:de8f with SMTP id 1-20020a5d47a1000000b00218423ade8fmr19234081wrb.420.1654765489623;
        Thu, 09 Jun 2022 02:04:49 -0700 (PDT)
Received: from [192.168.42.187] ([31.221.238.245])
        by smtp.gmail.com with ESMTPSA id l15-20020a05600c1d0f00b0039c4f0c827fsm14032642wms.26.2022.06.09.02.04.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 02:04:48 -0700 (PDT)
Message-ID: <decf7510-45a0-eed3-d9f2-399fe3a0beac@gmail.com>
Date:   Thu, 9 Jun 2022 11:07:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH resend] statx.2: Add #define _GNU_SOURCE to synopsis
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20220608224336.2320-1-jwilk@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220608224336.2320-1-jwilk@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------CrgRBXuXjUmsKs0ICU5U0pvP"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------CrgRBXuXjUmsKs0ICU5U0pvP
Content-Type: multipart/mixed; boundary="------------zl5WUQNkRMaMhmqTpNREXh0i";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Message-ID: <decf7510-45a0-eed3-d9f2-399fe3a0beac@gmail.com>
Subject: Re: [PATCH resend] statx.2: Add #define _GNU_SOURCE to synopsis
References: <20220608224336.2320-1-jwilk@jwilk.net>
In-Reply-To: <20220608224336.2320-1-jwilk@jwilk.net>

--------------zl5WUQNkRMaMhmqTpNREXh0i
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSmFrdWIhDQoNCk9uIDYvOS8yMiAwMDo0MywgSmFrdWIgV2lsayB3cm90ZToNCj4gVGhl
IG9yaWdpbmFsIHRleHQgaGludGVkIHRoYXQgeW91IG5lZWQgX0dOVV9TT1VSQ0Ugb25seSBm
b3IgYSBmZXcgb2YgdGhlDQo+IEFUXyogY29uc3RhbnRzOyBidXQgYWN0dWFsbHkgeW91IG5l
ZWQgaXQgdG8gZ2V0IHRoZSBzdGF0eCgpIGRlY2xhcmF0aW9uLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogSmFrdWIgV2lsayA8andpbGtAandpbGsubmV0Pg0KDQpUaGFua3MgZm9yIHJlc2Vu
ZGluZyEgIEkgYXBwbGllZCBib3RoIHBhdGNoZXMuICBBbmQgaW4gdGhpcyBvbmUgSSBhZGRl
ZCANCnRoZSBmb2xsb3dpbmcgdG8gdGhlIGNvbW1pdCBtZXNzYWdlOg0KDQogICAgIFthbHg6
XQ0KICAgICBZb3UgY2FuIGNoZWNrIHlvdXJzZWxmOg0KDQogICAgICQgZ3JlcGMgLXRmcCBz
dGF0eA0KICAgICAuL2lvL2JpdHMvc3RhdHgtZ2VuZXJpYy5oOjYwOg0KICAgICBpbnQgc3Rh
dHggKGludCBfX2RpcmZkLCBjb25zdCBjaGFyICpfX3Jlc3RyaWN0IF9fcGF0aCwgaW50IF9f
ZmxhZ3MsDQogICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IF9fbWFzaywgc3RydWN0IHN0
YXR4ICpfX3Jlc3RyaWN0IF9fYnVmKQ0KICAgICAgIF9fVEhST1cgX19ub25udWxsICgoMiwg
NSkpOw0KDQogICAgICQgZ3JlcCAtcm5DMSAnPGJpdHMvc3RhdHgtZ2VuZXJpYy5oPicgaW8v
DQogICAgIGlvL2JpdHMvc3RhdHgtZ2VuZXJpYy5oLTIxLSNpZm5kZWYgX1NZU19TVEFUX0gN
CiAgICAgaW8vYml0cy9zdGF0eC1nZW5lcmljLmg6MjI6IyBlcnJvciBOZXZlciBpbmNsdWRl
IA0KPGJpdHMvc3RhdHgtZ2VuZXJpYy5oPiBkaXJlY3RseSwgaW5jbHVkZSA8c3lzL3N0YXQu
aD4gaW5zdGVhZC4NCiAgICAgaW8vYml0cy9zdGF0eC1nZW5lcmljLmgtMjMtI2VuZGlmDQog
ICAgIC0tDQogICAgIGlvL2JpdHMvc3RhdHguaC0yNS0vKiBVc2UgdGhlIGdlbmVyaWMgZGVm
aW5pdGlvbnMuICAqLw0KICAgICBpby9iaXRzL3N0YXR4Lmg6MjY6I2luY2x1ZGUgPGJpdHMv
c3RhdHgtZ2VuZXJpYy5oPg0KDQogICAgICQgZ3JlcCAtcm5DMSAnPGJpdHMvc3RhdHguaD4n
IGlvLw0KICAgICBpby9iaXRzL3N0YXR4LmgtMjEtI2lmbmRlZiBfU1lTX1NUQVRfSA0KICAg
ICBpby9iaXRzL3N0YXR4Lmg6MjI6IyBlcnJvciBOZXZlciBpbmNsdWRlIDxiaXRzL3N0YXR4
Lmg+IGRpcmVjdGx5LCANCmluY2x1ZGUgPHN5cy9zdGF0Lmg+IGluc3RlYWQuDQogICAgIGlv
L2JpdHMvc3RhdHguaC0yMy0jZW5kaWYNCiAgICAgLS0NCiAgICAgaW8vc3lzL3N0YXQuaC0z
NzEtI2lmZGVmIF9fVVNFX0dOVQ0KICAgICBpby9zeXMvc3RhdC5oOjM3MjojIGluY2x1ZGUg
PGJpdHMvc3RhdHguaD4NCiAgICAgaW8vc3lzL3N0YXQuaC0zNzMtI2VuZGlmDQoNCg0KQ2hl
ZXJzLA0KDQpBbGV4DQoNCj4gLS0tDQo+ICAgbWFuMi9zdGF0eC4yIHwgMTEgKy0tLS0tLS0t
LS0NCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEwIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL21hbjIvc3RhdHguMiBiL21hbjIvc3RhdHguMg0KPiBp
bmRleCAwYjNmNjc0N2YuLmE4NjIwYmU2ZiAxMDA2NDQNCj4gLS0tIGEvbWFuMi9zdGF0eC4y
DQo+ICsrKyBiL21hbjIvc3RhdHguMg0KPiBAQCAtMTUsNiArMTUsNyBAQCBTdGFuZGFyZCBD
IGxpYnJhcnkNCj4gICAuUkkgKCBsaWJjICIsICIgXC1sYyApDQo+ICAgLlNIIFNZTk9QU0lT
DQo+ICAgLm5mDQo+ICsuQlIgIiNkZWZpbmUgX0dOVV9TT1VSQ0UgICAgICAgICAgIiAiLyog
U2VlIGZlYXR1cmVfdGVzdF9tYWNyb3MoNykgKi8iDQo+ICAgLkJSICIjaW5jbHVkZSA8ZmNu
dGwuaD4gICAgICAgICAgICIgIi8qIERlZmluaXRpb24gb2YgIiBBVF8qICIgY29uc3RhbnRz
ICovIg0KPiAgIC5CICNpbmNsdWRlIDxzeXMvc3RhdC5oPg0KPiAgIC5QUA0KPiBAQCAtMTY2
LDExICsxNjcsNiBAQCBJZg0KPiAgIGlzDQo+ICAgLkJSIEFUX0ZEQ1dEICwNCj4gICB0aGUg
Y2FsbCBvcGVyYXRlcyBvbiB0aGUgY3VycmVudCB3b3JraW5nIGRpcmVjdG9yeS4NCj4gLS5J
UA0KPiAtVGhpcyBmbGFnIGlzIExpbnV4LXNwZWNpZmljOyBkZWZpbmUNCj4gLS5CIF9HTlVf
U09VUkNFDQo+IC0uXCIgQmVmb3JlIGdsaWJjIDIuMTYsIGRlZmluaW5nIF9BVEZJTEVfU09V
UkNFIHN1ZmZpY2VkDQo+IC10byBvYnRhaW4gaXRzIGRlZmluaXRpb24uDQo+ICAgLlRQDQo+
ICAgLkIgQVRfTk9fQVVUT01PVU5UDQo+ICAgRG9uJ3QgYXV0b21vdW50IHRoZSB0ZXJtaW5h
bCAoImJhc2VuYW1lIikgY29tcG9uZW50IG9mDQo+IEBAIC0xOTMsMTEgKzE4OSw2IEBAIGFu
ZA0KPiAgIGFjdCBhcyB0aG91Z2gNCj4gICAuQiBBVF9OT19BVVRPTU9VTlQNCj4gICB3YXMg
c2V0Lg0KPiAtLklQDQo+IC1UaGlzIGZsYWcgaXMgTGludXgtc3BlY2lmaWM7IGRlZmluZQ0K
PiAtLkIgX0dOVV9TT1VSQ0UNCj4gLS5cIiBCZWZvcmUgZ2xpYmMgMi4xNiwgZGVmaW5pbmcg
X0FURklMRV9TT1VSQ0Ugc3VmZmljZWQNCj4gLXRvIG9idGFpbiBpdHMgZGVmaW5pdGlvbi4N
Cj4gICAuVFANCj4gICAuQiBBVF9TWU1MSU5LX05PRk9MTE9XDQo+ICAgSWYNCg0KDQotLSAN
CkFsZWphbmRybyBDb2xvbWFyDQpMaW51eCBtYW4tcGFnZXMgY29tYWludGFpbmVyOyBodHRw
Oi8vd3d3Lmtlcm5lbC5vcmcvZG9jL21hbi1wYWdlcy8NCmh0dHA6Ly93d3cuYWxlamFuZHJv
LWNvbG9tYXIuZXMvDQo=

--------------zl5WUQNkRMaMhmqTpNREXh0i--

--------------CrgRBXuXjUmsKs0ICU5U0pvP
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmKhuFgACgkQnowa+77/
2zIUGw//RfgKeQ6kdwa9dHHMUd+7x3UZdQi3/EQN5dd2RKSuqhfzzLeyueOkGUDB
L3wANCrj+y2zlIByd6waFWHrbb+51nmF0o4UwzZtFEaHe669iyBKPqr/uT4hnd61
aU7qlHjMLdCTljae3o5GVfdiMYzuwMmWVDmSYmkSsYsbT21oCr9q0gjloqTM/vRw
TxZc/+uirFH4jLLlRNrAdl5UP+SnRoSuUEX4UrJFhq7KekdTcFBx3+VjJUEEoz77
iecMgOVEEsCYc2Xhf8KJW3G6fkKAEDNe622Co6yHqKBNUkhe1j9JyG6z6IZLb8yY
mpPoB5LIzKsulGDIld9cq04yqsDJV3HXApeX7kuTW8bRApUhWBvNezm223Dw1Tqg
bo5LfhuEqMNhFyNDcKY5vEYKngaJk1sALmgCFg9Y7gbSa5kLf9KNM1E7AZ/JEyxC
qkAwt8hxvatUrjMcxohNF2BbkPaQGJwe01aIyV7t0+A1qSzuiaKy4/dbXUbkHGl/
wAIH4NkeBoEpOS2FCY5Q6SKWnPGf50Y2jlcc/EDla832JNbIYWGZ8DEuTZ/RGflS
xHfO3m7CHh4y89DX+lUhotG3ZQ265lhYNbzDCJC7H9rYynU9kv+ct/nHhKuHK71g
DmvG6GlSaBahEvTYO/U9RLIHno0hHxeN7tadee0TBsvoYtC4bqw=
=/AGG
-----END PGP SIGNATURE-----

--------------CrgRBXuXjUmsKs0ICU5U0pvP--
