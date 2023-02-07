Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF9A968CBDE
	for <lists+linux-man@lfdr.de>; Tue,  7 Feb 2023 02:21:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229766AbjBGBVt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Feb 2023 20:21:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230170AbjBGBVs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Feb 2023 20:21:48 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C60611739
        for <linux-man@vger.kernel.org>; Mon,  6 Feb 2023 17:21:45 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id l37-20020a05600c1d2500b003dfe46a9801so8807471wms.0
        for <linux-man@vger.kernel.org>; Mon, 06 Feb 2023 17:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q/DYfXHi5KYNqxzKWDw44OCPzvD0HRl1FOrghNbQ7MA=;
        b=KzmWmjknk5rozHlLtk3l0AwQ/zXFpW6xSapMCnQMotIW/nkxJC0cVoHjAwLApeHzc6
         zoYav1sYUEELbZHW9wpVnxbyKQbzWMRt8WCXSv6FKMIKYaCSmMRF6MOdr2Q6IF7GQTOQ
         hBUftIOGu3Jy+P1DzgGH53h8dy2eFSYYO/yB5auQJdgvZ6UDbbbknbbric2DHnATDRas
         Uu/jIngHEI5qAprbqOcUjC3pFD0PVTOogvzegLTUlQDnYBFp8yToku2xeT4nEs4xIsol
         ZKoDzPYcGZV2ogrr8/WodPQ6gDsAvZO5HN+mL9ggMKsRqPisI+XCUriZc1w4ltHGbj+4
         Vw2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q/DYfXHi5KYNqxzKWDw44OCPzvD0HRl1FOrghNbQ7MA=;
        b=0Pj3vYI2Yy+0NbIcuYOdIfbYlQDFEMHFCzyj4sENM5S8jTj63mxfIatWf7LWOaxEpK
         Su7Ic7r2Mf4T1e7o8lLJ6igllIRAvZlVuKNefAGZFJbCt8vBE9gL/+W3yAdYEgJAl5Hr
         uT7rmy6UacIcbPrX13j+yx4+0WbL0WxK8smczf4pvO0fYsbgs4lsp9N/SGTcmUxdvDg/
         pyJxf57lyONFM+DVMY0ViM6MqhKZA7l1T7oLmr9dAss1vu/U+aZ25KdRw9lIW+WcDcWc
         44DkT3BsSBzG4Q7hFeC/ZrjTmsMFzZxJAQeAdD6RYyI2/IBZOThCvQ0fPZItw2yqM+TN
         kQSA==
X-Gm-Message-State: AO0yUKVqxA7S/mKtHkOyDxS/jc11j7kFjhBnFZJ0CCxIJUzlgd30VTFO
        bLlsURbxyByHgaXpDgJ4Ab4=
X-Google-Smtp-Source: AK7set+Q2uYMTMQ7hIDGwwqYLAL0rCVRO0P0TLeC0cuo+CNALfPBu/+M3iLpWgGxbz3NOtnxRRVXaQ==
X-Received: by 2002:a05:600c:16c6:b0:3db:fc3:6de4 with SMTP id l6-20020a05600c16c600b003db0fc36de4mr1365606wmn.35.1675732904167;
        Mon, 06 Feb 2023 17:21:44 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l21-20020a05600c1d1500b003dc59d6f2f8sm13471955wms.17.2023.02.06.17.21.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Feb 2023 17:21:43 -0800 (PST)
Message-ID: <ee4a4399-e50f-d45e-9ee3-ccc39d554818@gmail.com>
Date:   Tue, 7 Feb 2023 02:21:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
Content-Language: en-US
To:     Eric Blake <eblake@redhat.com>
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>
References: <20230205152835.17413-1-alx@kernel.org>
 <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------e0hdc25k058v0hEhO8ZsGeMO"
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
--------------e0hdc25k058v0hEhO8ZsGeMO
Content-Type: multipart/mixed; boundary="------------0A2nV55CJRkOlBBfyq69PopJ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
 GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
 =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>,
 Rich Felker <dalias@libc.org>, Andrew Clayton <a.clayton@nginx.com>,
 Richard Biener <richard.guenther@gmail.com>,
 Zack Weinberg <zack@owlfolio.org>, Florian Weimer <fweimer@redhat.com>,
 Joseph Myers <joseph@codesourcery.com>, Jakub Jelinek <jakub@redhat.com>
