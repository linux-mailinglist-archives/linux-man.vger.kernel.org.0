Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BB4B691659
	for <lists+linux-man@lfdr.de>; Fri, 10 Feb 2023 02:47:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbjBJBrj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 20:47:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbjBJBrh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 20:47:37 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 359F21F5FB
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 17:47:36 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so5262676wmb.2
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 17:47:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H4Vhtafl5ceGyTwZvPgA/Fx8jaaCsmenbQPahvvbV0c=;
        b=MlKMmHGcshP99MECjbjNUISlVtKGMXCtgaDsoT+soYeHzzpMflwtBw++Tsrs2mAvHW
         YGI0AlWPDlqC47T68+gaXwj4nlhHRBRQJ3uqzF6pyLd7FrlTNs5M66IJzUuusys6kWWb
         ZLVj2cG0tvzNJxHdI6Ac8woYC1a1oiLp/B78kqeZYzIMGvGaP7Ugx4z1d1pMmh7f0nMm
         B76wSsm/G5r6Dt/yeLg+y+ubQgcxnc/l8CB7WRLG6SiKJoQhCp068XYfUvcH3zvzYEEi
         OQq/5XhFzZZT2g+rxr9m0p5RG3nj3etL6ENPmcYXQM03sn/2kcPawLLyH3Eqm2vFI/6g
         svsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H4Vhtafl5ceGyTwZvPgA/Fx8jaaCsmenbQPahvvbV0c=;
        b=Upgwqfx6Ezelc6/7j/QDLr5ZEyd7OIzEKVxKJ0rTVrvyF5M8zoNGcC8CrEPI//kU3Q
         CGoEiKlEsx5j8oFM4drSRVTYGwEEu843jTYGGzfGqw3ZM3qAQfnnbyPbxaLxk+wo4ADK
         5DObgLMrZkv2hhFQiTgvbBv/WQbBOzJUjn3yRsiilgf3MX5GDGJ/Zyy1E2OP/2Q08hN2
         eaY7XTuxuui4oQFSMI7r5Cgenk/N8SdiuJMwDFHCHB+wOpMLupiAVN7gOYQR2V0lBWid
         aDVChxxZbI9XU1dz/YJiG74c+RvNhy1OUfqaMy/BqMG1K+UHjMTWahD8LdmMEjmHYBos
         qsWg==
X-Gm-Message-State: AO0yUKXdi9Rugnb/8yDNyUyHzF3fAuC5QhehaaTwgQTwloV2UGhosFwU
        biJvfCSj4jzCnn5jsLH//RA=
X-Google-Smtp-Source: AK7set/WWIidMqNNdeXyfG305Pzv1vIVzjRiCOevqYnJLkLHyuTAZo6FeIz97KWp37KjYGPSubj4CQ==
X-Received: by 2002:a05:600c:1604:b0:3d2:3be4:2d9a with SMTP id m4-20020a05600c160400b003d23be42d9amr11917867wmn.20.1675993654603;
        Thu, 09 Feb 2023 17:47:34 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600c4fc700b003db0ad636d1sm7289647wmq.28.2023.02.09.17.47.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 17:47:34 -0800 (PST)
Message-ID: <e333df29-ec6c-da14-8cd0-fd4626a2d3ba@gmail.com>
Date:   Fri, 10 Feb 2023 02:47:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 18/20] localedef.1: ffix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230209181134.uoci3m53wyoek5b4@illithid>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230209181134.uoci3m53wyoek5b4@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------y13kbVYWRCDXn02JmzNbQLha"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------y13kbVYWRCDXn02JmzNbQLha
Content-Type: multipart/mixed; boundary="------------t4pVvzQ99TVrXefHqAVJ6w6g";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <e333df29-ec6c-da14-8cd0-fd4626a2d3ba@gmail.com>
Subject: Re: [PATCH 18/20] localedef.1: ffix
References: <20230209181134.uoci3m53wyoek5b4@illithid>
In-Reply-To: <20230209181134.uoci3m53wyoek5b4@illithid>

--------------t4pVvzQ99TVrXefHqAVJ6w6g
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2/9/23 19:11, G. Branden Robinson wrote:
> * Protect literals from hyphenation.
> * Specify break points in lengthy file names.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>

Patches 17 and 18 applied.

Thanks,

Alex

> ---
>  man1/localedef.1 | 60 ++++++++++++++++++++++++------------------------=

