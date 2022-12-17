Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 310BD64FAF5
	for <lists+linux-man@lfdr.de>; Sat, 17 Dec 2022 17:08:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiLQQIh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Dec 2022 11:08:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229659AbiLQQIf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Dec 2022 11:08:35 -0500
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBAFD2EA
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 08:08:33 -0800 (PST)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-1447c7aa004so6773602fac.11
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 08:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WV/GWG8toP8CF1ZxdSBejvugQ0PuT19ik8j4xT4fBU0=;
        b=NfbinQ4u+s+1QBM2v6niy71ZoKg65m9A/i0UFB7495w6j28LnbTnDfM9Enckiz505M
         M+zRBhiU34xz4XrzahI2LhO3v+sweeqis2MCw0RymszBe+FRJoTRXGn4aVGXINS1Ybvv
         HvIYdYgLImN9cPmEhn53DW21uUh+V0n+5lsrGigTHvnH3vfwwzxHNDg8ZoB3NZJw28/A
         j1C2stJMbZ0ZZgTBaVRgFgwSUyLev4zHOch8dLU0gqLw1Y06WqbPkvT5bLliv3XIHobd
         MKTuBcRWZbZo+brUQ4Qji302fx1fVzHUSPHamkpiv67trgR4sVxgzDI05ySkYeXnnuhJ
         m3PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WV/GWG8toP8CF1ZxdSBejvugQ0PuT19ik8j4xT4fBU0=;
        b=cs4KtHfb7JLOnA17Esv4Pl1CrsfoYuU8jKQmsqgkOioLSrAPp41JSvuWambDI0bePH
         jHh1dywt9MUZcbgxTOhJVqVr8u/oKfYdVceuoZacl9aCpMCgR24tTepy2FCBoxSxr1kT
         hlYN0MY+m719W+0d5ZOlwoS1MlhxM0jkw+pa3OL74Z6UEXcaCvHoTJQKjn3nfx2pKtA0
         OYa9kbFkE4kH1Svxh9/ZrRlq60R6WFEWlTPflOd3g6HOx5Gl8OhW8fNz+1+MhDL8Lnz7
         RGJZHzl7IkzYxzd7X/k63q9nth23v17V3atx3cSa8pPAOBlwy5VtpBpHHwCdc5vtg77o
         JVcg==
X-Gm-Message-State: ANoB5pm990BdDwuhAKdiurmxyqKpNSajsBghVQ5V2lFLGoWqgeFFvv5I
        r1BWbeZzpBxTTCP+wcqlssbOa7ylTns=
X-Google-Smtp-Source: AA0mqf5DatgFVl2JTKpeGgQ9xW+7Q8ethaddwr3V116EncvZxfymirjGYF+vizn7mRhjCll5xFdb6w==
X-Received: by 2002:a05:6870:1683:b0:144:7065:30cf with SMTP id j3-20020a056870168300b00144706530cfmr19622672oae.24.1671293312354;
        Sat, 17 Dec 2022 08:08:32 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x8-20020a056870434800b0013bc40b09dasm2412457oah.17.2022.12.17.08.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Dec 2022 08:08:31 -0800 (PST)
