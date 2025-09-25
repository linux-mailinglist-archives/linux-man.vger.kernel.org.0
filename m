Return-Path: <linux-man+bounces-3985-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AECDBA1BE1
	for <lists+linux-man@lfdr.de>; Fri, 26 Sep 2025 00:10:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC93E1C264F0
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 22:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D888235358;
	Thu, 25 Sep 2025 22:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZBUREoiz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B81022A7F1
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 22:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758838220; cv=none; b=OMuL3emwJmky25sbPmakN4FuwfOZeh9YI76d8a4GNWpBZeH5fIwchZt3EijG2jVXiHH0H4vUlv6tuab1VSruX4S0p8Q35X7VJvtJonGVtFKxhZFwpVGoQIS+Bk0pdFjxMm//iCaJbsOX44k/7ahV2Sn3qw9J4+e+469Tuu6QJA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758838220; c=relaxed/simple;
	bh=EP0c3tsWWJzGQxDtQqGpvQc26hlkv6yGQI5AvZkb4ec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YLvZXxv9ju969MU1382m/5hzwQS/qb7ZYsufB1shuTHTtdkT8kKuEpz1mXLbrXDLmln1gnEBbh6Emr1/24VHJWVEoE1EN1Eo7nc7UxmRnLqebJJzZtEgeSHxKwMhYWAlfYMyGQZNHsI+9ytLX1RYzKyUyHtccK5cfmvt+yCAxHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZBUREoiz; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-71d603b674aso14663837b3.1
        for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 15:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758838216; x=1759443016; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m64wMBOt50+mbupI0HSQ5lyEvgeTmR+emtMmksD3A0k=;
        b=ZBUREoizfDJhFI9E6N6hb5TEzFk1x7CaKzCzX080B6bgncrBHJjmtcdPHPlhwH2ilN
         t4BjaOpj0W1Cr19ZhJvztDbRXXAaQrPrHPKTJBSSKEhtcQ+iQPn72YelAsXtpzTvnqx3
         V6JynhZ99jtYYvjzsAbfltuWgme7Uzsn3INPEaagivfwa+mivSbXTT7dbiEVZtqhkq72
         lWjRWQJQnjhGeEzAPzcshwfN6ukNE+lgYH4G9taRZO5gUIeruVFrvRgn7YJu3IEDvIJp
         JjG3T4PHsyLrofjqYUbdUCrMw3hy+C07p31+Kp5X6LmSUG07+Vp7nlJXgc8q/O65qP74
         YTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758838216; x=1759443016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m64wMBOt50+mbupI0HSQ5lyEvgeTmR+emtMmksD3A0k=;
        b=i0Mwr7NdqL4r/CvWUzIlyoDBshps9jAEqt6rmvh83V9Yh41ZkvFXVU/CObf0Q1pZWj
         6qah2wPTXfKP86q2vHOOunSp/XrAwH3h+Rn196L7teUhwGlE+8gWBLjW/9hzUMp2msCG
         0yEXq7OW854jP5z5BdSquXex69OQQyxs+WaiKw/vDJiCKpVHHSF3CyHhHAivE+Uue48+
         exnkclflOzaNiviGiACTZsDu78ABV95RjJnSDu7fuq/RO+Aclj/6wQDkIzEYctc9Dg7Q
         8Hw++m9tYIw3beohC95GbcYn+3rVgx8ZughlSiMFbogK+rSD1XjvkneEgKUF/CXEjs9U
         c62g==
X-Gm-Message-State: AOJu0YwzZ56xHNsjCuINmZ02wbwwrHnuusgUdfToh48z1d6Zi9VN4o7y
	WBWLw6STsLurqHtu57h/uhhJgLMDBey21vWdISYsVjQv/fuAJnPZdC3ROKmDEQ==