Message-ID: <ee4a4399-e50f-d45e-9ee3-ccc39d554818@gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
References: <20230205152835.17413-1-alx@kernel.org>
 <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
In-Reply-To: <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>

--------------0A2nV55CJRkOlBBfyq69PopJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gRXJpYywNCg0KT24gMi82LzIzIDE5OjQ1LCBFcmljIEJsYWtlIHdyb3RlOg0KPiBP
biBTdW4sIEZlYiAwNSwgMjAyMyBhdCAwNDoyODozNlBNICswMTAwLCBBbGVqYW5kcm8gQ29s
b21hciB3cm90ZToNCj4gDQo+IFJlZ2FyZGxlc3Mgb2YgdGhlIG1lcml0cyBvZiB0aGUgcGF0
Y2gsIGxldCdzIG5vdCBpbnRyb2R1Y2UgdHlwb3M6DQo+IA0KPj4gKysrIGIvbWFuM3R5cGUv
c29ja2FkZHIuM3R5cGUNCj4+IEBAIC0xMjAsNiArMTIwLDI2IEBAIC5TSCBOT1RFUw0KPj4g
ICAuSSA8bmV0aW5ldC9pbi5oPg0KPj4gICBhbmQNCj4+ICAgLklSIDxzeXMvdW4uaD4gLg0K
Pj4gKy5TSCBCVUdTDQo+PiArLkkgc29ja2FkZHJfc3RvcmFnZQ0KPj4gK3dhcyBkZXNpZ25l
ZCBiYWNrIHdoZW4gc3RyaWN0IGFsaWFzaW5nIHdhc24ndCBhIHByb2JsZW0uDQo+PiArQmFj
ayB0aGVuLA0KPj4gK29uZSB3b3VsZCBkZWZpbmUgYSB2YXJpYWJsZSBvZiB0aGF0IHR5cGUs
DQo+PiArYW5kIHRoZW4gYWNjZXNzIGl0IGFzIGFueSBvZiB0aGUgb3RoZXINCj4+ICsuSVIg
c29ja2FkZHJfICoNCj4+ICt0eXBlcywNCj4+ICtkZXBlbmRpbmcgb24gdGhlIHZhbHVlIG9m
IHRoZSBmaXJzdCBtZW1iZXIuDQo+PiArVGhpcyBpcyBVbmRlZmluZWQgQmVoYXZpb3IuDQo+
PiArSG93ZXZlciwgdGhlcmUgaXMgbm8gd2F5IHRvIHVzZSB0aGVzZSBBUElzIHdpdGhvdXQg
aW52b2tpbmcgVW5lZGZpbmVkIEJlaGF2aW9yLA0KPiANCj4gVW5kZWZpbmVkDQo+IA0KPj4g
K2VpdGhlciBpbiB0aGUgdXNlciBwcm9ncmFtIG9yIGluIGxpYmMsDQo+PiArc28gaXQgaXMg
c3RpbGwgcmVjb21tZW5kZWQgdG8gdXNlIHRoaXMgbWV0aG9kLg0KPj4gK1RoZSBvbmx5IGNv
cnJlY3Qgd2F5IHRvIHVzZSBkaWZmZXJlbnQgdHlwZXMgaW4gYW4gQVBJIGlzIHRocm91Z2gg
YSB1bmlvbi4NCj4+ICtIb3dldmVyLA0KPj4gK3RoYXQgdW5pb24gbXVzdCBiZSBpbXBsZW1l
bnRlZCBpbiB0aGUgbGlicmFyeSwNCj4+ICtzaW5jZSB0aGUgdHlwZSBtdXN0IGJlIHNoYXJl
ZCBiZXR3ZWVuIHRoZSBsaWJyYXJ5IGFuZCB1c2VyIGNvZGUsDQo+PiArc28gbGliYyBzaG91
bGQgYmUgZml4ZWQgYnkgaW1wbGVtZW50aW5nDQo+PiArLkkgc29ja2FkZHJfc3RvcmFnZQ0K
Pj4gK2FzIGEgdW5pb24uDQo+PiAgIC5TSCBTRUUgQUxTTw0KPj4gICAuQlIgYWNjZXB0ICgy
KSwNCj4+ICAgLkJSIGJpbmQgKDIpLA0KPiANCj4gQWxzbywgd2hpbGUgSSBjb3VsZCByYWlz
ZSB0aGUgaXNzdWUgd2l0aCB0aGUgQXVzdGluIEdyb3VwIG9uIHlvdXINCj4gYmVoYWxmIHRv
IGdldCB0aGUgUE9TSVggd29yZGluZyBpbXByb3ZlZCwgSSB0aGluayBpdCB3b3VsZCB3b3Jr
IGJldHRlcg0KPiBpZiB5b3UgaW5pdGlhdGUgYSBidWcgcmVwb3J0IHJhdGhlciB0aGFuIGhh
dmluZyBtZSBkbyBpdDoNCj4gDQo+IGh0dHBzOi8vd3d3LmF1c3Rpbmdyb3VwYnVncy5uZXQv
bWFpbl9wYWdlLnBocA0KDQpJIGdhdmUgaXQgYSB0cnkgYWZ0ZXIgYSB5ZWFyIHNpbmNlIG15
IGxhc3QgYXR0ZW1wdC4gIFRoZSBvcGVuIGdyb3VwIHdlYnNpdGUgaXMgDQpvbmUgb2YgdGhl
IHdvcnN0IEkndmUgZXZlciBzZWVuLiAgSSdtIHNvcnJ5LCBJIGNhbid0IGdldCBpdCB0byB3
b3JrLiAgQ291bGQgeW91IA0KcGxlYXNlIHJlcG9ydCBhIGJ1ZyBvbiBteSBiZWhhbGY/DQoN
CkkgaGF2ZSBhbiBvcGVuZ3JvdXAgYWNjb3VudCwgYW5kIHN1cHBvc2VkbHkgYW0gc3Vic2Ny
aWJlZCB0byB0aGUgYXVzdGluLWdyb3VwLWwgDQptYWlsaW5nIGxpc3QuICBCdXQgSSdtIG5v
dCBhYmxlIHRvIGxvZyBpdC4NCg0KVGhhbmtzLA0KDQpBbGV4DQoNCj4gDQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0KR1BHIGtleSBmaW5nZXJwcmludDog
QTkzNDg1OTRDRTMxMjgzQTgyNkZCREQ4RDU3NjMzRDQ0MUUyNUJCNQ0K

