Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96CA87687EE
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:29:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230098AbjG3U3y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:29:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229820AbjG3U3x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:29:53 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B80E113
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:29:52 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7841860D14
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 20:29:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49932C433C7;
        Sun, 30 Jul 2023 20:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690748990;
        bh=xRyb3sJm8toc59zAf7LysIeJvv4yfl/hAhL6BZbJ390=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=NEQhBY90aVH+TWNqOxspfJAayjKXdaRAHOM7xw7EBSdyKd6UhepmfbjrcIYNxm6rt
         /e4j2uh4u2i46ar5XlK7ILexDk4fkdCs/4dHVeaSLK8POR/dxk8TUmXTOZli/8SUYr
         ETIgZOdQArpjJOYRrdRhBoMjSQ16STKnCrYTyK80df7gr+T3UMo4nZVuXThaa5UNzC
         1TpMD8zVa4d2G/X9qaqDgjy2+yyUU7so36/ts4oj6H4O8HkT9vvZxXtrV2Oz5uOIWX
         AgsLu5sMIbsZKjO2GMvMlU5l4L2MywJ38jiJKDX/jg3Lijxw1wxheN2YgBFpFTBPI4
         ZvZlyRukMdwOg==
Message-ID: <538191f8-a1bc-ab53-2a13-a8166637bb30@kernel.org>
Date:   Sun, 30 Jul 2023 22:29:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v2] man*/: srcfix
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730193202.sly7va2kiv2edegr@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730193202.sly7va2kiv2edegr@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OKFyjxGy6ieojvno5i0FPUaE"
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
--------------OKFyjxGy6ieojvno5i0FPUaE
Content-Type: multipart/mixed; boundary="------------24r7Z70funFqJJRA2CewT0ex";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <538191f8-a1bc-ab53-2a13-a8166637bb30@kernel.org>
Subject: Re: [PATCH v2] man*/: srcfix
References: <20230730193202.sly7va2kiv2edegr@illithid>
In-Reply-To: <20230730193202.sly7va2kiv2edegr@illithid>

