Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D8F06D71EB
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 03:18:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236398AbjDEBSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 21:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235182AbjDEBSC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 21:18:02 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2116D2720
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 18:18:01 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r11so34579627wrr.12
        for <linux-man@vger.kernel.org>; Tue, 04 Apr 2023 18:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680657479; x=1683249479;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SkX04hjYcMI4Xa3AcpPWoNGKdSldYNJXVni3HGVeqOc=;
        b=osUJTOo/ol46x9e7IOFHDzV2d9rmZprDPgDCvaRQB7eGUyvUB5kmJq1ztkuPt4RG3U
         FYbtc+5iTdzWMHnRgbQz+SVt4ryqiWuS/VLRLKAjrjZ/oXwWnLd8kgQjvNfDKiphvwPx
         iJkGlfeItMHulaSoonDlXZf9RAd0XEPAyP6o0EzkJkkpJfQXoMEUJtAKvA2WoKXeiAeS
         tYHOzPFc6BM3sd8rym4IQBABTJVpJIQmWWRdnaw7Ic6Q4TmoVwYeCFJGN/rU7zPLl4wM
         a7g+vNBN+iB5QbAhaMFZs4obdlCFlDF/XVKi3zoA5y9S2h8AdCJ7iM2XEZL4o6tFwRo+
         V01A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680657479; x=1683249479;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SkX04hjYcMI4Xa3AcpPWoNGKdSldYNJXVni3HGVeqOc=;
        b=68aSHAiRxYTU3zwbh6O3d6TKkAFhSBLwEZevxmHWsybWqHao/OGi6n6P/707OVRpkw
         4WIOHlIJaH+IvPHkulr8eaLPSDDvsL9rLr1hErsF7yMsuvuQSDHHLUO7HhCYyXUfUocO
         6EjzGX28pQ/sK14fXolSWOGyFX1pAP6K02DTAyUQrDp7adSUIS37MZldnGGVlOpnPfU/
         rxPxFnfRDfp5avlke5XpBrR8ZCDGGJbcf0RebAQXAsxaCvNbokSjKv5wqPikjK8tuznC
         kQToQl9u2SPGB8zkolyzv4FAMa6iu5OS+jL0HNpZJFy6eMJyxCNfaoEAZTt6BKjliE5t
         WbpQ==
X-Gm-Message-State: AAQBX9fq4vyFMAuUf/54E5K1gQjlPt8HI2stk23Rca4iYp9Tu+7v9ztZ
        94SSeniEDvRrntBGf7Ytbhc7HSJ6jsU=
X-Google-Smtp-Source: AKy350ZwSZk5QOHr9dIdTYkULtni9RbZnU6YjpXgfW3W7U3Qi9na29Rodr4cEFXbUmsDpEJjiGSasg==
X-Received: by 2002:a5d:6086:0:b0:2cf:f3e8:910d with SMTP id w6-20020a5d6086000000b002cff3e8910dmr2646407wrt.16.1680657479217;
        Tue, 04 Apr 2023 18:17:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q10-20020a056000136a00b002c6e8cb612fsm13474212wrz.92.2023.04.04.18.17.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 18:17:58 -0700 (PDT)
Message-ID: <0dfd5319-2d22-a8ad-f085-d635eb6d0678@gmail.com>
Date:   Wed, 5 Apr 2023 03:17:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: make check failure with man-pages-6.04?
Content-Language: en-US
To:     Sam James <sam@gentoo.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <87lej9u4g4.fsf@gentoo.org> <87sfdfqhj6.fsf@gentoo.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87sfdfqhj6.fsf@gentoo.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------sTj8YSNq0XVy0qWut6BDOATT"
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------sTj8YSNq0XVy0qWut6BDOATT
Content-Type: multipart/mixed; boundary="------------007EgsVf8VQ9SyOsZY0YhTed";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <0dfd5319-2d22-a8ad-f085-d635eb6d0678@gmail.com>
Subject: Re: make check failure with man-pages-6.04?
References: <87lej9u4g4.fsf@gentoo.org> <87sfdfqhj6.fsf@gentoo.org>
In-Reply-To: <87sfdfqhj6.fsf@gentoo.org>

--------------007EgsVf8VQ9SyOsZY0YhTed
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey Sam!

On 4/5/23 02:49, Sam James wrote:
>=20
> Sam James <sam@gentoo.org> writes:
>=20
>> [[PGP Signed Part:Undecided]]
>> Hi all,
>>
>> Congratulations on the new release :)

:-)

>>
>> With `make check`, I get the following:

I expected issues like this from packagers :)
I'm doing the packaging for Debian and will have to disable it too.

