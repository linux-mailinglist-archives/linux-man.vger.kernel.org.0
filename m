Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A89EF5FE579
	for <lists+linux-man@lfdr.de>; Fri, 14 Oct 2022 00:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbiJMWj0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Oct 2022 18:39:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229460AbiJMWjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Oct 2022 18:39:11 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70F301998B8
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 15:38:26 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id b4so5015058wrs.1
        for <linux-man@vger.kernel.org>; Thu, 13 Oct 2022 15:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CMvzrqWZCYxktgSJHR/wy1pqeYCPZjWfAIMLnywtEGU=;
        b=JIilKWf6JnF9C4kpZ+0yg4LN6cTPZJ4B5ndrt2PogTtNrn1hxynYzhZ9KFQ/yyW0uF
         KTQEsxKkCqsG4K9dHC0vmgkTJVTBdxERFNoVl9y4sAd3KoexLEf9W2Y23N31hIPMPR8J
         0PfYxUob6E7wNkZOzgV4ixBLG52Y4J7KZHj3pcEPNj4Ul3TwqEa6bR/+/ZOW8Yja2RLk
         xxB/cuM0M34dMYO2DJDpeCZtTdMSH3/IsOIbX1z0UwW3lsMJmuwb9uLow1CNYk2ra/x8
         Ac/3twNHIRDa8LvgyWiOODbnhfjzli8/Pkiy2ZEqUEekmr7DMyhEHGfZYDZRagg1qS4g
         hj4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CMvzrqWZCYxktgSJHR/wy1pqeYCPZjWfAIMLnywtEGU=;
        b=GOoFSGOhOzg6gsPG94Zj5crjQ25Ba//hQWsddvS+HnBdge1C1yGWE6c+imbsAfcHor
         G/R9P7oR/+vSUYSS30tVuOFJbdHte2TNr6n2DD3sO5soo6kODDqMfp6WHZYnby9aB4Yv
         8o5KoE+iRARZzoLD+U1UUO8ojw5h48XP6Nx4p7B/yCK1PesuaT30UgJ7ZKT64QHfsAA8
         Bx6E4wpWcRmPYhDRPQQDf8tJK8/jrJfPERQtydw5P/gKoCffiHy2ElmOyl7Jln2G4CtS
         wi8MxtiT11NS9kPbwD1K520Xe25yicosPhuiI+dThprvPyAH9kSe0vvirzMnV+UYYO47
         0FDg==
X-Gm-Message-State: ACrzQf2fGSoioVW4BuF+zawZrurIIC0LcKQtaPTfZuZUG7ICGOzafR65
        Lh3a99nZSSYJZEoymq8cy+E=
X-Google-Smtp-Source: AMsMyM79H/40XKH8fftUM3C5nAbgXFyGZZIRArgJXdBT7Nr9oktKdCb3SOR6gYIZIzFD2F4j6BmI+Q==
X-Received: by 2002:a5d:6c62:0:b0:230:55fc:748a with SMTP id r2-20020a5d6c62000000b0023055fc748amr1404438wrz.15.1665700678486;
        Thu, 13 Oct 2022 15:37:58 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id f16-20020a056000129000b0022dc6e76bbdsm551160wrx.46.2022.10.13.15.37.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 15:37:57 -0700 (PDT)
Message-ID: <acdaeed5-5b0e-b799-27b7-b58a08bacbf4@gmail.com>
Date:   Fri, 14 Oct 2022 00:37:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v3 2/2] feature_test_macros.7: document _TIME_BITS
 (time64)
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man@vger.kernel.org
References: <20221013205852.1551042-1-sam@gentoo.org>
 <20221013205852.1551042-2-sam@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221013205852.1551042-2-sam@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WC79KT924bsq7s2zz6xMwCNZ"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WC79KT924bsq7s2zz6xMwCNZ
Content-Type: multipart/mixed; boundary="------------ADlrLO0tMZ69ehjetI19ULDn";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man@vger.kernel.org
Message-ID: <acdaeed5-5b0e-b799-27b7-b58a08bacbf4@gmail.com>
Subject: Re: [PATCH v3 2/2] feature_test_macros.7: document _TIME_BITS
 (time64)
References: <20221013205852.1551042-1-sam@gentoo.org>
 <20221013205852.1551042-2-sam@gentoo.org>
In-Reply-To: <20221013205852.1551042-2-sam@gentoo.org>

