Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A40E076EC41
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 16:20:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235911AbjHCOUT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 10:20:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235906AbjHCOUR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 10:20:17 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 937CDDA
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 07:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691072411;
        bh=836icZWV9UHTPDBooX8vY91tJdhTjLDMBCWmLiQDlAk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gLIjQWop3LszvpA61evkhj6cSySfA+un7rt+JBavv1xf6d3Hiu4qSkBt73xix+gfd
         iBYCrE82gqhepYUogG6lgn0wZrGzKpt5+ykAQAF4oGYLUmcRWfoAs3KvQDtomMk/Pe
         3hiOGFBFEVsd3S6KMuUVAprgK9Cbambl5trpzhZkPa9ehOVr3/IMNc6ysivFcpF5sQ
         l9LXbRJ4duCIwmcNH3r4uf3Kt3+wlxHg6UKgnfihx2WkMENHiliS3I/YysnfX4qZ7a
         b2g5iGloTr9ZHxjDr/gHs0ea47T3kzB3GCOX6fsQW6yf6iWPk/bXuKEIAbiOdysjWt
         JPyetiZFEk20Q==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9A4AE5700;
        Thu,  3 Aug 2023 16:20:11 +0200 (CEST)
Date:   Thu, 3 Aug 2023 16:20:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <mwgvw3rh3tv6v3vhwf3osw7s6rs4hmfuapbycnqkk57anpqpsp@qoevitjgkjod>
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="rdr7tfnzs7pkc6kk"
Content-Disposition: inline
In-Reply-To: <4aa54e57-6601-088f-f143-23846af2b783@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URI_HEX autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rdr7tfnzs7pkc6kk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 03, 2023 at 03:22:50PM +0200, Alejandro Colomar wrote:
> > diff --git a/man2/fsync.2 b/man2/fsync.2
> > index 1043e6a1b..9ced40b28 100644
> > --- a/man2/fsync.2
> > +++ b/man2/fsync.2
> > @@ -155,12 +155,6 @@ .SH VERSIONS
> >  .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
> >  .\" -1: unavailable, 0: ask using sysconf().
> >  .\" glibc defines them to 1.
> > -.PP
> > -On some UNIX systems (but not Linux),
> > -.I fd
> > -must be a
> > -.I writable
> > -file descriptor.
> But that's still true.  HP-UX and AIX had that issue.  I'd move
> that paragraph to HISTORY, and say "some old UNIX systems".
Apparently still true on AIX, fsync(2) "Last Updated: 2023-03-24"
(https://www.ibm.com/docs/en/aix/7.3?topic=3Df-fsync-fsync-range-subroutine)
says
  Note: The file identified by the FileDescriptor parameter must be open
  for writing when the fsync subroutine is issued or the call is
  unsuccessful. This restriction was not enforced in BSD systems. The
  fsync_range subroutine does not require write access.
and
  EBADF  The FileDescriptor parameter is not a valid file descriptor
         open for writing.

So this purely-nominal restriction is likely to go away because
Issue 8 requires directories to be fsync()able. It appears that classic
UNIXes https://www.austingroupbugs.net/view.php?id=3D672 (comment 0001499)
simply had no need for fsync() on directories and thus we=20


No clue about recent HP-UX, no offline documentation seems to be extant.


History-wise, this is invented in 4.1c.1BSD in its present-day form,
then SysVr4 copies it but plain invents the writability restriction,
so this interface is just plain broken on SysV, good job AT&T.

Try this on for size:
-- >8 --
Subject: [PATCH v2] fsync.2: no writability requirements, must operate on
 directories

POSIX has for a long time implied that directories are fsyncable,
and since Issue 8 explicitly specifies directory syncing semantics:
  https://www.austingroupbugs.net/view.php?id=3D672

Simultaneously, directories being unopenable for writing is a
Longest-Standing UNIX Semantic, present in the UNIX Programmer's Manual
under directory (V), and has always been enshrined in the standards.

Replace the FUD that says that some UNIXes require the fd to be writable:
they /must not/ and this confuses users:
  https://101010.pl/@eater@cijber.social/110824211348995583
with mentioning explicitly that HP-UX and AIX (by name) are just broken.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/fsync.2 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man2/fsync.2 b/man2/fsync.2
index 1043e6a1b..6a7739056 100644
--- a/man2/fsync.2
+++ b/man2/fsync.2
@@ -155,12 +155,6 @@ .SH VERSIONS
 .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
 .\" -1: unavailable, 0: ask using sysconf().
 .\" glibc defines them to 1.
-.PP
-On some UNIX systems (but not Linux),
-.I fd
-must be a
-.I writable
-file descriptor.
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
@@ -181,6 +175,13 @@ .SH HISTORY
 or
 .BR sdparm (8)
 to guarantee safe operation.
+.PP
+Under AT&T UNIX System V Release 4
+.I fd
+needs to be opened for writing.
+This is by itself incompatible with the original BSD interface,
+and is now forbidden by POSIX,
+but nevertheless survives in HP-UX and AIX.
 .SH SEE ALSO
 .BR sync (1),
 .BR bdflush (2),
--=20
2.39.2

--rdr7tfnzs7pkc6kk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTLt5oACgkQvP0LAY0m
WPH0QA/+MNaIaQOgn+But/qFMVuZ95SnA4ymD4pD0tzZvYGgbTFJq6NPhhEL3CTF
aBiY9M/S8h4wRm1r0ivnd7mLYJlfEQcy/GrZUd7BtDJ8d5crrJz/DyR/8a+sYRak
EKCur2f2ZGUY0Y+fR5N4cEnYm//ItOomljJ/83Tj2q/qnDGLA7kz0Us6KuyVqPvY
EJYm/wkQpmr/tiqcqEUgRg7yk7VnZiniDkTKoTHIFJO2LGlM/dkEU0ZLtADTYFgM
F+eVyiOMqJ4Sem4M+cqVf5DMU46GkmBnanTi+lAjkXX/S7iesw+OhUGshae7xjKj
OWsdwRHbMUwncToaBSSmbkLZwu77QU+LW9eEdn32YbwXMKKgmzsWquMaAywBOXzT
QipRPEbXUKxkcwF8O+6peuAQbJeVRlg+VchjtUeWrj4IZi1jKmljWa+yjtmVfwvU
qbxxchr8nKhUa4Zle0YspEFqE+4WOPcLMj1Efg4BUt5Knytii32fEWRboNs1u5ps
lnF4QoeNhXq58FMB/eHhwilx3mugpLF3STYJW5TPVsXQx8UbmqZvt9LuTM+muSTV
Jq9xtKRGubmxPzxrUy3ltJkgbrLsMd/WRDDCibRiQD93NrgFMcuRxa/i6HJTtaLc
G07H1+XqYnF+hMG+0HOwU+FNRaabB4Qiz7vdR+tmwJOobDz+0CQ=
=zpBz
-----END PGP SIGNATURE-----

--rdr7tfnzs7pkc6kk--