--------------24r7Z70funFqJJRA2CewT0ex
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-30 21:32, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> Format only one man page cross reference per input line.
>=20
> Also, since groff 1.23.0 (and Plan 9 from User Space's) `MR` is not a
> font style alternation macro, there is no "reversed" form as with `BR`
> and `RB`.  So when a man page cross reference must be immediately
> preceded by punctuation, put that punctuation on the previous text line=

> and use the `\c` escape sequence to connect them.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man2/eventfd.2         |  4 +++-
>  man2/open.2            |  9 +++++++--
>  man2/perf_event_open.2 |  7 ++++++-
>  man2/signalfd.2        |  4 +++-
>  man2/timerfd_create.2  |  4 +++-
>  man5/proc.5            |  4 +++-
>  man7/credentials.7     | 15 ++++++++++-----
>  man7/pty.7             |  5 ++++-
>  man7/spufs.7           |  6 +++++-
>  9 files changed, 44 insertions(+), 14 deletions(-)
>=20
> diff --git a/man2/eventfd.2 b/man2/eventfd.2
> index 2bd781bdf..003a64eb6 100644
> --- a/man2/eventfd.2
> +++ b/man2/eventfd.2
> @@ -142,7 +142,9 @@ .SH DESCRIPTION
>  if the size of the supplied buffer is less than 8 bytes,
>  or if an attempt is made to write the value 0xffffffffffffffff.
>  .TP
> -.BR poll "(2), " select "(2) (and similar)"
> +.BR poll (2),\~\c
> +.BR select (2)\~\c
> +(and similar)
>  The returned file descriptor supports
>  .BR poll (2)
>  (and analogously
> diff --git a/man2/open.2 b/man2/open.2
> index 4c921723c..6603dfdff 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -82,8 +82,13 @@ .SH DESCRIPTION
>  to an entry in the process's table of open file descriptors.
>  The file descriptor is used
>  in subsequent system calls
> -.RB ( read "(2), " write "(2), " lseek "(2), " fcntl (2),
> -etc.) to refer to the open file.
> +(\c
> +.BR read (2),
> +.BR write (2),
> +.BR lseek (2),
> +.BR fcntl (2),
> +etc.)
> +to refer to the open file.
>  The file descriptor returned by a successful call will be
>  the lowest-numbered file descriptor not currently open for the process=
=2E
>  .PP
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index aa23a4977..40686917b 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -32,7 +32,12 @@ .SH DESCRIPTION
>  Given a list of parameters,
>  .BR perf_event_open ()
>  returns a file descriptor, for use in subsequent system calls
> -.RB ( read "(2), " mmap "(2), " prctl "(2), " fcntl "(2), etc.)."
> +(\c
> +.BR read (2),
> +.BR mmap (2),
> +.BR prctl (2),
> +.BR fcntl (2),
> +etc.).
>  .PP
>  A call to
>  .BR perf_event_open ()
> diff --git a/man2/signalfd.2 b/man2/signalfd.2
> index 2b97c4640..9d0708799 100644
> --- a/man2/signalfd.2
> +++ b/man2/signalfd.2
> @@ -131,7 +131,9 @@ .SH DESCRIPTION
>  .B EAGAIN
>  if the file descriptor has been made nonblocking.
>  .TP
> -.BR poll "(2), " select "(2) (and similar)"
> +.BR poll (2),\~\c
> +.BR select (2)\~\c
> +(and similar)
>  The file descriptor is readable
>  (the
>  .BR select (2)
> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
> index d68206b05..9ba0dd315 100644
> --- a/man2/timerfd_create.2
> +++ b/man2/timerfd_create.2
> @@ -317,7 +317,9 @@ .SS Operating on a timer file descriptor
>  .BR read (2)
>  on the file descriptor.
>  .TP
> -.BR poll "(2), " select "(2) (and similar)"
> +.BR poll (2),\~\c
> +.BR select (2)\~\c
> +(and similar)
>  The file descriptor is readable
>  (the
>  .BR select (2)
> diff --git a/man5/proc.5 b/man5/proc.5
> index 04b45ccb7..fd51dcec0 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -3459,7 +3459,9 @@ .SS Files and directories
>  .TP
>  .I /proc/locks
>  This file shows current file locks
> -.RB ( flock "(2) and " fcntl (2))
> +.RB ( flock (2)

I guess you'll want a \c before flock(2).  RM ain't no macro.  :)

Cheers,
Alex

> +and
> +.BR fcntl (2))
>  and leases
>  .RB ( fcntl (2)).
>  .IP
> diff --git a/man7/credentials.7 b/man7/credentials.7
> index 77cb5e0ef..b07f150bd 100644
> --- a/man7/credentials.7
> +++ b/man7/credentials.7
> @@ -267,21 +267,26 @@ .SS Modifying process user and group IDs
>  Subject to rules described in the relevant manual pages,
>  a process can use the following APIs to modify its user and group IDs:=

>  .TP
> -.BR setuid "(2) (" setgid (2))
> +.BR setuid (2)\~(\c
> +.BR setgid (2))
>  Modify the process's real (and possibly effective and saved-set)
>  user (group) IDs.
>  .TP
> -.BR seteuid "(2) (" setegid (2))
> +.BR seteuid (2)\~(\c
> +.BR setegid (2))
>  Modify the process's effective user (group) ID.
>  .TP
> -.BR setfsuid "(2) (" setfsgid (2))
> +.BR setfsuid (2)\~(\c
> +.BR setfsgid (2))
>  Modify the process's filesystem user (group) ID.
>  .TP
> -.BR setreuid "(2) (" setregid (2))
> +.BR setreuid (2)\~(\c
> +.BR setregid (2))
>  Modify the process's real and effective (and possibly saved-set)
>  user (group) IDs.
>  .TP
> -.BR setresuid "(2) (" setresgid (2))
> +.BR setresuid (2)\~(\c
> +.BR setresgid (2))
>  Modify the process's real, effective, and saved-set user (group) IDs.
>  .TP
>  .BR setgroups (2)
> diff --git a/man7/pty.7 b/man7/pty.7
> index bef60e931..3f23be44d 100644
> --- a/man7/pty.7
> +++ b/man7/pty.7
> @@ -122,7 +122,10 @@ .SH FILES
>  BSD slave devices
>  .SH NOTES
>  Pseudoterminals are used by applications such as network login service=
s
> -.RB ( ssh "(1), " rlogin "(1), " telnet (1)),
> +(\c
> +.BR ssh (1),
> +.BR rlogin (1),
> +.BR telnet (1)),
>  terminal emulators such as
>  .BR xterm (1),
>  .BR script (1),
> diff --git a/man7/spufs.7 b/man7/spufs.7
> index 39fdf583a..96b100b8c 100644
> --- a/man7/spufs.7
> +++ b/man7/spufs.7
> @@ -119,7 +119,11 @@ .SS Files
>  file are:
>  .RS
>  .TP
> -.BR read "(2), " pread "(2), " write "(2), " pwrite "(2), " lseek (2)
> +.BR read (2),\~\c
> +.BR pread (2),\~\c
> +.BR write (2),\~\c
> +.BR pwrite (2),\~\c
> +.BR lseek (2)
>  These operate as usual, with the exception that
>  .BR lseek (2),
>  .BR write (2),

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------24r7Z70funFqJJRA2CewT0ex--

--------------OKFyjxGy6ieojvno5i0FPUaE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGyDAACgkQnowa+77/
2zIZpg/+KzYkTLUnO+OiM1iPHz102cW1lh3/8ykwNUXSx9LLto6Ic/eYB+9V2JKn
dB9ToQi2Kuq5jykRXe/ecds3TbJJ+lvZzfPU7tcyFLNkoMbAncFZmxaTAUinDsH1
OO89cGAom+S76gcsAxHER9q6o0o664V17XswTfTuazaU4Ylpi6y3fblvefPsXY/3
A3FwFJXopaKYsrhLS3yUOMNe3Pgl5S+Xo/Wds2OEvZoY3DhtBlScsM+Eg5vcwD80
2Zb4IKm1uxkDJlxrqxMRib3YpExFMTb9tlwRuuHXBZ0Fqxi1jPzjVOrwE5L2YYSm
E7YcIZ9H+BbTxTaIXHTVVbQNfesL2m2xSCE9aZdComzB3rqxHBmwv03ugxi7g5rP
iCbFGkr8H1WQYZ5LMXsTQLZbgkk2l52oEh+JVfebp8SE7ggvFsD9DjVpc6eaGbeC
vy4zS6tIBdiXy36aRRAXHJg3Lwb36u+QS3Kxvq+XSPLaQ3HElRFyUPEizq8NkXrb
npwfSc2MZTHwa4qp74ZCU10lgccHjjAZLgj9NaxVtaEZgC2y3bnBq4VhZ3y7mMXu
AcAiWYVLeEB1th7ANwSDAh8VW0sb/3F65Le62tLI9J8lMyAhhZoZSWMiTkgj4XTY
Ijs1hkHu8/jwOggEPM83quh6XOacpUOfyRc/MiY/cbSkZL2905Q=
=xWwP
-----END PGP SIGNATURE-----

--------------OKFyjxGy6ieojvno5i0FPUaE--
