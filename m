Return-Path: <linux-man+bounces-2845-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C571AA7028
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71B883B4E05
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 10:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 367E023C51E;
	Fri,  2 May 2025 10:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qK9KiU8f"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E850623C4FF
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 10:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746183416; cv=none; b=kuPupUsUvTI4mOocN5ByJUY7nESmQEzb4v3NyZDThJXN2eF77iYFE1vGhCb5aLSc4GLe4IM6R8hO/PVBlb96XAPwUC1PL52N0nbVTXdP6pgc+L97m83TCJVKYv14qPxcTNGZHpOnL57NmLVxmPGZKO+8563C4jRnyZh8JznX6JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746183416; c=relaxed/simple;
	bh=ZWgz5mE7G9gZdkzEv9kGcUAWTcdp1OzEVj3QUfYLZcM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ln6jEQHCcWx672wzAIL4ouXvN+Z9B/mu2xcJk4wkBzHS45ypfZMG3a6p2Jf6IGcX04kWwJtbVDDYlEhqaB8Aq7SMS6HDiw+cnOAwXrfcOFEjFEOEC2eZX/tffT1etQS2aPktLAf7wQNp7/C10CL0k5509hgK0LeWGsuaHihsQYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qK9KiU8f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9549BC4CEE4;
	Fri,  2 May 2025 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746183414;
	bh=ZWgz5mE7G9gZdkzEv9kGcUAWTcdp1OzEVj3QUfYLZcM=;
	h=Date:From:To:Cc:Subject:From;
	b=qK9KiU8fUn67ZOf5M+MUJ2kjCX4+yyBf3dtmrPJ1lvPrT5L/w5EwdeWCmAsG3GnfS
	 QGBSixAOuA1QIjbaO+bRVyU/qC7mxqQ4dQr6Gf/0rrLJZrtAEV9mE15IJPfy8LKizo
	 9uNFszqkp7fxk8qFmAKUoRHD6zK864yNbr38rKopdXDs/4aelMoZGCETo3BYGyCACN
	 hO1Qvra9xclbhU6r3y6AUC4f7AUhPtMJivJTUZ2dbSIHv6VcJ0I8VDv4h4OMsYZ5BB
	 f/qkgoP9Fwah/90pBwuqqW+zp5MljaxuSdL+1ui4JGliodIt0k0RBhL3ZFsXWQ848D
	 MD7YjW10BftUw==
Date: Fri, 2 May 2025 12:56:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org, groff@gnu.org
Cc: linux-man@vger.kernel.org
Subject: Paragraphs formatted differently depending on previous ones
Message-ID: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7cabtkz5x3rrskw3"
Content-Disposition: inline


--7cabtkz5x3rrskw3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: branden@debian.org, groff@gnu.org
Cc: linux-man@vger.kernel.org
Subject: Paragraphs formatted differently depending on previous ones
MIME-Version: 1.0

Hi Branden,

I'd like to understand why groff(1) formats differently a paragraph
depending on the previous ones.  I sometimes experience different
placement of spaces for an unchanged paragraph.  I use a script to diff
manual pages at different commits, which is useful to quickly see the
effects of a commit in a formatted page.  That script sometimes shows
suprious space changes (produced by groff(1)) for parts of the page that
haven't been changed, and which one would expect should not be formatted
differently.