X-Gm-Gg: ASbGncsAqS/E6fcfWgejKjSwmawcodRZOtVqhdamPKnwPhGk0ENOEMJuFXv3TnzOCnT
	e49XXGDJORLslJXHxaIP7Z4r//0mpsdXnjGAarXE9y/lFvEsEJh4VICc4Q3ODcE00EEAeXc5dmS
	lgCX9S6F4CX98cG+w2CMFaba7sN1Smt2EiCUumsdQDRp3Qh9u7MAZfoZur87IyZicC+ybE9X3Om
	g06kut+HNB+aSJVchtuZbwKAvBaWJAYk0mF29ZqDOhhRk81RdRqEp4TofOxCTuYbJQuP9SkekXG
	u72RcY6EXOWKnc2mhBzNBNTGm8vRZ/wwZr6gLSoe+jvRW9FfcuRNmAKcp+smVpOOwwYd+UC9wjd
	73oswGN3ht46O
X-Google-Smtp-Source: AGHT+IEkvcrjQDvIU/zcv9oUj1lhTeZY7emLG8WOp5fNh6wZ1WFZeoD3FGL7DH+Mv0/wTe/yXHBFgQ==
X-Received: by 2002:a05:690c:9b04:b0:740:3210:6a9 with SMTP id 00721157ae682-763fb38c4efmr56576797b3.23.1758838215208;
        Thu, 25 Sep 2025 15:10:15 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6361e8c25dasm853986d50.4.2025.09.25.15.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 15:10:14 -0700 (PDT)
Date: Thu, 25 Sep 2025 17:10:12 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: Re: tbl(1) issues in console_codes(4)
Message-ID: <20250925221012.lss5ixmixnqrnrwq@illithid>
References: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5p6uabexvv5ynr4y"
Content-Disposition: inline
In-Reply-To: <xl24ubmnak3ygqgnlh74z6gry4vi7dssvmuo2itsud6y3lirrd@cf74bnypoqmp>


--5p6uabexvv5ynr4y
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="flutc24vqrjhrru5"
Content-Disposition: inline
Subject: Re: tbl(1) issues in console_codes(4)
MIME-Version: 1.0


--flutc24vqrjhrru5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2025-09-25T11:36:37+0200, Alejandro Colomar wrote:
> I see some issues in console_codes(4), and I don't understand them.
> There are tables where groff(1) prints past the 80-col right margin,
> but I don't understand tbl(1) enough to understand why.  Could you
> help?

Sure.  By default, text formatted by tbl(1) is not filled.

tbl(1):
     Ordinarily, a table entry is typeset rigidly.  It is not filled,
     broken, hyphenated, adjusted, or populated with additional inter=E2=80=
=90
     sentence space.  tbl instructs the formatter to measure each table
     entry as it occurs in the input, updating the width required by its
     corresponding column.

If you want to avoid overset lines with tbl(1), you must either

1.  pre-measure them so as not to exceed some reasonable minimum (for
    man pages, I recommend "65n" for consistency with historical
    practice and to accommodate low-vision users and others who might
    benefit from or prefer fewer characters per line than the
    groff/mandoc defaults of 78-80n;[1][2] or

2.  use text blocks.

tbl(1):
   Text blocks
     An ordinary table entry=E2=80=99s contents can make a column, and ther=
efore
     the table, excessively wide; the table then exceeds the line length
     of the page, and becomes ugly or is exposed to truncation by the
     output device.  When a table entry requires more conventional
     typesetting, breaking across more than one output line (and thereby
     increasing the height of its row), it can be placed within a text
     block.

     tbl interprets a table entry of =E2=80=9CT{=E2=80=9D at the end of an =
input line
     specially, as a token starting a text block.  Similarly, an entry
     =E2=80=9CT}=E2=80=9D at the start of an input line ends a text block. =
 Text block
     tokens can share an input line with other table data (preceding T{
     and following T}).  Input lines between these tokens are formatted
     in a diversion by troff.  Text blocks cannot be nested.  Multiple
     text blocks can occur in a table row.

     ...

> 	$ MANWIDTH=3D80 man console_codes \
> 		| grep -n '.\{81\}' -C5 \
> 		| head -n 20;
> 	<standard input>:327: warning: table wider than line length minus indent=
ation
> 	197-       terminator) is interpreted as a zero.
> 	198-       param      result
> 	199-       0          reset all attributes to their defaults
> 	200-       1          set bold
> 	201-       2          set half-bright (simulated with color on a color d=
isplay)
> 	202:       3          set italic (since Linux 2.6.22; simulated with col=
or on a color display)
> 	203:       4          set underscore (simulated with color on a color di=
splay) (the colors
> 	204-                  used to simulate dim or underline are set using ES=
C ] ...)
> 	205-       5          set blink
> 	206-       7          set reverse video
> 	207:       10         reset selected mapping, display control flag, and =
toggle meta flag
> 	208-                  (ECMA-48 says "primary font").
> 	209:       11         select null mapping, set display control flag, res=
et toggle meta flag
> 	210-                  (ECMA-48 says "first alternate font").
> 	211:       12         select null mapping, set display control flag, set=
 toggle meta flag
