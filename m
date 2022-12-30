Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC3C1659DBE
	for <lists+linux-man@lfdr.de>; Sat, 31 Dec 2022 00:05:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235568AbiL3XF3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 18:05:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230074AbiL3XF1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 18:05:27 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B14361CFD4
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 15:05:26 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso16093253wmp.3
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 15:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cpOlczktrkXEEDP2ckOjG9WookkTGL4Cx0zswAnXpf0=;
        b=X5ZN2kHPy5ltfpIFU5VrSxeVK/Qx3RGCcJOSRCNDPNZ5E89ihHVornxius1KHaGy+s
         Q6QD1QD8W41ZIylLh2PjRalhe6rr66UHSVIWoUm10Ux4dJYLUJeyN4OHUwwwCyWKw6e0
         2WhiF18BB8ZzAUM09KadkC3P4XtxqXhyKT//w6Pn9lhF0XTEDFexdN02gKwCvpGYMXB0
         agku3AG8oqyFskFP/R4kw1IGsR/uiAqSdMDkRpT7i0qGJpUkKXSRhH3iLy7IytunasHu
         KZGj7joJdM0rhFEfbsA08cCHVad+vqh0TBJYypdvS+c+pP0s3t1yCFzYff/aWKDpuxoa
         yTbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cpOlczktrkXEEDP2ckOjG9WookkTGL4Cx0zswAnXpf0=;
        b=DwQg2Ner3mIJAuHr2A3x/N+98sG65UYQgJ7aEPx1aTHPN3trh1DLCYFsH0qRt6I09n
         xHI+GAY/VvmOZak2Adwl5io5OYD82I0Ci2yJ38+tbFBDzcodGNqZkUdH1RVIsx01xWBp
         jrrnh5Mc2Cy6iU1ufEtetL871ZaxYi/6ifq16qP0dNdHqqiezkzs3IgZ63JEZowP0+Oe
         lZYaE7gJc7v51slIBConVOJan327dfQFH1r2YIP8hooUSuNLUyj+x5nPAuSnGdwfhEnq
         1BDKWDqYbInbOm1s4P1TmRPs7hK7OJoOwDgtGKyVJamV9dt08snnkWR94DI24cBE6HFO
         feGw==
X-Gm-Message-State: AFqh2kpO4Qrqg7sR9QvxlmzJukMFxj6Q0CSRTxs2k6ZKaikh6OacMKXu
        6mcdlGw8IaqJj0wDS9qDTsA=
X-Google-Smtp-Source: AMrXdXsSism4ptTD268u9iYjPcKXT0tnjQMVcq4+X3h0pln+s/EkhRLZiu0Ih82uJ9jAVjFKNfpVFg==
X-Received: by 2002:a05:600c:358e:b0:3d9:9755:d659 with SMTP id p14-20020a05600c358e00b003d99755d659mr6257512wmq.22.1672441524673;
        Fri, 30 Dec 2022 15:05:24 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id az27-20020a05600c601b00b003c65c9a36dfsm29011579wmb.48.2022.12.30.15.05.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 15:05:24 -0800 (PST)
Message-ID: <01e8c816-6b92-5776-722e-7a6c5a45a913@gmail.com>
Date:   Sat, 31 Dec 2022 00:05:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: misleading note in
 https://man7.org/linux/man-pages/man3/bstring.3.html
Content-Language: en-US
To:     Aaron Peter Bachmann <aaron_ng@inode.at>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------KXPyfCkLTzs06CoaOcv3mk0X"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------KXPyfCkLTzs06CoaOcv3mk0X
Content-Type: multipart/mixed; boundary="------------3m6c4zcW6aq1g89vMDoXkz4a";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Aaron Peter Bachmann <aaron_ng@inode.at>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Message-ID: <01e8c816-6b92-5776-722e-7a6c5a45a913@gmail.com>
Subject: Re: misleading note in
 https://man7.org/linux/man-pages/man3/bstring.3.html
References: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>
In-Reply-To: <4e7589dc-2c5c-d705-e2a9-4b0878bfce3d@inode.at>

