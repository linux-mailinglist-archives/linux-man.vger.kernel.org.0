Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F1BE430CFD
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 02:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234140AbhJRAHX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Oct 2021 20:07:23 -0400
Received: from THBLACKELECTRIC.COM ([207.244.97.128]:37942 "EHLO lsw.cs1local"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S232246AbhJRAHX (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 17 Oct 2021 20:07:23 -0400
Received: from [72.29.63.102] (helo=localhost.localdomain)
        by lsw.cs1local with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <thb@b-tk.org>)
        id 1mcG9P-00011l-Qd
        for linux-man@vger.kernel.org; Mon, 18 Oct 2021 00:05:12 +0000
Received: from thb by localhost.localdomain with local (Exim 4.94.2)
        (envelope-from <thb@b-tk.org>)
        id 1mcFFw-0002Fx-PD; Sun, 17 Oct 2021 23:07:52 +0000
Date:   Sun, 17 Oct 2021 23:07:52 +0000
From:   "Thaddeus H. Black" <thb@debian.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Hendrik Boom <hendrik@topoi.pooq.com>
Subject: [PATCH v2] filename.7: new manual page
Message-ID: <YWysyI6/sZtbQBBb@b-tk.org>
Reply-To: "Thaddeus H. Black" <thb@debian.org>, linux-man@vger.kernel.org,
          Alejandro Colomar <alx.manpages@gmail.com>,
          "G. Branden Robinson" <g.branden.robinson@gmail.com>,
          Michael Kerrisk <mtk.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hWbXDnsolQAvKTvT"
Content-Disposition: inline
X-Spam_score: 1.8
X-Spam_bar: +
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hWbXDnsolQAvKTvT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Alejandro, Branden and Hendrik:

Thank you for the useful suggestions and revisions.  Patch v2, below,
assimilates them.

---------------------------------------------------------------------------
CHANGES IN v2
---------------------------------------------------------------------------

Hendrik Boom, G. Branden Robinson and Alejandro Colomar (1):
  Write "uppercase" and "lowercase" rather than "capital" and "small"

Alejandro Colomar and G. Branden Robinson (2):
  Use semantic newlines
  Avoid \f, but rather use separate lines

Alejandro Colomar (11):
  Use subsections instead of sections
  Use subsubsections instead of subsections
  Remove unnecessary .P after .S[HS]
  Use .PP rather than .P
  Fix indentation of paragraph, which continues talking about \0
  Mention FAT
  For consistency, list "-" with "-name" and ".name"; s/a pair of/some/
  Delete the redundant mention of "."
  By s/all but/almost/, avoid double negation
  Reference filesystems(5) under SEE ALSO
  Under CONFORMING TO, write only, "POSIX.1=E2=80=902001 and later."

G. Branden Robinson (3):
  Write "letter case" rather than "capitalization"
  Reference section-3 pages not under SEE ALSO but only in passing
  Avoid \c

Thaddeus H. Black (2):
  Reword subsubsect "Special semantics" to support Alejandro's change no. 7
  Avoid beginning any subsect or subsubsect with specially formatted text

---------------------------------------------------------------------------
GROFF SOURCE v2 (IN PATCH FORMAT)
---------------------------------------------------------------------------

--- /dev/null	2021-10-17 12:05:11.393541700 +0000
+++ b/man7/filename.7	2021-10-17 20:21:24.938542310 +0000
@@ -0,0 +1,654 @@
+.\" Copyright (C) 2021 Thaddeus H. Black <thb@debian.org>
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.\" 2021-10-18, Thaddeus H. Black <thb@debian.org>
+.\"     Wrote the manual page's initial version.
+.\"
+.TH FILENAME 7 2021-10-18 "Linux" "Linux Programmer's Manual"
+.SH NAME
+filename \- requirements and conventions for the naming of files
+.SH DESCRIPTION
+This manual page sets forth requirements for
+and delineates conventions regarding filenames
+on a Linux system,
+where a
+.I filename
+is either (as the word suggests) the name of a regular file
+or the name of another object held by the system's filesystem
+such as a directory, symbolic link, named pipe or device.
+.SS Legal filenames
+A filename on a Linux system can consist
+of almost any sequence of UTF-8 characters
+or, indeed, almost any sequence of bytes.
+The exceptions are as follows.
+.TP
+.B Reserved characters
+.RS
+The following characters are reserved.
+.TP
+.B /
+The solidus is reserved to separate pathname components
+as for example in
+.IR /usr/share/doc ,
+each component being itself a filename.
+For this reason, no filename may include a solidus.
+More precisely,
+no filename may include the byte that,
+in ASCII and UTF-8,
+exclusively represents the solidus.
+.TP
+.B \e0
+The null character is reserved for the filesystem to append
+to terminate a filename's representation in memory.
+For this reason, no filename may include a null character.
+More precisely,
+no filename may include the byte that,
+in ASCII and UTF-8,
+exclusively represents the null character.
+(When appended by the filesystem
+to terminate a filename's representation in memory,
+the byte in question is called the
+.I terminating null
+.IR byte .
+Though familiar to\~C programmers,
+the terminating null byte is usually invisible to users.)
+.IP
+Note
+.RB that\~ \e0 ,
+the null character (or null byte), differs from
+.RB from\~ 0 ,
+the printable digit-zero character.
+The null character (or null byte)
+is unprintable and registers in ASCII and UTF-8
+as the eight-bit pattern\~0x00,
+whereas the printable digit zero registers as\~0x30
+[see the \(lqHex\(rq column in
+.BR ascii (7)'s
+character table].
+Nothing prevents a filename from including a printable digit zero,
+as for instance the filename
+.I intel-m10-bmc.h
+from the kernel's source does.
+.RE
+.TP
+.B Reserved names
+.RS
+The following names are reserved.
+.TP
+.B .
+The filename consisting of a single full stop
+is reserved to represent the current directory.
+.TP
+.B ..
+The filename consisting of two full stops
+is reserved to represent the parent directory.
+.TP
+(empty)
+The empty filename,
+consisting of no bytes at all
+(except a terminating null byte),
+is not allowed.
+.PP
+The aforementioned current and parent directories are the current
+.I working
+directory and its parent except when
+.RB the\~ .
+.RB or\~ ..
+occurs in the middle or at the end of a pathname,
+in which case the current and parent directories
+are taken relative to preceding pathname elements.
+For example, if the current working directory were
+.IR /home/jsmith ,
+then
+.I ../rjones
+would mean
+.I /home/rjones
+but
+.I foo/bar/../baz
+would mean
+.IR /home/jsmith/foo/baz ,
+whereas
+.I foo/bar/./baz
+would mean
+.IR /home/jsmith/foo/bar/baz .
+.RE
+.TP
+.B Long names
+.RS
+No filename may exceed\~255 bytes in length,
+or\~256 bytes after counting the terminating null byte.
+.RB ( Reserved
+.B characters
+above explains the terminating null byte.)
+.RE
+.TP
+.B Non-UTF-8 names
+.RS
+Filenames need not consist of valid UTF-8 characters
+(although, except where a non-UTF-8 legacy encoding is in use,
+most filenames do).
+As long as the requirements
+of the preceding subsubsections
+are met,
+any sequence of bytes can legally serve as a filename.
+.RE
+.SS Conventional filenames
+Merely because a filename is legal
+does not make its use advisable, though.
+Some legal filenames cause practical troubles.
+For example, the legal filenames
+.IR m=3D3 ,
+.IR \(tijsmith ,
+.I \-v
+and
+.I My\~Document.txt
+are susceptible to misinterpretation by a shell.
+Workarounds typically exist,
+chiefly via quotation, escape
+and the explicit termination of options processing
+[see
+.BR sh (1)];
+but when reprocessing of shell-command text
+requires requotation and re-escape,
+the workarounds become an inconvenient, confusing, error-prone hassle.
+.PP
+The use of conventional filenames averts the hassle.
+It also makes filenames more recognizable to experienced users.
+.PP
+This subsection introduces broadly observed conventions for filenames.
+.TP
+.B The POSIX Portable Filename Character Set
+.RS
+In general contexts,
+especially for international applications,
+conventional filenames
+are composed using the\~65 ASCII characters
+of the POSIX Portable Filename Character Set.
+The POSIX Portable Filename Character Set consists of the following.
+.TP
+.BR A \- Z
+The\~26 uppercase or capital ASCII letters.
+.TP
+.BR a \- z
+The\~26 lowercase or small ASCII letters.
+.TP
+.BR 0 \- 9
+The ten ASCII digits.
+.TP
+.B . \_ \-
+These three ASCII punctuators:  full stop; low line; hyphen-minus.
+.PP
+Special contexts often employ additional characters but,
+in general contexts for international applications,
+conventional filenames exclude characters other than the listed\~65.
+(For noninternational applications, see
+.B Locales and Unicode
+below.)
+.PP
+Observe that the
+.RB space\~ \(aq\0\(aq \~( \eu0020 )
+is not listed despite being an ASCII character.
+Filenames that include spaces
+are often encountered for various reasons in certain contexts,
+but such filenames are unconventional in general
+and are inconvenient to use with tools.
+Within filenames, the low
+.RB line\~ \_
+or
+.RB hyphen-minus\~ \-
+is conventionally employed as necessary instead of the space.
+(See
+.B Unconventional filenames
+and, under
+.B Soft
+.BR conventions ,
+also
+.B Low line versus hyphen-minus
+below.)
+.PP
+Incidentally, uppercase and lowercase letters
+are normally distinct within filenames on a Linux system;
+so, for example,
+.I README
+and
+.I readme
+name two different files.
+(Exception:  the FAT filesystem on Linux is case-insensitive,
+so uppercase and lowercase letters
+are indistinct where FAT is in use.
+For further observations regarding letter case, see
+.B Letter case
+under
+.B Soft conventions
+below.)
+.RE
+.TP
+.B Special semantics
+.RS
+Besides the last subsubsection's POSIX convention,
+some conventions derived from core utilities
+are almost always respected, as well.
+.TP
+.B \-
+The one-character name
+consisting of a lone hyphen-minus
+is sometimes understood by a shell
+to refer to the previous working directory
+and sometimes understood by tools
+to refer to standard input or standard output.
+Therefore, no conventional filename
+consists of a lone hyphen-minus.
+.TP
+.BR \- name
+A name (other than the just-mentioned one-character name)
+that begins with a hyphen-minus
+is usually interpreted by tools as a
+command-line option rather than as a filename.
+Therefore, no conventional filename
+begins with the hyphen-minus.
+.TP
+.BR . name
+Conventional filenames may indeed begin with the full stop.
+This is normal and does not generally cause trouble.
+However, filenames that begin with the full stop
+conventionally designate
+.I hidden files
+(or hidden directories, etc.),
+a familiar example being the
+.I .profile
+typically found in a user's home directory.
+Hidden files behave normally but, by default, are ignored by
+.BR ls (1)
+and certain other tools.
+.RE
+.TP
+.B The full stop to introduce a format extension
+.RS
+Other than at a filename's beginning
+(a case the last subsubsection has discussed),
+the full stop is employed in filenames
+for various further conventional purposes.
+No single rule governs all conventional uses of the full stop.
+.PP
+However, except at a filename's beginning,
+the most common conventional use of the full stop
+is to append to a filename's stem
+an extension to indicate the format of the file's contents.
+An example is the filename
+.IR UnicodeData.txt ,
+in which
+.I UnicodeData
+is the stem and
+.RI the\~ .txt
+indicates that the file contains plain text.
+Multiple format extensions are even appended to some filename stems,
+as in
+.I my-archive.tar.xz
+for instance, which is the name of a tape archive
+.I my-archive.tar
+that, after archival, has subsequently been compressed by
+.BR xz (1).
+.PP
+The format-extension convention is almost universally recognized.
+Even nontechnical users are typically familiar with it.
+However, many users employ full stops also
+for various purposes unrelated to format extensions, as well;
+and they do so often enough
+that such unrelated usage can hardly be called unconventional.
+Except at a filename's beginning,
+convention supports free use of the full stop.
+.PP
+.I You
+may reserve the full stop solely
+to append format extensions if you wish,
+of course.
+Many users do.
+.PP
+.\" The next sentence has been corrected
+.\" according to Charles Plessy's helpful advice
+.\" [https://lists.debian.org/debian-devel/2021/08/msg00557.html].
+(If your machine is configured as a desktop or laptop
+rather than as a server,
+then you can probably find a fairly comprehensive catalog
+of conventional filename extensions,
+identifying the format each extension implies,
+on your machine in a file such as
+.I /etc/mime.types
+or
+.IR /usr/share/mime/globs .)
+.RE
+.SS Soft conventions
+Further filenaming conventions are softer.
+Though often observed,
+such softer conventions can be bent or broken
+without rendering filenames unconventional.
+.PP
+This subsection introduces soft conventions for filenames.
+.TP
+.B Low line versus hyphen-minus
+.RS
+Whether to use the low
+.RB line\~ \_
+or the
+.RB hyphen-minus\~ \-
+in filenames is a matter of preference.
+Except as stated above,
+convention does not strongly prefer the one over the other.
+.PP
+If you would like advice, anyway, however,
+then the kernel's source sets an example.
+Most filenames in the kernel's source prefer the hyphen-minus.
+You can do the same if you wish.
+.PP
+Even if you prefer the hyphen-minus, though,
+some exceptions arise, as follows.
+.IP \(bu
+The contents of a program's source files usually designate various
+.I entities
+such as variables, functions, types and so forth.
+In\~C and similar programming languages,
+the hyphen-minus is a minus sign,
+so the designations of entities must use the low line, instead.
+Where a file is named after an entity the file introduces,
+the filename should use low lines as the entity's designation does.
+Examples include the file
+.IR lock\_events.h ,
+which introduces the entity
+.IR lock\_events ,
+in the kernel's source.
+.IP \(bu
+Where distinct separators with different semantics are required,
+a filename can use the low line as an alternate separator.
+Examples include the file
+.IR coreutils\_8.30-3\_amd64.deb ,
+which provides revision\~3 of the Debian binary package
+that installs version\~8.30 of the GNU core utilities
+for the amd64/x86-64 architecture.
+.IP \(bu
+Occasionally, the name of a file
+that provides
+private, internal, ephemeral, uninterfaceable or undocumented aspects
+of an implementation
+will
+.I begin
+with a low line to hint that the file
+.RS
+.IP +
+does not require the user's or programmer's attention or
+.IP +
+is unsuitable for external agents to access directly.
+.RE
+.IP
+Examples include the file
+.\" On the author's PC using Groff's default output device,
+.\" Groff typesets the next line's italicized low line inconsistently
+.\" compared to the manual page's other italicized low lines.
+.\" Presumably, Groff does this
+.\" because the low line in question begins its word
+.\" (though why Groff thinks beginning the word significant
+.\" is unclear), but the inconsistency is slightly distracting.
+.I \_sd-common.h
+in systemd's source.
+.IP \(bu
+Sometimes, the low line
+stands for an unspecified letter of the alphabet.
+.PP
+Otherwise,
+despite that the low line and the hyphen-minus
+are both conventional,
+if you want advice:
+prefer the hyphen-minus.
+.RE
+.TP
+.B Letter case
+.RS
+A loosely observed convention
+favors lowercase letters in filenames
+where no reason to use uppercase exists.
+Many exceptions occur, though, as for example the oft-encountered
+.I Makefile
+that instructs
+.BR make (1)
+how to build an executable program or other autogeneratable file.
+.PP
+The reason convention favors lowercase
+is that the general use of lowercase
+leaves uppercase to be employed for emphasis.
+Where the default\~C (or C.UTF-8) locale is in use,
+the uppercase ASCII letters
+are collated before all the lowercase ones,
+whereby
+.BR ls (1)
+lists filenames like
+.I Makefile
+and
+.I README
+before filenames like
+.I a.out
+and
+.IR foo.c .
+[If your locale causes
+.BR ls (1)
+to collate differently
+when you would have preferred the just-described default collation,
+then try
+.B LC\_ALL=3DC ls
+or
+.B LC\_ALL=3DC.UTF-8 ls
+to suppress the locale.
+See
+.BR locale (7).]
+.PP
+Programming styles in languages like\~C++ and Python
+occasionally uppercase some letters
+in the names of types and of certain other entities.
+Such casing can spill over to affect filenames,
+so it is hard to state a general rule.
+.RE
+.SS Locales and Unicode
+.\" If another subsubsection were added to the manual page,
+.\" then this subsection might be demoted to a subsubsection and,
+.\" if appropriate, grouped with the new subsubsection together
+.\" under a new subsection entitled "Further considerations."
+If your application is local rather than international,
+then you can relax POSIX's aforementioned character-set convention
+at your discretion
+by including graphic Unicode characters;
+specifically, by including non-ASCII Unicode characters for which
+.BR iswgraph (3)
+returns true
+in your locale
+or (if your system has it) in the C.UTF-8 locale.
+[For the relationship between
+.BR unicode (7),
+.BR utf-8 (7)
+and
+.BR ascii (7),
+see the respective manual pages.
+Approximately, in brief,
+Unicode is a character set,
+UTF-8 is a byte-oriented scheme
+by which Unicode characters can be encoded,
+and ASCII is both a character set
+and a byte-oriented scheme
+that is a subset of both Unicode and UTF-8.]
+.PP
+To suggest an exact noninternational filenaming rule, other than the
+.BR iswgraph (3)
+rule, for every locale would exceed the scope of this manual page;
+but approximately,
+in a Japanese or French application for instance,
+a filename might respectively
+include kanji ideographs or accented Latin letters.
+Filenames that include kanji ideographs or accented Latin letters
+might be hard for international users to read or type,
+but insofar as such filenames
+exclude spaces, control characters, ASCII symbols
+.RB (like\~ $
+.RB or\~ =3D ),
+and ASCII punctuators
+other than the three punctuators POSIX recommends,
+such filenames will not normally cause trouble for tools
+and, thus, may be regarded as conventional within the local context.
+.PP
+The use of nonbreaking spaces
+.RB like\~ \eu00A0 ,
+.BR \eu2007 ,
+.B \eu202F
+.RB or\~ \euFEFF
+in filenames is probably inadvisable for most locales, despite that
+.BR iswgraph (3)
+returns true.
+[The use of ordinary, breaking spaces
+.RB like\~ \eu0020
+(the familiar ASCII space),
+.BR \eu1680 ,
+.B \eu2000
+.RB through\~ \eu2006 ,
+.BR \eu2008 ,
+.BR \eu2009 ,
+.BR \eu200A ,
+.B \eu205F
+.RB and\~ \eu3000
+is probably also inadvisable, but
+.BR iswgraph (3)
+returns false for those, anyway.]
+.PP
+If calling
+.BR iswgraph (3)
+from a program, incidentally, see also
+.BR mbrtowc (3)
+and
+.BR wcrtomb (3).
+.SS Unconventional filenames
+More than a few files on a typical Linux system,
+occasionally even including standard files
+employed by and/or automatically installed
+by an operating-system distribution,
+have unconventional filenames.
+For example, on a Debian GNU/Linux system,
+some names of files that supply software packages use the
+.RB characters\~ +
+.RB and\~ \(ti
+which, though unconventional in general,
+are normal and expected within that context.
+For another example,
+in the kernel's source, certain filenames use the
+.RB character\~ ,
+to separate a device's designator
+from the name of the device's manufacturer.
+You may have noticed the unconventionally-named
+.I lost+found
+directory lurking at a filesystem's root on your computer;
+and there are further examples, as well.
+.PP
+There are many reasons to use unconventional filenames.
+.PP
+It is hard to give a general rule,
+with respect to a particular context,
+as to which unconventional filenames
+are likely to cause practical troubles
+and which are not.
+If unsure, you can avoid troubles by adhering to convention;
+but if you wish or need to depart from convention,
+then the only suggestions this manual page would make are
+.IP \(bu
+that unconventional filenames not be used without context;
+.IP \(bu
+that unconventional filenames not be used without reason;
+.IP \(bu
+that, even where filenames are unconventional, the recommendations of
+.B Special semantics
+above still be followed if practicable;
+.IP \(bu
+that, where several unconventionally named files are collected,
+the use of unconventional characters be systematic
+(for example,
+.IR 16:30.log ,
+.IR 16:45.log ,
+.I 17:00.log
+and so on);
+.IP \(bu
+that, even if unconventional symbols or punctuators
+are employed within filenames,
+one think twice before
+.I beginning
+a filename with an unconventional symbol or punctuator;
+specifically, before beginning a filename
+with a nonalphanumeric ASCII character
+other than the full stop or low line
+(consider for example a filename that began with
+.RB the\~ \(ti
+.RB or\~ $
+symbol, which a shell might misinterpret as it were a reference
+to a home directory or shell parameter);
+.IP \(bu
+that, even if non-POSIX characters are used,
+non-ASCII characters be avoided
+to the extent to which the application is international;
+.IP \(bu
+that the shell's four standard globbing
+.RB characters\~ *?[]
+be avoided in most instances; and
+.IP \(bu
+even if none of the other suggestions is followed,
+that control characters be avoided in any event,
+.I control characters
+being characters, including the
+.RB tab\~ \et
+and
+.RB line-feed\~ \en
+characters, for which
+.BR iswcntrl (3)
+returns true.
+(Note that,
+although the use of the space in filenames
+contravenes POSIX and anyway annoys many Linux users,
+the space is the sole nongraphic ASCII character
+that, by definition, is not a control character.
+Spaces in filenames are unconventional and perhaps inadvisable,
+but they are hardly unusual;
+whereas tabs and line feeds are,
+for good reason,
+practically never seen.)
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH SEE ALSO
+.BR ls (1),
+.BR sh (1),
+.BR ext4 (5),
+.BR filesystems (5),
+.BR ascii (7),
+.BR locale (7),
+.BR unicode (7),
+.BR utf-8 (7)
+.PP
+info
+.B coreutils
+.\" The author, Thaddeus H. Black, thanks
+.\" his wife Kristie, daughter Naomi and son George
+.\" for their review and proofreading
+.\" of various parts of this manual page; and also thanks
+.\" Alejandro Colomar, G. Branden Robinson and Hendrik Boom
+.\" for their subsequent inspection, discussion and revision.

--hWbXDnsolQAvKTvT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEM1APDU+pwMhnuF4GcGMmQy2FIrwFAmFsrMQACgkQcGMmQy2F
Irx/YRAAwVVF/DYgs2ttmUfVsogBuO9/4ZfoHWKqgD/ApeB18kqNpKhFau+n4h3L
WLf2tmh2XZQPlr4M2GXOKnqRFaF79JDi3IkTg9aNynBhbidFVFcoFFw/KHXO23Oz
lex0I7Ay4m+MeQ/OcW4I7eLGYodchrm6eP3nX1E/N3VAN4ctbBPfr+oAcahHJlaC
haAoCkasJZ0wbBNpksQ/YF7BmQiqBtZtFGdVlTGjeXKzJJtpo+IddcTYIhKoPg9+
5qiytGTwLpHY7zVnbkNC+eosyBd5kd32i06MDqaSMOEFL3w5vQREsNmCKHV39qyK
1YlaQGEHeSrXtItrgQWJENEewvD4goyNSN1QB9mPNWhg09A5ap2uQJzswrCulE1O
DAPQiauu5K57pGPTjQK0YmHGNZfV0+/KuaHjBpASXGKvmhuETetdxqItLmhQ8Dd9
kpsPb75racxWDfT+IYVEtws1CUG4Jxwc4LhoxRoioU4GN8aGq56QJBT1OlONalCr
9i7fuh9HnDS4EZKG+f9sO+RaaQnBIuSqi5jVzU7Wz6s+eBoz0BmIk+VUHPCazFdT
w4hdmE+mb01uxJ/6cZXF096HrWOwV1dQvdyhtkQqCH1oOBiAGbX+oTNTIaLgYlmR
xhRUKo6t7izICEy79RCO2X/gzoxAKU3pN0+OEWKTomqTbO2Mgj0=
=tbGZ
-----END PGP SIGNATURE-----

--hWbXDnsolQAvKTvT--
