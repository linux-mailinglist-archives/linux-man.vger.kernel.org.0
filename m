Return-Path: <linux-man+bounces-1733-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C0B9672F4
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB6921F224D1
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 18:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9384B13B2B8;
	Sat, 31 Aug 2024 18:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PXXjst8M"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDFE23774
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 18:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725128432; cv=none; b=hYtcXWfbL440WuJnIKciHfBksrgVU4nyv7LjaQ56glyjQJx9G1N3Gpzvjv1YdScCjwmL3uDHXqad+HbSwkRvUtUdHDE9+Dvm0qUdEbB4wIO1a+mV+kuGuZnp4oFG95m49cwD3vVBdQbJcKbtcVKUJ+xPJcrydxmHX+SlcAHH3PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725128432; c=relaxed/simple;
	bh=zCjMWqQUcnI/SWygJunnz3G1rpTj1Y0iIAYLTXqOKp0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=kn3y3AQBSx1PVwFBc+e9wPYl9QaaPFYs7HGkPJUGE7g4UnP+IE1xkmDuzaOK2lNamUQ8yUKKVdj92LeyuTdNuQtyz+rSSGjUM2RC4N1FVIIzeG+JugFeKK7t9Ywu3aBcN1njN3qqDR1CLjvvVf7yKMROmim74FQEXqvYGR9BHsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PXXjst8M; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2700d796019so1507408fac.2
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 11:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725128430; x=1725733230; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dXTtyL28nu6ShHcj7LKLE26GMylM1ohuW0S0WSBU/cc=;
        b=PXXjst8MKbGFluspxEzMB9+YalMQil9F08gNuKVuCYrq/Nhoul+J5Owhnl7usNiGtm
         dDYeOXeCIgXaIfK8hSXcRcml57SrIutRqPgCpGykVIB02vrVMVexcRKfnWj8MgBDLQ/A
         KNym3QS3vNKAMWNhDmLUPsqiMhBHKNvOiHMFfFHhxK6ioFYqS0dlmCutDeNe3Xe3N78g
         8aHHEapx0F0hIJXTwwiReG3AarCldYyYulGCUJgOOY/iw+C9r3OA6dLijC2Qe2gFpWHW
         w60neFGRcZauxA4QPw/7b8o3NGDx9Cx20xLSusXF2DnQhq/dPMwmvNtzfKG57LacL84s
         u9Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725128430; x=1725733230;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dXTtyL28nu6ShHcj7LKLE26GMylM1ohuW0S0WSBU/cc=;
        b=tpT7Ks53GL7gTd4yvppmc4gxFp5JuHINJxP4yIatGsHzZLh41vYUB6wsNBrzVj6XIk
         hzXpxGbi30/vNt7uOmDSTKyH458H8qVdlC/ya1JS59A2Dey3NvHNfu4yaZHqWOx60Nou
         A/KyJ51+9kpeyL4c6JnQuCMjfqO21Q0uRxrU9wE5p+Nja0x4i7k3EzBN9MUq7EaCIn68
         TZFUOqRsLWbqUvRJDc3LlTRJUk19oZEu5PYroHxpej70ecHRW0MMRdZPmaFDcvujrOe/
         GkEKe+8KMrXfoeYSyoa0ruepamMIrNjzbMhF7gDJiyKwkfIlArCY3J2HH6a1uLURjbFH
         CELA==
X-Gm-Message-State: AOJu0Yyw3ZVfeOkHhv7Xdvi0Bh74QLmlv2Zia1m1Lp7IH1y20aYUIIIn
	eyPwKOi9pi6N+P9uuolMb2DLTPH8kOWSPW6rghImy2GvWOqHrJVrob+1GQ==
X-Google-Smtp-Source: AGHT+IExzh6pCw6gxbyFv+RpSVxPN9WUMVDniPEpgmvy/OSKp/riyk5bISJO054omun0BHe+XwPpFQ==
X-Received: by 2002:a05:6870:d389:b0:261:1c09:e0cf with SMTP id 586e51a60fabf-277c7fcc69bmr3683195fac.3.1725128429526;
        Sat, 31 Aug 2024 11:20:29 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277abb503bdsm1312258fac.17.2024.08.31.11.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 11:20:28 -0700 (PDT)
