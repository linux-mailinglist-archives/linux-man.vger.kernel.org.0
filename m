Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0B6D6BB5E0
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 15:23:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233101AbjCOOXV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 10:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233112AbjCOOXM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 10:23:12 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76D9B69CEC
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 07:23:03 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id l12so9201226wrm.10
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 07:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678890182;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1xnfHcfKEzJWj6nPyHJxUTKf0eUAAN07ojFFMBzIHFE=;
        b=RGT+9drMbleSXDrKpC7ojEv35T5iF/PrHZngskibSbVvmO4MtQxyx3rVwFoxfOWpXQ
         vVsHQNT1LYnnciTYoMmycemYUPFJFBLZAGH1cEvdOxSexoCO4TAt+xctqpDBGi6oMFIS
         KrcF/j8tTLfpfsaEYfmH8AYrN1BB8PBP4Km8ez/yVJf/6Nx1mImbBLDZ7q/kLpXGU7nX
         qSP/zMQy+LUtV97pZ7rPhSSLqjqT6y+mpcP1lGDUPfCxj2pm9+EmOzn0VtqOvfG4ySlA
         wlwAZ7r12JE4MT6RVCbqKaYW+w+RUhRgjDHOpvslqHiHE+nLOeB6kdEgnYe+iNzbD32m
         hVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678890182;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1xnfHcfKEzJWj6nPyHJxUTKf0eUAAN07ojFFMBzIHFE=;
        b=AjUDfvfxf9wqBhyHWgoseTWVR2tiIE/zezAugm9uMgtVLF838e6f+tXrCHTI5nQcbl
         EsAYBlC51UDX6iUd1Ekptd+MHC7SrY0Ys1UN2fNg5x27jxDRvhZvisuqs2OtRnGKxnF5
         PvPx1Ec0v6sCnyEDFDBefznu1nVCpswGqL3BW8zaIy17ZvEmX3wrXJOGabuGigZ+UDL0
         Yk2g7uqPLYfhcRcPQSEbpeFItK6yYqPqURxp8FecQtpEo/gV4BMx9zKTBWmJRU1diKWE
         yCbcQkKLr52ax7VrJnFRElsWyqBrgY8gxRep4mDxvELFA8PbF7iz1Bx32hzSjMXuK2WM
         Y1AQ==
X-Gm-Message-State: AO0yUKWlwmLBRgTdl2Rrobu28kPGctW4PiG85/aFPUy4O0VNfIS/06Qz
        SGQvLiFiAQ8P3AZuwuUj+TUFdDAg39Y=
X-Google-Smtp-Source: AK7set+8AtMod1sjbkjaD7hWR1qYTHjgvpHSLRrmsf1fdUzx27ojKQ7MubWplKFBj1kudr0LibW6JQ==
X-Received: by 2002:a5d:44cd:0:b0:2ce:aed5:7dc with SMTP id z13-20020a5d44cd000000b002ceaed507dcmr1926865wrr.68.1678890181707;
        Wed, 15 Mar 2023 07:23:01 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id n5-20020a5d4c45000000b002d1801018e2sm176120wrt.63.2023.03.15.07.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 07:23:01 -0700 (PDT)
Message-ID: <c893343f-a92f-8a00-250d-728c851b1deb@gmail.com>
Date:   Wed, 15 Mar 2023 15:22:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc:     Brian Inglis <Brian.Inglis@Shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Guillem Jover <guillem@hadrons.org>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>
In-Reply-To: <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6oD7QYvEz9d5ihjHT3QwmR9k"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6oD7QYvEz9d5ihjHT3QwmR9k
Content-Type: multipart/mixed; boundary="------------5J6x0s492HBzjRsHU4piiS17";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org, Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Cc: Brian Inglis <Brian.Inglis@Shaw.ca>,
 Matt Jolly <Matt.Jolly@footclan.ninja>, Guillem Jover <guillem@hadrons.org>
