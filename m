Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BDF762CE8E
	for <lists+linux-man@lfdr.de>; Thu, 17 Nov 2022 00:14:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbiKPXOW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Nov 2022 18:14:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234081AbiKPXOO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Nov 2022 18:14:14 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4798A10FFA
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 15:14:13 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id cl5so32715020wrb.9
        for <linux-man@vger.kernel.org>; Wed, 16 Nov 2022 15:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=RUdIGghxoAQj04Hirc74tE5/kvVjQW+YAiWjGrivMqU=;
        b=W47aTZ80fe8LNQKJTsGPHKr7zrcbgaf8kb3yw6siqlT5phFpDiqM9rc4zRY531jfDn
         1+5O6k8y9Iu/MyD+74fygHn7rtSN3yD7qArEyXfqOtRdIoPl95J9H2JajLS432khnQnw
         tk4ynJscFGZM+t5n84tK/76o1FitJjAGFg26KIB8l9b/sZGrAaw4NNJpSm/QztEcfg2D
         zzgTyZd9HLCV+d8vLPJD+XWAHWrsJOoiSHg/pq4BhwBm8bB+8L0TNoKZtDU16iMuTOFs
         Uyb/YfVVi+2OOhLQs6bDkzevggSWDiNIUVW2H3YstJPdaKdmZdi68S1gT8ln2/xFt9VT
         pnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=subject:from:cc:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RUdIGghxoAQj04Hirc74tE5/kvVjQW+YAiWjGrivMqU=;
        b=15wU8HEmXadygASh1VQkj8SHUZiGdRedw1ePXMnwA5XifpLCfIstUr6saTwLO0T5qY
         uUf0w/xq6Id3R0WW5odh3xhSejLYS00/gli2Q7uxnapCRUv6/pmp4qmWTQddATTGeIr9
         JMdjf4L8LgvQpvudjhrE5EI4aTWKo4xew8mkqfO90Gj6WlIy/+CkiBtvahq91boenczC
         mNjFmQ9Q2+rSK+/8lZ6PZX8omb6JSWtXk+uLqz11pfcmhaq37+zyaWinHaebNZUzyzal
         HWSwQ6S4ssUwWpUj1hot9K5RXwtbqBlU3Ca9nAzLACpdaFyQ4LUzMB0lyyPRQrG7qjwU
         LA5Q==
X-Gm-Message-State: ANoB5pmrxfxLa/AW6K0s9Qzrl97LbECeyBbfXU45hPuArkAeEsbZe3dd
        tTskHcl+Hse1Gy+8JwnirHSOTNQ2Fp8=
X-Google-Smtp-Source: AA0mqf5IXqPaStOtfoPmfeKy+KqGv/uzY3pKa2jMl/zLn4ktAwGKNH1BYqEKH1CMp2AUdiP0ekKN4g==
X-Received: by 2002:a05:6000:16c4:b0:22c:cc75:5aab with SMTP id h4-20020a05600016c400b0022ccc755aabmr14627191wrf.143.1668640451893;
        Wed, 16 Nov 2022 15:14:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u12-20020adfdb8c000000b002417ed67bfdsm13181802wri.5.2022.11.16.15.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 15:14:11 -0800 (PST)
Message-ID: <c7f78a1b-a7bb-a077-3445-802e99f5e9c7@gmail.com>
Date:   Thu, 17 Nov 2022 00:13:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>
Cc:     Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: intro(3type) draft
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3DBeletLI8WeavBm45sD3TFG"
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
--------------3DBeletLI8WeavBm45sD3TFG
Content-Type: multipart/mixed; boundary="------------dhvTjDOATsmOoBjMYmVSDIuk";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Ingo Schwarze <schwarze@usta.de>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Message-ID: <c7f78a1b-a7bb-a077-3445-802e99f5e9c7@gmail.com>
Subject: intro(3type) draft

