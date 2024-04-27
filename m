Return-Path: <linux-man+bounces-833-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 580618B4778
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 20:53:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07934281BC6
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 18:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F4DF3A29A;
	Sat, 27 Apr 2024 18:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b="WBiWSGMT"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ljabl.com (mail.ljabl.com [88.99.6.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CA62209B
	for <linux-man@vger.kernel.org>; Sat, 27 Apr 2024 18:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=88.99.6.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714243979; cv=none; b=sdxhfMYvs55Gf+PGpyt7rnckVei25qibpuKpI0sFr4Lq6UmDO64uIXeSbhlpK1TUky0ZmP8gu0tbjCMgRx0aA/k5dlfizDFIQlZdJQo1pOyq+id4/rtKbNhxsnSkgNLs1Awh5XMZtVT3c7w4ezrLMPSx5b36ZO43dSsBQOMIXlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714243979; c=relaxed/simple;
	bh=Dvk1n4fqd9IC68tBU1GHwHXAZC7cp8gInzprw0HG7pU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AJ3QaXn8un3Lfiz9fCv/PoqymornvaK7DueeB8iFO/k/Xs9PUW/TGB4c7ViVozCjuwVe4XKb4Ybk9xeQK9xPdy7X7mOXA30U373KT0/x4DkA7GfwGq/RE0UCCy9C6Ev0L2E/A3D/WmeOs5JClccFXvOcP6MP7Ana0gVQgRZx7CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com; spf=pass smtp.mailfrom=ljabl.com; dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b=WBiWSGMT; arc=none smtp.client-ip=88.99.6.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ljabl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
	t=1714243974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=h9XXpaEm+ljPrZmXKAaduNncrwyxPZ50LCJdMZ3zblQ=;
	b=WBiWSGMT2ep7eN4RQtk5ZXHRs6AMyFI4kiFUJ4j69/LfCPWnItK7wVSWfz679QtHgrsQlB
	qHkPVjDf8TM39mY8pyJiQIlefftIYuVvvW9wG3LkTsqaOOgYKhXK/cnyzbzulWQGP14PEG
	G42tNO4j5Ecf4vTpVklVHgvAF4mQbJ4=
Received: 
	by ljabl.com (OpenSMTPD) with ESMTPSA id 0fec3973 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sat, 27 Apr 2024 18:52:54 +0000 (UTC)
Received: 
	by fluorine (OpenSMTPD) with ESMTPA id 682c5607;
	Sat, 27 Apr 2024 20:52:54 +0200 (CEST)
Date: Sat, 27 Apr 2024 18:52:53 +0000
From: Lennart Jablonka <humm@ljabl.com>
To: Alexis <flexibeast@gmail.com>, groff <groff@gnu.org>
Cc: linux-man@vger.kernel.org
Subject: Re: man(7) <-> mdoc(7) (approximate) correspondence table?
Message-ID: <Zi1JhdEjj0ARXZlY@fluorine>
Mail-Followup-To: Alexis <flexibeast@gmail.com>, groff <groff@gnu.org>,
	linux-man@vger.kernel.org
References: <87h6fnwcqv.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/troff; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87h6fnwcqv.fsf@gmail.com>
Content-Language: en-US
X-Clacks-Overhead: GNU Terry Pratchett

'\" t
.
.\" SPDX-FileCopyrightText: 2024 Lennart Jablonka <humm@ljabl.com>
.\" SPDX-LicenseIdentifier: BlueOak-1.0.0
.\" https://blueoakcouncil.org/license/1.0.0
.
.Dd April 27, 2024
.Dt MDOC-MAN-CMP 7
.Os
.Sh NAME
.Nm mdoc-man-cmp
.Nd a little comparison of \-mdoc and \-man macros
.Sh DESCRIPTION
This table shows a non-injective map of \-mdoc macros to \-man
macros and conventions.
It does contain opinions of mine, not explicitly marked as such.
.Pp
.\" note: mandoc's mdoc(7) uses Ic for troff macro names; I don't,
.\" following what 4.4BSD's mdoc(7) does
.TS
center;
lb lb
_ _
l l.
\-mdoc	\-man
T{
.Li \&Dd ,
.Li \&Dt ,
.Li \&Os
T}	T{
.Li TH
T}
T{
.Li \&Nm
T}	T{
in the
.Sq NAME
section, roman, as-is;
in the synopsis,
.Li \&B ;
elsewhere,
per preference roman or
.Li \&I
(but some people make it bold)
T}
T{
.Li \&Nd
T}	T{
the whole
.Sq NAME
section should be of the form
.D1 Ar name Ns [, Ar name No .\|.\|.] Li \e\- Ar description
T}
T{
.Li \&Sh
T}	T{
.Li \&SH
T}
T{
.Li \&Ss
T}	T{
.Li \&SS
T}
T{
.Li \&Xr
T}	T{
if targetting Groff\~1.23.0 or newer,
.Li \&MR ;
otherwise, make the title italic and the parenthesized chapter
roman; e.g., do
.Dl ".IR man (7)"
T}
T{
.Li \&Tg
T}	T{
There is no replacement as of now, but I hear
Branden\~G.\~Robinson plans to introduce something of that sort to
Groff's \-man.
You might want to take a look at the
.Li \&IX
macro emitted by Perl's
.Xr pod2man 1 .
T}
T{
.Li \&Pp
T}	T{
The perfectly fine macro for this is
.Li \&PP .
There are also the synonymous
.Li \&LP ,
as well as the synonymous extension
.Li \&P .
Some people like those better.
T}
T{
.Li \&Bd ,
.Li \&Ed ,
.Li \&D1 ,
.Li \&Dl
T}	T{
There is
.Li \&RS Ns / Ns Li \&RE
for indenting and the extension
.Li \&EX Ns / Ns Li \&EE
for non-filled fixed-width type.
Further, you can use troff requests such as, for example,
.Li \&nf Ns / Ns Li \&fi
to control the finer details.
T}
T{
.Li \&Ql
T}	T{
Plan\~9's \-man has
.Li \&L ,
which uses single quotes for
.Nm nroff
and the
.Dq literal
(fixed-width) font for
.Nm troff .
Other \-mans don't have an equivalent.
Other \-mans also don't have a standardized way of using a
fixed-width font beside
.Li \&EX .
Use bold type, roman type enclosed in quotes, or simply use roman
type.
T}
T{
.Li \&Bl ,
.Li \&El ,
.Li \&It ,
.Li \&Ta
T}	T{
a combination of
.Li \&IP ,
.Li \&TP ,
.Li \&TQ ,
.Li \&HP ,
.Li \&PD ,
.Nm troff Ap s
tab mechanism,
and
.Xr tbl 1
T}
T{
.Li \&Rs ,
.Li \&%* ,
.Li \&Re
T}	T{
Sadly, \-man isn't integrated with
.Xr refer 1 .
Simply write the whole reference manually using font-changing
macros.
T}
T{
.Li \&Pf ,
.Li \&Ns ,
.Li \&Sm
T}	T{
no replacement needed
T}
T{
.Li \&Bk ,
.Li \&Ek
T}	T{
A common extension is the adjustable non-breakable space,
.Li \e\(ti .
Traditionally, you'd use a non-adjustable non-breakable space,
either by prefixing a space with the escape character, or by
translating a different character to the space character using
.Li \&tr .
If using the latter option, do take care to remove the character
translation before the end of the man page, lest it cause
unexpected behavior in following man pages when running them off
concatenated.
T}
T{
.Li \&Fl
T}	T{
.\" TODO: Did V9 switch to -o and \fL already?
On a 10th Edition Unix or Plan\~9 system, simply write the
option
.Fl o
as
.Ql \-o
in the literal font
.Pf ( Li .B ) .
Otherwise, instead of using a hyphen, use a
.Do minus sign Dc Ns / Ns Do Unix dash Dc
in the bold font:
.Dl ".B \e\-o"
T}
T{
.Li \&Cm
T}	T{
.Li \&B
T}
T{
.Li \&Ar
T}	T{
.Li \&I
T}
T{
.Li \&Op ,
.Li \&Oo ,
.Li \&Oc
T}	T{
[ ]
T}
T{
.Li \&Ic
T}	T{
.Li \&B
T}
T{
.Li \&Pa
T}	T{
just roman or perhaps italic
T}
T{
.Li \&Lb ,
.Li \&In ,
.Li \&Fd ,
.Li \&Ft ,
.Li \&Fo ,
.Li \&Fc ,
.Li \&Fn ,
.Li \&Fa ,
.Li \&Vt ,
.Li \&Va ,
.Li \&Dv ,
.Li \&Er ,
.Li \&Ev
.Li \&Cd ,
.Li \&Ad ,
T}	T{
perhaps italic, perhaps roman, perhaps bold, perhaps small
.Pf ( Li SM ) ,
perhaps a combination
T}
T{
.Li \&An
T}	T{
roman
T}
T{
.Li \&Lk
T}	T{
the
.Li \&UR Ns / Ns Li \&UE
extension
T}
T{
.Li \&Mt
T}	T{
the
.Li \&MT Ns / Ns Li \&ME
extension
T}
T{
.Li \&Ms
T}	T{
If you want to typeset math, use
.Xr eqn 1 .
If you want to write the name of a mathematical symbol, write the
name.
T}
T{
.Li \&Em ,
.Li \&Sy
T}	T{
To emphasize something or to use get italic type for some other
reason, use
.Li \&I .
To use boldface, use
.Li \&B .
I'm not sure what exactly the \-mdoc manuals mean by
.Dq "symbolic (traditional English)" .
T}
T{
.Li \&No
T}	T{
no replacement needed
T}
T{
.Li \&Bf ,
.Li \&Ef
T}	T{
.Li \&ft
T}
T{
.Li \&Dq ,
.Li \&Do ,
.Li \&Dc
T}	T{
For double quotes, the traditional
.Nm troff
usage is
.Dl \(ga\(ga \(aq\(aq
and the modern Groff
usage is
.Dl \e(lq \e(rq Ns .
Groff (1.23.0) misrenders
.Li \(ga\(ga \(aq\(aq Ns \(emor
rather, improves upon the traditional rendering of
.Li \(ga\(ga \(aq\(aq
by adding
.Li \e(lq \e(rq
and not improving the looks of
.Li \(ga\(ga \(aq\(aq
itself as well.
T}
T{
.Li \&Qq ,
.Li \&Qo ,
.Li \&Qc
T}	T{
Simply use the ASCII double-quote\~\c
.Li \&\(dq .
Quote and double it when passing it to a macro:
.Dl ".B """""""""
T}
T{
.Li \&Ap ,
.Li \&Sq ,
.Li \&So ,
.Li \&Sc
T}	T{
.Li \(ga \(aq
T}
T{
.Li \&Pq ,
.Li \&Po ,
.Li \&Pc ,
.Li \&Bq ,
.Li \&Bo ,
.Li \&Bc ,
.Li \&Brq ,
.Li \&Bro ,
.Li \&Brc ,
.Li \&Aq ,
.Li \&Ao ,
.Li \&Ac ,
.Li \&Eo ,
.Li \&Ec
T}	T{
Simply write the enclosing characters directly.
Do note the existence of
.Li \ec .
T}
T{
.Li \&Ex ,
.Li \&Rv ,
.Li \&St ,
.Li \&At ,
.Li \&Bx ,
.Li \&Bsx ,
.Li \&Nx ,
.Li \&Fx ,
.Li \&Ox ,
.Li \&Dx
T}	T{
Write the strings directly.
T}
.TE
.Sh "SEE ALSO"
.Xr eqn 1 ,
.Xr refer 1 ,
.Xr tbl 1 ,
.Xr man 7 ,
.Xr mdoc 7
.Rs
.%A Joseph F. Ossanna
.%A Brian W. Kernighan
.%I AT&T Bell Laboratories
.%T Troff User's Manual
.%R Computing Science Technical Report
.%N 54
.%C Murray Hill, New Jersey
.%D 1976 and 1992
.%U http://www.kohala.com/start/troff/cstr54.ps
.Re

