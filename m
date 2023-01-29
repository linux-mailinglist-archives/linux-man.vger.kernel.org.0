Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 394526800D3
	for <lists+linux-man@lfdr.de>; Sun, 29 Jan 2023 19:36:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235220AbjA2SgI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 29 Jan 2023 13:36:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235265AbjA2SgE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 29 Jan 2023 13:36:04 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACCA51BAF4
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 10:35:55 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id k16so6669558wms.2
        for <linux-man@vger.kernel.org>; Sun, 29 Jan 2023 10:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qoyao8DNtI/XRUI+WUaPy/tkQd4DXQ9MVLB0rThuXGI=;
        b=bh/Viik5FPd/9hsqgBdFi5dTeBFzI+SIHlFk6g1WBi/hjFxkJAgW0hR7bO+qpNTsrm
         PlH4CBW9/2ov1ABVdoO2/LM2VAgvDftc4fEyhaabvx091Em0jtXpSr+2vRFfYtvVWT7J
         EFKy+EiWFYMmYIFP9M+CVSvNSqceuJF4TUYEVc//4AZW4hO6Nwxb00KyFdalKYrQfvlQ
         1lMj/+XPIt1icek7dz9aIzKwljgj93XxGO12BWSJ1RZ6OI5TDiO+pXEmUhtJrN2orBBp
         ehmVy4Iu87j7hMeToNET5CG+q+f9vUahosMG56kEsoyOk5ItAFrXDiJMkDFDCPnF+csI
         KVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qoyao8DNtI/XRUI+WUaPy/tkQd4DXQ9MVLB0rThuXGI=;
        b=I0cyB5P5dbcQl+Hnt3fMLCnQUJavSSSu3elxpHkV0Mr/4cZFNUAExuEUYvbstuvFST
         Oa8vEfvNszb6fkFYkY6OWK7HFvU3IRXN71VdaC1PfeLTGqs0xH5OD7y5e3qNdK2KFMfv
         FqV+aH592ZhH6G537upJg+63f8nyBxoNyF7g7glLApRnYI2nFWSeP7lSGPP7vfXL/Lv4
         rGDhR33oj64GRXQ734Ci/nRy+W5VZn2yhCLWBR37rGfu8sCUUgXHsleJVslfVJDVjPc5
         GTY3N5gG+ttMqSLk+ACvJysrS0H/T9HYByWprpBVoCX5r0IITmnlbXkIczFCwMgNLcCp
         4S6A==
X-Gm-Message-State: AFqh2kpsRT6V6X4sOrem0tbIvWMAdv8V0HfKlLo7IV86yYKQfpazrbl6
        cQ0IIWmMBn0pPkzPlFAUC2OtAoO/v7k=
X-Google-Smtp-Source: AMrXdXsL+k8w9RqVJ+pBV/5jaoP+kzftn0bb0glZsA7e7CTuAOBoXl7mqyK+LwcRKcbyWDFIBlhq7A==
X-Received: by 2002:a1c:7907:0:b0:3cf:a39f:eb2a with SMTP id l7-20020a1c7907000000b003cfa39feb2amr46349277wme.11.1675017354152;
        Sun, 29 Jan 2023 10:35:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d1-20020adfe2c1000000b002bfba730b0fsm9645575wrj.65.2023.01.29.10.35.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Jan 2023 10:35:53 -0800 (PST)
Message-ID: <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com>
Date:   Sun, 29 Jan 2023 19:35:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page charsets.7
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>,
        Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
 <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------RYGR0nLyN6vkWsboD3vc60bo"
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
--------------RYGR0nLyN6vkWsboD3vc60bo
Content-Type: multipart/mixed; boundary="------------30yRVxAoN5ZFiZIVo0hXZGgi";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Stefan Puiu <stefan.puiu@gmail.com>,
 Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <534b83d9-0936-4a45-7d1e-159bfb07f492@gmail.com>
Subject: Re: Issue in man page charsets.7
References: <20230122193134.GA29363@Debian-50-lenny-64-minimal>
 <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>
In-Reply-To: <CACKs7VAbs=fuqfEYhXALq3_PfoVbvVYUCc_D-GK5ObZJUPNwSw@mail.gmail.com>

