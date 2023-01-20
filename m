Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B273675DEA
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 20:25:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbjATTZ3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 14:25:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbjATTZ2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 14:25:28 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 256FD8BABF
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 11:25:24 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso4439914wms.3
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 11:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=afPni1S3ezJb0tDDo27vD8Jn7UFsAscO/GkdK2/xj7s=;
        b=F3N7Ccn05rpGm5XIRZbitrZcT34hyjlQJeLFEVM3UlKXfnaZnPo3V062M293uzSe4B
         pUdEbaZ+fxoDi8FPb48VZk2ykQeFy2w4ie9Id4Bmtrb05dRkdK+ddQmERe1JGfnhwjmT
         TowbvhUB417RWmQ74SVuJUth0+S6Zrb8ZmmNHrz5xtkLY9wz/mVw1hox3Cj8Xv+wYqiB
         MKi0CAfvHiZQD6wJp9X+osKcz++i7FVvjNPXV2Z1PtmxnT3M+zeAP7kZch8auAnnbHXZ
         aNnnyFY0yEsl9NCmXDQ1G+UnRaCPqbq14Fkx7roJmeulfm7FSWBZBap5LASvPGe4nElW
         hE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=afPni1S3ezJb0tDDo27vD8Jn7UFsAscO/GkdK2/xj7s=;
        b=6ZNE/nHw6L9UBIzVMNIEc39JlrR/DeqkIzVdblB+Z9ePFiG1VgnpyDdP48+YD9SZkl
         FBzVic5HbsZS2tdqnzjsyrpeSGjLslaQWOqE4iDElGJEFfPg1+BNMZAw9K0uJDp4mcd4
         aRGHKKQ0zIFNhkmSDs+Z3EQ+YHMP+iNtd8eJ2HtceUhVTLbhbtwBshrrEU6+V0fXGAQ7
         5iECJvQQDeEwKy++hlMnfD/f0FH5QtDtezI5TsiLQZwS50Zf6BYHgne0WxZnzkNA3CsN
         Vj1zP1DpyoRKNm5xUHFNhjHZtsPhgTRxmpiWwxzjY3l0RYZHueGhqSU8qreE/1bNT7fT
         yaUw==
X-Gm-Message-State: AFqh2koZhBG0g+sfBtaBgtahfxGSdhYc7DoMF2hAH7zLfIY1DWxa4Q4Z
        GbRtOf15YE3wmDKk7HjVY/I=
X-Google-Smtp-Source: AMrXdXsXcRtp+RGFOsFiu6XwA0YyxovVPg/4Y0KJs8qWOLxWCxRa4Oa1lUJBt0bJvBTi0JWbAyuHqw==
X-Received: by 2002:a05:600c:1ca0:b0:3db:1ded:1769 with SMTP id k32-20020a05600c1ca000b003db1ded1769mr7474611wms.10.1674242723225;
        Fri, 20 Jan 2023 11:25:23 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d19-20020a05600c34d300b003a6125562e1sm3164020wmq.46.2023.01.20.11.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 11:25:22 -0800 (PST)
Message-ID: <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
Date:   Fri, 20 Jan 2023 20:25:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
Content-Language: en-US
To:     Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        'linux-man' <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
References: <20230120134043.10247-1-alx@kernel.org>
 <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WWW7pcAgyzLiVIrv01S3B9WE"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WWW7pcAgyzLiVIrv01S3B9WE
Content-Type: multipart/mixed; boundary="------------1fDwPwuyRe8dcwi4y7L1Q4VZ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Zack Weinberg <zack@owlfolio.org>,
 GNU libc development <libc-alpha@sourceware.org>, gcc@gcc.gnu.org
Cc: Alejandro Colomar <alx@kernel.org>,
 'linux-man' <linux-man@vger.kernel.org>, =?UTF-8?Q?Bastien_Roucari=c3=a8s?=
 <rouca@debian.org>, Eric Blake <eblake@redhat.com>,
 Stefan Puiu <stefan.puiu@gmail.com>, Igor Sysoev <igor@sysoev.ru>
