Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AD5865714E
	for <lists+linux-man@lfdr.de>; Wed, 28 Dec 2022 00:38:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232574AbiL0Xh5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Dec 2022 18:37:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230347AbiL0Xhg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Dec 2022 18:37:36 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 159E211C2A
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 15:33:39 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so10327804wms.2
        for <linux-man@vger.kernel.org>; Tue, 27 Dec 2022 15:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2Y5XyRbgHBELWIlUj6lvINIq1m5iH6VFNiaLviM8eU=;
        b=fQkyg0wTvAvEWSmP/m+6lDqZjG2Z0GegsCkjJW+cIjM7Auw4HFxngNMUzHKFDejqg1
         pLgcheKTezcs/JP3ej2LuKTUvR6DB9uJs6+nvMRCYqklgAn+S7Z71EYLbazA0MT759Cb
         1BtRku219wdaPQTOHzQqrGjBH4M2fzuvmLKmz3sXGqxI+wJe9ulH3jjjmmZwW0V5Q6nO
         xmSRPZLSYEY6YasVtWOAV8Tg0xMT1+T9c29TsdzgYgz6tmQj8VmZyUce2DKyN+XK2eDb
         B3dCUaWVlumYuCBoPq1/4IodqnSSbhMu6ZNwwUjZzkp0zNSsAlisU4cD+zM/jmXXl8om
         fjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=p2Y5XyRbgHBELWIlUj6lvINIq1m5iH6VFNiaLviM8eU=;
        b=RQQXOJaKe2roXdTJsyZqKjG44clBECcLOnfQ2yc8KkuIaaiZLGFmU3OcCzMIyX4/bw
         /4abNj7za6+IYFS8UtiukbfDHUvEWpD5t/OqKa/HwFlpQQoh3vcvbLtHeDrlyBFrc5Bo
         6nZ48XY+39kz7Z0nWinBJUZhxU4I1Ree7z5pLv/nEJ2RJ4bD8zszL6Ok12GZrc64VRcz
         vvAIhjNGsF/JQv9wJ1Xw0iWrmjLWS1BDixDYBxtxy9hIKx+zDpDG39XgkR4V8u4mm49O
         AbM4FT9aTFf0n8NE4di5298Nw5wh7fIPon4eCsIby3NJHpMJItYkMfqnW0u1+ouFFaDH
         yrTA==
X-Gm-Message-State: AFqh2kr3h/TXGTkCmMeixE0m7cE8HoRdcnJWAFriD4zNhnM6uX9FboaH
        sU4oE+v6slDWvp77h3Weg/4=
X-Google-Smtp-Source: AMrXdXvgrYpP9hW2XBnNG9/WKFsMrA5WxeJCnIAQXd5evZmOFKysS3l5KkwUwrjFaFli+RH+/cQJwQ==
X-Received: by 2002:a05:600c:54ef:b0:3d0:5254:8a43 with SMTP id jb15-20020a05600c54ef00b003d052548a43mr21490143wmb.38.1672184003940;
        Tue, 27 Dec 2022 15:33:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b22-20020a05600c4e1600b003c6d21a19a0sm18928652wmq.29.2022.12.27.15.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 15:33:23 -0800 (PST)
Message-ID: <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
Date:   Wed, 28 Dec 2022 00:33:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] Add example to rand.3
Content-Language: en-US
To:     =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc:     Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------o6fSQFJRAVCIcPThpRt98TR0"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------o6fSQFJRAVCIcPThpRt98TR0
Content-Type: multipart/mixed; boundary="------------qCY6I7LbgFKuKyjofzMq1UMb";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Cristian_Rodr=c3=adguez?= <crrodriguez@opensuse.org>
Cc: Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 linux-man <linux-man@vger.kernel.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com>
Subject: Re: [PATCH] Add example to rand.3
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com>
 <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
In-Reply-To: <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>

