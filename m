Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5669260E0B6
	for <lists+linux-man@lfdr.de>; Wed, 26 Oct 2022 14:33:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233532AbiJZMdr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Oct 2022 08:33:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233150AbiJZMdq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Oct 2022 08:33:46 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A36A895DA
        for <linux-man@vger.kernel.org>; Wed, 26 Oct 2022 05:33:45 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5so2313512wmo.1
        for <linux-man@vger.kernel.org>; Wed, 26 Oct 2022 05:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bv12fqFIdiGzu8AmWg9V1LzQZltzBdqJR0a2iioLMuM=;
        b=pebIsnx9tRpsugYeUxRqfEY585EImfg7vY28MZs60qn6IAnIAjXp2MQe7PR7xrqAJ4
         yP5t+WmXTVBHZ22/3tRXdTtYf/v5jO+edzrpH+SCg3TQEIhvFoXA1RVSAHf5NM4u1jMB
         46Vc1qYFB3uNKOvSLD12Q8udU/IgMPhQFdut6s1b+sf3+nfpHZ3/BaDHgf9dxaIP9uBH
         DW5Rp8ytzNzTW2THvyfRO2OEkkbzRxscDjMQvBOaRxsKSd2cFpzJUGVgftrstv8801vG
         yYIAfgZkHBHlUrzbd7SwQnWgCCQVQwiLZa5OOprbvMeLOxdeOp7YgAwLlibdGErgMp38
         IQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-language:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bv12fqFIdiGzu8AmWg9V1LzQZltzBdqJR0a2iioLMuM=;
        b=Sy3GzmCVel6LA2HB1bzzaiaXbrhkIEcmpqX1UUpqD5E3k3rl+N++eyvDK5qg0uecgp
         CHPOrW5PKmQPDZ/GPbo17rKMDjG3ILchlyfn/mR+EZsFe2tlqSjyuqWag/rb0T98uNQK
         jNyUIfEK//QzHzzMAmFLU9q6GTcRfU6p/LLYtDUNHVwA0BElGx889dRfBioJ3nQERkPv
         sAmHk7H0AFKW9/M7QfGR4NaIkfANpVKxWIHJQ5MRYetxIJibkeuvlFRmhEht2Wkj9MmF
         bh4X2vUghKuZwW0zqt+7Xb8vUImgpHXpEOAZrDxl5sTQRm4lmtiACFhSkFIbGvxrCBBF
         cB9A==
X-Gm-Message-State: ACrzQf3lkXtN4MHegYdqStehNGfJvfsT4Bq0pFiIdbxTzeh7Ys11DayF
        LMOvPcUuBwzycpxjHblbHv60MTg37fI=
X-Google-Smtp-Source: AMsMyM7ZKD4dpU/lnI38Dy5Yx7vq4qqCoK4yNFA09mCupFJ+1EWTiHykIJeHJjycAAtWuyFykklxyA==
X-Received: by 2002:a05:600c:468a:b0:3c6:f1ae:3e95 with SMTP id p10-20020a05600c468a00b003c6f1ae3e95mr2336181wmo.152.1666787623679;
        Wed, 26 Oct 2022 05:33:43 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t8-20020a05600c198800b003cf490d1cf7sm1929823wmq.8.2022.10.26.05.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 05:33:43 -0700 (PDT)
Message-ID: <e792de91-515e-42a4-53e4-78243e66e1bf@gmail.com>
Date:   Wed, 26 Oct 2022 14:33:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: [RFC v2] Various pages: Use consistent style for lists
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Cc:     Alejandro Colomar <alx@kernel.org>, groff@gnu.org
References: <20221024225742.3966-1-alx@kernel.org>
Content-Language: en-US
In-Reply-To: <20221024225742.3966-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SLh0047zssWWNzCapdPS2Yzc"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SLh0047zssWWNzCapdPS2Yzc
Content-Type: multipart/mixed; boundary="------------R302Yai0PPg35nweyKw4EDgE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Mike Frysinger <vapier@gentoo.org>
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org
Message-ID: <e792de91-515e-42a4-53e4-78243e66e1bf@gmail.com>
Subject: [RFC v2] Various pages: Use consistent style for lists
References: <20221024225742.3966-1-alx@kernel.org>
In-Reply-To: <20221024225742.3966-1-alx@kernel.org>

