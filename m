Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C388D7B681D
	for <lists+linux-man@lfdr.de>; Tue,  3 Oct 2023 13:39:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232087AbjJCLjg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Oct 2023 07:39:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239955AbjJCLjg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Oct 2023 07:39:36 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3DBCA1
        for <linux-man@vger.kernel.org>; Tue,  3 Oct 2023 04:39:31 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B646C433C8;
        Tue,  3 Oct 2023 11:39:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1696333171;
        bh=oi8SQ1TP6zP+NASWiPbdM5pbmBgFFKUfN7M1Z6eUEU4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hCZnIG4IhHQoz2MmVEaDendsY2tGzJdIShcqJke5j5SLR9NuW3N3k+tooK6RtdYrV
         g1r7rIt9uZrcRL8fAQ9dfvCgfAuaOHQZ89tvVOQgEJ1BkF1/MD5H9NdD+YCVMTfx30
         5jj8EI3dLQu8cMBHfzhjuTOoTiM/N/vbgk+DdxVF2pAYfWSeAF4nx6MwK8NrehkR9M
         +BFZ/aWDB0m0A4ipXwj0OHKvQM6hcRL6Se70NVmHl+igznqXCR2eOAsDo/u+MfWuB1
         MAGwHYvvxV4ntnTRINH86ttJMobKHhsTu3iOGPmpuFqQzJxANoU6y+ugABgV136kfE
         loiS07m2VzTcQ==
Date:   Tue, 3 Oct 2023 13:39:21 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     Xavier Leroy <Xavier.Leroy@inria.fr>,
        Arnav Rawat <rawat.arnav@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        GNU Libc Maintainers <debian-glibc@lists.debian.org>,
        lnx-man <linux-man@vger.kernel.org>,
        glibc <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: Manual pages from glibc-doc
Message-ID: <ZRv9b2Ht-sRok6BH@debian>
References: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
 <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>
 <93aba0c9-ad1d-d488-1471-be30b7a8bb0c@gmail.com>
 <CAH=h3gF3F-tOq6-zYKf63_JhR3tRZ9NFMiTpX2YEjhhjDGr7Hw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="GA1OtmwEZBoPGnRD"
Content-Disposition: inline
In-Reply-To: <CAH=h3gF3F-tOq6-zYKf63_JhR3tRZ9NFMiTpX2YEjhhjDGr7Hw@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--GA1OtmwEZBoPGnRD
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 3 Oct 2023 13:39:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Xavier Leroy <Xavier.Leroy@inria.fr>,
	Arnav Rawat <rawat.arnav@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	GNU Libc Maintainers <debian-glibc@lists.debian.org>,
	lnx-man <linux-man@vger.kernel.org>,
	glibc <libc-alpha@sourceware.org>,
	Carlos O'Donell <carlos@redhat.com>
Subject: Re: Manual pages from glibc-doc

Hi Arnav, Xavier,