> 	212:                  (ECMA-48 says "second alternate font").  The toggl=
e meta flag causes the
> 	213:                  high bit of a byte to be toggled before the mappin=
g table translation is
> 	214-                  done.
> 	215:       21         set underline; before Linux 4.17, this value set n=
ormal intensity (as is
> 	216-                  done in many other terminals)

I would format the document with `MANWIDTH=3D65` and, for any line that
still oversets, stuff the descriptive table entry into a text block.

Consulting my Git checkout of `man-pages`, I see that while some entries
in this table use text blocks, others don't.

$ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{66}' |=
 wc -l
man4/console_codes.4:130: warning: table wider than line length minus inden=
tation
man4/console_codes.4:330: warning: table wider than line length minus inden=
tation
29

Those warnings will be wanting attention.  Also, I noticed that some of
the table entries overset _even though_ they're already _in_ text
blocks.  How is this possible?

Recall the introduction to tbl(1) above:

tbl(1):
     tbl instructs the formatter to measure each table entry as it
     occurs in the input, updating the width required by its
     corresponding column.

We need one more piece of information--the description of the `x` column
option that (most of) the tables in this page use for their description
columns.

tbl(1):
   Column modifiers
=2E..
     x, X   Expand the column.  After computing the column widths,
            distribute any remaining line length evenly over all columns
            bearing this modifier.  Applying the x modifier to more than
            one column is a GNU extension.  This modifier sets the
            default line length used in a text block.

Consider that final sentence.

If you have one non-text-block entry that oversets the line, and use the
`x` table modifier, all your text blocks in that column of the table use
the width determined by the one that caused the overset.

And that's what's happening here.

Fixing up a couple of spots where text blocks should have been used but
weren't (diff attached), I get the following result.

$ nroff -t -rLL=3D65n -man -P-cbou man4/console_codes.4 | grep -E '.{66}'\
    | wc -l
0

I made several other changes to fix things that drive me crazy.  Most
are cosmetic.

1.  Stop using `ad` requests.  They don't do what people think.[3]
    However, _do_ use `na` requests _inside text blocks_ where necessary
    to defeat adjustment, because they work reliably there, and cannot
    damage the rest of the page.[5]

2.  Add paragraph macros before tables so that they set like
    typographical "displays".  This is common (if not universal)
    practice, sometimes done already in the Linux man-pages[6] and I
    think it looks better.

3.  Add missing `x` column modifier to the descriptive column of the
    "VT100 console sequences not implemented on the Linux console"
    table.

4.  Spell out column heading "param" as a complete word, "parameter".
    To me, it makes little sense to abbreviate it when one of the
    entries in its column is "100..107" anyway.

5.  Remove trailing spaces from entries in the "Linux Console Private
    CSI Sequences" table.  This makes more efficient use of space and,
    for some screen widths, permits more table rows to fit on the line.

6.  Document the names of the "ESC s" and "ESC u" extension controls.
    This one is non-cosmetic.

7.  Stop using `\0` escape sequences to achieve indentation of table
    entries; favor `\ ` (an unbreakable space) instead.  We're not
    laying out numeric data, and both are universally portable.  We
    don't want to use groff's `\~` because we don't want these spaces to
    adjust.  Really, we shouldn't be using space to indent table entries
    at all.  That's what the `A` column classifier is for.  Using `A`
    brings the additional advantage that if a text block is in a column
    using that classifier, and it breaks, subsequent lines are indented
    the same as the first.  This advantage is unavailable with `\0`
    or `\ ` because you don't know in the document source what the width
    (line length) of the output device will be.  In fact, I'll attach a
    second version of the diff capturing that reform too.

