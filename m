Return-Path: <linux-man+bounces-1433-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D5992C63D
	for <lists+linux-man@lfdr.de>; Wed, 10 Jul 2024 00:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB2F5B22145
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 22:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D70185619;
	Tue,  9 Jul 2024 22:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcmkdSoP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906A51B86D6
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 22:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720564173; cv=none; b=vDZ/yPwAfjTvQVV1zgqCj4+l8wu5mMfZo/Y75zEgHhY+LXnuCKAg0Zmywu/wEFkS4BoMnkSCTLYCG/09+OLZzb2w+5mF4Qu8wDJKHPGZSdtTCNyqt5e9ZFXpEcKV0D0H6RX8TAhC4/id6JrzyMdLZ99txseRqQ14sUK6rcHbbLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720564173; c=relaxed/simple;
	bh=WMXhzqNEyk5Wqh2rkMxzKC/T2+0qiGzJOVOWQAJ/JkA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F7EDknBLvAfYTUWXsbVstFE1Jt1rxFhg+6IIeI0u42rY68+sNUT+g3fLjWLMc9wKgfFUYcwC4r9JjWt3DBLvpZG5p1h0/da09nMkhDhpGldx33HPcsywptMCn3JlSyv9kwk3CBlrVvRNZVCp4kOtvsqBEIY/L5ZtOQD+PKL/DDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcmkdSoP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44D46C3277B;
	Tue,  9 Jul 2024 22:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720564173;
	bh=WMXhzqNEyk5Wqh2rkMxzKC/T2+0qiGzJOVOWQAJ/JkA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kcmkdSoPhUerRuR59NWPAsU1waGv/m1LlFOX53e28kMn/7o1Cm2flZlVfzjmdFTs7
	 4FqkNY0EwC3/4kt5nzN2FfpI2wQPxmFmghBdJyd4u6xD9dBsiVRW0a5x8OzhyQv7uE
	 F7ktfXu0LFn5DFnjR+Gsb/fIxpMP1NhbPIZ+//E4vYyk/JMR/+f3de1gY530Il98qB
	 3btsF/gAsI1DrJQnCgqOS9vLtcZIfDUoFtZ2NMjYrfLqhXMurnYAHwd3IVW3Iy3kl6
	 aYBSVFfmoMH/8r4Eh7mIQmpIGLT3eed7V0GrG9PccTrLJ8THfod5WKBK2gmLugRDr7
	 PxokJp1VIxg/g==
Date: Wed, 10 Jul 2024 00:29:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: [PATCH v2] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <ggndpec5u4bkhys4h6yizyarlzmajea4jbgja3svjkwyoi3w3z@axyouw5u3bj5>
References: <z3bixugjnrhlcli53tmdogma7op7uwstwlitgl7u4mmyqfs3pc@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lhbgevym6ejia5uq"
Content-Disposition: inline
In-Reply-To: <z3bixugjnrhlcli53tmdogma7op7uwstwlitgl7u4mmyqfs3pc@tarta.nabijaczleweli.xyz>


--lhbgevym6ejia5uq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: [PATCH v2] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
References: <z3bixugjnrhlcli53tmdogma7op7uwstwlitgl7u4mmyqfs3pc@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <z3bixugjnrhlcli53tmdogma7op7uwstwlitgl7u4mmyqfs3pc@tarta.nabijaczleweli.xyz>

Hi!

On Tue, Jul 09, 2024 at 10:57:54PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---

I've applied the patch, with some tweak:

diff --git i/man/man2/sigaction.2 w/man/man2/sigaction.2
index 168c15c2f..d3da0ec08 100644
--- i/man/man2/sigaction.2
+++ w/man/man2/sigaction.2
@@ -645,8 +645,10 @@ .SS The si_code field
 .BR sigqueue (3).
 .TP
 .B SI_TIMER
-POSIX or
-.BR setitimer (2)/ alarm (2)
+POSIX, or
+.BR setitimer (2)
+or
+.BR alarm (2)
 timer expired.
 .TP
 .BR SI_MESGQ " (since Linux 2.6.6)"


This allows a future change to use groff-1.23.0's MR macro.  That change
will happen imminently, depending on when Branden finds some to send the
patch.  :-)

Have a lovely night,
Alex

P.S.:  Branden, I also remember of having asked you to send another
       patch for something else, but forgot what it was.  Maybe you
       keep track of that?  If not, I can investigate my mailbox.

>  man/man2/sigaction.2 | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> index ce5ad75..168c15c 100644
> --- a/man/man2/sigaction.2
> +++ b/man/man2/sigaction.2
> @@ -645,7 +645,9 @@ .SS The si_code field
>  .BR sigqueue (3).
>  .TP
>  .B SI_TIMER
> -POSIX timer expired.
> +POSIX or
> +.BR setitimer (2)/ alarm (2)
> +timer expired.
>  .TP
>  .BR SI_MESGQ " (since Linux 2.6.6)"
>  POSIX message queue state changed; see
> @@ -1099,6 +1101,13 @@ .SH NOTES
>  .BR signal\-safety (7)
>  for a list of the async-signal-safe functions that can be
>  safely called inside from inside a signal handler.
> +.P
> +POSIX only guarantees
> +.B SI_TIMER
> +for signals created by
> +.IR timer_create (2).
> +Implementations are free to also provide it for other types of timers.
> +The Linux behaviour matches NetBSD.
>  .\"
>  .SS Undocumented
>  Before the introduction of
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>

--lhbgevym6ejia5uq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaNuckACgkQnowa+77/
2zJE8w//eX3TQdj3f7Lkw/itUP+v+FKm6QIT5o4Ax860t4mbRcV55OXwKl9HezDA
3nECjCmb2fzt5fWQ/GxgugKM514Gdk5zlBOPAJUQxY2O4j7AItCU4yR4F21RMhXQ
oimfsDSuwQoqAraWoLojh5VMJYi57lo3pGr8KDfFTdxoU4gwku9Ve3AyHGL4erHo
EyyVg5Zg2/w1KUjb93vyLkNXOIpJ4kBnzp1QS0wXTcJUr2di8+aUlwM/VZLRfkbT
fZpCdeRC74jpQd7uKUgWLV0BT7eJ2Jcxgeb2JZjCY8hEGFnSHHJiRnc2WNmZLArk
2Hd39JfKnQk3C1ct/I1qFM0ZeAiWRg+wHazKMP9EH6fgq87CB9clX75SYz8W9Wdu
+VZoz8n0PJ8W6D4pt/CLcZKbZ551YkVWFZvCDAcvlaNrzKJvELJ9mv2uJ8+rgUpG
LsmYtmat+DUNOp4LNe2n8irzoeF0VEdzAAK1WwhNt7OwBaxL1zRBuEfmxXNInMX5
P8YMjLZWYIlAy9xGHvhNYhioq2v03mUPBgfHscSlkpauBfR+/E0yrAGH9TDcvmrQ
kxCjvSOLPSNZNjZq3pZvxp8+IPuHBFwGgHr0/6ForFFVFxuD2Zai8+TfxUMX7jbn
kGQYMVNoaUl58G8dJ/IOswJULJpAuPvBaaWz1yBXIL8fHI/x17A=
=a0Ku
-----END PGP SIGNATURE-----

--lhbgevym6ejia5uq--

