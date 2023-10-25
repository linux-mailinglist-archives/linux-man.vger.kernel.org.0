Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 281027D747A
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 21:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbjJYTjM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 15:39:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232431AbjJYTjL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 15:39:11 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FCA213D
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 12:39:09 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E1ECC433C7;
        Wed, 25 Oct 2023 19:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698262749;
        bh=c46PFotKDJE/pigd+KLf+yvjX4mU8zH+DpHX+S2xc/w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=n6UZrLwhac37PzW+lc/LId5Wf96H/EAvlZPHUxoM5febKpHpKTGGNmp2CONWoTikM
         70ls8bCErqj/7sfKtPGA9KuWRx8xhGj102b9i3f4Hv1UawUg9X73DUjjiBeE5ak95x
         /gA+/i33aPCWbXQeOauqhSPtyVXNLwwg8ETJfqmdhQPojF5FUuizJfiNVeo7137h5m
         9HIkkScQMTO0gvkZ/huXulvDNCWWAOpQ13AaMMFgT8Qd3PkZe8vmGRgsSfZL0/6xZO
         ledpu+cBv9AIPKpd/8p2E1QIyS7DpE914B77Il0TLgIBwUXkAKPvY9NL1v8AFOorrh
         JSnpmRUxCuc8A==
Date:   Wed, 25 Oct 2023 21:38:59 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man*/: srcfix
Message-ID: <ZTlu2r8N3nrCnMpa@debian>
References: <20231025185424.txreg7q47zigo24j@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="lWhptRdBsIVBsOdP"
Content-Disposition: inline
In-Reply-To: <20231025185424.txreg7q47zigo24j@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--lWhptRdBsIVBsOdP
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Oct 2023 21:38:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] man*/: srcfix

Hi  Branden,

On Wed, Oct 25, 2023 at 01:54:24PM -0500, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> Format only one man page cross reference per input line.
>=20
> Also, groff 1.23.0's (and Plan 9 from User Space's) `MR` is not a font
> style alternation macro; there is no "reversed" form as with `BR` and
> `RB`.  So when a man page cross reference must be immediately preceded
> by punctuation, put that punctuation on the previous text line and use
> the `\c` escape sequence to connect them.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> ---
>  man2/open.2            |  9 +++++++--
>  man2/perf_event_open.2 |  7 ++++++-
>  man5/proc_locks.5      | 10 ++++++----
>  man7/credentials.7     | 15 ++++++++++-----
>  man7/pty.7             |  5 ++++-
>  5 files changed, 33 insertions(+), 13 deletions(-)
>=20
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

I'm going to disagree with Ingo with his claim that a macro that forces
using \c is bad because it promotes bad style.  '(\c' doesn't look bad
to me here.  Not more than having the leading punctuation as an Nth
argument.

> +.BR read (2),
> +.BR write (2),
> +.BR lseek (2),
> +.BR fcntl (2),
> +etc.)
> +to refer to the open file.
>  The file descriptor returned by a successful call will be
>  the lowest-numbered file descriptor not currently open for the process.
>  .PP
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 44a2ecbeb..4a0bfe65e 100644
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
> diff --git a/man5/proc_locks.5 b/man5/proc_locks.5
> index cf4ff678c..a938e4ad7 100644
> --- a/man5/proc_locks.5
> +++ b/man5/proc_locks.5
> @@ -10,10 +10,12 @@ .SH NAME
>  .SH DESCRIPTION
>  .TP
>  .I /proc/locks
> -This file shows current file locks
> -.RB ( flock "(2) and " fcntl (2))
> -and leases
> -.RB ( fcntl (2)).
> +This file shows current file locks (\c

For consistency with the above two cases, I think you should move that
(\c to a new line.  It also reduces the diff (semantic newlines any?)  :)

Cheers,
Alex

> +.BR flock (2)
> +and
> +.BR fcntl (2))
> +and leases (\c
> +.BR fcntl (2)).
>  .IP
>  An example of the content shown in this file is the following:
>  .IP
> diff --git a/man7/credentials.7 b/man7/credentials.7
> index 77cb5e0ef..b07f150bd 100644
> --- a/man7/credentials.7
> +++ b/man7/credentials.7
> @@ -267,21 +267,26 @@ .SS Modifying process user and group IDs
>  Subject to rules described in the relevant manual pages,
>  a process can use the following APIs to modify its user and group IDs:
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
>  Pseudoterminals are used by applications such as network login services
> -.RB ( ssh "(1), " rlogin "(1), " telnet (1)),
> +(\c
> +.BR ssh (1),
> +.BR rlogin (1),
> +.BR telnet (1)),
>  terminal emulators such as
>  .BR xterm (1),
>  .BR script (1),
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--lWhptRdBsIVBsOdP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmU5btQACgkQnowa+77/
2zLkrw/9Ey196idNF00bUSjgN6gwT5DaWUoRLC7umUpeExH16YZTF3GmFXt9LGS2
meBVxPGsXb4AkhSkZbgQupsAVdtcRsCs6PUT8xXa9NHj5/wKcxO0UMxPep9Esx04
cbGIYEDzx1FWW4ZpJaU9LjG16hpLs51yq/nWKifj1HHRAsh3qzO9kbnL1jOlKG7L
CZq6r61THUS2uogQgDpDN6P41TxvKbS7NYQFC/VMsyUupO104zC9Ora5qVESzeSH
UqUkbU7H6f8kMHCXkpe2zNRc+riyCQwnD6aeCha1wcEI+EUn39LCK5KmO2ATY3eA
uG0OxK/EdukKkSxKkcQvmWnYFI4h+IQvaWsP535B5kCGUNql7wDKT9p18ZrJjyBz
p9o3YGZlwX+YaOxzqQk9HcUwzBxZsgpcOU8L9ESbxrs31ER+77nGbLnS85e3MrTg
vQaKAs9gvrFzW09+Oatn80u1ZXprTw4xm3gHzZ0tcQnp6K7HnPfqwwov4FUPoNcQ
PpKjKdKHc/ywJZ2x1nki1kT2nqO6Mms1994X23vO3OqKj8PmbXEQhFZi41isDe7S
aD/Cb4eq05AHrkLYFSwyHXjqz7Gqaw06OciAnyibsUJZHA1r5/iNolkmTV/KpNqn
9T7waZBEPAaw35t4U2qafWQopkw52NZHS5Al1//A+K4Vdr5G7Lw=
=94HB
-----END PGP SIGNATURE-----

--lWhptRdBsIVBsOdP--
