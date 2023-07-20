Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D76575AF7B
	for <lists+linux-man@lfdr.de>; Thu, 20 Jul 2023 15:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbjGTNQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 20 Jul 2023 09:16:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231750AbjGTNQp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 20 Jul 2023 09:16:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 833F1269E
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 06:16:43 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id ED2D661A8B
        for <linux-man@vger.kernel.org>; Thu, 20 Jul 2023 13:16:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0879C433C8;
        Thu, 20 Jul 2023 13:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689859002;
        bh=y+n02zpUt+oPvPVeau/w7ouRQsEVxCIpkgsBbbIqLxo=;
        h=Date:Subject:To:References:From:In-Reply-To:From;
        b=Opog9hgylZ0/B971LI5PU6Z6e52cXH/K76y3ObSwPOJ9GZe+L9t7mHfv8uPuX9jo/
         9i1D2Rii7lmMd7BDgviXL80EQOJKeUF1p82qIsUNBZSAsOsUqBSieq2oLLB9OYGnIc
         FEjG14EYhPgeFfPDFRPpj+T6nqMvfuKhcrK3ThiT+3LzO4moDdOR781LAXgFrLxS9s
         nSyecJWBSpyOLC56e4JsupmGKlDMvbesXR9k5HirMJmynyupSSXkpbMCfp8tELBk2L
         AYLuBnR1ttgmjsf4296tLd1vMffRa+qFH8n81lTpk5bS17zrGCEFZdaV9T73uaHoCC
         9AehvenInXvLg==
