Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7993F58E37A
	for <lists+linux-man@lfdr.de>; Wed, 10 Aug 2022 01:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiHIXBs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Aug 2022 19:01:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbiHIXBr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Aug 2022 19:01:47 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF89065825
        for <linux-man@vger.kernel.org>; Tue,  9 Aug 2022 16:01:42 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id ay36-20020a05600c1e2400b003a4e30d7995so170603wmb.5
        for <linux-man@vger.kernel.org>; Tue, 09 Aug 2022 16:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc;
        bh=tWL2WHYItslx3ulimswaHouHEGfamUH2cNSxDu7iEss=;
        b=KLHTOzD7QFbkW0qw9Fe9ghEsXUGQ869j2CpaaU3B/DzI6DMZYvt+E7FfMGWG9DM6cX
         lqf9flTxOX6pCIgsWSjVfecaYTHiVQuSw6YfZ2/4FgJdFhWnozOsgRCG665vZJme4ULr
         hnO1rzG+rs8VA21QFodCRTJxtszWSc+zmXPDcsGuNJ1U2L50BnESyMtn7w7UNEW7RkhM
         YpkYLMUNbcMD25yWtZPOWhYVRj046ESKQ0oRbTDY83NiyFQCX4rX+X+YPC5sOGaXo+Pz
         C2oKrbpCz14NGi4hc/yPUVerR8iGckJCmiWMF2bUAKM1KWv7nS6/NnEAW0q2BsogjQ+S
         UYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc;
        bh=tWL2WHYItslx3ulimswaHouHEGfamUH2cNSxDu7iEss=;
        b=GiDHLt2UJWpuzunQKbJu3vdUZNrxvcZVWuA4ardjRYpfEjMe2Qjwq9TUlehuyd6IFH
         YgGyXgiK3HFVq0cRksrD/CmEHb0RZ8UppKqeDhCVDlP7CjXtv/CqfpOovxwMdU0o27OK
         57Yx4V4wkUa/8R4dTmPMS/mY6EiAbNIz3/1T+O52Eviq7Q5E1sE0vh50Q6ipFzzROvtr
         xfQwmZL4bk4wG2pqX/DmZhPkU+pDR8RhuFuXo4o1I/Xd2Q/rwPbvhDCRyTJg1RX3BMyv
         wt3kw3ZjrD++Zx2ouK0kNYShsmxMELcpW+Tm7VOBpBgUX11h//QOoo2oxpKHuWxDvPcn
         svRQ==
X-Gm-Message-State: ACgBeo0+sefEFYmuOf3xkRe+jKMAsHny75k57uZ77CmJFonamvF9kl3J
        uFrEH8OgD+bdcv9ziYfRLKw=
X-Google-Smtp-Source: AA6agR5T9SQJy626NBr47jjPKkz8AM0LgWSBqRTW+FwQkJ00BH42PJGJ/64PlJXaFoMxLjtyWrlmDw==
X-Received: by 2002:a05:600c:3b8e:b0:3a5:2313:1db0 with SMTP id n14-20020a05600c3b8e00b003a523131db0mr344079wms.185.1660086101429;
        Tue, 09 Aug 2022 16:01:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id x3-20020a05600c420300b003a54fffa809sm317973wmh.17.2022.08.09.16.01.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Aug 2022 16:01:40 -0700 (PDT)
Message-ID: <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com>
Date:   Wed, 10 Aug 2022 01:01:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.0
Subject: Re: man7.org update
To:     Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Quentin Monnet <quentin@isovalent.com>
References: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
 <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6gsv2ANmPZdt5yJ2gSQc7hQV"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6gsv2ANmPZdt5yJ2gSQc7hQV
Content-Type: multipart/mixed; boundary="------------4dosjAzDsaCllHgP00Aa4tax";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>,
 Quentin Monnet <quentin@isovalent.com>
Message-ID: <95f12d46-f6e6-25b0-123b-5ce2d24e3ec0@gmail.com>
Subject: Re: man7.org update
References: <CA+FoirA6PSOztihqrvOTVRKiSR8KnqiiZM-Tj9jVZjur3cia4w@mail.gmail.com>
 <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>
In-Reply-To: <CA+FoirDEkxx5=LJbkrxSbieEbN__3kk5KnSuFooeff+hUo8cCw@mail.gmail.com>

