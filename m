Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 075C57CC995
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 19:12:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjJQRMp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 13:12:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234896AbjJQRMo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 13:12:44 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B2FCAB
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 10:12:42 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64E8CC433C7;
        Tue, 17 Oct 2023 17:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1697562762;
        bh=JtYlQRS242rnNmMH1oc8vfFKo+m0HbCuCZpu1BQgiyo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=AfK+yfFVcAfTeKd4wkmG56EGKoTCiTBwTnppY8uWQOeUeX8t1oUnqsTEAxGYOVg1K
         J1HWZDhhOhUW0AaYKe5wT9/i9p+Bp96TFWZCzGPpXJJ4/pP6Flm4jsolNVg5/7XYlC
         Eqr8eolYUytEamYa9EZnMlP//CEze2nRrXYSTW886jjvBV6iaIarxoe3diB/4CmTGl
         IfxE32IqV+I6xlSr7glmj7DEOj+7NfGKztJU5m66oxjktBRtJhPQ4HkW4SNp7KY1YF
         KaivDjDcFGRbQKQmTEfS0i7PdUZuH2cOdhS4dmuo/oIQf/O33v0dsuZQxzxFIG46Sh
         GVthqDgSBKOXw==
Date:   Tue, 17 Oct 2023 19:12:27 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc:     kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL
Message-ID: <ZS7Ah-DnCOzxc1Yx@debian>
References: <20231017150138.3406580-1-usama.anjum@collabora.com>
 <20231017150138.3406580-2-usama.anjum@collabora.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="9nZXXMXOlSXJYXNt"
Content-Disposition: inline
In-Reply-To: <20231017150138.3406580-2-usama.anjum@collabora.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--9nZXXMXOlSXJYXNt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Oct 2023 19:12:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Muhammad Usama Anjum <usama.anjum@collabora.com>
Cc: kernel@collabora.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] ioctl_pagemap_scan: add page for pagemap_scan IOCTL

Hi Muhammad,

On Tue, Oct 17, 2023 at 08:01:32PM +0500, Muhammad Usama Anjum wrote:
> Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>

Please link to the discussion where this feature is being discussed, in
case someone needs to review it in the future.

> ---
>  man2/ioctl_pagemap_scan.2 | 183 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 183 insertions(+)
>  create mode 100644 man2/ioctl_pagemap_scan.2
>=20
> diff --git a/man2/ioctl_pagemap_scan.2 b/man2/ioctl_pagemap_scan.2
> new file mode 100644
> index 000000000..4e096028d
> --- /dev/null
> +++ b/man2/ioctl_pagemap_scan.2
> @@ -0,0 +1,183 @@
> +.\" This manpage is Copyright (C) 2023 Collabora;
> +.\" Written by Muhammad Usama Anjum <usama.anjum@collabora.com>
> +.\"
> +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> +.\"
> +.\" Commit 84ceddb3c2b0c280936f28f450d65f46cb7411c6
> +.\"
> +.TH ioctl_pagemap_scan 2 2023-10-17 "Linux man-pages (unreleased)"
> +.SH NAME
> +ioctl_pagemap_scan \- get and/or clear page flags
> +.SH LIBRARY
> +Standard C library
> +.RI ( libc ", " \-lc )
> +.SH SYNOPSIS
> +.nf
> +.BR "#include <linux/fs.h>" "  /* Definition of " struct " " pm_scan_arg=
 ", " struct " " page_region " and " PAGE_IS_* " constants */"

Please split the comment into several lines, so that the manual page can
be read in an 80-column terminal without wrapping lines.

> +.B #include <sys/ioctl.h>
> +.PP
> +.BI "int ioctl(int " pagemap_fd ", PAGEMAP_SCAN, struct pm_scan_arg *" a=
rg );
> +.fi
> +.SH DESCRIPTION
> +This
> +.BR ioctl (2)
> +is used to get and optionally clear some specific flags from page table =
entries.
> +

