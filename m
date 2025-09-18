Return-Path: <linux-man+bounces-3876-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F30C8B85F34
	for <lists+linux-man@lfdr.de>; Thu, 18 Sep 2025 18:20:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AAC724A5C36
	for <lists+linux-man@lfdr.de>; Thu, 18 Sep 2025 16:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6C630EF86;
	Thu, 18 Sep 2025 16:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6PEzXiz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C14C212566
	for <linux-man@vger.kernel.org>; Thu, 18 Sep 2025 16:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758212426; cv=none; b=myteNfoHAYSHSmvibJ7cJ4vAeTlpA3+m1Hk5JsAqrDP0HazUCu1bJyLZqM3QRYjzb3KU6T4yUOVEJRLr6rDIKGsVapKCuGXyQbcIWwUwvX7cfnt575I6jQCcyQ4ic0ZDlkGpS60dOjLZNyUyHBDWZalxtkebuYW404wUxQVNS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758212426; c=relaxed/simple;
	bh=sMzsQ0he69WATUe4gCxOhaz6mevDnPvL5Cf979YLeu8=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=as0ki+5qK0Zl3RfGefLGFOd2HGipgZUFtoX3zpHTtEtgWeZ0Bm2zB+edWFe0uyxldLCxl+m98Hg3HYKlOExi/IedLtqO899J9Frr3cBg8sF8h0XBAUGao/fS3/uoMVipfpq1ZzUSZGfOF/en6eeFPep3tJPifE5KhMvN7JlGUoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6PEzXiz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AF7CC116D0
	for <linux-man@vger.kernel.org>; Thu, 18 Sep 2025 16:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758212425;
	bh=sMzsQ0he69WATUe4gCxOhaz6mevDnPvL5Cf979YLeu8=;
	h=Date:From:To:Subject:From;
	b=R6PEzXizU9kPL2mruqG5TdOjmUpZUAZnnCpEcZJIzOAIIhIxqheQwDQb3bNglFjos
	 4WAG0lIAv3I0CxX54lY1jJ15NVp350/8zcJpy1I1vE6eIZJesZehjkcyovhyvW2WBj
	 sQZjoW6j28FIBR+3ZEUdzW+6QBPEjz2m66DsZB1XIOm4z4W0tEpsMKvnjnsIUU7QXC
	 6rZ0ksr2+/beN5Fb6uvDvnA/iyfLSEWbO4+QB0XgcLt2/NzMdQS1JL7qY1LmUBJrYF
	 e0OQzcipYMvR4cQl9My8NNe6Oe6mq+rsUiB1WVNtaWLXykQ/eBNZPbIUdd1bnb6L3R
	 BOiPXBWISHb5w==
Date: Thu, 18 Sep 2025 18:20:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: New streq(3) and memeq(3) manual pages
Message-ID: <cuxmb5x5qfc5f5sx2k5ox6qamiakmhngap26u2c3do37tmet6y@juvzxx57hlcb>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4oc6rqn4knkx2xlo"
Content-Disposition: inline


--4oc6rqn4knkx2xlo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: New streq(3) and memeq(3) manual pages
Message-ID: <cuxmb5x5qfc5f5sx2k5ox6qamiakmhngap26u2c3do37tmet6y@juvzxx57hlcb>
MIME-Version: 1.0

Hi!

I've written these two new manual pages to document these functions
recently implemented in gnulib.  The LIBRARY section documents them as
being available only in gnulib.  This gives these two APIs some more
visibility, and hopefully other libc implementations will follow gnulib
(such as glibc).

Here's how these pages look like:

	streq(3)            Library Functions Manual           streq(3)

	NAME
	     streq - determine whether two strings are equal

	LIBRARY
	     gnulib - The GNU Portability Library

	SYNOPSIS
	     #include <string.h>

	     bool streq(const char *s1, const char *s2);

	DESCRIPTION
	     The streq() function determines whether the strings s1 and
	     s2 are equal.

	RETURN VALUE
	     The  streq()  function  returns  true  if  and only if the
	     strings s1 and s2 are equal.

	ATTRIBUTES
	     For an explanation of the terms used in this section,  see
	     attributes(7).
	     =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=90
	     =E2=94=82 Interface                    =E2=94=82 Attribute     =E2=94=
