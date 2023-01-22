Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DC9B6772A0
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 22:22:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjAVVWH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 16:22:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbjAVVWG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 16:22:06 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC44512870
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:22:05 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id fl11-20020a05600c0b8b00b003daf72fc844so9363464wmb.0
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 13:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kmnr4ZWMCJMG5UUZebCw3W/VW2WCbT3oW2J7hkz0r1Y=;
        b=Uc8auzSTVjjqqVL0Mtn4QfN93e66JlAWWmGiNf/6NRxFfSpe3u4NN5VrgNqzNYxqlE
         UvCFWMi2zzOun3tpKu7v/29rLvW49ykRv3+KEuQI+daWpMQVIkZEj8YqXAT9639Ct8KU
         ay932vvX5f4wZwr05ToEL17x+V96U7jrlW9GwnE13W5+r7p/yraxSQ1tPy9QCzBdLXrc
         tJlrLysCcqhUY1321Ec7lasxy6f2zVILDsWq4WcZPvPGHmeAz5js+2BhXO/Q5as3S6kK
         bsa2GT1VLvgNBx8ZENl+f4FXb2HjW5a2iJ+Ec06P/X1X8EHDQ5DK+RkkPte2vKdqqdpF
         82WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kmnr4ZWMCJMG5UUZebCw3W/VW2WCbT3oW2J7hkz0r1Y=;
        b=aHGGHa9dsMwHMZPbTtIbBwkScKSZEAgyCQSQEGqa7o9d5/YPpEqiRbCGnzSZdboa8W
         HlIlQCR4NXYGIzG3vlvx4anSeAilxsyd39C/LB9CvYarhkGxONEmCAAPEJU4mlc/UaXW
         axLWzMkLMzCSBy1Jjlv0a6063MX5mYRbpHv+7KzXdKN6dgJNeWgx5yuNZXhv89XhxeJH
         OvgZZFlxFjzrlgfan80VXM6KNlwDYlqQLdV5xbivbnGJGW20PEelRg4u7/cSU8RWqasF
         Sl0g4GBoBX/V7tGNWDtmaSA5JcMi2boOQGbYY4jTLA0N0G3A6FXjCHMLzAEVWYtZzFRb
         cC2A==
X-Gm-Message-State: AFqh2ko1S+CKxbTPsdYGN62FQQV/bjczr02wai53ArYMG8V8v97024fn
        g5gL2x57/dDINk/GTWzGH7B42l8Qzdk=
X-Google-Smtp-Source: AMrXdXsaCxCqPa4eT9A0MyrzZ+chMSkY72UvdLQLnkrxYOe3nq80xgrGB3W1gOzHDHvYJ6DZNMdrbg==
X-Received: by 2002:a05:600c:3511:b0:3cf:9ac8:c537 with SMTP id h17-20020a05600c351100b003cf9ac8c537mr18260323wmq.14.1674422524404;
        Sun, 22 Jan 2023 13:22:04 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id k16-20020a05600c0b5000b003db0a08694bsm8742208wmr.8.2023.01.22.13.22.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 13:22:03 -0800 (PST)
Message-ID: <623dc3a0-e6d1-e8cf-9e69-06721c4fcbcd@gmail.com>
Date:   Sun, 22 Jan 2023 22:22:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: Issue in man page boot.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230122193132.GA29262@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230122193132.GA29262@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------j6FuvpfxYKTIw277T5jv67sH"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------j6FuvpfxYKTIw277T5jv67sH
Content-Type: multipart/mixed; boundary="------------5LR5rBSfQlez5RuVXyjvS7df";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Message-ID: <623dc3a0-e6d1-e8cf-9e69-06721c4fcbcd@gmail.com>
Subject: Re: Issue in man page boot.7
References: <20230122193132.GA29262@Debian-50-lenny-64-minimal>
In-Reply-To: <20230122193132.GA29262@Debian-50-lenny-64-minimal>

