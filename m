Return-Path: <linux-man+bounces-141-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B52CC7F498A
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 15:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 47E67B20D27
	for <lists+linux-man@lfdr.de>; Wed, 22 Nov 2023 14:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961634C3D0;
	Wed, 22 Nov 2023 14:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHmXXmIu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577B04EB40
	for <linux-man@vger.kernel.org>; Wed, 22 Nov 2023 14:59:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05020C433C8;
	Wed, 22 Nov 2023 14:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700665145;
	bh=eFYBhYLhD12cw4qCJ+KuRpp9a3aSvIcPR7sTMwm/HgQ=;
	h=Date:From:To:Cc:Subject:From;
	b=XHmXXmIu/jrJZ1Exkst1023ARFXowCQz6407fdtyujQxsN/yuKXQcI6WUXaC5K+6i
	 MUe7etprzPbFRqtXRT93mNYc/7Q5DkXSHxMmLetLPkg4myyPipvGotJPazoF1ApmFO
	 J7PYYOtb2FAzQS1iHOJUOxKZVaOcUnudKxuDJFt0DNjyq/FJhsapKungWjn9yW5b3P
	 Wg/ayLBvc5uVaDnOnOfVT/K90ZBLS9FgPBTNUZm5D+iS+GikmY3SKxT8CmM1XW+qHd
	 6jtPI2/z/5i9f+lxvRojD6Y9lu9Mah9D+IleqikUfsSnTHC5OU6Va39WkTi90RXZNc
	 TzoNt2Ooa33JQ==
Date: Wed, 22 Nov 2023 15:58:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Cc: groff@gnu.org
Subject: Optimize script for generating LinuxManBook.pdf
Message-ID: <ZV4XNnNlv8OK1B1m@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b/J5azIUVMFxV7aS"
Content-Disposition: inline


--b/J5azIUVMFxV7aS
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Nov 2023 15:58:56 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Cc: groff@gnu.org
Subject: Optimize script for generating LinuxManBook.pdf

Hi Deri,

I've optimized from 18.5 s down to 16.3 s the script, by splitting the
pipeline with this wrapper (and slightly reducing the perl script to
just print the pages to stdout).  BTW, now it can be run from any
directory.  And every step can be debugged by just introducing
| tee /dev/tty \
wherever you want to debug.  It's all pushed to master.

The PDF is now printed to stdout, to avoid hard-coding file names.

I still need to split a bit more and reduce the longest lines.  How does
this script look to you?

Cheers,
Alex :-)


$ cat scripts/LinuxManBook/build_linux_man_book.sh=20
#!/bin/sh
# Copyright 2023, Alejandro Colomar <alx@kernel.org>
# SPDX-License-Identifier: GPL-3.0-or-later

(
	"$(dirname "$0")"/prepare_linux_man_book.pl "$1" \
	| groff -z -dPDF.EXPORT=3D1 -dLABEL.REFS=3D1 -dpaper=3Da4 -Tpdf -k -pet \
		-M"$(dirname "$0")" -mandoc -manmark \
		-F"$(dirname "$0")" -P-pa4 \-rC1 -rCHECKSTYLE=3D3 2>&1 \
	| LC_ALL=3DC grep '^\. *ds ';

	"$(dirname "$0")"/prepare_linux_man_book.pl "$1";
) \
| preconv \
| tbl \
| eqn -Tpdf \
| (
	troff -Tpdf -ms <"$(dirname "$0")"/LMBfront.ms;
	troff -Tpdf -M"$(dirname "$0")" -mandoc -manmark \
		-F"$(dirname "$0")" -dpaper=3Da4;
) \
| gropdf -F"$(dirname "$0")" -pa4;


--=20
<https://www.alejandro-colomar.es/>

--b/J5azIUVMFxV7aS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVeFzAACgkQnowa+77/
2zI86A//XooI5WffHJ8hxz+EytmWLVuOxuNr7CWFxaY85qvhPzLvl7gIAuK+VDcG
WF1nydXeh0L3DcQTXeeQQtnISD/9bSdVeXTEv1/8frKfxsYibf5tU/X/O5T4dq9C
H/+ps4UBDeKxKhSqtmoQFWZ4ItX8fAYetUGpFCBeYR1K0ZMzWDN5+KrPpK0i4gYn
FwLOrWeJl44MDbraUq7SG2Gt1IVO1DPRq4AhEmJLh6/Bgcz/RP6kEBKWnXOhEZh7
8DHjSQO4B0ogoiDRmkXLEoKgYQpavIh0981PFOVDqcia78T/A3zLGBsT2r/YhAeg
5d8vOT8nuhd77NMCF2BkKQAIWUMCUVG8BrRUcehBob42AMEWtqPE+2gqaPlR03Ca
iFUPm6AmvN4x8kOnzcWxKFBVm7yYI0zW/IN4rMi58CFBQKTh8wiJ+jpAfOfRdmta
+tQliag1dYyXcGw8PN9BdwLOGO6nx1J0STY91j/nJ4KOwIdbX4qD3TLs/qSJ1gpo
WJ8vq4eElYUiz9A6heE3XoJzMmTY0eX04JiIxM1N1V3kZrNB+s0yMcMzRY2OkhsR
wlZhP2tf5N47HpGO1ycTwe1+E5bZj3lo0VgSKqng5zHjFFQeo/YYcJPrdMsC4UT+
sJaLvbAZjtBnTgnlVTkZIFPzlR0LcbQCMfof5EI5phgxpZQZuS0=
=8yYG
-----END PGP SIGNATURE-----

--b/J5azIUVMFxV7aS--

