Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 619F76EA8EE
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 13:16:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231450AbjDULQS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 07:16:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231285AbjDULQS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 07:16:18 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05EF1C64A
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:16:17 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f193ca05a9so4570245e9.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 04:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682075775; x=1684667775;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rg5xFl5CkYKH+9Nh73LJRiNeky4mh8RYPtmPBFegSmQ=;
        b=CvFm4a1NjkSFdf7C8TlA9Of631rdP0J86zA/uxCGY0rO3MEddwzbjkXDcuq0RdD8F+
         wGD6Z5TSL9yLwiPW6IlKIFV8DHCPcBBw6YfZYq+FWxAVZnAbZXH8I7b9PLfi1H7+mq3T
         97GWmFkZThG9mHHQVFF/aEt76p81CfSmDSWSNYuh6XH6b+wOISby0Lc3fRRwO9Z7Ts51
         cPLH4QrhLVGR6CqgdMXMwJgj9JmQrcJO4KAjE5onnpWrXC+UMeuVRFJ67zsGR3c/caNp
         Wzcb+cc/JoGVKNY1i8w+pLaQzpWzKw091G0YZ4WvA8YNuK4PEncGSPNLhmNtWzDpE24h
         Ytpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682075775; x=1684667775;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rg5xFl5CkYKH+9Nh73LJRiNeky4mh8RYPtmPBFegSmQ=;
        b=XHR+bEnUuL1q6a//pPLgyY4teXouKmJyiMqbkxeI7d0m16b7XBY2Q+alGIW13N1XaB
         vL4MBYRwKGbGTGUYM62CcwJ0/TWDHAvCeleOMhxBYKn460t4A7PJMAdToP+f9l6sHEuL
         fDTPlihRXjPjithD/TAfamTu3ivdGJ0lCXla95fX8/jkN5xK6hJfaFvuQuRe1qwv9jQz
         eXLpFBPO5qVJiBKKRnfYfPcM9dnNjMICKujUonJUaM+vhMa+vRbZrpou+MJ9RkOKsBr2
         uMyOwTw0vFOiGIe12bOHe5ktZGcqLJysPf1gsGvUIaSkxlGZ5ydGIWyE8sDixyCYzwKk
         xZ8Q==
X-Gm-Message-State: AAQBX9eC2GwScnv3vZtm+Dbgmc3P3OGgsO18yMT5W2FhSUrgGvq3/12y
        fAapTC28PYC6OpyWBqyPzXxZVHLGW1E=
X-Google-Smtp-Source: AKy350ZcoYe2ATBST9t7XfUB3qeVZipq1rGm6Be8EmflQKFimPZDujN+6DlmInWVpUtenu0xiIyD6w==
X-Received: by 2002:adf:ee8f:0:b0:2f8:ddce:f838 with SMTP id b15-20020adfee8f000000b002f8ddcef838mr3459764wro.21.1682075775314;
        Fri, 21 Apr 2023 04:16:15 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t14-20020a05600c450e00b003f0a6a1f969sm7999940wmo.46.2023.04.21.04.16.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 04:16:14 -0700 (PDT)
Message-ID: <8f754144-4870-3fc4-eedb-b2c49da6b63d@gmail.com>
Date:   Fri, 21 Apr 2023 13:16:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "bug-make@gnu.org" <bug-make@gnu.org>
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
 <8b562f79-f65c-4c71-fc39-b37d57b6c75e@gmail.com>
 <20230421104451.ouflnhgyux2uhem6@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230421104451.ouflnhgyux2uhem6@jwilk.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------GJQMhv8tYWWBcIOF0vFy705a"
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
--------------GJQMhv8tYWWBcIOF0vFy705a
Content-Type: multipart/mixed; boundary="------------RimfdqXBF8iF04Nco8Y0aoCQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org, =?UTF-8?B?0L3QsNCx?=
 <nabijaczleweli@nabijaczleweli.xyz>, "bug-make@gnu.org" <bug-make@gnu.org>
