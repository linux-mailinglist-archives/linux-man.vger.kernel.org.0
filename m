Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA17A68F977
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 22:06:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjBHVGg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 16:06:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbjBHVGf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 16:06:35 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD7F421D
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 13:06:35 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id h16so18143720wrz.12
        for <linux-man@vger.kernel.org>; Wed, 08 Feb 2023 13:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ySQkj6nPl8ShBH//iQ/f3TakSj0cuu6auzFqlxvoJQM=;
        b=XikkRzPMuheepqOo8S/wzpvo/AFEazbUTHsfmOsRHdLb9kbKJd1V5OwWAMBdlo7DOh
         slI8Mfj13c7hLg6mHkEjQrllkEfexCq1CgE862aT0Y/sy1Zq+81l3BY1jHvamBk7Aoht
         xmmv0u38nh4H2eL7gEYZL0uO7wbkZhUVwFJtfEXcT4ZpCrZCNj8FVuIoeomlSp9aV2vD
         u2Nw690svhV1Ly+axm/rWaEcCunRLWahKsEqoMk8AvgYmxnOCRQkXECHCY8XtRvWxHl+
         flaNDOZXux67kIL5Gy7BRA3KmLW0pieNed2ZuL4wDecXAurJEtRgm0YDvPmTWr8zvg7o
         9T3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ySQkj6nPl8ShBH//iQ/f3TakSj0cuu6auzFqlxvoJQM=;
        b=RMBg9csxmP5rI4dk8MRakeDKmTpGl4IJ7jvB+oi1XCG0m19FIHm2FeVtmuNJTz1NQu
         cK+tvr5rzJ8qCoZgxMqzi7ALCLVohbwkHXbz784eb4SRykq4+EyNlzGHm130dQADMjyY
         FfKUoFTgSi1xNAqZrCvs3YYX/iT1SoEqZelniLHP8HpiRVtboq5ZB5kuzpNJhfyg39eR
         kJ+nTe//CkCmJeeNigf42pDkzTbYp3Dz73GSh9Y4MCSkBWTfZ5o1xHXVYAM0bB0yDs5O
         76wGNVysOU+lMApfeptzyKpF/9bKQ4H+s0Tp34e0FIm5AabGqdQpP1K/vL7uW1zILYDM
         6SwQ==
X-Gm-Message-State: AO0yUKXbwqFjJQjNxe93WSYqOIwG9MOC4JXeODRnpbLGV1F4H3LxviOu
        b8RwHLH7LzTsegwKAuRVWJFNzPZcyvM=
X-Google-Smtp-Source: AK7set806nnwthzSg8kx6pciAHpYZ6fub3XSbcLXh5acdoPnU9bWGEERC92lqkZffvs1Lu6At8VFAA==
X-Received: by 2002:a5d:4fc8:0:b0:2c3:ea56:81c7 with SMTP id h8-20020a5d4fc8000000b002c3ea5681c7mr8635142wrw.43.1675890393591;
        Wed, 08 Feb 2023 13:06:33 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h1-20020a5d4301000000b002c3b2afae00sm14191712wrq.41.2023.02.08.13.06.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 13:06:33 -0800 (PST)
Message-ID: <cef9233c-3b00-7b0c-6446-cb55b0f4d3ed@gmail.com>
Date:   Wed, 8 Feb 2023 22:06:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>, linux-man@vger.kernel.org
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
 <20230208210047.53poygyjqxffxodn@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230208210047.53poygyjqxffxodn@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------z6NKAfPtCf10zaZF55R54ajN"
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
--------------z6NKAfPtCf10zaZF55R54ajN
Content-Type: multipart/mixed; boundary="------------kWLAMCbjrdAN3UGOmS12RQI0";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>, linux-man@vger.kernel.org
Message-ID: <cef9233c-3b00-7b0c-6446-cb55b0f4d3ed@gmail.com>
Subject: Re: Using C23 digit separators not locale digit grouping characters
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
 <20230208210047.53poygyjqxffxodn@jwilk.net>
In-Reply-To: <20230208210047.53poygyjqxffxodn@jwilk.net>

--------------kWLAMCbjrdAN3UGOmS12RQI0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub!

On 2/8/23 22:00, Jakub Wilk wrote:
> * Tom Schwindl <schwindl@posteo.de>, 2023-02-03 13:27:
>> I wonder if I'm the only one who thinks that the digit separators look=
=20
>> irritating for both, hex and octal.
>=20
> Not only you.
>=20
> I think C23's choice of separator is particularly bad. I found undersco=
res=20
> (used in Perl, Ruby, Python 3, Java, Rust, and likely many others) more=
=20
> palatable.

IIRC, that was suggested at some point for C23, but don't remember; maybe=
 it's a glitch in my memory (I think it was suggested for separating bina=
ry (0b) input).  I can't understand how they chose ', especially when in =
some countries it's used as the decimal point  (I don't know if that's of=
ficial, but I've seen it in hand-written text quite often here in Spain).=
  I agree that it's probably one of the worst separators they could have =
chosen.

Do you think we should use an underscore in the manual pages?  Or what wo=
uld you do?

Thanks,

Alex

>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kWLAMCbjrdAN3UGOmS12RQI0--

--------------z6NKAfPtCf10zaZF55R54ajN
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPkDtcACgkQnowa+77/
2zKfCg/+Nk//f6XGBTbaR1rfS4IRPfQSKoacuu9W0zceYpfaF7PuEa2bKsGtUv1m
XGB87Djl7y3quNRx0BeKMHBa8dvZ8cFt2I6SGRi0XsWVJFEhpu6VXVHCuk/Yh1jB
iVYm5W/glL0h70zOdXYxAa+fH2+dt+0rfEaRRNnL4CMYE3gKdLHVcqbIQ6dPCdJr
gsDOUKhOzqfFfXVcNhxALhshvLIqafjQEuyH6pF5FDt+RnqyH6M0L5NHnYkLw0B3
20pCLepMTR0MbGI2ty84sGMBEqdzNfECEK7025dRVQFyCASvot7lZImeL3AQ9XV1
msEnIryWCR8VuT5KpRRxhYj6Wu9uWYI5aMZgPLce2n6b8E3JMsIJUepKQ6m6vG9X
eaRXBxbpyXNgIttYuHtSP/K2gtVq9bO3CfVo/w68ceBYel/M6O8y2LT0buIx4kJF
s8sJfQSUSi2mD21dwoLJqQWYzVaQij86UbSCh7FedFz+h/2a2xKv/X13k+kp+i44
UbCoFNV63cf8wfXjliOjkAcqlooCTW2N1MdLUhvCltNauK65RUrhWZW+6JPXl5c6
A92jQXTW0K1vkAH7kd7O5hrgUdasryGpusigS5OV0HzRo+vEbFcbrPhv2msP+qPh
8t0nC64VexIxAZtEPv/njfQcqWvaqx2vXbu2U21MLz/9/+854Qk=
=gKuv
-----END PGP SIGNATURE-----

--------------z6NKAfPtCf10zaZF55R54ajN--
