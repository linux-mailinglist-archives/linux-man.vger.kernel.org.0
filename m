Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC6F0624EB0
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 01:05:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbiKKAF1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 19:05:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiKKAFX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 19:05:23 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFD765EF84
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:05:22 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id p16so2066853wmc.3
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QIA2SEvnNuq1oH+ADPJpWvaggjItOib+xddZoukL0u4=;
        b=Bb0/qDBVQxkqjsumM/NRs+qr2mmOQhe2EN4jdimfY784go+McQ54uZf+8N+TEnpxMl
         ok5oZN2jTBlQKqjU/kMR84UUg1YJrftSjmHPkRX/8RdsFMGKSK+1flwCmM++YTHIe066
         oL/8KpC75rcvN6ApyDTQz7n20yxlLRgjG/uiwopIjJSr02E2fc6tpdg2VPso1kz7WzcK
         aUkH68RSo4Nn4oi1+bxNeULkjs/xIkm/+Fz1eYrtznO+60kn6DZyjRYqHKx9tySBHim1
         FpBKFYELW3DeJ5lEz4lxFD9ljSlcmUL2lz7oi+BVX2U3xGws3lh5agv2l338/ASKFkeO
         YHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QIA2SEvnNuq1oH+ADPJpWvaggjItOib+xddZoukL0u4=;
        b=ABVXMWOhdJ6qSoiDCY7kMUzY/hrA15l0w4k5P2kyvcBeybJhc4ycSaDqAr/mwXpc0I
         Frr9OY03UpxTJhKrcx2yHqk6YtIMExtlYXMht+Gcxi7t0ppMMYgrnuWaSsF8/QLkg8bf
         0OU7hYAaodKO47ua8kuqM58DGnMZhmZG7klJOjX5/FcyvEfyc7UOfNOz0a46BEJ8QPT+
         Md4qIj5AwVojJxhPz3j6QzNMWwQKXvHvBv/Vz56OCUjK8erII5aKXGrXsOxGlmT3UlF1
         dB2L6GCuPfnTW5bgh/IeCrihov0P7qCz2CIZZa391GmUCJ94O2JRzN4iIZKum+uxnSs+
         HWWw==
X-Gm-Message-State: ANoB5pnX7JQWZcHJGnthH/gdhAc4m2E0nloGeHM7P/+LeF+d0hZHy53p
        7HfAf9SHw24H22LxNdV88Q0=
X-Google-Smtp-Source: AA0mqf5yDuh9aH+9x//Bkj39LferpS4xC7FRhAXSv2HkM6rbG6L5m0YaCUOC2gvC729g9jfR11E38Q==
X-Received: by 2002:a7b:c046:0:b0:3cf:ab98:d3cd with SMTP id u6-20020a7bc046000000b003cfab98d3cdmr15082633wmc.34.1668125121509;
        Thu, 10 Nov 2022 16:05:21 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g11-20020a5d540b000000b0022cdeba3f83sm405831wrv.84.2022.11.10.16.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 16:05:20 -0800 (PST)
Message-ID: <486aa42b-48be-b556-55c6-6d837430e256@gmail.com>
Date:   Fri, 11 Nov 2022 01:05:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
Content-Language: en-US
To:     Andrew Clayton <andrew@digital-domain.net>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221110233138.63585-1-andrew@digital-domain.net>
 <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
 <20221111000440.0b4e08c9@kappa.digital-domain.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221111000440.0b4e08c9@kappa.digital-domain.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dTwx4r1VoLx0l0lYdqrJDyhI"
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
--------------dTwx4r1VoLx0l0lYdqrJDyhI
Content-Type: multipart/mixed; boundary="------------FrA0vzktluY3nF7Yx0e8igGF";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Andrew Clayton <andrew@digital-domain.net>
Cc: Alejandro Colomar <alx@kernel.org>,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Message-ID: <486aa42b-48be-b556-55c6-6d837430e256@gmail.com>
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <20221110233138.63585-1-andrew@digital-domain.net>
 <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
 <20221111000440.0b4e08c9@kappa.digital-domain.net>
In-Reply-To: <20221111000440.0b4e08c9@kappa.digital-domain.net>