--------------ADlrLO0tMZ69ehjetI19ULDn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMTMvMjIgMjI6NTgsIFNhbSBKYW1lcyB3cm90ZToNCj4gU29tZSBub3RlczoNCj4g
KiBnbGliYyBpcyB0aGUgb25seSBsaWJjIEknbSBhd2FyZSBvZiBpbXBsZW1lbnRpbmcgX1RJ
TUVfQklUUyBmb3IgdGltZTY0DQo+IGNvbXBhdGliaWxpdHkuIEl0IHdhcyBpbnRyb2R1Y2Vk
IGluIGdsaWJjLTIuMzQ7DQo+IA0KPiAqIG11c2wgbGliYyBtYWRlIGEgaGFyZCBzd2l0Y2gg
aW4gMS4yLjAsIHNlZSBodHRwczovL211c2wubGliYy5vcmcvdGltZTY0Lmh0bWw7DQo+IA0K
PiAqIFVzaW5nIF9USU1FX0JJVFM9NjQgd2l0aCBnbGliYyByZXF1aXJlcyBfRklMRV9PRkZT
RVRfQklUUz02NCAod2hpY2ggaXMgdXNlZA0KPiBmb3IgTGFyZ2UgRmlsZSBTdXBwb3J0KSEg
RXh0cmFvcmRpbmFyeSBjbGFpbXMgcmVxdWlyZSAoc29tZSkgZXZpZGVuY2UsIHNvIHNlZQ0K
PiBodHRwczovL3NvdXJjZXdhcmUub3JnL2dpdC8/cD1nbGliYy5naXQ7YT1ibG9iO2Y9c3lz
ZGVwcy91bml4L3N5c3YvbGludXgvZmVhdHVyZXMtdGltZTY0Lmg7aD04NGQ1NmVlM2ZmMmVj
ZmEwZDI0OTkzODU2MjNmMzA2MDZmODRhMWJmLg0KPiANCj4gUmVmZXJlbmNlOiBodHRwczov
L3dpa2kuZ2VudG9vLm9yZy93aWtpL1Byb2plY3Q6VG9vbGNoYWluL3RpbWU2NF9taWdyYXRp
b24NCj4gUmVmZXJlbmNlOiBodHRwczovL3NvdXJjZXdhcmUub3JnL3BpcGVybWFpbC9saWJj
LWFscGhhLzIwMjItSmFudWFyeS8xMzQ5ODUuaHRtbA0KPiBTaWduZWQtb2ZmLWJ5OiBTYW0g
SmFtZXMgPHNhbUBnZW50b28ub3JnPg0KDQpQYXRjaCBhcHBsaWVkLg0KDQpUaGFua3MsDQpB
bGV4DQoNCj4gLS0tDQo+ICAgbWFuNy9mZWF0dXJlX3Rlc3RfbWFjcm9zLjcgfCAxNSArKysr
KysrKysrKysrKysNCj4gICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43IGIvbWFuNy9mZWF0
dXJlX3Rlc3RfbWFjcm9zLjcNCj4gaW5kZXggY2RkOTYyZjdmLi5iY2Q2ZTZhZTkgMTAwNjQ0
DQo+IC0tLSBhL21hbjcvZmVhdHVyZV90ZXN0X21hY3Jvcy43DQo+ICsrKyBiL21hbjcvZmVh
dHVyZV90ZXN0X21hY3Jvcy43DQo+IEBAIC00MTIsNiArNDEyLDE3IEBAIGxhcmdlIGZpbGVz
IHdpdGggb25seSBhIHJlY29tcGlsYXRpb24gYmVpbmcgcmVxdWlyZWQuKQ0KPiAgIDY0LWJp
dCBzeXN0ZW1zIG5hdHVyYWxseSBwZXJtaXQgZmlsZSBzaXplcyBncmVhdGVyIHRoYW4gMiBH
aWdhYnl0ZXMsDQo+ICAgYW5kIG9uIHRob3NlIHN5c3RlbXMgdGhpcyBtYWNybyBoYXMgbm8g
ZWZmZWN0Lg0KPiAgIC5UUA0KPiArLkIgX1RJTUVfQklUUw0KPiArRGVmaW5pbmcgdGhpcyBt
YWNybyB3aXRoIHRoZSB2YWx1ZSA2NA0KPiArY2hhbmdlcyB0aGUgd2lkdGggb2YNCj4gKy5C
UiB0aW1lX3QgKDN0eXBlKQ0KPiArdG8gNjQtYml0IHdoaWNoIGFsbG93cyBoYW5kbGluZyBv
ZiB0aW1lc3RhbXBzIGJleW9uZA0KPiArMjAzOC4NCj4gK0l0IGlzIGNsb3NlbHkgcmVsYXRl
ZCB0bw0KPiArLkIgX0ZJTEVfT0ZGU0VUX0JJVFMNCj4gK2FuZCBkZXBlbmRpbmcgb24gaW1w
bGVtZW50YXRpb24sIG1heSByZXF1aXJlIGl0IHNldC4NCj4gK1RoaXMgbWFjcm8gaXMgYXZh
aWxhYmxlIGFzIG9mIGdsaWJjIDIuMzQuDQo+ICsuVFANCj4gICAuQlIgX0JTRF9TT1VSQ0Ug
IiAoZGVwcmVjYXRlZCBzaW5jZSBnbGliYyAyLjIwKSINCj4gICBEZWZpbmluZyB0aGlzIG1h
Y3JvIHdpdGggYW55IHZhbHVlIGNhdXNlcyBoZWFkZXIgZmlsZXMgdG8gZXhwb3NlDQo+ICAg
QlNELWRlcml2ZWQgZGVmaW5pdGlvbnMuDQo+IEBAIC04NTQsNiArODY1LDEwIEBAIG1haW4o
aW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkNCj4gICAgICAgcHJpbnRmKCJfRklMRV9PRkZTRVRf
QklUUyBkZWZpbmVkOiAlZFxlbiIsIF9GSUxFX09GRlNFVF9CSVRTKTsNCj4gICAjZW5kaWYN
Cj4gICANCj4gKyNpZmRlZiBfVElNRV9CSVRTDQo+ICsgICAgcHJpbnRmKCJfVElNRV9CSVRT
IGRlZmluZWQ6ICVkXGVuIiwgX1RJTUVfQklUUyk7DQo+ICsjZW5kaWYNCj4gKw0KPiAgICNp
ZmRlZiBfQlNEX1NPVVJDRQ0KPiAgICAgICBwcmludGYoIl9CU0RfU09VUkNFIGRlZmluZWRc
ZW4iKTsNCj4gICAjZW5kaWYNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21h
ci5lcy8+DQo=