Message-ID: <8f754144-4870-3fc4-eedb-b2c49da6b63d@gmail.com>
Subject: Re: [PATCH v7 4/8] regex.3: Improve REG_STARTEND
References: <8c4487ff-17c6-f4f6-d8cf-59a82d9daeca@gmail.com>
 <sowec336dkzypq6kjouieoyesyfdejmo3j2err3kc4xcpine4l@2takvti7yrem>
 <5918ccbe-d218-df42-cf0f-5eb7b3354e2b@gmail.com>
 <atartvvgxjv7wk5rvdtiyrxjc22lnsgkf75hy3nz3m7fw3m6j4@i7khsjrvuise>
 <20230421101957.3hpuzx4pwgwgjbjg@jwilk.net>
 <8b562f79-f65c-4c71-fc39-b37d57b6c75e@gmail.com>
 <20230421104451.ouflnhgyux2uhem6@jwilk.net>
In-Reply-To: <20230421104451.ouflnhgyux2uhem6@jwilk.net>

--------------RimfdqXBF8iF04Nco8Y0aoCQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jakub,

On 4/21/23 12:44, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-04-21 12:22:
>> -SHELL :=3D /bin/bash -Eeuo pipefail
>> +SHELL :=3D /usr/bin/env bash -Eeuo pipefail
>>
>>
>> MAKEFLAGS +=3D --no-print-directory
>>
>>
>> This helps in systems where bash(1) is not a system command (probably =

>> MacOS, and maybe others).
>=20
> Yeah, but why not use simply
>=20
>      SHELL =3D bash ...
>=20
> ?

I couldn't find documentation that guarantees that that should work,
so we used shebang style, which will work for sure.

I CCd bug-make@, in case they can confirm what is safe and what is not.

Thanks,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------RimfdqXBF8iF04Nco8Y0aoCQ--

--------------GJQMhv8tYWWBcIOF0vFy705a
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCcH0ACgkQnowa+77/
2zLm1w/9FDRhdGvTX1DL+Ww3BoDEQtc2Vm4/NfVjBdUX4zm7JVN6sc498L78dLs9
NHHSqBSoOZvl9ThMjeSzjkdVwc8YiCCNz0wrwY8WvMLBNplM8QUTi0AmjqmpQhS5
IlbbeLlgxuyk7SNpFyxaz6B1Ws+QGjhY3EBoT+Or7h5UUN9tG+TgHOwnc29MMG3q
iwnJUsnA5IJHDQjlQ6QAqbo85wHa1liH4M3sJP/YQ1TdDzIccqJRmukL3Hg98TQc
9EoTboRWYb1y08CDGBpbiVyrNJQ1HIWBURJsub1zmO7Bqo8FzzToYz3l0/K3OxKF
/EfcEyJvmnSca+1+yy7v7nkKd6PhxqKnZkIZ/9T2r4OC+srX64KcEQMvG6B5EPLA
pwov9UJesmxPNvLGZUTn89TAwdlUXJMgtFOAJBmLYLPTi+guzbcH20Z4BnVgwGZ2
dNxg5Qbql7+i9GNqkdIQmqj4G8q9MnzjWeIhFizHOESrP4RrpfEms7YkoDj9t+1F
hao6bo8/0/sfluCQ8YKxWfXEKz+2Y12qj/2oKYNdcrnDRzjNSEo9RwNsmW2BKan5
h7S3WmDB0JCLlA7+M2tr2ta/beAruzsjD5x8WMwvVkMEVST12x3cujiwG/kaSgK6
KT8+XM90tw7CyzGvYt3B0jB/KkEojEAiavWpy5jaD5+EigzzHbo=
=tiEa
-----END PGP SIGNATURE-----

--------------GJQMhv8tYWWBcIOF0vFy705a--
