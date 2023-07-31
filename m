Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22EF576A18E
	for <lists+linux-man@lfdr.de>; Mon, 31 Jul 2023 21:56:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229773AbjGaT4l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 15:56:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjGaT4k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 15:56:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1128319A2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 12:56:39 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A3453612A3
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 19:56:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8707FC433C8;
        Mon, 31 Jul 2023 19:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690833398;
        bh=9fGW+LVo7EGAPF6LwERfk7tSLdOmb7sp4nm3aESuYCc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=hUOyxoRGTmDBPnqA5vnbFbvmqUkr2STdEOn4U7yiRlP1JxZPo1YLqoNHRD/wlXHqZ
         icWxLhz24VbzsrCbhu5hcVRnou5L+6d85OgKs8Y5hOEAF5dh5Wckzr8krN3jl+Y5M9
         NWO6NSwMAXhH0G7zvOgE/ibFO8FkvVp2eaPTHshOAwLGV2VRN7pd9h4jVFEKhN0vhm
         Hu7+L/eJsYX6z8by/ww6CJMhEbBPrQNlkcf7aKVKOnAUCvx+789Z0P5P6g5sV1NNcZ
         jvUJKMd824Ph09EDmIBgr1lhEhw0/YyWW3LlvLIvPkXF69hWhRxGF0wZ0+w3U89Hc/
         PqGXoec91/Dcw==
Message-ID: <45228b33-b6c5-a7c8-e1d3-00cdb18829f7@kernel.org>
Date:   Mon, 31 Jul 2023 21:56:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3] man*/: srcfix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230731174836.5e3fxxe6csgitm4s@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230731174836.5e3fxxe6csgitm4s@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------i6me74JuprGx0oBC6Sn9tIZK"
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
--------------i6me74JuprGx0oBC6Sn9tIZK
Content-Type: multipart/mixed; boundary="------------R2eDr0TE8FXLn3L0Xv1Vw2nq";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <45228b33-b6c5-a7c8-e1d3-00cdb18829f7@kernel.org>
Subject: Re: [PATCH v3] man*/: srcfix
References: <20230731174836.5e3fxxe6csgitm4s@illithid>
In-Reply-To: <20230731174836.5e3fxxe6csgitm4s@illithid>

--------------R2eDr0TE8FXLn3L0Xv1Vw2nq
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-31 19:48, G. Branden Robinson wrote:
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

[...]

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

Is this that you'll do it in MR sed, or that you forgot to fix it?  :D

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


--------------R2eDr0TE8FXLn3L0Xv1Vw2nq--

--------------i6me74JuprGx0oBC6Sn9tIZK
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTIEewACgkQnowa+77/
2zIO6Q//UXkqazzxWTpnTBESbEHBUh6wHCwXvFkukBEzOhF2/qQAni/eY8lDBhf9
3dr2LpDiFIXedk4HBKBlqiICXO69JCdEYLI8ydPHFhqGD1WGWna+WfugGEizdtlc
e15uxTXUjqBKrXrEOD8JaAq/SVOyfLN5NR8h/HHu8LSvwtxunNtqxOOIYrGMUCR+
A5S5gUzHV7/K7KNF7Si1JOtRcxye/4O1S5dsIxcxWAgIftOSWty8vsVu8FAdNdny
NlP40CkJN8rjDD/1Dd6KK+Opbm8rjCwVIg4JhSpDiQT4/Y7Mvx8le3C69Xx89L/b
rZHEJrw19hXj7CCYPxX1EPOw1raBw81tjBmOblBsaiXiREtChiN1htm2VxGNuEx3
UkRaomjjFSATnVjxCvfqh+RzqEx3ks0x8nOKzCmLmsBTIgBX4+cePCw2rNOwLKJn
r7KLYx+wYsq/KXR2L+ElMOdXj9K70ev58pV87x/lnsknpZ5uAXbyRojxViIFOBQJ
yAjFe2ApLY29Pc/KFoexhWnWgXyCyCikfc8+CAdFFD8w+Ot3Qi/xx/f26C5AVP6W
3/E5ApXewl1cqJwT2rOHk2Ka7ebTNXw4P//JowV97wEWn0ZbU3yqaQmwKpaIfAVy
UoOJptNeoEH1b0zTnIuPEBuJpL4SBrLYGGgq3k5EeeUc25EK1Gw=
=ZXCW
-----END PGP SIGNATURE-----

--------------i6me74JuprGx0oBC6Sn9tIZK--