--------------FrA0vzktluY3nF7Yx0e8igGF
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDExLzExLzIyIDAxOjA0LCBBbmRyZXcgQ2xheXRvbiB3cm90ZToNCj4gT24gRnJp
LCAxMSBOb3YgMjAyMiAwMDo1OTo1OSArMDEwMA0KPiBBbGVqYW5kcm8gQ29sb21hciA8YWx4
Lm1hbnBhZ2VzQGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPj4+ICtidXQgaXMgcHJlc2VudCBv
biBhIG51bWJlciBvZiBvdGhlciBzeXN0ZW1zLA0KPj4+ICtpbmNsdWRpbmc6IG11c2wgbGli
YyAwLjkuNzsgRnJlZUJTRCA2LjAsIE9wZW5CU0QgNS40LA0KPj4+ICtOZXRCU0QsIGFuZCBJ
bGx1bW9zLg0KPj4NCj4+IEkndmUgYmVlbiB0aGlua2luZyBhYm91dCB0aGUgbGluZSBicmVh
a3MuICBJJ20gbm90IHN1cmUgaG93IEknZCBzcGxpdCB0aGVtLCBidXQNCj4+IEknbSBub3Qg
aGFwcHkgd2l0aCB0aGUgY3VycmVudCBzdWdnZXN0aW9uLg0KPj4NCj4+IFBsZWFzZSBzZWUg
bWFuLXBhZ2VzKDcpIGFib3V0IHNlbWFudGljIG5ld2xpbmVzLCBhbmQgc2VlIGlmIHlvdSBj
b21lIHVwIHdpdGgNCj4+IHNvbWV0aGluZyBuaWNlci4NCj4+DQo+PiBtYW4tcGFnZXMoNyk6
DQo+PiAgICAgIFVzZSBzZW1hbnRpYyBuZXdsaW5lcw0KPj4gICAgICAgICAgSW4gIHRoZSAg
c291cmNlIG9mIGEgbWFudWFsIHBhZ2UsIG5ldyBzZW50ZW5jZXMgc2hvdWxkIGJlDQo+PiAg
ICAgICAgICBzdGFydGVkIG9uIG5ldyBsaW5lcywgbG9uZyBzZW50ZW5jZXMgc2hvdWxkIGJl
IHNwbGl0IGludG8NCj4+ICAgICAgICAgIGxpbmVzIGF0IGNsYXVzZSBicmVha3MgKGNvbW1h
cywgc2VtaWNvbG9ucywgIGNvbG9ucywgIGFuZA0KPj4gICAgICAgICAgc28gb24pLCBhbmQg
bG9uZyBjbGF1c2VzIHNob3VsZCBiZSBzcGxpdCBhdCBwaHJhc2UgYm91bmTigJANCj4+ICAg
ICAgICAgIGFyaWVzLiAgIFRoaXMgIGNvbnZlbnRpb24sICBzb21ldGltZXMgIGtub3duIGFz
ICJzZW1hbnRpYw0KPj4gICAgICAgICAgbmV3bGluZXMiLCBtYWtlcyBpdCBlYXNpZXIgdG8g
c2VlIHRoZSBlZmZlY3Qgb2YgIHBhdGNoZXMsDQo+PiAgICAgICAgICB3aGljaCBvZnRlbiBv
cGVyYXRlIGF0IHRoZSBsZXZlbCBvZiBpbmRpdmlkdWFsIHNlbnRlbmNlcywNCj4+ICAgICAg
ICAgIGNsYXVzZXMsIG9yIHBocmFzZXMuDQo+IA0KPiBJIGd1ZXNzIHRoZSBiZXN0IHRoaW5n
IHRoZW4gaXMgdG8ganVzdCBicmVhayBpdCBvbiB0aGUgc2VtaS1jb2xvbi4NCg0KWWVhaCwg
ZWl0aGVyIHNlbWljb2xvbiBvciAnOicuDQoNCj4gDQo+IEFuZHJldw0KDQotLSANCjxodHRw
Oi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==

--------------FrA0vzktluY3nF7Yx0e8igGF--

--------------dTwx4r1VoLx0l0lYdqrJDyhI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNtkb4ACgkQnowa+77/
2zJQlQ//eoa49g9zUo0viIPy0N5Iv39Qbt8bUGnyp02kn6Bq/+8Qlq1qFqoeSCyQ
GZifBtzj1ugNEzxu1vXaUzDT+NnSfDV18EZMKeW+N00ESTWxkQaKwQnyJIUZjEy0
djJh+pt0ECz8Mg54rZR8NVjgrowcoHxhueCdo3zJc9HxLmWHkFw+L5/CzsRL5g7Y
+ng4B1hFrKW6lIm9fLKolwjJvmyMW87iFssm1xkUIOhVPMFlQQ67aWZcVdp1oh51
yZQpiyGZEU9u85V9AER0dkYv8rLS+ZSXP+pD3w/jOkS5wsWL0eLf+Ts5DCzB00hR
g0h7PSmpDA8+yZSUqCpeQ+qIMQmbvD7II22O/NuWfoheqEiCpkIFgodo2QBez9zl
Ym7AN61jjVz6fTzAFles7AK70FVPz4UQLpwGyae6dZXzpHYaLhs0VqdIyVncrqex
a2nlJFqELLdDMnWQ4+3ugFYHC610n7JbogRiWSHqJ+Ao7bkkfSKp0QO0MANnel1m
YJhDH4XDJmC6xwuEDosQu0lLlUtoI3cS/7J2jZhz0SCctRIGPHO6QqTfPwwiQYhw
qVuz1Ch5DSthBsdWP2+b/bXjBbynX9ajkG8NEiZaotySlssIEK/7n0Wv1C12Bkkw
OD2i+OqljNDOOwwHngNCa+lO5bVTq3keO4RmW3qLOEgleQCQh1E=
=M9as
-----END PGP SIGNATURE-----

--------------dTwx4r1VoLx0l0lYdqrJDyhI--
