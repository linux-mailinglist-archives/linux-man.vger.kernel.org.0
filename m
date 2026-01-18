Return-Path: <linux-man+bounces-4831-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A57D3994B
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 20:02:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C83CB3007FE3
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 19:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C01322F386;
	Sun, 18 Jan 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jIDRRpAZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF87219E8D
	for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 19:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768762952; cv=none; b=JQuYiNTe3Plf/oCyzNS86Ujx7iOuNG4uwJSC498D4bMRd5WJL6tGUCTyg3T/VseFjTKomx0xQnv1b5CpQj+jL0X0qKID66N8IziKTXAc9cR5Tq0kE1HNNlb32TzD0VJaA/AYG255s3WnLOjoYFVDhqDqakyYEM3ME8vj+VxuCDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768762952; c=relaxed/simple;
	bh=OWNfIa0uJwGksFwuEkCuL/E+k517AFDmOlVR/JOuKSw=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=iQMU3y6pOgcoqKRO5ENXGM2DbNiEqFDMQrznE1to6jqsRwI1qvingJZhn2Kj6OZgp+cMLNAxAwRwERIBkL833KZdUm5+1WLIyTE3geTowCqMpdZIEGZdeqkPJ6WYXDrC4BsZzK47R30KSsU6nzEa+M7R/im7rWh1PDtA0Ra6c98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jIDRRpAZ; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-649278a69c5so552833d50.3
        for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 11:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768762948; x=1769367748; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4vHT2wyxyR1vIazOLIkWuQC3mYsy8cvJ2M3yOrbAWMY=;
        b=jIDRRpAZnIw8tOfOjWOPFjNEPa02sbxe8CN5s8o71RNWI0+FwIldYmkNLKpQiRDskO
         Rb4+vjf4wpScQoXCly6YguJ2CYXoywj5Nt+kZnpv7Kc8TxeZ1ujx+L3aLhqPY9qCet/B
         HLxCzpXlf764g9MqyM8e96e9Lw6CyWLkuR8qZ/dowp5bmEv4P+GNdzegzIOQ6TmZmRoz
         q6xGmVK3D9T7KSpPzhpfAo515Uwo+LCDDhoItaNUiNd6TK0wBfTBzB5lT7rZJks50bXp
         om6tgOfnvU+kUr4X9Bir+6oXr1n0uCyoP0kMaIHzhSYBHgnSiEFnBfTNRXlfAoAel/0a
         Uy2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768762948; x=1769367748;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4vHT2wyxyR1vIazOLIkWuQC3mYsy8cvJ2M3yOrbAWMY=;
        b=k82KpreeSYpUlRvp1TgeUmFamAXAuly1Z6r94ZMCvLYn1dInU1YiXwAfRPNICa0B/V
         YArt4exYoVYQS4/jBAFcANu0XOoPz+k1u/mv0wVlvxCirknjwS9HEvQaXL0Tj4d8TMNq
         PruM0oRYG3i2hW/dP1WXTnBkGrAib6Cm6XI7UXALWfVXJB5AeybApE2U9NVYVk9Sv/IS
         WqeIKteDKKIsMjV8CZLYOaCu3MiXI/ZbKXFIrMhnuc1UcTV5gYDkZz3KnLexAyKv0Ajk
         ZwfETmrSCHgqADtPPoJ1Nbnn88PnEv8+2D+aUxObTiuKwvcNIhV0HmhSs6R5Ti/7yIuc
         Cw+w==
X-Gm-Message-State: AOJu0YyJYRh7xuGgvw8IRmDPColcoZSqQyLI9k3XZFozh8Sid1EWyrXn
	HTqCJfWrzJCvVWWCverbmF8l1n9rrcd5ACKH8pFP24VoGqAB7mifMiDjhIaSew==
X-Gm-Gg: AY/fxX6vH7JkkQn6Y9L16P2Rn+rq317Y2moGhrETu9uOpobFamD9Ixcxr+/I1XFvf9F
	k288C1D/PdHiH2PHH3M9kFd311dUpGwFCkJYhtRkyXtQMZXI6xaM8XJthdycqjrRNLshcZI+4He
	doUz3Gel6K0GZMK2lPANRHL94nAqsS7bJdkPtqZHNwjDbxXYo8KklKA4S3qRZvRVrmDWUsOwvH0
	HuMxdMkIbihOPgA7ZE669WXVbz5VI1yp+QSBB08Mt9bA7Z/aOKYsTPJReY6LkGLIAr6Gdk03ki/
	vXU8vZae9Mes4GR6mvk7ipJwX2+VKJIat36J4HdHsMxRDoPtJJoateq12EWJvqj1veFD/LTqvy7
	A0FbTKDAlNGACBo7Ye7XD2h750kVxqZx4sWjBcGgsklvwx9fwFheoSmFO4tIgRL2yPW8CtIDOUp
	sO4TzW0QYeoYA=
X-Received: by 2002:a05:690e:d5a:b0:644:4eec:222 with SMTP id 956f58d0204a3-6491651e4femr6605427d50.85.1768762947477;
        Sun, 18 Jan 2026 11:02:27 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6491700bf46sm4078129d50.6.2026.01.18.11.02.26
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 11:02:26 -0800 (PST)
Date: Sun, 18 Jan 2026 13:02:24 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: groff 1.24.0.rc1 available for evaluation
Message-ID: <20260118190224.yizcrfqroznsmwkr@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="czlwjr2e4abx7jln"
Content-Disposition: inline


--czlwjr2e4abx7jln
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: groff 1.24.0.rc1 available for evaluation
MIME-Version: 1.0

I forgot to CC linux-man@ as I had intended to.

There is a lot of news; you can find the stuff directly relevant to man
pages by searching for the strings '(man)' and '(mdoc)'.

Regards,
Branden

----- Forwarded message from "G. Branden Robinson" <g.branden.robinson@gmai=
l.com> -----

Date: Sun, 18 Jan 2026 11:16:59 -0600
=46rom: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: platform-testers@gnu.org, info-groff@gnu.org
Cc: groff@gnu.org
Subject: groff 1.24.0.rc1 available for evaluation
Message-ID: <20260118171656.eocez4rpflzh4n7f@illithid>

groff 1.24.0 release candidate 1, 1.24.0.rc1, is now available from
GNU's alpha site.  You may download the distribution archive from there.

  https://alpha.gnu.org/gnu/groff/

Ensure the integrity of your download by checking this source code
archive's cryptographic signature; see "Obtaining groff" below.

What is groff?
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

groff (GNU roff) is a typesetting system that reads plain text input
that includes formatting commands to produce output in PostScript,
PDF, HTML, or DVI formats or for display to a terminal.  Formatting
commands can be low-level typesetting primitives, macros from a
supplied package, or user-defined macros.  All three approaches can be
combined.

