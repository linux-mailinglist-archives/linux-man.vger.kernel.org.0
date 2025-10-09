Return-Path: <linux-man+bounces-4095-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E937ABCB12B
	for <lists+linux-man@lfdr.de>; Fri, 10 Oct 2025 00:25:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A00AF424EE1
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 22:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A58F286402;
	Thu,  9 Oct 2025 22:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTijK5d5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2963D285CBC
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 22:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760048705; cv=none; b=hZczfZZE7rs7AY7ZJVk8FVOf2lKmoJKcO3OssF+O1iuyvcKPi4UlASiU/oJhlwEZWxV4njuS0Ht0FDt4xfbMO/nf1Lhl8/ke3T+xK6gOaYLHKx3qw3RR2PBx6UKeAP6cvE3oiLbL7UAWiwRJFvDWgCVMDUfclDMvpO6AFKzFQl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760048705; c=relaxed/simple;
	bh=GrDjkC5J4dOgIRQQlAbVJPHDamVg4nru4UkaKdSOr2M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MJ5NFK9KlUzajMUPBmxjQdidfUieSN3chc1z7YIfgrzwaM9peWWZMVqhxYxmIRRhUDETiyYLTAWe0bSbuhlrU7PdwRG8Ah+8JGeICYkg3P3MzNWJU619lZSWSpmtiMO7i2bhgsI7+Oydey676xk9cFP15Uw+O5ysPVdmOCJ2/a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTijK5d5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E713DC4CEE7;
	Thu,  9 Oct 2025 22:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760048704;
	bh=GrDjkC5J4dOgIRQQlAbVJPHDamVg4nru4UkaKdSOr2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fTijK5d5zKWaSs5qA3YoSF++Fy5KLFfKoloMKhVntAUbaykez1tn3u+r9y/Z6fOx6
	 +nrD8FyzxoYl7axtkmLhXyAymijjEV1Rhm6mUqJiWk5ZTRedmCKNoSTuW1TY8cArka
	 MEhb3Ipkbytbj7jWtCTZPH+kzdIlONbI5ZK53XwdowP5qFnBkU9Z8ruBK9QK8ViK2f
	 dU+yz09W5F3aK6ANJGERZFeIk1zDJaegOyU2u1K7P5snHzrLKOZAOAaBrJOO4uQ4f9
	 N9G++fFl+xZNF+YOrIyEKXECpziv9WIHyhrEAiFsmlQQa3u1v8uFC8ztiCp/8mVVmc
	 /Osb59YZ94BAg==
Date: Fri, 10 Oct 2025 00:25:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 8/8] man/man4/console_codes.4: ffix
Message-ID: <jld37wp2h67sgpkmdhoubnjamcjdr2hd66gwllmsl23igpyuc2@qndcfrjczlia>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
 <20251009215819.o5yc7y5pv3hmzgzu@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uk7d2ayhailtuosn"
Content-Disposition: inline
In-Reply-To: <20251009215819.o5yc7y5pv3hmzgzu@illithid>


--uk7d2ayhailtuosn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 8/8] man/man4/console_codes.4: ffix
Message-ID: <jld37wp2h67sgpkmdhoubnjamcjdr2hd66gwllmsl23igpyuc2@qndcfrjczlia>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
 <20251009215819.o5yc7y5pv3hmzgzu@illithid>
MIME-Version: 1.0
In-Reply-To: <20251009215819.o5yc7y5pv3hmzgzu@illithid>

Hi Branden,

On Thu, Oct 09, 2025 at 04:58:19PM -0500, G. Branden Robinson wrote:
> Disable adjustment in all tbl(1) text blocks whose entries break using a
> line length of 65 ens (the historical *roff default and practical
> minimum).
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I'm going to reject this patch.  I think I prefer to keep the source
code simpler.  I might eventually change my mind, but I'm not convinced
yet.


Cheers,
Alex

