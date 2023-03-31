Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC05C6D2A1A
	for <lists+linux-man@lfdr.de>; Fri, 31 Mar 2023 23:45:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231195AbjCaVpD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 31 Mar 2023 17:45:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231701AbjCaVpC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 31 Mar 2023 17:45:02 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 045462369F
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 14:45:01 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e18so23786217wra.9
        for <linux-man@vger.kernel.org>; Fri, 31 Mar 2023 14:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680299099; x=1682891099;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7A5NqgUNCUgTQUDIHiuE6umfEqKaRJXdu2vV0juHPs8=;
        b=CIDRzGQkLVp+YcFACNKBmnWGBK2x0U6RQYd8MvmPbSGlIJJmqxPeHG+pPI08nsbtbO
         paxZqGIm6mV5ER5vboYbg8RBv5uwp374XU7R5C0Wf50ZpF+rdL/5GiFKJqK48MK4Cy/b
         Jj6WGOcYIknSKNHrtdfx20uAOZW+M5m03DxZlj3FDRno3uW5csbu87cl04MSsV6PSoMI
         XxGHx42lTRamtB3EzpFfx74Otf0ReDtKCrW3RZi4F70ii7raJj0rieP2PhglVMbcn/ZP
         /WSbVabree3WLPYfY5hKhILinTBok0YepYlrYjs0pZyfytlAzJyWOx/LAByjYeow6BV4
         lfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680299099; x=1682891099;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7A5NqgUNCUgTQUDIHiuE6umfEqKaRJXdu2vV0juHPs8=;
        b=Oweq2E3fNIAIYafSPvgjZ0Ap7Mj55AZ5vFKfHhrJICQnULvkyM0Fjq01qSIksz4aiO
         blk40rMuYwmFKZ7dwKKUP5AP620BdZsGzCAl9yLqaN9rzvoVox3e4i7WvVFIdyN2L3av
         Bs9gAXTwp3CHyR9fW8DbUB9Qr5k408M0qdyK9WhFoabwRWFCfZKfmOSX2EzflaUpAU/p
         s+RIxRx+Pe28IlYVYreKlVYBPZPlw56RpY6+y+cZavUHZZutXiXN/8OYwJG+NjsDYpVJ
         4QC5ves8ixTOCnGtkpVQpZMsei+D0l2ZNvkCCPLI8p4C+Ynz/5jKBnABiihcP3q0zwqb
         VLMA==
X-Gm-Message-State: AAQBX9fkOFVlOIzYAva9OMA3xHYWVUA1G9c/EN4gIj6gpun2nQYjIh2X
        90fWHfrWfqj2x3WpTd7+VIvGybn5B5Q=
X-Google-Smtp-Source: AKy350ZkulqVdcCIUstYtv+EJd22HI5y884ftuIENwJyq07Tr2Czk3YcNPx0/4cNIqTZ2wX/qFYKtQ==
X-Received: by 2002:adf:e848:0:b0:2c7:fde:f7e0 with SMTP id d8-20020adfe848000000b002c70fdef7e0mr19548817wrn.65.1680299099303;
        Fri, 31 Mar 2023 14:44:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id b5-20020a5d4b85000000b002c559843748sm3172885wrt.10.2023.03.31.14.44.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 14:44:58 -0700 (PDT)
Message-ID: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
Date:   Fri, 31 Mar 2023 23:44:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] symlink.7: cross-link to proc.5 for
 fs.protected_symlinks
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20230327063142.pdeeemawtssywcqg@jwilk.net>
 <fneuwvfzrpj22nk4u6pgjr4zd62z2mrjbvyuvgl5vkkiwtfnvr@ca4gsy5ktdld>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <fneuwvfzrpj22nk4u6pgjr4zd62z2mrjbvyuvgl5vkkiwtfnvr@ca4gsy5ktdld>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------O0voFOjwivP5ljg0HHztM8dl"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------O0voFOjwivP5ljg0HHztM8dl
Content-Type: multipart/mixed; boundary="------------5OyKNzl2t3ZI36qaqvkzd0KX";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <792eaf9c-f43e-adc9-c7ae-b1ef9f28a7bf@gmail.com>
Subject: Re: [PATCH v2] symlink.7: cross-link to proc.5 for
 fs.protected_symlinks
References: <20230327063142.pdeeemawtssywcqg@jwilk.net>
 <fneuwvfzrpj22nk4u6pgjr4zd62z2mrjbvyuvgl5vkkiwtfnvr@ca4gsy5ktdld>