>> ```
>> # make check
>> GREP    .tmp/man/man1/memusage.1.check-catman.touch
>> .tmp/man/man1/memusage.1.cat.grep:130:           Memory usage summary:=
 heap total: 45200, heap peak: 6440, stack peak: 224
>> .tmp/man/man1/memusage.1.cat.grep:133:           realloc|        40448=
00             0  (nomove:40, dec:19, free:0)
>> make: *** [lib/check-catman.mk:36:
>> .tmp/man/man1/memusage.1.check-catman.touch] Error 1
>> ```
>>
>> I'll be honest and say I have no idea how to interpret this, if it
>> matters, or how to give more info (so let me know how if I need to!)

You can check what this is doing:


$ make check
GREP	.tmp/man/man1/memusage.1.check-catman.touch
=2Etmp/man/man1/memusage.1.cat.grep:130:           Memory usage summary: =
heap total: 45200, heap peak: 6440, stack peak: 224
=2Etmp/man/man1/memusage.1.cat.grep:133:           realloc|        40    =
     44800             0  (nomove:40, dec:19, free:0)
make: *** [lib/check-catman.mk:36: .tmp/man/man1/memusage.1.check-catman.=
touch] Error 1
$ make help | grep variables
help-variables		Print all variables available, and their default values
$ make help-variables | grep verbose
V		Define to non-empty string for verbose output
$ make check V=3D1
GREP	.tmp/man/man1/memusage.1.check-catman.touch
! grep -n '.\{80\}.' .tmp/man/man1/memusage.1.cat.grep /dev/null >&2
=2Etmp/man/man1/memusage.1.cat.grep:130:           Memory usage summary: =
heap total: 45200, heap peak: 6440, stack peak: 224
=2Etmp/man/man1/memusage.1.cat.grep:133:           realloc|        40    =
     44800             0  (nomove:40, dec:19, free:0)
make: *** [lib/check-catman.mk:36: .tmp/man/man1/memusage.1.check-catman.=
touch] Error 1


So the command that is acutally being run is:

! grep -n '.\{80\}.' .tmp/man/man1/memusage.1.cat.grep /dev/null >&2

Maybe it's still a bit criptic, but the 80 should be a hint to readers.
It's just checking that all pages fit within 80 columns.

>=20
> Also, if you can't get to fixing it, that's no problem obviously, but
> it'd help a bunch if someone could let me know if this is severe or not=


It depends on how severe you consider that some man pages don't fit in
80 columns :).  Nah, it's not a big issue, and it can be safely disabled.=


I plan to reduce most of these warnings, but in some cases I don't think
I can fix them at all.

> - or if I can just disable tests temporarily in our packaging for now i=
f
> it's not a big deal.

You can.  Maybe, though, you want to enable some test that works
reliably already (and which I'd be interested in being reported if it
starts failing):

$ make lint-man-tbl

>=20
>>
>> best,
>> sam

Best,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------007EgsVf8VQ9SyOsZY0YhTed--

--------------sTj8YSNq0XVy0qWut6BDOATT
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQszD8ACgkQnowa+77/
2zLATQ/+NozGmMwXADzYdHdcuDBAcdH4c/HAkcXzywWKpUHqjhnMFgUUz9lwSqco
ZOH2M+uchDFsboPrs66GGRuRl6e63pDJk2C8meJdxfqO9NFDNpEzb4eHrG02DudS
TAJPHUxwO2Gr10/Li+q8OW6dfFr6A8nsb9INghWYUnzK2ZiAEIUbeeVSKhB0fS52
Z8hduOand3wXTjhyzxg1FMZ+dLaaWOROw8j+G04fcyF3W/gJpqnqGxjfTmVoGsbt
RVqXM0/e1xiIKzuAgmfcPpf3Zn8w2rvrCynPkurjIlzkDGs0HSuTpfYd3V+iLU6Y
QzYI84byawvnF1hmgFdWjAkQxGsJ5YhY4MwFazJ3i1rz04o5VKkUWZTm2PN2uyFb
z0xwoTiPMybSPk4ABRX4v2qmxRIwnX2ymImC982sQRqULryEZvOvM7Rcy4eKnDq2
dA+pT1E73KBOM+Xhe7eFu7fDlJkrExpOoD9lHa2x9+R5XUI50Xlbhy9TAb9uoowY
8JjL20USn2knbsEpt1WXRECaHuGu8xm00BxjsS9SNi5dxuSvKqC9UTRFwl+W/LkQ
agVmtcF1A5eK6VKgaxiXyxxtml1iYOcqHsvR5W+Zjsn7qzUR9vZtvnWus0X/HHOE
jkbCoOhIJEL5KguQ82uEfPkBZcg+3ETS0+/sA6VPOm7XqDdowrg=
=xYWN
-----END PGP SIGNATURE-----

--------------sTj8YSNq0XVy0qWut6BDOATT--