Date:   Sat, 17 Dec 2022 10:08:30 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [BUG] gropdf, tbl: Completely broken table (was: Ping^1:
 Chapters of the manual (was: Bug#1018737: ...))
Message-ID: <20221217160830.rcvgr65axz4hpcge@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid>
 <1719285.QkHrqEjB74@pip>
 <01989003-349f-fb6b-f460-89106b82bc34@gmail.com>
 <2176657.1BCLMh4Saa@pip>
 <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com>
 <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="kturr323zxfn5dos"
Content-Disposition: inline
In-Reply-To: <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--kturr323zxfn5dos
Content-Type: multipart/mixed; boundary="ktei74ziiuu2ztov"
Content-Disposition: inline


--ktei74ziiuu2ztov
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2022-12-17T14:19:55+0100, Alejandro Colomar wrote:
> Another bug report (but not about the script; this seems to be about
> tbl(1) interaction with gropdf(1), I guess):
>=20
> <http://chuzzlewit.co.uk/LinuxManBook.pdf#pdf%3Abm11813>

The suffixes(7) page, which I've managed to never see in 25 years as a
GNU/Linux user!  Ah, well.

Dude, I'm friggin' _trying_ to get groff ready for 1.23.0.rc2 and you
nerd-snipe me with this huge list of things that hasn't been updated in
twenty years and has all kinds of fiddly little things wrong with it--
this of course constitutes an OCD emergency for me!

https://xkcd.com/356/

> Running all the linters I know doesn't trigger any warnings on the
> page source:

That tbl(1) source isn't invalid but it is pretty weird.

I tend to agree that there is a gropdf(1) bug here, as grops(1) handles
the same input fine.  But Deri is the real expert and I will let him
speak to that.

I'm attaching a patch that does three things:

1. Removes the hack to shut up warnings from grotty(1).  This was indeed
   a bug, it's been around forever (possibly since ~1990), and it is
   fixed in groff Git.  Expect that in 1.23.0.  man-db man(1) conceals
   these diagnostic messages anyway.

   https://savannah.gnu.org/bugs/index.php?63449

2. Stops using leading spaces in table entries.  This is a kind of weird
   thing to do.  The likely reason is that the table author(s) had a ton
   of entries that started with dots (the *roff control character) and
   didn't know to prefix them with the *roff dummy character (`\&`) to
   keep them from being interpreted as requests or macro calls.  The
   tbl(1) page in groff 1.23.0 explicitly documents this use (the old
   one seems to have expected the reader to have access to CSTR #49 by
   Lesk).

    Rows of table entries can be interleaved with groff control lines;
    these do not count as table data.  On such lines the default control
    character (.) must be used (and not changed); the no=E2=80=90break cont=
rol
    character is not recognized.  To start the first table entry in a
    row with a dot, precede it with the token \&.

3. I added the dummy character even on "continuation" lines where a
   description overran.  This does no damage since the tab character
   remains there as an entry separator and the dummy character by itself
   is harmless as a marker of an empty table entry.  I even recommend
   this in the GNU tbl 1.23.0 man page; it's much nicer for people whose
   text editors don't visibly highlight tabs.

A _more_ idiomatic thing to do would be to use a spanning table
entry `\^` for rows where the description get continued, but that makes
no practical difference for a simple table layout like this one.

More idiomatic still, and well worth considering for the future, is
setting _all_ of these descriptions in text blocks.  This table looks to
me like it was laid out for an 80-column terminal with the excessively
long descriptions manually broken.  This looks suboptimal when typeset
and will look ridiculous on a wide terminal.

Also, use of a text block enables the employment of man(7) macros
instead of font selection escape sequences to change the typeface, and,
importantly for the near Linux man-pages future, use of the new `MR`
macro to cross reference the many pages referred to in these
descriptions.

I didn't pursue further revision along either of these lines because the
as I look at these the entries, the intensity of my urge to do a
top-to-bottom revision fixing the many infelicities and a few outright
errors increases exponentially with time.  There is even at least one
unescaped hyphen!  =F0=9F=A4=AF

Regrettably, if a moderately experienced GNU/Linux user has gone 25
years without seeing this page, likely many others will go 25 more
without seeing it.  A good intro(1) page would cross reference it,
aiding the novice.

Unofficial patch attached.

Regards,
Branden

--ktei74ziiuu2ztov
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="suffixes.7.diff"

--- suffixes.7	2022-12-17 09:41:14.444969997 -0600
+++ suffixes.7.new	2022-12-17 09:41:06.261023174 -0600
@@ -13,9 +13,6 @@
 .\" Modified Thu Nov 16 23:28:25 2000 by David A. Wheeler
 .\"    <dwheeler@dwheeler.com>
 .\"
-.\" "nroff" ("man") (or "tbl") needs a long page to avoid warnings
-.\" from "grotty" (at imagined page breaks).  Bug in grotty?
-.if n .pl 1000v
 .TH SUFFIXES 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 suffixes \- list of file suffixes
@@ -36,222 +33,222 @@
 _ | _
 lI |  l .
 Suffix	File type
- ,v	files for RCS (Revision Control System)
- -	backup file
- .C	C++ source code, equivalent to \fI.cc\fP
- .F	Fortran source with \fBcpp\fP(1) directives
-	or file compressed using freeze
- .S	assembler source with \fBcpp\fP(1) directives
- .Y	file compressed using yabba
- .Z	file compressed using \fBcompress\fP(1)
- .[0\-9]+gf	TeX generic font files
- .[0\-9]+pk	TeX packed font files
- .[1\-9]	manual page for the corresponding section
- .[1\-9][a-z]	manual page for section plus subsection
- .a	static object code library
- .ad	X application default resource file
- .ada	Ada source (may be body, spec, or combination)
- .adb	Ada body source
- .ads	Ada spec source
- .afm	PostScript font metrics
- .al	Perl autoload file
- .am	\fBautomake\fP(1) input file
- .arc	\fBarc\fP(1) archive
- .arj	\fBarj\fP(1) archive
- .asc	PGP ASCII-armored data
- .asm	(GNU) assembler source file
- .au	Audio sound file
- .aux	LaTeX auxiliary file
- .avi	(msvideo) movie
- .awk	AWK language program
- .b	LILO boot loader image
- .bak	backup file
- .bash	\fBbash\fP(1) shell script
- .bb	basic block list data produced by
-	gcc \-ftest\-coverage
- .bbg	basic block graph data produced by
-	gcc \-ftest\-coverage
- .bbl	BibTeX output
- .bdf	X font file
- .bib	TeX bibliographic database, BibTeX input
- .bm	bitmap source
- .bmp	bitmap
- .bz2	file compressed using \fBbzip2\fP(1)
- .c	C source
- .cat	message catalog files
- .cc	C++ source
- .cf	configuration file
- .cfg	configuration file
- .cgi	WWW content generating script or program
- .cls	LaTeX Class definition
- .class	Java compiled byte-code
- .conf	configuration file
- .config	configuration file
- .cpp	equivalent to \fI.cc\fR
- .csh	\fBcsh\fP(1) shell script
- .cxx	equivalent to \fI.cc\fR
- .dat	data file
- .deb	Debian software package
- .def	Modula-2 source for definition modules
- .def	other definition files
- .desc	initial part of mail message unpacked with
-	\fBmunpack\fP(1)
- .diff	file differences (\fBdiff\fP(1) command output)
- .dir	dbm data base directory file
- .doc	documentation file
- .dsc	Debian Source Control (source package)
- .dtx	LaTeX package source file
- .dvi	TeX's device independent output
- .el	Emacs-Lisp source
- .elc	compiled Emacs-Lisp source
- .eps	encapsulated PostScript
- .exp	Expect source code
- .f	Fortran source
- .f77	Fortran 77 source
- .f90	Fortran 90 source
- .fas	precompiled Common-Lisp
- .fi	Fortran include files
- .fig	FIG image file (used by \fBxfig\fP(1))
- .fmt	TeX format file
- .gif	Compuserve Graphics Image File format
- .gmo	GNU format message catalog
- .gsf	Ghostscript fonts
- .gz	file compressed using \fBgzip\fP(1)
- .h	C or C++ header files
- .help	help file
- .hf	equivalent to \fI.help\fP
- .hlp	equivalent to \fI.help\fP
- .htm	poor man's \fI.html\fP
- .html	HTML document used with the World Wide Web
- .hqx	7-bit encoded Macintosh file
- .i	C source after preprocessing
- .icon	bitmap source
- .idx	reference or datum-index file for hypertext
-	or database system
- .image	bitmap source
- .in	configuration template, especially for GNU Autoconf
- .info	files for the Emacs info browser
- .info-[0\-9]+	split info files
- .ins	LaTeX package install file for docstrip
- .itcl	itcl source code;
-	itcl ([incr Tcl]) is an OO extension of tcl
- .java	a Java source file
- .jpeg	Joint Photographic Experts Group format
- .jpg	poor man's \fI.jpeg\fP
- .kmap	\fBlyx\fP(1) keymap
- .l	equivalent to \fI.lex\fP or \fI.lisp\fP
- .lex	\fBlex\fP(1) or \fBflex\fP(1) files
- .lha	lharc archive
- .lib	Common-Lisp library
- .lisp	Lisp source
- .ln	files for use with \fBlint\fP(1)
- .log	log file, in particular produced by TeX
- .lsm	Linux Software Map entry
- .lsp	Common-Lisp source
- .lzh	lharc archive
- .m	Objective-C source code
- .m4	\fBm4\fP(1) source
- .mac	macro files for various programs
- .man	manual page (usually source rather than formatted)
- .map	map files for various programs
- .me	Nroff source using the me macro package
- .mf	Metafont (font generator for TeX) source
- .mgp	MagicPoint file
- .mm	sources for \fBgroff\fP(1) in mm - format
- .mo	Message catalog binary file
- .mod	Modula-2 source for implementation modules
- .mov	(quicktime) movie
- .mp	Metapost source
- .mp2	MPEG Layer 2 (audio) file
- .mp3	MPEG Layer 3 (audio) file
- .mpeg	movie file
- .o	object file
- .old	old or backup file
- .orig	backup (original) version of a file, from \fBpatch\fP(1)
- .out	output file, often executable program (a.out)
- .p	Pascal source
- .pag	dbm data base data file
- .patch	file differences for \fBpatch\fP(1)
- .pbm	portable bitmap format
- .pcf	X11 font files
- .pdf	Adobe Portable Data Format
-	(use Acrobat/\fBacroread\fP or \fBxpdf\fP)
- .perl	Perl source (see .ph, .pl, and .pm)
- .pfa	PostScript font definition files, ASCII format
- .pfb	PostScript font definition files, binary format
- .pgm	portable greymap format
- .pgp	PGP binary data
- .ph	Perl header file
- .php	PHP program file
- .php3	PHP3 program file
- .pid	File to store daemon PID (e.g., crond.pid)
- .pl	TeX property list file or Perl library file
- .pm	Perl module
- .png	Portable Network Graphics file
- .po	Message catalog source
- .pod	\fBperldoc\fP(1) file
- .ppm	portable pixmap format
- .pr	bitmap source
- .ps	PostScript file
- .py	Python source
- .pyc	compiled python
- .qt	quicktime movie
- .r	RATFOR source (obsolete)
- .rej	patches that \fBpatch\fP(1) couldn't apply
- .rpm	RPM software package
- .rtf	Rich Text Format file
- .rules	rules for something
- .s	assembler source
- .sa	stub libraries for a.out shared libraries
- .sc	\fBsc\fP(1) spreadsheet commands
- .scm	Scheme source code
- .sed	sed source file
- .sgml	SGML source file
- .sh	\fBsh\fP(1) scripts
- .shar	archive created by the \fBshar\fP(1) utility
- .so	Shared library or dynamically loadable object
- .sql	SQL source
- .sqml	SQML schema or query program
- .sty	LaTeX style files
- .sym	Modula-2 compiled definition modules
- .tar	archive created by the \fBtar\fP(1) utility
- .tar.Z	tar(1) archive compressed with \fBcompress\fP(1)
- .tar.bz2	tar(1) archive compressed with \fBbzip2\fP(1)
- .tar.gz	tar(1) archive compressed with \fBgzip\fP(1)
- .taz	tar(1) archive compressed with \fBcompress\fP(1)
- .tcl	tcl source code
- .tex	TeX or LaTeX source
- .texi	equivalent to \fI.texinfo\fP
- .texinfo	Texinfo documentation source
- .text	text file
- .tfm	TeX font metric file
- .tgz	tar archive compressed with \fBgzip\fP(1)
- .tif	poor man's \fI.tiff\fP
- .tiff	Tagged Image File Format
- .tk	tcl/tk script
- .tmp	temporary file
- .tmpl	template files
- .txt	equivalent to \fI.text\fP
- .uu	equivalent to \fI.uue\fP
- .uue	binary file encoded with \fBuuencode\fP(1)
- .vf	TeX virtual font file
- .vpl	TeX virtual property list file
- .w	Silvio Levi's CWEB
- .wav	wave sound file
- .web	Donald Knuth's WEB
- .wml	Source file for Web Meta Language
- .xbm	X11 bitmap source
- .xcf	GIMP graphic
- .xml	eXtended Markup Language file
- .xpm	X11 pixmap source
- .xs	Perl xsub file produced by h2xs
- .xsl	XSL stylesheet
- .y	\fByacc\fP(1) or \fBbison\fP(1) (parser generator) files
- .z	File compressed using \fBpack\fP(1) (or an old \fBgzip\fP(1))
- .zip	\fBzip\fP(1) archive
- .zoo	\fBzoo\fP(1) archive
- \(ti	Emacs or \fBpatch\fP(1) backup file
- rc	startup (`run control') file, e.g., \fI.newsrc\fP
+\&,v	files for RCS (Revision Control System)
+\&-	backup file
+\&.C	C++ source code, equivalent to \fI.cc\fP
+\&.F	Fortran source with \fBcpp\fP(1) directives
+\&	or file compressed using freeze
+\&.S	assembler source with \fBcpp\fP(1) directives
+\&.Y	file compressed using yabba
+\&.Z	file compressed using \fBcompress\fP(1)
+\&.[0\-9]+gf	TeX generic font files
+\&.[0\-9]+pk	TeX packed font files
+\&.[1\-9]	manual page for the corresponding section
+\&.[1\-9][a-z]	manual page for section plus subsection
+\&.a	static object code library
+\&.ad	X application default resource file
+\&.ada	Ada source (may be body, spec, or combination)
+\&.adb	Ada body source
+\&.ads	Ada spec source
+\&.afm	PostScript font metrics
+\&.al	Perl autoload file
+\&.am	\fBautomake\fP(1) input file
+\&.arc	\fBarc\fP(1) archive
+\&.arj	\fBarj\fP(1) archive
+\&.asc	PGP ASCII-armored data
+\&.asm	(GNU) assembler source file
+\&.au	Audio sound file
+\&.aux	LaTeX auxiliary file
+\&.avi	(msvideo) movie
+\&.awk	AWK language program
+\&.b	LILO boot loader image
+\&.bak	backup file
+\&.bash	\fBbash\fP(1) shell script
+\&.bb	basic block list data produced by
+\&	gcc \-ftest\-coverage
+\&.bbg	basic block graph data produced by
+\&	gcc \-ftest\-coverage
+\&.bbl	BibTeX output
+\&.bdf	X font file
+\&.bib	TeX bibliographic database, BibTeX input
+\&.bm	bitmap source
+\&.bmp	bitmap
+\&.bz2	file compressed using \fBbzip2\fP(1)
+\&.c	C source
+\&.cat	message catalog files
+\&.cc	C++ source
+\&.cf	configuration file
+\&.cfg	configuration file
+\&.cgi	WWW content generating script or program
+\&.cls	LaTeX Class definition
+\&.class	Java compiled byte-code
+\&.conf	configuration file
+\&.config	configuration file
+\&.cpp	equivalent to \fI.cc\fR
+\&.csh	\fBcsh\fP(1) shell script
+\&.cxx	equivalent to \fI.cc\fR
+\&.dat	data file
+\&.deb	Debian software package
+\&.def	Modula-2 source for definition modules
+\&.def	other definition files
+\&.desc	initial part of mail message unpacked with
+\&	\fBmunpack\fP(1)
+\&.diff	file differences (\fBdiff\fP(1) command output)
+\&.dir	dbm data base directory file
+\&.doc	documentation file
+\&.dsc	Debian Source Control (source package)
+\&.dtx	LaTeX package source file
+\&.dvi	TeX's device independent output
+\&.el	Emacs-Lisp source
+\&.elc	compiled Emacs-Lisp source
+\&.eps	encapsulated PostScript
+\&.exp	Expect source code
+\&.f	Fortran source
+\&.f77	Fortran 77 source
+\&.f90	Fortran 90 source
+\&.fas	precompiled Common-Lisp
+\&.fi	Fortran include files
+\&.fig	FIG image file (used by \fBxfig\fP(1))
+\&.fmt	TeX format file
+\&.gif	Compuserve Graphics Image File format
+\&.gmo	GNU format message catalog
+\&.gsf	Ghostscript fonts
+\&.gz	file compressed using \fBgzip\fP(1)
+\&.h	C or C++ header files
+\&.help	help file
+\&.hf	equivalent to \fI.help\fP
+\&.hlp	equivalent to \fI.help\fP
+\&.htm	poor man's \fI.html\fP
+\&.html	HTML document used with the World Wide Web
+\&.hqx	7-bit encoded Macintosh file
+\&.i	C source after preprocessing
+\&.icon	bitmap source
+\&.idx	reference or datum-index file for hypertext
+\&	or database system
+\&.image	bitmap source
+\&.in	configuration template, especially for GNU Autoconf
+\&.info	files for the Emacs info browser
+\&.info-[0\-9]+	split info files
+\&.ins	LaTeX package install file for docstrip
+\&.itcl	itcl source code;
+\&	itcl ([incr Tcl]) is an OO extension of tcl
+\&.java	a Java source file
+\&.jpeg	Joint Photographic Experts Group format
+\&.jpg	poor man's \fI.jpeg\fP
+\&.kmap	\fBlyx\fP(1) keymap
+\&.l	equivalent to \fI.lex\fP or \fI.lisp\fP
+\&.lex	\fBlex\fP(1) or \fBflex\fP(1) files
+\&.lha	lharc archive
+\&.lib	Common-Lisp library
+\&.lisp	Lisp source
+\&.ln	files for use with \fBlint\fP(1)
+\&.log	log file, in particular produced by TeX
+\&.lsm	Linux Software Map entry
+\&.lsp	Common-Lisp source
+\&.lzh	lharc archive
+\&.m	Objective-C source code
+\&.m4	\fBm4\fP(1) source
+\&.mac	macro files for various programs
+\&.man	manual page (usually source rather than formatted)
+\&.map	map files for various programs
+\&.me	Nroff source using the me macro package
+\&.mf	Metafont (font generator for TeX) source
+\&.mgp	MagicPoint file
+\&.mm	sources for \fBgroff\fP(1) in mm - format
+\&.mo	Message catalog binary file
+\&.mod	Modula-2 source for implementation modules
+\&.mov	(quicktime) movie
+\&.mp	Metapost source
+\&.mp2	MPEG Layer 2 (audio) file
+\&.mp3	MPEG Layer 3 (audio) file
+\&.mpeg	movie file
+\&.o	object file
+\&.old	old or backup file
+\&.orig	backup (original) version of a file, from \fBpatch\fP(1)
+\&.out	output file, often executable program (a.out)
+\&.p	Pascal source
+\&.pag	dbm data base data file
+\&.patch	file differences for \fBpatch\fP(1)
+\&.pbm	portable bitmap format
+\&.pcf	X11 font files
+\&.pdf	Adobe Portable Data Format
+\&	(use Acrobat/\fBacroread\fP or \fBxpdf\fP)
+\&.perl	Perl source (see .ph, .pl, and .pm)
+\&.pfa	PostScript font definition files, ASCII format
+\&.pfb	PostScript font definition files, binary format
+\&.pgm	portable greymap format
+\&.pgp	PGP binary data
+\&.ph	Perl header file
+\&.php	PHP program file
+\&.php3	PHP3 program file
+\&.pid	File to store daemon PID (e.g., crond.pid)
+\&.pl	TeX property list file or Perl library file
+\&.pm	Perl module
+\&.png	Portable Network Graphics file
+\&.po	Message catalog source
+\&.pod	\fBperldoc\fP(1) file
+\&.ppm	portable pixmap format
+\&.pr	bitmap source
+\&.ps	PostScript file
+\&.py	Python source
+\&.pyc	compiled python
+\&.qt	quicktime movie
+\&.r	RATFOR source (obsolete)
+\&.rej	patches that \fBpatch\fP(1) couldn't apply
+\&.rpm	RPM software package
+\&.rtf	Rich Text Format file
+\&.rules	rules for something
+\&.s	assembler source
+\&.sa	stub libraries for a.out shared libraries
+\&.sc	\fBsc\fP(1) spreadsheet commands
+\&.scm	Scheme source code
+\&.sed	sed source file
+\&.sgml	SGML source file
+\&.sh	\fBsh\fP(1) scripts
+\&.shar	archive created by the \fBshar\fP(1) utility
+\&.so	Shared library or dynamically loadable object
+\&.sql	SQL source
+\&.sqml	SQML schema or query program
+\&.sty	LaTeX style files
+\&.sym	Modula-2 compiled definition modules
+\&.tar	archive created by the \fBtar\fP(1) utility
+\&.tar.Z	tar(1) archive compressed with \fBcompress\fP(1)
+\&.tar.bz2	tar(1) archive compressed with \fBbzip2\fP(1)
+\&.tar.gz	tar(1) archive compressed with \fBgzip\fP(1)
+\&.taz	tar(1) archive compressed with \fBcompress\fP(1)
+\&.tcl	tcl source code
+\&.tex	TeX or LaTeX source
+\&.texi	equivalent to \fI.texinfo\fP
+\&.texinfo	Texinfo documentation source
+\&.text	text file
+\&.tfm	TeX font metric file
+\&.tgz	tar archive compressed with \fBgzip\fP(1)
+\&.tif	poor man's \fI.tiff\fP
+\&.tiff	Tagged Image File Format
+\&.tk	tcl/tk script
+\&.tmp	temporary file
+\&.tmpl	template files
+\&.txt	equivalent to \fI.text\fP
+\&.uu	equivalent to \fI.uue\fP
+\&.uue	binary file encoded with \fBuuencode\fP(1)
+\&.vf	TeX virtual font file
+\&.vpl	TeX virtual property list file
+\&.w	Silvio Levi's CWEB
+\&.wav	wave sound file
+\&.web	Donald Knuth's WEB
+\&.wml	Source file for Web Meta Language
+\&.xbm	X11 bitmap source
+\&.xcf	GIMP graphic
+\&.xml	eXtended Markup Language file
+\&.xpm	X11 pixmap source
+\&.xs	Perl xsub file produced by h2xs
+\&.xsl	XSL stylesheet
+\&.y	\fByacc\fP(1) or \fBbison\fP(1) (parser generator) files
+\&.z	File compressed using \fBpack\fP(1) (or an old \fBgzip\fP(1))
+\&.zip	\fBzip\fP(1) archive
+\&.zoo	\fBzoo\fP(1) archive
+\&\(ti	Emacs or \fBpatch\fP(1) backup file
+\&rc	startup (`run control') file, e.g., \fI.newsrc\fP
 .TE
 .SH STANDARDS
 General UNIX conventions.

--ktei74ziiuu2ztov--

--kturr323zxfn5dos
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOd6XYACgkQ0Z6cfXEm
bc7qrg//a7ju2obR363xkhhtPQChlkDCcu0KK6SGw1EobodbkIYTzczoheC8XAsm
YrU3T8YuHq6ZZa1u4LLbQTegVvyRg3Dsqaz3QaaBHfR4d7/PZHqj78eTe2ZIp3mp
8pFRveSCSyW2lp7aHrNz7XxfFxvEkYvLOidB9pWMtgTVrIIHA/gxPiFu+qrTztz9
ds//xRdnWmn3L1j/No0j1Ig27vuefdKbC+fjKqpmTGILdkuAqMJNEisMr0rBp6lP
1wFKgwNPITCZSNA+xOVzMMOMw8QsTJloOtHzyc7i10U79WMsRJgZ8beYdZiomGd6
H+q5yvBMV0Jpi98eoZUDmsYW76cq01Gak/oDEkve2EQOQpDlPXG1JSsEDM7S+Cfu
j6FdUXgK1J0nkQQ6ecq1UtLm1OeWA9UUDXuK08HZbv+gFYScXKGvGse4XzznyNpy
MyKEyslI2i8yatmrOhXxy0DKmq6gGq8XGLztwaVNbRzzMguUWoBstvEUOd+x795N
rQ07IJ7byeQTaHKoRJ+VZODfLjzgC02kCJ9tc6m6wahUpqYPOYcshKyw0vO511zN
NJKOnFMFP3u0+4YHsWVwZk5QC49bk6dFP/M65uAS1EgP/h594HnSMKhnP4A2TiEM
NtrtslEJ7BCOFqL7fExShEVJP6c1d0khkpaE28rZAymDz+pAT9E=
=p38R
-----END PGP SIGNATURE-----

--kturr323zxfn5dos--
