Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DE386B6176
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 23:25:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbjCKWZB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 17:25:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjCKWZA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 17:25:00 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 828255F6EF
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 14:24:56 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id p26so5607018wmc.4
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 14:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678573495;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLx4tw3y4QB9lCwovnfzDkbqvcLD6LpQWmqd+uGH2Xg=;
        b=oLzasw7cDIqCEL39dQ2ZmGGE/iAKnqS3JFYkKb2Vy+5sB6usT1FK5YGO+sV09J12vv
         S3x3t/NIVSMTzj4wJdBITaTMxuOBOy9B1EE1AbrnnvJNiEHpTjjBcMOR9uerybZ/kWK0
         zd3dxFAXrHB/qvmdqac0hKexsOvmBvr/vXUgmoELzf/lnGbVMUCsIq+qpbnjS0nKSdds
         4QZ1uR/SNIsfCGMqCpYIHGvj8W2kUXaXzX8nanHmv4HEDGKegbhuhCfwYDvZbKe91Iyn
         gvgzFYe9xcILlpguKIOKLaXLmyoIY8IWdvznPlqU1bJfDsXyETwWPjFhHQmSIKH25QG3
         DRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678573495;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zLx4tw3y4QB9lCwovnfzDkbqvcLD6LpQWmqd+uGH2Xg=;
        b=qauIPofCGb5u8qlAwEHjRZkxf4El9sQladq4jagbmaIhIA0vgwAjgKxXhHlk3y8iUy
         9lWWD5j67hVI3HmrKJbZJhUH9eFc9ZMLVVe+uCK7/95fuTrXLFGlw2fn1SevEmucoZPT
         Rjl5tX5DCzUfKWd57b8QH6GFfnbC8p6H3DefAy8AebLqVgSmhm623YSBZ2W660gYlwcv
         dzfI+E+h3Hs3h/AJA6vEved65l82H0z2jTd4DOex/+EMKaAZhi8UATKwnu2w4cNtjRtG
         xT9712fxux6940YZTPs6OwLGUGkWsXxYq1/gfAeoqC2Z5+g+XX8at7BbqMGLgeU6MVE0
         zgxw==
X-Gm-Message-State: AO0yUKUIqDbIpmI4IYWKzgguJ6/FuGvkBIOsVkWsev2CXPp6w+uk4xUZ
        cyoXgqRFXjx4wCPdmjeJ0xA=
X-Google-Smtp-Source: AK7set8LyK6qxhoHLJlHf8eitHqmfn5efhN83duKL/jzJn37Zv07mJvWgvjtIQguiZdWp77DBZbjhg==
X-Received: by 2002:a05:600c:4f07:b0:3dc:3b29:7a4 with SMTP id l7-20020a05600c4f0700b003dc3b2907a4mr5081987wmq.0.1678573494913;
        Sat, 11 Mar 2023 14:24:54 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id c21-20020a05600c0ad500b003e71a6be279sm3944734wmr.37.2023.03.11.14.24.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Mar 2023 14:24:54 -0800 (PST)
Message-ID: <d0d766d5-2482-9c1a-21f3-5d4dd2a8080e@gmail.com>
Date:   Sat, 11 Mar 2023 23:24:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: Issue in man page session-keyring.7
Content-Language: en-US
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <20230311171356.GA4805@Debian-50-lenny-64-minimal>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230311171356.GA4805@Debian-50-lenny-64-minimal>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------5Q6pAQuqmE4tHILJG0HzlwHA"
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
--------------5Q6pAQuqmE4tHILJG0HzlwHA
Content-Type: multipart/mixed; boundary="------------BTUWXIZFdnEGzH0uvM4zCzcm";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Message-ID: <d0d766d5-2482-9c1a-21f3-5d4dd2a8080e@gmail.com>
Subject: Re: Issue in man page session-keyring.7
References: <20230311171356.GA4805@Debian-50-lenny-64-minimal>
In-Reply-To: <20230311171356.GA4805@Debian-50-lenny-64-minimal>

--------------BTUWXIZFdnEGzH0uvM4zCzcm
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Helge,

On 3/11/23 18:13, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    PAM =E2=86=92 B<PAM>(7)
>=20
> "The session keyring is a keyring used to anchor keys on behalf of a "
> "process.  It is typically created by B<pam_keyinit>(8)  when a user lo=
gs in "
> "and a link will be added that refers to the B<user-keyring>(7).  Optio=
nally, "
> "PAM may revoke the session keyring on logout.  (In typical configurati=
ons, "
> "PAM does do this revocation.)  The session keyring has the name "
> "(description)  I<_ses>."

I think I prefer not doing this change, since we already have a reference=

to PAM(7) in the SEE ALSO section, and it would clutter the description
to add more formatting to it.  I'm doubting.

Cheers,

Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------BTUWXIZFdnEGzH0uvM4zCzcm--

--------------5Q6pAQuqmE4tHILJG0HzlwHA
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQM/7UACgkQnowa+77/
2zI/4A//WuaXKXe2PxmNeltktSJaa0Hfe6LjVD8N3bTCResWgWDFtUh63CKTdOhH
VdWqIkmyREQgAJJaSVH9KluOcDnG5p+In6kkSUMY4FdP2BuVoYdCS+DW8M5ffpA1
CnmcKrDGZArY1f6tU0p/yFz0e8vLJ1jrw+3lnTjeuzzRShPwN+nNk8CMY61S+8XR
jJ8r2aeJyhNxWcMzexSmGyMUovV/q2E4FdOSld/6TU+CX1eRwuWwHG0JNZy4iIy2
Va1XZFDXgPseU8wy5gTw21Uxf0yBNqhncFl1tJxOeCxRF+XGiU2xmsyTKdAUNUWI
ww3KZmPfzSvof5w27S38EP1g6btKjb06n5LlqXVj4sQ7gAN31XIjKP/+ZRADp/Pb
5XAFKzwSvT3w2cs6vOEKau8TfJi5eTKk5QRdoDGZaDhNJz6lErhyRS3F33U+j2Yx
X1IkoLcm4cOBLYFaKPbfzPCQ6J+Vzp34AVVXeTXoMCpT+LtoodcQhqLCpUoqmMUa
bBSX3erowdFaarRRtSMwK1Z7bC3FxfAb/K5OZUNL+MU+dF6X5DXF/8UYcEryodV2
UpQdjWaJfzRSEyVtSyUjRzK7PMv6ttKlHt16dh3d+w4gs9zOXPDaJ2kMFj3wPMFC
7kJqT66hPKDxRwX1FhsSjQf41wIKs94zOrWsQ4iWAkNCEC816MQ=
=yYp1
-----END PGP SIGNATURE-----

--------------5Q6pAQuqmE4tHILJG0HzlwHA--
