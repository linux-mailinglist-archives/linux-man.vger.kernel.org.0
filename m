Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA17964A604
	for <lists+linux-man@lfdr.de>; Mon, 12 Dec 2022 18:34:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232671AbiLLRew (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 12:34:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233059AbiLLReI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 12:34:08 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDC7813D53
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 09:34:06 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id n9-20020a05600c3b8900b003d0944dba41so5833192wms.4
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 09:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:cc:references:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r6+q0wYrZJtf5mUbo8SwKejSPdrUvKo51QoaUc1owSc=;
        b=EfAehax+jq04p3QcItYZ21G0BlrynMCdWT59EKltvukb1o6CzKy1/BdXwaoiUYNFXq
         1GTRfpQDlqpFhcRtWIhHpx7ZnjKglzQaE4a3y4tvke/QYshmLUTMcGw1i10mhUtJs+Xk
         WpBhxCgXlks7500oPpk51Y+YstWZQfC28W8pVOsmMiP4wQ/NdafD8aqJVOZRxcC4QH+Q
         BCWBSBkK0LHBT2lKeE3hq8G5e2+HTfKJSyukOw0xJ9EDfhuwrxz1M+GoTD55Pci63nRV
         drusMN4AEhpCeqf9lyYJQMQ4B1EHIf6lpR/xiVQxigyO+QAMXgHeAhS+/HIs/ctNOK5a
         VYTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:cc:references:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=r6+q0wYrZJtf5mUbo8SwKejSPdrUvKo51QoaUc1owSc=;
        b=v2RE+rLvH7akc0vfnJmOCJqe9F+qrzQuOAQaqfgOF7SSrUGziG0f2h8RrEvm6i/624
         D02Nh/Q99kNepLr2XfAJRQoC1fNyrHPvJ3BCwet+BvaI+1N3y9k2oQ5n+gWNY0eUXoKe
         1ucNGykjp9CmbK20f18dHZQa2WaAIa0aNY2Bw51eAid69fLzFYdLEVYc7tjL9PPvg50v
         z2nuGp8Kv6rnZz8kFZW+SlaayCFJmHKRT0LuQow3bBLA2UcUmVXuKr9GdRzMPdelG0KA
         YaS9keeW/9P+w1qQPCaoggWRBQtdU5ndAVSE89V5LcgiqizRLcX4WBHV8cq0EwUKsLHt
         gZUg==
X-Gm-Message-State: ANoB5pkA0iA1pYpTfKlNzyUoaBJvPOpBowD1aXSY7mGJ/Qim2GFKAUmm
        NOE/ROZOO2Aai+YeMXy9TX0=
X-Google-Smtp-Source: AA0mqf5Y6R79h7YbxTtq6Vnj4M9nOcRGPmQ5vZF9sTSErAanLLHzoFwt1UO/+Bwfj1gC3DsJEC6PNQ==
X-Received: by 2002:a05:600c:502c:b0:3cf:900c:de6b with SMTP id n44-20020a05600c502c00b003cf900cde6bmr13179840wmr.15.1670866445193;
        Mon, 12 Dec 2022 09:34:05 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600c199100b003c6f1732f65sm10510106wmq.38.2022.12.12.09.34.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 09:34:04 -0800 (PST)
Message-ID: <cfb105a2-4bdb-c317-60b0-0771cc6201e8@gmail.com>
Date:   Mon, 12 Dec 2022 18:33:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/3] strcpy.3: Rewrite page to document all string-copying
 functions
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
References: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
 <20221212142418.27615-1-alx@kernel.org>
Cc:     linux-man@vger.kernel.org
In-Reply-To: <20221212142418.27615-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------38igBfQme7l2XuaysOlwPNLO"
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
--------------38igBfQme7l2XuaysOlwPNLO
Content-Type: multipart/mixed; boundary="------------8B8x3Bw3Z8z0VVnrZ56kEY06";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 groff <groff@gnu.org>
Cc: linux-man@vger.kernel.org
Message-ID: <cfb105a2-4bdb-c317-60b0-0771cc6201e8@gmail.com>
Subject: Re: [PATCH 1/3] strcpy.3: Rewrite page to document all string-copying
 functions
References: <176225b0-4b0e-698b-b79e-f8ed78b4cf8c@gmail.com>
 <20221212142418.27615-1-alx@kernel.org>
In-Reply-To: <20221212142418.27615-1-alx@kernel.org>