The page renders fine for me now, at 65 columns and wider.

I figure you'll want these broken up into separate chunks for a proper
patch submission, so let me know which of the enumerated items you want
and how finely to slice the changes.

Regards,
Branden

[1] https://baymard.com/blog/line-length-readability

[2] Why "78-80"?  From the "NEWS" file of the forthcoming groff 1.24.0:

*  The an (man), doc (mdoc), and doc-old (mdoc-old) macro packages have
   changed the default line length when formatting on terminals from 78n
   to 80n.  The latter is a vastly more common device configuration, but
   that line length had been avoided since the groff 1.18 release in
   July 2002 (prior to that, the line length was 65n, as in AT&T nroff),
   for an undocumented reason.  That reason appears to have been the
   interaction of bugs in GNU tbl(1) with an aspect of grotty(1)'s
   design.  Those bugs have been resolved.  A man(1) program can still
   instruct groff to format for any desired line length by setting the
   `LL` register on {g,n,t}roff's command line.

[3] https://cgit.git.savannah.gnu.org/cgit/groff.git/tree/tmac/an.tmac?id=
=3D05036f82e9b09e026bbd8fa0504211a32a85fb62#n156

[4] tbl(1):

     Text blocks are formatted as was the text prior to the table,
     modified by applicable column descriptors.  Specifically, the
     classifiers A, C, L, N, R, and S determine a text block=E2=80=99s alig=
nment
     within its cell, but not its adjustment.  Add na or ad requests to
     the beginning of a text block to alter its adjustment distinctly
     from other text in the document.  As with other table entries, when
     a text block ends, any alterations to formatting parameters are
     discarded.  They do not affect subsequent table entries, not even
     other text blocks.

[5] It groff 1.24.0, the _man_ package will perform a "paragraph reset"
    at every `P` macro call (and several others), restoring the
    adjustment and hyphenation mode defaults.

    https://savannah.gnu.org/bugs/?67363

[6] socketcall(2), TIOCMSET(2const), strfromd(3), double_t(3type),
    mouse(4), mount_namespaces(7), namespaces(7), operator(7),
    signal-safety(7), suffixes(7)

--flutc24vqrjhrru5
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="console_codes-for-alex-1.diff"

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index adfe6c9b6..2c35caf37 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -124,20 +124,24 @@ .SS Linux console controls
 is equivalent to ESC [.
 .P
 .B "ESC- but not CSI-sequences"
-.ad l
+.P
 .TS
 l l lx.
 ESC c	RIS	Reset.
 ESC D	IND	Linefeed.
 ESC E	NEL	Newline.
-ESC H	HTS	Set tab stop at current column.
+ESC H	HTS	T{
+Set tab stop at current column.
+T}
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
@@ -147,13 +151,22 @@ .SS Linux console controls
 Restore state most recently saved by ESC 7.
 T}
 ESC %		Start sequence selecting character set
-ESC % @		\0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
-ESC % G		\0\0\0Select UTF-8
-ESC % 8		\0\0\0Select UTF-8 (obsolete)
+.\"T&
+.\"l l ax.
+ESC % @		T{
+.na
+\ \ \ Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
+T}
+ESC % G		\ \ \ Select UTF-8
+ESC % 8		\ \ \ Select UTF-8 (obsolete)
+.\"T&
+.\"l l lx.
 ESC # 8	DECALN	T{
+.na
 DEC screen alignment test \- fill screen with E's.
 T}
 ESC (		T{
+.na
 Start sequence defining G0 character set
 (followed by one of B, 0, U, K, as below)
 T}
@@ -164,13 +177,16 @@ .SS Linux console controls
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
@@ -180,6 +196,7 @@ .SS Linux console controls
 T}
 ESC ] R		Reset palette.
 ESC ] P		T{
+.na
 Set palette, with parameter given in 7 hexadecimal digits
 .I nrrggbb
 after the final P.
@@ -192,7 +209,6 @@ .SS Linux console controls
 the red/green/blue values (0\[en]255).
 T}
 .TE
