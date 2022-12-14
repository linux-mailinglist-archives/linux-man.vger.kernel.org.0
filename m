Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9AAC64C118
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 01:19:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235762AbiLNATo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 19:19:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238778AbiLNATT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 19:19:19 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74A2D128
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 16:16:52 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id ay40so10009955wmb.2
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 16:16:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UyWWgtX4t2iNZAiQbWYSv3g3obe78lKUPbKy9XIlmDU=;
        b=WbJ/4o3sV0PgPxWBtAd3Yw+Ucye3IQ3rLg8O/9JSaT+L3xVC6l4GcQiNsfp+siWCM7
         bK2EIwpicUHFZh6iGJU0a+57Jh1d4QM0+Skbl73+K29MnYO0UKF+QeukL7oafnf7TG/M
         R06lznzNjkeUpsR2QGjW11C5Cx6pXhb5DDrzuhbD2dbFDsWtiEPzqcosU8txZ/PbebO7
         Gti/F99hwOXu3hr1EHVVOMn7d1dgkE8SO/2M2vVyu8TokUO1QfNYQpajzZRsK36KOjRN
         LOIsQyYXbKWwBpvS6qYlLoimfmYLEpZyS3mJM7EFJ7anPKnBbNPcPE9PGRaZ4egIfCDz
         kAmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UyWWgtX4t2iNZAiQbWYSv3g3obe78lKUPbKy9XIlmDU=;
        b=0cdJ8iWk+aOiOc/BI+X63a5JyaQCCOtCvFyNlPOhA8Vo3LMOD17LRzlgFTIkuLXdQT
         putuGOUfonRsHE9EyyqOGP0kQiueLmbhn0qYp3hpQQVX5UR82qDkgNCzpxXq0O2p8/43
         fgYyRwvZEJyZGpIF0LjDxoX1N6kWHc1vQkFVQnt9apSezr0Vg07zDLU+paewPP3cyPWc
         Ks8+fGwVAT2uc7VRGgwvj4CH1BSui6aT28EcVaK8gj6jLYIU5xgP/xWAfMkqSs00Tc4h
         nQIqRt/RTDXREEO0klgOR9h81cDIG0grugaIvZ+zVCMzjeevnLbO1bYgBorL41UAthQ4
         Raxg==
X-Gm-Message-State: ANoB5pn+wBarU8rzZzujzl1UoCKpsGQaIB+L7ClHIBBgn6wWreVfz1Zx
        qCZ8j5UmUG/mUEYyp5MyeX13swp8wwg=
X-Google-Smtp-Source: AA0mqf6nuddWlANlnOKajwbNLe1MyoVYQ8mklk9nVtg57HpgQoRN6Mzd7a3BGpHshb+Qu5jAqaXIDQ==
X-Received: by 2002:a05:600c:3d8c:b0:3d0:7fd2:4756 with SMTP id bi12-20020a05600c3d8c00b003d07fd24756mr17544727wmb.8.1670977011065;
        Tue, 13 Dec 2022 16:16:51 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n11-20020a05600c3b8b00b003cf57329221sm429316wms.14.2022.12.13.16.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 16:16:50 -0800 (PST)
Message-ID: <6bfe0293-5c50-ed6b-c2d6-604605a33cef@gmail.com>
Date:   Wed, 14 Dec 2022 01:16:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 0/1] Rewritten page for string-copying functions
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx@kernel.org>
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-1-alx@kernel.org>
 <3756b985-84f8-75c9-a9f1-23940c4032a0@gmail.com>
In-Reply-To: <3756b985-84f8-75c9-a9f1-23940c4032a0@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0XNAut5jMeTvAnHs4A2aL4yE"
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
--------------0XNAut5jMeTvAnHs4A2aL4yE
Content-Type: multipart/mixed; boundary="------------TujGYrK7NSmFElFVHxnsNb0B";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Martin Sebor <msebor@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, Jakub Wilk <jwilk@jwilk.net>
Cc: Alejandro Colomar <alx@kernel.org>
Message-ID: <6bfe0293-5c50-ed6b-c2d6-604605a33cef@gmail.com>
Subject: Re: [PATCH v3 0/1] Rewritten page for string-copying functions
References: <20221212230044.86105-1-alx@kernel.org>
 <20221214000341.39846-1-alx@kernel.org>
 <3756b985-84f8-75c9-a9f1-23940c4032a0@gmail.com>
In-Reply-To: <3756b985-84f8-75c9-a9f1-23940c4032a0@gmail.com>

--------------TujGYrK7NSmFElFVHxnsNb0B
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

DQoNCk9uIDEyLzE0LzIyIDAxOjE0LCBBbGVqYW5kcm8gQ29sb21hciB3cm90ZToNCg0KPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBbiBpbXBsZW1lbnRhdGlvbiBvZiB0aGlz
IGZ1bmN0aW9uIG1pZ2h0IGJlOg0KPj4NCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjaGFyICoNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHBjcHkoY2hhciAqcmVzdHJpY3QgZHN0LCBjb25zdCBjaGFyICpyZXN0cmljdCBz
cmMpDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgew0KPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIG1lbXBj
cHkoZHN0LCBzcmMsIHN0cmxlbihzcmMpKTsNCj4gDQo+IE9vcHMuwqAgSXQgc2hvdWxkIGhh
dmUgYmVlbjoNCj4gDQo+IGNoYXIgKnA7DQo+IA0KPiBwID0gbWVtcGNweShkc3QsIHNyYywg
c3RybGVuKHNyYykpOw0KPiBwID0gJ1wwJzsNCg0KKnAgPSAnXDAnOyAgLy86KQ0KPiByZXR1
cm4gcDsNCj4gDQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfQ0K
Pj4NCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------TujGYrK7NSmFElFVHxnsNb0B--

--------------0XNAut5jMeTvAnHs4A2aL4yE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOZFfEACgkQnowa+77/
2zIzdQ/9FR0jwlQ0Xs6IGssNctH1eTm7Yi7JB9hn7fdtvVcqfC7SIbYv966+jwGF
g9Iay3HH6cJ2gE5/24MrJjTB/w6h4bekfTnMDdQf6MxEflLap4mDVGvu2Rt6i2Dp
0k2IVzF5OnmzUhWVpQZ26BH+vmrQxj38w7++OLwmKHt6Aw1u/IXTdaGCp1W9llse
sj9rTThPXp6a5OWGyful7nKXv9wwK+f/3615jsn4eIWtkMisugN97JBah94sy28i
VhLeV0S4ZSVS55Zju6MvTcl+Ku7jU+qKaASDi2WOOnD/BWaBoKotjOkC+0323vGv
C6DVqzw3jnNm8N/y759ZUPPd9/AJ4kpcbwzREWWwGwpSWqJlM4seLtrkwmfEtu4X
pqziZTyCz/QQ2/GQmkav6Sy5UgfiBKsdbzK2QALnpXhQJWk+o0WI0D47myuXS7FU
JfKeefPSaCremC0HsLIzzBb2IMlBbOkW27ArcjkRfdDntuaoCisbOkHsMSgjDPED
17vcc+u6hf8KUMOpUheNwfgSRXSO4aqqn5vymg6bp/cTzdT4o9Pw54A4PNZLrxRN
ZgrpdHQYQh3sowjpUarjXLluMqsIcajHAqmU/9Smb31MMYQ+t+2naQfPAqm2Rk1G
9nxEnHKZqe5dGOGep35jVi+oNcnJOWlpLo7nBTFVBEdzVn0yVYc=
=LSlr
-----END PGP SIGNATURE-----

--------------0XNAut5jMeTvAnHs4A2aL4yE--
