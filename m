Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AA2063C670
	for <lists+linux-man@lfdr.de>; Tue, 29 Nov 2022 18:29:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236620AbiK2R3q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Nov 2022 12:29:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236607AbiK2R3l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Nov 2022 12:29:41 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0807F5F84B
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:29:41 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id x17so23228312wrn.6
        for <linux-man@vger.kernel.org>; Tue, 29 Nov 2022 09:29:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLM4s2MKiev9sXMPIVvSuvRrfh95O1Xid1KIwqZhTWo=;
        b=PnqL6i7c/ruBdrdf/qLt4xIm1WeBqOgh/tw6ijrpI6igwLGc7b/4q+qwpT7SPgVax0
         fdoI0d/bDuMv9Edz2QDaZLeBBSoTj9X5SIrm/MTIjQObXB6UdrcBDBseZx8uXvb1NQSA
         pqKsD1CHWIwg2RsK9u88VOThi91EraLD/8Au+KFOycChDZSaKPWcyMaD+Thz6I/MjgQ1
         XCj4FX9yFf5BsNzsSkeHPdWoKzbUUw40PtSlCjaAyGtAbhwCHz//fLzS/VTj3z7KzEcF
         PtL6AK5lU9arM57mEmUR4Nw5rFREXNIpYNFenL08jw0Qmelzv1ecQ4bbBAXkbo/jSiOB
         uGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NLM4s2MKiev9sXMPIVvSuvRrfh95O1Xid1KIwqZhTWo=;
        b=mga3Jq/sT0TDdQEZnICgr7K/5G3K3fl4rI/QPr6gK19bN1ZffLO8EG3PaJn2MiUBXs
         8WPvv+kjzzRduDgZQ9lXoJJOVylKvUUlh8gPGwq043Hyt23Zv19QRbpwlbf6GohvI8lU
         dZ32jT5SDzjar7rYlMkSfF8iZ6eGJOCiTzlv1ViqwLmaVPYBDtpT1X15+WFna36M9RK/
         r93pNGwbHg2JvQODxEf4N8bH7vPdJIiPkki8KzWnQ9cozOYNVwLa5Qrry9bcS5rcL7jv
         v7Xqe8+lsjR/0jU9G/PbaH3KtT5Db/DXmJLS5dV01kmrSRLQ53bEbUnX3Slt0hxhl7dx
         xUJQ==
X-Gm-Message-State: ANoB5pn9JquGW/vBpdU/DEciav29Y1MXA/mH8drMklp+n2XY2OVssYxp
        nAZcz3Q5i1A8a0Wzve4S5mA=
X-Google-Smtp-Source: AA0mqf5N8QpTW4UF6K2ckg6yO+VVBCAbXLyhiOQuwwGvvSg0Lqmqn9AuS+l+xcvX+OqIymW/L76vTw==
X-Received: by 2002:a5d:4404:0:b0:236:657e:757e with SMTP id z4-20020a5d4404000000b00236657e757emr27824100wrq.350.1669742979597;
        Tue, 29 Nov 2022 09:29:39 -0800 (PST)
Received: from [192.168.43.80] ([46.222.52.112])
        by smtp.gmail.com with ESMTPSA id f11-20020a05600c154b00b003c6f3e5ba42sm3159186wmg.46.2022.11.29.09.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 09:29:39 -0800 (PST)
Message-ID: <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
Date:   Tue, 29 Nov 2022 18:29:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Content-Language: en-US
From:   Alex Colomar <alx.manpages@gmail.com>
To:     Martin Uecker <uecker@tugraz.at>,
        Jonathan Wakely <jwakely.gcc@gmail.com>,
        Joseph Myers <joseph@codesourcery.com>
Cc:     Michael Matz <matz@suse.de>, Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
In-Reply-To: <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2olXNq31yvcg8kDiCo2UApzb"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2olXNq31yvcg8kDiCo2UApzb
Content-Type: multipart/mixed; boundary="------------GzicKAdUYx50iM0b0r8QgFSI";
 protected-headers="v1"
From: Alex Colomar <alx.manpages@gmail.com>
To: Martin Uecker <uecker@tugraz.at>, Jonathan Wakely
 <jwakely.gcc@gmail.com>, Joseph Myers <joseph@codesourcery.com>
Cc: Michael Matz <matz@suse.de>, Ingo Schwarze <schwarze@usta.de>,
 JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
 gcc@gcc.gnu.org