In-Reply-To: <fneuwvfzrpj22nk4u6pgjr4zd62z2mrjbvyuvgl5vkkiwtfnvr@ca4gsy5ktdld>

--------------5OyKNzl2t3ZI36qaqvkzd0KX
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 3/27/23 14:29, =D0=BD=D0=B0=D0=B1 wrote:
> This is on by default in Debian, maybe the next reader won't spend an
> hour tracing the kernel
>=20
> Fixes: e8ff4f53ab9a7cbd ("Remove information migrated to inode(7) page"=
)
> Closes: https://bugs.debian.org/1033477
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Patch applied.

> ---
> This definitely needs to be referenced here, because "The only time tha=
t
> the ownership of a symbolic link matters is when the link is being
> removed or renamed in a directory that has the sticky bit set" is an
> abject lie, especially since Debian ships with fs.protected_symlinks=3D=
1;
> the minimum here is to cross-ref to an extended description.
>=20
> I straight-up didn't know proc(5) listed sysctls, and I looked!
> (Well, defined as "apropos sysctl" didn't list anything in particular,
>  and sysctl(2) has an unannotated proc(5) in SEE ALSO.)
>=20
> It'd be nice if, idk, the proc.5 SH were extended with "process
> information, system information, and sysctl pseudo-filesystem" or
> whatever, or there were a sysctl.[47] alias for proc.5,
> because as it stands, I would never have guesssed there's a listing of
> sysctls in proc(5).

Feel free to send a patch for it :)

Cheers,
Alex

>=20
>  man7/symlink.7 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/man7/symlink.7 b/man7/symlink.7
> index 77fefb743..4403f6214 100644
> --- a/man7/symlink.7
> +++ b/man7/symlink.7
> @@ -84,10 +84,14 @@ magic links have been used as attack vectors in var=
ious exploits.
>  The owner and group of an existing symbolic link can be changed
>  using
>  .BR lchown (2).
> -The only time that the ownership of a symbolic link matters is
> +The ownership of a symbolic link matters
>  when the link is being removed or renamed in a directory that
>  has the sticky bit set (see
> -.BR stat (2)).
> +.BR inode (7)),
> +and when the
> +.I fs.protected_symlinks
> +sysctl is set (see
> +.BR proc (5)).
>  .PP
>  The last access and last modification timestamps
>  of a symbolic link can be changed using

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------5OyKNzl2t3ZI36qaqvkzd0KX--

--------------O0voFOjwivP5ljg0HHztM8dl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQnVFIACgkQnowa+77/
2zJm+A//SMhk7mpnw1Qf8ggB9BN+QiLL/MrzR8XRCcFubwaQwOtLaSBY3dUlisgD
PBwtqG9IIjJRD0PJgoSaZroEiSOG9zteOG3uEjMtmC7p7dvXRVsRWOOl/Kj82+IW
YntNPlw45jeTfO3SvDQLCVJ5gOd3Ab7/1CJA2pwAgCGgNNjnIxhiNqpiSCKi5MDR
0usdHjeSlB14b5ICr9ApoftTdiOvp7n2OsYYfBWwUabAinlUwBgLvxYn7fydcOSs
ep6mPOWBo8Af0pUVLsDEnK65PIp07aYMRE+Sq7IZ6Bqh8QAB4b7iYZ/NQmpt4vpa
sdAYn+iPUIGTJFa6qcM5aj1+sdmNfpJUQt+wZ9D1FM0pfXfMD4B/D/Z3YCKDQwSe
RiGVXZ5QO7y0VoRZZNhOr8GcmWGi1BBVYlzvCZFVI9IdcofGdeLsyz7mgYuBngpy
eT4s4KrQYX1qNAH9M4TqTR6Ej6dE194DFoX0Q9vBC70cCb0MPT1btE57DVitMaz8
OjT/2WmEl1G8fK7YmcmlFB/f1rCrLAvrUhXHX6dmQ5LjlI3snOmTm0yMVob8SUH0
jhkRkMxyrHvd/sPWjcjcIL6SjbWc8DtOHe6oQtbITip2GErbUoBP0NWhOaPMogMD
s3ZtlzAgC3foCS9Lu8g4s74+Xh0Z23WPhjhvFzCj3X/hsJXPtPs=
=R2Ag
-----END PGP SIGNATURE-----

--------------O0voFOjwivP5ljg0HHztM8dl--