--------------5LR5rBSfQlez5RuVXyjvS7df
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEvMjIvMjMgMjA6MzEsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWUgMTogIHJ1bmxldmVsIDIg4oaSIHJ1bi1sZXZlbCAyDQo+IElzc3VlIDI6ICBz
ZW5kbWFpbCDihpIgQjxzZW5kbWFpbD4oOCkNCj4gDQo+ICJUbyBkZWZpbmUgdGhlIHN0YXJ0
aW5nIG9yIHN0b3BwaW5nIG9yZGVyIHdpdGhpbiB0aGUgc2FtZSBydW4tbGV2ZWwsIHRoZSBu
YW1lIg0KPiAib2YgYSBsaW5rIGNvbnRhaW5zIGFuIEI8b3JkZXItbnVtYmVyPi4gIEFsc28s
IGZvciBjbGFyaXR5LCB0aGUgbmFtZSBvZiBhIg0KPiAibGluayB1c3VhbGx5IGVuZHMgd2l0
aCB0aGUgbmFtZSBvZiB0aGUgc2VydmljZSB0byB3aGljaCBpdCByZWZlcnMuICBGb3IiDQo+
ICJleGFtcGxlLCB0aGUgbGluayBJPC9ldGMvcmMyLmQvUzgwc2VuZG1haWw+IHN0YXJ0cyB0
aGUgc2VuZG1haWwgc2VydmljZSBvbiINCj4gInJ1bmxldmVsIDIuICBUaGlzIGhhcHBlbnMg
YWZ0ZXIgSTwvZXRjL3JjMi5kL1MxMnN5c2xvZz4gaXMgcnVuIGJ1dCBiZWZvcmUgSTwvIg0K
PiAiZXRjL3JjMi5kL1M5MHhmcz4gaXMgcnVuLiINCg0KSSBiZWxpZXZlIHRoZSBmaXggd291
bGQgYmUgdG8gdXNlIHJ1bmxldmVsIGV2ZXJ5d2hlcmUuICBydW4tbGV2ZWwgaXMgbm90IGNv
cnJlY3QgDQp1bmRlciBhbnkgcG9pbnQgb2YgdmlldywgaWYgSSdtIGNvcnJlY3QuICBJdCBz
aG91bGQgYmUgcnVubGV2ZWwgZm9yIGEgbmV3IHRlcm0gDQpmb3JtZWQgc3BlY2lmaWNhbGx5
IGZvciBwcm9ncmFtbWluZyBwdXJwb3Nlcywgb3IgcnVuIGxldmVsIGZvciBub3JtYWwgRW5n
bGlzaC4NCg0KQnJhbmRlbiwgY2FuIHlvdSBjb25maXJtPw0KDQpDaGVlcnMsDQoNCkFsZXgN
Cg0KLS0gDQo8aHR0cDovL3d3dy5hbGVqYW5kcm8tY29sb21hci5lcy8+DQo=

--------------5LR5rBSfQlez5RuVXyjvS7df--

--------------j6FuvpfxYKTIw277T5jv67sH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPNqPoACgkQnowa+77/
2zIGDg/9FNv2pWwLZEyRpVb9MFfN3kz9SM10j9e+8Wj4fs0aadyRNgZ0YYh2ONzX
MBMpphycYClnJQ11Q2+qZy//BBiVCxLWPre1WaznozMqsfFckRR0lp78Cq46D9XG
TieJXkaZndCGFMzTgMaTdA0MVtrepP6ENa2v8Pr827d9cvvQC0SH5EnxdxLzlaMi
GgD5FQvOaZMU62Mcm6/6i/qGdt7kcvZpuFYEbF6PtahW6E+iP+svNoGFj1ymo2NL
MAPKPMg2KuOmQZSXMXzxl1mulK2LoQcheYJNhjqN2n2lby/gB4B/7SNOf81Adm1s
G02Vo3ZeG6oyhizcXkKgE3UM5lMYERYJM4uQAmmnYPjuJcrd+uCt0lw2Py1MxGYB
7wsiNuYfm+ip/i1TVQEKi/P33LFlem8ehluMRphai8dAMjnTws3r7ZZmZAiWqfGO
JecQ9r4HlVNkAQNDgNbH/DKZM4TObhTlU5QmQS3eSAeip6VqxqRNBskuAOOBGP/4
Rd6HR7xM2Ja5mEjfVLRmTlelLdN+A9pEBisw+Mkhi5aWKjiym7MBXeSSDMs7HyVh
NIkbil8mM174Q37baln5IqljWRdbqNB3GB7AYSw9CIr1T4txLrXlw2mKqj/qS/gK
5ayFL4ll/pPqJXePBLzT7yKycn2Xh51TCK99G9msdxG2cH0UDSk=
=rKrB
-----END PGP SIGNATURE-----

--------------j6FuvpfxYKTIw277T5jv67sH--
