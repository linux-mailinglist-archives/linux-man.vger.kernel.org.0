Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8FC71293C
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 17:18:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237050AbjEZPS1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 11:18:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231530AbjEZPSZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 11:18:25 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E1DE7
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:18:24 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3f6d3f83d0cso9471165e9.2
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685114302; x=1687706302;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=awu2jfFQzmEWqRMNcnUqhcj4cTp1Of/NrUFQqfwQZtM=;
        b=GgXgTBYqjukw8j9+2FnDHUteEWCgAGisjQS7+IpfrjdWSIUOyZln8gQxrV82SQguoM
         pTI8lelsAYSefKGmFB9lRgVk0NfxHsiyUeEzoLlE7sAtgk5bGsQzDEj6KdUteQswLf0T
         73VoYl3mTWUQFdm2XZqHV2WfL2iDdb4RCc+A8ywg4yZXcFZBIdpkpqkGflb33OCeyhQ0
         1cucaz3J8AiXLBUepWewqVktDcYUhQkW6EM8YmOLdPrzE3vCvJzgiUXtuVeXPVZL4SAo
         QKxFOJJeNOEb1uZHeLPrEfZBbAvQ0XwuZVDWWC+isXTfYqClc5PxDe5DYrtSMMiEKkBM
         CjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685114302; x=1687706302;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=awu2jfFQzmEWqRMNcnUqhcj4cTp1Of/NrUFQqfwQZtM=;
        b=SS8SZVKL+BQ/b5NaGb/jjFGd5epV9atIsXbnL6qyAhyYkWjsM6zoYDWJMH9tA3Y5MZ
         0Sj+e/wpv6ojNLozmxLBVDwu+6h/Vhkn6Fb7gp2DeuA+iZNwPpQS4alJnP+IK8S5uD8c
         PabGxsfgXS+p4Scbf0vewO+yfPkN+rhJuaCl0vyHjpNly7dWz8XadG9dOPH7ErtW4+jz
         Qr1E2WR9I+/6Nov3yWpZul2uzXOjwic1r1quT5AQJXvw0Ez6+zrLObvn28qbrVHdFO4M
         ftYykB5eCjCpYtJZ2V9Fd3DuOLFgDqyB7phqswTRmwV4fTjirIFTGnDeyW7J0/ho8wGW
         LLEg==
X-Gm-Message-State: AC+VfDxfE/BAwHDp18IfBi252741OIIUs845y0J9VbNiSCtd6lQtflMI
        EbYy65bQ35JygmYr74nqK8OBb206rio=
X-Google-Smtp-Source: ACHHUZ6DLO/N64elrCVp8I6AyPJ0mFecqswvLNyfQOGYbfVCrpLX0Zn/k2cNFJgOl+mADgDRWaQFIQ==
X-Received: by 2002:a7b:c006:0:b0:3f1:789d:ad32 with SMTP id c6-20020a7bc006000000b003f1789dad32mr1646241wmb.11.1685114301654;
        Fri, 26 May 2023 08:18:21 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id m23-20020a7bca57000000b003f5ffba9ae1sm5538207wml.24.2023.05.26.08.18.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 May 2023 08:18:21 -0700 (PDT)
Message-ID: <62d37cf4-73ee-be40-da70-f3cd2364c9d7@gmail.com>
Date:   Fri, 26 May 2023 17:18:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] unshare.2: ffix: indentation inconsistencies
Content-Language: en-US
To:     =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
Cc:     linux-man@vger.kernel.org
References: <20230526084101.2629775-1-gnoack@google.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230526084101.2629775-1-gnoack@google.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Rew2qQOetJaMqJgTuYQc4Yfq"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Rew2qQOetJaMqJgTuYQc4Yfq
Content-Type: multipart/mixed; boundary="------------MpInBqHT0qNKrOa5QKWza097";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack@google.com>
Cc: linux-man@vger.kernel.org
Message-ID: <62d37cf4-73ee-be40-da70-f3cd2364c9d7@gmail.com>
Subject: Re: [PATCH] unshare.2: ffix: indentation inconsistencies
References: <20230526084101.2629775-1-gnoack@google.com>
In-Reply-To: <20230526084101.2629775-1-gnoack@google.com>