A reimplementation and extension of troff and other programs from AT&T
Unix, groff is widely available on POSIX and other systems owing to its
long association with Unix manuals, including man pages.  It and its
predecessor have produced several best-selling software engineering
texts.  groff can create typographically sophisticated documents while
consuming minimal system resources.

  https://www.gnu.org/software/groff/

Changes
=3D=3D=3D=3D=3D=3D=3D

Since groff 1.23.0 was released on 5 July 2023, 29 people have made a
total of over 5,000 commits.

$ git shortlog --summary 1.23.0..1.24.0.rc1
    14  Alejandro Colomar
     2  Alexis
     6  Alexis Hildebrandt
     2  Bjarni Ingi Gislason
     1  Bruno Haible
     5  Colin Watson
     1  Collin Funk
    12  Dave Kemper
     1  Deri
    77  Deri James
     4  Duncan Losin
     1  Eloi Monta=C3=B1=C3=A9s
  4872  G. Branden Robinson
     1  Helmut Grohne
     2  Ian Ropers
     3  Ingo Schwarze
     1  Keith Marshall
     4  Lennart Jablonka
     4  Lukas Javorsky
     1  Nikita Ivanov
     6  Norwid Behrnd
     2  Paul Eggert
    42  Peter Schaffter
     1  Pim
     1  Robert Yang
     1  Sebastien Peterson-Boudreau
     3  Sven Schober
     6  TANAKA Takuji
     1  onf

For a list of feature changes, see "News" below.

As of this writing, per the GNU Savannah bug tracker, the groff
project has resolved 352 problems as fixed for the 1.24.0 release.

Another way of capturing the amount of revision is as follows.

$ git diff --stat 1.23.0 1.24.0.rc1 | tail -n 1
 1201 files changed, 148771 insertions(+), 82370 deletions(-)

Obtaining groff
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Here are the compressed sources and a GPG detached signature[*].
  https://alpha.gnu.org/gnu/groff/groff-1.24.0.rc1.tar.gz
  https://alpha.gnu.org/gnu/groff/groff-1.24.0.rc1.tar.gz.sig

Here are the SHA-1 and SHA-256 checksums.

4e2c0a38f11595eca1beb9cf303737e2999944aa  groff-1.24.0.rc1.tar.gz
wkzmiYPLrRR17RUihS/m3I/iRx9WI816XNsKEa6ZW2o=3D  groff-1.24.0.rc1.tar.gz

The SHA-256 checksum is encoded in Base64 instead of the hexadecimal
form that most checksum tools default to.  The mechanism follows.

sha256sum < groff-1.yy.0.tar.gz | cut -f1 -d\  | xxd -r -p | base64

(Because "base64" reads from a pipe, it doesn't know the file name, and
so the file name will not appear in the output.)

[*] Use a .sig file to verify that the corresponding file (without the
    .sig suffix) is intact.  First, be sure to download both the .sig
    file and the corresponding archive.  Then, verify the archive.

      gpg --verify groff-1.24.0.rc1.tar.gz{.sig,}

    If that command fails because you don't have the required public
    key, you can import it.

      wget -O 108747.asc \
        'https://savannah.gnu.org/people/viewgpg.php?user_id=3D108747'
      gpg --import 108747.asc

    Re-run the 'gpg --verify' command subsequently.

Caveats
=3D=3D=3D=3D=3D=3D=3D

o GNU tools, or otherwise POSIX-conforming ones, are generally required
  to build on Solaris 10 or 11.  See the "PROBLEMS" file in the
  distribution archive.

o Solaris 10 has known problems with automated tests; see the "PROBLEMS"
  file in the distribution archive.

News
=3D=3D=3D=3D

VERSION 1.24.0 release candidate
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Noteworthy incompatible changes
-------------------------------

*  If your roff(7) documents follow any of the requests `cf`, `hpf`,
   `hpfa`, `mso`, `msoquiet`, `nx`, `open`, `opena`, `so`, `soquiet`, or
   `trf` with a comment after their file name argument, and did not
   place that comment immediately after the file name, you are likely to
   get a diagnostic message resembling the following.

    warning: cannot open macro file 'e.tmac ': No such file or directory

   Or, less likely, the formatter will open the wrong file, one with
   spaces at the end of its name.  That is because these requests are
   now able to process file names containing space characters.  (This
   change also makes the request syntax consistent with that of `ds`,
   `as`, and others.)  A quick fix is to place the comment escape
   sequence as early as possible.  For example, we would change:

     .mso e.tmac \" Load Eric Allman's package.

   to:

     .mso e.tmac\" Load Eric Allman's package.

   to tell the formatter to load the "e.tmac" file rather than
   "e.tmac ".  See the items below for further details.