On Sun, May 21, 2023 at 07:29:19PM +0200, Xavier Leroy wrote:
> On Sun, May 21, 2023 at 12:25=E2=80=AFPM Alejandro Colomar <alx.manpages@=
gmail.com>
> wrote:
>=20
> > Hi Xavier,
> >
> > On 5/21/23 11:40, Xavier Leroy wrote:
> > > Hello Alex,
> > >
> > > On Thu, May 18, 2023 at 8:23=E2=80=AFPM Alex Colomar <alx.manpages@gm=
ail.com>
> > wrote:
> > >
> > >> Hello Xavier,
> > >>
> > >> I see there are some manual pages in the glibc-doc package.
> > >> Most of glibc's manual pages are part of the Linux man-pages
> > >> project.  I would be interested in absorbing the ones present
> > >> in the glibc-doc package into the Linux man-pages project.
> > >>
> > >> That would probably remove whatever overhead there is in
> > >> maintaining a separate package just for a few manual pages.
> > >>
> > >> Would you like that?
> > >>
> > >
> > > Well, I wrote those man pages a long time ago, in the late 1990's, to
> > > document the first version of the LinuxThreads library.  The LinuxThr=
eads
> > > code was later completely rewritten by Drepper and Molnar at Redhat (=
for
> > > the better!), so I forgot about the man pages, and did not know they =
were
> > > still distributed as part of the glibc-doc package.
> > >
> > > I hope the pages have been maintained and updated by the Glibc team,
> > > because the first version that I wrote was fairly specific to the
> > > LinuxThreads v1 implementation and its limitations, and is probably
> > useless
> > > today.  Likewise, the POSIX Threads standard changed quite a bit in t=
he
> > > last 25 years, with new functions that are implemented in Glibc but l=
ack
> > a
> > > man page in glibc-doc.
> >
> > Thanks for the history.  I've investigated a bit after your email.
> >
>=20
> Thanks for the historian's work !
>=20
>=20
> > It seems that the pages were removed from glibc upstream in 2005 [1],
> >
>=20
> This is consistent with the development of NPTL, the LinuxTheads
> replacement, at RedHat in 2004-2005.  Once NPTL was ready for inclusion in
> Glibc, it made sense to remove the LinuxThread man pages.
>=20
>=20
> > and then imported in the Debian glibc source package later in 2013 [2].
> >
>=20
> I didn't know about that.  Strange move from the Debian maintainers.
>=20
> The last time a page's text was updated seems from 2002 by Drepper.
> >
>=20
> OK, this confirms that the text is probably outdated.
>=20
>=20
> >
> > >
> > > To answer your question:
> > > - I don't think it's a good idea to take these man pages "as is" and =
drop
> > > them in the man-pages project, because they are probably obsolete and
> > > incomplete.
> > > - However, if you or others would like to use these man pages as a
> > starting
> > > point for a comprehensive, up-to-date and maintained documentation for
> > > POSIX Threads functions in Linux, you're most welcome.
> > > - In both cases, I'd like my name and e-mail address to be removed fr=
om
> > the
> > > man pages, as I no longer support them.
> >
> > Yes, I plan to import these pages, specifying the historic details
> > found in this thread, keeping your name in the import commit, if you
> > don't mind, and then remove your name in the first commit, and start
> > cleaning them up.  I'd compare them to the POSIX pages, to see if
> > there's any obviously outdated stuff, and fix it.  Small details
> > that are not obvious from reading POSIX, I guess time will fix them.
> >
> > So, you want your name removed.  Any other request?  The pages don't
> > seem to have a license.  Should GPL be applied to them as they were
> > once part of glibc?  If so, is GPL-3.0-or-later a good one?  Or
> > should I relicense as Linux-man-pages-copyleft?
> >
>=20
> I'm happy with the man-pages-copyleft  license.  If you need me to write a
> more formal message for the licensing of these pages, let me know.

No need, thanks!  I had forgotten about this.  Arnav reminded me.  I'll
start now.

Cheers,
Alex

