Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC733641F49
	for <lists+linux-man@lfdr.de>; Sun,  4 Dec 2022 20:45:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230015AbiLDTpF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Dec 2022 14:45:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbiLDTpF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Dec 2022 14:45:05 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0AF310B6B
        for <linux-man@vger.kernel.org>; Sun,  4 Dec 2022 11:45:03 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id h10so6207480wrx.3
        for <linux-man@vger.kernel.org>; Sun, 04 Dec 2022 11:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=36UXZOhZ3WFo0GtEtn+oMLFMghoCpqkaZLBQiQuevDY=;
        b=oXsom50JBm0aRqHXX0psHbspiNCE6z9KU106mhQc8fxzVtFjHH1OMNy1IBHsNDuBC2
         GQb+J7XOm1zkMJv68y2KvBSr5CZpgeOGKYbcL9mnwT/4FPxSwWdCdkg74xZ46dyi7Pjs
         3qjOe+4p4E7NM0EWvoRFuz89I4rlzWO0DeFqd5LXigGs7sOPi0XqrbH54q2UtXLnRi7C
         WCdCIxqSwiLuK31Nd3QWUTG3X5buH+YrCgSXT9pRUS6EYj2fCPaT04aAUKRMhcxF1LxN
         pReQGFQuBsCQ0lCOKaBlZjKNMgeCOWySEPEt+D/11Vz3mqUjDWTEKUYLnSNuofEC7Fey
         tBGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=36UXZOhZ3WFo0GtEtn+oMLFMghoCpqkaZLBQiQuevDY=;
        b=IIlDBpkdubm1gBcP1pSzp9tMr7N5E3TJwBzsH2f1YwMAtvx6IfmsdoiLIU/2UUFCPe
         urkjMoeCQsJmygWq9bVjw6A8qD7BrQQcvFNZ85cSMz7mWQzsiXW1zjMdrOD8jB2XHjHH
         XgcTZM7I1uYxa0Z+XNTJZiFXgtpB6HnsojG3Q3rn0we0V72TmUVYubpHPad1yeyUGqEv
         pVDkjTedH2WHMyYFmWfkw2NoZ5hJVFFSRqwn8wczsReYCxo+uYVkC5hnSIDYGqEDn4rD
         rNTfVoiog0W8Dob7QAutHzHF8GUHkVi+x0RD1FvntVlObXPjYEZEkeME2MkK3WSGtqxR
         HGbw==
X-Gm-Message-State: ANoB5pkvwirXdRlSy3VUGXgtTsMRVLC7wLhga9RyQMNBgW9MfTC/g0DQ
        y24Ummhm44W7yBxQCdTW470=
X-Google-Smtp-Source: AA0mqf5PF5NVr/eDeJOI5D0ufAibmCKoHc0H/owrhKBeJYVuvD+zGH2qqp+/szRFVntrW6xHeBnkHw==
X-Received: by 2002:a05:6000:124c:b0:236:2314:6d4b with SMTP id j12-20020a056000124c00b0023623146d4bmr40977262wrx.112.1670183102294;
        Sun, 04 Dec 2022 11:45:02 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id q17-20020a05600000d100b0024207ed4ce0sm12508220wrx.58.2022.12.04.11.45.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Dec 2022 11:45:01 -0800 (PST)
Message-ID: <5985b09a-34aa-c522-02d0-9fa1b5624af2@gmail.com>
Date:   Sun, 4 Dec 2022 20:44:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: Issue in man page proc.5
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20221204090714.GA635@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20221204090714.GA635@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------B3anddLIvc0gWuXy2Y0Ufyuo"
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------B3anddLIvc0gWuXy2Y0Ufyuo
Content-Type: multipart/mixed; boundary="------------Tj55Bw8IsW606gh6o54CqRYK";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <5985b09a-34aa-c522-02d0-9fa1b5624af2@gmail.com>
Subject: Re: Issue in man page proc.5
References: <20221204090714.GA635@Debian-50-lenny-64-minimal>
In-Reply-To: <20221204090714.GA635@Debian-50-lenny-64-minimal>

--------------Tj55Bw8IsW606gh6o54CqRYK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGkgSGVsZ2UsDQoNCk9uIDEyLzQvMjIgMTA6MDcsIEhlbGdlIEtyZXV0em1hbm4gd3JvdGU6
DQo+IFdpdGhvdXQgZnVydGhlciBhZG8sIHRoZSBmb2xsb3dpbmcgd2FzIGZvdW5kOg0KPiAN
Cj4gSXNzdWU6ICAgIGtlcm5lbCDihpIgTGludXgNCj4gDQo+ICJJPC9wcm9jLz5waWRJPC9p
bz4gKHNpbmNlIGtlcm5lbCAyLjYuMjApIg0KPiANCj4gSTwvcHJvYy8+cGlkSTwvbWFwX2Zp
bGVzLz4gKHNpbmNlIGtlcm5lbCAzLjMpIg0KDQpJIHRvb2sgdGhlIHRpbWUgdG8gZG8gYSBn
bG9iYWwgZml4IHJlZ2FyZGluZyB0aGlzIGlzc3VlLiAgSSBoYWQgYmVlbiBkZWxheWluZyBp
dCANCmZvciB0b28gbXVjaC4gIEl0IHRvb2sgbWUgYWxsIGRheSA6KQ0KDQpDaGVlcnMsDQoN
CkFsZXgNCg0KDQotLSANCjxodHRwOi8vd3d3LmFsZWphbmRyby1jb2xvbWFyLmVzLz4NCg==


--------------Tj55Bw8IsW606gh6o54CqRYK--

--------------B3anddLIvc0gWuXy2Y0Ufyuo
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmOM+LYACgkQnowa+77/
2zKUng//XFQu480JE9Zyt9AU1wf4w0JHWH9jPLeEHOzxRGL19Yj5dxLRck1xXoWW
jpcqc+aSi/5snTBiEfdKSXfNk/S8LsuKWDSvTLZGn5ec5oKqWzms+ahGxre+Y87j
I9739XHDjW1K/VfE2O0fMYeRBgB8J+dI5k1Vns8RjXbYBTx59KUtMqFvtHUxg6dX
VyxXThi9bj8q3nEp1L+e2E3U3zerhu2eWdOMiZogVj8H+obewVCdS/vwXB+HPzE+
odbDpRUGNfcVyR8wakZBAoSKqjU+uG1b5qs8LTWQui8XYcOmgve4BzP3ouPfJb40
ZMyPvfWFXm8ChZmUi4B6B7sQf+G4a5n+/TJYXJ1aKX88M8WJ37/Mes/QQGtlWcql
GIXRVkI1zLAxT/aKRhY4clPb9C6WLaV5gTOZSiEfTnhKFzBQd3huBcCLdxgSIRn5
e9llOZzLvjyNp7227d8+XU13xRsmJ64x7QXxB9lrm3Svo5vC/MERdvnWnWF+cXel
JHXmY8aIRuST1Ox8wIRLm5VgTdgefpSVQn51xm/0oW99uabtWEHhgDA2qJS173q9
yeR7jrDXiuI9CE+zDrnuoQq8mBJ4Dobsc5t4lUgm9FeEPhJHr162+KdCKeyXX8zj
ZFmNNgi7GFI7S27WjpyMNx8BLcDuvHFUMxJgIA1x9RJPDycU4Ec=
=j42w
-----END PGP SIGNATURE-----

--------------B3anddLIvc0gWuXy2Y0Ufyuo--