--------------R302Yai0PPg35nweyKw4EDgE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KSSBmaW5pc2hlZCBhcHBseWluZyB0aGUgY29uc2lzdGVuY3kgZml4ZXMg
dG8gYWxsIHBhZ2VzLiAgSSBkZXZlbG9wZWQgc29tZSBydWxlcyANCndoaWNoIEknZCBsaWtl
IHRvIGRpc2N1c3MgaGVyZSBiZWZvcmUgcHVzaGluZyB0byA8a2VybmVsLm9yZz4gdG8gYWdy
ZWUgb24gdGhlbS4NCg0KSSB3b24ndCBzZW5kIHRoZSBwYXRjaGVzIGhlcmUgYmVjYXVzZSB0
aGV5J3JlIGh1Z2UsIGFuZCBAdmdlci5rZXJuZWwub3JnIHdvdWxkIA0KcmVqZWN0IHRoZW0g
YW55d2F5LiAgSSdsbCBjb3B5IHRoZSBsb2dzLCB3aGljaCBhcmUgaW50ZXJlc3RpbmcsIHRo
b3VnaC4NCg0KQWxzbywgSSdsbCBsaW5rIHRvIG15IHBlcnNvbmFsIHJlcG9zaXRvcnksIGlu
IGNhc2UgeW91IHdhbnQgdG8gaGF2ZSBhIGxvb2sgYXQgdGhlbToNCg0KPGh0dHA6Ly93d3cu
YWxlamFuZHJvLWNvbG9tYXIuZXMvc3JjL2FseC9saW51eC9tYW4tcGFnZXMvbWFuLXBhZ2Vz
LmdpdC9jb21taXQvP2lkPTVjOTM4NTg3OTcyYTU3ZjI1Y2Q4ZGFhOWI2OWE1Mjk2ZmMwYmQ5
NWE+DQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy9zcmMvYWx4L2xpbnV4L21h
bi1wYWdlcy9tYW4tcGFnZXMuZ2l0L2NvbW1pdC8/aWQ9MmMyYTg3MGJkMmRmOWY2YTA1ZTgx
OGY1MTY4MzRhMTdkZDBmMTdiND4NCg0KDQpjb21taXQgNWM5Mzg1ODc5NzJhNTdmMjVjZDhk
YWE5YjY5YTUyOTZmYzBiZDk1YSAoSEVBRCAtPiBtYWluLCBhbHgvbWFpbiwgYWx4L0hFQUQp
DQpBdXRob3I6IEFsZWphbmRybyBDb2xvbWFyIDxhbHhAa2VybmVsLm9yZz4NCkRhdGU6ICAg
V2VkIE9jdCAyNiAwMTowMTozMiAyMDIyICswMjAwDQoNCiAgICAgTWFueSBwYWdlczogVXNl
IGEgY29uc2lzdGVudCBzdHlsZSBmb3IgbGlzdHMNCg0KICAgICBUaGVyZSBhcmUgZGlmZmVy
ZW50IGtpbmRzIG9mIGxpc3RzOg0KDQogICAgIFRhZ2dlZCBwYXJhZ3JhcGhzDQogICAgICAg
ICAgICAgVGhlc2UgYXJlIGZpeGVkIGluIGEgc2VwYXJhdGUgY29tbWl0ICh0aGUgcHJldmlv
dXMgb25lKS4NCiAgICAgICAgICAgICBUaGV5IGFyZSB1c2VkIGZvciBhIGxpc3Qgb2YgdGFn
cyBhbmQgdGhlaXIgZGVzY3JpcHRpb25zLg0KICAgICAgICAgICAgIEFuIGV4YW1wbGUgaXMg
dGhpcyBjb21taXQgbWVzc2FnZSBpdHNlbGYuDQoNCiAgICAgT3JkZXJlZCBsaXN0cw0KICAg
ICAgICAgICAgIEVsZW1lbnRzIGFyZSBwcmVjZWVkZWQgYnkgYSBudW1iZXIgaW4gcGFyZW50
aGVzZXMuDQogICAgICAgICAgICAgVGhlc2UgcmVwcmVzZW50IGEgc2V0IG9mIHN0ZXBzIHRo
YXQgaGF2ZSBhbiBvcmRlci4NCg0KICAgICAgICAgICAgIFdoZW4gdGhlcmUgYXJlIHN1YnN0
ZXBzLCB0aGV5IHdpbGwgYmUgbnVtYmVyZWQgbGlrZSAoNC4yKS4NCg0KICAgICBQb3NpdGlv
bmFsIGxpc3RzDQogICAgICAgICAgICAgRWxlbWVudHMgYXJlIHByZWNlZWRlZCBieSBhIG51
bWJlciBpbiBzcXVhcmUgYnJhY2tldHMNCiAgICAgICAgICAgICAoaW5kZXgpLiAgVGhlc2Ug
cmVwcmVzZW50IGZpZWxkcyBpbiBhIHNldC4gIFRoZSBpbmRleCB3aWxsDQogICAgICAgICAg
ICAgc3RhcnQgYXQ6DQoNCiAgICAgICAgICAgICAwICAgICAgIGZpZWxkcyBvZiBhIEMgZGF0
YSBzdHJ1Y3R1cmUsIHRvIGJlIGNvbnNpc3RlbnQNCiAgICAgICAgICAgICAgICAgICAgIHdp
dGggYXJyYXlzLg0KICAgICAgICAgICAgIDEgICAgICAgZmllbGRzIG9mIGEgZmlsZSwgdG8g
YmUgY29uc2lzdGVudCB3aXRoIHRvb2xzIGxpa2UNCiAgICAgICAgICAgICAgICAgICAgIGN1
dCgxKS4NCg0KICAgICBBbHRlcm5hdGl2ZXMgbGlzdA0KICAgICAgICAgICAgIEVsZW1lbnRz
IGFyZSBwcmVjZWVkZWQgYnkgYSBsZXR0ZXIgaW4gcGFyZW50aGVzZXMuDQogICAgICAgICAg
ICAgVGhlc2UgcmVwcmVzZW50IGEgc2V0IG9mIChub3JtYWxseSkgZXhjbHVzaXZlDQogICAg
ICAgICAgICAgYWx0ZXJuYXRpdmVzLg0KDQogICAgIEJ1bGxldCBsaXN0cw0KICAgICAgICAg
ICAgIEVsZW1lbnRzIGFyZSBwcmVjZWVkZWQgYnkgYnVsbGV0IHN5bWJvbHMuICBBbnl0aGlu
ZyB0aGF0DQogICAgICAgICAgICAgZG9lc24ndCBmaXQgZWxzZXdoZXJlIHVzdWFsbHkgaXMg
Y292ZXJlZCBieSB0aGlzIHR5cGUgb2YNCiAgICAgICAgICAgICBsaXN0Lg0KDQogICAgIE5v
dGVzDQogICAgICAgICAgICAgTm90IHJlYWxseSBhIGxpc3QsIGJ1dCB0aGUgc3ludGF4IGlz
IGlkZW50aWNhbCB0bw0KICAgICAgICAgICAgICJwb3NpdGlvbmFsIGxpc3RzIi4NCg0KICAg
ICBUaGVyZSBzaG91bGQgYWx3YXlzIGJlIDIgc3BhY2VzIGJldHdlZW4gdGhlIGxpc3Qgc3lt
Ym9sIGFuZCB0aGUNCiAgICAgZWxlbWVudHMuICBUaGlzIGRvZXNuJ3QgYXBwbHkgdG8gInRh
Z2dlZCBwYXJhZ3JhcGhzIiwgd2hpY2ggdXNlDQogICAgIHRoZSBkZWZhdWx0IGluZGVudGF0
aW9uIHJ1bGVzLg0KDQogICAgIFJlcG9ydGVkLWJ5OiBNaWtlIEZyeXNpbmdlciA8dmFwaWVy
QGdlbnRvby5vcmc+DQogICAgIENjOiA8Z3JvZmZAZ251Lm9yZz4NCiAgICAgU2lnbmVkLW9m
Zi1ieTogQWxlamFuZHJvIENvbG9tYXIgPGFseEBrZXJuZWwub3JnPg0KDQpjb21taXQgMmMy
YTg3MGJkMmRmOWY2YTA1ZTgxOGY1MTY4MzRhMTdkZDBmMTdiNA0KQXV0aG9yOiBBbGVqYW5k
cm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+DQpEYXRlOiAgIFN1biBPY3QgMjMgMTc6NDM6
NDMgMjAyMiArMDIwMA0KDQogICAgIE1hbnkgcGFnZXM6IFVzZSAuVFAgZm9yIHRhZ2dlZCBw
YXJhZ3JhcGhzDQoNCiAgICAgUmVwb3J0ZWQtYnk6IE1pa2UgRnJ5c2luZ2VyIDx2YXBpZXJA
Z2VudG9vLm9yZz4NCiAgICAgQ2M6IDxncm9mZkBnbnUub3JnPg0KICAgICBTaWduZWQtb2Zm
LWJ5OiBBbGVqYW5kcm8gQ29sb21hciA8YWx4QGtlcm5lbC5vcmc+DQoNCg0KDQpXaGF0IGRv
IHlvdSB0aGluayBhYm91dCB0aGlzIHBhdGNoIHNldD8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------R302Yai0PPg35nweyKw4EDgE--