--------------qCY6I7LbgFKuKyjofzMq1UMb
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQ2hyaXN0aWFuLA0KDQpPbiAxMi8yNy8yMiAxNDowNywgQ3Jpc3RpYW4gUm9kcsOtZ3Vl
eiB3cm90ZToNCj4gT24gTW9uLCBEZWMgMjYsIDIwMjIgYXQgNzoyOSBQTSBBbGVqYW5kcm8g
Q29sb21hciB2aWEgTGliYy1hbHBoYQ0KPiA8bGliYy1hbHBoYUBzb3VyY2V3YXJlLm9yZz4g
d3JvdGU6DQo+Pg0KPj4gSGkgSm9ubnksDQo+Pg0KPiBsIGl0IHNldmVyYWwgdGltZXMgcGVy
IHNlY29uZCwgeW91J2xsDQo+PiBmaW5kIHRoYXQgaXQgb25seSBjaGFuZ2VzIHRoZSBzZWVk
IGV2ZXJ5IHNlY29uZC4gIFRoZXJlIGFyZSBiZXR0ZXIgd2F5cyB0bw0KPj4gcHJvZHVjZSBh
IGdvb2Qgc2VlZC4NCj4+DQo+PiBIb3dldmVyLCBJIHByZWZlciBzdWdnZXN0aW5nIGFyYzRy
YW5kb20oKSByYXRoZXIgdGhhbiB3b3JrYXJvdW5kaW5nIHJhbmQoMykgdG8NCj4+IGdldCBn
b29kIHJlc3VsdHMuDQo+Pg0KPj4gRmxvcmlhbiwgZGlkIHlvdSBhbHJlYWR5IG1lcmdlIGFy
YzRyYW5kb20oKSB0byBnbGliYz8NCj4gDQo+IGFyYzRyYW5kb20gaXMgYWxyZWFkeSBvbiBs
aWJjLi4gbm93IHRvIG1ha2UgaXQgYSByZXBsYWNlbWVudCBmb3INCj4gZXZlcnl0aGluZyBy
YW5kb20gIG9uZSBoYXMgdG8gaG9wZSBmb3INCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9w
dWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvY3JuZy9yYW5kb20uZ2l0L2xvZy8/aD12ZHNvDQo+
IHRvIGJlIG1lcmdlZCBpbnRvIHRoZSBtYWlubGluZSBrZXJuZWwuDQo+IFRoYXQgd2lsbCBt
YWtlIGl0IGFzIGZhc3QgYXMgcG9zc2libGUgYW5kIHJlYWxseSxyZWFsbHkgY2hlYXAgdG8g
Y2FsbC4NCg0KR3JlYXQhICBXaGVuIHRoYXQgaXMgbWVyZ2VkLCBwbGVhc2UgcGluZyBtZS4N
Cg0KSWYgc29tZW9uZSB3YW50cyB0byBjb250cmlidXRlIGEgbWFudWFsIHBhZ2UgZm9yIHRo
ZSBhcmM0cmFuZG9tIGZhbWlseSBvZiANCmZ1bmN0aW9ucywgcGxlYXNlIHNwZWFrOyBvdGhl
cndpc2UgSSBjYW4gc3RhcnQgd3JpdGluZyBzb21ldGhpbmcuDQoNCj4gTm93IGl0IGlzIGp1
c3QgYSB3cmFwcGVyIHRoYXQgY2FsbHMgZ2V0cmFuZG9tIHN5c2NhbGwuDQo+IA0KPiBXUlQg
dGhlIHJhbmQoKSBleGFtcGxlIHN1Z2dlc3Rpb24uLml0IGlzIGJhZC4uIFRoZSBvbmx5IGFk
ZGl0aW9uIEkNCj4gd2lsbCBtYWtlIHRvIHRoaXMgbWFuIHBhZ2UgaXMgc3Ryb25nbHkgZGlz
Y291cmFnaW5nIGl0cyB1c2UuDQo+IFN1Z2dlc3RpbmcgdG8gdXNlIGFyNHJhbmRvbSBpZiBh
dmFpbGFibGUgb3Igb25lIG9mDQo+IGh0dHBzOi8vcHJuZy5kaS51bmltaS5pdC8gUFJORyBp
ZiBub3QgZm9yIGNyeXB0by4NCg0KVGhlIG9ubHkgcHJvYmxlbSB3aXRoIGFyYzRyYW5kb20o
KSBpcyB0aGUgbGFjayBvZiByZXBlYXRhYmlsaXR5LiAgV2hlbiB0ZXN0aW5nIGEgDQpwcm9n
cmFtIHdpdGggcmFuZG9tIGRhdGEsIHlvdSdsbCBuZWVkIHJlcGVhdGFibGUgcmVzdWx0cy4g
IEZvciB0aGF0LCByYW5kKDMpIA0KSnVzdCBXb3Jrcy4gIFdoZW4geW91IHdhbnQgdW5wcmVk
aWN0YWJsZSByZXN1bHRzLCB5b3UganVzdCBzZWVkIGl0IHdpdGggc29tZSANCnJlYWxseSBy
YW5kb20gdmFsdWUsIGFuZCB5b3UncmUgZmluZS4gIFlvdSBuZWVkIHRvIGJlIGNhcmVmdWwg
dG8gbm90IGludHJvZHVjZSANCmJpYXMsIGJ1dCB0aGVyZSdzIG5vdGhpbmcgYmV0dGVyIGlu
IGxpYmMuICBJdCB3b3VsZCBiZSBuaWNlIGlmIGxpYmMgcHJvdmlkZWQgYSANCnJhbmRfdW5p
Zm9ybSgzKSB2YXJpYW50IG9mIHJhbmQoMyksIEJUVy4NCg0KU28sIHJhbmQoMykgaXMgbm90
IHRvIGJlIGRlcHJlY2F0ZWQsIGFsdGhvdWdoIGl0IG11c3QgYmUgdXNlZCB3aXRoIGNhcmUu
ICBJIA0Kd291bGQgcmVjb21tZW5kIHRoZSBmb2xsb3dpbmcsIHBlciBKb25ueSdzIHJlcG9y
dDoNCg0KICAgICBpZiAocmVwZWF0YWJsZSkNCiAgICAgICAgIHNyYW5kKHNlZWQpDQogICAg
IGVsc2UNCiAgICAgICAgIHNyYW5kKGFyYzRyYW5kb20oKSk7DQoNCkNoZWVycywNCg0KQWxl
eA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------qCY6I7LbgFKuKyjofzMq1UMb--

