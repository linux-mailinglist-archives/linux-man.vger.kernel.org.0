Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 128B06EAA57
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjDUM1C (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:27:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjDUM1C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:27:02 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DCB86BC
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:27:00 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-3f193ca05a9so5288985e9.3
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682080019; x=1684672019;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnHonlaazt3fbRE6c0A/EMZsS0dgcwOujTrxswq9xlM=;
        b=XVcR+jix7aO+590yewChOCsZsfGGUIXLK188iEENsBURZTBYHKdBAYXWekgKeswJ6K
         SkWUXuVN2yORRAZJHC+z8VCxFHIzLDg5076g+3brmKsI5C2cbCZlQ/GNp6VmQV+TUSt7
         5N4f8HHHJ276aShzPhYvWDNOZFtpMvxvQaT7gycy7xWgecnmnosi/ilk55ic7vkG16TW
         +aF8SZ/1ksPk7nkSRRAN6TQo5rvhZOgSj+HroPSoNcOb8QvUdI78VcmsoHvwxMjXRPcI
         hYt9e2aJW9FtMH8RIDTQAW4OsC2Ylz7LDSuHglq35yissGj1RiO3zpS+xMe+/O3cu5dR
         /IUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682080019; x=1684672019;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JnHonlaazt3fbRE6c0A/EMZsS0dgcwOujTrxswq9xlM=;
        b=OFdcmL4J1y40iUZCoV+6L8pRWu7q+t4sE19BqPoLVropkEaBSXAs9QOr0Hf/lAIx8x
         I0pvw4N739bYlFPRIN9LPiOz3rLCUEqRNM4AZV/O/4vF+VTrCyJcuqTbHjwRp0iiAQdg
         36js+P6+Rd/Sewek16se66abcM33cysyQhghbcqFh/pcR5bFbUOxj86E9II8AsoeDxSs
         Y8EgSomrn8o3W2Wo+Z8bpwHhR1q36K6R3QC5vGW+QKy7GWiZF9tSxxx8zkBmty4odE75
         EaYklq/qgKAcGb6M9ImzFqH0tBxKupTe3MTXi5Mnd9JqEz4iGdwd0J1W5qBXp76ME/oe
         2lnw==
X-Gm-Message-State: AAQBX9f0ct0Mlwfm83frG8lelzveF7vQKFK5+kbWi+BZklaLtRYpoQGh
        c11fMoi9GMVeQyBV+QEV9nY=
X-Google-Smtp-Source: AKy350YU1e5iUmKveyhL7mFRu5r14FXs/aakrkk6reWEAEB+ZKUDmmXEZr3IZqAJxP2xGaJVJc9DoA==
X-Received: by 2002:a1c:7203:0:b0:3f1:952a:4bf0 with SMTP id n3-20020a1c7203000000b003f1952a4bf0mr876486wmc.33.1682080019183;
        Fri, 21 Apr 2023 05:26:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id 14-20020a05600c028e00b003f18b942338sm4384752wmk.3.2023.04.21.05.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Apr 2023 05:26:58 -0700 (PDT)
Message-ID: <19c5c7e2-5ae5-94a0-90f6-81f24f642f51@gmail.com>
Date:   Fri, 21 Apr 2023 14:26:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v9] regex.3: Desoupify regerror() description
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
 <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------yS3evSt8Z00jBfFCDvd45oM8"
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------yS3evSt8Z00jBfFCDvd45oM8
Content-Type: multipart/mixed; boundary="------------vgTuxvwcKWsfPxBYyXmTNO0e";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Message-ID: <19c5c7e2-5ae5-94a0-90f6-81f24f642f51@gmail.com>
Subject: Re: [PATCH v9] regex.3: Desoupify regerror() description
References: <bb6d4a20-ff44-f5e6-12bb-fdfd9db986fc@gmail.com>
 <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>
In-Reply-To: <bdliqsvy5uuizjz2gbxxlhlj72k22qc3faoapcbqqqezcusmma@yw6vqoeinh5u>

--------------vgTuxvwcKWsfPxBYyXmTNO0e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 4/21/23 14:03, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>

Aaand patch applied!  I believe I've got all, right?

Cheers,
Alex

> ---
> Range-diff against v8:
> 1:  4479e1572 ! 1:  38109fcc6 regex.3: Desoupify regerror() description=