=82 Value   =E2=94=82
	     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=A4
	     =E2=94=82 streq()                      =E2=94=82 Thread safety =E2=94=
=82 MT=E2=80=90Safe =E2=94=82
	     =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98

	STANDARDS
	     GNU.

	HISTORY
	     gnulib 202601.

	SEE ALSO
	     memeq(3), strcmp(3), string(3)

	Linux man=E2=80=90pages 6.15=E2=80=9079... 2025=E2=80=9009=E2=80=9018     =
             streq(3)

---

	memeq(3)            Library Functions Manual           memeq(3)

	NAME
	     streq - determine whether two memory areas are equal

	LIBRARY
	     gnulib - The GNU Portability Library

	SYNOPSIS
	     #include <string.h>

	     bool memeq(const void *m1, const void *m2, size_t n);

	DESCRIPTION
	     The  memeq() function determines whether the first n bytes
	     of the memory areas pointed to by m1 and m2 are equal.

	RETURN VALUE
	     The memeq() function returns true if and only if the first
	     n bytes of the memory areas pointed to by m1  and  m2  are
	     equal.

	ATTRIBUTES
	     For  an explanation of the terms used in this section, see
	     attributes(7).
	     =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=AC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=90
	     =E2=94=82 Interface                    =E2=94=82 Attribute     =E2=94=
=82 Value   =E2=94=82
	     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=BC=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=A4
	     =E2=94=82 memeq()                      =E2=94=82 Thread safety =E2=94=
=82 MT=E2=80=90Safe =E2=94=82
	     =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98

	STANDARDS
	     GNU.

	HISTORY
	     gnulib 202601.

	SEE ALSO
	     streq(3), memcmp(3), string(3)

	Linux man=E2=80=90pages 6.15=E2=80=9079... 2025=E2=80=9009=E2=80=9018     =
             memeq(3)



Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--4oc6rqn4knkx2xlo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjMMUYACgkQ64mZXMKQ
wqnvSQ/+L8/VPl6o7KjhhddDm4rmiRPhX8wYwVlPUZ59YYtnND18oEgtVPygpE6y
nUwEeHDb7rO1mV6GzRLoGG+nbutN3A9Fd/9VqWFHSlNFcLfrvx9+Jqw4eUwFfAXo
7SyamMl78JdvnIPy+PgCmubRyp9LCGxbH3vm9Po0NUn4W+XHSeit9bwSMSGns7OB
RHxQKOYVlBEh4+GnQIhqx22H3IkieHO9a/b8y5ODfDyr0coNk9hikPdaDBCySpaY
KUSnMMFAX2sCokRVPP5GmK+QijUMPbZtXkRVhSMKNSkw1wR3YNxjNeq08s//ZRO/
AZJLYgU0Gdufb7i9Asj7yjSIIq4ZLWYwGNLFIVhEjBb8yYb6WRdYzJeu6+0dOdqP
hGg6EstiAat4i/LRFab8pxKr8vR7ItjGwbcr8KU0ati5XWt44MK3BY3qq3G4lmp7
poihnW51ppuq6+YB6gwzMPDF4ikfwwlMYLrGuYkmZewynh/srBXPW68joqz9M6R7
STzLrrlVGiaV5YbEAPp6JW1c1JH9guz0rTCk+QBoKyD4XwmAQXWjxzp/EFnK6J62
Te9jtsjzykzdbnXA5M5vDYDHC7PCPhjvg6d1i+k/KG6BsWyeImlZ9RdYlCuh8tZT
IZ8xqm03xAGRWWQ3uN8I8byCWoVYgT6hf5KUdO9oNvqH6+QWsbA=
=Wzb4
-----END PGP SIGNATURE-----

--4oc6rqn4knkx2xlo--