> ---
>  man/man4/console_codes.4 | 47 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index 04723c01e..4abc97d9b 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -135,11 +135,13 @@ .SS Linux console controls
>  T}
>  ESC M	RI	Reverse linefeed.
>  ESC Z	DECID	T{
> +.na
>  DEC private identification.
>  The kernel returns the string ESC [ ? 6 c,
>  claiming that it is a VT102.
>  T}
>  ESC 7	DECSC	T{
> +.na
>  Save current state
>  (cursor coordinates,
>  attributes,
> @@ -152,6 +154,7 @@ .SS Linux console controls
>  .T&
>  l l ax.
>  ESC % @		T{
> +.na
>  Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
>  T}
>  ESC % G		Select UTF-8
> @@ -159,9 +162,11 @@ .SS Linux console controls
>  .T&
>  l l lx.
>  ESC # 8	DECALN	T{
> +.na
>  DEC screen alignment test \- fill screen with E's.
>  T}
>  ESC (		T{
> +.na
>  Start sequence defining G0 character set
>  (followed by one of B, 0, U, K, as below)
>  T}
> @@ -172,13 +177,16 @@ .SS Linux console controls
>  Select VT100 graphics mapping.
>  T}
>  ESC ( U		T{
> +.na
>  Select null mapping \- straight to character ROM.
>  T}
>  ESC ( K		T{
> +.na
>  Select user mapping \- the map that is loaded by the utility
>  .BR mapscrn (8).
>  T}
>  ESC )		T{
> +.na
>  Start sequence defining G1 (followed by one of B, 0, U, K, as above).
>  T}
>  ESC >	DECPNM	Set numeric keypad mode
> @@ -188,6 +196,7 @@ .SS Linux console controls
>  T}
>  ESC ] R		Reset palette.
>  ESC ] P		T{
> +.na
>  Set palette, with parameter given in 7 hexadecimal digits
>  .I nrrggbb
>  after the final P.
> @@ -233,32 +242,41 @@ .SS Linux console controls
>  Move cursor left the indicated # of columns.
>  T}
>  E	CNL	T{
> +.na
>  Move cursor down the indicated # of rows, to column 1.
>  T}
>  F	CPL	T{
> +.na
>  Move cursor up the indicated # of rows, to column 1.
>  T}
>  G	CHA	T{
> +.na
>  Move cursor to indicated column in current row.
>  T}
>  H	CUP	T{
> +.na
>  Move cursor to the indicated row, column (origin at 1,1).
>  T}
>  J	ED	T{
> +.na
>  Erase display (default: from cursor to end of display).
>  T}
>  		T{
> +.na
>  ESC [ 1 J: erase from start to cursor.
>  T}
>  		T{
> +.na
>  ESC [ 2 J: erase whole display.
>  T}
>  		T{
> +.na
>  ESC [ 3 J: erase whole display including scroll-back
>  buffer (since Linux 3.0).
>  T}
>  .\" ESC [ 3 J: commit f8df13e0a901fe55631fed66562369b4dba40f8b
>  K	EL	T{
> +.na
>  Erase line (default: from cursor to end of line).
>  T}
>  		T{
> @@ -274,9 +292,11 @@ .SS Linux console controls
>  Delete the indicated # of lines.
>  T}
>  P	DCH	T{
> +.na
>  Delete the indicated # of characters on current line.
>  T}
>  X	ECH	T{
> +.na
>  Erase the indicated # of characters on current line.
>  T}
>  a	HPR	T{
> @@ -286,6 +306,7 @@ .SS Linux console controls
>  Answer ESC [ ? 6 c: "I am a VT102".
>  T}
>  d	VPA	T{
> +.na
>  Move cursor to the indicated row, current column.
>  T}
>  e	VPR	T{
> @@ -295,6 +316,7 @@ .SS Linux console controls
>  Move cursor to the indicated row, column.
>  T}
>  g	TBC	T{
> +.na
>  Without parameter: clear tab stop at current position.
>  T}
>  		T{
> @@ -310,12 +332,14 @@ .SS Linux console controls
>  		ESC [ 2 q: set Num Lock LED
>  		ESC [ 3 q: set Caps Lock LED
>  r	DECSTBM	T{
> +.na
>  Set scrolling region;
>  parameters are top and bottom row.
>  T}
>  s	SCOSC	Save cursor location.
>  u	SCORC	Restore cursor location.
>  \`	HPA	T{
> +.na
>  Move cursor to indicated column in current row.
>  T}
>  .TE
> @@ -339,12 +363,15 @@ .SS Linux console controls
>  T}
>  1	set bold
>  2	T{
> +.na
>  set half-bright (simulated with color on a color display)
>  T}
>  3	T{
> +.na
>  set italic (since Linux 2.6.22; simulated with color on a color display)
>  T}
>  4	T{
> +.na
>  set underscore (simulated with color on a color display)
>  (the colors used to simulate dim or underline are set
>  using ESC ] ...)
> @@ -352,14 +379,17 @@ .SS Linux console controls
>  5	set blink
>  7	set reverse video
>  10	T{
> +.na
>  reset selected mapping, display control flag,
>  and toggle meta flag (ECMA-48 says "primary font").
>  T}
>  11	T{
> +.na
>  select null mapping, set display control flag,
>  reset toggle meta flag (ECMA-48 says "first alternate font").
>  T}
>  12	T{
> +.na
>  select null mapping, set display control flag,
>  set toggle meta flag (ECMA-48 says "second alternate font").
>  The toggle meta flag
> @@ -367,6 +397,7 @@ .SS Linux console controls
>  before the mapping table translation is done.
>  T}
>  21	T{
> +.na
>  set underline;
>  before Linux 4.17,
>  this value set normal intensity
> @@ -386,10 +417,12 @@ .SS Linux console controls
>  36	set cyan foreground
>  37	set white foreground
>  38	T{
> +.na
>  256/24-bit foreground color follows, shoehorned into 16 basic colors
>  (before Linux 3.16: set underscore on, set default foreground color)
>  T}
>  39	T{
> +.na
>  set default foreground color
>  (before Linux 3.16: set underscore off, set default foreground color)
>  T}
> @@ -402,6 +435,7 @@ .SS Linux console controls
>  46	set cyan background
>  47	set white background
>  48	T{
> +.na
>  256/24-bit background color follows, shoehorned into 8 basic colors
>  T}
>  49	set default background color
> @@ -409,6 +443,7 @@ .SS Linux console controls
>  set foreground to bright versions of 30..37
>  T}
>  100..107	T{
> +.na
>  set background, same as 40..47 (bright not supported)
>  T}
>  .TE
> @@ -418,10 +453,12 @@ .SS Linux console controls
>  .TS
>  l lx.
>  ;5;x	T{
> +.na
>  256 color: values 0..15 are IBGR (black, red, green, ..., white),
>  16..231 a 6x6x6 color cube, 232..255 a grayscale ramp
>  T}
>  ;2;r;g;b	T{
> +.na
>  24-bit color, r/g/b components are in the range 0..255
>  T}
>  .TE
> @@ -530,6 +567,7 @@ .SS Linux console controls
>  Set color \f[I]n\f[] as the dim color.
>  T}
>  ESC [ 8 ]	T{
> +.na
>  Make the current color pair the default attributes.
>  T}
>  ESC [ 9 ; \f[I]n\f[] ]	T{
> @@ -550,13 +588,16 @@ .SS Linux console controls
>  Unblank the screen.
>  T}
>  ESC [ 14 ; \f[I]n\f[] ]	T{
> +.na
>  Set the VESA powerdown interval in minutes.
>  T}
>  ESC [ 15 ]	T{
> +.na
>  Bring the previous console to the front
>  (since Linux 2.6.0).
>  T}
>  ESC [ 16 ; \f[I]n\f[] ]	T{
> +.na
>  Set the cursor blink interval in milliseconds
>  (since Linux 4.2).
>  T}
> @@ -703,10 +744,12 @@ .SS Comparisons with other terminals
>  .TS
>  l l lx.
>  ESC N	SS2	T{
> +.na
>  Single shift 2.
>  (Select G2 character set for the next character only.)
>  T}
>  ESC O	SS3	T{
> +.na
>  Single shift 3.
>  (Select G3 character set for the next character only.)
>  T}
> @@ -747,6 +790,7 @@ .SS Comparisons with other terminals
>  .TS
>  l l.
>  ESC ] 0 ; \f[I]txt\f[] ST	T{
> +.na
>  Set icon name and window title to
>  .IR txt .
>  T}
> @@ -755,6 +799,7 @@ .SS Comparisons with other terminals
>  ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \=
f[I]txt\f[].
>  ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
>  ESC ] 4 6 ; \f[I]name\f[] ST	T{
> +.na
>  Change log file to
>  .I name
>  (normally disabled by a compile-time option).
> @@ -776,6 +821,7 @@ .SS Comparisons with other terminals
>  .TS
>  l l lx.
>  ESC F		T{
> +.na
>  Cursor to lower left corner of screen (if enabled
>  by
>  .BR xterm (1)'s
> @@ -783,6 +829,7 @@ .SS Comparisons with other terminals
>  resource).
>  T}
>  ESC l		T{
> +.na
>  Memory lock (per HP terminals).
>  Locks memory above the cursor.
>  T}
> --=20
> 2.30.2



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--uk7d2ayhailtuosn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjoNj0ACgkQ64mZXMKQ
wqkaRQ//dlFTpCPjxhxsYfFJsJg1HFlNpOgkV/68SiGVJNMtgxmWH8SwHaSUIRBW
ezQUR7W7rHCSeqJXtzukUo4kwpMvmW10ndLXC07PtnF73m5n4z5IizgTEVq35pK8
tQXkSHvhPwfEzCNt64gfubxkbC69JNeqOMijALh6L1tQWk9uf3TvP6jNhteYXrHB
Nu8w673Ack3F64S2TdLvzC5OGjR+C3VPoVe5uz2IuPYj/JS6fUJaDVDHr8m3bJIc
TFztehVZkOQH8uElusJSvWu30W+c0Nk3AJkcPTFIlOEIODKLTh4dEN6qXyTLMlkt
hMqs+CyrXIG5Tjs5X8W7imGFAhEfA5q0YZebWO24CBN28keYKITs+Ua28wCPg8Gr
rTknQx+yS5tK5Xo2yK0bwHyon5qlyTmenvZBlegBlEUz4Uso4M7ge9Kq4OB4XlXV
6XBSO12+xqEgTRRcpLy2kooXpVPeA+cUrZm65gLLSThcKqxhihFJs31/P4LDzDAJ
NiqG78RderaEflQufx+cJdj1rgABELCy4Wf+bRe0YTKXEsH8/Ohnf3nWhi1UHZTm
v9K9Y4yrUDbcZHq7zeUsLQUhhXiSOflzvGeUrOQHOAPpdRzGpg30+OaSYiydAMzi
gk/ArAiI8wR3eGH45vGzPBtGQ35+Mc054BisBi5Hgz+AGliz7h8=
=Vbbj
-----END PGP SIGNATURE-----

--uk7d2ayhailtuosn--