--------------o6fSQFJRAVCIcPThpRt98TR0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOrgLkACgkQnowa+77/
2zJjSA/7B1pPIRj9P/G6FHjMOCSbHGIHG3HrgXKQNYOhtRjB0jYScN6lQxT0HSdC
ifrSngaCx3GX2j91wchtAi+Ww+1nd5RnjVaFwy68mtIexGK5RVTfJx4QNGBj6bJU
v0WBUnYN+lI08M+KmZC3ihT0LMuV48qOBGIN+O8S+UNnnGJdba0lmpB6DJIa4tQw
LpVJ5MVImAOA+cLUQk+P9IjCVVzDLmPaCGXyoQBhXRFYHOzyC0Ds2QoqOwdg6AP6
dgudYxp/NF4T2QF+edipkEX249Wr3wweF8k/oBInoX0vHiohHwg9tdnNCrsIrnGr
18pKXGiV6j2knswSF2JOFPjssbHFwSf/AXLTRERqtRDOJKt4V4hwlL8JMOtDyxBK
e5JMoGYT4ZGa7jDGj2KDiNFGvU34HRyTWvwIulzo0/Gl6vjOBAruohsb4V/KkVK7
vgQNEdFZnz65heAwN/YiUECNF8GfeR6zK4P2AY88Kw6Qsz0LTam3kSsLsI66yLxw
ynqMl1c+Lao9JYT/YImoZ13rKwWq6QnQtP0zLT4lZ/WZDAx1iAH31dlj6h84/VCv
aFChwCQnyMz8UO0834m3v+WjucjXxIFcXHbb0oSWcoHVzVFEQ+YtBlD+kXUZ1j1i
YmHZfqHm7Z0Vdx/MVtnLJNGSyv26EjjJqiq7Q+csJYsWGPDfHkE=
=07Iz
-----END PGP SIGNATURE-----

--------------o6fSQFJRAVCIcPThpRt98TR0--
