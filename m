Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BC1D65197F
	for <lists+linux-man@lfdr.de>; Tue, 20 Dec 2022 04:18:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229866AbiLTDSW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Dec 2022 22:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229556AbiLTDSU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 22:18:20 -0500
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB6AB2192
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 19:18:18 -0800 (PST)
Received: by mail-oi1-x22b.google.com with SMTP id r11so9520093oie.13
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 19:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jbDIwVVEQvmDqeF4cj+L+0/f4xUPXyJXhnfry/qz1vM=;
        b=DTV45DoFPOE/X/IXFOO2OAOnvaznuS1Mb9qjA9wqHv/bXqAP0E0cO5sCUxtFYwhFUK
         6vXsryYMfxpobdQUUlt3FRNjpux1TmXGKsFPzPulm2WJTzlJv1HBEHyMmBEDZck8pP/U
         YHKKU2I8ve5D1IAHod3CsmRrazjG65wPCw2c7wmT0aEpWyCUcIFq291zaQ+fqrQyfDDE
         b+b6Xv5DgMZ8uYIhwjFeNDSJAT2vtZn6BkHm2ccK7rYVCYrUZTjACqf0OJuWuwofwx8q
         QdVKmZdfLscuHvPy6ohniK3brWD14UdUV0Iix0jxihDCyHM+fa+NccQdBm+Kyldbml7h
         ZB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jbDIwVVEQvmDqeF4cj+L+0/f4xUPXyJXhnfry/qz1vM=;
        b=g89VHlO8xByxQR+3IKvlsZt6esGZSHwe9E989MVjWKZn0kq8G25vo/XY12OAW6xKKb
         v167OT0BxzsWw+oTz9WhGRVTyllrDCbupi3dUOpxNfgJJYHhgdq4U6eGnq2fFjXVUFSZ
         Ijl5RuA/gigun+pbny/8Ye8yWM5VBrNc+QYKDOHfXN1/MCsX8S8Dwa0aGvnhvHhAhdhJ
         EwWt4FMvwbFn0/OXBTKF+u63sEcFSnnJYSq/PEB8a23pDmn4Jw4DUMp7eM/7l7+S/oQk
         PVjliQJXnz/X2GI+9dcQRlmf6PtaaI8koi357EGWC8dMJDkGOw0MhghTPN04+51yOmv5
         eJiw==
X-Gm-Message-State: AFqh2koS/jBlL8sxuVfLj03Bu18RvxonMrra3R0BwSdRnmI5SmgtbutP
        rmYrj8GT5kK4caFwIFd27dJx2jCJtUH25w==
X-Google-Smtp-Source: AMrXdXvNKb5Q1sE3kyS3Hd5qbXcxBdjQC/Yyng8SrpF+4Cf2TFhKrGjYjTclZty15VbnwwQDspi4vQ==
X-Received: by 2002:a05:6808:20a:b0:360:deee:d141 with SMTP id l10-20020a056808020a00b00360deeed141mr4257179oie.14.1671506298107;
        Mon, 19 Dec 2022 19:18:18 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q7-20020a056830232700b006731ecc5bedsm5136104otg.14.2022.12.19.19.18.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 19:18:17 -0800 (PST)
Date:   Mon, 19 Dec 2022 21:18:16 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/2] suffixes: Improve table format
Message-ID: <20221220031816.mf6j4gjzn4tcog5u@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jkxbyuy7fsun2urv"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jkxbyuy7fsun2urv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Apparently the original author(s) of this table did not know how to
start a table entry in the first column of a tbl(1) table with a dot.
(If you try, the *roff formatter will interpret it as a control line,
and try to invoke a request or call a macro.)

Start every row of the table with the *roff dummy character `\&` instead
of leading space.  Not only is this more idiomatic, but it recovers some
of the line length for content.

This patch does not attempt to correct any errors in the table contents,
nor bring it up to date from its year 2000 vintage.
---
 man7/suffixes.7 | 432 ++++++++++++++++++++++++------------------------
 1 file changed, 216 insertions(+), 216 deletions(-)

diff --git a/man7/suffixes.7 b/man7/suffixes.7
index 89b9cde2c..8de9bc97f 100644
--- a/man7/suffixes.7
+++ b/man7/suffixes.7
@@ -33,222 +33,222 @@ l | l
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
--=20
2.30.2

--jkxbyuy7fsun2urv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOhKXgACgkQ0Z6cfXEm
bc57NBAAgUebTNbGnaPvzcHOsNYCNhPxjUkGTdv4Zjf2BE292hwU+CkLGV6SSf2N
60jXKX8R1EqBBgFWKc4VzvuoQ05FmI+cuQa1MH4ikasq2sYJ+X14k4NbdCeh0+Hm
oXTFzRLGxZoG15xh9nNBTkRTmODKVhJ+EGGKM5puUznD5YcZHInx64nuzk6f0J0t
RQahbvQSKMEzEEkeP9JXQ00BfIsvk3XM51zXhBGYJ8uUWTL384W6S6JvVrspykkK
MOI+Uqi2+3JQ1rF+3OpMQDBAn5Fax+Ha+4d4lzr59oPgOzp8ukh2LOdySVieD96D
7TGg4JM31lRCdeeVc+7YGs8RIbi2AWTvYFFXD9Zqin+/wBxWb6IFV9H6UHxMIKaB
nshIUTpKVoXVJrLY2pQ6lgFzH1nZUKSfIoxd9pO3fpMPymiRZ4EeF/fQZEmvH/yU
nqb3AD/HC14i14U+29sFjTXxQcYt529rwhUq08PxHml5W143nyL9tKCKquYnB9j5
eqkTdZTf5eGk/6uqvdQI/3p/jisKHrW6dpdxo56zkp1FLIB82D/KiGn2XnrRdhJi
9byjG3ynnuU1N8Tw8oCuLTpaNWarfSEi+/KQ3ngP8H2WDpk+Z3AegMSiSutVPGD8
Qkq7hevzDnueEifLLi5dOwUvslFfiQl+09qjLrx8iyxFY2x+G9k=
=UD4Y
-----END PGP SIGNATURE-----

--jkxbyuy7fsun2urv--