Message-ID: <9fc8d4ea-607b-8a3d-490d-4b5662b677bc@gmail.com>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <76c083af-c01f-a4b2-3df-c83075c6b0de@codesourcery.com>
 <ab605ae5d4c89a453a433717c2e5fe0134e90803.camel@tugraz.at>
 <75c352c-e8b5-90d0-5fae-7b211c647934@codesourcery.com>
 <68746776-87bf-80f9-8e3e-7392e8cef1bb@gmail.com>
 <77c3557f-4a62-3ede-4df4-4b2b78e265b1@codesourcery.com>
 <a1606206-294d-8f7d-eb1d-e8ffe7d3212c@gmail.com>
 <5ae032cd-7a5f-f72b-29ae-6ad7f418da8@codesourcery.com>
 <ceb7e51c8f01cb3c7069f3212a7e86e4b10e320d.camel@tugraz.at>
 <7931044a-b707-5a70-86c2-be298c35aa57@gmail.com>
 <792055f0-114d-d4bc-52f0-c242d1767c0b@gmail.com>
 <31e1cf34-b42f-24c5-2109-f8214c28af3e@gmail.com>
 <b78e43af88ccd2443363e88e8e2be3d1a4d75312.camel@tugraz.at>
 <494309ce-c8ec-5219-f83e-b8dda5b9bcd1@gmail.com>
 <alpine.LSU.2.20.2211291450280.24878@wotan.suse.de>
 <dd877a1-9eb4-28e-eccc-b663f5ce7df4@codesourcery.com>
 <CAH6eHdRy3dsEb9Ta=jUKVUfROOgLgQ5BdPukgRRaPS6yyHczJw@mail.gmail.com>
 <8aeb958eee2e084ea34d027878428a59a77b196d.camel@tugraz.at>
 <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>
In-Reply-To: <457bac3a-b83a-fe97-c5e1-f4efd2376821@gmail.com>

--------------GzicKAdUYx50iM0b0r8QgFSI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTEvMjkvMjIgMTg6MTksIEFsZXggQ29sb21hciB3cm90ZToNCj4gSGkgTWFydGluLCBK
b3NlcGgsDQo+IA0KPiBPbiAxMS8yOS8yMiAxODowMCwgTWFydGluIFVlY2tlciB3cm90ZToN
Cj4+IEFtIERpZW5zdGFnLCBkZW0gMjkuMTEuMjAyMiB1bSAxNjo1MyArMDAwMCBzY2hyaWVi
IEpvbmF0aGFuIFdha2VseToNCj4+PiBPbiBUdWUsIDI5IE5vdiAyMDIyIGF0IDE2OjQ5LCBK
b3NlcGggTXllcnMgd3JvdGU6DQo+Pj4+DQo+Pj4+IE9uIFR1ZSwgMjkgTm92IDIwMjIsIE1p
Y2hhZWwgTWF0eiB2aWEgR2NjIHdyb3RlOg0KPj4+Pg0KPj4+Pj4gbGlrZS7CoCBCdXQgSSdt
IGdlbmVyYWxseSBkb3VidGZ1bCBvZiB0aGlzIHdob2xlIGZlYXR1cmUgd2l0aGluIEMNCj4+
Pj4+IGl0c2VsZi4NCj4+Pj4+IEl0IHNlcnZlcyBhIHB1cnBvc2UgaW4gZG9jdW1lbnRhdGlv
biwgc28gaW4gbWFuLXBhZ2VzIGl0IHNlZW1zDQo+Pj4+PiBmaW5lIGVub3VnaA0KPj4+Pj4g
KGJ1dCB0aGVuIHN0aWxsIGNvdWxkIHVzZSBhIGRpZmZlcmVudCBwdW5jdWF0b3IgdG8gbm90
IGJlDQo+Pj4+PiBjb25mdXNhYmxlIHdpdGgNCj4+Pj4+IEMgc3ludGF4KS4NCj4+Pj4NCj4+
Pj4gSW4gbWFuLXBhZ2VzIHlvdSBkb24ndCBuZWVkIHRvIGludmVudCBzeW50YXggYXQgYWxs
LsKgIFlvdSBjYW4gd3JpdGUNCj4+Pj4NCj4+Pj4gaW50IGYoY2hhciBidWZbbl0sIGludCBu
KTsNCj4+Pj4NCj4+Pj4gYW5kIGluIHRoZSBjb250ZXh0IG9mIGEgbWFuIHBhZ2UgaXQgd2ls
bCBiZSBjbGVhciB0byByZWFkZXJzIHdoYXQNCj4+Pj4gaXMNCj4+Pj4gbWVhbnQsDQo+Pj4N
Cj4+PiBDb25zaWRlcmFibHkgbW9yZSBjbGVhciB0aGFuIG5ldyBpbnZlbnRlZCBzeW50YXgg
SU1ITy4NCj4+DQo+PiBUcnVlLCBidXQgSSB0aGluayBpdCB3b3VsZCBiZSBhIG1pc3Rha2Ug
dG8gdXNlIGNvZGUgaW4NCj4+IG1hbiBwYWdlcyB3aGljaCB0aGVuIGRvZXMgbm90IHdvcmsg
YXMgZXhwZWN0ZWQgKG9yIGV2ZW4NCj4+IGlzIHN1YnRsZSB3cm9uZykgaW4gYWN0dWFsIGNv
ZGUuDQo+IA0KPiBFeGFjdGx5LsKgIFVzaW5nIHlvdXINCg0Kcy95b3VyL0pvc2VwaCdzLw0K
DQo+IHByb3Bvc2VkIHN5bnRheCAod2hpY2ggd2FzIG15IGZpcnN0IGRyYWZ0KSB3b3VsZCAN
Cj4gaGF2ZSBwcm9iYWJseSBiZWVuIHRoZSBzb3VyY2Ugb2YgaGlkZGVuIGJ1Z3MsIHNpbmNl
IGl0IG1pZ2h0IHdvcmsgKHJlYWQgDQo+IGNvbXBpbGUpIGluIHNvbWUgY2FzZXMsIGJ1dCB3
aXRoIHdyb25nIHJlc3VsdHMuDQo+IA0KPiBJIHByZWZlciB0aGlzIGh5cG90aGV0aWNhbCBz
eW50YXgsIHdoaWNoIGF0IG1vc3Qgd2lsbCBjYXVzZSBjb21waWxlIGVycm9ycy4NCj4gDQo+
IENoZWVycywNCj4gDQo+IEFsZXgNCj4gDQo+Pg0KPj4gTWFydGluDQo+Pg0KPj4NCj4+DQo+
IA0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg0K

