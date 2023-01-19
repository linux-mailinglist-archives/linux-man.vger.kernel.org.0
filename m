Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E49F67444E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jan 2023 22:26:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229816AbjASV0e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Jan 2023 16:26:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230331AbjASVYh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Jan 2023 16:24:37 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52C6DFE
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 13:19:59 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id q10so3132089wrs.2
        for <linux-man@vger.kernel.org>; Thu, 19 Jan 2023 13:19:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ppuy07AojEL6U3HHC/BYV2mUGvXlhLrUAdqDfWNgaUA=;
        b=bjXtoe+nwZi56/fTh2P930TGD1tOcobfPmpvP+JRsibrmc+53TuZ3fEC+U+UdhO8Kj
         Tqo0JZ0lE2YtdNpfwiSmLHIGcKPS11MRr+UsCj2RS1ZXOp1n7NuBg4wbFlhK+iCI6yC4
         qw9u+frn1dvP22fq41ZNyzCufbeU9KYMVC/s7sSvfMSz6qs12HQmTbMAUZ1l4wQVAtS5
         cU5dpQSXsvs7W/p8dD4bNnF4rSEx2/7LyNC3cPKChH6RviossMSBmeWL3fSWkVHck02s
         mTWqNZNW0NBvCx+Bl46ICdJariBLCv5rjbUKTr9MvKaXbFn5x/rJfGG+fzNijOOwZCRE
         FYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ppuy07AojEL6U3HHC/BYV2mUGvXlhLrUAdqDfWNgaUA=;
        b=XwLN0MsAkUI3p9P+2ZxrWHD0QMzC+ze+BEmJF9tYRIo3LX7wwgEFirJDHQ/Eu9qC9r
         mh2DBz8/ZPxVD5tPE54QykjVzrI9JWMmvjjVWSXXtJM2hYgyCMn7mgBCdNa0Hv68+Fws
         GW0kF5UXvlyZeMv6zaJ7O4rjnPPuzxeoFpPctT4aYIP/WDaFPamUH63g2Ke+KHVfJDic
         D44qCpjnhycIJRqHmgyeqe72rWUOQfRvXl7GKIIPTih0CLK5Ale0q5kYDPlhoPgIABKJ
         k3eeZCwlYy/TY+2ja6B+LcsTqK3Rcp9ENIj3XF/nlRGVqDUZe0YLVPKnStoB9vbHR8nn
         TbaQ==
X-Gm-Message-State: AFqh2kofeD3lOc5g269U5ggI5J6LRadswREC3Xd05v2QtPs/gcGsurqH
        jmI19lhRYBZC1KlDYltSStolAHIG3Ok=
X-Google-Smtp-Source: AMrXdXuT6XEB34Y03xAEDm+IyKw+itvgu8ukqo392fa5sfVy/25L4zQNbwJ6BcEIkHhptpSLzoreSg==
X-Received: by 2002:a5d:6505:0:b0:2bd:dba2:c17e with SMTP id x5-20020a5d6505000000b002bddba2c17emr10981938wru.12.1674163197794;
        Thu, 19 Jan 2023 13:19:57 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q17-20020adff511000000b002366553eca7sm12069312wro.83.2023.01.19.13.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jan 2023 13:19:57 -0800 (PST)
Message-ID: <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
Date:   Thu, 19 Jan 2023 22:19:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
Content-Language: en-US
To:     =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
        GNU C Library <libc-alpha@sourceware.org>
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <2860541.uBSZ6KuyZf@portable-bastien>
 <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
 <3299211.1eNo6cvScQ@portable-bastien>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <3299211.1eNo6cvScQ@portable-bastien>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------07zLSFR6doU07lwYUIllYZNi"
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
--------------07zLSFR6doU07lwYUIllYZNi
Content-Type: multipart/mixed; boundary="------------wun0OV5PAQ0UXgv87c95m5ui";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 eblake <eblake@redhat.com>, Zack Weinberg <zack@owlfolio.org>,
 GNU C Library <libc-alpha@sourceware.org>