--------------30yRVxAoN5ZFiZIVo0hXZGgi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgU3RlZmFuLA0KDQpPbiAxLzI5LzIzIDE3OjQ1LCBTdGVmYW4gUHVpdSB3cm90ZToNCj4g
SGkgSGVsZ2UsDQo+IA0KPiBPbiBTdW4sIEphbiAyMiwgMjAyMyBhdCA5OjM5IFBNIEhlbGdl
IEtyZXV0em1hbm4gPGRlYmlhbkBoZWxnZWZqZWxsLmRlPiB3cm90ZToNCj4+DQo+PiBXaXRo
b3V0IGZ1cnRoZXIgYWRvLCB0aGUgZm9sbG93aW5nIHdhcyBmb3VuZDoNCj4+DQo+PiBJc3N1
ZTogICAg4oCe4oCcIGFyZSBub3Qgb2xkLXN0eWxlLCB0aGV5IGFyZSB0aGUgY3VycmVudCBx
dW90YXRpb24gbWFya3MgcmVxdWlyZWQgYnkgR2VybWFuIG90aG9ncmFwaHkNCj4gDQo+IFRo
b3NlIGFyZSBhbHNvIHVzZWQgaW4gUm9tYW5pYW4sIGFuZCBwcm9iYWJseSBvdGhlciBsYW5n
dWFnZXMgYXMgd2VsbC4NCj4gDQo+Pg0KPj4gIkxhdGluLTEgY292ZXJzIG1hbnkgV2VzdCBF
dXJvcGVhbiBsYW5ndWFnZXMgc3VjaCBhcyBBbGJhbmlhbiwgQmFzcXVlLCINCj4+ICJEYW5p
c2gsIEVuZ2xpc2gsIEZhcm9lc2UsIEdhbGljaWFuLCBJY2VsYW5kaWMsIElyaXNoLCBJdGFs
aWFuLCBOb3J3ZWdpYW4sIg0KPj4gIlBvcnR1Z3Vlc2UsIFNwYW5pc2gsIGFuZCBTd2VkaXNo
LiAgVGhlIGxhY2sgb2YgdGhlIGxpZ2F0dXJlcyBEdXRjaCDEsi/EsywiDQo+PiAiRnJlbmNo
IMWTLCBhbmQgb2xkLXN0eWxlIOKAnkdlcm1hbuKAnCBxdW90YXRpb24gbWFya3Mgd2FzIGNv
bnNpZGVyZWQgdG9sZXJhYmxlLiINCj4gDQo+IEEgYml0IHdlaXJkIHRvIGluY2x1ZGUgQWxi
YW5pYW4gaW4gV2VzdCBFdXJvcGVhbiBsYW5ndWFnZXMsIGlzbid0IGl0Pw0KPiBNYXliZSB0
aGUgdGV4dCBjb3VsZCBiZSByZXdvcmtlZCB0bzoNCj4gDQo+ICAgICJtYW55IFdlc3QgRXVy
b3BlYW4gbGFuZ3VhZ2VzIHN1Y2ggYXMgQmFzcXVlLCBEYW5pc2gsIFsuLi4gb3RoZXINCj4g
bGFuZ3VhZ2VzIC4uLl0gYW5kIGFsc28gQWxiYW5pYW4uIg0KDQpJJ2QgcmF0aGVyIHJlbW92
ZSB0aGUgIldlc3QiIGFkamVjdGl2ZSBmcm9tIEV1cm9wZS4gIEl0J3Mgc2ltcGxlci4gIERv
ZXMgaXQgDQpzb3VuZCByZWFzb25hYmxlIHRvIHlvdT8NCg0KQ2hlZXJzLA0KDQpBbGV4DQoN
Cj4gDQo+IFJlZ2FyZHMsDQo+IFN0ZWZhbi4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5k
cm8tY29sb21hci5lcy8+DQo=

--------------30yRVxAoN5ZFiZIVo0hXZGgi--

--------------RYGR0nLyN6vkWsboD3vc60bo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPWvHsACgkQnowa+77/
2zL8/A//RbodFwDB7ulp+djb8gTLI+grQyxFU/HEa8v23BhsTfmvU1LRVxnoVcEG
eqt6YfYrB5NwiMRIwriUFHeOMdXqb9bV0UknHT8K4FIn2m9eyjUZfZgFKZOKQLyD
aebrf83BZI/caQjYlNvitS3+il7W0o0wsmAIDt752dyhy8ZKIIo9Jsj7OZsNzQ4A
63y/oQQYpPxLt7n3rm4vDXQA052/mfUfzeVko8f3gc2e5hvWkwPsBH4T480/dYYB
7w+vEVIyYkczEqXgKiaIrrM6zsGubBqV4Dp3mVKGBCJotI51MZPQZrsdRPTzb+pQ
iDR94xYGJz0Q+CUz9v+BF+AcTkH0vFDFKfuHho9wfOyCo7av3Qc1fA09uuIXoi9w
913MGX9CJMB0h0foKzsaXL271wFB4DSOwimzi59CKbovAT34XRWo6T7FEXZC5UJb
A4IPEaDl5qgveRusYI8PNO/uuTlHZnxAMs/IWbgwvqhrlwxwfLobBS943/TstKfO
WxLPNTuT3l9Y4M+RlYK8CM/LbQQ9781PiW+joz8oslNG6HAx2g85dOnZDm2RdD2k
f4e89NVHRJs5lOtcXMA719u7VN+uuJnEvLZ014+hWzApl7Joa8lt6lfNtpPTKPkx
hivAOKkL33XrTs0ngoSxFnGH6L9MJtcV0VTbPxUt3hs1kqNjpiM=
=H6+S
-----END PGP SIGNATURE-----

--------------RYGR0nLyN6vkWsboD3vc60bo--
