Return-Path: <linux-man+bounces-2625-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C0BA6C5CA
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 23:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B137F16174F
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 22:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F3E1E493C;
	Fri, 21 Mar 2025 22:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SACIX4Uj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBFD1EE7D8
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742595497; cv=none; b=kx4o37NDxzJRW9NlXSFDg5xocSSlAtgkC43fXOYYRQh9qEh4rs7eDalDiYfbtHPsUyGrMjn0ihf8I6CauoZ+4g2ymqOGyhYC/hzfeN8oIKPahJCP0qfQX5csLSplUFfgJhPCHvZwkNE5aM4Z70f6v3KX/hpG6lFab6cg+JbVVsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742595497; c=relaxed/simple;
	bh=edPlsSjWVhGnsFAceaK7HmdZ/BK2WHjDnjI09FmNQtc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FIGRhtN4pd7ebn0n7xS3GKCpic2vsulzN0QZoOUj5eiOnpiguIdAoBstivp0nyOzMEzQ9tjkDKMh0r1JrFOWWnxNsQRhG7Xq1iSVKCg06SVB9Oo7/MdE7mTPSf1xHAhWnjvMY7HHZQepMAkEJWYCNr4kahSvWRpjn2hfBh2KOgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SACIX4Uj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51ED2C4CEEC;
	Fri, 21 Mar 2025 22:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742595496;
	bh=edPlsSjWVhGnsFAceaK7HmdZ/BK2WHjDnjI09FmNQtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SACIX4UjoJSvZMLyQYAcNY+d6TphNDeWcTrzlP98jhaohKY7JwUwPc14n5/dm0zL9
	 v8xSqkYvc//7DihyJj7QO9k30DNYd6014Wx4QMFRVyiS2qq1TWgJDnHnwlriEvVbCU
	 npTt3hT07P3sR5Sp31JAgrXvkjQaC4QzTYykl3JIo+M9ox4UwfYt1y1man9oIz/eUL
	 TmJkfwCH+gHFIMEyybYk3gHjs0+160H9tZo9NY7ZqUVY+ziOp7+U2qUPWfGqQw5hrk
	 61xwlslW7PyY8IfsfjqQ+Ds7Y1IWya3TDn3MOwVOpPfJMhuvy2uLB0xkzeIl4hZunu
	 9q7NVh2TGRYkg==
Date: Fri, 21 Mar 2025 23:18:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 0/2] strto[u]l(3) BUGS and CAVEATS
Message-ID: <cover.1742595341.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e5cb23dzr7t5sdaj"
Content-Disposition: inline
In-Reply-To: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>


--e5cb23dzr7t5sdaj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v2 0/2] strto[u]l(3) BUGS and CAVEATS
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>

Hi Bruno,

This time, I've added a mention to white space.  I've decided to put
both bugs in the same commit.

And I've added a commit clarifying how to do range checks correctly.


Have a lovely night!
Alex

Alejandro Colomar (2):
  man/man3/strto[u]l.3: BUGS: Signed numbers and white space are not
    rejected
  man/man3/strtol.3: CAVEATS: Clarify how to perform range checks

 man/man3/strtol.3  | 20 ++++++++++++++++++++
 man/man3/strtoul.3 | 19 ++++++++++++++-----
 2 files changed, 34 insertions(+), 5 deletions(-)

