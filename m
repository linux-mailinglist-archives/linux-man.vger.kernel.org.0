Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D3406ABF89
	for <lists+linux-man@lfdr.de>; Mon,  6 Mar 2023 13:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbjCFMbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Mar 2023 07:31:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57644 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbjCFMbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Mar 2023 07:31:41 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26B3C2B2B2
        for <linux-man@vger.kernel.org>; Mon,  6 Mar 2023 04:31:36 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id l25so8639889wrb.3
        for <linux-man@vger.kernel.org>; Mon, 06 Mar 2023 04:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678105894;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=svw+CMueNcvWIp5cVxst6CrNcMbWSAKhewINHHOwKPU=;
        b=gx/w6gIZNQISy/tvFYDIMQUtgUog0vdxaA2jzUB14rdvYQmZ/dsIx9/wLSf8gDXWYO
         eUcqG8SAFJvPmnfUh8ZfuaSn5E4H0Kws8Xn/EwLL2KpXZUn/8iXTKKZjJHBG83NJDxAT
         bo1r3fU4ElTnWxAZxI0iq39mUy4NYzanHbskgT7MdTmluOo9ttxqo5P++/18R/kS+5uI
         syptqHvFyRUFrlAjJGzWRSalihKTYLCOKfYQlHIkSf2J36MpKC/Q2bfHMU0AOSrlZKRR
         ypLx1L8x5nZm8VAZ26Vz9WyUpuks/8WRb4/LB/fXLrcohOlgMrWDEPYZC9DnTnE8R5HP
         Kt/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678105894;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=svw+CMueNcvWIp5cVxst6CrNcMbWSAKhewINHHOwKPU=;
        b=rLa8zBRe+sdfwKqnwI70icDRYX2eoOw0l7ysovU2YhgxZfLbqnccr4uP9FsUxmN4ov
         rNn3MegHz5jzm/yIPWkIfBkq3OReGc3JuFncAE1j+dyjE/x5lpGAfmeAsCTjmiu2TQ++
         arIYhrYICymlca2+3grtT77vvxJaiHSY/oBsISiB8qO40S7ssAcCFI2fZzkS8AE7K/5N
         1asGim4D6MiPdM0alBjXOiEg1EH7WlqArs1uEERXt1KgNmjmmbO3F42kVVu74NG8MmkY
         snOAKO1chbxNP15ZeAZqCNEVxOzETNdpYOQCbyZDnlNN43BzoDwc+91hzEC7vqNV+tbM
         PXVQ==
X-Gm-Message-State: AO0yUKW4t11cOiSbMHfHjf4lY+QrL8CRqic4IPIYtDtR2XABO6V0iRXF
        K8n3LdcH/RPhcOuZyQXtsDpFs1in2Nk=
X-Google-Smtp-Source: AK7set83DY6GLnM4gliyySfAI8DXe3TENDf/aUIhVNAaXYwRy5nnPnTWEs508vBc1e3DDQn7mvzJyQ==
X-Received: by 2002:a05:6000:1091:b0:2cb:c072:cf55 with SMTP id y17-20020a056000109100b002cbc072cf55mr6786797wrw.8.1678105894575;
        Mon, 06 Mar 2023 04:31:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b12-20020adff24c000000b002c556a4f1casm9653787wrp.42.2023.03.06.04.31.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 04:31:34 -0800 (PST)
Message-ID: <51628c07-70c6-4404-7c32-c81bc62d98b4@gmail.com>
Date:   Mon, 6 Mar 2023 13:31:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: memalign man page
Content-Language: en-US
To:     "Floyd, Paul" <pjfloyd@wanadoo.fr>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <0cbbd062-bc91-25ec-7744-d474e372cc62@wanadoo.fr>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <0cbbd062-bc91-25ec-7744-d474e372cc62@wanadoo.fr>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------BL4Mswl6pEREqKSnm0NE00WO"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------BL4Mswl6pEREqKSnm0NE00WO
Content-Type: multipart/mixed; boundary="------------Ey776zZ6EN08HuoCyLE2Ffbt";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "Floyd, Paul" <pjfloyd@wanadoo.fr>, mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Message-ID: <51628c07-70c6-4404-7c32-c81bc62d98b4@gmail.com>
Subject: Re: memalign man page
References: <0cbbd062-bc91-25ec-7744-d474e372cc62@wanadoo.fr>
In-Reply-To: <0cbbd062-bc91-25ec-7744-d474e372cc62@wanadoo.fr>

--------------Ey776zZ6EN08HuoCyLE2Ffbt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On 3/2/23 11:21, Floyd, Paul wrote:
> Hi
>=20
> I see several issues with the man page for memalign/aligned_alloc with =

> respect to the glibc implementations.

Thanks!  Please have a look at
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING>.

>=20
> What is the best way to report them? Log an issue at=20
> https://bugzilla.kernel.org?

Don't use bugzilla; please report them in the mailing list.

>=20
>=20
> Regards
>=20
> Paul Floyd
>=20

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Ey776zZ6EN08HuoCyLE2Ffbt--

--------------BL4Mswl6pEREqKSnm0NE00WO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQF3SUACgkQnowa+77/
2zJOFQ//eC0+2lDnZQhMWTuktkFAYpKpW9UuDhi8QPDwey9AmYgvgLbIT9/lEM74
8/XpkYsNylem91WA8Vq2P8Q/ODxJZArmCTuRXh7db544lUUgo7Hp6WKoxhW3vb0G
0HjGguJKxBwjf5gtxArUVkcb2juwOhPtHeFEVLWsTio6CX+boaRGkHddB9l+3ynf
EYCEYptGAjSsCUFpTwIpk7kcTFZuTl13RsNITzhFNNUgiMZoQjUVGqNFjf70KZdY
p0PmVdooARH1HfpLoAlJ+Zvw89urDH/ifRGtOE92kU+QMiX2a/MPpVbXF9UDBhHH
USHAETWjQSsdfQDBtGy4cYvA0QOg2UEviYDmfelZfxEUc+NVotZcQPBCHRu03kQS
tKu5aBQNslAufm/JQDovR3C8Go6w5NeuBlCtgwnxRPDA7tTCXtNtKFq6VPIjfcBe
0HO+m9sKJJqjOs6/LdmAC4HnAngMQ9prav7uD1Yc74/DWn6C2ybvAqBHdEhbalKU
mItXJtskjWEflW6P3jkBy6sZRDRsOpEzrqrAjGqQlvV5YE3CTtR/VPGIFh4OKmNd
hRPfF1WXkwP1GZRiV5QMpozD5gon+uQzEmI5FIgQCXdt/8dNS4T8KDzHS8pDeMZo
zUjzC3/TpnFgEE/ucjfQnVcIkaoveQzhqnPZTqpSs+RIicgZdDQ=
=t+mR
-----END PGP SIGNATURE-----

--------------BL4Mswl6pEREqKSnm0NE00WO--