Message-ID: <b709c21f-2553-8679-fde9-49d7400ca4ca@gmail.com>
Subject: Re: struct sockaddr_storage, union (was: Improve getsockname)
References: <2889739.XEG2VLDMQ1@portable-bastien>
 <2860541.uBSZ6KuyZf@portable-bastien>
 <0fdb2d61-db2d-d85c-35e4-ce32b2f36269@gmail.com>
 <3299211.1eNo6cvScQ@portable-bastien>
In-Reply-To: <3299211.1eNo6cvScQ@portable-bastien>

--------------wun0OV5PAQ0UXgv87c95m5ui
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEvMTkvMjMgMjI6MDAsIEJhc3RpZW4gUm91Y2FyacOocyB3cm90ZToNClsuLi5d
DQoNCj4+IDxodHRwczovL2luYm94LnNvdXJjZXdhcmUub3JnL2xpYmMtYWxwaGEvMGYyNWQ2
MGYtZjE4My1iNTE4LWI2YzEtNmQ0NmFhNjNlZTU3QGdtYWlsLmNvbS9ULz4NCj4gDQo+IEkg
ZG8gbm90IGJlbGlldmUgaXQgaXMgYnJva2VuIGJ5IGRlc2lnbi4gSXQgc2hvdWxkIGJlIHVz
ZWQgd2l0aCBjYXJlIGFuZCB3YXJuaW5nLg0KPiANCj4gQlRXIGlmIHdlIGdvIHRvIHRoZSBh
bm9ueW1vdXMgdW5pb24gd2F5IGNvdWxkIHdlIGFkZCBhdCB0aGUgZW5kIGEgX251bGxfcmVz
ZXJ2ZWRfZmllbGQuIEl0IHdpbGwgaGVscCBmb3IgdW5peCBzb2NrZXQgYW5kIHRoZSBpbmZh
bW91cyBzdW5fcGF0aCBjb3VsZCBub3QgZW5kIHdpdGggbnVsbC4uLg0KPiBNYXkgYmUgaXQg
aXMgdG9vIGxhdGUgZnJvbSBhbiBBQkkgcG9pbnQgb2YgdmlldywgYnV0IGZvciBtZSB0aGUg
cG9zaXggY29udHJhY3QgZnJvbSBhbiBBQkkgcG9pbnQgb2YgdmlldyBpcyB0aGF0IEkgc2Fp
ZCBpbiB0aGUgbm90ZSAgc29ja2FkZHJfc3RvcmFnZSAgY291bGQgZ3JvdyBidXQgbm90IGJl
IHJlZHVjZWQuDQoNClllcywgbWFueSB0eXBlcyBoYXZlIHNlZW4gc3VjaCBhZGRpdGlvbnMg
YXQgdGhlIGVuZCBvZiBpdCBvdmVyIHRpbWUuICBJbiB0aGUgDQpMaW51eCBtYW4tcGFnZXMs
IEkgdHJ5IHRvIGRvY3VtZW50IGFsbCBzdHJ1Y3R1cmVzIGFzICJoYXZpbmcgYXQgbGVhc3Qg
dGhlc2UgDQptZW1iZXJzIiwgYnV0IG1heSBncm93IG92ZXIgdGltZS4NCg0KPiANCj4gICBz
dHJ1Y3Qgc29ja2FkZHJfc3RvcmFnZSB7DQo+IAl1bmlvbiB7DQo+ICAgCQlzYV9mYW1pbHlf
dCAgICAgICAgICBzc19mYW1pbHk7DQo+ICAgCQlzdHJ1Y3Qgc29ja2FkZHIgICAgICBzYTsN
Cj4gICAJCXN0cnVjdCBzb2NrYWRkcl9pbiAgIHNpbjsNCj4gICAJCXN0cnVjdCBzb2NrYWRk
cl9pbjYgIHNpbjY7DQo+ICAgCQlzdHJ1Y3Qgc29ja2FkZHJfdW4gICBzdW47DQo+ICAgCX07
DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGNoYXIgX19yZXNlcnZlZF9udWxsOw0KDQpT
dWNoIGEgZmllbGQgd291bGQgbWFrZSBzZW5zZS4gIEluIGZhY3QsIEkgYmVsaWV2ZSB0aGUg
TGludXggaW50ZXJuYWwgDQppbXBsZW1lbnRhdGlvbiBvZiBfdW4gbXVzdCBoYXZlIHNvbWV0
aGluZyBzaW1pbGFyLCBzaW5jZSBpdCBlbnN1cmVzIA0KbnVsbC10ZXJtaW5hdGlvbiBldmVu
IGlmIHRoZSB1c2VyIHBhc3NlcyBhIG5vbi10ZXJtaW5hdGVkIHN0cmluZywgSUlSQy4NCg0K
PiAgIH07DQo+IA0KWy4uLl0NCg0KPj4gVGhpcyBpcyBjb21wYXRpYmxlOg0KPj4NCj4+IC0g
IEl0IGhhZCBhdCBsZWFzdCB0aGUgYHNzX2ZhbWlseWAgZmllbGQuICBJdCdzIHN0aWxsIHRo
ZXJlLCBhdCB0aGUgc2FtZSBiaW5hcnkNCj4+IGxvY2F0aW9uLg0KPj4gLSAgSXQgaGFzIGEg
c2l6ZSBhdCBsZWFzdCBhcyBsYXJnZSBhcyBhbnkgb3RoZXIgc29ja2FkZHJfKiBzdHJ1Y3R1
cmUsIGFuZCBhDQo+PiBzdWl0YWJsZSBhbGlnbm1lbnQuDQo+PiAtICBPbGQgY29kZSBzdGls
bCB3b3JrcyB3aXRoIGl0IGp1c3QgZmluZS4NCj4+IC0gIE5ldyBjb2RlIHdpbGwgYmUgYWJs
ZSB0byBhdm9pZCBVQiwgYW5kIGFsbCBjYXN0cywganVzdCBieSBhY2Nlc3NpbmcgdGhlIHJp
Z2h0DQo+PiBzdHJ1Y3R1cmUgZWxlbWVudC4NCj4+IC0gIEl0J3MgdHJpdmlhbCB0byB0ZXN0
IGF0IGNvbmZpZ3VyZSB0aW1lIGlmIHRoZSBpbXBsZW1lbnRhdGlvbiBwcm92aWRlcyB0aGlz
DQo+PiBuZXcgZGVmaW5pdGlvbiBvZiB0aGUgc3RydWN0dXJlLg0KPiANCj4gSSBhZ3JlZSBJ
IGNvdWxkIGV2ZW4gYWRkIGEgbWFjcm8gZm9yIGF1dG9jb25mLWFyY2hpdmUgKEkgYW0gdXBz
dHJlYW0pIGFuZCBwb3N0IGEgcGF0Y2ggZm9yIGdudWxpYi4NCg0KTmljZTsgc2luY2UgaXQn
cyBiYWNrd2FyZHMgY29tcGF0aWJsZSwgSSdsbCAocHJvYmFibHkpIHN1Z2dlc3QgYSBwYXRj
aCBmb3IgZ2xpYmMuDQoNCj4gDQo+Pj4+DQo+Pj4+PiArLkkgc29ja2FkZHJfc3RvcmFnZQ0K
Pj4+Pj4gK3N0cnVjdHVyZSBpcyBsYXJnZSBlbm91Z2ggdG8gaG9sZCBhbnkgb2YgdGhlIG90
aGVyDQo+Pj4+PiArLkkgc29ja2FkZHJfKg0KPj4+Pj4gK3ZhcmlhbnRzIGFuZCBhbHdheXMg
d2VsbCBhbGlnbmVkLiBPbiByZXR1cm4sIGl0IHNob3VsZCBiZSBjYXN0IHRvIHRoZSBjb3Jy
ZWN0DQo+Pj4+PiArLkkgc29ja2FkZHJfKg0KPj4+Pg0KPj4+PiBUaGUgZmFjdCB0aGF0IGl0
IGlzIGNvcnJlY3RseSBhbGlnbmVkLCBhbmQgYSBjYXN0IHdpbGwgd29yayBtb3N0IG9mIHRo
ZSB0aW1lLA0KPj4+PiBpc24ndCBlbm91Z2ggZm9yIHN0cmljdCBhbGlhc2luZyBydWxlcy4g
IFRoZSBjb21waWxlciBpcyBmcmVlIHRvIGFzc3VtZSB0aGluZ3MsDQo+Pj4+IGp1c3QgYnkg
dGhlIGZhY3QgdGhhdCBpdCdzIGEgZGlmZmVyZW50IHR5cGUuDQo+Pj4NCj4+PiBPayBhbnkg
aWRlYSBmb3Igd3JpdGluZyB0aGlzIGtpbmQgb2Ygc3R1ZmYNCj4+DQo+PiBJJ20gdGhpbmtp
bmcgYWJvdXQgd3JpdGluZyBzb21ldGhpbmcgdG8gc2V2ZXJhbCBwYWdlczsgd2lsbCBrZWVw
IHlvdSBhbGwgdXBkYXRlZA0KPj4gb24gaW1wb3J0YW50IGNoYW5nZXMgdG8gdGhlIHBhZ2Vz
Lg0KPiANCj4gUGxlYXNlIGV4Y2hhbmdlIHdpdGggbWUuLi4gSXQgaXMgcmVhbGx5IGEgcGl0
ZmZhbGwgZm9yIG15IHN0dWRlbnQsIHNvIEkgY291bGQgaGVscCBoZXJlLg0KDQpTdXJlLiAg
V2lsbCBkby4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCj4gDQo+IEJhc3RpZW4NCj4+DQo+Pg0K
Pj4gQ2hlZXJzLA0KPj4NCj4+IEFsZXgNCj4+DQo+PiAtLSANCj4+IDxodHRwOi8vd3d3LmFs
ZWphbmRyby1jb2xvbWFyLmVzLz4NCj4+DQo+IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWph
bmRyby1jb2xvbWFyLmVzLz4NCg==