Please use an empty roff(7) request instead of a empty input line.  That
is, use a line with just a '.', that is, s/^$/./

	$ make lint build check --debug=3Dprint
	TROFF	.tmp/man/man2/ioctl_pagemap_scan.2.cat.set
	! (troff -wbreak  -man  -Tutf8 -rLL=3D78n -rCHECKSTYLE=3D3 -ww  <.tmp/man/=
man2/ioctl_pagemap_scan.2.cat.troff 2>&1 >.tmp/man/man2/ioctl_pagemap_scan.=
2.cat.set \
	   | grep -v -f './share/lint/groff/man.ignore.grep' \
	   ||:; \
	) \
	| grep ^ >&2
	an.tmac:man2/ioctl_pagemap_scan.2:25: style: blank line in input
	...

> +.SS Supported page flags
> +The following page table entry flags are support:

s/support/supported/

> +.TP
> +.BR PAGE_IS_WPALLOWED

'.BR' is wrong here (it alternates bold and roman).  It should be '.B',
which is just bold.  You can check groff_man(7) and groff_man_style(7).
See these warnings:

	$ make lint build check --debug=3Dprint
	TROFF	.tmp/man/man2/ioctl_pagemap_scan.2.cat.set
	! (troff -wbreak  -man  -Tutf8 -rLL=3D78n -rCHECKSTYLE=3D3 -ww  <.tmp/man/=
man2/ioctl_pagemap_scan.2.cat.troff 2>&1 >.tmp/man/man2/ioctl_pagemap_scan.=
2.cat.set \
	   | grep -v -f './share/lint/groff/man.ignore.grep' \
	   ||:; \
	) \
	| grep ^ >&2
	an.tmac:man2/ioctl_pagemap_scan.2:25: style: blank line in input
	an.tmac:man2/ioctl_pagemap_scan.2:29: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:32: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:35: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:38: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:41: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:44: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:47: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:49: style: blank line in input
	an.tmac:man2/ioctl_pagemap_scan.2:53: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:56: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:58: style: blank line in input
	an.tmac:man2/ioctl_pagemap_scan.2:79: style: blank line in input
	an.tmac:man2/ioctl_pagemap_scan.2:81: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:88: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:91: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:94: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:97: style: .BR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:99: style: .IR expects at least 2 argume=
nts, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:101: style: .IR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:104: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:106: style: .IR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:119: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:121: style: .IR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:124: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:127: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:130: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:133: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:136: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:138: style: .IR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:139: style: blank line in input
	an.tmac:man2/ioctl_pagemap_scan.2:157: style: .BR expects at least 2 argum=
ents, got 1
	an.tmac:man2/ioctl_pagemap_scan.2:163: style: .BR expects at least 2 argum=
ents, got 1
	make: *** [share/mk/build/catman.mk:54: .tmp/man/man2/ioctl_pagemap_scan.2=
=2Ecat.set] Error 1
	make: *** Deleting file '.tmp/man/man2/ioctl_pagemap_scan.2.cat.set'

> +Page has async-write-protection enabled

Here and below:
s/Page/The page/

> +.TP
> +.BR PAGE_IS_WRITTEN
> +Page has been written to from the time it was write protected
> +.TP
> +.BR PAGE_IS_FILE
> +Page is file backed
> +.TP
> +.BR PAGE_IS_PRESENT
> +Page is present in the memory
> +.TP
> +.BR PAGE_IS_SWAPPED
> +Page is in swapped
> +.TP
> +.BR PAGE_IS_PFNZERO
> +Page has zero PFN
> +.TP
> +.BR PAGE_IS_HUGE
> +Page is THP or Hugetlb backed
> +

s/^$/./

> +.SS Supported Operations

I think s/Operations/operations/

> +The get operation is always performed if the output buffer is specified.=
 The other operations are as following:

Please use semantic newlines.  Input lines should never go past column
80, except for very good reasons.

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
       In the source of a manual page, new sentences should be started
       on  new  lines,  long  sentences  should be split into lines at
       clause breaks (commas, semicolons, colons, and so on), and long
       clauses should be split at phrase boundaries.  This convention,
       sometimes known as "semantic newlines", makes it easier to  see
       the  effect of patches, which often operate at the level of in=E2=80=
=90
       dividual sentences, clauses, or phrases.