-.ad
 .P
 .B "ECMA-48 CSI sequences"
 .P
@@ -207,7 +223,7 @@ .SS Linux console controls
 (The idea is to ignore an echoed function key.)
 .P
 The action of a CSI sequence is determined by its final character.
-.ad l
+.P
 .TS
 l l lx.
 @	ICH	T{
@@ -226,32 +242,41 @@ .SS Linux console controls
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
@@ -267,9 +292,11 @@ .SS Linux console controls
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
@@ -279,6 +306,7 @@ .SS Linux console controls
 Answer ESC [ ? 6 c: "I am a VT102".
 T}
 d	VPA	T{
+.na
 Move cursor to the indicated row, current column.
 T}
 e	VPR	T{
@@ -288,6 +316,7 @@ .SS Linux console controls
 Move cursor to the indicated row, column.
 T}
 g	TBC	T{
+.na
 Without parameter: clear tab stop at current position.
 T}
 		T{
@@ -303,16 +332,17 @@ .SS Linux console controls
 		ESC [ 2 q: set Num Lock LED
 		ESC [ 3 q: set Caps Lock LED
 r	DECSTBM	T{
+.na
 Set scrolling region;
 parameters are top and bottom row.
 T}
-s	?	Save cursor location.
-u	?	Restore cursor location.
+s	SCOSC	Save cursor location.
+u	SCORC	Restore cursor location.
 \`	HPA	T{
+.na
 Move cursor to indicated column in current row.
 T}
 .TE
-.ad
 .P
 .B ECMA-48 Select Graphic Rendition
 .P
@@ -324,19 +354,24 @@ .SS Linux console controls
 semicolons.
 An empty parameter (between semicolons or string initiator or
 terminator) is interpreted as a zero.
-.ad l
+.P
 .TS
 l lx.
-param	result
+parameter	result
 0	T{
 reset all attributes to their defaults
 T}
 1	set bold
 2	T{
+.na
 set half-bright (simulated with color on a color display)
 T}
-3	set italic (since Linux 2.6.22; simulated with color on a color display)
+3	T{
+.na
+set italic (since Linux 2.6.22; simulated with color on a color display)
+T}
 4	T{
+.na
 set underscore (simulated with color on a color display)
 (the colors used to simulate dim or underline are set
 using ESC ] ...)
@@ -344,14 +379,17 @@ .SS Linux console controls
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
@@ -359,6 +397,7 @@ .SS Linux console controls
 before the mapping table translation is done.
 T}
 21	T{
+.na
 set underline;
 before Linux 4.17,
 this value set normal intensity
@@ -378,10 +417,12 @@ .SS Linux console controls
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
@@ -394,6 +435,7 @@ .SS Linux console controls
 46	set cyan background
 47	set white background
 48	T{
+.na
 256/24-bit background color follows, shoehorned into 8 basic colors
 T}
 49	set default background color
@@ -401,19 +443,22 @@ .SS Linux console controls
 set foreground to bright versions of 30..37
 T}
 100..107	T{
+.na
 set background, same as 40..47 (bright not supported)
 T}
 .TE
-.ad
 .P
 Commands 38 and 48 require further arguments:
+.P
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
@@ -512,6 +557,7 @@ .SS Linux console controls
 6 = cyan,
 7 = white;
 8\[en]15 = bright versions of 0\[en]7.
+.P
 .TS
 l lx.
 ESC [ 1 ; \f[I]n\f[] ]	T{
@@ -520,7 +566,8 @@ .SS Linux console controls
 ESC [ 2 ; \f[I]n\f[] ]	T{
 Set color \f[I]n\f[] as the dim color.
 T}
-ESC [ 8 ]       	T{
+ESC [ 8 ]	T{
+.na
 Make the current color pair the default attributes.
 T}
 ESC [ 9 ; \f[I]n\f[] ]	T{
@@ -537,17 +584,20 @@ .SS Linux console controls
 ESC [ 12 ; \f[I]n\f[] ]	T{
 Bring specified console to the front.
 T}
-ESC [ 13 ]      	T{
+ESC [ 13 ]	T{
 Unblank the screen.
 T}
-ESC [ 14 ; \f[I]n\f[] ]   	T{
+ESC [ 14 ; \f[I]n\f[] ]	T{
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
@@ -690,13 +740,16 @@ .SS Comparisons with other terminals
 .B Escape sequences
 .P
 VT100 console sequences not implemented on the Linux console:
+.P
 .TS
-l l l.
+l l lx.
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
@@ -733,9 +786,11 @@ .SS Comparisons with other terminals
 accepts a BEL to terminate an OSC string.
 These are a few of the OSC control sequences recognized by
 .BR xterm (1):
+.P
 .TS
 l l.
 ESC ] 0 ; \f[I]txt\f[] ST	T{
+.na
 Set icon name and window title to
 .IR txt .
 T}
@@ -744,6 +799,7 @@ .SS Comparisons with other terminals
 ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \f[I]txt\f[].
 ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
 ESC ] 4 6 ; \f[I]name\f[] ST	T{
+.na
 Change log file to
 .I name
 (normally disabled by a compile-time option).
@@ -753,6 +809,7 @@ .SS Comparisons with other terminals
 .P
 It recognizes the following with slightly modified meaning
 (saving more state, behaving closer to VT100/VT220):
+.P
 .TS
 l l l.
 ESC 7  DECSC	Save cursor
@@ -760,17 +817,22 @@ .SS Comparisons with other terminals
 .TE
 .P
 It also recognizes
+.P
 .TS
 l l lx.
 ESC F		T{
+.na
 Cursor to lower left corner of screen (if enabled
 by
 .BR xterm (1)'s
 .B hpLowerleftBugCompat
 resource).
 T}
-ESC l		Memory lock (per HP terminals).
-		Locks memory above the cursor.
+ESC l		T{
+.na
+Memory lock (per HP terminals).
+Locks memory above the cursor.
+T}
 ESC m		Memory unlock (per HP terminals).
 ESC n	LS2	Invoke the G2 character set.
 ESC o	LS3	Invoke the G3 character set.

--flutc24vqrjhrru5
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="console_codes-for-alex-2.diff"

diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index adfe6c9b6..4abc97d9b 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -124,20 +124,24 @@ .SS Linux console controls
 is equivalent to ESC [.
 .P
 .B "ESC- but not CSI-sequences"
-.ad l
+.P
 .TS
 l l lx.
 ESC c	RIS	Reset.
 ESC D	IND	Linefeed.
 ESC E	NEL	Newline.
-ESC H	HTS	Set tab stop at current column.
+ESC H	HTS	T{
+Set tab stop at current column.
+T}
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
@@ -147,13 +151,22 @@ .SS Linux console controls
 Restore state most recently saved by ESC 7.
 T}
 ESC %		Start sequence selecting character set
-ESC % @		\0\0\0Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
-ESC % G		\0\0\0Select UTF-8
-ESC % 8		\0\0\0Select UTF-8 (obsolete)
+.T&
+l l ax.
+ESC % @		T{
+.na
+Select default (ISO/IEC\~646 / ISO/IEC\~8859-1)
+T}
+ESC % G		Select UTF-8
+ESC % 8		Select UTF-8 (obsolete)
+.T&
+l l lx.
 ESC # 8	DECALN	T{
+.na
 DEC screen alignment test \- fill screen with E's.
 T}
 ESC (		T{
+.na
 Start sequence defining G0 character set
 (followed by one of B, 0, U, K, as below)
 T}
@@ -164,13 +177,16 @@ .SS Linux console controls
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
@@ -180,6 +196,7 @@ .SS Linux console controls
 T}
 ESC ] R		Reset palette.
 ESC ] P		T{
+.na
 Set palette, with parameter given in 7 hexadecimal digits
 .I nrrggbb
 after the final P.
@@ -192,7 +209,6 @@ .SS Linux console controls
 the red/green/blue values (0\[en]255).
 T}
 .TE
-.ad
 .P
 .B "ECMA-48 CSI sequences"
 .P
@@ -207,7 +223,7 @@ .SS Linux console controls
 (The idea is to ignore an echoed function key.)
 .P
 The action of a CSI sequence is determined by its final character.
-.ad l
+.P
 .TS
 l l lx.
 @	ICH	T{
@@ -226,32 +242,41 @@ .SS Linux console controls
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
@@ -267,9 +292,11 @@ .SS Linux console controls
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
@@ -279,6 +306,7 @@ .SS Linux console controls
 Answer ESC [ ? 6 c: "I am a VT102".
 T}
 d	VPA	T{
+.na
 Move cursor to the indicated row, current column.
 T}
 e	VPR	T{
@@ -288,6 +316,7 @@ .SS Linux console controls
 Move cursor to the indicated row, column.
 T}
 g	TBC	T{
+.na
 Without parameter: clear tab stop at current position.
 T}
 		T{
@@ -303,16 +332,17 @@ .SS Linux console controls
 		ESC [ 2 q: set Num Lock LED
 		ESC [ 3 q: set Caps Lock LED
 r	DECSTBM	T{
+.na
 Set scrolling region;
 parameters are top and bottom row.
 T}
-s	?	Save cursor location.
-u	?	Restore cursor location.
+s	SCOSC	Save cursor location.
+u	SCORC	Restore cursor location.
 \`	HPA	T{
+.na
 Move cursor to indicated column in current row.
 T}
 .TE
-.ad
 .P
 .B ECMA-48 Select Graphic Rendition
 .P
@@ -324,19 +354,24 @@ .SS Linux console controls
 semicolons.
 An empty parameter (between semicolons or string initiator or
 terminator) is interpreted as a zero.
-.ad l
+.P
 .TS
 l lx.
-param	result
+parameter	result
 0	T{
 reset all attributes to their defaults
 T}
 1	set bold
 2	T{
+.na
 set half-bright (simulated with color on a color display)
 T}
-3	set italic (since Linux 2.6.22; simulated with color on a color display)
+3	T{
+.na
+set italic (since Linux 2.6.22; simulated with color on a color display)
+T}
 4	T{
+.na
 set underscore (simulated with color on a color display)
 (the colors used to simulate dim or underline are set
 using ESC ] ...)
@@ -344,14 +379,17 @@ .SS Linux console controls
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
@@ -359,6 +397,7 @@ .SS Linux console controls
 before the mapping table translation is done.
 T}
 21	T{
+.na
 set underline;
 before Linux 4.17,
 this value set normal intensity
@@ -378,10 +417,12 @@ .SS Linux console controls
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
@@ -394,6 +435,7 @@ .SS Linux console controls
 46	set cyan background
 47	set white background
 48	T{
+.na
 256/24-bit background color follows, shoehorned into 8 basic colors
 T}
 49	set default background color
@@ -401,19 +443,22 @@ .SS Linux console controls
 set foreground to bright versions of 30..37
 T}
 100..107	T{
+.na
 set background, same as 40..47 (bright not supported)
 T}
 .TE
-.ad
 .P
 Commands 38 and 48 require further arguments:
+.P
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
@@ -512,6 +557,7 @@ .SS Linux console controls
 6 = cyan,
 7 = white;
 8\[en]15 = bright versions of 0\[en]7.
+.P
 .TS
 l lx.
 ESC [ 1 ; \f[I]n\f[] ]	T{
@@ -520,7 +566,8 @@ .SS Linux console controls
 ESC [ 2 ; \f[I]n\f[] ]	T{
 Set color \f[I]n\f[] as the dim color.
 T}
-ESC [ 8 ]       	T{
+ESC [ 8 ]	T{
+.na
 Make the current color pair the default attributes.
 T}
 ESC [ 9 ; \f[I]n\f[] ]	T{
@@ -537,17 +584,20 @@ .SS Linux console controls
 ESC [ 12 ; \f[I]n\f[] ]	T{
 Bring specified console to the front.
 T}
-ESC [ 13 ]      	T{
+ESC [ 13 ]	T{
 Unblank the screen.
 T}
-ESC [ 14 ; \f[I]n\f[] ]   	T{
+ESC [ 14 ; \f[I]n\f[] ]	T{
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
@@ -690,13 +740,16 @@ .SS Comparisons with other terminals
 .B Escape sequences
 .P
 VT100 console sequences not implemented on the Linux console:
+.P
 .TS
-l l l.
+l l lx.
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
@@ -733,9 +786,11 @@ .SS Comparisons with other terminals
 accepts a BEL to terminate an OSC string.
 These are a few of the OSC control sequences recognized by
 .BR xterm (1):
+.P
 .TS
 l l.
 ESC ] 0 ; \f[I]txt\f[] ST	T{
+.na
 Set icon name and window title to
 .IR txt .
 T}
@@ -744,6 +799,7 @@ .SS Comparisons with other terminals
 ESC ] 4 ; \f[I]num\f[]; \f[I]txt\f[] ST	Set ANSI color \f[I]num\f[] to \f[I]txt\f[].
 ESC ] 10 ; \f[I]txt\f[] ST	Set dynamic text color to \f[I]txt\f[].
 ESC ] 4 6 ; \f[I]name\f[] ST	T{
+.na
 Change log file to
 .I name
 (normally disabled by a compile-time option).
@@ -753,6 +809,7 @@ .SS Comparisons with other terminals
 .P
 It recognizes the following with slightly modified meaning
 (saving more state, behaving closer to VT100/VT220):
+.P
 .TS
 l l l.
 ESC 7  DECSC	Save cursor
@@ -760,17 +817,22 @@ .SS Comparisons with other terminals
 .TE
 .P
 It also recognizes
+.P
 .TS
 l l lx.
 ESC F		T{
+.na
 Cursor to lower left corner of screen (if enabled
 by
 .BR xterm (1)'s
 .B hpLowerleftBugCompat
 resource).
 T}
-ESC l		Memory lock (per HP terminals).
-		Locks memory above the cursor.
+ESC l		T{
+.na
+Memory lock (per HP terminals).
+Locks memory above the cursor.
+T}
 ESC m		Memory unlock (per HP terminals).
 ESC n	LS2	Invoke the G2 character set.
 ESC o	LS3	Invoke the G3 character set.

--flutc24vqrjhrru5--

--5p6uabexvv5ynr4y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmjVvb0ACgkQ0Z6cfXEm
bc5ppxAAiVOFQP1GzEWEXYT2vLrrBUjKjdsOgmrdtUnPGlpz0GpuYf3bIJl3qC6o
MXITL8hagEjrOut26yXG6neop/tPksvP6xOpfPBp4QVSaca0N93EuuZLtgToPEff
4tVYXMW57CdlVPf/NoElZdHQX89+sN8SWDCFjagkL8lr82gG2zNnyrCW2LpxJdGH
TDMJl5+kfYUu8Ixxu6ixqUYHH+1z3T+MTYCEjEV7Zm2JtC/h/uNtxm33AEwxozOK
nPXch8ZAcOezwUKbgGsSciCACiTM8BnPA8Pq78eBPxDLvyNGscNjH4d0CQmlR6+u
dd084rnroYxYVexp0KGlgL/Kd57cCLpvyGv7oX6CFhneKZEJg9s+sC4VQsaK6nIv
XgtckGhASDeaAis+JftyC+gjmIA1OAX5RzZTr4REe6PZ+VyjwCkgsk69KGbNXG+r
eqvUaTvh0NEbZ0GYeEQTzI+x2ZiiKs6dZjgt/3hALtSZknSq1xovY3/tPPN6LNf4
AK+XJBEw+zsRBmfDE4iEdqSd1uRP9nF24d2KVzJhnhN/uBcJbQBwqTyfS9X0jp1s
IEDtgcTZ5X5o6Bjm7t34yWAtvDQ8GLkkEhRM3XJGvRHSXDXjFWCJSCXJgnVa+kTx
OcN5h2dlhzlQh2NCI4OhQRPYd6vKzxl8jf8jGlT+52xpe41AAgQ=
=XuUu
-----END PGP SIGNATURE-----

--5p6uabexvv5ynr4y--

