Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A77CB6DB6D0
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 01:07:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbjDGXHQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 19:07:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjDGXHO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 19:07:14 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CFE9E049
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 16:06:57 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id hg25-20020a05600c539900b003f05a99a841so7918144wmb.3
        for <linux-man@vger.kernel.org>; Fri, 07 Apr 2023 16:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680908815; x=1683500815;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5slmtkxBa02r9GYuxyg9ycY0OZkS2FqxGeL+rjITqkQ=;
        b=jKGa9Rm7Rw/QcHsYo9ThkVSE37qir96n+Pr26ybYW6jO6+DMJ4baxcEzDEKyRfJhdc
         dw7oVXb6zfjsYODhER/FOZI1xa5bGDWmP6pjpHf9fgbt/S12rYYICNxuAyhCfwPbj+22
         xufp6EsyBBJj4clB8vMaIZocJudtaXes/GEda5kCvBOC1aSbczFq2lI0ZxXjQWvkhe1k
         Ue28nzk5ZPS++6Xk9EHU0+jrjr9U/gcs/UMrAuJHDC+QvrRIcuCel1hROE6dfK9aa6ag
         L1R5FbksVfH+18bqA9NMilKPrXjNyrZ2Ia95jprry+bCiFNDkKtjv+M/JFKM923Cwpgz
         YBQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680908815; x=1683500815;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5slmtkxBa02r9GYuxyg9ycY0OZkS2FqxGeL+rjITqkQ=;
        b=ahk8aXsMe0eYrZe/z8xlP8ptuA4it7zIJ3YdfocAyyiHAwo2g/DJp2D4UJ3tN9J2cw
         I7UxAcN5b2w5vXaucuN+GIkudO8QaCg7LiEXdo0LQos8sMlvnLqlLkHXAejQci8Y87Gh
         WLRbZv/L/cepAmVBkLpO27y9AY0F7bUpSV1FwxLTaEkodlBNzWCJfUiPf/VliR4vNYAe
         Pp/gpWy6C/RyLfphFwTnP63uzu4T1mfka9ju6p14zqSX7wmiSjaLDjC8ZcJlTpo/ooW5
         IwKmYNZ65SrQYL8FR8IY1J/QnCoNOaVc/x5J4eBeJt8E1J1Py/aSKmuOG7+5VlfCCaHQ
         TuLQ==
X-Gm-Message-State: AAQBX9fE11OMlLTjX3o3PL0cuhO2/yoB350v+6SFNnr5lJ2ZxELGN/lu
        lO1Y0vGnagDWi0Z8kHBNBbE=
X-Google-Smtp-Source: AKy350YuayKGR4M9MYZI4mJD3WWRtm1Y+19GPW0LwLO9qJ9GjR3s+9JxuGUDUGxsEQWIgLCE7K+xBA==
X-Received: by 2002:a1c:750b:0:b0:3ee:9909:acc8 with SMTP id o11-20020a1c750b000000b003ee9909acc8mr2547931wmc.32.1680908815696;
        Fri, 07 Apr 2023 16:06:55 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id q8-20020a1ce908000000b003ed2276cd0dsm5978851wmc.38.2023.04.07.16.06.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 16:06:55 -0700 (PDT)
Message-ID: <54a46052-3a26-ef27-8b65-5dbbc68ecc22@gmail.com>
Date:   Sat, 8 Apr 2023 01:06:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 1/2] proc.5: note effective removal of /proc/execdomains
 in v4.1
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Vmn9CNU5Jxi5wWhK0bxMEHo1"
X-Spam-Status: No, score=-2.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------Vmn9CNU5Jxi5wWhK0bxMEHo1
Content-Type: multipart/mixed; boundary="------------mTzmnb3T5y0HiMVmuVPccBnY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <54a46052-3a26-ef27-8b65-5dbbc68ecc22@gmail.com>
Subject: Re: [PATCH 1/2] proc.5: note effective removal of /proc/execdomains
 in v4.1
References: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>
In-Reply-To: <69aebed63a65313581798c8b630fa2efbf351400.1680881976.git.nabijaczleweli@nabijaczleweli.xyz>

--------------mTzmnb3T5y0HiMVmuVPccBnY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 4/7/23 17:39, =D0=BD=D0=B0=D0=B1 wrote:
> The file was turned into a fixed string in upstream commit
> 973f911f55a0e510dd6db8bbb29cd82ff138d3c0 ("Remove execution domain
> support"); the entire mechanism was fully removed in a patchset by
> Weinberger ending at commit 720d70716d137c0cb83b9a5279c384286c02a1c0
> ("sparc: Fix execution domain removal").
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.  Thanks,

Alex

> ---
>  man5/proc.5 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man5/proc.5 b/man5/proc.5
> index 233cc1c9d..2cc2c5e95 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -3216,7 +3216,8 @@ channels in use.
>  Empty subdirectory.
>  .TP
>  .I /proc/execdomains
> -List of the execution domains (ABI personalities).
> +Used to list ABI personalities before Linux 4.1,
> +now contains a constant string for userspace compatibility.
>  .TP
>  .I /proc/fb
>  Frame buffer information when

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------mTzmnb3T5y0HiMVmuVPccBnY--

--------------Vmn9CNU5Jxi5wWhK0bxMEHo1
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQwog4ACgkQnowa+77/
2zIUvRAAmsy1Abgvln92Zx+kVsrx27aXg3r2IEppuTaZJwMfvJtJdgpRDbI3pFMw
F0B4lnia3piDrwYoNcpGEebBebkx1kGERULZ8TXbgLo5nsjgh1GCSTkn4VJ9SRLv
9wYpDa1VlEseihwdPH+Hvc3lNG5N+bSAAkD0sJorlOA+vr3Wf6AuXMCSU+xq7njK
Jlrn90IzMvWAa0D8XtldiMg57tjeqw9lfhDnZ4y3sHe08ZKfPXmb3wKEtvcKKlhc
9sfa5dP22Ey/YNjHy6P1149SqUD3hp8BkmDKSDyBMc6n61bBnAXD+4TQ7EJgbrLv
Kkj/BqlIcsWt1CRen7XYstdTkly0rLVFhYv+VOuhpE2Y07tI0od69/PYuAYJXt4w
4aVPU8LJV3/cLypjMiP0EzUj1/ak59a62qPuQcY2Do2uOXnZGXtPo5N8U4wBlL/1
pojlpzghFN/d7iaf1rRtGpslo0xFxFVUXGX78RKk7bdLvXvePBvWnOIqv0by5O8C
t7kSeJib46JhEG4Ooj7PkGGND86hlshjCXK1D3ea9tDI79B4KOYbYvSDBtcnTZKy
fZePuMzy29nI0zyR1v/WyihMAju8zAoQj3FaWlNTkfVk6CZAL9yx2jWXOxQg4GAf
H8GXPNmCRmI18Vb/wtIFS6Ol93mIQb1uL3XYkxd6yOdxC+JVSko=
=Urh1
-----END PGP SIGNATURE-----

--------------Vmn9CNU5Jxi5wWhK0bxMEHo1--