--------------SLh0047zssWWNzCapdPS2Yzc
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNZKR4ACgkQnowa+77/
2zIcjw/+Pmtxl2kxZ0R2tbKB6Lq6/eI2aVFJIVo5A/gJgYqvgyXyOEAHhfQOVThR
mTVgHHFABwzKEUFkxWFgrboz3+1oZv/G0g0+kUTiTJM/BusPwaTrL80YyOoHs9/r
MeOMbupaEq73aWICe3NU8pikyAb2SePJSVY8cIbP7MhijXpYNauMZgaiEwLFVfps
Fa1gYgAj3nEL2ExCemyS8UngpJQfKIGOyycu12+dQOmCSszGMDXA9GmpL7I5c1V+
5kPedT+iTojpXbwu2FXoz7gvQwjBpvg4jZI4/DhaNTDJdhwrg+CUdgh04M+FQFWe
/I/WywGSqQNC5KN8xN8BnDV0mK+zJiOugOp2pdSHExre022Ll18trj4JJJVE8OxD
JNvdJucpTzE3rvISfsn9zqzjD7qNl/qwn3V1R4iBx6Fbcw+SctfDRCr96BG4mo03
9LcLMVnXSKHihLk21Fl3Fohej+TPuqg52izUB2Vl253ytvMmTazl6ev/jB7eVPcf
spvTM1nP9mPY+BqzFJ7lFW9qreG8TItHd4vlHyHBaA9g/C5/nYtDHfr7fXRfQSIb
5i/9I5HSVgZSe5iK9zlbx7eL60HTeQ+1yYxw+9mtgqvpXxWgKLqqX1eURCHhp8jA
JipPUPCrftsI5gn3g6XQ+VeUO9CixX2jG/lAIO4v+iE74ZT9t3w=
=62iL
-----END PGP SIGNATURE-----

--------------SLh0047zssWWNzCapdPS2Yzc--
