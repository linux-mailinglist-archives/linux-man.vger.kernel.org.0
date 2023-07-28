Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97AB9767744
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229511AbjG1U4P (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230473AbjG1U4P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:56:15 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19A9035B0
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:56:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 88DE162207
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 20:56:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BDC0C433C9;
        Fri, 28 Jul 2023 20:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690577772;
        bh=rv5zfAX0nWN3ZePC1EPM/AYSsDNS7lLf3QHHV4knIL0=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=eygXt+A6jCFZSPwVie385p2KcYKg4h2eSN78QHgpgsSrUU4AZDy94/Tt2usudSSRW
         OO1H496RcjdsIzZQtcQGLBIFDiVvE/C756NB5qrClAoV6GIzCJmRWoQBQ0/jLhaRem
         /mG1QSokoiVu8Xcix6c/u5pFRZwKhL+c242lf+HAJ5gUg+pwmEI15LqpObY+wTU2PS
         adygN84XWCsPk5AcylCnmjdXSm2yAKRJLIkw0Dz5A5XVq2OygR4nj962UjOSv+xY76
         Oj3IPRUxkWGi/EtqeSMFaS/jptoycDdpHf6diryRwb9wDmxUQodPcKWB1NAk9XyXL+
         8zrhc/ElQ2ePQ==
Message-ID: <e6e1d97c-e6c2-9cb2-0e7b-3944e2858a24@kernel.org>
Date:   Fri, 28 Jul 2023 22:56:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/6] man.7: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230728175718.v25t776r3xqzxbog@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230728175718.v25t776r3xqzxbog@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0670v58LPTA8gu8RO2MMSxOM"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0670v58LPTA8gu8RO2MMSxOM
Content-Type: multipart/mixed; boundary="------------DznuXx0PRQLEDnsGHJzUbvia";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <e6e1d97c-e6c2-9cb2-0e7b-3944e2858a24@kernel.org>
Subject: Re: [PATCH 1/6] man.7: srcfix
References: <20230728175718.v25t776r3xqzxbog@illithid>
In-Reply-To: <20230728175718.v25t776r3xqzxbog@illithid>

--------------DznuXx0PRQLEDnsGHJzUbvia
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-28 19:57, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".

Moved this into the commit message.

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D=
47b6b10ec8a61dade7f50d6ec2a2ff7001fb19af>

>=20
> From 219257753d7650332b7256653fcf80591da31887 Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> To: linux-man@vger.kernel.org
> Date: Fri, 28 Jul 2023 12:17:44 -0500
> Subject: [PATCH 1/6] man.7: srcfix
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit

I wonder why all this appears in your email body.  How did you generate
it?  I bet not with git-format-patch(1), or that you modified it manually=
?
When I apply the patch with git am, all that ends up in the commit messag=
e
(try yourself).

Anyway, I've applied it.  Thanks!

Cheers,
Alex

>=20
> Drop spurious uses of *roff `\&` escape sequence.
>=20
> Quoting groff_man_style(7):
>=20
>     \&  Dummy character.  Insert at the beginning of an input line to
>         prevent a dot or apostrophe from being interpreted as beginning=

>         a roff control line.  Append to an end=E2=80=90of=E2=80=90sente=
nce punctuation
>         sequence to keep it from being recognized as such.
>=20
> Neither case applies to the uses in this page.
>=20
> Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> ---
>  man7/man.7 | 70 +++++++++++++++++++++++++++---------------------------=

>  1 file changed, 35 insertions(+), 35 deletions(-)
>=20
> diff --git a/man7/man.7 b/man7/man.7
> index cf83292fa..258ce25da 100644
> --- a/man7/man.7
> +++ b/man7/man.7
> @@ -60,7 +60,7 @@ .SS Title line
>  that is, lines that start with \fB.\e"\fP) should be
>  .PP
>  .RS
> -.B \&.TH
> +.B .TH
>  .I "title section date source manual"
>  .RE
>  .PP
> @@ -76,12 +76,12 @@ .SS Title line
>  command.
>  .SS Sections
>  Sections are started with
> -.B \&.SH
> +.B .SH
>  followed by the heading name.
>  .\" The following doesn't seem to be required (see Debian bug 411303),=

