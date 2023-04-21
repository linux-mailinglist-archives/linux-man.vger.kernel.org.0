Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 503426EA7D3
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 12:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbjDUKHB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 06:07:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbjDUKHA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 06:07:00 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DFFD5FE6
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:06:59 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f1958d3a53so1232635e9.0
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 03:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682071618; x=1684663618;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWBES5Cy5X8+FejlCZoCdVzP2XzE+ZWaAFrMx3e+3NY=;
        b=f0aUe10DMrviHZEAOwc95F47MC/y8XX7pjoODqarjxHr4YwHaZeD7pop12h1ViGatX
         3ULXUQrvNa6iCP78Rq6MvBEGnlvmHD6XTg1abX43+tNmrUm6ykCa1r7TwIgaflJZm1nr
         qLxMaNCGAzYvD74JBRyGOzoM71rE7BDVZfXoX7VUPIP1JdTPd+PkKi0Ks0M7qPzQVHRb
         q+44gPVfFYOSxJ7rz28ToIRIUSMJvKKKl6jbIqOGBeH5MU4aSoh6dW5dJASSYU6rGu9e
         LvBsxLYzpntCf38bp9HROjXbw6l0+w6g2YSZzQ7CK6fFt/TwPfR99HT4InCOq/CAsAxQ
         uNjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682071618; x=1684663618;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bWBES5Cy5X8+FejlCZoCdVzP2XzE+ZWaAFrMx3e+3NY=;
        b=OqRg7+TfjOQBMMWba14YKv5G6wx7ZVppqSsWB7gsuyxxaK3I9wKjzov8ly5OoAifNc
         6UAJyJH/BbCeX78mZVXnwGuIjXxbLB5oT1WAvp95dq6lJ8U8TO9GumMxGrtNOaFJPKWE
         kfOGRRCGRKP/PjgTDqmb4RAqyY410Bw+O9RpDPJ+5kwmCJ+AfXk9un8yUXJvlApS2me0
         1EGEPaKq98cArdvROa0DXwCcyzh0V3wfT4/72kkuL/lErZTvNz4le/rlIIObIbMjHzhU
         fbqn2nbuY/H6SBElXndNC+MP+/19A3CKV4gME25UtawZLuxgdzmvbxe5jKfDLQI9CI3i
         zdkQ==
X-Gm-Message-State: AAQBX9cGnDXi6bZ8FOYriQHmF89gUeCawiyzgho8vAdwDD3C39TEblGA
        1JgZJWw4NgVxO7dg94biVNheSL/mqOs=
X-Google-Smtp-Source: AKy350YXxlW1UyMbGZhIAR2GL/naqOGviQ9l5+6vWU/PgOaWUWOvFNo2bi7dBzg/T3llO8l6koJgGQ==
X-Received: by 2002:a05:600c:22da:b0:3f0:3a57:f01e with SMTP id 26-20020a05600c22da00b003f03a57f01emr1443898wmg.4.1682071617703;
        Fri, 21 Apr 2023 03:06:57 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c181000b003f046ad52efsm7676544wmp.31.2023.04.21.03.06.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 03:06:57 -0700 (PDT)
Message-ID: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
Date:   Fri, 21 Apr 2023 12:06:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v8 1/5] regex.3: Desoupify regerror() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <4479e1572eb7aa43437fceb8b985b641a600f41d.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <4479e1572eb7aa43437fceb8b985b641a600f41d.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Yt0VLgb0HUZ1dMbPuyJ5g4y3"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Yt0VLgb0HUZ1dMbPuyJ5g4y3
Content-Type: multipart/mixed; boundary="------------n8EENMQTxIla0zcQP24NV2Wq";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
Subject: Re: [PATCH v8 1/5] regex.3: Desoupify regerror() description
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com>
 <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
 <4479e1572eb7aa43437fceb8b985b641a600f41d.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <4479e1572eb7aa43437fceb8b985b641a600f41d.1682045033.git.nabijaczleweli@nabijaczleweli.xyz>

--------------n8EENMQTxIla0zcQP24NV2Wq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 04:48, =D0=BD=D0=B0=D0=B1 wrote:
> +If
> +.I preg
> +isn't a null pointer,
> +.I errcode
> +must be the latest error returned from an operation on
> +.IR preg .
> +.PP
> +If
> +.I errbuf_size
> +is
> +.BR 0 ,
> +the size of the required buffer is returned.

I wonder what it returns elsewise from that phrasing.  Probably the
same, right?  Which is confusing.  Maybe put that text without a
conditional, and only say that if errbuf_size is 0 the buffer is
ignored and no copy is performed?

> +Otherwise, up to
>  .I errbuf_size
> -are nonzero,
> -.I errbuf
> -is filled in with the first
> -.I "errbuf_size \- 1"
> -characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).
> +bytes are copied to
> +.IR errbuf ;
> +the error string is always null-terminated, and truncated to fit.
>  .SS Freeing
>  .BR regfree ()
>  deinitializes the pattern buffer at

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------n8EENMQTxIla0zcQP24NV2Wq--

--------------Yt0VLgb0HUZ1dMbPuyJ5g4y3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCYEAACgkQnowa+77/
2zK+uQ/+NuL7Ynstf83VIkLmPDJ7l9bfWedIvOr1OU8Qb2vmBMp308UPaLPZ+LIc
GTzeDSBjRP8URCIQM//KVvaiJfTZwYOFt+Sw7OKt5nghu++RYj8TU20EoRBBWPaf
vCRNyet9h83nF+f1tQ+M/5hG8kTYyhWe5dhnhru7Q7HD1FuATgW1IQZxSh6viRMx
/DAyjVDIA2hDY1+x3dAAFtI7EftJ15kxu2V96o+u2s4KK4U3ZfWSdjP0fVcYV7Mj
PDOOsIpUch0Phhb2CoontGF/rS3mnDbzHyH8GUr04/Tz6S0oiPLin8IxpES8nyxG
sLsHDdQsVMslt9aZdt7E/5hcZT34pd2W40GbVf+f7o0XxQl71BFtoh8td4PbYan7
VI8BN93llgVrHP0E+dB1mzkfKBVJ7mAScBjHEEj8TSf72arH3IFUpJF2IH2589YT
TqbINFk/7c1qgPW620RHb5CGz0qDa0nM2ya8xTeJZQaPTsI7bQJxhSCcsOLEosfD
sI6MT3AUPzb4QfvMsZcQypzOetB3UR5zrTc8S8KCAnfaJJrK7DIIqSytAfefrzW3
jvGMs89WI1AygAsfBaZfBQfdTYX4gK9ZKaV0/QSsiFAmfp1DGFR6FHOCY3Spolxm
5/Qxm9dcgoW90W2IeWo+JaGjAerRgJSAvU59CkevBkWlG1MHCqA=
=zvQk
-----END PGP SIGNATURE-----

--------------Yt0VLgb0HUZ1dMbPuyJ5g4y3--