Below is an example in what is now the latest commit in the Linux
man-pages repository.  The commit I'll be using for this example is
man-pages.git 5889aa978ddc (2025-05-02; "man/man2const/TIOCLINUX.2const:
Document CAP_SYS_ADMIN requirement for TIOCL_SETSEL modes").

	$ git log -1 -p --oneline 5889aa978ddc
	5889aa978 (HEAD -> master, korg/master, korg/HEAD, alx/main, alx/contrib, =
alx/HEAD, main, contrib) man/man2const/TIOCLINUX.2const: Document CAP_SYS_A=
DMIN requirement for TIOCL_SET>
	diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2con=
st
	index 61f1c596d..b98a0202b 100644
	--- a/man/man2const/TIOCLINUX.2const
	+++ b/man/man2const/TIOCLINUX.2const
	@@ -72,18 +72,30 @@ .SH DESCRIPTION
	 Select character-by-character.
	 The indicated screen characters are highlighted
	 and saved in a kernel buffer.
	+.IP
	+Since Linux 6.7, using this selection mode requires the
	+.B CAP_SYS_ADMIN
	+capability.
	 .TP
	 .B TIOCL_SELWORD
	 Select word-by-word,
	 expanding the selection outwards to align with word boundaries.
	 The indicated screen characters are highlighted
	 and saved in a kernel buffer.
	+.IP
	+Since Linux 6.7, using this selection mode requires the
	+.B CAP_SYS_ADMIN
	+capability.
	 .TP
	 .B TIOCL_SELLINE
	 Select line-by-line,
	 expanding the selection outwards to select full lines.
	 The indicated screen characters are highlighted
	 and saved in a kernel buffer.
	+.IP
	+Since Linux 6.7, using this selection mode requires the
	+.B CAP_SYS_ADMIN
	+capability.
	 .TP
	 .B TIOCL_SELPOINTER
	 Show the pointer at position
	@@ -118,11 +130,11 @@ .SH DESCRIPTION
	 this operation yields an
	 .B EINVAL
	 error.
	-.RE
	 .IP
	-Since Linux 6.7, using this subcode requires the
	+Since Linux 6.7, using this selection mode requires the
	 .B CAP_SYS_ADMIN
	 capability.
	+.RE
	 .TP
	 .BR subcode =3D TIOCL_PASTESEL
	 Paste selection.

Now, let's use the diffman-git(1) script.  You can get it by installing
it from source from the man-pages repo: `make && sudo make install`.
You can also run it directly from the repo: `./src/bin/diffman-git`.
Documentation is in the repo as a manual page in man1, of course.

$ diffman-git 5889aa978ddc
--- 5889aa978ddc^:man/man2const/TIOCLINUX.2const
+++ 5889aa978ddc:man/man2const/TIOCLINUX.2const
@@ -38,36 +38,46 @@
                    Select character=E2=80=90by=E2=80=90character.  The ind=
icated screen characters  are
                    highlighted and saved in a kernel buffer.
=20
+                   Since  Linux 6.7, using this selection mode requires th=
e CAP_SYS_AD=E2=80=90
+                   MIN capability.
+
             TIOCL_SELWORD
-                   Select  word=E2=80=90by=E2=80=90word, expanding the sel=
ection outwards to align with
-                   word boundaries.  The indicated screen  characters  are=
  highlighted
+                   Select word=E2=80=90by=E2=80=90word, expanding the sele=
ction outwards to align  with
+                   word  boundaries.   The  indicated screen characters ar=
e highlighted
                    and saved in a kernel buffer.
=20
+                   Since Linux 6.7, using this selection mode requires the=
  CAP_SYS_AD=E2=80=90
+                   MIN capability.
+
             TIOCL_SELLINE
                    Select line=E2=80=90by=E2=80=90line, expanding the sele=
ction outwards to select full
                    lines.  The indicated screen characters are highlighted=
 and saved in
                    a kernel buffer.
=20
+                   Since  Linux 6.7, using this selection mode requires th=
e CAP_SYS_AD=E2=80=90
+                   MIN capability.
+
             TIOCL_SELPOINTER
-                   Show  the  pointer  at  position  (xs, ys) or (xe, ye),=
 whichever is
+                   Show the pointer at position (xs, ys)  or  (xe,  ye),  =
whichever  is
                    later in text flow order.
=20
             TIOCL_SELCLEAR
-                   Remove the current selection highlight, if  any,  from =
 the  console
+                   Remove  the  current  selection  highlight, if any, fro=
m the console
                    holding the selection.
=20
                    This does not affect the stored selected text.
=20
             TIOCL_SELMOUSEREPORT
-                   Make  the terminal report (xs, ys) as the current mouse=
 location us=E2=80=90
-                   ing the xterm(1) mouse  tracking  protocol  (see  conso=
le_codes(4)).
-                   The  lower 4 bits of sel_mode (TIOCL_SELBUTTONMASK) ind=
icate the de=E2=80=90
+                   Make the terminal report (xs, ys) as the current mouse =
location  us=E2=80=90
+                   ing  the  xterm(1)  mouse  tracking protocol (see conso=
le_codes(4)).
+                   The lower 4 bits of sel_mode (TIOCL_SELBUTTONMASK) indi=
cate the  de=E2=80=90
                    sired button press and modifier key information for the=
 mouse event.
=20
-                   If mouse reporting is not enabled for the terminal,  th=
is  operation
+                   If  mouse  reporting is not enabled for the terminal, t=
his operation
                    yields an EINVAL error.
=20
-            Since Linux 6.7, using this subcode requires the CAP_SYS_ADMIN=
 capability.
+                   Since Linux 6.7, using this selection mode requires the=
  CAP_SYS_AD=E2=80=90
+                   MIN capability.
=20
      subcode=3DTIOCL_PASTESEL
             Paste selection.  The characters in the selection buffer are w=
ritten to fd.


There are several paragraphs which shouldn't report changes: every
paragraph that doesn't start with "Since Linux 6.7," should be
unchanged.

Is this a bug?  Is it a feature?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7cabtkz5x3rrskw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgUpO0ACgkQ64mZXMKQ
wqmVhRAAp0bht2Lfw/SoEyybHep/vcN/ueLCjuPmSkSzOXj0InNbodDyFpqMo03M
/TLRdXF0Kt9PjpQ+3qeniIE6I4S0DWwYKOqMk1MtlS8VM7n6mzPYn56z4gDo9Fh7
36qNBgg0cj42AB1XosRQlTXo/PN1APS9b0PZgv1zzwH0kTt0Oc5gETkO4advj+M2
70jlH5HgPdngOgFDR6Qp3mnPQiP/BSLUwbxGJI6TH8SypiPwg4Szq/pcDlEqK/N2
a/J1Bk27LF4WJmkdqPtRZ78C74S2AvMzG8ikW/uE95BsabX+t8qybjfABWMdsn05
CXWN/5gXWpTYHax8bK2JvWjs6OZs2NysuqY+NCfGdOg4uFwxETpZURvjVCzxApl5
Lp8xysvgIO9jU46YkoABcaTlwsqV9qA93cwgm32zUodAeQkNGybSk9DBq4HXRkPS
HgklYG6AEB3zhH9BF4Gh86WMuC+UzU2x8UOORUQM8aIoCj58CpuFWuiHJrwV+IYz
HLJp7a0yz92+FCxoG8cdw58SPr+h0NybmDoxM2BM7irGDKTuRjbKCROeah+hP1NJ
95DS4s5rHaIZhPvLBhNBZ9O9L3Q3KlES4u4Z+zS7TFOWDs9jjPoAu7tD0JvdIZVv
YwmjJBv0ipQC+bAYRsONnz8zMoltG2ZDSsaozzCukXbUeuokUgs=
=3UXN
-----END PGP SIGNATURE-----

--7cabtkz5x3rrskw3--

