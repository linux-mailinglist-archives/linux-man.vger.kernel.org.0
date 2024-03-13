Return-Path: <linux-man+bounces-577-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B92F587A845
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB6431C20BC6
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 13:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7457B40872;
	Wed, 13 Mar 2024 13:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb0Mnq9X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331CC40860
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 13:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710336361; cv=none; b=ReR3BZdbapLA5xcHoA7ENChu3xaAmw894DU76hAlFw6HqfLn6RSUX0pbWnQ+VeOjqnmcPsyknvF2cSNIJQmztj3vgHP9TnJpVOGCt2dpZTUDwgSojBVgSExvky8dShsCq6N9FRxJNDuwHyX7ensw/1rHWWRgrylnb/fQ9IJnpbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710336361; c=relaxed/simple;
	bh=02cfnKxVKFLAovuX3CdoYqcTYjNH/8KGIPcsgK7vTEc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rAVDFEkLOAURHbEUWJZPdPJtrPySFdW5uzj8tusr+2EYv5H/iU/91GE/wJaNlu/t7OZ+PEr6dBrAi0cR85bKxr3K6e9mVVz3lN87FNKU+pnBtCBX7rBHNUa6k+HcoBTPe1rr3B3/3bpAPqc8ddFsIidhiLykTr+BVqTb4XImNT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb0Mnq9X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E856BC433C7;
	Wed, 13 Mar 2024 13:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710336360;
	bh=02cfnKxVKFLAovuX3CdoYqcTYjNH/8KGIPcsgK7vTEc=;
	h=Date:From:To:Cc:Subject:From;
	b=Tb0Mnq9XwYLp/RNLw02+Az+qXE24wERKUdxi3slrAXYSDrDHzvB/n2h+IZaopdkRx
	 n5+Vwderg+UjxsLaSNf0k3a7nUh6sGOcZyFjTtfRVNlLlAe9EoP7p3NErrD8zORbfu
	 ke9up62F6nc04OitizoL4i2oysXh6zmkK6YoecK4pAoE7iQBJ+zNp5bkmfxiucq+3E
	 Ayy0kZQmmCgNh8IGP22QJk67j9mjsz8NzZR44kderWOmPai/uWqhAPWszw8Bo9jzhy
	 dW+iF4PjOTzx9oa4L2Tk2Sg0knzb9tdJ8jnkgDpY2PtKwifHFc7JxhbIU1GEXliaAa
	 p/qqCCegF+0XA==
Date: Wed, 13 Mar 2024 14:25:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Unable to generate glyphs for chinese letters
Message-ID: <ZfGpZTxUo4EelRlK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uZcJcBfogtcTAVTD"
Content-Disposition: inline


--uZcJcBfogtcTAVTD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Mar 2024 14:25:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Unable to generate glyphs for chinese letters

Hi Deri,

I've noticed another similar issue, this time with Chinese.

I see chinese letters in the bookmarks, but they don't appear in the
PDF body.  If I read the manual page in the terminal, I do see them.
When generating the PDF, I get a bunch of warnings about special
characters not defined.


See the page head(1):

	$ MANWIDTH=3D64 man ./man/zh_CN/man1/chage.1 | head -n4
	CHAGE(1)                 User Commands                CHAGE(1)

	=E5=90=8D=E7=A7=B0
	     chage - =E6=9B=B4=E6=94=B9=E7=94=A8=E6=88=B7=E5=AF=86=E7=A0=81=E8=BF=
=87=E6=9C=9F=E4=BF=A1=E6=81=AF

And here's how I generated the pages:

$ pwd
/home/alx/src/linux/man-pages/man-pages/shadow
$ MANDIR=3D~/src/shadow/shadow/build/man
$ pdfdir=3D.tmp
$ GROFFBINDIR=3D/opt/local/gnu/groff/deri-gropdf-ng/bin
$ PRECONV=3D$GROFFBINDIR/preconv
$ PIC=3D$GROFFBINDIR/pic
$ TBL=3D$GROFFBINDIR/tbl
$ EQN=3D$GROFFBINDIR/eqn
$ TROFF=3D$GROFFBINDIR/troff
$ GROPDF=3D$GROFFBINDIR/gropdf
$ make_book()
> {
> make build-book PRECONV=3D$PRECONV PIC=3D$PIC TBL=3D$TBL EQN=3D$EQN TROFF=
=3D$TROFF GROPDF=3D$GROPDF "$@";
> }
$ make_book_lang()
> {
> _LMB=3D$pdfdir/shadow-HEAD_$1.pdf; make_book MANDIR=3D$MANDIR/$1 _LMB=3D$=
_LMB;
> }
$ make_book MANDIR=3D$MANDIR _LMB=3D$pdfdir/shadow-HEAD.pdf
MKDIR		.tmp/
Build		.tmp/shadow-HEAD.pdf
$ make_book_lang da
Build		.tmp/shadow-HEAD_da.pdf
$ make_book_lang de
Build		.tmp/shadow-HEAD_de.pdf
/opt/local/gnu/groff/deri-gropdf-ng/bin/troff:newusers.8:44: warning [p 1, =
2.8i]: cannot break line
$ make_book_lang fr
Build		.tmp/shadow-HEAD_fr.pdf
$ make_book_lang it
Build		.tmp/shadow-HEAD_it.pdf
$ make_book_lang pl
Build		.tmp/shadow-HEAD_pl.pdf
$ make_book_lang ru
Build		.tmp/shadow-HEAD_ru.pdf
/opt/local/gnu/groff/deri-gropdf-ng/bin/gropdf:chage.1: warning:=20
Font 'Tinos (TINOR)' has 2639 glyphs
You would see a noticeable speedup if you install the perl module Inline::C

$ make_book_lang sv
Build		.tmp/shadow-HEAD_sv.pdf
$ make_book_lang uk
Build		.tmp/shadow-HEAD_uk.pdf
/opt/local/gnu/groff/deri-gropdf-ng/bin/gropdf:chage.1: warning:=20
Font 'Tinos (TINOR)' has 2639 glyphs
You would see a noticeable speedup if you install the perl module Inline::C

$ make_book_lang zh_CN
Build		.tmp/shadow-HEAD_zh_CN.pdf
/opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:33: warning: special =
character 'u540D' not defined
/opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:33: warning: special =
character 'u79F0' not defined
/opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:34: warning: special =
character 'u66F4' not defined
/opt/local/gnu/groff/deri-gropdf-ng/bin/troff:chage.1:34: warning: special =
character 'u6539' not defined

[ And a bunch of similar warnings... ]


Cheers,
Alex
--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--uZcJcBfogtcTAVTD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXxqV8ACgkQnowa+77/
2zLgTA/8DMYNNls4zeuVf2xt9noLAuCibxt1f5DGIBcmt7iFAZE4OfeOh8vfYohb
ez5t07JsYVGD6LITw8BHK2nO/WpRXLGxXmc9l8LsKpYGad+wk4N1DOH2GC0ss6Jl
ZSEO5Amy3nd3gvqypgvQSCEvqWX2jPz6CjSxRi5b7Ge4EHjKGWxjpJlLqQPiRE0H
DO0fbQrWYwlE5PE0MtPLFb650pFOU/S0fQ7kelW9hL3IIY45hJ/lyHrbdlsCnhhp
69ZMHfFp2HCm/FIKz84iMy2Gc/366+R1nXUlJCkfA4mY7AMyixTbvTAA0BfVh/5Z
57jv5AQOpU9VrF6ecvnzv0JF1ywKjvxTuGBXP7JY3y3G32++kLnOUtxozVmaJSEB
iWUeNB4v/iywVR1CTl6pGqC97eM5CYB3WBkWoBbeC/uRcvJ7nYhX+4khaXVeVShc
NarzimE4BM3Zx7b6U4cxWbIkxH1v36VuDc6Twm+w8RotBB+hqwqlEvFhCgB1DYNI
CK4cv0sMq0xRc6nPR87zuAcIvmEaP6ubKfCWK4OIC8XSax/k93tZKwxGWD2hlmbM
MjXL6Bzorq5WsdxkJs9slokpl2yIaAHK580JQ/OVm6I45DroG7C8TvegTLVjNsWg
PjY9vXGnClqKzWvhBJACswtFF++sL2Hyk5iTr7Q0xXU9hL16tzI=
=Pp9v
-----END PGP SIGNATURE-----

--uZcJcBfogtcTAVTD--