Message-ID: <0e6c7856-549b-5014-fb37-bc5925660ffe@gmail.com>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
References: <20230120134043.10247-1-alx@kernel.org>
 <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>
In-Reply-To: <d77b529d-e54d-4919-87a4-d90fd816ba8b@app.fastmail.com>

--------------1fDwPwuyRe8dcwi4y7L1Q4VZ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

W0NDICs9IEdDQ10gIC8vIHB1biBub3QgaW50ZW5kZWQgOlANCg0KSGkgWmFjaywNCg0KT24g
MS8yMC8yMyAxOTowNCwgWmFjayBXZWluYmVyZyB3cm90ZToNCj4gT24gRnJpLCBKYW4gMjAs
IDIwMjMsIGF0IDg6NDAgQU0sIEFsZWphbmRybyBDb2xvbWFyIHdyb3RlOg0KPj4gVGhlIGhp
c3RvcmljYWwgZGVzaWduIG9mIGBzb2NrYWRkcl9zdG9yYWdlYCBtYWtlcyBpdCBpbXBvc3Np
YmxlIHRvIHVzZQ0KPj4gd2l0aG91dCBicmVha2luZyBzdHJpY3QgYWxpYXNpbmcgcnVsZXMu
ICBOb3Qgb25seSB0aGlzIHR5cGUgaXMgdW51c2FibGUsDQo+PiBidXQgZXZlbiB0aGUgdXNl
IG9mIG90aGVyIGBzb2NrYWRkcl8qYCBzdHJ1Y3R1cmVzIGRpcmVjdGx5ICh3aGVuIHRoZQ0K
Pj4gcHJvZ3JhbW1lciBvbmx5IGNhcmVzIGFib3V0IGEgc2luZ2xlIGFkZHJlc3MgZmFtaWx5
KSBpcyBhbHNvIGluY29ycmVjdCwNCj4+IHNpbmNlIGF0IHNvbWUgcG9pbnQgdGhlIHN0cnVj
dHVyZSB3aWxsIGJlIGFjY2Vzc2VkIGFzIGEgYHNvY2thZGRyYCwgYW5kDQo+PiB0aGF0IGJy
ZWFrcyBzdHJpY3QgYWxpYXNpbmcgcnVsZXMgdG9vLg0KPj4NCj4+IFNvLCB0aGUgb25seSB3
YXkgZm9yIGEgcHJvZ3JhbW1lciB0byBub3QgaW52b2tlIFVuZGVmaW5lZCBCZWhhdmlvciBp
cyB0bw0KPj4gZGVjbGFyZSBhIHVuaW9uIHRoYXQgaW5jbHVkZXMgYHNvY2thZGRyYCBhbmQg
YW55IGBzb2NrYWRkcl8qYCBzdHJ1Y3R1cmVzDQo+PiB0aGF0IGFyZSBvZiBpbnRlcmVzdCwg
d2hpY2ggYWxsb3dzIGxhdGVyIGFjY2Vzc2luZyBhcyBlaXRoZXIgdGhlIGNvcnJlY3QNCj4+
IHN0cnVjdHVyZSBvciBwbGFpbiBgc29ja2FkZHJgIGZvciB0aGUgc2FfZmFtaWx5Lg0KPiAN
Cj4gLi4uDQo+IA0KPj4gICAgICBzdHJ1Y3QgbmV3X3NvY2thZGRyX3N0b3JhZ2UgIG5zczsN
Cj4+DQo+PiAgICAgIC8vIC4uLiAoaW5pdGlhbGl6ZSBvc3MgYW5kIG5zcykNCj4+DQo+PiAg
ICAgIGluZXRfc29ja2FkZHIyc3RyKCZuc3Muc2EpOyAgLy8gY29ycmVjdCAoYW5kIGhhcyBu
byBjYXN0cykNCj4gDQo+IEkgdGhpbmsgd2UgbmVlZCB0byBtb3ZlIHNsb3dseSBoZXJlIGFu
ZCBiZSBfc3VyZV8gdGhhdCBhbnkgcHJvcG9zZWQgY2hhbmdlDQo+IGRvZXMgaW4gZmFjdCBy
ZWR1Y2UgdGhlIGFtb3VudCBvZiBVQi4NCg0KU3VyZSwgSSdtIGp1c3Qgc2VuZGluZyB0aGUg
cGF0Y2ggdG8gcG9saXNoIHRoZSBpZGVhIGFyb3VuZCBzb21lIGNvbmNyZXRlIGNvZGUuIA0K
V2hpbGUgSSBjaGVja2VkIHRoYXQgaXQgY29tcGlsZXMsIEkgZGlkbid0IGFkZCBhbnkgdGVz
dHMgYWJvdXQgaXQgb3IgYW55dGhpbmcsIA0KdG8gc2VlIHRoYXQgaXQncyB1c2FibGUgKGFu
ZCBKb3NlcGgncyBlbWFpbCBzaG93ZWQgbWUgdGhhdCBpdCdzIGZhciBmcm9tIGJlaW5nIA0K
ZmluaXNoZWQpLiAgSSBleHBlY3QgdGhhdCB0aGlzJ2xsIHRha2Ugc29tZSB0aW1lLg0KDQoN
Cj4gIFRoaXMgY29uc3RydWN0LCBpbiBwYXJ0aWN1bGFyLCBtaWdodA0KPiBub3QgYWN0dWFs
bHkgYmUgY29ycmVjdCBpbiBwcmFjdGljZTogc2VlIGh0dHBzOi8vZ29kYm9sdC5vcmcvei9y
bjUxY3JhY24gZm9yDQo+IGEgY2FzZSB3aGVyZSwgaWYgSSdtIHJlYWRpbmcgaXQgcmlnaHQs
IHRoZSBjb21waWxlciBhc3N1bWVzIHRoYXQgYSB3cml0ZQ0KPiB0aHJvdWdoIGEgYHN0cnVj
dCBmYW5jeSAqYCBjYW5ub3QgYWx0ZXIgdGhlIHZhbHVlcyBhY2Nlc3NpYmxlIHRocm91Z2gg
YQ0KPiBgc3RydWN0IHNpbXBsZSAqYCBldmVuIHRob3VnaCBib3RoIHBvaW50ZXJzIHBvaW50
IGludG8gdGhlIHNhbWUgdW5pb24uDQo+IChUZXN0IGNhc2UgcHJvdmlkZWQgYnkgPGh0dHBz
Oi8vc3RhY2tvdmVyZmxvdy5jb20vdXNlcnMvMzYzNzUxL3N1cGVyY2F0PjsNCg0KSSBAc3Vw
ZXJjYXQgYXJvdW5kPyAgTWF5YmUgeW91IHdhbnQgdG8gb3BlbiBhIHF1ZXN0aW9uIG9uIFNP
IChvciBDb2RpZGFjdCkgYW5kIA0Kd2UgY2FuIGRpc2N1c3MgaXQgdGhlcmU7IGl0IHdvdWxk
IGJlIGludGVyZXN0aW5nLiAgOikNCg0KQWJvdXQgdGhlIHByb2dyYW0sIEkgaGF2ZSBkb3Vi
dHMuICBJdCdzIG1vcmUgb3IgbGVzcyB3aGF0IEkgYXNrZWQgb24gQ29kaWRhY3QgDQp5ZXN0
ZXJkYXlbMV0uICBJIGNhbid0IGZpbmQgYW55dGhpbmcgaW4gdGhlIHN0YW5kYXJkIHRvIHN1
cHBvcnQgR0NDJ3MgYmVoYXZpb3IsIA0KYW5kIGFtIGluY2xpbmVkIHRvIHRoaW5rIHRoYXQg
aXQncyBhIGNvbXBpbGVyIGJ1Zy4gIEBMdW5kaW4ncyBhbnN3ZXJbMl0gc2VlbXMgDQpyZWFz
b25hYmxlLiAgQnV0IHN0aWxsLCBteSB1bmRlcnN0YW5kaW5nIHVudGlsIHllc3RlcmRheSBz
ZWVtZWQgdG8gYmUgaW4gbGluZSANCndpdGggdGhlIGNvbXBpbGVyIGJlaGF2aW9yIHRoYXQg
eW91IHNob3dlZDogdGhlIGNvbXBpbGVyIHNlZXMgYSBwb2ludGVyIHRvIGEgDQpkaWZmZXJl
bnQgdHlwZSwgYW5kIGFzc3VtZXMgdGhpbmdzLg0KDQpJIGJlbGlldmUgaXQncyBmaW5lIGFj
Y29yZGluZyB0byB0aGUgY29tbW9uIGluaXRpYWwgc2VxdWVuY2UgcnVsZSBpbiANCkMxMTo6
Ni41LjIuMy82IDxodHRwczovL3BvcnQ3MC5uZXQvJTdFbnN6L2MvYzExL24xNTcwLmh0bWwj
Ni41LjIuM3A2Pg0KaW4gY29tYmluYXRpb24gd2l0aCB0aGUgcG9pbnRlciBjb252ZXJzaW9u
IHJ1bGUgaW4gQzExOjo2LjMuMi4zLzcgDQo8aHR0cHM6Ly9wb3J0NzAubmV0LyU3RW5zei9j
L2MxMS9uMTU3MC5odG1sIzYuMy4yLjNwNz4uDQoNClRoZSB0ZXN0IHlvdSBzaG93ZWQgaW4g
Z29kYm9sdCBzaG93cyB0d28gYmVoYXZpb3JzOiBzb21ldGltZXMgaXQgcHJpbnRzIDEvMyAN
Cih0aGlzIGlzIGNvcnJlY3Q7IGl0IGhhcHBlbnMgZm9yIGhpZ2ggdmFsdWVzIG9mIC1PKSBh
bmQgc29tZXRpbWVzIGl0IHByaW50cyAzLzMgDQoodGhpcyBpcyBpbnZhbGlkOyBpdCBoYXBw
ZW5zIGZvciBsb3cgdmFsdWVzIG9mIC1PKS4gIEJUVywgSSdtIGEgYml0IHN1cnByaXNlZCAN
CnRoYXQgR0NDIG9wdGltaXplcyBvdXQgdGhlIGxvY2FsIGluIC1PMCBvciBldmVuIC1PZy4N
Cg0KV2hhdCBJIGd1ZXNzIHRoYXQgR0NDIGlzIGRvaW5nIGluIHRoZSBpbnZhbGlkIGNhc2Ug
aXMgdGhhdCBpbiBtYWluKCkgaXQgc2VlcyANCnRoYXQgbXlUaGluZyBpcyBtb2RpZmllZCBp
biB2dGVzdCgpLCBhbmQgdGhlbiB0aGUgc3RydWN0dXJlIGlzIG9ubHkgdXNlZCB0aHJvdWdo
IA0KYSBwb2ludGVyIHRvIGEgZGlmZmVyZW50IG1lbWJlciwgd2hpY2ggYWNjb3JkaW5nIHRv
IDYuNS4yLjMvNiBpcyBvbmx5IGFsbG93ZWQgDQpmb3IgcmVhZGluZyBidXQgbm90IHdyaXRp
bmcsIHNvIGl0IGFzc3VtZXMgdGhhdCBsb2FkaW5nIHRoZSBzdHJ1Y3R1cmUgYWdhaW4gYXQg
DQpwcmludGYoKSB3aWxsIGJlIGZpbmUsIHNvIGl0IG9wdGltaXplcyBvdXQgdGhlIGxvY2Fs
LiAgSG93ZXZlciwgR0NDIGRpZG4ndCB0YWtlIA0KaW50byBhY2NvdW50IHRoYXQgdGhlIHBv
aW50ZXIgY2FuIGxhdGVyIGJlIGNhc3RlZCBiYWNrIHRvIHRoZSByaWdodCBtZW1iZXIsIGFu
ZCANCnRoYXQgd2F5IGl0J3MgYWxsb3dlZCB0byBtb2RpZnkgaXQsIGFjY29yZGluZyB0byA2
LjMuMi4zLzcuDQoNCkkgaGFkIGRyb3BwZWQgR0NDIGZyb20gdGhlIENDIGluIHRoZSBlbWFp
bCB0byBub3Qgc3BhbSB0aGVtIHRvbyBtdWNoLCBidXQgc2luY2UgDQp0aGlzIGNvbmNlcm5z
IHRoZW0sIEknbGwga2VlcCB0aGVtIGluIHRoZSBsb29wIGZyb20gbm93IG9uLg0KDQoNCg0K
WzFdOiAgPGh0dHBzOi8vc29mdHdhcmUuY29kaWRhY3QuY29tL3Bvc3RzLzI4Nzc0OD4NCg0K
WzJdOiAgPGh0dHBzOi8vc29mdHdhcmUuY29kaWRhY3QuY29tL3Bvc3RzLzI4Nzc0OC8yODc3
NTAjYW5zd2VyLTI4Nzc1MD4NCg0KPiBJIGRvbid0IGtub3cgYW55IG90aGVyIGlkZW50aWZp
ZXIgZm9yIHRoZW0uKQ0KPiANCj4gencNCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCi0tIA0KPGh0
dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------1fDwPwuyRe8dcwi4y7L1Q4VZ--

