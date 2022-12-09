Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63AB66489E6
	for <lists+linux-man@lfdr.de>; Fri,  9 Dec 2022 22:10:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbiLIVKU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Dec 2022 16:10:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229568AbiLIVKT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Dec 2022 16:10:19 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E2E3B3DBC
        for <linux-man@vger.kernel.org>; Fri,  9 Dec 2022 13:10:18 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c65-20020a1c3544000000b003cfffd00fc0so750409wma.1
        for <linux-man@vger.kernel.org>; Fri, 09 Dec 2022 13:10:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iY1IKNzNoAw4GBSPHlQrzJLGHj0CzD6lkpczCuXetts=;
        b=mE2bb4oomJARoed5N9dEsuRnZyAuaMnVad7ZF8g5o6KlRVRsb6+C6BaF0cEKIFCe87
         dBiZW3gRXSceX9Gyb3jiGiwj0JiBr/nlQXzJwWFAAEQDlomaF/LssFmCa3FqZi6fW+te
         bUGIRxBI0J3ACb4Cb39PsPXoJkbP7irnCFZt8HbL49rkuJ7CZB3zrauFWKEYKg3JvDsn
         ET6PnRm5HgabpZQh31BEaImWzwqq7RaTbU+SNYbfCkEYjCW3Fs5YdELNEZyHm25AtM0F
         WFBismpjdoMKQrbF1rDUIvgzVQEuzOReGaWS+5K4n/eafw+n6tDtRtvcjvylyGsN33gp
         A4tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iY1IKNzNoAw4GBSPHlQrzJLGHj0CzD6lkpczCuXetts=;
        b=olF1Me4kb7Akn8yPEtRbAojOB05ExWhw7naXUujW7cNlI9eiJFvH30JWlz9hbe22Aq
         3XYKOpLoD61hyfGimKzPIkxltlUJcF0bBhw7uLF9vbH3PgHyTeQxba6SSh0xpkds/VdK
         GgnQP8bD4ITrQwpwGNkIkn/95Zei3dEkRHW1gy/8xaIKmhUdn0/giOLkQjaGvg5I2zUV
         tDPZpOYe5zeBzQLb13Un1AcNyRVI/eqsUATKLMR5FMPfLBcAWlozJ5nhswax2lvNQt2Z
         X1sTdehjxIUdChkpO32jPZykVQ0Ekg1u6WVRiNBYtpQKL1/fsWZ4kbyM7MsG5sax5RS4
         pBSA==
X-Gm-Message-State: ANoB5pkvL81kA/Ug3yqKzYhDcyLzj5WaHRgpq0LDOFBZ83YzBkbUnTBx
        LKQv2cx6CdSrd0BB/JxlD/jjDMSIk3c=
X-Google-Smtp-Source: AA0mqf71ZOuq2MdNIUKsbSKBAGBEGE//2UqbovaD97y3Ibg5CZ7VKEYQXQA75eE/L7+Eizj6iEWoRw==
X-Received: by 2002:a05:600c:299:b0:3d0:8a35:7a39 with SMTP id 25-20020a05600c029900b003d08a357a39mr6188488wmk.5.1670620216618;
        Fri, 09 Dec 2022 13:10:16 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600c199100b003c6f1732f65sm803470wmq.38.2022.12.09.13.10.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 13:10:16 -0800 (PST)
Message-ID: <b2aba4a6-2a6a-74c6-97e8-3bc11018a623@gmail.com>
Date:   Fri, 9 Dec 2022 22:09:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: words (and commands) that I learnt because of Branden (was: preferred
 /proc/<pid>/xxx style?)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Mike Frysinger <vapier@gentoo.org>
Cc:     linux-man@vger.kernel.org, John Gardner <gardnerjohng@gmail.com>,
        groff <groff@gnu.org>
References: <Y5MCsc/H9BV6RcST@vapier>
 <bc30d5ac-c33b-9a67-fa85-1003da0057f5@gmail.com>
 <20221209210340.azlp4t6c5myz534b@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221209210340.azlp4t6c5myz534b@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------csUbzOlTibmpBYOVTiIN2eW0"
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
--------------csUbzOlTibmpBYOVTiIN2eW0
Content-Type: multipart/mixed; boundary="------------WDA6EBoZ6iVetIw1WGQxH1fh";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Mike Frysinger <vapier@gentoo.org>
Cc: linux-man@vger.kernel.org, John Gardner <gardnerjohng@gmail.com>,
 groff <groff@gnu.org>
Message-ID: <b2aba4a6-2a6a-74c6-97e8-3bc11018a623@gmail.com>
Subject: words (and commands) that I learnt because of Branden (was: preferred
 /proc/<pid>/xxx style?)
References: <Y5MCsc/H9BV6RcST@vapier>
 <bc30d5ac-c33b-9a67-fa85-1003da0057f5@gmail.com>
 <20221209210340.azlp4t6c5myz534b@illithid>
In-Reply-To: <20221209210340.azlp4t6c5myz534b@illithid>

