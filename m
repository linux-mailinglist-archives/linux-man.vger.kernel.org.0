Return-Path: <linux-man+bounces-2636-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 92955A6CEFB
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 12:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E9F716F577
	for <lists+linux-man@lfdr.de>; Sun, 23 Mar 2025 11:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813AC204C1A;
	Sun, 23 Mar 2025 11:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+dB3WbK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D840202F87
	for <linux-man@vger.kernel.org>; Sun, 23 Mar 2025 11:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742730188; cv=none; b=TeMZs0NRexsHYfV5CFoqaM3qZtKjLiARHGbZ9Bq9YitS/3u5xsHe+tTeqN1t1d+i6DCqrGFArHV2IkCRDtmwQG/KajCMTLpvDt7Z18KcxIbWdPXtnXLM1ustpTLxxeznpmqBdNwmZ2ELepsb4+CJfPg7uc3anWdO1u4AC5imUfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742730188; c=relaxed/simple;
	bh=Y9FDyHZm+a7N+kLZeaGXkp/uryss1XHySqQOA4c1th0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qioSMivGdyTREtOskohpXFRdUR3of9blnbPZxtgkCzyMixSTZrvzKKfxfJuxwsEC9TAOVBLOmjeiBnUbwSpD1Icu3vcLRVR7dTSgPBDTgMbY8AKfKgjoOtx9M98N2NwQkxwib0ay3jwD+UloS8WP5yV19qYCiiN1X2lr8O4T6Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+dB3WbK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFFCBC4CEE2;
	Sun, 23 Mar 2025 11:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742730187;
	bh=Y9FDyHZm+a7N+kLZeaGXkp/uryss1XHySqQOA4c1th0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L+dB3WbKl71uvu2fkHKS+n5yNoS7IcKjQ/Ov1w3PiMpKp/EpntreX4R0c4GLRNJYA
	 sD4kWcO9Xt0MBonZb34fbDLafF4kUnzLw0Ra4Ja5Fi8RflqntJBFAXvPaGrbvJRuXL
	 AycpyGF3vTlYyBLnVvy47Sob1Q5gZpQCQaCdYXah+nXTysDPFGoiunDP5qrQPGiFXO
	 rMGx+l+IIiS/SShk+2oHwyYAWE/8oaIvl89cHm/nwXorC3sG4BftExOOb5p9LDJtfr
	 +Gb6Mp6rDEzLRl2swCoICxp3VtZw4PyVyYD1KdfYerAMMXdM94voVSkkE7JQicIKmC
	 xfKdNdREIWqlw==
Date: Sun, 23 Mar 2025 12:43:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 0/2] strto[u]l.3: BUGS and CAVEATS
Message-ID: <cover.1742730109.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="id4pvjlfqupym4rm"
Content-Disposition: inline
In-Reply-To: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>


--id4pvjlfqupym4rm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v4 0/2] strto[u]l.3: BUGS and CAVEATS
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>

Hi!

Here's v4, with minor wording fixes.  Bruno, I've added you as
Co-authored-by in patch 1/2.  Please sign the patch if you like it.


Cheers,
Alex

Alejandro Colomar (2):
  man/man3/strto[u]l.3: BUGS: Signed numbers and white space are not
    rejected
  man/man3/strtol.3: CAVEATS: Clarify how to perform range checks

 man/man3/strtol.3  | 19 +++++++++++++++++++
 man/man3/strtoul.3 | 18 +++++++++++++-----
 2 files changed, 32 insertions(+), 5 deletions(-)

Range-diff against v3:
1:  3c456a1a0 ! 1:  4a1de398d man/man3/strto[u]l.3: BUGS: Signed numbers an=
d white space are not rejected
    @@ Commit message
    =20
         Link: <https://stackoverflow.com/questions/60955490/strtoul-what-i=
s-the-correct-return-value-for-very-negative-strings>
         Reported-by: Bruno Haible <bruno@clisp.org>
    +    Co-authored-by: Bruno Haible <bruno@clisp.org>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
      ## man/man3/strtol.3 ##
    @@ man/man3/strtol.3: .SH CAVEATS
     +.SH BUGS
     +.SS White space
     +These functions silently accept leading white space.
    -+One should call
    ++To reject white space, call
     +.BR isspace (3)
     +before
    -+.BR strtol ()
    -+to reject white space.
    ++.BR strtol ().
      .SH EXAMPLES
      The program shown below demonstrates the use of
      .BR strtol ().
    @@ man/man3/strtoul.3: .SH CAVEATS
     +.SS White space
     +These functions silently accept leading whitespace.
     +.SS isalnum(3)
    -+One should call
    ++To reject white space and/or a sign, call
     +.BR isalnum (3)
     +before
    -+.BR strtoul ()
    -+to reject white space and/or a sign.
    ++.BR strtoul ().
      .SH EXAMPLES
      See the example on the
      .BR strtol (3)
2:  020b468a3 =3D 2:  98af3aa6c man/man3/strtol.3: CAVEATS: Clarify how to =
perform range checks
--=20
2.47.2


--id4pvjlfqupym4rm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmff88gACgkQ64mZXMKQ
wqld1xAAjW0Nt37ROvTONJIMWl5gbKzLLtjJQygpQLfm4bDnApWtuch8R6mPOH3a
CWvjN5n7vW/HnBBOUNR/9wlg+zG3n4i6OO1DWh8yoSgvVg+Z/MGoupO+lApYxq9s
TazgxDJ9dCww/LpmUeymPgtX3kFoGBXm/Ld8CMEhoLMGJkvCd5lnjQ3lmBqOjxtc
kL1bmPmBMQnzaaEOW92UU4/L08bS5rlksJsate9OHxaJs0kXJbl2gegRv76vebG5
cVVqNf/Z3hEmlAPArL7YCLlKjwesGwzWRKN7j9fbas+7Ffz+sSTYoFayQgtgGnLU
Tek6JEOTqX27PsB7WH/Fa7KzDFuT6I9xFZl41Te8MFjSy09yuVbFaRWAP1Ytn9fy
E+dkSuITUYcWe6KF4+psofUaFaWa1LZVxAvSOlwP45Qmd9eBJxFJykdDp3TF4rQ1
spjbfmwJMYKEBH9eWbysVcMBfRzlWVpQcyJBzRFuQq5CkBdYidkO4fCy+WEBTUBF
0y1u8as8sXxjz1CDHTtgNYPkgrSGwGkVWRhkoreVPTpGwGmkZ34CRFIDqEehLS+m
BbYuR90vN2YLglXvhakhn5dxUcH0pGhIDXGvrSSH4lGTuZuIE/9l2tsFeabCQr2z
3RFskNWFO/YDtXFoE2QmXeh+hYBzVqnnb7oBXuWvCeQzgweMklM=
=HAKc
-----END PGP SIGNATURE-----

--id4pvjlfqupym4rm--

