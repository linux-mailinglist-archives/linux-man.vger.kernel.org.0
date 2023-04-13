Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D24966E0341
	for <lists+linux-man@lfdr.de>; Thu, 13 Apr 2023 02:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229617AbjDMAhZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 20:37:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjDMAhZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 20:37:25 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 162DE49D6
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 17:37:24 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v27so3343665wra.13
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 17:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681346242; x=1683938242;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hqaRC12F71nGOrtglZTN1i3pnbB3D+mrQLiaYM1wXcc=;
        b=WLwnIDa15gf8xE4gMMpzjKpGH7eD1YSFmTomcSWkuEt72pP7UKRS0LqTplkGF5D1/v
         o/OE0Nd5LFTFbilluB1hAkEK5QFC/NVdvAfjHhYcJkip8w9KAQe4z0i9Z3CB4UZp5G3w
         2UoJ0LskfmFFSUedZdDWXlHVdB+yr7h1VhPGaAJwkRvQvXjz06yBIjyL8n75xpDMdWGf
         H3UivZCF5tipK4meLqoHudk+KBYcj79E82qZWnN1HgO6Pmhd76cQ+DOM0Ovy7VAHtMfG
         BEcuTORDDB2KDkNP30fcwjIKp8/CFbYXYe4be92nt0VdPW0FI6eunWFUf5fNSSuXmYbA
         DuPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681346242; x=1683938242;
        h=in-reply-to:from:cc:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hqaRC12F71nGOrtglZTN1i3pnbB3D+mrQLiaYM1wXcc=;
        b=VsV9tY4U86cm+wb6DD1dkuXbdhW4VhJqjknl+BrBAei11P2GOwZ6XE4BjgMm3FlS2k
         /U6zDU+RyWs8rzj+rkhP3/F91pAWzif7m9n7gRvFt/69ML3bS32rRLO7mmnntT2vTvZA
         EIl5POMSFA3oo5jZHJQJF+M5D1S6vbtP3tXJgJiTjVs9DHsk8PvDu7kZ1CO3KLyXWoai
         IiUo/EOtPxT7fy5kcQwm6O20GfhNio5+QIpEg78WyFQnWOuEec8HQcA+xnnj7ey9ct7k
         XR9sf/OtVl8LqTS50Xpa0EstkUrMm44ieZ+gicHNal2DVsi85583j0gaf7wAhh57+taj
         0yzg==
X-Gm-Message-State: AAQBX9c2v7NVs0dhgj+dyeTHYkbmArCgJRvsxqBv0JqugZeEArbHZzbx
        h7nSHlpiwwE0HHhxuXsACRIJ3b2PsUo=
X-Google-Smtp-Source: AKy350Zc6PEtJho4zewWtvFEF2FKe9A7miTrcZcTOEukLLiRQzDEL+r8vxG8IId+hS4t+QE6H01geQ==
X-Received: by 2002:a5d:698e:0:b0:2ce:a80c:3747 with SMTP id g14-20020a5d698e000000b002cea80c3747mr11187126wru.71.1681346242403;
        Wed, 12 Apr 2023 17:37:22 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id s12-20020a5d69cc000000b002cfe3f842c8sm62842wrw.56.2023.04.12.17.37.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 17:37:21 -0700 (PDT)
Message-ID: <ceb7b9f1-b587-255a-274c-e3862f6f78db@gmail.com>
Date:   Thu, 13 Apr 2023 02:37:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: ip.7 update on treatment of reserved addresses?
Content-Language: en-US
To:     Seth David Schoen <schoen@loyalty.org>
References: <20230412230649.GA2462622@demorgan>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230412230649.GA2462622@demorgan>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3zdGKO0aWNpiPF3NF6tALMAp"
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
--------------3zdGKO0aWNpiPF3NF6tALMAp
Content-Type: multipart/mixed; boundary="------------JA9OTy9ChrsjU3A5SRMU9fjU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Seth David Schoen <schoen@loyalty.org>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <ceb7b9f1-b587-255a-274c-e3862f6f78db@gmail.com>
Subject: Re: ip.7 update on treatment of reserved addresses?
References: <20230412230649.GA2462622@demorgan>
In-Reply-To: <20230412230649.GA2462622@demorgan>