Also, see this warning:

	$ make lint build check --debug=3Dprint
	LINT (mandoc)	.tmp/man/man2/ioctl_pagemap_scan.2.lint-man.mandoc.touch
	! (mandoc -man -Tlint  man2/ioctl_pagemap_scan.2 2>&1 \
	   | grep -v -f './share/lint/mandoc/man.ignore.grep' \
	   ||:; \
	) \
	| grep ^ >&2
	mandoc: man2/ioctl_pagemap_scan.2:51:111: STYLE: input text line longer th=
an 80 bytes: The get operation is...
	mandoc: man2/ioctl_pagemap_scan.2:57:93: STYLE: input text line longer tha=
n 80 bytes: Abort the scan when ...
	mandoc: man2/ioctl_pagemap_scan.2:60:2: WARNING: skipping paragraph macro:=
 PP after SS
	make: *** [share/mk/lint/man/man.mk:32: .tmp/man/man2/ioctl_pagemap_scan.2=
=2Elint-man.mandoc.touch] Error 1

> +.TP
> +.BR PM_SCAN_WP_MATCHING
> +Write protect the matched pages
> +.TP
> +.BR PM_SCAN_CHECK_WPASYNC
> +Abort the scan when a page which isn't registered with Userfaultfd Async=
hronous Write protect

Semantic newlines.

> +

s/^$/./

> +.SS The struct pm_scan_arg Argument

Types should go in italics.  To do this inside SH or SS, do:

=2ESS The \f[I]struct pm_scan_arg\f[] Argument.

Also, why Argument and not argument?

> +.PP

This .PP is redundant.

	$ make lint build check --debug=3Dprint
	LINT (mandoc)	.tmp/man/man2/ioctl_pagemap_scan.2.lint-man.mandoc.touch
	! (mandoc -man -Tlint  man2/ioctl_pagemap_scan.2 2>&1 \
	   | grep -v -f './share/lint/mandoc/man.ignore.grep' \
	   ||:; \
	) \
	| grep ^ >&2
	mandoc: man2/ioctl_pagemap_scan.2:51:111: STYLE: input text line longer th=
an 80 bytes: The get operation is...
	mandoc: man2/ioctl_pagemap_scan.2:57:93: STYLE: input text line longer tha=
n 80 bytes: Abort the scan when ...
	mandoc: man2/ioctl_pagemap_scan.2:60:2: WARNING: skipping paragraph macro:=
 PP after SS
	make: *** [share/mk/lint/man/man.mk:32: .tmp/man/man2/ioctl_pagemap_scan.2=
=2Elint-man.mandoc.touch] Error 1

> +.in
> +.EX
> +struct pm_scan_arg {
> +    __u64 size;
> +    __u64 flags;
> +    __u64 start;
> +    __u64 end;
> +    __u64 walk_end;
> +    __u64 vec;
> +    __u64 vec_len;
> +    __u64 max_pages
> +    __u64 category_inverted;
> +    __u64 category_mask;
> +    __u64 category_anyof_mask
> +    __u64 return_mask;
> +};
> +.EE
> +.in
> +

This blank line makes no sense.

> +.TP
> +.BR size
> +The size of
> +.I arg
> +is specified in it. It'll help in future if extension is make to

Semantic newlines.

Also, I have a hard time understanding the second sentence.
You may want to check the wording used in other pages for structures
where the size is kind of a version marker.

> +.I struct pm_scan_arg
> +in future.
> +.TP
> +.BR flags
> +The operations to be performed are specified in it.
> +.TP
> +.BR start
> +The starting address of the scan is specified in it.
> +.TP
> +.BR end
> +The ending address of the scan is specified in it.
> +.TP
> +.BR walk_end
> +The kernel returns the scan's ending address in it. The

Semantic newlines.

> +.IR walk_end
> +equal to
> +.IR end
> +means that scan has completed on the entire range.
> +.TP
> +.BR vec
> +The address of
> +.IR page_region
> +array for output
> +.PP
> +.in +8n
> +.EX
> +struct page_region {
> +    __u64 start;
> +    __u64 end;
> +    __u64 categories;
> +};
> +.EE
> +.in
> +.TP
> +.BR vec_len
> +The length of the
> +.IR page_region