--------------ADlrLO0tMZ69ehjetI19ULDn--

--------------WC79KT924bsq7s2zz6xMwCNZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmNIkz0ACgkQnowa+77/
2zKWgg//cVwPfpgEgJtV6iYGKRojK5+FBRUndMwov9YyRwOmx6hRWiSCE0sWgMYs
olqO7JGn3mXdJdpNNbg8omxranOQh+0nKUrm9hJt2sLeBkzUBLiidFRRhjANkMWX
4FCa/EJ16Uhp7Dj1DYvIYuyJ9qaBLvo2L21TkKE+4jPmMccR80B5hGaFLwm6OfFh
XtYdCngQZNtLk6x3HE+WaN4lPPAzJmS1FtoImbsNfltR/vaxx/9pUp8qj9YWvnS2
Ac3w9/VkP1sXYW5yOgAEeto/5z5apszYbSfW5jjlyRpC5hEdTAoUQYbrMFVYbhE1
qLZIfosh0XTgaIu9esCcDdPx+3yeG+ffiJRtu1RRn6LZOfaiBaDx8Bntp5VOVmK+
HAiQXpjOOopeDmIz1nhLELsN0ZOjh24swBnjRoGgB0M6/JRXZAO/ReEzkexrbnQm
PINU/tkvkv8m/nCwBRs21je37RfKprg7nz77Q8fuwwhvWESVkEtFteZ2i4zVBW+k
H6+gPHHY+hWi1bYAn8o6mWJVdLbSZ1l10Nq7Ipib8rKDHO8iPc1sMQJdTt1wMncB
fIP0Trg1NUs3aExjICoPqTzQF6JNRJBnRRmjHdnsomv+nzL54G8F9fxoOy3rc1EC
fmKBFh2hTZGBJTvyuMuSld5XwgjK8QseO9nTQfDxy415WHo8t0Y=
=21+2
-----END PGP SIGNATURE-----

--------------WC79KT924bsq7s2zz6xMwCNZ--