*  If your roff(7) documents specify a file name that starts with a
   neutral double quote (") to any of the requests `cf`, `hpf`,
   `hpfa`, `mso`, `msoquiet`, `nx`, `open`, `opena`, `so`, `soquiet`, or
   `trf`, you are likely to get a diagnostic message, or the formatter
   will open a file of the same name except for the leading neutral
   double quote.  That is because these requests are now able to process
   file names containing leading space characters.  (This change also
   makes the request syntax consistent with that of `ds`, `as`, and
   others.)  The solution is to add an additional neutral double quote
   to the start of the file name argument.  For example, we would
   change:

     .so "5150".lrc

   to:

     .so ""5150".lrc

   to tell the formatter to read a file named '"5150".lrc', where the
   neutral single quotes bracket the file name.

*  groff mdoc(7)'s font customization feature, undocumented but
   analogous to that of 4.4BSD mdoc, now expects the strings that
   designate font names to be precisely that: font _names_ (or abstract
   styles, or mounting positions), rather than arbitrary *roff syntax.
   (String interpolations remain acceptable, as long as what they
   interpolate is a valid argument to the `ft` request or `\f[xxx]`
   escape sequence.)

*  Support for terminal devices using the CCSID 1047 (EBCDIC) encoding
   has been withdrawn.  See below for motivation and a workaround.

troff
-----

*  troff now recognizes an -S option, which "locks" safer mode,
   rejecting any subsequent specification of -U on the command line with
   an error diagnostic.

*  The `cf` request is now disabled in safer mode; as with `pi` and
   `sy`, you must specify troff's "unsafe mode" option `-U` to use it.
   Alternatively, use the `trf` request, available since groff 0.6
   (circa 1990), to embed a file in GNU troff's output while discarding
   characters (most C0 and C1 controls) that are invalid as GNU troff
   input--and incidentally also undefined in GNU troff output.

*  The `hpfcode` request now emits an error when used, advising of its
   planned withdrawal, but then proceeds with normal behavior.  The
   documented replacement mechanism, the `hcode` request, has existed
   since groff 1.02 (June 1991) at the latest.

*  The `mso` request no longer attempts to open a macro file named, say,
   "tmac.s" if "s.tmac" was specified as the argument and not found, nor
   vice versa.  This feature was a convenience for some old AT&T troff
   installations, but few of those remain in the field, and of those
   that we know to survive, few use a macro file naming convention for
   which this feature is any help.  (DWB 3.3 and Solaris do not, and we
   think other System V troffs don't, either.  Only Plan 9 troff does.)
   `mso` now simply processes the macro search path for a file name
   matching the request argument, and succeeds or fails depending on an
   exact match.

   If you desire this functionality for portability (keeping in mind
   that `mso` is itself a groff extension), consider the following.

     .\" Load the ms package, whatever it might be named.
     .\" troffs without groff extensions must know its full path.
     .if !\n(.g .so /path/to/tmac.s
     .\" The following requests do nothing on non-GNU troffs.
     .do msoquiet s.tmac\" If file present, defines `LP` macro.
     .do if !d LP .msoquiet tmac.s

*  GNU troff no longer accepts nonpositive page lengths.  Attempting to
   set one with the `pl` request clamps the page length to the vertical
   motion quantum as `ll` does with the horizontal motion quantum in
   AT&T and GNU troffs.

*  GNU troff no longer accepts a newline as a delimiter for the
   parameterized escape sequences `\A`, `\b`, `\o`, `\w`, `\X`, and
   `\Z`.

*  GNU troff no longer accepts C0 controls or Latin-1 Supplement
   characters in identifiers.  We prohibit C0 controls to make the
   language less tolerant of unreadable input, and Latin-1 Supplement
   code points to enable us to pivot to reading UTF-8-encoded input in a
   future release.  (Thus, we plan for Latin-1 Supplement characters to
   again be accepted in identifiers, but only as components of multibyte
   UTF-8 sequences.)

*  The `color`, `cp`, `kern`, `linetabs`, and `vpt` requests now
   interpret arguments with negative values as instructions to disable
   the corresponding feature, using the *roff integer-to-Boolean
   conversion idiom instead of the C/C++ one.  Thus, if you invoke these
   requests with a register interpolation as an argument, the outcome
   agrees with an `if` test of the register's value.

*  GNU troff now implements saturating rather than wrapping integer
   arithmetic.  Where before overflow would cause an error diagnostic
   and abort evaluation of the expression, the formatter now emits a
   warning diagnostic in the "range" category and continues evaluation.

*  GNU troff now strips a leading neutral double quote from the argument
   to the `cf`, `hpf`, `hpfa`, `lf`, `mso`, `msoquiet`, `nx`, `pi`,
   `pso`, `so`, `soquiet`, `sy`, and `trf` requests, and the second
   argument to the `open` and `opena` requests, allowing it to contain
   embedded leading spaces.

*  GNU troff now accepts space characters in the argument to the `cf`,
   `hpf`, `hpfa`, `lf`, `mso`, `msoquiet`, `nx`, `so`, `soquiet`, and
   `trf` requests, and the second argument to the `open` and `opena`
   requests.  See "soelim" below.

*  The "number" warning category has been withdrawn.  The diagnostic
   that formerly used it has been promoted to an error.

*  The "el" warning category has been withdrawn.  If enabled (which it
   was not by default), the formatter would emit a diagnostic if it
   inferred an imbalance between `ie` and `el` requests.  Unfortunately
   its technique wasn't reliable and sometimes spuriously issued these
   warnings, and making it perfectly reliable did not look tractable.
   We recommend using brace escape sequences `\{` and `\}` to ensure
   that your control flow structures remain maintainable.

*  The "right-brace" warning category has been withdrawn.  If enabled
   (which it was not by default), the formatter would emit a diagnostic
   in exactly one circumstance: when a numeric expression was expected
   (as, for instance, the second argument to an `nr` request) but a
   right brace escape sequence `\}` was encountered instead.  This
   diagnostic still issues, but it is now an error.

*  GNU troff now performs some limited processing/transformation of the
   argument to the `\X` escape sequence and its counterpart `device`
   request, to address the requirement that some documents have to pass
   metadata that must encode non-ASCII characters in device extension
   commands.  (For example, a document author may desire a document's
   section headings containing non-ASCII code points to appear correctly
   in PDF bookmarks.  Further, GNU troff encodes its output page
   description language only in ASCII.)  This change is expected to be
   of significance mainly to developers of output drivers for groff;
   groff_diff(7) describes the transformations.  If you have been using
   `\X` or `.device` to pass ASCII data to the output driver as a device
   extension command and require that it remain precisely as-is, use the
   `\!` escape sequence or `output` request, and prefix your data with
   "x X ", the device-independent troff means of expressing a device
   extension command (see groff_out(5)).

*  In nroff mode (in other words, when producing output for devices that
   claim to be terminals), the formatter now reports warning diagnostics
   regarding certain output problems using units of lines (vertically)
   and character cells [ens] (horizontally) instead of inches (or the
   unit configured with the `warnscale` request) to describe the drawing
   position where the problem occurred.

*  The device-independent page description language produced by GNU
   troff now reports unbreakable spaces (those produced with the `\~`
   escape sequence) as word boundaries with the documentary 'w' command,
   just as it does for regular breakable spaces.

*  A new request, `hydefault`, and read-only register, `.hydefault`,
   manage the default automatic hyphenation mode of an environment.
   This resolves a long-standing problem of *roff formatting.

     When processing input like this,
     .nh
     and we temporarily shut off automatic hyphenation,
     .hy
     the foregoing request would not do exactly what we expect.

   AT&T and other troffs apply a hyphenation mode of 1 to the final
   input line (and subsequent ones), rather than restoring the mode in
   use before the `nh` request.  Apart from overturning user
   expectations, for GNU troff "1" is not an appropriate mode for its
   English hyphenation patterns.  (For example, "alibi" would break as
   "ali-bi" instead of "al-ibi" after this argumentless `hy`
   invocation.)  With updates to groff's localization files accompanying
   this release, the foregoing input now works as desired.

*  A new read-only, string-valued register, `.trap`, interpolates the
   name of the next page location trap after the drawing position.

*  New registers `.it`, `.itc`, and `.itm` are available.  These
   read-only (and, in the case of `.itm`, string-valued) registers
   report the number of lines remaining in a pending input trap, a
   Boolean indication of whether that pending input trap honors output
   line continuation (cf. the `it` and `itc` requests), and the name of
   the macro associated with the pending input trap, respectively.

*  A new request, `pchar`, reports to the standard error stream details
   of any class or ordinary, special, or indexed character arguments.

*  A new request, `pcolor`, reports to the standard error stream details
   of each color name specified as an argument, including its color
   space identifier and channel value assignments.  Without arguments,
   all defined colors are listed.  (A device's default stroke and/or
   fill colors, "default", are not listed since they are immutable and
   their details unknown to the formatter.)

*  A new request, `pcomposite`, reports to the standard error stream the
   list of configured composite character mappings.

*  A new request, `pfp`, reports to the standard error stream the
   list of occupied font mounting positions and the corresponding
   abstract style name or font information.

*  A new request, `pftr`, reports to the standard error stream the
   list of configured font translations.

*  A new request, `phw`, reports to the standard error stream the
   list of hyphenation exceptions associated with the current
   hyphenation language.

*  A new request, `pline`, reports to the standard error stream the list
   of output nodes (an internal data structure) corresponding to the
   pending output line.  The list is empty if no such nodes exist.

*  The `pm` request now interprets any arguments as a sequence of macro,
   string, or diversion names, and reports their contents.

*  The `pnr` request now additionally reports the autoincrementation
   amount and interpolation format of each register (if it is not
   string-valued).

*  The `pnr` request now accepts arguments.  It treats each as
   identifying a register and reports its properties to the standard
   error stream.

*  A new request, `pstream`, reports to the standard error stream the
   name of each stream opened with the `open` or `opena` requests, the
   name of the file backing it, and its mode (writing or appending).

*  The `ptr` request has been renamed to `pwh` (mnemonic: "Print WHen
   traps will spring").  As a rule, debugging requests starting with `p`
   correspond to a request name that manipulates the objects reports on
   when the `p` is removed.  However, `ptr` had nothing to do with the
   `tr` request.  The only exceptions to the stated rule of `p`-removal
   are now `line`, `m`, and `stream`, none of which are request names.

*  The `hla` request, when invoked with no arguments, now clears the
   hyphenation language, disabling automatic hyphenation.

*  The read-only registers `.m` and `.M` now interpolate "default" when
   the default color is selected as the stroke or fill color,
   respectively, rather than interpolating nothing.

*  Numeric expression contexts that accept the `z` and `u` scaling
   units, such as the `ps` request and `\s` escape sequence, now also
   accept `p` and `s`.

*  troff's `-c` command-line option now also removes the `color`
   request's ability to enable multi-color output.

eqn
---

*  The "gifont" primitive replaces "gfont" as the means of configuring
   the global italic face in preprocessed equations.  "gfont" remains
   recognized as a synonym for backward compatibility.  The new name is
   intended to ease acquisition of the eqn language in light of GNU
   eqn's thirty-year-old extensions "gbfont" and "grfont".

*  New parameters tunable with the GNU eqn "set" primitive, "half_space"
   and "full_space", enable a document to configure the space widths
   produced by the eqn tokens '^' and '~', respectively.  Previously,
   their widths were determined by the "thin_space" and "thick_space"
   parameters used to tune GNU eqn's automatic spacing computations.

*  The new "reset" primitive restores a named parameter to its default.

groff
-----

*  The groff command now encodes the fate of failing processes in the
   pipeline it constructs and runs so that this information cannot be
   confused with groff's own error conditions (such as a usage error,
   which now produces an exit status of 2).  See the section "Exit
   status" of groff(1) for details.

*  groff now passes the -S option to pic and troff if it is specified.

nroff
-----

*  nroff now recognizes the -a, -D, -I, and -Z options and passes them
   to groff.

*  nroff now supports clustered options ("-tzms", for example) as groff,
   troff, and other GNU getopt-using programs do.

pic
---

*  A new command, `polygon`, supports drawing polygons using arbitrary
   vertices.  The command furthermore accepts the `fill[ed]` modifier.
   You can address a polygon's vertices and the midpoints of its edges
   with the new `.v[er[tex]]` and `.mid[point]` syntax suffixed to an
   object identifier, analogously to the existing compass point and
   `.c[enter]` feature.  Thanks to Duncan Losin.

*  pic's -S option now "locks" safer mode, rejecting any subsequent
   specification of -U on the command line with an error diagnostic.

soelim
------

*  soelim no longer requires embedded space characters in `so` arguments
   to be backslash-escaped.  (It continues to support that syntax, even
   though neither the AT&T nor GNU troff formatters ever have.)  You can
   now embed a sequence of leading spaces in the argument by prefixing
   it with a with a neutral double quote character ("), which the
   program discards.  These changes are to better align this program's
   parsing rules with the language of the formatter; consider the `ds`
   and `as` requests.

Macro packages
--------------

*  Keith Marshall's pdfmark package is no longer distributed with groff,
   but is now separately maintained.  Please visit
   <https://savannah.nongnu.org/projects/groff-pdfmark> for the latest
   version.

*  mom version 2.6 is distributed with this release.  It supports
   multi-line headings.  Thanks to Peter Schaffter.

*  The device-specific macro files loaded by "troffrc" automatically on
   startup, such as "html.tmac", no longer perform font translations for
   some font names used by varieties of AT&T troff ('C', 'Hb', 'HX', and
   several others).

   These names are not portable: in AT&T troff, the font repertoire,
   like the special character repertoire, was device-dependent.  Since
   groff 1.23.0, GNU troff diagnoses attempts to use nonexistent font
   names.  We recommend addressing such portability issues wherever
   suits you: (1) in a document, perhaps by using `ie` and `el` requests
   and the `.g` register to test whether the formatter claims support
   for groff extensions, then `ie` and `el` again with the `F` groff
   conditional expression operator to check for font availability, and
   to perform font remappings with the groff `ftr` request as desired;
   (2) doing so in your "troffrc" file; or (3) by modifying these macro
   files similarly.  Users of the "dvi" and "lbp" output devices should
   be aware that these devices don't supply full families of monospaced
   fonts (and never have).  See grodvi(1) and grolbp(1) for lists of
   font names supported by each device.

   The legacy names are retained for the "pdf" and "ps" devices for this
   release; however, use of them prompts one warning in the "font"
   category from the formatter per deprecated name.  We expect to
   withdraw support for the names completely in a future groff release.
   See gropdf(1) and grops(1) for lists of font names supported by each
   device.

*  Hyperlink support is now enabled by default on PDF and terminal
   devices for an (man) and doc (mdoc) documents.  Instructions and
   commented code for disabling it are in the "man.local" and
   "mdoc.local" files.

*  The `PDFPIC` macro implemented in the "pdfpic.tmac" macro file now
   uses identify(1) (from ImageMagick/GraphicsMagick) and file(1), if
   available, to attempt to determine the dimensions of an image to be
   embedded in a PDF document.  See also the item regarding gropdf(1)
   below.  Thanks to Deri James.

*  The an (man) package now supports use of its hyperlink macros (`UR`,
   `UE`, `MT`, and `ME`) in paragraph tags (that is, on the next line
   after a `TP` macro call).  Use of the `MR` man page cross reference
   macro in a tag was already supported in groff 1.23.0.

*  The behavior of the an (man) package's `SY` and `YS` macros has been
   expanded to enable greater user control over vertical spacing and to
   make them convenient for synopsizing C language functions, not just
   commands.  `SY` no longer puts vertical space on the output, and
   initially breaks the output line _only_ if it is encountered
   repeatedly without a preceding `YS` call.  The computed indentation
   of synopsis lines after the first now also includes the width of
   anything already on the output line, so that you can precede the `SY`
   call with, for instance, the C language data type used for the return
   value in a function prototype.  The `SY` macro now accepts an
   optional second argument.  This second argument is typeset in bold,
   replaces the fixed-width space that is appended to the synopsis
   keyword in `SY`'s single-argument form, and is used in computation of
   the indentation of non-initial synopsis lines.  However, this
   computed indentation can now also be overridden with that of the
   previous synopsis item.  To do this, give any argument to the `YS`
   macro call "closing" the synopsis whose indentation you want to
   reuse.  When you're done with such a grouped synopsis, leave the
   argument off the final `YS` call.

   In a "Synopsis" section of a man page, existing synopses consisting
   of a single item require no migration.  This is the most common case.

   For others, where before you would write...

   .SY mv
   .I source
   .I destination
   .YS
   .
   .SY mv
   .I source
   \&.\|.\|.\&
   .I destination-directory
   .YS

   ...you would now write the following.

   .SY mv
   .I source
   .I destination
   .YS
   .
   .P
   .SY mv
   .I source
   \&.\|.\|.\&
   .I destination-directory
   .YS

   (That is, simply add a paragraphing macro.)

    And where before you would write...

   .SY mv
   .B \-h
   .
   .SY mv
   .B \-\-help
   .YS

    ...you would now write the following.

   .SY mv
   .B \-h
   .YS
   .
   .SY mv
   .B \-\-help
   .YS

   (That is, simply add `YS` after the first synopsis item.)

   Likely the biggest benefit of these changes is that it is now much
   easier to format C function prototypes with these macros.  Here's how
   we would synopsize a somewhat complex standard C library function.

   .B "#include <stdio.h>"
   .P
   .B void *\c
   .SY bsearch (
   .BI const\~void\~*\~ key ,
   .BI const\~void\~*\~ base ,
   .BI size_t\~ nmemb ,
   .BI int\~(* compar )\c
   .B (const\~void\~*, const\~void\~*));
   .YS

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

*  The an (man) and doc (mdoc) macro packages use slightly different
   vertical margins than previously, to align more closely with the
   traditional implementations of these packages.  Per man(7) in the
   AT&T Unix System III manual (June 1980), the text area was 6.5 by 10
   inches (on typesetters).  When formatting for terminals with
   continuous rendering disabled (by default, it is enabled), the page
   footer now sets one line higher than before.

*  The an (man) and doc (mdoc) macro packages have added additional
   registers `BP`, `PO`, and `TS` for user configuration of man page
   rendering at formatting time.  As noted in groff_man(7) and
   groff_mdoc(7), documents should never manipulate these.

*  The an (man) and doc (mdoc) macro packages now support a `BP`
   register to configure the ("base") paragraph inset amount; that is
   the amount used by man(7) for paragraphs not within an `RS`/`RE`
   relative inset, and in mdoc(7) for all paragraphs.  Formerly, the
   `IN` register configured this amount with other indentation and inset
   amount parameters used by man(7).  (In mdoc(7), it had no other
   purpose.)  The base paragraph indentation default is now 5n,
   corresponding to that used by historical man(7) and mdoc(7)
   implementations going back to Unix Version 7 (1979) and 4.3BSD-Reno
   (1990), respectively.

*  The an (man) and doc (mdoc) macro packages now support a `PO`
   register to configure the page offset used by the formatter.

*  The an (man) macro package now supports a `TS` register to configure
   the minimum space required between the tag of a `TP` paragraph and
   its body.  (If the width of the tag's formatted text plus this space
   exceeds the paragraph indentation, the line is broken after the tag.)
   This parameter, formerly hard-coded as `1n`, now defaults to `2n`.

*  The an (man) macro package's `IP` macro no longer honors the formerly
   hard-coded 1n tag separation noted in the previous item.  This means
   that the first argument to the `IP` macro can abut the text of the
   paragraph with no intervening space.  If you use a word instead of
   punctuation or a list enumerator for `IP`'s first argument, consider
   migrating to `TP`.

*  The "an-ext.tmac" macro file, loaded automatically by the an (man)
   macro package, no longer defines `DS` and `DE` macros.  It had
   defined them as empty (undocumentedly) since groff 1.20 (2009).

*  The doc (mdoc) macro package's `Mt` macro now sets its argument in
   roman, not italics (or whatever the string `doc-Pa-font` was
   configured to use).  A new string, `doc-Mt-font`, for use in
   "mdoc.local" files and similar, supports configuration of this face.

*  The doc (mdoc) macro package now performs font family switches
   inline (that is, on the same output line) to Courier much less
   frequently when formatting for typesetters, affecting the `Ar`, `Cm`,
   `Er`, `Fa`, `Fd`, `Fl`, `Fn`, `Ft`, `Ic`, `Li`, and `Nm` macros.
   This change was made to reduce the ambiguity of space widths when
   typesetting the monospaced Courier and proportional Times fonts
   adjacently.  Bear in mind that you can use the "mdoc.local" file to
   customize the font used to render nearly any mdoc(7) macro's
   arguments; this mechanism has been in place since 1992.

*  The doc (mdoc) macro package's `Ql` macro now operates more simply;
   it no longer (ever) quotes its arguments when formatting for
   typesetters.  In practice, it does not seem difficult to distinguish
   even single characters in Courier from those in Times.  (If it is, an
   _explicit_ quoting macro like `Sq` or `Dq` should be used.)

*  The doc (mdoc) macro package's `Lk`, `Mt`, and `Xr` macros now
   produce hyperlinks on HTML, PDF, and terminal devices.  See above
   regarding hyperlink support being enabled by default.

*  The doc (mdoc) macro package now honors the `U` register and `MF`
   string as the an (man) package does.

*  The new macro file "koi8-r.tmac" supports the KOI8-R character
   encoding, which supports the new Russian locale for groff.

*  The m (mm) macro package now uses a 3v bottom margin rather than 2v.
   (Using the default type size and vertical spacing, the result is a
   half-inch margin, just like the existing top margin.)  When
   formatting for terminals, content aligned to the bottom of the page
   (footers, footnotes, `BS`/`BE` bottom blocks, and similar) now sets
   one line higher than before.  Further, the margin between the body
   text and any page footers is now 2v, like that between the body text
   and page headers, not 1v.

*  The m (mm) macro package's `Limsp` register (a GNU extension) has
   been removed; see the item regarding the `LI` macro below.

*  The m (mm) macro package's `Le` register now defaults to `1`,
   consistently with the `Lf`, `Lt`, and `Lx` registers of similar
   purpose, but inconsistently with DWB 3.3 mm.  Explicitly assigning
   the `Le` register in a document's preamble works as it always has.

*  The m (mm) macro package's `AST` macro (a GNU extension) is
   deprecated, warns upon usage, and is slated for withdrawal in a
   future release.  Assign to the new string `Abstract` instead.

*  The m (mm) macro package's `ISODATE` macro (a GNU extension) is
   deprecated, warns upon usage, and is slated for withdrawal in a
   future release.  Assign to the new register `Isodate` instead.

*  The m (mm) macro package's `EPIC` macro (a GNU extension) now
   interprets its "width" argument in ens by default, and its "height"
   argument in vees, instead of basic units, for consistency with the
   rest of the package.

*  Similarly, the m (mm) macro package's `PIC` macro (a GNU extension)
   now interprets an argument to its `-I` option in ens instead of ems
   by default.

*  The m (mm) macro package no longer superscripts _and_ brackets a
   reference mark (the `Rf` string).  Instead, the new `Rfstyle`
   register controls its formatting.  The default, 0, selects bracketing
   in nroff mode and superscripting in troff mode.  Set `Rfstyle` to 3
   in a document to obtain groff mm's previous mark formatting behavior.

*  The m (mm) macro package's `Li` register now defaults to 5 ens (not
   6) to align with the `Pi` register default.

*  The m (mm) macro package's `Li` register now configures the text
   indentation of items in `RL` lists (as it long has for `AL` lists)
   instead of hard-coding a value of 6 ens as DWB 3.3 mm does.

*  The m (mm) macro package's `BVL` (a GNU extension) and `VL` macros'
   first arguments are now optional.  If omitted, the paragraph
   indentation amount (register `Pi`) is used for list items' text
   indentations.

*  The m (mm) macro package's `DL` macro now uses the `EM` string as the
   mark instead of an em dash special character literal.  (The latter
   remains the default definition of the `EM` string.)

*  The m (mm) macro package's `DS` macro now interprets its third
   argument (a right-hand indentation) in ens by default, for
   consistency with the rest of the package.  This is a difference from
   DWB mm (which passed the value unprocessed to the `ll` request, which
   itself uses ems), and groff mm's own historical behavior, which used
   basic units.

*  The m (mm) macro package's `HU` macro now supports an optional second
   argument as a GNU extension.  It corresponds to the optional third
   argument of the `H` macro.

*  The m (mm) macro package's `IND` macro (a GNU extension), now calls
   `SK` only if no `TXIND` macro is defined, instead of performing this
   action as part of the fallback when no `TYIND` macro is defined.

*  The m (mm) macro package now supports a user-definable hook macro
   `AFX`, which if defined is called by `AF` in lieu of the latter's
   normal operation.  Applications include customization of letterhead.

*  The m (mm) macro package now supports a user-definable hook macro
   `RPX`, which if defined is called by `RP` in lieu of the latter's
   normal operation (breaking the page [potentially], and formatting the
   reference list caption string `Rp`).

*  The m (mm) macro package's `LI` macro now interprets its second
   argument as a Boolean value indicating whether a space should
   separate the list item mark from its prefix (the first argument).
   Thus, where you formerly specified "2" to indicate no such
   separation, you would now use "0", matching the semantics of the
   former `Limsp` register.  "2" continues to be recognized and handled
   as before, but prompts a warning; migrate your documents.

*  The m (mm) macro package now supports an `Aumt` string to suppress
   the appearance of positional arguments to the `AU` macro in the
   document heading used by memorandum types 0-3 and 6.  By default, all
   such arguments appear, except the second (author initials).  For
   example, a value of "3 4" more accurately reproduces London &
   Reiser's 1978 paper describing the porting of Unix to the VAX-11/780.

*  The m (mm) macro package now supports an `Rpfmt` string specifying
   the `LB` macro arguments that the package uses to format the items in
   an `RP` reference list.

*  The m (mm) macro package now supports the `E` register as DWB mm did.

*  The m (mm) macro package now supports DWB mm's `Rg` string.

*  The m (mm) macro package's `nP` macro now behaves more like DWB mm's.
   It applies a temporary indentation to the second output line of a
   paragraph to align it with the start of the paragraph text (not the
   tag/label) in the first, and resets the paragraph counter when the
   first- or second-level section heading number increments.

*  The m (mm) macro package's `Iso` register is now named `Isodate` to
   make its meaning less ambiguous.  The old name remains as an alias.

*  The m (mm) macro package's `Rpe` register is now named `Rpej` for
   better symmetry with `Ej`.  The old name remains as an alias.

*  The m (mm) macro package has renamed several strings to make their
   purposes less obscure; they determine the content of captions, not
   list items.
     `Licon` -> `Captc`
     `Liec`  -> `Capec`
     `Liex`  -> `Capex`
     `Lifg`  -> `Capfg`
     `Litb`  -> `Captb`
   The old names remain as aliases.

*  The m (mm) macro package has renamed the `Tcst` string to `Tcstatus`
   to make its purpose less obscure.  The old name remains as an alias.

*  The m (mm) macro package recognizes new register names `Ftnum` and
   `Rfnum` for the automatically incrementing footnote and reference
   counters.  The old, DWB-compatible but cryptic, names `:p` and `:R`
   remain supported.

*  The s (ms) macro package now sets the vertical spacing register
   defaults for normal (`VS`) and footnote (`FVS`) text to 120% of the
   type size configured in the `PS` and `FPS` registers, respectively,
   rather than 2 points larger, to comport with generally accepted
   typesetting principles.  Thus, when formatting a document with a type
   size of 20 points, the vertical spacing now defaults to 24 points
   rather than 22.

*  The s (ms) macro package now subtracts one vee from the footer trap
   location computed using the `FM` register.  When using the default
   `FM` value of `1i`, this makes the size of the margin from the footer
   baseline to the bottom of the page 3 vees or one half-inch,
   consistently with that between the header baseline and the page top.
   While a bug fix, and consistent with DWB 3.3 ms, this computation is
   inconsistent with Seventh Edition Unix ms and Heirloom Doctools ms.
   When formatting for terminals, footers now set one line higher than
   before.  The size of the footnote area is not affected; instead there
   is a 1v smaller margin between its bottom and the footer baseline.

Output drivers
--------------

*  grohtml(1), the (X)HTML output driver, supports a new `-k` command-
   line option that takes a mandatory argument, either "ascii" or
   "utf-8", which it recognizes case-insensitively.  This feature
   configures representation of character entities in the output.  Based
   on work by TANAKA Takuji.

*  gropdf(1), the PDF output driver, now allows embedding of JFIF/JPEG
   and JPEG 2000 image file formats.  If PerlMagick is installed, many
   more image file formats, including PNG, PAM, and GIF, can be
   embedded.  See also the item regarding `PDFPIC` above.  Thanks to
   Deri James.

*  gropdf now supplies its own "SS" (slanted symbol) font to improve
   rendering of documents requiring slanted lowercase Greek letters,
   such as those employing the eqn(1) preprocessor.  groff supplies the
   font in PFB format, and gropdf automatically embeds it, as it is not
   a standard PDF font.  Formerly, groff's "pdf.tmac" file defined
   fallback characters for lowercase Greek letters, applying a slant of
   16 degrees to the upright glyphs available in the standard symbol
   font "S".  That technique produced glyphs slightly larger than those
   in grops's "SS" font.  Thanks to Deri James.

*  gropdf now subsets embedded fonts by default, meaning that it stores
   only the glyphs a document actually uses.  Font subsetting usually
   reduces the size of the PDF gropdf creates.  Thanks to Deri James.

*  gropdf supports a new `--opt` command-line option, permitting a few
   features, including font subsetting, to be selectively enabled.
   Thanks to Deri James.

*  gropdf now emits PDFs that conform to the PDF 1.7 standard (also
   known as ISO 32000).  Its new `--pdfver` command-line option permits
   production of PDF 1.4-conformant output instead.  Thanks to Deri
   James.

*  gropdf supports a new `pdf: pagenumbering` device extension command
   and `pdfpagenumbering` convenience macro, allowing control of the
   page numbers in a PDF reader's overview panel.  It is common for a
   document to number early pages with Roman numerals and then restart
   page enumeration at decimal 1 for its main matter.  Thanks to Deri
   James.

*  gropdf now offers its own implementations of the "pdfmark" macro
   package's "pdfhref" and other macros, supporting internal (bookmarks,
   named destinations) and external (URL) hyperlinks, and the
   specification of hotspots for link text.  For example, when bundling
   multiple man pages into a collection, as the supplied
   groff-man-pages.pdf document and the Linux man-pages project do,
   references to man pages within the collection are supported with
   internal hyperlinks, and those outside with external ones.  Thanks to
   Deri James.

*  gropdf now supports characters outside the Unicode Basic Latin subset
   in bookmarks, named destinations, and external hyperlinks.  (They
   must be encoded using groff's Unicode special character escape
   sequences; the preconv preprocessor is helpful to simply this
   requirement.)  Thanks to Deri James.

*  gropdf now recognizes a `GROPDF_OPTIONS` environment variable,
   interpreting it as a space-separated list of command-line options.
   Explicit command-line options override any settings from this
   environment variable.  You can use this variable to obviate passing
   options to gropdf via groff's `-P` option.  Thanks to Deri James.

*  grops(1), the PostScript output driver, now supports fonts encoded
   using UTF-16.  Indicate the encoding by including the string
   "-UTF16-" within the font's name as specified by the "internalname"
   directive in its font description file.  Thanks to TANAKA Takuji.

*  The PostScript output driver grops(1) no longer accepts spaces as
   field separators in its "download" file; this is so that spaces can
   appear in font file names, and to better align the syntax of this
   file with that used by gropdf(1).  The download file for grops
   shipped by groff has long used tabs rather than spaces for field
   separation.

*  The PostScript output driver grops(1)'s macro file "ps.tmac" no
   longer defines fallback special characters `\[S ,]` and `\[S ,]` to
   simulate support for what Unicode calls LATIN {CAPITAL,SMALL} LETTER
   S WITH COMMA BELOW.  The file's definition constructed these glyphs
   by overstriking the Basic Latin "S" (or "s") with a cedilla accent,
   which is regarded as less orthographically acceptable than in the
   past.  A user's document or macro file can still do exactly what
   "ps.tmac" used to.

     .fchar \[S ,] \o'S\[ac]'
     .hcode \[S ,]s
     .fchar \[s ,] \o's\[ac]'
     .hcode \[s ,]s

*  The PostScript output driver grops(1) once again accepts a file name
   containing slashes as a document prolog or resource (such as a font
   to be downloaded into the document).  This is a restoration of groff
   1.22.4 and earlier behavior; groff's 1.23.0 change of not accepting a
   file name containing slashes as an encoding or font description
   remains in place.  (We impose this restriction because the output
   driver interprets the contents of these files; it does not interpret
   the PostScript prolog or resource files.)

*  grotty(1) now supports devices recognizing ECMA-48/ISO 6429 SGR 38
   and 48 escape sequences that select RGB colors using 8 bits per color
   channel.  A new command-line option, `-t`, configures emission of
   these escape sequences instead of the SGR 30-37 and 40-47 sequences
   supporting 3- or 4-bit color.  Thanks to Deri James.

   Example:

   $ groff -T utf8 -P -t <<EOF
   .defcolor pink rgb #ffc0cb
   .defcolor springgreen rgb #00ff7f
   Hello, \f[B]\m[pink]colorful \m[springgreen]world\m[default]\f[]!
   .pl \n[nl]u
   EOF

*  gxditview(1), the X11 output driver and document previewer, now
   accepts the option `-v` as a synonym of `--version` (and `-version`).
   This change aligns it with other groff output drivers, and makes it
   work correctly with "groff -vX".

Utilities
---------

*  afmtodit now recognizes a '-q' option to suppress diagnostics
   reporting duplicate mappings in favor of a count thereof, and the
   "BuildFoundries" script uses it.  Recent versions of the URW fonts
   have tons of duplicate mappings (for groff's purposes) and to our
   knowledge these are all harmless.

*  grog no longer supports the `--ligatures` and `--run` options.
   Simulate the former (which was specific to the "pdf" output device)
   with the option sequence "-P -U -P y", and the latter by using the
   command substitution feature of your shell; see section "Examples" of
   groff(1).

Miscellaneous
-------------

*  The contributed programs gperl and gpinyin no longer accept
   abbreviated forms of the long options `--help` and `--version`.  The
   respective synonymous short options `-h` and `-v` remain.

*  Font description files now support a variant of the "charset"
   directive: "charset-range" works like the existing "charset"
   directive except that the glyph descriptions use a `name` of the form
   "uEEEE..uFFFF" (where "EEEE" and "FFFF" are hexadecimal digit
   sequences), and apply the metrics identically to all glyphs in the
   designated range.  Thanks to TANAKA Takuji.

*  groff now ships font description files usable with the "ps", "html",
   "xhtml", and "utf8" output devices to support East Asian fonts.
   (Caveat: with few exceptions, groff does not ship font files
   themselves.)  These are intended as abstractions of faces to permit
   consistent naming while allowing custom font selections, just as with
   the 12 text typefaces supported across output devices for Latin
   scripts in groff (three families of four styles each).  These CJK
   font descriptions are not organized into groff font families, but are
   similarly arranged.

      CSH: Simplified Chinese, Hei style
      CSS: Simplified Chinese, Song style
      CTH: Traditional Chinese, Hei style
      CTS: Traditional Chinese, Song style
      JPG: Japanese, Gothic style
      JPM: Japanese, Mincho style
      KOG: Korean, Gothic style
      KOM: Korean, Mincho style

   Thanks to TANAKA Takuji.

*  The commands addftinfo, grodvi, post-grohtml, grolbp, grolj4, grops,
   grotty, eqn, pre-grohtml, gxditview, pic, preconv, refer, soelim,
   tbl, groff, troff, hpftodit, indxbib, lkbib, lookbib, tfmtodit, and
   xtotroff now exit with status 2 instead of 1 on usage errors.  grn
   now exits with status 2 on a usage error instead of a successful
   status (0).

*  Support for terminal devices using the CCSID 1047 (EBCDIC) encoding
   has been withdrawn.  This change partially clears the way for GNU
   troff to interpret UTF-8 input directly (without preconv(1)
   preprocessor usage) in the future.  Use iconv(1) to covert a code
   page 1047 document to US-ASCII or ISO Latin-1 prior to its input to
   GNU troff.  preconv(1), and therefore groff(1)'s `-k` and `-K`
   options, can do this as well if preconv is built with iconv support.
   Use `preconv -v` to determine this fact.

*  groff's "configure" script now tries harder to determine an
   appropriate paper format for the system; its output reports how it
   made its determination.  Any existing "/etc/papersize" file is one of
   the resources it consults.

*  You can now specify any paper format you like--including the file
   specification "/etc/papersize" for systems using "libpaper"--as the
   default that the groff build writes to generated device description
   files ("DESC") for the "dvi", "lbp", "lj4", "pdf", and "ps" output
   drivers.  (The paper format must still be valid; see groff_font(5).)

     Example: ./configure PAGE=3D/etc/papersize --prefix=3D/opt/gnu

*  Building groff no longer requires the PSUtils package.

*  Building groff no longer requires the makeinfo command.  Since groff
   1.23.0, we ship groff's Texinfo manual in several formats as part of
   groff's distribution archive.  We ask that distributors provide their
   users with all formats appropriate to the platform (GNU Info, HTML,
   plain text, TeX DVI, and PDF).  Thanks to onf.

*  Russian language input documents using the KOI8-R encoding are now
   supported, including hyphenation patterns from the ruhyphen project
   and localized strings for the man, ms, me, mm, and mom packages.
   Thanks to Nikita Ivanov.

*  Spanish language input documents are now supported, including
   hyphenation patterns from the hyph-utf8 project and localized strings
   for the man, ms, me, mm, and mom packages.  Thanks to Eloi Monta=C3=B1=
=C3=A9s.

*  The localization macro files now set up an appropriate hyphenation
   mode default.  For Chinese and Japanese, this is zero.

*  If groff programs have their current time overridden by the
   SOURCE_DATE_EPOCH environment variable, then that time is always
   displayed in UTC.  That environment variable is normally only set
   when specifically requesting build systems to produce reproducible
   output, and it is useful for reproducibility test harnesses to vary
   the TZ environment variable and ensure that it does not affect the
   output of the build; those harnesses have no way to set TZ=3DUTC only
   for groff programs.  People setting SOURCE_DATE_EPOCH are likely to
   be more in the "system programmer" camp as described in the release
   notes for 1.23.0, so it is easier to defend time-zone-invariant
   output to them.  In all other cases, the current time remains
   displayed in local time.  Thanks to Colin Watson.

*  The minimum version of Perl required to build groff is now 5.8 (18
   July 2002), incremented from 5.6.1.

*  groff now looks for the Netpbm program pamcut(1) rather than
   pnmcut(1).  Per its developers, the former was introduced in 2001
   ago and the latter withdrawn in 2009.

*  The Makefile macro `DEVICE` has been renamed to `DEFAULT_DEVICE`; be
   aware if your builds don't use "ps" as the default output device.

*  The groff_diff(7) man page no longer contains examples.  They remain
   in groff's Texinfo manual.

Acknowledgements
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We'd like to thank the following people for helping ensure the quality
of this release.

Alan Coopersmith
Alex Colomar
Alexander Kanavin
Alexander Monakov
Alexis Hildebrandt
Andreas Kusalananda K=C3=A4h=C3=A4ri
Andrew Bower
Axel Kielhorn
Benno Schulenberg
Bjarni Ingi Gislason
Brian Inglis
Bruno Haible
Carsten Kunze
Christof Meerwald
Colin Watson
Collin Funk
Damian McGuckin
Dan Plassche
Dave Kemper
Deri James
Doug McIlroy
Duncan Losin
Eli Schwartz
Eloi Monta=C3=B1=C3=A9s
Frazer Williams
Frederic Chartier
Gavin Smith
Gene
Grisha Levit
G=C3=BCnther Noack
Hanno Boeck
Hans Bezemer
Heinz-J=C3=BCrgen Oertel
Helge Kreutzmann
Helmut Grohne
Ian Ropers
Ingo Schwarze
James Cloos
James Youngman
Jeff Conrad
Joerg van den Hoff
John de Armas
Jonathan Gray
Ken Mandelberg
Larry Kollar
Lennart Jablonka
Lukas Javorsky
Martin D. Kealey
Micha=C5=82 Kruszewski
Mike Fulton
Morten Bo Johansen
Nikita Ivanov
Norwid Behrnd
Oliver Corff
onf
Patrice Dumas
Paul Eggert
Peter Chubb
Peter Schaffter
Phil Chadwick
Pim
Ralph Corderoy
Rob Kolstad
Robert Yang
Ross Burton
Russ Allbery
Sebastien Peterson-Boudreau
Stefan M=C3=B6ding
Sven Schober
T. Kurt Bond
TANAKA Takuji
Tadziu Hoffman
Thomas Dickey
Thorsten Glaser
Th=C3=A9r=C3=A8se Godefroy
Walter Alejandro Iglesias
Werner Lemberg
=D0=BD=D0=B0=D0=B1



----- End forwarded message -----

--czlwjr2e4abx7jln
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmltLjkACgkQ0Z6cfXEm
bc6qkRAAotEREep+CsbADE6jjcxZo0JkSuM8WMVER6FTuZdwR2AX2bUF/FpNfKIU
fLQZn3bHXbcakIa2UqxD6e/Ef8ZtlKNkqpdHy7NEXGkRiD/lYHYFKiXsodEv6/fN
DbDfVWUYswueVl+sCEEaNCx0nikiq+Y+6Cfwx4JClmg8QOWAZaWEUysus6+l2Lp5
DxIb7XKRLp2/l8ON6bzIlg5Bv7I0jLm2iYcqd+JyRN90fNAeWge4nvGjZKMzSeYF
oMFihuNWpA+jUm32G/gjt2YPW/QfLpQbN5HqKL3h8dxPNPcKVGBLrGVJmcc2Rlrk
Nzha4kONG414KFmHpqykPN5yCK/+xiRX/6YQD3t2S4U4Iw9Tl7zVoWf75YJZj9tc
nq5Ov5gBi62DLBjMllV0GyZFZlwe6nie+2DtG0dpB60qlVxofotFtaOT/n/m5C5N
6sfiy4IK0oOsPHZw+HXkgXY2uBU1b7jwL7RM1HCkVswbpfiSqPXzTEjpA8Rn+9cu
bmroh2dK8rZ95floLo33xrAxzhKa+zUBfs4wfHRaEaDJZpoSlhxlwSQq79qFzWLN
kR0678UnOMxuF+CFFAhYAlMfIM86BSn+fdjF3dim/xQkWG0TDmgSvppLxln6c7V3
nuhz+t75ygJ8rmAvW84emMt7rpklgo0RyKCr1AyKZf+TLxQgfl8=
=UGlr
-----END PGP SIGNATURE-----

--czlwjr2e4abx7jln--

