Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A4176369E5
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 20:31:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235397AbiKWTbg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 14:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235311AbiKWTbd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 14:31:33 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BC9B67101
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:31:32 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso2011425wms.4
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 11:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4r8uaZQuvEHiFOtJLv31Ft+c4qQEwadgXPmyRzogFKA=;
        b=UO/AnR0s6P9dQtT3TeypwJPMcgoI8fBrmFO1r3wpT3Ju8o/xezHPYbaVuOqsXsG/F+
         KFq4GVdWLlo++PbRJkJHO+ErCBir2CYAKUV/hSc/19vINBwvyeU6Ryc01dpPxhPAA4a9
         YKR/kmBmklyFwigBBmjNOCbvi+wfbaqu3kfb5XvwLdOv3hMM9VzewyIAyMPHa32FnWhh
         PbING5cEPxlPs9IGbzeTRUxrBtBkwB8zSPGSKfjpf+ita1hepfc8kw2+WoUIXTs67wpO
         dTTXFExWcYH5eR9SObQHpOWWBLFs0vSKEjkOIKrQiFcZhRlSGV4czHgeUwaX6Emz2d8P
         faYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4r8uaZQuvEHiFOtJLv31Ft+c4qQEwadgXPmyRzogFKA=;
        b=q7uW5eDOn83fr7GKk8FYX3O31PTsDhA0CJr5SwwhIt6klYXjzV4zynbooFqAZCzGo4
         K5EqDJ+YeejEh5UQ3YVBdHTdXnaUV5jXz55R0IDncoJ79ez09xxG2OR/h+A4I9W76yxf
         VtgyutlpacMohGZGKoeVGsuV+U39QHqZxqCTQY2bqZn3tqDiYTHVuRbw9bFlzsNsVwPL
         z59hY2WA7QPGaFUIPnU7qGGGvY8Z0eqpJYgROU1j0U+WfXt4dgKuhH5Zwgc0/h7St0hX
         PS3gnJzzt97SWkju0i5j9ltRpQPrc/5piwmpbCwdT4mMPxqb72JuuGFISIkjoAw8ifXF
         XGVQ==
X-Gm-Message-State: ANoB5pk28EYE5KJm6jidOZa2Hyy2cTvPCdY5IxGeI7+rQjaYTsDHpYCA
        JkHm9PjEqSnR+PSBx0znVC4=
X-Google-Smtp-Source: AA0mqf4qcIR865FlMZ17c2e9p6YhewyMHYOaP9dS1HhjUMOkBGMnJaVD5o4Zw7GqB2diJ77XKELgKw==
X-Received: by 2002:a05:600c:4c96:b0:3cf:6a66:e324 with SMTP id g22-20020a05600c4c9600b003cf6a66e324mr14152645wmp.158.1669231891078;
        Wed, 23 Nov 2022 11:31:31 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g16-20020adffc90000000b0022ae401e9e0sm17447889wrr.78.2022.11.23.11.31.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 11:31:30 -0800 (PST)
Message-ID: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
Date:   Wed, 23 Nov 2022 20:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To:     Time zone mailing list <tz@iana.org>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Doubts about a typo fix
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yr9Z2msF4ksS0myvv1sRaSje"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Yr9Z2msF4ksS0myvv1sRaSje
Content-Type: multipart/mixed; boundary="------------I854UuyUXYYGJQmp3Ap3o0oj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Time zone mailing list <tz@iana.org>, Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Message-ID: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
Subject: Doubts about a typo fix