--------------WDA6EBoZ6iVetIw1WGQxH1fh
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiENCg0KT24gMTIvOS8yMiAyMjowMywgRy4gQnJhbmRlbiBSb2JpbnNvbiB3
cm90ZToNCj4gSGkgQWxleCAmIE1pa2UsDQo+IA0KPiBBbGV4LCB5b3UgYmVhdCBtZSB0byB0
aGlzIG9uZS4uLg0KPiANCj4gQXQgMjAyMi0xMi0wOVQyMDo0MzoyMSswMTAwLCBBbGVqYW5k
cm8gQ29sb21hciB3cm90ZToNCj4+PiBwZXJzb25hbGx5IGkgZmluZCB0aGF0IGphcnJpbmcg
dG8gcmVhZCBiZWNhdXNlIGl0J3MgdXNpbmcgaXRhbGljcw0KPj4+IGZvciB0aGUgd2hvbGUg
cGF0aCBleGNlcHQgZm9yIHRoZSBwaWQgd2hpY2ggaGFzIG5vIHN0eWxpbmcgYXQgYWxsLg0K
PiANCj4gSSBzdWJtaXQgdGhhdCBpdCBpcyBtb3JlIGphcnJpbmcgdG8gaGF2ZSB0byBoYXZl
IGEgZmlsZSBzcGVjaWZpY2F0aW9uDQo+IHdpdGggbWl4ZWQgbGl0ZXJhbCBhbmQgdmFyaWFi
bGUgY29tcG9uZW50cywgc3VjaCBhcw0KPiANCj4gL3Zhci9sb2cvZXBpZGVtaWMvcGlkL3Bv
cnQNCj4gDQo+IGFuZCBoYXZlIGl0IGFsbCBtYXJrZWQgdXAgaW4gdGhlIHNhbWUgdHlwZWZh
Y2Ugd2l0aG91dCBhIHZpc3VhbCBjbHVlIGFzDQo+IHRvIHdoaWNoIHBhcnQgaXMgbm9ubGl0
ZXJhbC4gIChPYnNlcnZlIHRoZSBhbWJpZ3VpdHkuKSAgWWVzLCAidGhlDQo+IGV4cGVyaWVu
Y2VkIHVzZXIgd2lsbCB1c3VhbGx5IGtub3cgW3doaWNoIHBhcnQgdG8gcmVwbGFjZV0iLlsx
XSAgVG8gcmVseQ0KPiBvbiB0aGF0IHByaW5jaXBsZSBpbiBkb2N1bWVudGF0aW9uIGlzIGEg
ZGVyaWxpY3Rpb24gb2YgZHV0eS4NCg0KWW91ciBlbWFpbHMgYXJlIHRoZSByZWFzb24gSSBr
bm93IGFuZCBvZnRlbiB1c2UgZGljdCgxKS4gIExvbC4NCg0KJCBkaWN0IGRlcmlsaWN0aW9u
DQpObyBkZWZpbml0aW9ucyBmb3VuZCBmb3IgImRlcmlsaWN0aW9uIiwgcGVyaGFwcyB5b3Ug
bWVhbjoNCmdjaWRlOiAgRGVyZWxpY3Rpb24NCnduOiAgZGVyZWxpY3Rpb24NCm1vYnktdGhl
c2F1cnVzOiAgZGVyZWxpY3Rpb24NCg0KQW5kIHllcywgZGVyZWxpY3Rpb24gaGFzIGEgZGVm
aW5pdGlvbiBjb21wYXRpYmxlIHdpdGggeW91ciB1c2UuDQoNCkNoZWVycywNCg0KQWxleA0K
DQoNCi0tIA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------WDA6EBoZ6iVetIw1WGQxH1fh--

--------------csUbzOlTibmpBYOVTiIN2eW0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOTpCUACgkQnowa+77/
2zKliQ/9F1Gw01KB2MZ3PR3FUJ88QqxS/uz2taMH6L4KtfLtAw5WX2BnEgqy0LKD
WhE3bB3KqoewnI8PdEEDBz+yYoKFowkUcdS0Z7DwNEurCwK0pLsgxSzpcOFik404
Xt6jxDfbbBEENQRJQy5pewcbXo4PbHiQvglEx+PEp9CEESowLw/bwqyxf+lC/x4z
ghj+PT3u/okSphA0S5tdgCLbqxxMDRXyvZjG3AOe556qHsaXXTTZhobFnKsMmmS0
lWTjFRRP16uv2rvfTGHQVzccpOymAkXLyCTOY+xcCfG3jltLfKOvu16aQRwIxjp1
5+1JjwhhnU2Ldzl1G4R/fwqHx2LnRtZ2zqKiInxkZijEATaA0Nv5FA4aoC6nkhjR
GHe1CieqerZ1+KQqV6MZ8mg1NDb84nz3egMpO37xqOU2tmVj3djysaklXfrdrVqP
Bn91CVqaFAvLtolryObc1nnR3UZMznkrBnZ9d+eJnBBxGT4OV0fAOvMYxOcHDf3g
3o6zczpZwJdF+AzgDgGxNqwf3LHS2u/qgnchmgJe7oQ5AQKHZf/zrfJvP9ZafxQ0
RWzPG/KXqrmkZoYf+Xowg5Td2gKPSyPzbQ9trGjOaFgYSgtWDu9FXypW/Zytip/v
WVXak7uFmR3qRVeX6VCX6FIpZVypatrV8AH3NPc2SCE6gZBZCPs=
=ZOHN
-----END PGP SIGNATURE-----

--------------csUbzOlTibmpBYOVTiIN2eW0--
