Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3282754F1C
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 16:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229579AbjGPOwj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 10:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229982AbjGPOwi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 10:52:38 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6CB981AB
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 07:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689519153;
        bh=H2beS285iCbfvQpwLNzAyfPSiBcu5KVYtUiy/dUKloc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aUyMNWs3719UHWAg5Xm9y+p58GH8hxPfegzwtercjPanXcpmsbsRq4t6g4cp+oh25
         i/0ARO+t/CeoVo+3V01bc+UdpcbbozdbP8BRWXithIxDBgrF4CwEbnpT9GUZayBH9l
         vxcXTMCVxdIhLc1qoKKWQ6lF7WH6eZQ5D3IpAgJTyzo3btFmXGvew8c+uLyYzvZpim
         rn5LBp675oDUveUrt5fLCu0wFgbBStYktbadQdLhy5g10gW9wf7yxGanMLlBe8DT/B
         Ezl4/P801LS9L0mriyl7IfQnfdIKlPn6gWIXwrtI6HmtbqtZGwpx+nmHGxQk/Brll9
         UKhzlGCkmm8Zg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 720002DFC;
        Sun, 16 Jul 2023 16:52:33 +0200 (CEST)
Date:   Sun, 16 Jul 2023 16:52:32 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH v5] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <eklhtzoqulcwzu73m2h3si7e3p3qdzburpjmvmyhd66o7h2xbb@4w6pgoplb5lh>
References: <062f90e1-25e1-295f-9c58-31c8da7b8f24@kernel.org>
 <van5n7dhx63tbicenevvkkg624su7xcsjrffhicjruvmdii4yk@j52kjf6qgwko>
 <93fb63f5-45a9-83b1-d89f-d0cc2f02635c@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ho2snzyktfkd2sp3"
