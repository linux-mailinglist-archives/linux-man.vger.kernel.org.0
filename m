Return-Path: <linux-man+bounces-2969-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44168ABB066
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 15:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7ED53B74BB
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 13:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F72205AB9;
	Sun, 18 May 2025 13:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=stoeckmann.org header.i=tobias@stoeckmann.org header.b="0jQvZBtR"
X-Original-To: linux-man@vger.kernel.org
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C63621171B
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 13:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.126.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747575741; cv=none; b=f+emXFVGeQv7fLSL/tDSHVVRJmlA7iK3IclxDubOY2cfVsF3+3/M6X0MDIj0/beWJipo4e+Syn674/ngeTHP4Ep+j+jYASM+s5A+m9yNDuGeNqinG8G7AzP5AUr9DtxY/j1MnAY936fTW6fzukT+nluw6zsOu9SThI69FFPZCA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747575741; c=relaxed/simple;
	bh=Fc8vfSuIGjhqmInxOaZIMW16aLFZTS9xJBwlMyklDA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jC8MabStdH2/AodgNSuQoupv8ASqRbVqiLHz4XZK4yGdi85ROFnqQ1sh3puxhqvFcMNeG9dTr2/nRrrCmjtsJXxlxR5TunJiJSkCULLAYs5eYwneJwdHgKrk41wWbNvu97lK8xkb2CctaUL5EbKC4CXYVKoZq7Ou9HgMUcF1lK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stoeckmann.org; spf=pass smtp.mailfrom=stoeckmann.org; dkim=pass (2048-bit key) header.d=stoeckmann.org header.i=tobias@stoeckmann.org header.b=0jQvZBtR; arc=none smtp.client-ip=212.227.126.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=stoeckmann.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stoeckmann.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stoeckmann.org;
	s=s1-ionos; t=1747575722; x=1748180522; i=tobias@stoeckmann.org;
	bh=+ETaBhxf9x2vRnOtstk3YTM8TUg6P1PC5uz4XmM7MC8=;
	h=X-UI-Sender-Class:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=0jQvZBtRCTEONNxPLPuM/lGZJrDQ1HYKczuncc1C03fiNKYGpPU2w+dAc5KtePeW
	 stJukGEzyYx+ai+Op86kjuAVaskO2oEbiYl6DeQpyqLKGVzejM/3RwuUsZLoTJH7T
	 I4yHsm/7LijjqBAjE+XYhUkWtclgmw+rbm6C/XvN+x53P1PUcmB5fOC9ygrYipK27
	 MpnfXs6DlETaPkWjvyvOxXwQZkJhfr18XjPwRHoi5lKMI53MWCKAeXUjH8JOteTnj
	 WsO3kMDCz99ZP6GfyoOd+KYnwehuOU6E9sPvvrgumoPvYynDUHmM8OuXri3G33XGU
	 9us1fCgcehu9yp/Jig==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost ([93.225.58.209]) by mrelayeu.kundenserver.de
 (mreue012 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MjBNV-1uuxB90HQ5-00iAwf; Sun, 18 May 2025 15:42:02 +0200
Date: Sun, 18 May 2025 15:41:59 +0200
From: Tobias Stoeckmann <tobias@stoeckmann.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*printf.3: Add errors section
Message-ID: <34octlcodbwm3kfqlouvrvhriiftmlzzobbohgzivlkgi53nfs@7gxajeb56klz>
References: <vdno2j6via73xybrbtb23k2ptqejtdio2yqh7c4qijmtzhy4yt@gfp5j4bmsfe2>
 <tfyxxmci3xhe4a4vssgk576hy5c4xfm3dcfpsq4odi6pl5obds@jjti3wfzepld>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tfyxxmci3xhe4a4vssgk576hy5c4xfm3dcfpsq4odi6pl5obds@jjti3wfzepld>
X-Provags-ID: V03:K1:8zZ0LY9I8OOBGEFbFhNZFKIAfyhMlRDS0v+8/dCUuAztO783Tvs
 h6cqoSeVS6wiyaQeeROgt1GAyMPPv2rmfkc9y5cQAhXzdUdIytyf97/0xdioJYNlw/RmBHL
 FE3NahZCWyQOpiL5YDcGvdbIEUo1SyT1EJFqyBORiIkOgkr6U1CBl52/ls4i1zkOXjmpaRO
 CQ3wgOyIfQXIs4IkpHTdg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7qUCQ20P4A8=;osPExLV6PNVU5sYT8kDgU/FPXO6
 liFkAe3YD2ZM8b0frnj1L4b50i2DakOzuuNQnGfcEc/0TvalSaNjORfi+pcsxnJx5QBFEcbNo
 Baj9vG48FOi4nnSwl1QsON+RDsnynyYD4/HoqLtTTQD5bMZ5if2LWczNZxLS0bV1TQ2IkZuXe
 6UEgp4g4RJnx+ARIT/AqeaZ5a7nM5mC/VECOC3w7V3wjM64AR2xDEHvH4Zt4Qsn+9vcq3FBxx
 ooQ2WQp7XK8Lan6pTwM2HMfT44Ao1/omSwI4naVSmrZoRh5+2lQPxYI0CNEv56Sry/k+li9cr
 BeduLvNBbXed5cMIZqKqyh3a4OTW4Hr9PNYKoar6RPr3T2aKUUVifnCQjxgDFXeJWz8jZuJwP
 OnFUXPtWdhVYgg3IB0LLZpEGGtw4d5XaX0XA6Pn7HkiQBlvMaprTODSmGHqPxKxKNIuNfJ6j4
 I2DNzrE//hXKl1+R0XWFPhICAf35GT2iqghnnMKaPgu6ofKXwy7Jyd0MxC8zgDHxvsg74+tWv
 pMoyCEpaxCzvP1/yOSGl/aIriaLuK1OOjuto8ImLgu8z1aZnQu2992y1HnLciXgcrQp/GYNc1
 sUbxPkPlNpsj7FlCixF+6AJHJU6RDkDuD/i/2dG11SOoM9Xtk7nSf2Id+h8HNBjTML8Yhwv1e
 +YUhaKzVP+zax0ftFUaSZR4CvFQUDParM37yJTQG7O8/G57xzEJBsQdex0IkLeUOzqmQA4Pva
 WLi/O7MhjDAZMRE+SdEoAv4tzVWrTsEGAWLzuRl8ojBCHhJxlxWnt56vSCStL4CEN/j2kDyZH
 NT0giiGh+SBMxogTph9riG54BHtnVPsOeKRyb5B2s5ilfAmtPUlP/BYPDIJvqgewL4B2kQoCs
 xriFx6n3odDQ6H5LguyQm9pJo7fIlibStzQwfENcss2cdELqE0ZGKRFmvP26G9VQFMFI70uI9
 W6PZxdJqoXEcOFka/pSiR6E08SoJrGMQDHaOXbOiQdhKclILNIev56AyzXlCpzaVLdTMjSC4B
 wSmXtFFuz0lE1LfAIJHH2IRAlh449j4M/cgJHrV0wgliRTf1AWna6tiamwQGfK29M0YB8GX3g
 V1jSOZWViHCEsETdG7cN+40NfY/e6cHydLy34eqSmzxC6OWcyJW+bZW7gVFCUySWllFEATyqc
 ApMkTZm/Ungapy8IdJcmL3ARg3hKkpJKMlpzesasvakgP5PTJqUv4XneU/2+qwr08g12lWcDT
 cZ3ZQmNQlkA7D+pnheDZDnjzI3D52kIJZUIfXbznnxHP/t1uBxL8d0g2BTiVIAnNqxtABsYOj
 LHtpECpujZ7Lz4v/f3GrI3mxh5yoUzZhiuUVA301SAJmar/XsYXNIad2UMzvweNJbJ2ybk2eS
 Zw9FzdjkvdJjoDgHSoOUp8VZMZIC6djn0s9a8=
Content-Transfer-Encoding: quoted-printable

The printf family of functions set errno if a negative value is returned.

Souce is POSIX.1-2024, see
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/fprintf.html>
<https://pubs.opengroup.org/onlinepubs/9799919799/functions/fwprintf.html>

Also see manual pages of FreeBSD and OpenBSD.

Signed-off-by: Tobias Stoeckmann <tobias@stoeckmann.org>
=2D--
On Sun, May 18, 2025 at 10:15:54AM +0200, Alejandro Colomar wrote:
> So, how about this?
>=20
> 	ERRORS
> 		See sprintf(3) and malloc(3).

Adjusted.

> > +.B EILSEQ
> > +A wide-character code that does not correspond to a valid character
> > +has been detected.
>=20
> I think this is because of "as-if" putwc(3).  If so, I prefer deferring
> to it.
>=20
> Also, I see that POSIX documents this error, but why is that?  These
> APIs don't handle wide-characters, do they?

Shortened here and in wprintf.3 as well.

The EILSEQ can occur with %ls or %S modifier, e.g.

printf("%ls\n", "\xFF")

or any other invalid sequence.
=2D--
 man/man3/asprintf.3 |  7 ++++++-
 man/man3/printf.3   | 22 +++++++++++++++++++++-
 man/man3/wprintf.3  | 21 ++++++++++++++++++++-
 3 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/man/man3/asprintf.3 b/man/man3/asprintf.3
index 319382c3a..e175306f6 100644
=2D-- a/man/man3/asprintf.3
+++ b/man/man3/asprintf.3
@@ -38,9 +38,14 @@ When successful, these functions return the number of b=
ytes printed,
 just like
 .BR sprintf (3).
 If memory allocation wasn't possible, or some other error occurs,
-these functions will return \-1, and the contents of
+these functions will return \-1, set errno, and the contents of
 .I strp
 are undefined.
+.SH ERRORS
+See
+.BR sprintf (3)
+and
+.BR malloc (3).
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man/man3/printf.3 b/man/man3/printf.3
index b6e4f38b9..09737fd23 100644
=2D-- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -904,7 +904,27 @@ Thus, a return value of
 or more means that the output was truncated.
 (See also below under CAVEATS.)
 .P
-If an output error is encountered, a negative value is returned.
+If an output error is encountered, a negative value is returned and
+errno is set.
+.SH ERRORS
+See
+.BR write (2)
+and
+.BR putwc (3).
+In addition, the following error may occur:
+.TP 10
+.B EOVERFLOW
+The value to be returned is greater than
+.BR INT_MAX .
+.P
+The
+.BR dprintf ()
+function may fail additionally if:
+.TP
+.B EBADF
+The
+.IR fd
+argument is not a valid file descriptor.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man/man3/wprintf.3 b/man/man3/wprintf.3
index 59a6cfe07..583089e94 100644
=2D-- a/man/man3/wprintf.3
+++ b/man/man3/wprintf.3
@@ -198,7 +198,26 @@ case of the functions
 .BR swprintf ()
 and
 .BR vswprintf ().
-They return \-1 when an error occurs.
+They return \-1 when an error occurs and set errno.
+.SH ERRORS
+See
+.BR write (2)
+and
+.BR putwc (3).
+In addition, the following error may occur:
+.TP 10
+.B EOVERFLOW
+The value to be returned is greater than
+.BR INT_MAX .
+.P
+The
+.BR fwprintf ()
+and
+.BR wprintf ()
+functions may fail additionally if:
+.TP
+.B ENOMEM
+Insufficient storage space is available.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
=2D-=20
2.49.0