--------------dhvTjDOATsmOoBjMYmVSDIuk
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgQnJhbmRlbiBhbmQgSW5nbyENCg0KUGVyIHRoZSByZXF1ZXN0IG9mIEJyYW5kZW4gdGhh
dCBJIHNob3VsZCBkaXNjb3VyYWdlIHByb2dyYW1tZXJzIG9mIHdyaXRpbmcgdGhlaXIgDQpt
YW51YWxzIHdpdGggc3ViY2hhcHRlcnMsIHdoaWNoIGZ1bmRhbWVudGFsbHkgbWVhbnMgZGlz
Y291cmFnaW5nIHByb2dyYW1tZXJzIG9mIA0Kd3JpdGluZyB0aGVpciBsaWJyYXJpZXMgKG9y
IG1vZHVsZXMsIG9yIHdoYXRldmVyIGEgZ2l2ZW4gbGFuZ3VhZ2UgdXNlcykgaW4gYSB3YXkg
DQp0aGF0IHlvdSBjYW4ndCBkb2N1bWVudCBhIGhlYWRlciBpbiBhIHNpbmdsZSBwYWdlLCBJ
IHdyb3RlIHRoZSBmb2xsb3dpbmcgDQppbnRyb2R1Y3RvcnkgcGFnZSBpbnRybygzdHlwZSku
DQoNClRoZSBjYXZlYXQgdGhhdCB5b3UnbGwgcmVhZCBzaG91bGQgZ28gZWl0aGVyIGluIGFs
bCBpbnRybyhbMjNdXHcrKSBwYWdlcy4gIFdlIA0KY291bGQgcHV0IGl0IGluIHRoZSBtYWlu
IHNlY3Rpb24gaW50byBwYWdlcyB0b28uICBJIHdhbnQgdG8gaGVhciBzb21lIG9waW5pb25z
IA0KYWJvdXQgdGhpcy4NCg0KSSB1c2VkIHRlbXBvcmFyaWx5IHRoZSB0ZXJtIFtzdWJdY2hh
cHRlciB0byBzZWUgaG93IGl0IGZpdHMuDQoNCkNoZWVycywNCg0KQWxleA0KDQotLS0NCg0K
aW50cm8oM3R5cGUpICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlu
dHJvKDN0eXBlKQ0KDQpOQU1FDQogICAgICAgIGludHJvIC0gaW50cm9kdWN0aW9uIHRvIGxp
YnJhcnkgdHlwZXMNCg0KREVTQ1JJUFRJT04NCiAgICAgICAgU3ViY2hhcHRlciAgM3R5cGUg
IG9mIHRoZSBtYW51YWwgZGVzY3JpYmVzIHRoZSB0eXBlcyBwcm/igJANCiAgICAgICAgdmlk
ZWQgYnkgQyBsaWJyYXJpZXMuDQoNCkNBVkVBVFMNCiAgICAgICAgVGhlIHNlcGFyYXRpb24g
b2YgY2hhcHRlciAzIG9mIHRoaXMgbWFudWFsIGludG8gIHN1YmNoYXDigJANCiAgICAgICAg
dGVycyAgaXMgIG9ubHkgIGEgIGNvbnNlcXVlbmNlIG9mIHRoZSBvcmdhbml6YXRpb24gaW4g
dGhlDQogICAgICAgIFN0YW5kYXJkIEMgTGlicmFyeS4gIFByb2JhYmx5LCBhIGJldHRlciBk
ZXNpZ24gZm9yIGEgIGxp4oCQDQogICAgICAgIGJyYXJ5IHdvdWxkIGJlIHN1Y2ggdGhhdCBl
YWNoIGhlYWRlciBmaWxlIGlzIG1pbmltYWwsIGFuZA0KICAgICAgICBjb250YWlucyAgb25s
eSAgb25lIG9yIGEgZmV3IEFQSXMsIGFuZCB0aGUgdHlwZXMgYW5kIGNvbuKAkA0KICAgICAg
ICBzdGFudHMgdGhhdCBhcmUgaW50cmluc2ljIHRvIHRoYXQgQVBJLiAgIFR5cGVzICBhbmQg
IGNvbuKAkA0KICAgICAgICBzdGFudHMgIHRoYXQgIGFyZSB0byBiZSB1c2VkIGJ5IG1hbnkg
QVBJcyBjYW4gZ28gaW4gc2VwYeKAkA0KICAgICAgICByYXRlIGhlYWRlciBmaWxlcyB0aGF0
IHByb3ZpZGUgbm8gQVBJcy4gICBUaGF0ICBvcmdhbml6YeKAkA0KICAgICAgICB0aW9uICBw
ZXJtaXRzICB3cml0aW5nIG1hbnVhbCBwYWdlcyB0aGF0IGRvY3VtZW50IGV4YWN0bHkNCiAg
ICAgICAgb25lIGhlYWRlciBmaWxlIHBlciBtYW51YWwgcGFnZSwgd2hpY2ggd2lsbCAgaW1w
cm92ZSAgdGhlDQogICAgICAgIHJlYWRhYmlsaXR5IG9mIHRoZSBkb2N1bWVudGF0aW9uLCBh
bmQgdGhlcmVieSB0aGUgdXNhYmls4oCQDQogICAgICAgIGl0eSBvZiB0aGUgc29mdHdhcmUu
DQoNClNFRSBBTFNPDQogICAgICAgIGludHJvKDMpDQoNCkxpbnV4IG1hbuKAkHBhZ2VzICh1
bnJlbGVhc2VkKSAoZGF0ZSkgICAgICAgICAgICAgICAgIGludHJvKDN0eXBlKQ0KDQoNCi0t
IA0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------dhvTjDOATsmOoBjMYmVSDIuk--

--------------3DBeletLI8WeavBm45sD3TFG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmN1brQACgkQnowa+77/
2zL5vg//VthBdqYNodHJBxR+vKP1UanAZFk7Csb0UI6IENuFRdinFAtH/WlNbpit
eKwpDZTiNiUYQdRzJ9/ugIFmLy0kcxtJNz8+ddAWJo5cFn/lqFGUAlv3E1chX3A4
v6Tsi8cLHJQBM88HN4pA7HBpc/0auaZqt/yxOQGvIZiheIZcQlI4RrDQHs/IQerQ
MrE+tRJANDY9iBDQrX9uL9Hof0NqAPfFdzFnFOQWqMTtgRy7tCmuKCyL+69Wgdms
+DVEsSl6N89h4qDeqnDuCzEsVuS76SrXj3qc9DpnshlsdBdM+cVQ6ApRJqLMyBoQ
CHaxO6Ahihieey3Mvot4tTskxjD6hRZFMPGpE33hToG1QJnZE9pXDxiPcG7+bbnA
VPPtMc79tIBVO3FnI0DQtebEkUEtrzSoNDwLAd1FwvF8dEiy2DIa/qsIPjiaMSHp
gOhnkHZUIxtOa1tOaxWnX2ChEkUHn7A85CoPLcaAQb5rF2NA5l/9wPML7tX9QfHs
i5CKzoCb2rsZMwv5kmKh8Tr0ydHW+17X4h7CA5t1JSKysutEto9k4tkuVX+va1NG
REn4nwxUIWzOeTvlN69jJbWSI9WQLvVXc2FgJRsML1Wll7O5kSQUE0Ma1t5MwBTx
NKPMfCjkXoC9R0wVg7MuHhKy+iExfG8pg3kMJD9qgT/Ma8pVGeo=
=+4hx
-----END PGP SIGNATURE-----

--------------3DBeletLI8WeavBm45sD3TFG--