Content-Disposition: inline
In-Reply-To: <93fb63f5-45a9-83b1-d89f-d0cc2f02635c@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ho2snzyktfkd2sp3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sun, Jul 16, 2023 at 03:46:10PM +0200, Alejandro Colomar wrote:
> On 2023-07-16 13:55, =D0=BD=D0=B0=D0=B1 wrote:
> [...]
> > I read it but didn't really understand what you were saying, since
> > you're on record as a text=E2=80=92text=E2=80=92text liker.
> In this context, I'm not sure if to read that as that being just
> emphasis on me being a text liker, which is true-true-true, or if
> (more likely) "text" are placeholders for random text, and you claim
> that I'm on record liking no spaces between em dashes.  If it's the
> latter, I believe I am not, and you might have been confused by some
> of those records?  Could you point me to the records?
I think you've said it to me before but I can't strictly find the mail
(but I'd hopefully blame that on my mail searching).

> Maybe I had
> some brain-fart and defended that at some point, but I do not like
> that style personally.
Neither do I but I, as usual, consulted the corpus, and it said
  $ git grep -F '\[em]' | grep -Fe '\[em] ' -e '\[em] ' -c
to around 160/16 vs -cv.

Thus, I did what the corpus says.

> Basically, it is something similar to why we should write punctuation
> outside of quotes, unless they belong to them, so if I quote someone
> who said "Hello world!", I include '!' in the quote, as it belongs to
> the quote, but the ',' belongs to my text.
This is known (unfairly-)derisively as "programmer punctuation".

> The reason that I like spaces in (only) one side of em dashes --and I
> also like closing em dashes even right before other punctuation-- is
> to make parsing the text less complex.  I've seen cases where in a
> paragraph, several em-dash asides appear, and it's hard to understand
> what is the main text and what are the asides, especially when the
> closing em dash of one of them is omitted.
The corpus sayeth:
  $ git grep -F '\[em]' | grep -e '\\\[em\] ' -e ' \\\[em\]'  -e ':\\\[em\]=
' -e '\\\[em\]$' | grep -v @
  man2/futex.2:.IR "futex word" \[em]whose
  man2/get_mempolicy.2:.IR nodemask \[em]that
  man2/ioctl_iflags.2:.IR "inode flags" \[em]attributes
  man2/madvise.2:\[em]including tmpfs (see
  man2/madvise.2:.BR tmpfs (2))\[em]
  man2/mbind.2:.BR MAP_ANONYMOUS \[em]or
  man2/perf_event_open.2:\[em]added, divided (to get ratios), and so on\[em]
  man2/uname.2:\[em] this is the largest value likely to be encountered in =
the wild.
  man3/grantpt.3:\[em]with permissions configured on pty allotion, as is th=
e case on Linux\[em]\c
  man3type/stat.3type:.RI fields\[em] st_atime ,
  man3type/stat.3type:.IR st_ctime \[em]typed
  man4/intro.4:/dev/* \[em] device files
  man4/st.4:.SS MTIOCTOP \[em] perform a tape operation
  man4/st.4:.SS MTIOCGET \[em] get status
  man4/st.4:.SS MTIOCPOS \[em] get tape position
  man7/man.7:.\" .IP \[em] 3m
  man7/man.7:.\" .IP \[em]
  man7/man.7:.\" .IP \[em]
  man7/man.7:.\" .IP \[em]
  man7/path_resolution.7:the process \[em] or in the case of
  man7/tcp.7:Use this option with care \[em] it makes TCP less tolerant to =
routing
  man7/unicode.7:Information technology \[em] Universal Multiple-Octet Code=
d Character
  man7/unicode.7:Set (UCS) \[em] Part 1: Architecture and Basic Multilingua=
l Plane.
  man7/x25.7:Message boundaries are preserved \[em] a
of which these use =E2=80=92s as interjective commas:
  man2/futex.2:.IR "futex word" \[em]whose
  man2/madvise.2:\[em]including tmpfs (see
  man2/madvise.2:.BR tmpfs (2))\[em]
  man2/mbind.2:.BR MAP_ANONYMOUS \[em]or
  man2/perf_event_open.2:\[em]added, divided (to get ratios), and so on\[em]
  man3/grantpt.3:\[em]with permissions configured on pty allotion, as is th=
e case on Linux\[em]\c
(whoops allotion, should be allocation)
  man3type/stat.3type:.RI fields\[em] st_atime ,
  man3type/stat.3type:.IR st_ctime \[em]typed
of which these have spacing around the outside:
  man2/madvise.2:\[em]including tmpfs (see
  man2/madvise.2:.BR tmpfs (2))\[em]
  man2/perf_event_open.2:\[em]added, divided (to get ratios), and so on\[em]

This is, I'm pretty sure, the first time I've encountered this style,
and it kinda looks like a formatting error to me.

v6 with
  op =E2=80=94with permissions configured on pty allocation, as is the case=
 on Linux=E2=80=94 or an ioctl(2).
scissored below.
-- >8 --
FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2),
and grantpt(3) is a no-op (that checks whether the fd is a pty, except on
musl).

The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
 facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
  Driven Device Naming"), which kills pt_chmod, notes that it's been
 "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").

glibc 2.33 completely kills BSD PTY support on Linux
(Debian hasn't configured with them on any architecture since 2007:
   https://bugs.debian.org/338404
 and even earlier on some arches; they're really just trivia under
 Linux =E2=80=92 this may be better served stuffed into HISTORY as an expla=
iner
 for the SIGCHLD thing, since regardless of the "version", the behaviour
 is well-defined and consistent).

Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/grantpt.3 | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/man3/grantpt.3 b/man3/grantpt.3
index a19172a3e..3c753da03 100644
--- a/man3/grantpt.3
+++ b/man3/grantpt.3
@@ -84,17 +84,15 @@ .SH ATTRIBUTES
 .ad
 .sp 1
 .SH VERSIONS
-Many systems implement this function via a set-user-ID helper binary
+Historical systems implemented this function via a set-user-ID helper bina=
ry
 called "pt_chown".
-On Linux systems with a devpts filesystem (present since Linux 2.2),
-the kernel normally sets the correct ownership and permissions
-for the pseudoterminal slave when the master is opened
-.RB ( posix_openpt (3)),
-so that nothing must be done by
-.BR grantpt ().
-Thus, no such helper binary is required
-(and indeed it is configured to be absent during the
-glibc build that is typical on many systems).
+glibc on Linux before glibc 2.33 could do so as well,
+in order to support configurations with only BSD pseudoterminals;
+this support has been removed.
+On modern systems this is either a no-op
+\[em]with permissions configured on pty allocation, as is the case on Linu=
x\[em]
+or an
+.BR ioctl (2).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--ho2snzyktfkd2sp3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmS0BC8ACgkQvP0LAY0m
WPGAUA/5AUpMD/JgBz03dOp/SLkYPUVhQE8v14ERM1iGUHkFxD25UDd2TB9o593q
/JOwfdU7Yo4AgrB+eqVasZBljqpvjXsu5B9ufaCGY2HpclOGvmnYVbi/bFsO4Gcq
+Byolu+DSDgKa/amtK//x0TteXxlyZBxG6QIs2sMFOXlssPPl+prAyycvr1VGnnq
JKO8Z104W9XokfrOGvYXyWUKqv417z4IW2CVEiKNUWSDOLRy3Y9c4VlbaCY4i/Yc
rffj7vgEEbkuEltfXsQwUCDjixfLtv0tA6LvcPOCidcDCBOBOdtAAG0ZRdTp7PD3
JEP2TTzaOPviHwh9HAoRuVmXryQ+m02ySXItwhG5BepzEk63obLOUpzGQYmLd8HH
a2cQtmsYDgm6h1VfNNmaLbT9QK++XgnxSVBmeQkEEsRw8Rc5Zt0+VHld2SCoUdXx
zjApDDE85TM3LuHb6RVvz/Spcoq8kp+zuAZM492WoQQ6P88ErpnqbIPOpE8sulYO
J3hDC024OK/Qu/fnSPOWH2WQz4cx+dUvgMbMbAyNspBJK+mPTboeMGQEqp/ncjL/
nF+qeZtQT3+OvXoPOyvhFyO/hCdsSsCw/vJ1UU8P79sAr8U0MqfX/5ZLR6JeOeT6
d3IBvtNz7+Kwz/pFVVtP/9cyBNzdhc4de6f6yAqztvt/UDf6ZmM=
=/IVw
-----END PGP SIGNATURE-----

--ho2snzyktfkd2sp3--
