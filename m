Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F92D6B6237
	for <lists+linux-man@lfdr.de>; Sun, 12 Mar 2023 00:41:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjCKXlx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 18:41:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjCKXlx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 18:41:53 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0E683CE17
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:41:16 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id l7-20020a05600c4f0700b003e79fa98ce1so5655486wmq.2
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678578074;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=89rkPG8U0UWNW0dBEnyM39L+3Um+brtsHlML5QAb7Ws=;
        b=K42YXmjSaD5ifBBfxZKZKCsv8sJhQhBr8UByOAUK+YLbw2GixyxQqcf0p3bqwTezFS
         epi2rfXXrz6KOvffT3Iz0xTCd/3vm5aBX0SqnJwwtEqmd8kMVdNtBeUEVc866O+3f0aC
         9qlzEq42JpO2/7Rn5RbdLKcZcf174Xl82CHLsj+vxcodJxqQSSGpSJhrubaUERjAjHg9
         K51NY2RUI83ndGQ2fkSKMten2mte3WF1RFeVhf0WoixZ2pulX0WshiBr87nFCCQfs+RC
         A8FEWEQZZqNkX1e9APcf7xIiVjMxK7QsVyFaDrDM7P4XQiNtC3GUfixKyBe3qKnmXExa
         leWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678578074;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=89rkPG8U0UWNW0dBEnyM39L+3Um+brtsHlML5QAb7Ws=;
        b=J006xLfaDK/qGva5eaWOVQXDSQbpZXA0UZS+2oomiOyl3nTAgg+ebGO7a4iT+6MftI
         BXi4C/gJxkJaEhU0hFj8feK/UzWdUze9WXaTUDp4J5Diex2aR9V22NtNQW6iqAd8opxj
         OWxoXttRDnGp1/06PhT6IZt+jaIdBP9WlC5Y7kYPFQClcMiIKbmGUHv9hD+jYTqvjw6m
         Wd83w8Lh6ksw5OlmcP/v7ZNuEOg4MGEwzatC0jGwhqnmkQ/C+SITFPnza6XNsxa9TluB
         O0uG09IXOtj78x6nRD7CeBG5Q0bwTHiCuhhV0lfvkiLmku7F84s7kkGTjnwcgDutVTEY
         tcdQ==
X-Gm-Message-State: AO0yUKWP1GUSaHwA0zlZGb01HfZi8gR53fswAFEIqBaEdh3zgXtBLA8j
        aPVmbhCzC6NnujkOpA9fNmU=
X-Google-Smtp-Source: AK7set+BrHa44FiuE1lSA+FeT+o5rXscW6KmNs7xzkBN7DP2EFz2Kpo4aOKpl2YvEQLpuYiZoCMWKA==
X-Received: by 2002:a05:600c:190b:b0:3e8:490b:e28b with SMTP id j11-20020a05600c190b00b003e8490be28bmr6873780wmq.25.1678578074181;
        Sat, 11 Mar 2023 15:41:14 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id e1-20020a5d5941000000b002ce991d3b14sm3393913wri.52.2023.03.11.15.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 15:41:13 -0800 (PST)
Message-ID: <eb909ef0-4be1-4555-60cb-409482bd8b0c@gmail.com>
Date:   Sun, 12 Mar 2023 00:41:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page boot.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171357.GA4936@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171357.GA4936@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------nwQHxhRe4WjfqtifJgHBnapn"
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
--------------nwQHxhRe4WjfqtifJgHBnapn
Content-Type: multipart/mixed; boundary="------------MskivqJGOECLolOPmiEys9rE";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <eb909ef0-4be1-4555-60cb-409482bd8b0c@gmail.com>
Subject: Re: Issue in man page boot.7
References: <20230311171357.GA4936@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171357.GA4936@Debian-50-lenny-64-minimal>

--------------MskivqJGOECLolOPmiEys9rE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  runlevel 2 =E2=86=92 run-level 2
> Issue 2:  sendmail =E2=86=92 B<sendmail>(8)

Fixed:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
ffac8276df958046d6b38ef21829f7c8d39eca19>

Cheers,

Alex

>=20
> "To define the starting or stopping order within the same run-level, th=
e name "
> "of a link contains an B<order-number>.  Also, for clarity, the name of=
 a "
> "link usually ends with the name of the service to which it refers.  Fo=
r "
> "example, the link I</etc/rc2.d/S80sendmail> starts the sendmail servic=
e on "
> "runlevel 2.  This happens after I</etc/rc2.d/S12syslog> is run but bef=
ore I</"
> "etc/rc2.d/S90xfs> is run."

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------MskivqJGOECLolOPmiEys9rE--

--------------nwQHxhRe4WjfqtifJgHBnapn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQNEZgACgkQnowa+77/
2zKLfw/8C/Loo/El+iZqeK3A9cRZ9ueAtbUgp0RTIsLxFsA4S5qH7a0CFP0ajnGz
I3toEsNamJv9Waw9ZzTUnMpbDMruDwJM3leRC3mdw5lcoeOF7Z+M+hhSPSUa7us2
y+or49XI+eN/c65U02vQAj78Cn2cPV5qeeP22BLUOKqZs4kLQXbSdLTo1VsGQ6gn
cXYFARCNNIG6VJLXDnXvgyz0ybVUN+VHWkl39pC/VJU2j7CUuv/b2FRgRxY/XpbU
tZZUw7VRM/EzOwaPkC3EGLbn6VPg6C/929FrxO8sxoNjDfr+VTxrNyeIflB65bY1
vgQivVlGUvdaG1xArYKLrru0Rig4ZidsysRRQzVRh7hsZrn/SUnBsM2ZsV4k0Gep
rnir46OE2TC/LVaux/F052XqifrozUsCMFsXkjAhSUXpJyHGcUg2TlprhgOVKVHV
64DD8CU/vRok6gHXHVro+zf6LBXJC5a7DIbNTGEieBL9ccN0KyxsfIpKk/7qoOAL
0ONCQVPOujrtQevx2Aw4e66lrz/OpB6CsapGztTdqtiUOXJI8CEBrAUiAuK2XZ/h
eOY9xi1IGOXnaouyOjO1o7gArYzT3Mee3JsCarM791m9Uu4vGbHxNvPOfWOvmybJ
YxLwmRa42fQyD6t0xP4QCbYezXSTRyJAGxqN1OCtOTArS7V0DVk=
=iaoM
-----END PGP SIGNATURE-----

--------------nwQHxhRe4WjfqtifJgHBnapn--
