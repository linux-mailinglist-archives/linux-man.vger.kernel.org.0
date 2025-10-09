Return-Path: <linux-man+bounces-4092-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8888BCAFF2
	for <lists+linux-man@lfdr.de>; Thu, 09 Oct 2025 23:58:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AE4C14E522B
	for <lists+linux-man@lfdr.de>; Thu,  9 Oct 2025 21:58:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3426283C93;
	Thu,  9 Oct 2025 21:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cBKEThVn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45B31F09A5
	for <linux-man@vger.kernel.org>; Thu,  9 Oct 2025 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760047105; cv=none; b=lm6F/jvBfNA8I6fjl3QWDonxJjDrhDuSgSw+V+JVfibaJGWybN4uBV3HsKE8/EpvfSLdydd8wqJku8WYlUjJs17o2Dg5UvniatQo2oCnUH5GO3GCALllQqmoNvLE6v8r9ILOvRLeYCE+zuUidUiJXEDB6ukFuDOxeVfaNPT1X4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760047105; c=relaxed/simple;
	bh=dunTwe9475kbHxEVYHp5US5JBCru36c+bkfYxtCONIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pp3BrUr2EUgc9CO4Q9X2xAWHzQMtfa3+qitIJc2VX5ETQwBfu5xM6wN0ZDfZOqXuMQ5sFWAxoAZ/0NMOlqdGZLwQyKhHGFOtdHHdHYDDGDbeP7f+LhamgoBC9ZiOYBnjjOyY51nqCrSpgf/ziDOmVcBZQgV0OKEy+skyXirs+b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cBKEThVn; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7b4f7a855baso1046196a34.3
        for <linux-man@vger.kernel.org>; Thu, 09 Oct 2025 14:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760047103; x=1760651903; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=k4xUb8QCQK6tOPWtoBdFipuJKbkqemrJD0DxIpCb3No=;
        b=cBKEThVnKseHh0CGljZwqw+cJtMElvu2nPC43JKjYpkK8RCIzQtEItDTuJuh7sA+Z3
         UzQ41Pal5WV9R4+r6DAu0myUB9kWnPMxuzsbo8Z+V+l3uvyjhwlRKKhCYD7CZsGxc3KK
         b6sO7srK0CeIf0NRdtB0XUP3MpmlqSaita+t1iHaf5YY9EpDhiJx+qJkjfg06/eze9bz
         H6Bn/2Vc98r7PSvvAOPyCCzAdcjr0Hv+Ur8r8nkrB+zc1HSJnjxy42cgF9tAnlhYZqlY
         QGdl4G7cuhDS1UkJAFbnE7WmRAEDe4a7GbBpxXYsDXIgruxWw6ZZENvTSyt/Zdza2tSg
         7Zog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760047103; x=1760651903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4xUb8QCQK6tOPWtoBdFipuJKbkqemrJD0DxIpCb3No=;
        b=wZAP9yX3gPMG0tKr/o4BGAz7vEK6cUUIMo52XkaWycgQ/QTR6POl8NmwMGj8vB6GQQ
         mLZgpEh0LUB0KZIlS1V36X4dxSPrDB+LKGhZYQEEoscduNrZrOX1HnSunCDK8LGWHPlr
         +z2m/CfDrS1w1EHvROwgbPqnWpTQpXffgCF/ymVfXLEQEqcDxk/6z83It+yH9oPT9aDu
         XUlwrkU9GMWZeWQuALSGUpC8zjMsVevYSrcM7SPjcAaKFOv21kGuxcXU7vgUATX96foc
         oHKWeT2T9T87vxXaP0cJUNSJBvIKB4NmB9j/BrIq8eFOGfcWMpKMl10mK+X2mEFm5nd3
         /ddw==
X-Gm-Message-State: AOJu0YyVVyp4Dns91YnG3R+ypNhfjKGGpWFyMu6LK9YL1VQTVRANnUqX
	xKDmnjB5DbwO8ALKKRAtIzLmqOVrAPu9xKTUEjVshB+s5sFj5w1Kp2c9PakSpQ==
