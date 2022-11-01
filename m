Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F7636149B4
	for <lists+linux-man@lfdr.de>; Tue,  1 Nov 2022 12:46:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230399AbiKALqo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Nov 2022 07:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbiKALqb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Nov 2022 07:46:31 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F18DC1DDD7
        for <linux-man@vger.kernel.org>; Tue,  1 Nov 2022 04:38:30 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l16-20020a05600c4f1000b003c6c0d2a445so9710564wmq.4
        for <linux-man@vger.kernel.org>; Tue, 01 Nov 2022 04:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oHk/TC6X8ePFyH/86ZZk1J61z5gAyntaTf+cNukw4lA=;
        b=cy51pBw0Cx2jAYVR06cetStiJ5aXp4wYhcKPqD5Ir0r2IEBRRQY4zefrKjHq4YTDdL
         1bcEmT4lwCw6S6a524AiKuK2GItkLCl7bFErBBNlhzYqshoYOL/o2OCTph3l+OCMdf6Y
         P+rwSZMMY0ReLV276vFrPsMXVin2V3uBVSM5Aq7kXS2QJgU8qC173NusugAj2sOTY3lz
         tbyAq0LsGmhccbf/RuWx99KSDlP1nPb4zjLVOeu7DCSd7/gC7TRt8C2ESf0knS27lnls
         fp6SavFMKRJJQMcFrb43kp1Z0E2iqOSBn+fZs3gEkfHBe17mujLgx6Q2GVrSF+ml6Vps
         OdGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oHk/TC6X8ePFyH/86ZZk1J61z5gAyntaTf+cNukw4lA=;
        b=gpY65Gc61qOS1YhW3dxnvQARGeFE7SkvORhbwb5CvS9Yd/X+dtfVaMdL+wVBBSEyt2
         CphY0pze4utbJ43UqbMdxSVau98ZgcgFZ5owqZRj3RZcAcWTbkcfeB8qv73yHn4JWShF
         +/edztpM/O/ZEGvwHYHAo51A4eyMvcrZN2cTL6Bofr1uBybErwOgKubvXZzJ7dZSxQpu
         I4GSxQpWqgkVJkVhA+8d3hNbxgs707nSYgGTXXDbrJ+RDYEEE55DEo+gYk0AaO8Eh3Jm
         SHlkZtScTokW6NSB6hdnPLsVyiAdn5qn1a9C2PHXPOTk2jU9QRpowZiJvdWJEpVzWjoA
         vnlQ==
X-Gm-Message-State: ACrzQf1c2vJO+S1UOCjbrlIS7Lukfw/AXd+XVJDCZ8GXYXunjkrar1Hp
        t7ZQgYBXTQUnfjgRz+UZFaE=
X-Google-Smtp-Source: AMsMyM5EXnDvYUUl3zhftpW13LWBk3nDR6tpOPUletQaAgPpA46DAOp9M7rKhiNe0VGD9qFWF+wtmg==
X-Received: by 2002:a05:600c:35cf:b0:3c6:e957:b403 with SMTP id r15-20020a05600c35cf00b003c6e957b403mr22671892wmq.162.1667302709333;
        Tue, 01 Nov 2022 04:38:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p29-20020a05600c1d9d00b003c65c9a36dfsm10471061wms.48.2022.11.01.04.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Nov 2022 04:38:28 -0700 (PDT)
Message-ID: <78113c25-a635-8d35-a5db-9657f8adf4a6@gmail.com>
Date:   Tue, 1 Nov 2022 12:38:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH man-pages v4] madvise.2: add documentation for
 MADV_COLLAPSE
To:     Zach O'Keefe <zokeefe@google.com>
Cc:     Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20221031225500.3994542-1-zokeefe@google.com>
 <4b4a42ee-9243-96aa-b581-d56ae420f84a@gmail.com>
 <CAAa6QmQN1u5ynyE7Lce9xEKwRQpG6OU8ZOcgFk5nc1h-AN4YgQ@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAAa6QmQN1u5ynyE7Lce9xEKwRQpG6OU8ZOcgFk5nc1h-AN4YgQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------9WNHo0hiovEQGPFLGW0TrHON"
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
--------------9WNHo0hiovEQGPFLGW0TrHON
Content-Type: multipart/mixed; boundary="------------yH1Wj8Wc2r12QOOya0B5cqHE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zach O'Keefe <zokeefe@google.com>
Cc: Yang Shi <shy828301@gmail.com>, linux-mm@kvack.org,
 linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Message-ID: <78113c25-a635-8d35-a5db-9657f8adf4a6@gmail.com>
Subject: Re: [PATCH man-pages v4] madvise.2: add documentation for
 MADV_COLLAPSE
References: <20221031225500.3994542-1-zokeefe@google.com>
 <4b4a42ee-9243-96aa-b581-d56ae420f84a@gmail.com>
 <CAAa6QmQN1u5ynyE7Lce9xEKwRQpG6OU8ZOcgFk5nc1h-AN4YgQ@mail.gmail.com>
In-Reply-To: <CAAa6QmQN1u5ynyE7Lce9xEKwRQpG6OU8ZOcgFk5nc1h-AN4YgQ@mail.gmail.com>