--------------MpInBqHT0qNKrOa5QKWza097
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi G=C3=BCnther!

On 5/26/23 10:41, G=C3=BCnther Noack wrote:
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>

Patch applied.  Thanks!

Alex

> ---
>  man2/unshare.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/man2/unshare.2 b/man2/unshare.2
> index 58d57a86b..1e06d8064 100644
> --- a/man2/unshare.2
> +++ b/man2/unshare.2
> @@ -532,12 +532,12 @@ main(int argc, char *argv[])
>  \&
>      while ((opt =3D getopt(argc, argv, "CimnptuU")) !=3D \-1) {
>          switch (opt) {
> -        case \[aq]C\[aq]: flags |=3D CLONE_NEWCGROUP;      break;
> +        case \[aq]C\[aq]: flags |=3D CLONE_NEWCGROUP;     break;
>          case \[aq]i\[aq]: flags |=3D CLONE_NEWIPC;        break;
>          case \[aq]m\[aq]: flags |=3D CLONE_NEWNS;         break;
>          case \[aq]n\[aq]: flags |=3D CLONE_NEWNET;        break;
>          case \[aq]p\[aq]: flags |=3D CLONE_NEWPID;        break;
> -        case \[aq]t\[aq]: flags |=3D CLONE_NEWTIME;        break;
> +        case \[aq]t\[aq]: flags |=3D CLONE_NEWTIME;       break;
>          case \[aq]u\[aq]: flags |=3D CLONE_NEWUTS;        break;
>          case \[aq]U\[aq]: flags |=3D CLONE_NEWUSER;       break;
>          default:  usage(argv[0]);
>=20
> base-commit: 2aa85ce3b0a85fbf6909e873c78959c2fbcc25ac

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------MpInBqHT0qNKrOa5QKWza097--

--------------Rew2qQOetJaMqJgTuYQc4Yfq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRwzbsACgkQnowa+77/
2zLhWw//d+plBv5AQ36QLwriztTHw0CHWhnI5TmHr6vRA0PRMZQdDFsoOAB1Dqg/
KJsQdXnxzdP9CQhed31vjK38s/WFn+0gJebpm68+zNKppRESuJbr6bFHRfvtvfnC
HOO4ksfJPAuEAR9fThGthlmiXlRgRJO5IyQD32dpp9ZYNrNmlcHuY9p165I/pUTg
vecSRkI9H5km0/paHSbjECuQO0O1WHwjY9HOXofVSMNLasQoaKFVfCBf95O9rX5z
3Yr8nauYUkw2fDRoP/B6Yi34V8cIqGapBHK1BunpVG8FazY+FHdaiSMpCGUGz1Yx
gRG0mcqu7w4hykokbJIQPIGeyVG6O98tP9qdSzJnF85wgHMpdXR08t4J3Bqb6MmV
4BegvJEAJKEb7Ode2pegjO47wyHrv8ae3O4L4MmoJwMlRrTiXW2056GZSspRq0yF
ymA5QN45j694FYZeJUX/4+TcZGtCAItOuLyUp9lw704cvifEQgExdxkvgNZPIGtu
/q8Wi7VJXLRuNqNIAjIt8te3eoP3yjPibzKvbu+wtUKcrV7nqx8QhYWj/+UlkXi3
5Y0HG01QyBVDSRBuBAOqfgkrBVrWRmF6PdSmXJ9SHmecwHqEqpWu1zgmxsK+3MwP
RKs0xyyVqdDYFK48VoDcyvJfmTGaWdfa5ERwi08wP2vgZs2VzSs=
=DkkQ
-----END PGP SIGNATURE-----

--------------Rew2qQOetJaMqJgTuYQc4Yfq--