X-Gm-Gg: ASbGncu/lphYraQ9y6ncn9x6T6fgj48OK+3DiTwNxP+sZlu0gHr0PZmwjL3O2LyiYPt
	tvGIeFoGRyhIdzJPhM/7R+ZWK8Xh2VfqfSjjJxFSponTwP/feakXaNOUi1jlsmhGo+X6m5ceVIl
	pGc9nWy2xc1t8XItetBtHjg2+MalJeL5f6rBAetKhLIRFfjzJhxV4BZIp+UNuxutUnhY8HdjHej
	/FoGWLS6ZBZjp8j5UQdHcwlKvU/QvJ4HfN+qFuuzqed90EnptF7n5rKt4GJNJ2hxTaRRg1hg5rA
	OVuDAQt6j6MaKC5Grna4+1TLnAJB6kog1lOM6mC9ZZpEbAXH0B+mHpVWeGX+5s7QrTprdb+W7b/
	xe4r8AGSdznuQjQr+nnTvr1z39x30hrixnTSMBrNswRoxQG7cr409yJhB9w==
X-Google-Smtp-Source: AGHT+IFjgDtM+zufJUov3IwSUqrG4kt+Kcdsdk5QAji3aSioYq/aK4g92LBlx0K2i9H85tVTe4zcLw==
X-Received: by 2002:a05:6808:1b89:b0:441:8f74:e8c with SMTP id 5614622812f47-4418f741cb4mr1510593b6e.54.1760047102653;
        Thu, 09 Oct 2025 14:58:22 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4419895119bsm180889b6e.21.2025.10.09.14.58.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:58:21 -0700 (PDT)
Date: Thu, 9 Oct 2025 16:58:19 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 8/8] man/man4/console_codes.4: ffix
Message-ID: <20251009215819.o5yc7y5pv3hmzgzu@illithid>
References: <20251009215344.tcknw7iexu3kbhnm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2yjjvdsofinoul4b"
Content-Disposition: inline
In-Reply-To: <20251009215344.tcknw7iexu3kbhnm@illithid>


--2yjjvdsofinoul4b
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [PATCH 8/8] man/man4/console_codes.4: ffix
MIME-Version: 1.0