Similarly, this should be I, not IR.

> +struct array
> +.TP
> +.BR max_pages
> +Optional limit for number of output pages
> +.TP
> +.BR category_inverted
> +PAGE_IS_* categories which values match if 0 instead of 1

PAGE_IS_* should probably be in mixed bold/italics:

=2EBI PAGE_IS_ *

See groff_man_stlye(7):

              Use bold for ...
                                                 ..., and for literals
              that are major topics of the subject  under  discussion;
              for  example, this page uses bold for macro, string, and
              register names.  In an .EX/.EE  example  of  interactive
              I/O  (such  as  a shell session), set only user input in
              bold.

              Use  italics  for  ...
                  ..., and anywhere a parameter requiring  replacement
              by the user is encountered.  ...



> +.TP
> +.BR category_mask
> +Skip pages for which any category doesn't match
> +.TP
> +.BR category_anyof_mask
> +Skip pages for which no category matches
> +.TP
> +.BR return_mask
> +Page categories that are to be reported in
> +.IR page_region
> +

s/^$/./

> +.SH RETURN VALUE
> +On error, \-1 is returned, and
> +.I errno
> +is set to indicate the error.
> +.SH ERRORS
> +Error codes can be one of, but are not limited to, the following:
> +.TP
> +.B EINVAL
> +Invalid arguments i.e., invalid
> +.I size
> +of the argument, invalid
> +.I flags
> +, invalid
> +.I categories
> +, the
> +.I start
> +address isn't aligned with
> +.BR PAGE_SIZE
> +or
> +.I vec_len
> +is specified when
> +.I vec
> +is
> +.BR NULL.
> +.TP
> +.B EFAULT
> +Invalid
> +.I arg
> +pointer, invalid
> +.I vec
> +pointer or invalid address range specified by
> +.I start
> +and
> +.I end
> +.TP
> +.B ENOMEM
> +No memory is available
> +.TP
> +.B EINTR
> +Fetal signal pending
> +.SH STANDARDS
> +Linux.

Please add a HISTORY section indicating at least the Linux version where
it was (will be) introduced.

Also, it would probably be useful to add an EXAMPLES section with a
small example of use.

Thanks,
Alex

> +.SH SEE ALSO
> +.BR ioctl (2)
> --=20
> 2.40.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--9nZXXMXOlSXJYXNt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUuwHsACgkQnowa+77/
2zLPxQ/+MCGRUONvCYECieA2pUZy8OFII7OVrLo5oiP6GXZeYDC+yEea+6EhKfSS
TZySkljtjxpnFte/fciWK6ySxa1fik/RPN5oJlbnrTN64dFYf1tUffI+Z7R5BGG2
MaSz9EFRQg9BwKsTx4JU/sqyIXKGsRiDGNWQI0geWfD5vkD11ODgexBOH83VqL0i
mlU3khGBrF51w7zLXZTX/3IRjIlRy8Cc8rZAWigYqm06x/KnubsLkH88lmtAxiv7
5MyZz6CMl80ANUrkS5rpY4aYxXYqdIdawxgvrw6GpSCv1gSujc9++/g3FoRlctRP
m+0Dz5t/GqwB9dlTVou5EWN0uxS9lifyFBtYmNioYGZPIJ9kBRzjpuzs1vWH9SoJ
WyGN5T3hguaJ4+kmPidAeZP8OvSBaiNHlfcsqDOCHuPvbHdUEgygH9+W4VKdhNgK
3aFhJs0gFViM7D9PysPG9rpyHk4dake9cj3MwuuJM5u8XziaTHiOQGeXkRxRY56d
so0b3umRwObvSfHBQanrnXkIaJwi5Hx26ZswSVsN3dprc9JbgB5Ne/SgtmaxSe3+
Qf57hNVMgEbqRmppOStU/UMZxNADG1gs/eIdzJT0Gg5tCQgwpwoNov5GvLhUqwNs
BsWr+Ojx3Fo0TTOz7Ven79xaRw1AWg9sK1GYYBTMzM+wdHM2g3E=
=Zn7f
-----END PGP SIGNATURE-----

--9nZXXMXOlSXJYXNt--