>=20
> No other requests than 1- removing my name, and 2- updating the pages as
> much as you and others can.
>=20
>=20
>=20
> > Does the above plan look good to you?
> >
> > Yes !  Thank you for proposing it.
>=20
> Kind regards,
>=20
> - Xavier Leroy
>=20
>=20
>=20
> > Cheers,
> > Alex
> >
> > >
> > > Kind regards,
> > >
> > > - Xavier Leroy
> > >
> > >
> > >
> > >
> > >
> > >
> > >>
> > >> Cheers,
> > >> Alex
> > >>
> > >> --
> > >> <http://www.alejandro-colomar.es/>
> > >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> > >>
> > >
> >
> > [1]:
> >
> > alx@debian:~/src/gnu/glibc/glibc$ git lg --stat --
> > 'linuxthreads/man/pthread*';
> > * 88e3fbcb5d N - Sun, 3 Jul 2005 04:40:34 +0000 (18 years ago)
> > |           linuxthreads, linuxthreads_db: Directories removed (preserv=
ed
> > in ports repository). - Roland McGrath|
> > |  linuxthreads/man/pthread_atfork.man               |  53 -----
> > |  linuxthreads/man/pthread_attr_init.man            | 221
> > ------------------
> > |  linuxthreads/man/pthread_cancel.man               | 155 -------------
> > |  linuxthreads/man/pthread_cleanup_push.man         | 194 ------------=
----
> > |  linuxthreads/man/pthread_cond_init.man            | 234
> > --------------------
> > |  linuxthreads/man/pthread_condattr_init.man        |  39 ----
> > |  linuxthreads/man/pthread_create.man               |  46 ----
> > |  linuxthreads/man/pthread_detach.man               |  44 ----
> > |  linuxthreads/man/pthread_equal.man                |  23 --
> > |  linuxthreads/man/pthread_exit.man                 |  32 ---
> > |  linuxthreads/man/pthread_join.man                 |  70 ------
> > |  linuxthreads/man/pthread_key_create.man           | 151 -------------
> > |  .../man/pthread_kill_other_threads_np.man         |  40 ----
> > |  linuxthreads/man/pthread_mutex_init.man           | 213
> > ------------------
> > |  linuxthreads/man/pthread_mutexattr_init.man       |  84 -------
> > |  linuxthreads/man/pthread_mutexattr_setkind_np.man |  39 ----
> > |  linuxthreads/man/pthread_once.man                 |  34 ---
> > |  linuxthreads/man/pthread_self.man                 |  23 --
> > |  linuxthreads/man/pthread_setschedparam.man        |  79 -------
> > |  linuxthreads/man/pthread_sigmask.man              | 123 ----------
> > |  20 files changed, 1897 deletions(-)
> >
> > * a334319f65 N - Wed, 22 Dec 2004 20:10:10 +0000 (18 years ago)
> > |           (CFLAGS-tst-align.c): Add -mpreferred-stack-boundary=3D4. -
> > Ulrich Drepper|
> > |  linuxthreads/man/pthread_atfork.man               |  53 +++++
> > |  linuxthreads/man/pthread_attr_init.man            | 221
> > ++++++++++++++++++
> > |  linuxthreads/man/pthread_cancel.man               | 155 +++++++++++++
> > |  linuxthreads/man/pthread_cleanup_push.man         | 194 ++++++++++++=
++++
> > |  linuxthreads/man/pthread_cond_init.man            | 234
> > ++++++++++++++++++++
> > |  linuxthreads/man/pthread_condattr_init.man        |  39 ++++
> > |  linuxthreads/man/pthread_create.man               |  46 ++++
> > |  linuxthreads/man/pthread_detach.man               |  44 ++++
> > |  linuxthreads/man/pthread_equal.man                |  23 ++
> > |  linuxthreads/man/pthread_exit.man                 |  32 +++
> > |  linuxthreads/man/pthread_join.man                 |  70 ++++++
> > |  linuxthreads/man/pthread_key_create.man           | 151 +++++++++++++
> > |  .../man/pthread_kill_other_threads_np.man         |  40 ++++
> > |  linuxthreads/man/pthread_mutex_init.man           | 213
> > ++++++++++++++++++
> > |  linuxthreads/man/pthread_mutexattr_init.man       |  84 +++++++
> > |  linuxthreads/man/pthread_mutexattr_setkind_np.man |  39 ++++
> > |  linuxthreads/man/pthread_once.man                 |  34 +++
> > |  linuxthreads/man/pthread_self.man                 |  23 ++
> > |  linuxthreads/man/pthread_setschedparam.man        |  79 +++++++
> > |  linuxthreads/man/pthread_sigmask.man              | 123 ++++++++++
> > |  20 files changed, 1897 insertions(+)
> >
> > * 0ecb606cb6 N - Thu, 12 Jul 2007 18:26:36 +0000 (16 years ago)
> > |           2.5-18.1 - Jakub Jelinek|
> > |  linuxthreads/man/pthread_atfork.man               |  53 -----
> > |  linuxthreads/man/pthread_attr_init.man            | 221
> > ------------------
> > |  linuxthreads/man/pthread_cancel.man               | 155 -------------
> > |  linuxthreads/man/pthread_cleanup_push.man         | 194 ------------=
----
> > |  linuxthreads/man/pthread_cond_init.man            | 234
> > --------------------
> > |  linuxthreads/man/pthread_condattr_init.man        |  39 ----
> > |  linuxthreads/man/pthread_create.man               |  46 ----
> > |  linuxthreads/man/pthread_detach.man               |  44 ----
> > |  linuxthreads/man/pthread_equal.man                |  23 --
> > |  linuxthreads/man/pthread_exit.man                 |  32 ---
> > |  linuxthreads/man/pthread_join.man                 |  70 ------
> > |  linuxthreads/man/pthread_key_create.man           | 151 -------------
> > |  .../man/pthread_kill_other_threads_np.man         |  40 ----
> > |  linuxthreads/man/pthread_mutex_init.man           | 213
> > ------------------
> > |  linuxthreads/man/pthread_mutexattr_init.man       |  84 -------
> > |  linuxthreads/man/pthread_mutexattr_setkind_np.man |  39 ----
> > |  linuxthreads/man/pthread_once.man                 |  34 ---
> > |  linuxthreads/man/pthread_self.man                 |  23 --
> > |  linuxthreads/man/pthread_setschedparam.man        |  79 -------
> > |  linuxthreads/man/pthread_sigmask.man              | 123 ----------
> > |  20 files changed, 1897 deletions(-)
> >
> > * 79996eeed1 N - Sun, 28 Jul 2002 19:04:09 +0000 (21 years ago)
> > |           Update. - Ulrich Drepper|
> > |  linuxthreads/man/pthread_mutex_init.man | 2 +-
> > |  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > * 6736e93bab N - Sat, 6 Apr 2002 01:45:15 +0000 (21 years ago)
> > |           Update. - Ulrich Drepper|
> > |  linuxthreads/man/pthread_mutexattr_init.man       | 20 +++++------
> > |  linuxthreads/man/pthread_mutexattr_setkind_np.man | 39
> > +++++++++++++++++++++
> > |  2 files changed, 49 insertions(+), 10 deletions(-)
> >
> > * 638621aff9 N - Fri, 14 Dec 2001 22:17:03 +0000 (21 years ago)
> > |           Update. - Ulrich Drepper|
> > |  linuxthreads/man/pthread_atfork.man | 13 ++++---------
> > |  1 file changed, 4 insertions(+), 9 deletions(-)
> >
> > * 0a51738ed9 N - Sun, 23 May 1999 09:27:35 +0000 (24 years ago)
> > |           Correct example. - Ulrich Drepper|
> > |  linuxthreads/man/pthread_cond_init.man | 5 ++---
> > |  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > * 5afdca0087 N - Wed, 11 Mar 1998 12:42:25 +0000 (25 years ago)
> >             LinuxThreads library. - Ulrich Drepper
> >    linuxthreads/man/pthread_atfork.man               |  58 +++++
> >    linuxthreads/man/pthread_attr_init.man            | 221
> > ++++++++++++++++++
> >    linuxthreads/man/pthread_cancel.man               | 155 +++++++++++++
> >    linuxthreads/man/pthread_cleanup_push.man         | 194 ++++++++++++=
++++
> >    linuxthreads/man/pthread_cond_init.man            | 235
> > ++++++++++++++++++++
> >    linuxthreads/man/pthread_condattr_init.man        |  39 ++++
> >    linuxthreads/man/pthread_create.man               |  46 ++++
> >    linuxthreads/man/pthread_detach.man               |  44 ++++
> >    linuxthreads/man/pthread_equal.man                |  23 ++
> >    linuxthreads/man/pthread_exit.man                 |  32 +++
> >    linuxthreads/man/pthread_join.man                 |  70 ++++++
> >    linuxthreads/man/pthread_key_create.man           | 151 +++++++++++++
> >    .../man/pthread_kill_other_threads_np.man         |  40 ++++
> >    linuxthreads/man/pthread_mutex_init.man           | 213
> > ++++++++++++++++++
> >    linuxthreads/man/pthread_mutexattr_init.man       |  84 +++++++
> >    linuxthreads/man/pthread_once.man                 |  34 +++
> >    linuxthreads/man/pthread_self.man                 |  23 ++
> >    linuxthreads/man/pthread_setschedparam.man        |  79 +++++++
> >    linuxthreads/man/pthread_sigmask.man              | 123 ++++++++++
> >    19 files changed, 1864 insertions(+)
> >
> >
> >
> > [2]:
> >
> > alx@debian:~/src/debian/glibc$ git lg --stat --
> > 'debian/local/manpages/pthread*';
> > * 2c35c554 N - Fri, 29 Nov 2013 11:00:45 +0000 (9 years ago)
> >               * Remove linuxthreads from the tarball:     - rules.d/
> > tarball.mk: don't fetech linuxthreads and linuxthreads_db.     - rules.=
d/
> > build.mk: don't build linuxthreads manpages.     - rules: don't run make
> > clean in linuxthreads directory.     - patches/any/local-sysctl.diff: d=
rop
> > the linuxthreads part.     - patches/all/local-pthread-manpages.diff:
> > remove.     - local/manpages/pthread_*.3: import the few remaining
> > linuxthreads       manpages.     - debhelper.in/glibc-doc.manpages:
> > update manpage locations. - Aurelien Jarno
> >    debian/local/manpages/pthread_atfork.3               |  53 +++++++
> >    debian/local/manpages/pthread_cond_init.3            | 229
> > ++++++++++++++++++++++++++++++
> >    debian/local/manpages/pthread_condattr_init.3        |  38 +++++
> >    debian/local/manpages/pthread_key_create.3           | 151
> > ++++++++++++++++++++
> >    debian/local/manpages/pthread_mutex_init.3           | 209
> > +++++++++++++++++++++++++++
> >    debian/local/manpages/pthread_mutexattr_init.3       |  81 +++++++++=
++
> >    debian/local/manpages/pthread_mutexattr_setkind_np.3 |  38 +++++
> >    debian/local/manpages/pthread_once.3                 |  34 +++++
> >    8 files changed, 833 insertions(+)
> >
> > --
> > <http://www.alejandro-colomar.es/>
> > GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> >