Date: Sat, 31 Aug 2024 13:20:27 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <20240831182027.b6pduwkthk5b3tcf@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ttuozkvzlnlajnxe"
Content-Disposition: inline


--ttuozkvzlnlajnxe
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
MIME-Version: 1.0

Prepare for `MR` macro migration.

Migrate table entries from using font selection escape sequences to font
alternation macros to set man page cross references.

This change was automatically driven by the following sed(1) script.

$ cat fix-man-page-refs-in-tbl-tables-2.sed
\# Rewrite man page cross references on tbl(1) rows that precede text
\# blocks to themselves use text blocks, and convert them to use man(7)
\# macros instead of troff(1) font selection escape sequences (which
\# cannot be done outside a text block).
/^\.\\"/b
/^\\fB[^\\]*\\fP([0-9][a-z]*).*T{/s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\(.*=
\)/T{\
=2EBR \1 \2\
T}\3/

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man3/stdio.3         | 236 +++++++++++++++++++++++++++++----------
 man/man7/signal-safety.7 |  12 +-
 2 files changed, 186 insertions(+), 62 deletions(-)

diff --git a/man/man3/stdio.3 b/man/man3/stdio.3
index 6e534296f..728424c2c 100644
--- a/man/man3/stdio.3
+++ b/man/man3/stdio.3
@@ -162,181 +162,299 @@ .SS List of functions
 l l.
 Function	Description
 _
-\fBclearerr\fP(3)	T{
+T{
+.BR clearerr (3)
+T}	T{
 check and reset stream status
 T}
-\fBfclose\fP(3)	T{
+T{
+.BR fclose (3)
+T}	T{
 close a stream
 T}
-\fBfdopen\fP(3)	T{
+T{
+.BR fdopen (3)
+T}	T{
 stream open functions
 T}
-\fBfeof\fP(3)	T{
+T{
+.BR feof (3)
+T}	T{
 check and reset stream status
 T}
-\fBferror\fP(3)	T{
+T{
+.BR ferror (3)
+T}	T{
 check and reset stream status
 T}
-\fBfflush\fP(3)	T{
+T{
+.BR fflush (3)
+T}	T{
 flush a stream
 T}
-\fBfgetc\fP(3)	T{
+T{
+.BR fgetc (3)
+T}	T{
 get next character or word from input stream
 T}
-\fBfgetpos\fP(3)	T{
+T{
+.BR fgetpos (3)
+T}	T{
 reposition a stream
 T}
-\fBfgets\fP(3)	T{
+T{
+.BR fgets (3)
+T}	T{
 get a line from a stream
 T}
-\fBfileno\fP(3)	T{
+T{
+.BR fileno (3)
+T}	T{
 return the integer descriptor of the argument stream
 T}
-\fBfmemopen\fP(3)	T{
+T{
+.BR fmemopen (3)
+T}	T{
 open memory as stream
 T}
-\fBfopen\fP(3)	T{
+T{
+.BR fopen (3)
+T}	T{
 stream open functions
 T}
-\fBfopencookie\fP(3)	T{
+T{
+.BR fopencookie (3)
+T}	T{
 open a custom stream
 T}
-\fBfprintf\fP(3)	T{
+T{
+.BR fprintf (3)
+T}	T{
 formatted output conversion
 T}
-\fBfpurge\fP(3)	T{
+T{
+.BR fpurge (3)
+T}	T{
 flush a stream
 T}
-\fBfputc\fP(3)	T{
+T{
+.BR fputc (3)
+T}	T{
 output a character or word to a stream
 T}
-\fBfputs\fP(3)	T{
+T{
+.BR fputs (3)
+T}	T{
 output a line to a stream
 T}
-\fBfread\fP(3)	T{
+T{
+.BR fread (3)
+T}	T{
 binary stream input/output
 T}
-\fBfreopen\fP(3)	T{
+T{
+.BR freopen (3)
+T}	T{
 stream open functions
 T}
-\fBfscanf\fP(3)	T{
+T{
+.BR fscanf (3)
+T}	T{
 input format conversion
 T}
-\fBfseek\fP(3)	T{
+T{
+.BR fseek (3)
+T}	T{
 reposition a stream
 T}
-\fBfsetpos\fP(3)	T{
+T{
+.BR fsetpos (3)
+T}	T{
 reposition a stream
 T}
-\fBftell\fP(3)	T{
+T{
+.BR ftell (3)
+T}	T{
 reposition a stream
 T}
-\fBfwrite\fP(3)	T{
+T{
+.BR fwrite (3)
+T}	T{
 binary stream input/output
 T}
-\fBgetc\fP(3)	T{
+T{
+.BR getc (3)
+T}	T{
 get next character or word from input stream
 T}
-\fBgetchar\fP(3)	T{
+T{
+.BR getchar (3)
+T}	T{
 get next character or word from input stream
 T}
-\fBgets\fP(3)	T{
+T{
+.BR gets (3)
+T}	T{
 get a line from a stream
 T}
-\fBgetw\fP(3)	T{
+T{
+.BR getw (3)
+T}	T{
 get next character or word from input stream
 T}
-\fBmktemp\fP(3)	T{
+T{
+.BR mktemp (3)
+T}	T{
 make temporary filename (unique)
 T}
-\fBopen_memstream\fP(3)	T{
+T{
+.BR open_memstream (3)
+T}	T{
 open a dynamic memory buffer stream
 T}
-\fBopen_wmemstream\fP(3)	T{
+T{
+.BR open_wmemstream (3)
+T}	T{
 open a dynamic memory buffer stream
 T}
-\fBperror\fP(3)	T{
+T{
+.BR perror (3)
+T}	T{
 system error messages
 T}
-\fBprintf\fP(3)	T{
+T{
+.BR printf (3)
+T}	T{
 formatted output conversion
 T}
-\fBputc\fP(3)	T{
+T{
+.BR putc (3)
+T}	T{
 output a character or word to a stream
 T}
-\fBputchar\fP(3)	T{
+T{
+.BR putchar (3)
+T}	T{
 output a character or word to a stream
 T}
-\fBputs\fP(3)	T{
+T{
+.BR puts (3)
+T}	T{
 output a line to a stream
 T}
-\fBputw\fP(3)	T{
+T{
+.BR putw (3)
+T}	T{
 output a character or word to a stream
 T}
-\fBremove\fP(3)	T{
+T{
+.BR remove (3)
+T}	T{
 remove directory entry
 T}
-\fBrewind\fP(3)	T{
+T{
+.BR rewind (3)
+T}	T{
 reposition a stream
 T}
-\fBscanf\fP(3)	T{
+T{
+.BR scanf (3)
+T}	T{
 input format conversion
 T}
-\fBsetbuf\fP(3)	T{
+T{
+.BR setbuf (3)
+T}	T{
 stream buffering operations
 T}
-\fBsetbuffer\fP(3)	T{
+T{
+.BR setbuffer (3)
+T}	T{
 stream buffering operations
 T}
-\fBsetlinebuf\fP(3)	T{
+T{
+.BR setlinebuf (3)
+T}	T{
 stream buffering operations
 T}
-\fBsetvbuf\fP(3)	T{
+T{
+.BR setvbuf (3)
+T}	T{
 stream buffering operations
 T}
-\fBsprintf\fP(3)	T{
+T{
+.BR sprintf (3)
+T}	T{
 formatted output conversion
 T}
-\fBsscanf\fP(3)	T{
+T{
+.BR sscanf (3)
+T}	T{
 input format conversion
 T}
-\fBstrerror\fP(3)	T{
+T{
+.BR strerror (3)
+T}	T{
 system error messages
 T}
-\fBsys_errlist\fP(3)	T{
+T{
+.BR sys_errlist (3)
+T}	T{
 system error messages
 T}
-\fBsys_nerr\fP(3)	T{
+T{
+.BR sys_nerr (3)
+T}	T{
 system error messages
 T}
-\fBtempnam\fP(3)	T{
+T{
+.BR tempnam (3)
+T}	T{
 temporary file routines
 T}
-\fBtmpfile\fP(3)	T{
+T{
+.BR tmpfile (3)
+T}	T{
 temporary file routines
 T}
-\fBtmpnam\fP(3)	T{
+T{
+.BR tmpnam (3)
+T}	T{
 temporary file routines
 T}
-\fBungetc\fP(3)	T{
+T{
+.BR ungetc (3)
+T}	T{
 un-get character from input stream
 T}
-\fBvfprintf\fP(3)	T{
+T{
+.BR vfprintf (3)
+T}	T{
 formatted output conversion
 T}
-\fBvfscanf\fP(3)	T{
+T{
+.BR vfscanf (3)
+T}	T{
 input format conversion
 T}
-\fBvprintf\fP(3)	T{
+T{
+.BR vprintf (3)
+T}	T{
 formatted output conversion
 T}
-\fBvscanf\fP(3)	T{
+T{
+.BR vscanf (3)
+T}	T{
 input format conversion
 T}
-\fBvsprintf\fP(3)	T{
+T{
+.BR vsprintf (3)
+T}	T{
 formatted output conversion
 T}
-\fBvsscanf\fP(3)	T{
+T{
+.BR vsscanf (3)
+T}	T{
 input format conversion
 T}
 .TE
diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
index cde19a575..440894529 100644
--- a/man/man7/signal-safety.7
+++ b/man/man7/signal-safety.7
@@ -95,7 +95,9 @@ .SH DESCRIPTION
 \fBcreat\fP(2)
 \fBdup\fP(2)
 \fBdup2\fP(2)
-\fBexecl\fP(3)	T{
+T{
+.BR execl (3)
+T}	T{
 Added in POSIX.1-2008; see notes below
 T}
 \fBexecle\fP(3)	See notes below
@@ -136,7 +138,9 @@ .SH DESCRIPTION
 \fBlink\fP(2)
 \fBlinkat\fP(2)	Added in POSIX.1-2008
 \fBlisten\fP(2)
-\fBlongjmp\fP(3)	T{
+T{
+.BR longjmp (3)
+T}	T{
 Added in POSIX.1-2008 TC2; see notes below
 T}
 \fBlseek\fP(2)
@@ -192,7 +196,9 @@ .SH DESCRIPTION
 \fBsigemptyset\fP(3)
 \fBsigfillset\fP(3)
 \fBsigismember\fP(3)
-\fBsiglongjmp\fP(3)	T{
+T{
+.BR siglongjmp (3)
+T}	T{
 Added in POSIX.1-2008 TC2; see notes below
 T}
 \fBsignal\fP(2)
--=20
2.30.2


--ttuozkvzlnlajnxe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTXuMACgkQ0Z6cfXEm
bc5USA/8C9o9PumOKTsmZ/acJ7ECDqysX4NqdAPcMCawWgeBGL+OK6aU1ELq1dPC
a81WJnMjNfHtGIfZh2RKo9275AAW+uaw1y953iQ21SZGpXASwxuwVgD4Y5OC9Lu1
SI8yOA6e5vE6l4TIEzR8ydmffbwGNnWv2t32Q6CW2yUkAX9NDB8heKcR06SgugrL
qf7qgPSROk4yzajP9guPp6q6OaGBMt8OqT4GBLywPSO/rpPEitlcqZznw8xayBQY
hG/JOD57SvNmemCtlNc02k0HKokR1zYqc2cFESx3XbPZgIGGbrV+DRv8xoUl+Po2
pfqTACR/jllRI0cQED5bCz5rskmSwfNupDfD8otmSq4ri/zWZmRrgpXuFOkLRVzE
afCzettnRMrffgy8mLJc0fPouOLqmaZL2PFovhVsMjCwZApZ+6zQSw2iEyLwyjSg
DqItSQaNlOzCWHLXJ1Bmq0shMMnx11grwCUNcD2htEyfOchmpyRKW6cCK75kt/mB
/QY5abz/OxW8fPa7AIxxWq+8q2h4zJCAp4HtcCvOYxzXTKthHwSKiNYzX9oIt2Oa
XdumkXY+yaPPBh8uRj6RABF3MjrZj3HHN1nz/92LJGqphWVJSC+zqzh3kxObTl1r
y4JzXzapp5JvBCELEi5BwhsHdjyKpvKCVvDqiAoFRQIERqLovkw=
=JWgm
-----END PGP SIGNATURE-----

--ttuozkvzlnlajnxe--