>     @@ man3/regex.3: .SS Error reporting
>      +.IR preg .
>      +.PP
>      +If
>     -+.I errbuf_size
>     -+is
>     -+.BR 0 ,
>     -+the size of the required buffer is returned.
>     -+Otherwise, up to
>       .I errbuf_size
>      -are nonzero,
>      -.I errbuf
>      -is filled in with the first
>      -.I "errbuf_size \- 1"
>      -characters of the error message and a terminating null byte (\[aq=
]\e0\[aq]).
>     ++isn't 0, up to
>     ++.I errbuf_size
>      +bytes are copied to
>      +.IR errbuf ;
>      +the error string is always null-terminated, and truncated to fit.=

>       .SS Freeing
>       .BR regfree ()
>       deinitializes the pattern buffer at
>     +@@ man3/regex.3: .SH RETURN VALUE
>     + returns zero for a successful match or
>     + .B REG_NOMATCH
>     + for failure.
>     ++.PP
>     ++.BR regerror ()
>     ++returns the size of the buffer required to hold the string.
>     + .SH ERRORS
>     + The following errors can be returned by
>     + .BR regcomp ():
>=20
>  man3/regex.3 | 36 ++++++++++++++++--------------------
>  1 file changed, 16 insertions(+), 20 deletions(-)
>=20
> diff --git a/man3/regex.3 b/man3/regex.3
> index d91acc19d..efca582d7 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -210,27 +210,20 @@ .SS Error reporting
>  .BR regexec ()
>  into error message strings.
>  .PP
> -.BR regerror ()
> -is passed the error code,
> -.IR errcode ,
> -the pattern buffer,
> -.IR preg ,
> -a pointer to a character string buffer,
> -.IR errbuf ,
> -and the size of the string buffer,
> -.IR errbuf_size .
> -It returns the size of the
> -.I errbuf
> -required to contain the null-terminated error message string.
> -If both
> -.I errbuf
> -and
> +If
> +.I preg
> +isn't a null pointer,
> +.I errcode
> +must be the latest error returned from an operation on
> +.IR preg .
> +.PP
> +If
>  .I errbuf_size
> -are nonzero,
> -.I errbuf
> -is filled in with the first
> -.I "errbuf_size \- 1"
> -characters of the error message and a terminating null byte (\[aq]\e0\=
[aq]).
> +isn't 0, up to
> +.I errbuf_size
> +bytes are copied to
> +.IR errbuf ;
> +the error string is always null-terminated, and truncated to fit.
>  .SS Freeing
>  .BR regfree ()
>  deinitializes the pattern buffer at
> @@ -247,6 +240,9 @@ .SH RETURN VALUE
>  returns zero for a successful match or
>  .B REG_NOMATCH
>  for failure.
> +.PP
> +.BR regerror ()
> +returns the size of the buffer required to hold the string.
>  .SH ERRORS
>  The following errors can be returned by
>  .BR regcomp ():

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------vgTuxvwcKWsfPxBYyXmTNO0e--

--------------yS3evSt8Z00jBfFCDvd45oM8
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRCgREACgkQnowa+77/
2zIfixAAjhTW9usfGeVfQKUrfS6hydbv8GEcuhADeMqYNyDlBXloKC2R3I3Y26yq
N0PrLA8sQ31n/wLuhmQpwmClZTtWMSyZU/xu2UtJgnzZ1vRXq6ouuLz02XR/MnAm
Cb6fKB1ci17X+Bkmrv5pLNLdiSm4FY+S628kgc1boqh8bI28ipVgutCRKDd5w2mB
970tnAipNQQuE7LhNP06Rs8gg4S9dN7w5YB/iORij7sabXP/2AV4JNEVWwCX2GJu
QD6CDPZGCAQiAY7D7sgsfqfzK3gwcCQ8zSbLZt3POltEi+y+QkdWO/wxBTTkzXcF
rWLHiHP5c2V/LaTGb2ZWYIv8zO5Apb0Xsk0xpp+I1zKmEKtgHJR03qqABeBcUcwG
tXOcivO/YjjpN66KlKeWRmKS9Q7gYxgePYlFdhnc2prR4/X59Eazgv6kHzV/YNAP
HVzF1qAUo5hYZYxX9PQkwIwpX73FD5KhSnprqgmNsHHoCkG3zYpgjBs2wjzBYpq9
wPhoe3/EiR3yrrMwFrvvW+f4Qbvz0VUbwyeCmKfwjhtKXXuJTCNJsyJ+l9B21Ugc
ByHDLCFJmjLxU6N371yRztc8n9ai5Ll811ktrdCBmZhjPOZo7qr1mFIIMZHFycfR
4HabXs+q5GbA5ujc5OdVpf1cNt6iarH8s1nP/2yPhsjlhbvKDkU=
=hhHN
-----END PGP SIGNATURE-----

--------------yS3evSt8Z00jBfFCDvd45oM8--