--------------yH1Wj8Wc2r12QOOya0B5cqHE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGV5IFphY2gsDQoNCk9uIDExLzEvMjIgMDE6MzgsIFphY2ggTydLZWVmZSB3cm90ZToNCg0K
Pj4NCj4+IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGlzIGxhc3QgcGFyYWdyYXBoIChzaW5jZSAi
QWxzbyBub3RlIC4uLiIpLiAgQ291bGQgeW91DQo+PiBwbGVhc2UgcmV3b3JkIGl0IGEgbGl0
dGxlIGJpdD8NCj4+DQo+IA0KPiBTdXJlIC0gSSBjYW4gc2VlIHRoYXQgaXQncyBoYXJkIHRv
IHBhcnNlLg0KPiANCj4gRnVydGhlciB1cCBJIG5vdGUgdGhhdCwgIklmIGNvbGxhcHNlIG9m
IGEgZ2l2ZW4gaHVnZQ0KPiBwYWdlLWFsaWduZWQvc2l6ZWQgcmVnaW9uIGZhaWxzLCB0aGUg
b3BlcmF0aW9uIG1heSBjb250aW51ZSB0byBhdHRlbXB0DQo+IGNvbGxhcHNpbmcgdGhlIHJl
bWFpbmRlciBvZiB0aGUgc3BlY2lmaWVkIG1lbW9yeS4iDQo+IA0KPiBUaGVuIHBlcmhhcHMg
aXQncyBlbm91Z2ggdG8ganVzdCBzdGF0ZSwgIkluIHRoZSBldmVudCBtdWx0aXBsZQ0KPiBo
dWdlcGFnZS1hbGlnbmVkL3NpemVkIGFyZWFzIGZhaWwgdG8gY29sbGFwc2UsIG9ubHkgdGhl
IG1vc3QNCj4gcmVjZW50bHktZmFpbGVkIGNvZGUgd2lsbCBiZSBzZXQgaW4gZXJybm8iDQoN
CkkgbGlrZSB0aGlzLg0KDQo+IA0KPiBUaGUgaWRlYSBoZXJlIGJlaW5nOiBlcnJubyBvbmx5
IGNvbW11bmljYXRlcyB0aGUgcmVhc29uIGZvciAxL04NCj4gZmFpbHVyZXMgdGhhdCBtaWdo
dCBoYXZlIG9jY3VyZWQuDQo+IA0KPiBIb3dldmVyIC0tIG9uIHNlY29uZCB0aG91Z2h0IC0t
IHBlcmhhcHMgdGhpcyBpc24ndCBwYXJ0aWN1bGFybHkNCj4gdXNlZnVsLCBhcyBpdCdzIGFs
cmVhZHkgaW1wbGllZC4gU28sIG15IG5ldyBzdWdnZXN0aW9uIHdvdWxkIGJlIHRoYXQNCj4g
d2Ugc2hvdWxkIGRyb3AgaXQuIFdoYXQgZG8geW91IHRoaW5rPw0KDQplcnJubyB1c3VhbGx5
IGJlaGF2ZXMgbGlrZSB0aGF0IGlmIHlvdSBjYWxsIGNvbnNlY3V0aXZlIGNhbGxzLCBidXQg
aXQncyBub3Qgc28gDQpvYnZpb3VzIGhvdyBhIHNpbmdsZSBjYWxsIHdpbGwgYmVoYXZlOiBp
dCBjb3VsZCByZXBvcnQgdGhlIGxhc3Qgb25lIGFzIGluIHRoaXMgDQpjYXNlLCBvciB0aGUg
Zmlyc3Qgb25lIHNpbmNlIGl0J3MgdGhlIG9uZSB0aGF0IG1hZGUgaXQgYnJlYWsuICBJJ2Qg
a2VlcCBpdC4NCg0KWy4uLl0NCg0KPj4gRGlmZiBmb3IgY2hhbmdpbmcgYSBmZXcgbGluZSBi
cmVha3MgKGFuZCByZW1vdmluZyB0aGUgc3B1cmlvdXMgZmlsZSk6DQo+Pg0KPiANCj4gVGhh
bmsgeW91IHNvIG11Y2ggZm9yIHRoaXMhIDopDQoNCjopDQoNCkNoZWVycywNCkFsZXgNCg0K
LS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------yH1Wj8Wc2r12QOOya0B5cqHE--

--------------9WNHo0hiovEQGPFLGW0TrHON
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNhBSwACgkQnowa+77/
2zKrmA/+JXGH9W03SNolQBTdJL5/0JkFTE103eJSc/0rhFbmOiDQImGoF7dEUSzb
KNXCBxFFffcPAoQVLVIuqZs/XIRJZFHIuK1FDoqLYWLl9uEzZ6VF4GPtqpt8QHD8
qJcMhEyQ7rD/RozcUvuLRLf7Cdk/MJgBAX5N3+jV0h1+HseFeON31r+AyBSFqkAv
MZAm1/OyrXK9XL/S8Dms1jpU9uCyYrvZUIquXWyptvncvgdCuolhqRwZjOUO0B+R
ohksU+RTYbkX54OgFuyEvMr6NRrRC+O5r37vM90gB1oOlny/25mfJ0knwww+T4cp
YWtZzj4ANk7YChV5eUVYqtnIXbK0rJfdRE5W6lgXsOfhZKa/u3s8OZnrPSyhZ70j
RtEGVkOtfbnBF86oAoQwqLL1rdbzzT9rh1Z1Oj6IyNpXTk+0YX0pc0e6tQKhTmPM
GOCpH/R2QxOl+us8QVydqlQQw75j9w0rSfAhpN96cRfzYR0oL6zVB2PqEIFjC7h7
5VSOLrTJkGlk/NdQwS6lDgEBoiENxgeNeY0N6y6GvfJzGSi0NR4hGAsPV+HsTt8W
W3llfOEtvicfBZlhX0sUkGeR34UdMnxJEsOP+xT7Wa7P3wjCNSfo7qb4MotBDw1S
sRoEkmiNUmNEE7JAb9AxP8L8iKOFXG/9vX466Pyj1s8qJ5JRHg8=
=+gx8
-----END PGP SIGNATURE-----

--------------9WNHo0hiovEQGPFLGW0TrHON--