--------------I854UuyUXYYGJQmp3Ap3o0oj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUGF1bCwNCg0KSSBkb24ndCB1bmRlcnRzdGFuZCB0aGUgY29tbWl0IHNob3duIGJlbG93
LiAgSXQgYnJlYWtzIHRoZSAnLScgc3ltYm9sLCB3aGljaCBub3cgDQppcyBhIGh5cGhlbi4g
IFNlZSB0aGUgdGFibGUgbWVudGlvbmVkIHllc3RlcmRheToNCg0KICAgICAgICAgIOKUjOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkA0KICAgICAgICAgIOKUgktl
eWNhcCAgIEFwcGVhcmFuY2UgYW5kIG1lYW5pbmcgICBTcGVjaWFsIGNoYXJhY3RlciBhbmQg
bWVhbmluZyAgIOKUgg0KICAgICAgICAgIOKUnOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUpA0KICAgICAgICAgIOKUgiIgICAgICAgICIgbmV1dHJhbCBkb3VibGUg
cXVvdGUgICBcW2RxXSBuZXV0cmFsIGRvdWJsZSBxdW90ZSAgICAgIOKUgg0KICAgICAgICAg
IOKUgicgICAgICAgIOKAmSBjbG9zaW5nIHNpbmdsZSBxdW90ZSAgIFxbYXFdIG5ldXRyYWwg
YXBvc3Ryb3BoZSAgICAgICAg4pSCDQogICAgICAgICAg4pSCLSAgICAgICAg4oCQIGh5cGhl
biAgICAgICAgICAgICAgICAgXC0gb3IgXFstXSBtaW51cyBzaWduL1VuaXggZGFzaCDilIIN
CiAgICAgICAgICDilIJcICAgICAgICAoZXNjYXBlIGNoYXJhY3RlcikgICAgICAgXGUgb3Ig
XFtyc10gcmV2ZXJzZSBzb2xpZHVzICAgICDilIINCiAgICAgICAgICDilIJeICAgICAgICDL
hiBtb2RpZmllciBjaXJjdW1mbGV4ICAgIFwoaGEgY2lyY3VtZmxleC9jYXJldC/igJxoYXTi
gJ0gICAgIOKUgg0KICAgICAgICAgIOKUgmAgICAgICAgIOKAmCBvcGVuaW5nIHNpbmdsZSBx
dW90ZSAgIFwoZ2EgZ3JhdmUgYWNjZW50ICAgICAgICAgICAgICAg4pSCDQogICAgICAgICAg
4pSCfiAgICAgICAgy5wgbW9kaWZpZXIgdGlsZGUgICAgICAgICBcKHRpIHRpbGRlICAgICAg
ICAgICAgICAgICAgICAgIOKUgg0KICAgICAgICAgIOKUlOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUmA0KDQoNClNvLCBhdCBsZWFzdCwgaXQgc2hvdWxkIGJlIChi
dXQgSSBiZWxpZXZlIHRoZSBpbml0aWFsIGNvZGUgd2FzIGNvcnJlY3QpOg0KDQoucSAiemlj
IFwqXC1yIEAkKGRhdGUgKyVzKSINCg0KSG93ZXZlciwgSSB3b25kZXIgd2hhdCB0aGF0IFwq
IGlzIGludGVuZGluZyB0byBkbyB0aGVyZSAoSSBjYW4gc2VlIG5vIGRpZmZlcmVuY2UgDQpp
biBteSBzY3JlZW4gd2l0aCBvciB3aXRob3V0IGl0KS4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Ci0tLQ0KDQpjb21taXQgOTE4ZTEwZTg5NjNiM2MwZDM4ZDNiNWZiOGVjOWNmMDhlY2QwMzc1
Nw0KQXV0aG9yOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1Pg0KRGF0ZTogICBU
dWUgSnVsIDEyIDA2OjI2OjUzIDIwMjIgLTA3MDANCg0KICAgICAqIHppYy44OiBmaXggbWlu
dXMgdHlwbw0KDQpkaWZmIC0tZ2l0IGEvemljLjggYi96aWMuOA0KaW5kZXggMGNkMDc4MWUu
LmU4ODE2ZTViIDEwMDY0NA0KLS0tIGEvemljLjgNCisrKyBiL3ppYy44DQpAQCAtMTQ1LDcg
KzE0NSw3IEBAIC5TSCBPUFRJT05TDQogIDMxLWJpdCBzaWduZWQgaW50ZWdlcnMuDQogIE9u
IHBsYXRmb3JtcyB3aXRoIEdOVQ0KICAuQlIgZGF0ZSAsDQotLnEgInppYyBcLXIgQCQoZGF0
ZSArJXMpIg0KKy5xICJ6aWMgXCotciBAJChkYXRlICslcykiDQogIG9taXRzIGRhdGEgaW50
ZW5kZWQgZm9yIHBhc3QgdGltZXN0YW1wcy4NCiAgQWx0aG91Z2ggdGhpcyBvcHRpb24gdHlw
aWNhbGx5IHJlZHVjZXMgdGhlIG91dHB1dCBmaWxlJ3Mgc2l6ZSwNCiAgdGhlIHNpemUgY2Fu
IGluY3JlYXNlIGR1ZSB0byB0aGUgbmVlZCB0byByZXByZXNlbnQgdGhlIHRpbWVzdGFtcCBy
YW5nZQ0KDQoNCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=


--------------I854UuyUXYYGJQmp3Ap3o0oj--

--------------Yr9Z2msF4ksS0myvv1sRaSje
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN+dQoACgkQnowa+77/
2zI2Yg/+Oh5CAc8QtDmuduSZWt4MjuFZ6GtxF3q3M0co1Lpwq/DG9R2G20ij/rgq
pYYtjJOYu15VWTtGI2CmSDoC+YuP4IpPXXlHiO0zABzYcc9dHmjFGMT1tklfAooV
qzANnpX64gjqFU9XN6AnlncKYJeWKbRKfEdWLRp3J4JLS9oi87y3FFHncwl01fkO
cCy1jz1dxjeUC7alZ08eIdayImpHqit52ZiLvo/E9fUn+wWSu/wftr7AD6Hw0Zgt
PjtJpICbQI43Kftg1YuxzLNSm+WCdBpFBIhK6IaAElegx7ql1cbv09oAQVH4iAbU
tGY4OMMb5KouxvIzSf7ECQGFg3k6k6TG+Mv4oUNXxuXhAvL7QcuNs2UoV6jT7gVc
8pZ/bAuprCXcUwBaM7PqHFEF49EO3F/SQz+bhbQhLwHtAQxTDIMnbgK28lEpmjsm
XjKpfO923hdQOO1vZeyx1ZxBJKeL45RqEZoofvGzF4lcP0Wk6XDCA3gA1aiIJnxb
lHB3X6GKhOMJQ2sYfpSUX08MRGXs0KbbdKHEBSVpwGidqKqFR40X0lkkRPIFddKy
htqcaa66xy4wZtdoHFma++gkJ78E8C0oNGkcs6sK8xf6zVGn2hBd7s/9fpVu0FzR
3fCZgtxQvEUd7az66I0eN5mSwijvJjB82uOpMCiHdmj/e75TJMk=
=JD1U
-----END PGP SIGNATURE-----

--------------Yr9Z2msF4ksS0myvv1sRaSje--
