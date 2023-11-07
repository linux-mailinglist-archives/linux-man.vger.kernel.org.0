Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61A2C7E4933
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 20:29:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234696AbjKGT3s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 14:29:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235182AbjKGT3r (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 14:29:47 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCA19129
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 11:29:44 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF1DC433CB;
        Tue,  7 Nov 2023 19:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1699385380;
        bh=2RTzDZw9FBYMm9J2KndeLJRXD8/zP2umyDmNJARl+zg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Vc4z1JRQ78QRZezVN/a/+3geNTNskXvJlURBf93/tb9ASAJtwyLcnqFJ1g4/327Q0
         g4jBdSU8FA0q0WpfJwmrvu1jTcfdrEUnqwS0PlILfwwYF5Jj03W4rkWIj77jiZMp9y
         K0tGrz0x36mnGLwda1EelhREtVmwzF1mvm+2r4wr/FnREHG7nVPhBNDVwgLEoVAiuL
         lOTay9vQlNmUPdhs+qMdoq08VUeXHz297KoCnv9KzmH+5XOj4QoG/GWnNreSnrsb77
         KYnXFveQ9l5Ivy+OBBONonLDwcJKZVy5lEEwdOr+P8ionVN3weMwFLWn8aEpyFYTvV
         blpdlS/CofVNg==
Date:   Tue, 7 Nov 2023 20:32:43 +0100
From:   Alejandro Colomar <alx@kernel.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v6] man*/: srcfix
Message-ID: <ZUqQ21APbO0esNnU@devuan>
References: <20231107184912.klfiw7y53w3hm22v@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="uJwxEuQjVpW5TbS1"
Content-Disposition: inline
In-Reply-To: <20231107184912.klfiw7y53w3hm22v@illithid>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--uJwxEuQjVpW5TbS1
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 Nov 2023 20:32:43 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v6] man*/: srcfix

Hi Branden,

On Tue, Nov 07, 2023 at 12:49:12PM -0600, G. Branden Robinson wrote:
> Clean up in preparation for "MR sed".
>=20
> Format only one man page cross reference per input line.
>=20
> Begin parentheticals on their own input lines.
>=20
> Also, groff 1.23.0's (and Plan 9 from User Space's) `MR` is not a font
> style alternation macro; there is no "reversed" form as with `BR` and
> `RB`.  So when a man page cross reference must be immediately preceded
> by punctuation, put that punctuation on the previous text line and use
> the `\c` escape sequence to connect them.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Patch applied.  Thanks!

Cheers,
Alex

>=20
> Changes since v5:
>=20
> * Begin parentheticals on their own input lines.
>=20
> Changes since v4:
> * Drop the big `MR` migration part of the patch itself, which is
>   entirely sed-driven.  I had already taken care of the proc_locks(5)
>   change that Alex had requested in v4, but neither of us noticed this.
>   It's still a benefit to apply this preparatory source fix.
>=20
> Changes since v3:
> * Resync the preparatory patch (1/2) [all that is left now] with recent
>   adoption of `TQ` macro in more places, reducing the number of manual
>   preparations needed.
> * Stop trying to migrate tzfile(5), tzselect(8), zdump(8), zic(8), and
>   time2posix(3); and bpf-helpers(7), which are externally maintained.
>   Thanks to Brian Inglis. [no longer applicable to v5]
>=20
> Changes since v2:
> * No changes to this part.  [The sed script grew an additional case,
>   IIRC.]
>=20
> Changes since v1:
> * Add `\c` before flock(2) reference in proc(5) [now proc_locks(5)].
>=20
> ---
>  man2/open.2            |  9 +++++++--
>  man2/perf_event_open.2 |  9 +++++++--
>  man5/proc_locks.5      |  8 ++++++--
>  man7/credentials.7     | 15 ++++++++++-----
>  man7/pty.7             |  5 ++++-
>  5 files changed, 34 insertions(+), 12 deletions(-)
>=20
> diff --git a/man2/open.2 b/man2/open.2
> index 381da6235..f37ddbed0 100644
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
>  the lowest-numbered file descriptor not currently open for the process.
>  .P
> diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
> index 2b2fc2596..5f68f5204 100644
> --- a/man2/perf_event_open.2
> +++ b/man2/perf_event_open.2
> @@ -32,8 +32,13 @@ .SH DESCRIPTION
>  Given a list of parameters,
>  .BR perf_event_open ()
>  returns a file descriptor, for use in subsequent system calls
> -.RB ( read "(2), " mmap "(2), " prctl "(2), " fcntl "(2), etc.)."
> -.P
> +(\c
> +.BR read (2),
> +.BR mmap (2),
> +.BR prctl (2),
> +.BR fcntl (2),
> +etc.).
> +.PP
>  A call to
>  .BR perf_event_open ()
>  creates a file descriptor that allows measuring performance
> diff --git a/man5/proc_locks.5 b/man5/proc_locks.5
> index cf4ff678c..63ea8c766 100644
> --- a/man5/proc_locks.5
> +++ b/man5/proc_locks.5
> @@ -11,9 +11,13 @@ .SH DESCRIPTION
>  .TP
>  .I /proc/locks
>  This file shows current file locks
> -.RB ( flock "(2) and " fcntl (2))
> +(\c
> +.BR flock (2)
> +and
> +.BR fcntl (2))
>  and leases
> -.RB ( fcntl (2)).
> +(\c
> +.BR fcntl (2)).
>  .IP
>  An example of the content shown in this file is the following:
>  .IP
> diff --git a/man7/credentials.7 b/man7/credentials.7
> index 32d8a3243..02427a9e5 100644
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
> index ef8974f47..7f47ce550 100644
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



--=20
<https://www.alejandro-colomar.es/>

--uJwxEuQjVpW5TbS1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVKkNsACgkQnowa+77/
2zJCVw//RnuDrn7ISL8YwZRK59Bd8KDE8NAiDgBqg6cQkF1YM/F+XfS8TPROw+4h
y4gGEiFb/l4n1nJDn6EL4udKjcyo+vjWwAbwGpf8OxOCzMz5QfutQ32Svcz9SfRM
4RrLCiOZKG/Ohw4ns0kDZXfF1PB0P7hXGYen4bBV2Bj9HaiglgmQRTuo4TOtF+X0
mkO3wvfjFryvDAJeqbwUdYxodCqaWyFgO6t9QAX2d4D5HPY58lIAm+6EGnT+4fYY
2aNwfefgfHTzVnM2KPYTmI4csfztENDW/hz5ZsMRrmTuMT2a5uRIWYDwZQ1NiIMa
531HexoZI9ygJjs3Ioj7aTmRN/frq2YmGxYOng7niSwCT7Ibpr6LoJoYxjsDZ1E8
hpkVT8+sOYD2hqIT6z36Y8kfxjMevGZo/DJg+lcbZn3IJtBMp5DDgeiFJsMTawQo
+ij/lbxY1cEQxe/bJvS/+NQ5bKi6jyhRcOeJPvQXyKEbqDhlfAZhe/6F/5D0Yt7r
1axLn7ugeVdzRA3Dq/97pUbogf3a0D7wNCa99sRm5aRktqfJ5MI0ZgpFhYf1kVtr
L2JiD1oZpCtExiN/Rf2+egCFhI9EiaoNwlNouEm+100WeNghRi97ZeFethU6SvGT
JnXr5JSaabCSQH22AEFbNfaYJ58xKhAceaHQmdUSkLOlvtt68jU=
=S2Oc
-----END PGP SIGNATURE-----

--uJwxEuQjVpW5TbS1--