--------------GzicKAdUYx50iM0b0r8QgFSI--

--------------2olXNq31yvcg8kDiCo2UApzb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOGQYEACgkQnowa+77/
2zLi6Q//cFnfuvcOf9lUa7i9PQ3Nth8BeZqSj+cAcwc69diGfI3aAXs9JEFryyoh
Rf0KRuL0Ta4vymrE8bTX204H5anvVGDbJu0xs1+k25k7IOqFcCUoVtBEbFY3L9ac
H15tMauGkOg/0tr60PIdzMo9nqjuzGnHiF+XQ+C7JK9gpDN3nag086HkEFxSK5Zu
2fPy32Zvl2dyLbmZZTpWzaS45ZkTh9C54NVvyCkNfcIlkDZXSf4odFl+T5tjYvz6
5PGLtkZI+OHa+T0EpId4Scw5L/YX7lmhLzvMAGBV80mECm3O9vVmIyVJooQ43zB5
BIJ6LxO/MMdNV09T3fp/oatp6FIHZcydKyK2PMqXWOYlw1bY0nAkXn0Gv56sqCq8
bN5l60CCEEtR2flJrUBtIz3vNWDrFlVnsehiI0nao1Azl2KB5S0srqEs/MKCHLFm
EBNzPqkus8As6REUoUuSG6X7Zts9xM4dWrnb8HoCuyLI0I8v+/lTHKeHpPQvQSE1
bsyt5SYJiU8R/Av4CD+CDoyUCgqApzVxNF1ysJRyP2nlM7YVgMEEfsbOIF+Ssq0O
Vae6i/RJf8gwzpxAcSmr9PESc/2o7W19UFMpqheAxrtO/leE0wJC9A0Uyp/uXf/I
I+OHpU9T9oqkidPr2O8c3i5S538fkQr+9/RNlMvAzBcU3nYIANg=
=7Bis
-----END PGP SIGNATURE-----

--------------2olXNq31yvcg8kDiCo2UApzb--