>  1 file changed, 30 insertions(+), 30 deletions(-)
>=20
> diff --git a/man1/localedef.1 b/man1/localedef.1
> index f33d01ca0..4031db10d 100644
> --- a/man1/localedef.1
> +++ b/man1/localedef.1
> @@ -45,7 +45,7 @@ localedef \- compile locale definition files
>  .YS
>  .SH DESCRIPTION
>  The
> -.B localedef
> +.B \%localedef
>  program reads the indicated
>  .I charmap
>  and
> @@ -79,22 +79,22 @@ If the
>  option is used,
>  .I output-path
>  is the name of a subdirectory in
> -.I /usr/lib/locale
> +.I \%/usr/\:lib/\:\%locale
>  where per-category compiled files are placed.
>  .IP \[bu]
>  Otherwise,
>  .I output-path
>  is the name of a locale and the compiled locale data is added to the
>  archive file
> -.IR /usr/lib/locale/locale\-archive .
> +.IR \%/usr/\:lib/\:\%locale/\:\%locale\-archive .
>  A locale archive is a memory-mapped file which contains all the
>  system-provided locales;
>  it is used by all localized programs when the environment variable
> -.B LOCPATH
> +.B \%LOCPATH
>  is not set.
>  .PP
>  In any case,
> -.B localedef
> +.B \%localedef
>  aborts if the directory in which it tries to write locale files has
>  not already been created.
>  .PP
> @@ -109,12 +109,12 @@ If no
>  is given,
>  or if it is given as a dash
>  (\-),
> -.B localedef
> +.B \%localedef
>  reads from standard input.
>  .SH OPTIONS
>  .SS Operation-selection options
>  A few options direct
> -.B localedef
> +.B \%localedef
>  to do something other than compile locale definitions.
>  Only one of these options should be used at a time.
>  .TP
> @@ -123,7 +123,7 @@ Add the
>  .I compiled-path
>  directories to the locale archive file.
>  The directories should have been created by previous runs of
> -.BR localedef ,
> +.BR \%localedef ,
>  using
>  .BR \-\-no\-archive .
>  .TP
> @@ -157,11 +157,11 @@ Otherwise,
>  the file is sought in the current directory
>  and the default directory for character maps.
>  If the environment variable
> -.B I18NPATH
> +.B \%I18NPATH
>  is set,
> -.I $I18NPATH/charmaps/
> +.I \%$I18NPATH/\:\%charmaps/
>  and
> -.I $I18NPATH/
> +.I \%$I18NPATH/
>  are also searched after the current directory.
>  The default directory for character maps is printed by
>  .BR "localedef \-\-help" .
> @@ -171,11 +171,11 @@ Specify the locale definition file to compile.
>  The file is sought in the current directory
>  and the default directory for locale definition files.
>  If the environment variable
> -.B I18NPATH
> +.B \%I18NPATH
>  is set,
> -.I $I18NPATH/locales/
> +.I \%$I18NPATH/\:\%locales/
>  and
> -.I $I18NPATH
> +.I \%$I18NPATH
>  are also searched after the current directory.
>  The default directory for locale definition files is printed by
>  .BR "localedef \-\-help" .
> @@ -191,11 +191,11 @@ Otherwise,
>  the file is sought in the current directory
>  and the default directory for repertoire maps.
>  If the environment variable
> -.B I18NPATH
> +.B \%I18NPATH
>  is set,
> -.I $I18NPATH/repertoiremaps/
> +.I \%$I18NPATH/\:\%repertoiremaps/
>  and
> -.I $I18NPATH
> +.I \%$I18NPATH
>  are also searched after the current directory.
>  The default directory for repertoire maps is printed by
>  .BR "localedef \-\-help" .
> @@ -227,7 +227,7 @@ as a subdirectory in the same directory as the loca=
le archive file,
>  and create separate output files for locale categories in it.
>  This is helpful to prevent system locale archive updates from overwrit=
ing
>  custom locales created with
> -.BR localedef .
> +.BR \%localedef .
>  .TP
>  .B \-\-no\-hard\-links
>  Do not create hard links between installed locales.
> @@ -237,7 +237,7 @@ Comma-separated list of warnings to disable.
>  Supported warnings are
>  .I ascii
>  and
> -.IR intcurrsym .
> +.IR \%intcurrsym .
>  .TP
>  .B \-\-posix
>  Conform strictly to POSIX.
> @@ -245,7 +245,7 @@ Implies
>  .BR \-\-verbose .
>  This option currently has no other effect.
>  POSIX conformance is assumed if the environment variable
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  is set.
>  .TP
>  .BI \-\-prefix=3D pathname
> @@ -255,7 +255,7 @@ the prefix is empty.
>  Setting the prefix to
>  .IR foo ,
>  the archive would be placed in
> -.IR foo/usr/lib/locale/locale\-archive .
> +.IR \%foo/\:usr/\:lib/\:\%locale/\:\%locale\-archive .
>  .TP
>  .B \-\-quiet
>  Suppress all notifications and warnings,
> @@ -272,12 +272,12 @@ Comma-separated list of warnings to enable.
>  Supported warnings are
>  .I ascii
>  and
> -.IR intcurrsym .
> +.IR \%intcurrsym .
>  .TP
>  .BR \-? ", " \-\-help
>  Print a usage summary and exit.
>  Also prints the default paths used by
> -.BR localedef .
> +.BR \%localedef .
>  .TP
>  .B "\-\-usage"
>  Print a short usage summary and exit.
> @@ -286,10 +286,10 @@ Print a short usage summary and exit.
>  Print the version number,
>  license,
>  and disclaimer of warranty for
> -.BR localedef .
> +.BR \%localedef .
>  .SH EXIT STATUS
>  One of the following exit values can be returned by
> -.BR localedef :
> +.BR \%localedef :
>  .TP
>  .B 0
>  Command completed successfully.
> @@ -303,12 +303,12 @@ Errors encountered,
>  no output created.
>  .SH ENVIRONMENT
>  .TP
> -.B POSIXLY_CORRECT
> +.B \%POSIXLY_CORRECT
>  The
>  .B \-\-posix
>  flag is assumed if this environment variable is set.
>  .TP
> -.B I18NPATH
> +.B \%I18NPATH
>  A colon-separated list of search directories for files.
>  .SH FILES
>  .TP
> @@ -377,7 +377,7 @@ POSIX.1-2008.
>  .SH EXAMPLES
>  Compile the locale files for Finnish in the UTF\-8 character set
>  and add it to the default locale archive with the name
> -.BR fi_FI.UTF\-8 :
> +.BR \%fi_FI.UTF\-8 :
>  .PP
>  .in +4n
>  .EX
> @@ -387,10 +387,10 @@ localedef \-f UTF\-8 \-i fi_FI fi_FI.UTF\-8
>  .PP
>  The next example does the same thing,
>  but generates files into the
> -.I fi_FI.UTF\-8
> +.I \%fi_FI.UTF\-8
>  directory which can then be used by programs when the environment
>  variable
> -.B LOCPATH
> +.B \%LOCPATH
>  is set to the current directory (note that the last argument must
>  contain a slash):
>  .PP

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------t4pVvzQ99TVrXefHqAVJ6w6g--