--------------3m6c4zcW6aq1g89vMDoXkz4a
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGVsbG8gQWFyb24gUGV0ZXIsDQoNCk9uIDEyLzMwLzIyIDIzOjQzLCBBYXJvbiBQZXRlciBC
YWNobWFubiB3cm90ZToNCj4gSGVsbG8hDQo+IA0KPiBUaGUgbm90ZSBzZWN0aW9uIGluIGh0
dHBzOi8vbWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjMvYnN0cmluZy4zLmh0bWwgc2F5
czoNCj4gDQo+IFRoZSBmdW5jdGlvbnMqYmNtcCooKSwqYmNvcHkqKCksIGFuZCpiemVybyoo
KSBhcmUgb2Jzb2xldGUuwqAgVXNlDQo+ICDCoMKgwqDCoMKgwqAgKm1lbWNtcCooKSwqbWVt
Y3B5KigpLCBhbmQqbWVtc2V0KigpIGluc3RlYWQuDQo+IA0KPiBUaGUgc3RkLXJlcGxhY2Vt
ZW50IHJlcGxhY2VtZW50IGZvciBiY29weSgpIGluIE5PVCBtZW1jcHkoKSBidXQgbWVtbW92
ZSgpLg0KPiBUaHVzIGl0IHNob3VsZCBzYXk6DQo+IA0KPiBUaGUgZnVuY3Rpb25zKmJjbXAq
KCksKmJjb3B5KigpLCBhbmQqYnplcm8qKCkgYXJlIG9ic29sZXRlLsKgIFVzZQ0KPiAgwqDC
oMKgwqDCoMKgICptZW1jbXAqKCksKm1lbW1vdmUqKCksIGFuZCptZW1zZXQqKCkgaW5zdGVh
ZC4NCg0KVGhhbmtzISAgSSBmaXhlZCBpdC4gIEFuZCB3aGlsZSBkb2luZyBpdCwgSSBhbHNv
IHJlbW92ZWQgdGhlIHRleHQgdGhhdCBzYWlkIA0KYnplcm8oMykgaXMgZGVwcmVjYXRlZC4g
IEkgZW5jb3VyYWdlIGl0cyB1c2UuDQoNCkNoZWVycywNCg0KQWxleA0KDQo+IA0KPiBSZWdh
cmRzLCBBYXJvbiBQZXRlciBCYWNobWFubg0KPiANCg0KLS0gDQo8aHR0cDovL3d3dy5hbGVq
YW5kcm8tY29sb21hci5lcy8+DQo=

--------------3m6c4zcW6aq1g89vMDoXkz4a--

--------------KXPyfCkLTzs06CoaOcv3mk0X
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOvbqwACgkQnowa+77/
2zLiVw//YJcpHrVYNn6hih0G/w3ZhVQKT7OifTrup6sWEOFtx66QtX6bG3qjwJx8
rW781LkoRT9tL6NkYswLf24cDXQqJtIivBa9zOlQXXFY45T4KY35W+RAoGzXPLZk
iYi2kLCtEIp4Fi09ZbmElEXS2f4RA+CsySG4Tu88xX1SaoFHDP7d9899A4vrV3km
mQHdx+WuM7mlUWBICHFzka6fGyWAxiC/ktSaYxQyrz3Hxa8Ri9en8nXjemxMkmH+
ur/cUms2KGfQ0hp4UJ6hxKANZTM1dHQmYe/KD8LeHnwwgyz2ZVudmzV1zG9sE/Ek
xrYyZ2J62NBxmbBilWKZ05kMsiIF3wAoy0ATOAeczNyB8wLkGHP5Xxn/pVbYnwQG
Bnc0JJ5dvFv+Z0hj4Iokt3+FbJlZqW6YOzqmBHu+EdTO2q10FGntb3J5pp17xyoM
S7Srd9IDU9spkHib+BDNbmxG0PpoK92gFaBq7eoaq8ufGns4R/0PnZVdGM2g2NJK
6u7eWnUrINOR8Hy8NbysDVJDiBCzGfVGpvaNMibASpZrTWsJqaIPqUJRE3yVsgSh
i1sbme5LFxvkF48J1LHJUNdSWCp4esyy7JdpvadrrNFyrEJ5m0jS78sbbtADCia4
VSByWxHSnl83TpvJFKdSrg1jv0Lrj9Qrbo8VSa/GR/F6j9EeEwQ=
=gJcf
-----END PGP SIGNATURE-----

--------------KXPyfCkLTzs06CoaOcv3mk0X--