--------------wun0OV5PAQ0UXgv87c95m5ui--

--------------07zLSFR6doU07lwYUIllYZNi
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPJs/UACgkQnowa+77/
2zKTvBAAmZC2Fslls03ne5tpIK2Tnjb6uu3I5pIPqvzSMGjayRRenDaE86sP9z5p
vymTWtM4bBpbLqWXOzou1VjdzcNy/600SN3ELq1WV2TMa3sTwIJXyhiALrzAZUC3
z5uYO+Dk2WeTqrENSA+8VJ+EiImy1o1qS+HuevAsHHcRkQ/OpM+DNzb5xAj6DSGG
Ko3NJmwIV685//vFmtJLG5KUCzQUYFKnNBka5ddN6sAGub+cPzsuMm2IglRCGHOV
OqHkxMwUpkQ1UKtnkfiFZ+ifk3orBKojGK5g0R6dDj0nLz7wXAh3bkfU61pqkjXD
GKILMoA9rMnF0BqgzGGkvFAEXk1+WWN2mq7fJ1WZ00Ahm4A0wvv8vAq0TZNAtPBR
pbKH8jc9tMCsFgnj9/BSDOpBb0ObmEPrsl3Lqc/uaF6JxzFvxw3W6ZbiT9KL0gIi
HgWBhPnvxRBX6VcqFYJS+9MfZPBiy+Cr7BK1CT3Wvvk0T2CMCdcqNTfRsMWjIsop
t7xySorHpMdYibYHtuoqBxf3Xfctz4FQq6c5f6PVwhFYbjRzow8cEcCEKr7P7g8X
tWfUSxagMh4jZokYfOTkQVcPwvkluiwPS7xws8AFiaGg8EGGfM+nufK+FsQYHb1r
QvztjmDGpkK/IXiuVsH5R7omEULVoCGBhIrtQtu9JxAgNSm0gww=
=z5uq
-----END PGP SIGNATURE-----

--------------07zLSFR6doU07lwYUIllYZNi--
