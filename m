Return-Path: <linux-man+bounces-1738-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 313BB96733D
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8AAA1B21E31
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 20:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D99166F28;
	Sat, 31 Aug 2024 20:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAMmboEF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB38524F
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 20:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725136987; cv=none; b=aROwt09fentbBEzPhdBWXSJsdrHPi87bwCrAIvn0DUJQww8fQZfI7zhxZrOcnKoFuAJGTIwGqtdY5YKeVzbwM1WzhPMAu4AvwVxWBi0aSBy0P+5PY4UmwNLQVMClQCfIl4QgHxe3S3IacbsE30nOBHkWlRVUEEcoD9ZsD7WnC7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725136987; c=relaxed/simple;
	bh=foaVXF5FyTVn4c/SzsBbyv0h7FL4cNxTSR3xo0w8juI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Do8VN8WX0T4L+WlbuNlZqImecFhlVEidjws1NY3EW8SASufjJNSDDaXuQ1TY9BGNjRkN7D+GByqgVA2KCdQG3KDPRtBWye3xLAOMPMz6e1vajsOkzK5yeraGXf8b0lg+S8ZLvHgpcue10/sseMFnsnFlo4D81y89XSk6i64xK+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAMmboEF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BB5BC4CEC0;
	Sat, 31 Aug 2024 20:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725136986;
	bh=foaVXF5FyTVn4c/SzsBbyv0h7FL4cNxTSR3xo0w8juI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pAMmboEF/Fai+AFVu5lyXeeMgMVzrTN0afK+Kcf7DFzFyh53rQviGx6CjOOeB7AM7
	 5pNISI+EPtaez9arYLpRx97vYkqs1HB9H2IxKYwyEgvVRRJTeO43xWdZubtTi4rVfc
	 7mw4IZNEjjyoyLNUKJT7Foa9QeW+pCaeA8L+yN7OupiCGHYVghL9OChoFIQzOOdGzy
	 TSdbZtmJzA3IjahgQhshL+K936WpXYLv/gsqBMpM2Ky9LBdXLcNbLgZbQG5kzMNOOQ
	 PoJYsjfL0HJwkVt7LiD1iDZwrjrh1CASXe0prbSoHWj5Hndhwx3p095usC0JX3RLCt
	 bK+btJ5Q6LdEQ==
Date: Sat, 31 Aug 2024 22:43:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
References: <20240831182027.b6pduwkthk5b3tcf@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s4ihrmsyowfnlm3k"
Content-Disposition: inline
In-Reply-To: <20240831182027.b6pduwkthk5b3tcf@illithid>


--s4ihrmsyowfnlm3k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
References: <20240831182027.b6pduwkthk5b3tcf@illithid>
MIME-Version: 1.0
In-Reply-To: <20240831182027.b6pduwkthk5b3tcf@illithid>

On Sat, Aug 31, 2024 at 01:20:27PM GMT, G. Branden Robinson wrote:
> Prepare for `MR` macro migration.
>=20
> Migrate table entries from using font selection escape sequences to font
> alternation macros to set man page cross references.
>=20
> This change was automatically driven by the following sed(1) script.
>=20
> $ cat fix-man-page-refs-in-tbl-tables-2.sed
> \# Rewrite man page cross references on tbl(1) rows that precede text

Hi Branden,

I guess \# doesn't appear in your actual script.
What I usually do to avoid problems with git(1) is to indent everything.