--------------JA9OTy9ChrsjU3A5SRMU9fjU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Seth,

On 4/13/23 01:06, Seth David Schoen wrote:
> Hi,
>=20
> I've submitted a patch a couple of times that adds more detailed
> information in ip.7 about how the Linux kernel treats reserved IPv4
> addresses.  (There is some discussion already there, but it's not
> entirely comprehensive and up-to-date with respect to the current
> behavior.)  I'm paying attention to this because I've been actively
> involved in efforts to get the kernel to treat these addresses more
> permissively than historical standards suggest -- which it indeed
> does.
>=20
> I haven't gotten any feedback on my patch on the occasions when I've
> submitted it, so I thought I'd ask directly whether anyone is
> interested in reviewing it or discussing it, or whether there would
> be any interest in expanding the documentation on this point under any
> circumstances.

Sorry for that.  During the last couple of years, maintenance of the
project hasn't been easy, as I'm alone doing this.  It may be that I
miss some patches, or that having seen them don't find the time to
address them.  Please feel free to resend any such patches, and ping
as much as necessary.  Only if I explicitly reject a patch would mean
I'm not interested in it, which will rarely happen.

Also, please mind that I'm alone maintaining this, and may not have
enough background to even understand the details of some new APIs, so
it is encouraged to CC any other kernel maintainers or developers
that may help reviewing your patches.  Please have a look at the
CONTRIBUTING file:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING>

Thanks,
Alex

>=20
> Thanks!
>=20
>=20
> (specifically, Linux now permits you to assign the lowest, or "network"=
,
> address on a segment as a unicast address; it has for several years
> permitted you to assign addresses from within 0/8; it has for many
> years permitted you to assign addresses from within 240/4; and all of
> these are also accepted as valid unicast destinations -- none of which
> users would assume just from reading RFCs!)

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------JA9OTy9ChrsjU3A5SRMU9fjU--

--------------3zdGKO0aWNpiPF3NF6tALMAp
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ3TroACgkQnowa+77/
2zIMRA//ZbjNysWMVynY4qAnJf8JNQ/7GZaF1DMGA1acQOadKuOCqlIYFflAJAuT
+A+mEfjGVEGcvAuuYSNZgcSj91/s10feTkQdqEpHHfPps69SqoynbM58haVvAdEN
KF7n/ef2McZHfnpq3GzUaZ0OMSl4ESKC+pCDMpWqMKCT2f5/J1q7hVVONnUms3DA
y+uEPjXag1Kjh0h6kq+7bTLnUV4KqHPQXlj0BOdNmC/heTipQH1Ro4kaRJvvLSs9
p4VPMNRoJQ3SHTzroRW0GtBw0qAGlBkr72nMWeVvaQIBYhDoaQTv6OFdOHPyTutS
g2qiGAG4BmIPPwnmCtnwqKnQyJdDwktnqV2IsYLjv84P3+tCFTfXxhIWqHaOBYK8
xXAnaG7AHT789ROE4Kcm6vPwdk/H6OH4bGnHvcgYSSsaAMHZPbyA79is8QcrrVpu
6JzZoxuNdX8IKXx3qoHARzyk39w7vLhe3hPDMOByda48C7JvSbRz6qsgmPa6jeo0
pLFhxjQiCGnkdt3UBxbJ4VGhEezvC0vM+YmMKev+zo2TB03nEDiM6l3XPdeTtl0l
rIzEmNZxblC1xgoaQPCLHQJfnFfsuOT6JBWHN0pd9ERA0ADCNE5KSaECN7pfW9H9
xGtb+e0N/1oQSKulf6g4qISAhymh724Ycs4DzeSjYKomuEds8JM=
=06kP
-----END PGP SIGNATURE-----

--------------3zdGKO0aWNpiPF3NF6tALMAp--
