Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46CB57101B2
	for <lists+linux-man@lfdr.de>; Thu, 25 May 2023 01:32:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbjEXXcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 May 2023 19:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbjEXXb6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 May 2023 19:31:58 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB24012B
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 16:31:53 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-30a8fa6e6fcso1018029f8f.1
        for <linux-man@vger.kernel.org>; Wed, 24 May 2023 16:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684971112; x=1687563112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RwQYTy4iTukxo5zZ2xx5Tucu+r6ALa6vN5LnKLOLA24=;
        b=TecZCF1U2Q0Ar0M4PktsZIofwUZXmi6Zs+C+Et+d6rqf13VDTxHJWR6X5MVzS1hoTO
         sSBFqTHG8zleOT0BqowVWlMBbQVYimu3XU2BAgrjYHeAd/YtfXsM5sFe/RK3xr7q7BXA
         MxbQLoYo6ddf3ymFyRYqjPMvRyTg1XThCynECbtj6Teje0wkPk3sedxM09jo6bhXAswd
         2tpcmdZjqCjZyl4sXUfvAU7XDR8u1xa0f4L0MDd0CzSbDdtua5t5ZFSuT7uE4yGtRpKq
         FCa+cnuyiDM8PnYMZpYSvH7Z9K/yzVSyds/+XbVpznYmNy8Wn+yQ27uSnQCdycgBv59X
         NkfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684971112; x=1687563112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RwQYTy4iTukxo5zZ2xx5Tucu+r6ALa6vN5LnKLOLA24=;
        b=fXRxEU3Bp58vkOiaAoPIKnREhut9ptE4KZZl/38WKeig2x3pcYVxA/Fg/+aiDn2qwN
         3TEE7HvjxuATN9pIlqI27bMx8iOSxQ0seCDG1IU52BQ+aKkIm7OgQK3eRE9+QmqNjMJ7
         QITXY8d8GpLJvTi2pm08CcfbGrLfrrsZxlH7iKJNqulXXG/Bw6tEf9DdOkkHTv8+rVUk
         fvq7Us5XFEzzII1tl4Z8QI1rcsnaANC2yMaLaSkfhmqZtYSId/bpj+MK3BOrwa3fxU1u
         SIEOdMHTPb4bRZC3q0dpPUEEg7rYip+GUPo6IlgwUWukFTc+u0eMTIrD/hdCrTHIRyhH
         gQ3g==
X-Gm-Message-State: AC+VfDwoy+Wqh3S1Zb8crGd0IO6JNmG+Bc7aQMwd+BLvChbPRSTITbX7
        j1sO1Vf8hME2u8kOnUptias=
X-Google-Smtp-Source: ACHHUZ4ytwYvXO+qHs6pYURHU7CuoyYqybvCoopt1lfe8qwiLVWw21msjlWKIqq7qwukoWmcVSm5XA==
X-Received: by 2002:a5d:65c5:0:b0:2f5:9800:8d3e with SMTP id e5-20020a5d65c5000000b002f598008d3emr959485wrw.47.1684971112102;
        Wed, 24 May 2023 16:31:52 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i10-20020adfe48a000000b002fed865c55esm15737697wrm.56.2023.05.24.16.31.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 16:31:51 -0700 (PDT)
Message-ID: <7aa24d83-b2f8-53c4-b30f-421459f26ff3@gmail.com>
Date:   Thu, 25 May 2023 01:31:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] proc.5: Clarify the format of /proc/$PID/cmdline
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
Cc:     Matt Bobrowski <repnop@google.com>, linux-man@vger.kernel.org
References: <20230524143307.1076366-1-gnoack@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230524143307.1076366-1-gnoack@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------6Fb0NAcklul0Ag2eal0QLujb"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------6Fb0NAcklul0Ag2eal0QLujb
Content-Type: multipart/mixed; boundary="------------EvSOHnzZ3FOef80lCY7eyBhv";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
Cc: Matt Bobrowski <repnop@google.com>, linux-man@vger.kernel.org
Message-ID: <7aa24d83-b2f8-53c4-b30f-421459f26ff3@gmail.com>
Subject: Re: [PATCH] proc.5: Clarify the format of /proc/$PID/cmdline
References: <20230524143307.1076366-1-gnoack@google.com>
In-Reply-To: <20230524143307.1076366-1-gnoack@google.com>