Range-diff against v1:
1:  939641570 ! 1:  8faa6a809 man/man3/strtoul.3: BUGS: Signed numbers are =
not rejected
    @@ Metadata
     Author: Alejandro Colomar <alx@kernel.org>
    =20
      ## Commit message ##
    -    man/man3/strtoul.3: BUGS: Signed numbers are not rejected
    +    man/man3/strto[u]l.3: BUGS: Signed numbers and white space are not=
 rejected
    =20
         Reported-by: Bruno Haible <bruno@clisp.org>
         Signed-off-by: Alejandro Colomar <alx@kernel.org>
    =20
    + ## man/man3/strtol.3 ##
    +@@ man/man3/strtol.3: .SH CAVEATS
    +     goto unsupported_base;
    + .EE
    + .in
    ++.SH BUGS
    ++.SS White space
    ++These functions silently accept leading white space.
    ++One should call
    ++.BR isspace (3)
    ++before
    ++.BR strtol ()
    ++to reject white space.
    + .SH EXAMPLES
    + The program shown below demonstrates the use of
    + .BR strtol ().
    +
      ## man/man3/strtoul.3 ##
     @@ man/man3/strtoul.3: .SH CAVEATS
      and then determine if an error occurred by checking whether
    @@ man/man3/strtoul.3: .SH CAVEATS
     -Negative values are considered valid input and are
     -silently converted to the equivalent
     -.I "unsigned long"
    +-value.
     +.SH BUGS
     +.SS Signed numbers
     +Negative values
     +are considered valid input and
    -+are silently converted to the equivalent
    -+.I unsigned long
    - value.
    -+.P
    -+Users should reject signed numbers
    -+with a wrapper function.
    -+.IP
    -+.EX
    -+unsigned long
    -+strtoul_u(const char *restrict s, char **restrict endp, int base)
    -+{
    -+	while (isspace((unsigned char) *s))
    -+		s++;
    -+	if (!isxdigit((unsigned char) *s))
    -+		return 0;
    -+\&
    -+	return strtoul(s, endp, base);
    -+}
    -+.EE
    ++are silently converted to
    ++.IR "\%unsigned\ long" .
    ++.SS White space
    ++These functions silently accept leading whitespace.
    ++.SS isxdigit(3)
    ++One should call
    ++.BR isxdigit (3)
    ++before
    ++.BR strtoul ()
    ++to reject white space and/or a sign.
      .SH EXAMPLES
      See the example on the
      .BR strtol (3)
-:  --------- > 2:  b5244e62c man/man3/strtol.3: CAVEATS: Clarify how to pe=
rform range checks

base-commit: e921861a3d30cfc5f9263747a4e64a68e488288c
--=20
2.47.2


--e5cb23dzr7t5sdaj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfd5aUACgkQ64mZXMKQ
wqktRw//dDJokPyqHcBq3XZlns49FibMfDTqWA2N7FNZgUTm5Zq5ZZOWErdyteiP
BVyr/2Ge9LSHtvbUbhaX7I/fdvLrKiboFZLynt0/amf+fmQhIoQLLqiDWPPuHAet
5anfwVoTDyhoQA5sK+SkMmMUi3K5Ceq6EwyQlPfiJaD4a4jyM/fWNIz/LJazIVYc
YBIlGcxLTz58e30JP7OfbapWls/A3ZEPROhplVvi3OcOjuiN29aYvh5vf137ovKQ
Wt165Pco9AN9WD7pFMtltCSgYiRcaNss6hCxDElgDQKofcQsIfeEjh/z+/Kerseo
IrN2kpKD700Hs/ILncI0USSUZdS1BjdqaINkjG5k4XuI4GyizjcOrhzxD1+Mtwfk
6hC/ZRYYKBblNIo3UjpVpbkWcU33x7MM5BtrHoluCuDVwIEc4VpcR2FFyOBIggcZ
zaJae2Iq7YQK7gMx71+5fcbJSJ+nFTbsirva08KU58WMHqF46Tr0GMPZBrshZJAj
0tJH25wJyeNSdsO3iI57BxxQiC29eJuAALmnZpb6ARS9B0BfSCH9PciX9761ZgR/
dzMy23hSbRMyl1wwIDd+kSrurSWqqAEExh6RAonchGbuvjH92W+yVnjrnRSY7jPh
cnihH5R2gopUeNp4bWMHM2BXv6NjExdaHWbVcf83HCz/YSv0M94=
=uhG/
-----END PGP SIGNATURE-----

--e5cb23dzr7t5sdaj--