--------------y13kbVYWRCDXn02JmzNbQLha
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmPlojUACgkQnowa+77/
2zIbRxAAqIoUHgOUOgVbAfz2koBDBWT6lo0u4zR2U8ln55vfxRGePVsX/8wWSOmi
la6e5+AvTR4Oua61oSp2GmfvStvunOYV4BO/v2SS4eCRMHntGFQy1cS2S/ImLrPg
nJy2dZBBWxM3cufDQ44H6qAve5kKHvXht5RMynQK/lbQnP+J7NX7CkV21W+IWfzj
QmiP633n3inmOZ7Rty2bBUXLPyzcVo1QhlHfTAdvVYDZmmlug2MfNJ7K9tl/A1wZ
by/BZb0MhRRX68pDzI6F++8stY3pgir7/XbrKtXY6T4k2sUma/oDJM2JcJcBBor9
cpqCqviKetlLBtV+A0atZdz9jJsBiGHlNf4em04sAWNY8yi1bHeZ3ehEjguICJf3
3k/opltT9V5tvd+PglOCNn1j93D0qBg5Cw+EPbh2aYx6oRpFc+g0C2mFjh5ZmqIG
XlukoZ1DtSWazAkGCnIheKCBbNljIYBnPLPKaamNzj+aDrTEwu96W3h1Bqg+j1/v
kiGhrC8+SXGvJZ0TUVRJmrbOvXvjub87nw84Zh6MbP1FinCkx8+YjVPAAcrvTSoA
a9ZO5Vu2IJ4VEM1H8O9zWPAYUr6OyWlXPRtuJUJZ/bk3gQT7YIF3oF8ZOdMeh3o5
oOeeAwc6ETU6fAN0uyXtJ7j5yXpOHTat252UYG76FXEiCQc85M4=
=N6v5
-----END PGP SIGNATURE-----

--------------y13kbVYWRCDXn02JmzNbQLha--