Disable adjustment in all tbl(1) text blocks whose entries break using a
line length of 65 ens (the historical *roff default and practical
minimum).

Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
---
 man/man4/console_codes.4 | 47 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 04723c01e..4abc97d9b 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -135,11 +135,13 @@ .SS Linux console controls
 T}
 ESC M	RI	Reverse linefeed.
 ESC Z	DECID	T{
+.na
 DEC private identification.
 The kernel returns the string ESC [ ? 6 c,
 claiming that it is a VT102.
 T}
 ESC 7	DECSC	T{
+.na
 Save current state
 (cursor coordinates,
 attributes,
@@ -152,6 +154,7 @@ .SS Linux console controls
 .T&
 l l ax.
 ESC % @		T{
+.na
 Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
 T}
 ESC % G		Select UTF-8
@@ -159,9 +162,11 @@ .SS Linux console controls
 .T&
 l l lx.
 ESC # 8	DECALN	T{
+.na
 DEC screen alignment test \- fill screen with E's.
 T}
 ESC (		T{
+.na
 Start sequence defining G0 character set
 (followed by one of B, 0, U, K, as below)
 T}
@@ -172,13 +177,16 @@ .SS Linux console controls
 Select VT100 graphics mapping.
 T}
 ESC ( U		T{
+.na
 Select null mapping \- straight to character ROM.
 T}
 ESC ( K		T{
+.na
 Select user mapping \- the map that is loaded by the utility
 .BR mapscrn (8).
 T}
 ESC )		T{
+.na
 Start sequence defining G1 (followed by one of B, 0, U, K, as above).
 T}
 ESC >	DECPNM	Set numeric keypad mode
@@ -188,6 +196,7 @@ .SS Linux console controls
 T}
 ESC ] R		Reset palette.
 ESC ] P		T{
+.na
 Set palette, with parameter given in 7 hexadecimal digits
 .I nrrggbb
 after the final P.
@@ -233,32 +242,41 @@ .SS Linux console controls
 Move cursor left the indicated # of columns.
 T}
 E	CNL	T{
+.na
 Move cursor down the indicated # of rows, to column 1.
 T}
 F	CPL	T{
+.na
 Move cursor up the indicated # of rows, to column 1.
 T}
 G	CHA	T{
+.na
 Move cursor to indicated column in current row.
 T}
 H	CUP	T{
+.na
 Move cursor to the indicated row, column (origin at 1,1).
 T}
 J	ED	T{
+.na
 Erase display (default: from cursor to end of display).
 T}
 		T{
+.na
 ESC [ 1 J: erase from start to cursor.
 T}
 		T{
+.na
 ESC [ 2 J: erase whole display.
 T}
 		T{
+.na
 ESC [ 3 J: erase whole display including scroll-back
 buffer (since Linux 3.0).
 T}
 .\" ESC [ 3 J: commit f8df13e0a901fe55631fed66562369b4dba40f8b
 K	EL	T{
+.na
 Erase line (default: from cursor to end of line).
 T}
 		T{
@@ -274,9 +292,11 @@ .SS Linux console controls
 Delete the indicated # of lines.
 T}
 P	DCH	T{
+.na
 Delete the indicated # of characters on current line.
 T}
 X	ECH	T{
+.na
 Erase the indicated # of characters on current line.
 T}
 a	HPR	T{
@@ -286,6 +306,7 @@ .SS Linux console controls
 Answer ESC [ ? 6 c: "I am a VT102".
 T}
 d	VPA	T{
+.na
 Move cursor to the indicated row, current column.
 T}
 e	VPR	T{
@@ -295,6 +316,7 @@ .SS Linux console controls
 Move cursor to the indicated row, column.
 T}
 g	TBC	T{
+.na
 Without parameter: clear tab stop at current position.
 T}
 		T{
@@ -310,12 +332,14 @@ .SS Linux console controls
 		ESC [ 2 q: set Num Lock LED
 		ESC [ 3 q: set Caps Lock LED
 r	DECSTBM	T{
+.na
 Set scrolling region;
 parameters are top and bottom row.
 T}
 s	SCOSC	Save cursor location.
 u	SCORC	Restore cursor location.
 \`	HPA	T{
+.na
 Move cursor to indicated column in current row.
 T}
 .TE
@@ -339,12 +363,15 @@ .SS Linux console controls
 T}
 1	set bold
 2	T{
+.na
 set half-bright (simulated with color on a color display)
 T}
 3	T{
+.na
 set italic (since Linux 2.6.22; simulated with color on a color display)
 T}
 4	T{
+.na
 set underscore (simulated with color on a color display)
 (the colors used to simulate dim or underline are set
 using ESC ] ...)
@@ -352,14 +379,17 @@ .SS Linux console controls
 5	set blink
 7	set reverse video
 10	T{
+.na
 reset selected mapping, display control flag,
 and toggle meta flag (ECMA-48 says "primary font").
 T}
 11	T{
+.na
 select null mapping, set display control flag,
 reset toggle meta flag (ECMA-48 says "first alternate font").
 T}
 12	T{
+.na
 select null mapping, set display control flag,
 set toggle meta flag (ECMA-48 says "second alternate font").
 The toggle meta flag
@@ -367,6 +397,7 @@ .SS Linux console controls
 before the mapping table translation is done.
 T}
 21	T{
+.na
 set underline;
 before Linux 4.17,
 this value set normal intensity
@@ -386,10 +417,12 @@ .SS Linux console controls
 36	set cyan foreground
 37	set white foreground
 38	T{
+.na
 256/24-bit foreground color follows, shoehorned into 16 basic colors
 (before Linux 3.16: set underscore on, set default foreground color)
 T}
 39	T{
+.na
 set default foreground color
 (before Linux 3.16: set underscore off, set default foreground color)
 T}
@@ -402,6 +435,7 @@ .SS Linux console controls
 46	set cyan background
 47	set white background
 48	T{
+.na
 256/24-bit background color follows, shoehorned into 8 basic colors
 T}
 49	set default background color
@@ -409,6 +443,7 @@ .SS Linux console controls
 set foreground to bright versions of 30..37
 T}
 100..107	T{
+.na
 set background, same as 40..47 (bright not supported)
 T}
 .TE
@@ -418,10 +453,12 @@ .SS Linux console controls
 .TS
 l lx.
 ;5;x	T{
+.na
 256 color: values 0..15 are IBGR (black, red, green, ..., white),
 16..231 a 6x6x6 color cube, 232..255 a grayscale ramp
 T}
 ;2;r;g;b	T{
+.na
 24-bit color, r/g/b components are in the range 0..255
 T}
 .TE
@@ -530,6 +567,7 @@ .SS Linux console controls
 Set color \f[I]n\f[] as the dim color.
 T}
 ESC [ 8 ]	T{
+.na
 Make the current color pair the default attributes.
 T}
 ESC [ 9 ; \f[I]n\f[] ]	T{
@@ -550,13 +588,16 @@ .SS Linux console controls
 Unblank the screen.
 T}
 ESC [ 14 ; \f[I]n\f[] ]	T{
+.na
 Set the VESA powerdown interval in minutes.
 T}
 ESC [ 15 ]	T{
+.na
 Bring the previous console to the front
 (since Linux 2.6.0).
 T}
 ESC [ 16 ; \f[I]n\f[] ]	T{
+.na
 Set the cursor blink interval in milliseconds
 (since Linux 4.2).
 T}
@@ -703,10 +744,12 @@ .SS Comparisons with other terminals
 .TS
 l l lx.
 ESC N	SS2	T{
+.na
 Single shift 2.
 (Select G2 character set for the next character only.)
 T}
 ESC O	SS3	T{
+.na
 Single shift 3.
 (Select G3 character set for the next character only.)
 T}
@@ -747,6 +790,7 @@ .SS Comparisons with other terminals
 .TS
 l l.
 ESC ] 0 ; \f[I]txt\f[] ST	T{
+.na
 Set icon name and window title to
 .IR txt .
 T}
@@ -755,6 +799,7 @@ .SS Comparisons with other terminals
 ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \f[=
I]txt\f[].
 ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
 ESC ] 4 6 ; \f[I]name\f[] ST	T{
+.na
 Change log file to
 .I name
 (normally disabled by a compile-time option).
@@ -776,6 +821,7 @@ .SS Comparisons with other terminals
 .TS
 l l lx.
 ESC F		T{
+.na
 Cursor to lower left corner of screen (if enabled
 by
 .BR xterm (1)'s
@@ -783,6 +829,7 @@ .SS Comparisons with other terminals
 resource).
 T}
 ESC l		T{
+.na
 Memory lock (per HP terminals).
 Locks memory above the cursor.
 T}
--=20
2.30.2

--2yjjvdsofinoul4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjoL/sACgkQ0Z6cfXEm
bc4b2Q//X+R/anX7V7xCEB0xnuj8Yd3+lT4T+FdBu+ehzVkiczD+gaqorTN8UpQ3
f0H9dl2oJfaJ5dYb2mPBt8tGUksba+4FHRQqo5sayjalhUXGY3TuuC4s/M5BHAlF
QDAETj8uSxxPqM0ox0y/JAvsznsgFIDyFHDtybZt+beaYuAvaxQczOZE9Ar6SI5y
xTSlX3J/CDLL0F6lI1P9zKA0Kew7T4Ki1AhYljZRRPoGSCpZYEharYBuULlRw3hj
1ExTr2JkRk24oXuCdLLpvtxFALwVgNz57EU1poZAYMJrefzRoxcpwaR34rY6NQL4
fPTX4CkVoIMFUo8zqyrmAbRrYY8tslAnhcaFH2eoLjsBNrftnKVy3uxzkoqMPWYs
22LDgaiBUSy8InXRrP5LoOpQwt//E2ExqxXOY+aQdkKpmb1UBsvCHTlDKhfvqwG3
3wOdieatf2TDJNkIz3xN065HUmW6uQ7u1fxRitYuCRd7AW0Ic+s0MDplGJcdWt4o
2DycaapHvwlrM5Sesm0gipWoZyzlSDgVptSJF3YPKkot3ZgxWic8HFyeKRqUsbb6
/61QZ7uMP6gOrJtt57yKkG63G4/zM+xDxaKB2KwFC9ehRzHTKxNN/EtZ6vZiyBmu
RiGJznysEbGzgUNyU1f7PQNN4ZMGBv1kqhmi433PvW775QB8dOk=
=Vphs
-----END PGP SIGNATURE-----

--2yjjvdsofinoul4b--