Message-ID: <4bf3ea9c-d4b8-4cf6-c932-63a02d0dde34@kernel.org>
Date:   Thu, 20 Jul 2023 15:16:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] man*/: ffix (use `\%`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20230720020436.vejzttvkklhmkgpn@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230720020436.vejzttvkklhmkgpn@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0BGbCuhZlRmXgflkzHCqP4R0"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        WEIRD_QUOTING autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------0BGbCuhZlRmXgflkzHCqP4R0
Content-Type: multipart/mixed; boundary="------------UFYkhj4P06QHyT0ATk5YAHUv";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 linux-man@vger.kernel.org
Message-ID: <4bf3ea9c-d4b8-4cf6-c932-63a02d0dde34@kernel.org>
Subject: Re: [PATCH 1/2] man*/: ffix (use `\%`)
References: <20230720020436.vejzttvkklhmkgpn@illithid>
In-Reply-To: <20230720020436.vejzttvkklhmkgpn@illithid>

--------------UFYkhj4P06QHyT0ATk5YAHUv
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2023-07-20 04:04, G. Branden Robinson wrote:
> From 25d379c486d28357a8341b0cfbce1b43b82e177f Mon Sep 17 00:00:00 2001
> From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> Date: Wed, 19 Jul 2023 17:59:27 -0500
> Subject: [PATCH 1/2] man*/: ffix (use `\%`)
>=20
> Protect instances of some literals from hyphenation.  These are only
> those necessary to improve analyzability of a large-scale (500+ file),
> sed-driven change to improve adjustment and hyphenation enablement
> management around tables.
>=20
> * man2/getrlimit.2: Protect some instances of `RLIMIT_MSGQUEUE`,
>   `RLIMIT_SIGPENDING`, `RLIMIT_FSIZE`, and `getrlimit` from hyphenation=
=2E
> * man2/sigaltstack.2: Protect an instance of `setrlimit` from
>   hyphenation.
> * man3/gethostbyname.3: Protect an instance of `endhostent` from
>   hyphenation.
> * man3/getmntent.3: Protect an instance of `getmntinfo` from
>   hyphenation.

I added a S-o-b for you.

Patch applied.

Cheers,
Alex

> ---
>  man2/getrlimit.2     | 10 +++++-----
>  man2/sigaltstack.2   |  2 +-
>  man3/gethostbyname.3 |  2 +-
>  man3/getmntent.3     |  2 +-
>  4 files changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
> index 21f919fdc..5d4e428d1 100644
> --- a/man2/getrlimit.2
> +++ b/man2/getrlimit.2
> @@ -577,12 +577,12 @@ .SH STANDARDS
>  .B RLIMIT_RSS
>  derives from BSD and is not specified in POSIX.1;
>  it is nevertheless present on most implementations.
> -.BR RLIMIT_MSGQUEUE ,
> +.BR \%RLIMIT_MSGQUEUE ,
>  .BR RLIMIT_NICE ,
>  .BR RLIMIT_RTPRIO ,
>  .BR RLIMIT_RTTIME ,
>  and
> -.B RLIMIT_SIGPENDING
> +.B \%RLIMIT_SIGPENDING
>  are Linux-specific.
>  .SH HISTORY
>  .TP
> @@ -747,7 +747,7 @@ .SS Representation of """large""" resource limit va=
lues on 32-bit platforms
>  .\" https://bugzilla.kernel.org/show_bug.cgi?id=3D5042
>  .\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12201
>  The most pertinent limit here is
> -.BR RLIMIT_FSIZE ,
> +.BR \%RLIMIT_FSIZE ,
>  which specifies the maximum size to which a file can grow:
>  to be useful, this limit must be represented using a type
>  that is as wide as the type used to
> @@ -769,13 +769,13 @@ .SS Representation of """large""" resource limit =
values on 32-bit platforms
>  Since glibc 2.13,
>  .\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3D12201
>  glibc works around the limitations of the
> -.BR getrlimit ()
> +.BR \%getrlimit ()
>  and
>  .BR setrlimit ()
>  system calls by implementing
>  .BR setrlimit ()
>  and
> -.BR getrlimit ()
> +.BR \%getrlimit ()
>  as wrapper functions that call
>  .BR prlimit ().
>  .SH EXAMPLES
> diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
> index 6ae8a612c..b42149541 100644
> --- a/man2/sigaltstack.2
> +++ b/man2/sigaltstack.2
> @@ -230,7 +230,7 @@ .SH NOTES
>  expects that it may exhaust its standard stack.
>  This may occur, for example, because the stack grows so large
>  that it encounters the upwardly growing heap, or it reaches a
> -limit established by a call to \fBsetrlimit(RLIMIT_STACK, &rlim)\fP.
> +limit established by a call to \fB\%setrlimit(RLIMIT_STACK, &rlim)\fP.=

>  If the standard stack is exhausted, the kernel sends
>  the thread a \fBSIGSEGV\fP signal.
>  In these circumstances the only way to catch this signal is
> diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
> index 492e22d69..b467e92d9 100644
> --- a/man3/gethostbyname.3
> +++ b/man3/gethostbyname.3
> @@ -377,7 +377,7 @@ .SH ATTRIBUTES
>  .BR gethostent (),
>  .BR gethostent_r (),
>  or
> -.BR endhostent ()
> +.BR \%endhostent ()
>  are used in parallel in different threads of a program,
>  then data races could occur.
>  .SH STANDARDS
> diff --git a/man3/getmntent.3 b/man3/getmntent.3
> index 5c0cfde0a..37e7225bd 100644
> --- a/man3/getmntent.3
> +++ b/man3/getmntent.3
> @@ -249,7 +249,7 @@ .SH HISTORY
>  .I /etc/mnttab
>  is used.
>  4.4BSD and Digital UNIX have a routine
> -.BR getmntinfo (),
> +.BR \%getmntinfo (),
>  a wrapper around the system call
>  .BR getfsstat ().
>  .SH SEE ALSO

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------UFYkhj4P06QHyT0ATk5YAHUv--

--------------0BGbCuhZlRmXgflkzHCqP4R0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmS5M7cACgkQnowa+77/
2zIe2w/9EW4LQfKKPd9umpYL/4L+I697cIrx77FFUjB83PQZ00GeOY7qQDsmb87z
epTIQzm30Qqho14bIwiFUPT7Dlj6cLKSeA+4qk5D4Lmcoi2+tgyg1smS/xBFdfHL
sys3bBxl+srHZ3dtj4QZsqUT5pkEdrG60Jrv72vFa8c4fjIWAT+2jYKqUN1FCcyc
afO1XW4gLHraP/KfK5EKD+h9nnRJIGELfe8UjrKGSMkcvqExj0VpohEPT+OawlRc
D6PWm5GuFF/5OcRbwu28yyg0hdVdlLkBncz8v+u2OqRaEilO/Y34VFRLcUy0WXm0
jg7KAbf6loHvhlMvroaPfqUb3CzYM/O2OlbxOI8n1ZjpaxLfgO+8/U8WCvcM6fCQ
hHb6dScH0i+kbW3KYGv07eseLKTMwJRdlvumkbCqWuao8FougI/gLYiPe8N+cTel
MMaLAzCsbCnBpZ0FKCwKB7+qPItZnv33iGFRKqsR6fJNnO+ki+RTXlTkKO8zCjSI
b3bIedDX7cErg2nT5JHOAvCK0jlKH5NsXyBTH8/VxLpMDUX7U8uM/A134xNKHgeJ
jV6rX5d0QmE07GnSF8j2Y+IqL2HjN/MPcEcJo4hm60fJn7CdfPEr/22lCVWHdLyw
fsNFaxYs48DR0Rj+3KP0RaBL1gAa+l8DWymedYC0sE5Qcb/4sjM=
=sep+
-----END PGP SIGNATURE-----

--------------0BGbCuhZlRmXgflkzHCqP4R0--
