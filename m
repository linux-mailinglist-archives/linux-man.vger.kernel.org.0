Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B83477B581
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 11:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjHNJ3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 05:29:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233026AbjHNJ2u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 05:28:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB33AB
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 02:28:49 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 21876643BA
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 09:28:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B7ABC433C8;
        Mon, 14 Aug 2023 09:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692005328;
        bh=ljsAbUHjGnEZFIMGxpe0gxQBCF1qiXPUuwe59o7ZHLE=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=esO6jkf3+SoH0eFibDe0RkIu8MrogM4iXq9z/POJ3BSvITGXs87TMIobKtZngHzIU
         AHXSGOQt8fnyJHeViUIAijqcYItMCrb6To9cGtKVWzribvO+HmgLlXbWxlNoOvq6rc
         PmmqKsWHUq6re5FrqWacBw0i6kwomKuYQwlwf2jxTDszwKGd+BwR3sqLLVpCoyBQij
         JjNyyWNpxQNa8T8BXsuRWBU9E1ADK0YIT38Rxpaxr8tI/PTwviV4SK1Ojcr+85NUuB
         mt4zKvQ2QawQ2slbaBKwtwmRzGxNUDapQZCzb/1et/iOHJblQU/Upfcykrfkkj9y9P
         SYASPUyI/3bnQ==
Message-ID: <f4817289-b2d0-6a13-0bf7-cef191a08fcd@kernel.org>
Date:   Mon, 14 Aug 2023 11:28:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 1/2] man*/: srcfix
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230814001413.py4jzfvdbjeevag5@illithid>
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230814001413.py4jzfvdbjeevag5@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------tFSULQ5uZNa7nH8ZOGioaA4O"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------tFSULQ5uZNa7nH8ZOGioaA4O
Content-Type: multipart/mixed; boundary="------------rmlO3wE8Xal0UyNKWeGLQ4ml";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <f4817289-b2d0-6a13-0bf7-cef191a08fcd@kernel.org>
Subject: Re: [PATCH v3 1/2] man*/: srcfix
References: <20230814001413.py4jzfvdbjeevag5@illithid>
In-Reply-To: <20230814001413.py4jzfvdbjeevag5@illithid>

--------------rmlO3wE8Xal0UyNKWeGLQ4ml
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-08-14 02:14, G. Branden Robinson wrote:
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
>=20
> v3: Resubmitted; no change to part 1/2.
>=20
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

[...]

> diff --git a/man2/open.2 b/man2/open.2

[...]

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

[...]

> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2

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

This RB is inconsistent with other parts of this same patch.

Cheers,
Alex

> +and
> +.BR fcntl (2))
>  and leases
>  .RB ( fcntl (2)).
>  .IP
> diff --git a/man7/credentials.7 b/man7/credentials.7

[...]

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

[...]

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------rmlO3wE8Xal0UyNKWeGLQ4ml--

--------------tFSULQ5uZNa7nH8ZOGioaA4O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTZ88YACgkQnowa+77/
2zKWbQ/9H74hCCnjpqks2Sq2Z0a72r46SjCbqCGcPcbtBRzpbfboYhuIA3XhUghZ
DTA5QS/Q3hO2Zup7W3v1Q+U9udvEJR7wrf7MzQ9aFjIU5N+f4chpwpBc0hbgUI5i
YZjATzb8k2uAqakfginb5IcfMhXVXQBViU0eapi8zx7YyAXlnBa5GV08JXWJsbOc
T3YHdiuZn+UcWh4mho7vhCWgRR/qPDoNFrG5tXkUKhqeu4ms6s4wa1erQ53Ff90Z
kvZW63AuF0H6BdsM4cWQlzm+nRsufvvO32q06RBlfCpT8Iev67pdqWgrIViaqdSh
ha/WEpDseTMeExCo+0kNAsIOh+dNp7DQluSXUmalGNSF1uT+CYJEinKNH3NW6Hxt
4/MuVuzaWXsjl6vyT/keXapVfCzWenCFF4cV3O+sjXSG58QUZGDzACxPPZFWHwwS
LsLp2es/cqa/tsFFr8I3GD58gfa4tDsk1SjJtA6GXOUSu+EXe42dqRc8lN9M1U5f
JfYPpZImeJZbdZD2/HEsnOwXeep2LO49ZQZC+UJzJdD0olNn0k2pEpEMO8BB4f7x
Mj3OCxkvxx5oj7iVQjWZd+Ta5uL7UFU5o405r8CQBMxiFWMLrM+kRNY9Fam+IBxF
NaZY65ChmPXWDGwnQt3s2wh05azOGhNZb9B7yu6wWSOdl/pEhV0=
=UNeK
-----END PGP SIGNATURE-----

--------------tFSULQ5uZNa7nH8ZOGioaA4O--