--------------EvSOHnzZ3FOef80lCY7eyBhv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther!

On 5/24/23 16:33, G=C3=BCnther Noack wrote:
> It is possible to produce /proc/$PID/cmdline files which do not follow
> the NUL-seperated format, by using the tricks described in the
> paragraph below.
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

Thanks!  Patch applied.

Cheers,
Alex

> ---
>  man5/proc.5 | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index a9bb175e8..a16479634 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -497,10 +497,21 @@ unless the process is a zombie.
>  .\" In Linux 2.3.26, this also used to be true if the process was swap=
ped out.
>  In the latter case, there is nothing in this file:
>  that is, a read on this file will return 0 characters.
> -The command-line arguments appear in this file as a set of
> -strings separated by null bytes (\[aq]\e0\[aq]),
> +.IP
> +For processes which are still running,
> +the command-line arguments appear in this file
> +in the same layout as they do in process memory:
> +If the process is well-behaved,
> +it is a set of strings separated by null bytes (\[aq]\e0\[aq]),
>  with a further null byte after the last string.
>  .IP
> +This is the common case,
> +but processes have the freedom to override
> +the memory region and break assumptions
> +about the contents or format of the
> +.IR /proc/ pid /cmdline
> +file.
> +.IP
>  If, after an
>  .BR execve (2),
>  the process modifies its
>=20
> base-commit: 4ca216bacc7d185c1af3c384ab53cd1ec74830d1

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------EvSOHnzZ3FOef80lCY7eyBhv--

--------------6Fb0NAcklul0Ag2eal0QLujb
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRunmYACgkQnowa+77/
2zLoCA/+NJIWii9eFOppCZ9bGCFepfE9xTlQKAg+QM1kPUBuAvL86mwHDvKiCrpP
hRqJXfTDCXXeaWA/dTXWk7TL734ZfRPQprnRwQcKXS/PHATSMlavqQu0TMAbEz4h
Eiktyk55KxGrCtYJU688uuOP0GciiLi4HCwUci9SvH77WcwVtj2Wr/V+S1Gjo05Y
X5UYxF8s4kmQ+sjlBCxsEPdfnj03Dv9fZHenrmplReA1VpyBswwoqxFfi0LSpBAS
tC/40Fc//d6SH6cQSRELb0vhMpU8Moiy3L4i+Vla+4x0h0tPuDgN5yE9lDs+VcqH
B2lCWxk6veYzSQlBzu1CsW7qTZBACQsBEj8lcSaKoOdortclzd3Ku/zCJDE2n4rD
qFfsY5VntMN4IJMfVMn35Soq8NiflJS6DVPBTj764/8hP+6gVRHcS4rbN+6JWEgp
azsCwYtAf6g/bvmA7PmX9mhJbhudRKVwepSsSHWvc2vIFATeRtyqBkgaPekN+JzR
AZ/Aj6/JP9Dw5kcowQjPuj7CqcTaIgUeGVumJWTJhgHx7YgLSSle2HyigeLn9jJe
00o62upp54Srs/n+1fu+ZVbc73EB0dVzchn9b8Ha+DXt0KyH/Jv/LMomGmoDV26I
WcOHbt1Rk+sqkg9wRO7prqoeTr4lvqCPEVp2TAjai1IRcWa8j7M=
=YUT1
-----END PGP SIGNATURE-----

--------------6Fb0NAcklul0Ag2eal0QLujb--
