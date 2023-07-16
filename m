Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D49B1754EE4
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 15:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbjGPNqZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 09:46:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjGPNqY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 09:46:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0422BE71
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 06:46:23 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9549A60C90
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 13:46:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E684C433C7;
        Sun, 16 Jul 2023 13:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689515182;
        bh=1BvOhT0sGbS0UPIsNkV08wdbh+hgeqqUpo8tG4AC20Y=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=mdL/ZYHlfo45KugA8WiMgvhkfaOQW2O9sPdfPHtZ1lnDZodiqsTywP6ZjtCrUsPPU
         PD20xcxdMzXP826w8sbtYkP/TnuvmqarZs0X5Mw6W9aT2AXoKbQ+uq5oCaQraRK/P6
         PHwRKdh57mayouC8lEqAn1RceuRHg2WddLaX/l2Zs4AhvMGe4T9RN301OjqgTHrG0r
         gkfz7genY8UuxtIAcpybiSCcW7fzFjKgolS2T/KCVBO9bo6MuMBeeMqJ1lJoOyPzxI
         BKu0gvOBTJQEFoUQcxROv+8tOIvbrac0avAIgk8bLnUOgD2t4LThyy8bbZwoI5v27Q
         bm32lqwMAbUtw==
Message-ID: <93fb63f5-45a9-83b1-d89f-d0cc2f02635c@kernel.org>
Date:   Sun, 16 Jul 2023 15:46:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lHrSrSNkqwxKuMwYYfaQPMlf"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lHrSrSNkqwxKuMwYYfaQPMlf
Content-Type: multipart/mixed; boundary="------------80ZlHcvFMMxkqEP0wAWq9ObU";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Message-ID: <93fb63f5-45a9-83b1-d89f-d0cc2f02635c@kernel.org>
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
In-Reply-To: <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>

--------------80ZlHcvFMMxkqEP0wAWq9ObU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2023-07-16 13:55, =D0=BD=D0=B0=D0=B1 wrote:
[...]

> I read it but didn't really understand what you were saying, since
> you're on record as a text=E2=80=92text=E2=80=92text liker.

In this context, I'm not sure if to read that as that being just
emphasis on me being a text liker, which is true-true-true, or if
(more likely) "text" are placeholders for random text, and you claim
that I'm on record liking no spaces between em dashes.  If it's the
latter, I believe I am not, and you might have been confused by some
of those records?  Could you point me to the records?  Maybe I had
some brain-fart and defended that at some point, but I do not like
that style personally.

The reason that I like spaces in (only) one side of em dashes --and I
also like closing em dashes even right before other punctuation-- is
to make parsing the text less complex.  I've seen cases where in a
paragraph, several em-dash asides appear, and it's hard to understand
what is the main text and what are the asides, especially when the
closing em dash of one of them is omitted.

Basically, it is something similar to why we should write punctuation
outside of quotes, unless they belong to them, so if I quote someone
who said "Hello world!", I include '!' in the quote, as it belongs to
the quote, but the ',' belongs to my text.