>  .\" If the name contains spaces and appears
>  .\" on the same line as
> -.\" .BR \&.SH ,
> +.\" .BR .SH ,
>  .\" then place the heading in double quotes.
>  .PP
>  The only mandatory heading is NAME, which should be the first section =
and
> @@ -111,37 +111,37 @@ .SS Sections
>  .SS Fonts
>  The commands to select the type face are:
>  .TP 4
> -.B \&.B
> +.B .B
>  Bold
>  .TP
> -.B \&.BI
> +.B .BI
>  Bold alternating with italics
>  (especially useful for function specifications)
>  .TP
> -.B \&.BR
> +.B .BR
>  Bold alternating with Roman
>  (especially useful for referring to other
>  manual pages)
>  .TP
> -.B \&.I
> +.B .I
>  Italics
>  .TP
> -.B \&.IB
> +.B .IB
>  Italics alternating with bold
>  .TP
> -.B \&.IR
> +.B .IR
>  Italics alternating with Roman
>  .TP
> -.B \&.RB
> +.B .RB
>  Roman alternating with bold
>  .TP
> -.B \&.RI
> +.B .RI
>  Roman alternating with italics
>  .TP
> -.B \&.SB
> +.B .SB
>  Small alternating with bold
>  .TP
> -.B \&.SM
> +.B .SM
>  Small (useful for acronyms)
>  .PP
>  Traditionally, each command can have up to six arguments, but the GNU
> @@ -152,7 +152,7 @@ .SS Fonts
>  For the macros that produce alternating type faces,
>  the arguments will be printed next to each other without
>  intervening spaces, so that the
> -.B \&.BR
> +.B .BR
>  command can be used to specify a word in bold followed by a mark of
>  punctuation in Roman.
>  If no arguments are given, the command is applied to the following lin=
e
> @@ -178,21 +178,21 @@ .SS Other macros and strings
>  The other key macro definitions are:
>  .SS Normal paragraphs
>  .TP 9m
> -.B \&.LP
> +.B .LP
>  Same as
> -.B \&.PP
> +.B .PP
>  (begin a new paragraph).
>  .TP
> -.B \&.P
> +.B .P
>  Same as
> -.B \&.PP
> +.B .PP
>  (begin a new paragraph).
>  .TP
> -.B \&.PP
> +.B .PP
>  Begin a new paragraph and reset prevailing indent.
>  .SS Relative margin indent
>  .TP 9m
> -.BI \&.RS " i"
> +.BI .RS " i"
>  Start relative margin indent: moves the left margin
>  .I i
>  to the right (if
> @@ -201,19 +201,19 @@ .SS Relative margin indent
>  A new prevailing indent is set to 0.5 inches.
>  As a result, all following paragraph(s) will be
>  indented until the corresponding
> -.BR \&.RE .
> +.BR .RE .
>  .TP
> -.B \&.RE
> +.B .RE
>  End relative margin indent and
>  restores the previous value of the prevailing indent.
>  .SS Indented paragraph macros
>  .TP 9m
> -.BI \&.HP " i"
> +.BI .HP " i"
>  Begin paragraph with a hanging indent
>  (the first line of the paragraph is at the left margin of
>  normal paragraphs, and the rest of the paragraph's lines are indented)=
=2E
>  .TP
> -.BI \&.IP " x i"
> +.BI .IP " x i"
>  Indented paragraph with optional hanging tag.
>  If the tag
>  .I x
> @@ -224,7 +224,7 @@ .SS Indented paragraph macros
>  is provided, it is hung at the left margin
>  before the following indented paragraph
>  (this is just like
> -.B \&.TP
> +.B .TP
>  except the tag is included with the command instead of being on the
>  following line).
>  If the tag is too long, the text after the tag will be moved down to t=
he
> @@ -234,25 +234,25 @@ .SS Indented paragraph macros
>  a period as the tag;
>  this simplifies translation to other formats.
>  .TP
> -.BI \&.TP " i"
> +.BI .TP " i"
>  Begin paragraph with hanging tag.
>  The tag is given on the next line, but
>  its results are like those of the
> -.B \&.IP
> +.B .IP
>  command.
>  .SS Hypertext link macros
>  .TP
> -.BI \&.UR " url"
> +.BI .UR " url"
>  Insert a hypertext link to the URI (URL)
>  .IR url ,
>  with all text up to the following
> -.B \&.UE
> +.B .UE
>  macro as the link text.
>  .TP
> -.B \&.UE \c
> +.B .UE \c
>  .RI [ trailer ]
>  Terminate the link text of the preceding
> -.B \&.UR
> +.B .UR
>  macro, with the optional
>  .I trailer
>  (if present, usually a closing parenthesis and/or end-of-sentence
> @@ -270,20 +270,20 @@ .SS Hypertext link macros
>  Heirloom Doctools Troff since 160217 (2016-02-17).
>  .SS Miscellaneous macros
>  .TP 9m
> -.B \&.DT
> +.B .DT
>  Reset tabs to default tab values (every 0.5 inches);
>  does not cause a break.
>  .TP
> -.BI \&.PD " d"
> +.BI .PD " d"
>  Set inter-paragraph vertical distance to d
>  (if omitted, d=3D0.4v);
>  does not cause a break.
>  .TP
> -.BI \&.SS " t"
> +.BI .SS " t"
>  Subheading
>  .I t
>  (like
> -.BR \&.SH ,
> +.BR .SH ,
>  but used for a subsection inside a section).
>  .SS Predefined strings
>  The

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------DznuXx0PRQLEDnsGHJzUbvia--

--------------0670v58LPTA8gu8RO2MMSxOM
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTEK2oACgkQnowa+77/
2zILDQ/9F6t3mP6nhjNP700+J8GdZkhHH9SQzvrkiC6Sf+JuTAeHjMdHjbqQvApR
kP3Sdyqip9UkM/KjXn9FGX09gJ7ezz+QX+yuN20Huh8gXRIuMXEVI6sDUSqX6VMy
wKLmdCCmG2nrXVNKuHlWuZHRtI4wH7Zo6+IMNajrxvb2qNVSG8X3vi/ZRxWXorTr
HnTPjDGwcb942n/O4Tyf68E0rWWPcbhEbJexF2FZZZfw+jfWNVI+vMmz4aAZA1t8
oVD4CcOB36UjI7NlYeVqhnwXRyg2DZMsLpYsFruLnk/E+u0UPL/FW2ImkUrPIGzm
gxd9asBmOY1RVwGksFNnwvUv++lipBeomG+a3MpOU8CDQ0z9YpZD9YB9p9avmKLX
K9u9uNQcnjStXsMAoFysCEdyTaGNj/nPOaLown76hQzYKCiUuJL4IsnIsAyKBllp
dZjclIgamj7GklhK0K4w65h9q3wKAcBTBv/5W6jM2D6Vk9IcFAMiW+A0PxGiKpMj
iAJ5V/CGaRu249J+gmF3KQyGPxlPO2tx8LrEpVlp9XV4qufzGKBpiNiGKjVETvnj
u6pkfG8vLebb1YhEy2TY0Xoox8oId/ICGJirvicIK+xBMzS6Tx+vmMsFvAjdYHdZ
TZy6M5iIfZPBB2+HJhWXIxVRyEyDCpiSa8xtS5gNRe5uY/nMQGA=
=fLP9
-----END PGP SIGNATURE-----

--------------0670v58LPTA8gu8RO2MMSxOM--