--------------4dosjAzDsaCllHgP00Aa4tax
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgUnVtZW4sDQoNCk9uIDgvOS8yMiAxODo1OCwgUnVtZW4gVGVsYml6b3Ygd3JvdGU6DQo+
IEhpIEFsZWphbmRybywgbGlzdCwNCj4gDQo+IEluIHNob3J0OiBRdWVudGluIGFuZCBJIHdl
cmUgd29uZGVyaW5nIGlmIHlvdSBrbm93IHdobyBtYWludGFpbnMgYW5kIHVwZGF0ZXMNCj4g
aHR0cHM6Ly9tYW43Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuNy9icGYtaGVscGVycy43Lmh0
bWwNCg0KTWljaGFlbCBLZXJyaXNrLg0KPGh0dHBzOi8vbWFuNy5vcmcvPg0KDQpUaGF0J3Mg
aGlzIG93biB3ZWJzaXRlLg0KDQo+IA0KPiBUaGlzIGlzIHdpdGggcmVnYXJkcyB0byB0aGUg
Y2hhbmdlcyB0aGF0IHdlIHRhbGtlZCBhYm91dCBwcmV2aW91c2x5IHRvDQo+IHRoZSBicGYt
aGVscGVycyBtYW4gcGFnZSBhbmQgdGhlIHNjcmlwdCB0aGF0IG5lZWRzIHRvIGJlIHJ1biBp
biBvcmRlcg0KPiB0byB1cGRhdGUgdGhlIG1hbiBwYWdlLiBUaG9zZSBjaGFuZ2VzIGRvbid0
IHNlZW0gdG8gYmUgcmVmbGVjdGVkIGluDQo+IHRoZSBsaW5rIGFib3ZlLiBBc3N1bWluZyB0
aGF0IHRoZSBzY3JpcHQgaGFzIGJlZW4gcnVuIGFscmVhZHkgYW5kIGFsbA0KPiB0aGUgY2hh
bmdlcyBhcmUgaW4gcGxhY2UsIGRvIHlvdSBoYXZlIGFueSBpZGVhIHdoZW4vd2hvIHVwZGF0
ZXMgdGhpcw0KPiBwYWdlIHRvIHJlZmxlY3QgdGhhdD8NCg0KVGhlcmUgaGFzbid0IGJlZW4g
YSBtYW4tcGFnZXMgcmVsZWFzZSB5ZXQgc2luY2UgdGhhdCBoYXBwZW5lZC4gDQpOb3JtYWxs
eSwgTWljaGFlbCB1cGRhdGVzIHRoYXQgcGFnZSBhZnRlciBldmVyeSByZWxlYXNlIG9mIHRo
ZSBMaW51eCANCm1hbi1wYWdlcy4NCg0KQ2hlZXJzLA0KDQpBbGV4DQoNCg0KLS0gDQpBbGVq
YW5kcm8gQ29sb21hcg0KPGh0dHA6Ly93d3cuYWxlamFuZHJvLWNvbG9tYXIuZXMvPg0K

--------------4dosjAzDsaCllHgP00Aa4tax--

--------------6gsv2ANmPZdt5yJ2gSQc7hQV
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmLy50oACgkQnowa+77/
2zKjEA//apjoZfdPE+USRu5wBFUviuqeU9o+mPOrQv8vTLlY5ixOU8UuqQTDUrs2
KjDRuFl7coLk+GOWltOS4zZEx7HSATFZ4eglVPveyqYKHoghySmQSfLrjOvikS5K
CAb05uAHyIMyJGqQFIUi+lykGYtUTs9HseUS/9jgdt72wPxuqmKfrCL5RFxwZgpw
n/4PQkY7Ltps8hyTULQi946zW+s7cxVYAQGK9GqajYm/PfCQqqMg+RWjfOgfEbbk
lkKuwn0pvcvd2rEUV4c0432djNZBBzzV9IvZewnniRgWV6oq37as0958Wu6eLGLx
sIxy/YF4Jbua+h9uHlKlAZu49q4yCF136fFN7yXqztsuERnwoQFPcsOXDCzBhXg0
2lR9eepOROO8FC41mKltKidfScmGp8FpGC2PPOdjUTsp+6v6ldapqZrY/syS8WLu
hT5cfqs/Rne2xXAzTKOKm9rCicYNBBuj9lNYprhsyTFifyJ//OFKIbnKeWCNm4QX
qRICapyJxL+6SQOINm8OEjBucn8ud1DR4gY8GAUIbTA23a/F2zKQBw6bC6KtR7Yk
2WGIzdHe7aNsIOw/opR7UeooQuWsEvKED6rNSIUeCDhbkeFyqV9C3IwA56fhBsXZ
OcEpUw4iNb/s2h/Xn0g+4Uij/RiYm37pFF2j7hRf8Rdjg+Ytia4=
=efUP
-----END PGP SIGNATURE-----

--------------6gsv2ANmPZdt5yJ2gSQc7hQV--