uri(7) has something about those rules for quotes:

   Writing a URI
       When written, URIs should be placed inside double quotes (e.g.,
       "http://www.kernel.org"), enclosed  in  angle  brackets  (e.g.,
       <http://lwn.net>),  or placed on a line by themselves.  A warn=E2=80=
=90
       ing for those who  use  double=E2=80=90quotes:  never  move  extra=
neous
       punctuation  (such as the period ending a sentence or the comma
       in a list) inside a URI, since this will change  the  value  of
       the  URI.   Instead, use angle brackets instead, or switch to a
       quoting system that never includes extraneous characters inside
       quotation marks.  This latter system, called the =E2=80=99new=E2=80=
=99 or =E2=80=99log=E2=80=90
       ical=E2=80=99 quoting system by "Hart=E2=80=99s Rules" and the "Ox=
ford  Dictio=E2=80=90
       nary  for  Writers and Editors", is preferred practice in Great
       Britain and in various  European  languages.   Older  documents
       suggested  inserting the prefix "URL:" just before the URI, but
       this form has never caught on.

It's not exactly the same for em dashes, but they're both progress
towards a more logical way of punctuating text, which I like.

Cheers,
Alex


> You can trivially continue the lines with \c like the below, but
>   "no-op, with permissions ... on Linux, or an ioctl(2)."
> would probably also work just as well,
> and I leave that to your editorial sensibilities.
>=20
>  man3/grantpt.3 | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>=20
> diff --git a/man3/grantpt.3 b/man3/grantpt.3
> index a19172a3e..363a7aebd 100644
> --- a/man3/grantpt.3
> +++ b/man3/grantpt.3
> @@ -84,17 +84,15 @@ .SH ATTRIBUTES
>  .ad
>  .sp 1
>  .SH VERSIONS
> -Many systems implement this function via a set-user-ID helper binary
> +Historical systems implemented this function via a set-user-ID helper =
binary
>  called "pt_chown".
> -On Linux systems with a devpts filesystem (present since Linux 2.2),
> -the kernel normally sets the correct ownership and permissions
> -for the pseudoterminal slave when the master is opened
> -.RB ( posix_openpt (3)),
> -so that nothing must be done by
> -.BR grantpt ().
> -Thus, no such helper binary is required
> -(and indeed it is configured to be absent during the
> -glibc build that is typical on many systems).
> +glibc on Linux before glibc 2.33 could do so as well,
> +in order to support configurations with only BSD pseudoterminals;
> +this support has been removed.
> +On modern systems this is either a no-op\c
> +\[em]with permissions configured on pty allotion, as is the case on Li=
nux\[em]\c
> +or an
> +.BR ioctl (2).
>  .SH STANDARDS
>  POSIX.1-2008.
>  .SH HISTORY

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------80ZlHcvFMMxkqEP0wAWq9ObU--

--------------lHrSrSNkqwxKuMwYYfaQPMlf
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmSz9KIACgkQnowa+77/
2zJXghAAoUD57fJjfN/oyQ4hOIihIkQO2wSLpoMBxdna88qj3RB/Uo43PlaYV6Cv
RCxs6guOTuwqC5vT5cgkyLWDagxVwUgs2McTzcdEgdwCJJx9I55SNyug0hWLborK
oOlNmcd3mZU2bB7iBXxmxZV75dYtxDHvJ8WBI8O0kI2skoDkUkvh+e1zi1h2w2No
uPDzsOyKimdwHIbFvxX+xJTXEFK/cctpnDWMdovwIEv09+5+wde5zxGuEzU001A4
Yfoc4bw0YdwYNKAFli5p7iByF0siyr2LzI7dvpa0dC7l3v1cXLGfCDwL6wULMY+Z
4K6CBAWHb0y5GTKncUkkiG4oJyGNAeV/wfv2Fx+WYSQJ93IqriOKM72Y7Qg7jVlX
60s8hPl8/E6ByBfqL0sqBcv7iblr90p+EqsCch41MyVqTWhbZT/ON8F20Uj8YMzg
ZpIFeo9h3iEee7MVCP98iyzGYv9CU+8+g6pWg6lWhVo7M3TJkivG0jw0ESq/0I8Y
VOPxN8zQfveHkR86IkqqyYUyq73JLb5VeLDfbgChUniXR0YFTQiIzkFUzbJX2T1k
+qrhO6cORDn08s2gtM2pa8DCruQZIDlgpqf3FAw28pPwywphnHumaTJzhhOZuS7r
zwXmG85gS+B/+CiIuhzteiFfBm89kBK9JfscbYzBB/DCfFPBMbs=
=Jx2I
-----END PGP SIGNATURE-----

--------------lHrSrSNkqwxKuMwYYfaQPMlf--