--------------0A2nV55CJRkOlBBfyq69PopJ--

--------------e0hdc25k058v0hEhO8ZsGeMO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPhp6UACgkQnowa+77/
2zLW6xAAlfyuQzz4/AKD+DWpFCnnN6w+fKcfMmfx2+T9jEto00AXputCUq7AfBU9
pNU0csKJKsAbzbaOOVYn/aIhSsPFYc0W6rktXVwyKsWr3/9oY1qkfm9RGnhcm23o
K22N94+BsWzfwEloavwUb+74B6iB43BrzvleruAbLAzwxKdjop33EFYhIiRqJBmh
tJUzsdIqzezwjpSQUQvGO9E/E4hj5aJH70vTJhcOMtTASIQqcWQSFFwCFgsCGwYR
4fo6NA5hp7yjCzMb1gCZIlrxVNshkI6jS3QDjf2AeTrTxuJLkBJRmRxDP6CavqjG
kBT9pudeJ5q3GMDbkQqKRtBd9T2pW9kiEDTrFU737b+SjwKdhoxOI2zTTmS0y5PF
BpyYbgLsrxYWDkDeMdvdpjuG4ZjXqges9UyXnMRl7lCXtbuPon42eTY1pJoYYViq
CIRNLodP+2aWnH+jVnGhd2h2EWd4fur/IIa/PNRQTmNj3QLlfS5r/951YbYzpjAr
gmKOYKTJd07iYwgn/Uh5wZRGOf7711EVHW7C+rynLXeTntn0wWTXZLfCWunQsVCm
bR7UqFnVpW/WbkNaEpC3MEwfdKOCTxyDBAQhvxWdRlSfP9jphiyg+VeHLF7SQQ9c
ZE+PYpMnTA0/b5hlHqJKGpvCmloDHdc6964jHKxUQM7oicYytjM=
=VN0I
-----END PGP SIGNATURE-----

--------------e0hdc25k058v0hEhO8ZsGeMO--