--------------WWW7pcAgyzLiVIrv01S3B9WE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPK6pgACgkQnowa+77/
2zKIwg/+NdrdSp2dHkGjj9+8q/8UVnhxZC0WLzWjgYlLuW887trlCFctd3C0Uq7C
rQnoN+OfYZ4Eiz1LQoidhuWjgZpoPb9tujd3b6NvGWZw9hPKQPuh2NgOJihRToT1
6q+pAFSTuLCEvOjSG2bixFvwtm5W4Ky6k2leECKaXLbi6oVbcodt90XwhSSA6RNW
oj3zzy47ku41lkTE5w3b7GA5AGczR6TOKUFR0E61J1+gSBvyecSvKI9xoYnHWCxv
uQdzBa9BUKX9oe15dR/k8RLSDbTCRaP3z3Xp2oIv9lGUnGZrcaooz9ZMXXD24xyj
Th8baBfjVnR/oggGO5KL4Ijnkhzn0rtYhIw4bVFRbbeyDUjNZ1dNByYQ2+kLqH2s
90SLVCP1aK4z9k0MdtIoV1KP42OKrXojhEnwfyLCZR4GVAmNyvoid7jxUmVYNMDH
D1HFV4/5nOKPWcOT9x4C6mEly0gAeS3+glwwaqNQOoP2h8vPtzrMYWs9m9K6If3U
WPtDw3XzBay2ihayHlGgdZXT91x1y20bFsM3BAikvI8umGzmqGH3SvGjdcpnO+LX
JolIZ7cnfh63HQAfrGQBQTIF0JmQEVRSFNu1vgwxV9Lavlhy8Wub5BwoIDz6tWn1
FjyqBaM4MEsK8tcFmaUEH/PV/8PL/3l0WqIMymxtLw9hggYt6Ko=
=0rk8
-----END PGP SIGNATURE-----

--------------WWW7pcAgyzLiVIrv01S3B9WE--