--------------8B8x3Bw3Z8z0VVnrZ56kEY06
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiwNCg0KT24gMTIvMTIvMjIgMTU6MjQsIEFsZWphbmRybyBDb2xvbWFyIHdy
b3RlOg0KPiArLlwiIC0tLS0tIFJFVFVSTiBWQUxVRSA6OiBEZXByZWNhdGVkIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0vDQo+ICsuU1MgRGVwcmVjYXRlZA0KPiArVGhl
IGZvbGxvd2luZyBmdW5jdGlvbnMgcmV0dXJuDQo+ICt0aGUgbGVuZ3RoIG9mIHRoZSB0b3Rh
bCBzdHJpbmcgdGhhdCB0aGV5IHRyaWVkIHRvIGNyZWF0ZQ0KPiArKGFzIGlmIHRydW5jYXRp
b24gZGlkbid0IG9jY3VyKS4NCj4gKy5JUCBcKGJ1IDMNCj4gKy5CUiBzdHJsY3B5ICgzYnNk
KSwNCj4gKy5CUiBzdHJsY2F0ICgzYnNkKQ0KPiArLlBQDQo+ICtUaGUgZm9sbG93aW5nIGZ1
bmN0aW9uIHJldHVybnMNCj4gK3RoZSBsZW5ndGggb2YgdGhlIGRlc3RpbmF0aW9uIHN0cmlu
Zywgb3INCj4gKy5CIFwtRTJCSUcNCj4gK29uIHRydW5jYXRpb24uDQo+ICsuSVAgXChidSAz
DQo+ICsuQlIgc3Ryc2NweSAoOSkNCj4gKy5QUA0KPiArVGhlIGZvbGxvd2luZyBmdW5jdGlv
bnMgcmV0dXJuIHRoZQ0KPiArLkkgZHN0DQo+ICtwb2ludGVyLA0KPiArd2hpY2ggaXMgdXNl
bGVzcy4NCj4gKy5QRCAwDQo+ICsuSVAgXChidSAzDQo+ICsuQlIgc3RyY3B5ICgzKSwNCj4g
Ky5CUiBzdHJjYXQgKDMpDQo+ICsuSVAgXChidQ0KPiArLkJSIHN0cm5jcHkgKDMpDQo+ICsu
SVAgXChidQ0KPiArLkJSIHN0cm5jYXQgKDMpDQo+ICsuUEQNCg0KSSByZWFsaXplZCB0aGF0
IHRoZSBhYm92ZSBkb2Vzbid0IHByb2R1Y2UgZXhhY3RseSB3aGF0IEkgd2FudGVkLiAgSSB3
YW50ZWQgdGhpczoNCg0KICAgICAgICBUaGUgZm9sbG93aW5nIGZ1bmN0aW9ucyByZXR1cm4g
dGhlIGRzdCBwb2ludGVyLCB3aGljaCBpcyB1c2VsZXNzLg0KDQogICAgICAgIOKAoiAgc3Ry
Y3B5KDMpLCBzdHJjYXQoMykNCiAgICAgICAg4oCiICBzdHJuY3B5KDMpDQogICAgICAgIOKA
oiAgc3RybmNhdCgzKQ0KDQpCdXQgSSBnb3QgdGhpczoNCg0KICAgICAgICBUaGUgZm9sbG93
aW5nIGZ1bmN0aW9ucyByZXR1cm4gdGhlIGRzdCBwb2ludGVyLCB3aGljaCBpcyB1c2VsZXNz
Lg0KICAgICAgICDigKIgIHN0cmNweSgzKSwgc3RyY2F0KDMpDQogICAgICAgIOKAoiAgc3Ry
bmNweSgzKQ0KICAgICAgICDigKIgIHN0cm5jYXQoMykNCg0KSSBzZWUgdmFyaW91cyBwb3Nz
aWJsZSBzb2x1dGlvbnMsIGJ1dCB3aGljaCB3b3VsZCB5b3UgcmVjb21tZW5kPw0KDQpJJ3Zl
IHRob3VnaHQgb2Y6DQoNClsNClsuLi5dDQouUFANCi5QRCAwDQouSVAgXChidSAzDQpbLi4u
XQ0KXQ0KDQpvcg0KDQpbDQpbLi4uXQ0KLklQIFwoYnUgMw0KLlBEIDANClsuLi5dDQpdDQoN
Ckkgd2FzIHRoaW5raW5nIGFib3V0IHlvdXIgZnV0dXJlIChJIGhvcGUpIC5MUyBhbmQgLkxF
LCBhbmQgaG93IHRoZXkgd291bGQgYWxzbyANCmZpdCBpbiBoZXJlLg0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------8B8x3Bw3Z8z0VVnrZ56kEY06--

--------------38igBfQme7l2XuaysOlwPNLO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOXZgAACgkQnowa+77/
2zKxJxAAhuKOydWyAb0WXRSdesJnDS85g+hAIXf098dRtSEIe3YA/ZbKLJVpHO4h
DvRezZu35gKljns5Nfp7yhz+Gk7B8NIATzi4J79u+Li6e1QutJYDkSFMUL5/oGtv
HrYfKqhKCWNN0DkEGDZsubFci8u2ZJ9Q+DSY+R5J9eG8J+qnln7E4yLWgw1zyw/I
0Lqts7Wr4tV2xtehB7ODdmln6ZH3BWOcIy6jDF5XEtjSIvMVPj9ksAYm+3YXAZYf
9gEn91OA2iX3C/fdou0ffOvkp33lM1R9sCSpxdMuHxj6UAG73f3XBL0TGIExbO5n
W5jpH+hcqWmr4ChMGAuk+iYkqCaoBfRSmxmtL4zpRryWFuo/8MDwTJjSpbJr0IPd
ttD9Ct2ZT9U4GEv9RF9Xb+aJdiDooBsnGCfkCqySBZ744zo/PeMIJOxxFZSWsFFx
rm1CgUXbpPyTgJeVzvHN8KdqPdKa+O6xDN5/vqMrXQzBZJnW9WN/lBonywe7/MTO
Zva4VaWWUzZKWmIR3M7EAyvdyWBwrjq2zPOCdakdMEpw+sR6XfNH/wCA1c1EMmGX
FOj8Q1eBHlsq3Q63SWzLJpOLfjRFT/naKNifIsxfMTeB/Vo26OtaGhudfZf5UWvK
fETHlG8aoJHT2pupXoZDpkmHybjz2jYntDtRhhXEZkmtJwHx3Ew=
=mpnH
-----END PGP SIGNATURE-----

--------------38igBfQme7l2XuaysOlwPNLO--