> \# blocks to themselves use text blocks, and convert them to use man(7)
> \# macros instead of troff(1) font selection escape sequences (which
> \# cannot be done outside a text block).
> /^\.\\"/b
> /^\\fB[^\\]*\\fP([0-9][a-z]*).*T{/s/\\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\(=
=2E*\)/T{\
> .BR \1 \2\
> T}\3/
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Patch applied.  Thanks!

Have a lovely night!
Alex
> ---
>  man/man3/stdio.3         | 236 +++++++++++++++++++++++++++++----------
>  man/man7/signal-safety.7 |  12 +-
>  2 files changed, 186 insertions(+), 62 deletions(-)
>=20
> diff --git a/man/man3/stdio.3 b/man/man3/stdio.3
> index 6e534296f..728424c2c 100644
> --- a/man/man3/stdio.3
> +++ b/man/man3/stdio.3
> @@ -162,181 +162,299 @@ .SS List of functions
>  l l.
>  Function	Description
>  _
> -\fBclearerr\fP(3)	T{
> +T{
> +.BR clearerr (3)
> +T}	T{
>  check and reset stream status
>  T}
> -\fBfclose\fP(3)	T{
> +T{
> +.BR fclose (3)
> +T}	T{
>  close a stream
>  T}
> -\fBfdopen\fP(3)	T{
> +T{
> +.BR fdopen (3)
> +T}	T{
>  stream open functions
>  T}
> -\fBfeof\fP(3)	T{
> +T{
> +.BR feof (3)
> +T}	T{
>  check and reset stream status
>  T}
> -\fBferror\fP(3)	T{
> +T{
> +.BR ferror (3)
> +T}	T{
>  check and reset stream status
>  T}
> -\fBfflush\fP(3)	T{
> +T{
> +.BR fflush (3)
> +T}	T{
>  flush a stream
>  T}
> -\fBfgetc\fP(3)	T{
> +T{
> +.BR fgetc (3)
> +T}	T{
>  get next character or word from input stream
>  T}
> -\fBfgetpos\fP(3)	T{
> +T{
> +.BR fgetpos (3)
> +T}	T{
>  reposition a stream
>  T}
> -\fBfgets\fP(3)	T{
> +T{
> +.BR fgets (3)
> +T}	T{
>  get a line from a stream
>  T}
> -\fBfileno\fP(3)	T{
> +T{
> +.BR fileno (3)
> +T}	T{
>  return the integer descriptor of the argument stream
>  T}
> -\fBfmemopen\fP(3)	T{
> +T{
> +.BR fmemopen (3)
> +T}	T{
>  open memory as stream
>  T}
> -\fBfopen\fP(3)	T{
> +T{
> +.BR fopen (3)
> +T}	T{
>  stream open functions
>  T}
> -\fBfopencookie\fP(3)	T{
> +T{
> +.BR fopencookie (3)
> +T}	T{
>  open a custom stream
>  T}
> -\fBfprintf\fP(3)	T{
> +T{
> +.BR fprintf (3)
> +T}	T{
>  formatted output conversion
>  T}
> -\fBfpurge\fP(3)	T{
> +T{
> +.BR fpurge (3)
> +T}	T{
>  flush a stream
>  T}
> -\fBfputc\fP(3)	T{
> +T{
> +.BR fputc (3)
> +T}	T{
>  output a character or word to a stream
>  T}
> -\fBfputs\fP(3)	T{
> +T{
> +.BR fputs (3)
> +T}	T{
>  output a line to a stream
>  T}
> -\fBfread\fP(3)	T{
> +T{
> +.BR fread (3)
> +T}	T{
>  binary stream input/output
>  T}
> -\fBfreopen\fP(3)	T{
> +T{
> +.BR freopen (3)
> +T}	T{
>  stream open functions
>  T}
> -\fBfscanf\fP(3)	T{
> +T{
> +.BR fscanf (3)
> +T}	T{
>  input format conversion
>  T}
> -\fBfseek\fP(3)	T{
> +T{
> +.BR fseek (3)
> +T}	T{
>  reposition a stream
>  T}
> -\fBfsetpos\fP(3)	T{
> +T{
> +.BR fsetpos (3)
> +T}	T{
>  reposition a stream
>  T}
> -\fBftell\fP(3)	T{
> +T{
> +.BR ftell (3)
> +T}	T{
>  reposition a stream
>  T}
> -\fBfwrite\fP(3)	T{
> +T{
> +.BR fwrite (3)
> +T}	T{
>  binary stream input/output
>  T}
> -\fBgetc\fP(3)	T{
> +T{
> +.BR getc (3)
> +T}	T{
>  get next character or word from input stream
>  T}
> -\fBgetchar\fP(3)	T{
> +T{
> +.BR getchar (3)
> +T}	T{
>  get next character or word from input stream
>  T}
> -\fBgets\fP(3)	T{
> +T{
> +.BR gets (3)
> +T}	T{
>  get a line from a stream
>  T}
> -\fBgetw\fP(3)	T{
> +T{
> +.BR getw (3)
> +T}	T{
>  get next character or word from input stream
>  T}
> -\fBmktemp\fP(3)	T{
> +T{
> +.BR mktemp (3)
> +T}	T{
>  make temporary filename (unique)
>  T}
> -\fBopen_memstream\fP(3)	T{
> +T{
> +.BR open_memstream (3)
> +T}	T{
>  open a dynamic memory buffer stream
>  T}
> -\fBopen_wmemstream\fP(3)	T{
> +T{
> +.BR open_wmemstream (3)
> +T}	T{
>  open a dynamic memory buffer stream
>  T}
> -\fBperror\fP(3)	T{
> +T{
> +.BR perror (3)
> +T}	T{
>  system error messages
>  T}
> -\fBprintf\fP(3)	T{
> +T{
> +.BR printf (3)
> +T}	T{
>  formatted output conversion
>  T}
> -\fBputc\fP(3)	T{
> +T{
> +.BR putc (3)
> +T}	T{
>  output a character or word to a stream
>  T}
> -\fBputchar\fP(3)	T{
> +T{
> +.BR putchar (3)
> +T}	T{
>  output a character or word to a stream
>  T}
> -\fBputs\fP(3)	T{
> +T{
> +.BR puts (3)
> +T}	T{
>  output a line to a stream
>  T}
> -\fBputw\fP(3)	T{
> +T{
> +.BR putw (3)
> +T}	T{
>  output a character or word to a stream
>  T}
> -\fBremove\fP(3)	T{
> +T{
> +.BR remove (3)
> +T}	T{
>  remove directory entry
>  T}
> -\fBrewind\fP(3)	T{
> +T{
> +.BR rewind (3)
> +T}	T{
>  reposition a stream
>  T}
> -\fBscanf\fP(3)	T{
> +T{
> +.BR scanf (3)
> +T}	T{
>  input format conversion
>  T}
> -\fBsetbuf\fP(3)	T{
> +T{
> +.BR setbuf (3)
> +T}	T{
>  stream buffering operations
>  T}
> -\fBsetbuffer\fP(3)	T{
> +T{
> +.BR setbuffer (3)
> +T}	T{
>  stream buffering operations
>  T}
> -\fBsetlinebuf\fP(3)	T{
> +T{
> +.BR setlinebuf (3)
> +T}	T{
>  stream buffering operations
>  T}
> -\fBsetvbuf\fP(3)	T{
> +T{
> +.BR setvbuf (3)
> +T}	T{
>  stream buffering operations
>  T}
> -\fBsprintf\fP(3)	T{
> +T{
> +.BR sprintf (3)
> +T}	T{
>  formatted output conversion
>  T}
> -\fBsscanf\fP(3)	T{
> +T{
> +.BR sscanf (3)
> +T}	T{
>  input format conversion
>  T}
> -\fBstrerror\fP(3)	T{
> +T{
> +.BR strerror (3)
> +T}	T{
>  system error messages
>  T}
> -\fBsys_errlist\fP(3)	T{
> +T{
> +.BR sys_errlist (3)
> +T}	T{
>  system error messages
>  T}
> -\fBsys_nerr\fP(3)	T{
> +T{
> +.BR sys_nerr (3)
> +T}	T{
>  system error messages
>  T}
> -\fBtempnam\fP(3)	T{
> +T{
> +.BR tempnam (3)
> +T}	T{
>  temporary file routines
>  T}
> -\fBtmpfile\fP(3)	T{
> +T{
> +.BR tmpfile (3)
> +T}	T{
>  temporary file routines
>  T}
> -\fBtmpnam\fP(3)	T{
> +T{
> +.BR tmpnam (3)
> +T}	T{
>  temporary file routines
>  T}
> -\fBungetc\fP(3)	T{
> +T{
> +.BR ungetc (3)
> +T}	T{
>  un-get character from input stream
>  T}
> -\fBvfprintf\fP(3)	T{
> +T{
> +.BR vfprintf (3)
> +T}	T{
>  formatted output conversion
>  T}
> -\fBvfscanf\fP(3)	T{
> +T{
> +.BR vfscanf (3)
> +T}	T{
>  input format conversion
>  T}
> -\fBvprintf\fP(3)	T{
> +T{
> +.BR vprintf (3)
> +T}	T{
>  formatted output conversion
>  T}
> -\fBvscanf\fP(3)	T{
> +T{
> +.BR vscanf (3)
> +T}	T{
>  input format conversion
>  T}
> -\fBvsprintf\fP(3)	T{
> +T{
> +.BR vsprintf (3)
> +T}	T{
>  formatted output conversion
>  T}
> -\fBvsscanf\fP(3)	T{
> +T{
> +.BR vsscanf (3)
> +T}	T{
>  input format conversion
>  T}
>  .TE
> diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
> index cde19a575..440894529 100644
> --- a/man/man7/signal-safety.7
> +++ b/man/man7/signal-safety.7
> @@ -95,7 +95,9 @@ .SH DESCRIPTION
>  \fBcreat\fP(2)
>  \fBdup\fP(2)
>  \fBdup2\fP(2)
> -\fBexecl\fP(3)	T{
> +T{
> +.BR execl (3)
> +T}	T{
>  Added in POSIX.1-2008; see notes below
>  T}
>  \fBexecle\fP(3)	See notes below
> @@ -136,7 +138,9 @@ .SH DESCRIPTION
>  \fBlink\fP(2)
>  \fBlinkat\fP(2)	Added in POSIX.1-2008
>  \fBlisten\fP(2)
> -\fBlongjmp\fP(3)	T{
> +T{
> +.BR longjmp (3)
> +T}	T{
>  Added in POSIX.1-2008 TC2; see notes below
>  T}
>  \fBlseek\fP(2)
> @@ -192,7 +196,9 @@ .SH DESCRIPTION
>  \fBsigemptyset\fP(3)
>  \fBsigfillset\fP(3)
>  \fBsigismember\fP(3)
> -\fBsiglongjmp\fP(3)	T{
> +T{
> +.BR siglongjmp (3)
> +T}	T{
>  Added in POSIX.1-2008 TC2; see notes below
>  T}
>  \fBsignal\fP(2)
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--s4ihrmsyowfnlm3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbTgFcACgkQnowa+77/
2zK4tw//T3W0Fj28vs8bJ+0DnjtaZ4PLpR9C78ZL5R/49nipWT8kT/oIf1rAKdzV
a/1sNMgyqmkPr3LO9cnZUDLXSqZh1jM8b0lE3pG5njWXhVkjvPTBfLIwk12upDho
dDR5QnKUhnwSH/XlVO0iauTWAOpYPrOJlqTUJPqzY+r35yG8hG5GY9fwiOxJSNyZ
ZIr+xvi6k110aMI5Bwid2fJ69oghj3FNTtg6pu7nbSW932JU6sTNOI/zKwzsyKfw
OOzVsEtOQbDZ9hlxpoQCYe+dFt/3Ux1/Qyu2P/xFZNc1pmvf/TyXcTI/+o1wtUY6
mna7m+NBY3So6QeKax8L+/5jgGRYkk+NJmgv+KoYS7CHxOkOtXRkaDKhbGFTs4Bh
r8AxDj6i0ogjeBxDzOTidDNHBUUOfeBcXR0l0R+tXpL3n1ghIyUFoEvVqCzmUB83
p71wNfMgYlCsqkiAvImIZF+1suzGy70m9pbt+7yYQ0504HnIfTiLKgvhbAj8oiUF
+xhAppCtQgnlwYomtxee/f3KsBytmM8O2fEkeqh/vgOHcZ6xei7LA23iFzXWPMgk
aFibNv1pk2DQ3rSjkXSXZBRItW2Nf7/ZhUhYQq+GsubwcbufgqTQdVWPDI74kUkm
IH5Qla19c0ZiyX7VIDWLd6fw+wHRO6fpo7xtVsayg/9TBZXVSII=
=xoFs
-----END PGP SIGNATURE-----

--s4ihrmsyowfnlm3k--