Message-ID: <c893343f-a92f-8a00-250d-728c851b1deb@gmail.com>
Subject: Re: Revert "Many Pages: Remove references to C89"
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
 <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>
In-Reply-To: <6da28b50-e086-acde-6bb0-0409ada022d6@gmail.com>

--------------5J6x0s492HBzjRsHU4piiS17
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3/15/23 13:53, Alejandro Colomar wrote:
> Hi Oskari,
>=20
> On 3/15/23 13:30, Alejandro Colomar wrote:
>> stdc89()
>> {
>>     grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-draft.t=
xt \
>>     | sort \
>>     | uniq;
>> }
>=20
> I found a bug.  I was missing '_' in identifier names.  So it didn't
> match memcpy(3), which uses size_t.  Also, I found some spurious match,=

> so added a '$' anchor after the ';'.
>=20
>=20
> stdc89()
> {
>     grep "[[:alpha:]] \**\b$1([[:alnum:]*,._ ]*);" /path/to/c89-draft.t=
xt \
>     | sort \
>     | uniq;
> }
>=20
>=20
> This function finds 136 declarations in C89.  I'm not sure if that's
> all of them.  Is anyone missing any?

Actually, that was missing a few (multi-line declarations, signal(3),
which is quite weird, and asm()).  The following seems to be complete
(per the count of ';'):

$ cat stdc89=20
#!/bin/sh

sed -n '/A.3 LIBRARY SUMMARY/,$p' <c89-draft.txt \
| pcregrep -M "(?s)\b$1 *\([[:alnum:]*,._\s\(\)-]*\);$";

$ ./stdc89 '[[:alpha:]][[:alnum:]_]+' \
  | grep ';' \
  | wc -l
146
$ sed -n '/A.3 LIBRARY SUMMARY/,$p' <c89-draft.txt \
  | grep '         .*);' \
  | wc -l
146


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5J6x0s492HBzjRsHU4piiS17--

--------------6oD7QYvEz9d5ihjHT3QwmR9k
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQR1LwACgkQnowa+77/
2zLpbQ//SVy1G9dGajAZzCk/RLNDD/4sP6sM7RkHzd69Q/ttYyrmfwesvTjHgmiA
kM/cIAv9ljFOMDtyMkymHfYmCjDsmJB3MycYMiK7GLCnoqXbG8eyMi0Ucmmrf9CG
hCg9k8W9knUGqeEqYhXr6sen+NsbqSoZc+cGuPdhUonxDeKO59xL5SRSQtyY/a6w
gaoHxuoE6AyNvrl/Vzbtl4xaXCvvsazpzVMe4OXmmmB5LRZcnQ5cPzY7yyW++zEH
GNALZvgfjaTM937TKh0tvGIaa+013QaRQEXyXrrMAfSCPNTUuI7ikohyoMmEgM8t
F96QrlUkG+gJPzxm1D3ByQim0JzoNdYRaZ5sVqud5xlFdYf9dADz23CCFWRqzINA
/Jxth9OaLmiHI9Hw+pZocwjaCpfFmzsDIhODtktYVgitJxv0wksV7Dr3rrbyOuOk
dwLx6UIFAPcaps4hFYUWn9IqxyjVCjaQAOWs6zAjbwDAfkRXVOpsvFn5aaSoBgI9
e+YFV+9ZuMuCtIFqtcPxZxGc1S6Jvzm0+5TYb/DgqyoikBYXdWyQsoMQzNiCrtqN
gHYZT/BTCyAxvXXyNdfsAAUKFANeMx+1QOJNxZdqiCF4e5GTCLAuiJKW4vuQ2xC7
yS6xho5sZ/wZ0D9qU9riBNvVsE5vc9vRQRYB/8O3vDS3VhBaFXk=
=Xt1q
-----END PGP SIGNATURE-----

--------------6oD7QYvEz9d5ihjHT3QwmR9k--