--GA1OtmwEZBoPGnRD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmUb/WkACgkQnowa+77/
2zIe8Q//bXCWPMv5cOKvU306+ferlMUx00jS0YDMqC6g8knXgApXstNBVDkKsrkj
xrYQJ7PooJVoDL+bVc9nr6dMj2Q1GvpLa1OyeyTS26Xi9dFuqFPnxYZYaIzzwrgw
0ng/SCfgg+2yS0HSaWUQCSjSY8pS2APxplSAKJLOylr5x4fYQ5HDdI8Inj2df9P7
zCcnJGtBPUHrHz0QwzGOoh3bAFFisi2KGudYO7Owdn0zH2o5iH7fmIXaLwvdr74u
kVAZIaZrVsyt3xFXYqB52xCNLxHhfSqC+ebt9oJPRIugOWFef/+pK0MW+ltyMrQM
MjjxhcisaTPopLD7ikH0KtRuVArCZaWFdkwGicx4mJJbskAfzomUl+X32RCcl/qR
JPQQwj+B7nWGE7jDSlJHfDZ7cKt1ulrk8Y5sTcwKdMQa/jPeRs1dStVddwiBgFOy
np/XnVL/pe2k9A1kCt+vLsDGXeCfkNEAHxH/Qrbo02izcoMq3Dw4M8c75wS/LlqR
AQUb9lQQLOaBI9YjudKEgYL2zA37Kb3Dgcouqw1hggWEuYcoCYuRSq/mY12WaiHT
D6iin+7nJsW4OYyq4dKHaR2mzdE7ik66XHKAdV80viOi+RONaq3brOqAlwzKpHyz
QWzhIRwVEdTKPZUfWnj07HYne8SrXCT/yC6al5wiHqRoKDx13Iw=
=Ps5S
-----END PGP SIGNATURE-----

--GA1OtmwEZBoPGnRD--
