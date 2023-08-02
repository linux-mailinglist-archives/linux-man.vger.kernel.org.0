Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4464876CB6C
	for <lists+linux-man@lfdr.de>; Wed,  2 Aug 2023 13:04:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234005AbjHBLEs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 2 Aug 2023 07:04:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234038AbjHBLEp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 2 Aug 2023 07:04:45 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C996B2685
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 04:04:35 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B7A4C618CF
        for <linux-man@vger.kernel.org>; Wed,  2 Aug 2023 11:04:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C21FC433C7;
        Wed,  2 Aug 2023 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690974274;
        bh=M1kdvZ5kgMWzwd69kvL/BFNjZ1ePfYgeX0nmSnYVV9I=;
        h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
        b=ORGQqwpXzVPdBWHHGL+iZn+dcaLfifjoKDws1O6Nhsb4yffqLnfaREWHNdcME+eM3
         +ApETPlX+DsoHAx3GCtbV+lDlS1DnukGHM+0cSc7ggXS439DzKWaFltFJgXNF0l1Om
         GOcs0rj01phpM6PmrcCd/eYr6hj78j6d5xilEk6wn+xb39XRGL568V1NTRZxS8qDqR
         RZbvULBOUFeDMzN0p6rwzmZBbbTwXib0vH1v12ridNIPvQOYTy7IGwo3UEZl1PqNo/
         Le273nlvuXqsUPA/zN5G45goLgq+7wx34lOlivlUf6FKeWj9HXBE7yt31GU3ClRAMV
         OKVNVItjppbHg==
Message-ID: <37c237cd-cb7c-982e-7b17-dd808063f002@kernel.org>
Date:   Wed, 2 Aug 2023 13:04:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: man-pages-6.05 released
To:     Luna Jernberg <droidbittin@gmail.com>
References: <9d2898a0-239a-1bc7-4929-aa042f727ff4@kernel.org>
 <CADo9pHgFjtFSPv3vLUuO7u2A5rVYw2P_1ZP6yBGU43q_DNUgig@mail.gmail.com>
Content-Language: en-US
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <CADo9pHgFjtFSPv3vLUuO7u2A5rVYw2P_1ZP6yBGU43q_DNUgig@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------PIoSlRed0091BPsGiZQnSjvS"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------PIoSlRed0091BPsGiZQnSjvS
Content-Type: multipart/mixed; boundary="------------pIWI0MaRjoXLuwDeLo6ezM3s";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: Luna Jernberg <droidbittin@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <37c237cd-cb7c-982e-7b17-dd808063f002@kernel.org>
Subject: Re: man-pages-6.05 released
References: <9d2898a0-239a-1bc7-4929-aa042f727ff4@kernel.org>
 <CADo9pHgFjtFSPv3vLUuO7u2A5rVYw2P_1ZP6yBGU43q_DNUgig@mail.gmail.com>
In-Reply-To: <CADo9pHgFjtFSPv3vLUuO7u2A5rVYw2P_1ZP6yBGU43q_DNUgig@mail.gmail.com>

--------------pIWI0MaRjoXLuwDeLo6ezM3s
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Luna!

On 2023-08-02 06:19, Luna Jernberg wrote:
> Updated PKGBUILD for Arch Linux

Thank you!  Do you want me to CC you in releases?

Cheers,
Alex

>=20
> Den tis 1 aug. 2023 kl 15:30 skrev Alejandro Colomar <alx@kernel.org>:
>>
>> Gidday!
>>
>> I'm proud to announce:
>>
>>         man-pages-6.05 - manual pages for GNU/Linux
>>
>> The release tarball is already available at <kernel.org>
>>
>> Tarball download:
>>         <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/>
>> Git repository:
>>         <https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
>>
>> A change from man-pages-6.04 merits a mention in this release, as it
>> wasn't properly documented in the previous release notes:
>>
>>    -  Add make(1) 'check' target.  This has been split from 'lint'.
>>       'lint' will check the source code, and 'check' will check the
>>       rendered pages (as a user will read them).  There are currently
>>       several pages that fail this `make check`, and distributors that=

>>       depend on this can workaround it by touching a few files:
>>
>>       $ make check -k -j >/dev/null 2>/dev/null;
>>       $ make check -k 2>/dev/null;
>>       GREP      .tmp/man/man1/memusage.1.check-catman.touch
>>       TROFF     .tmp/man/man2/fanotify_init.2.cat.set
>>       TROFF     .tmp/man/man2/gettimeofday.2.cat.set
>>       TROFF     .tmp/man/man2/s390_sthyi.2.cat.set
>>       GREP      .tmp/man/man3/mallopt.3.check-catman.touch
>>       TROFF     .tmp/man/man3/unlocked_stdio.3.cat.set
>>       TROFF     .tmp/man/man4/console_codes.4.cat.set
>>       TROFF     .tmp/man/man4/lirc.4.cat.set
>>       GREP      .tmp/man/man4/smartpqi.4.check-catman.touch
>>       GREP      .tmp/man/man4/veth.4.check-catman.touch
>>       TROFF     .tmp/man/man5/proc.5.cat.set
>>       GREP      .tmp/man/man5/slabinfo.5.check-catman.touch
>>       TROFF     .tmp/man/man5/tzfile.5.cat.set
>>       TROFF     .tmp/man/man7/address_families.7.cat.set
>>       TROFF     .tmp/man/man7/ascii.7.cat.set
>>       TROFF     .tmp/man/man7/bpf-helpers.7.cat.set
>>       GREP      .tmp/man/man7/keyrings.7.check-catman.touch
>>       GREP      .tmp/man/man7/uri.7.check-catman.touch
>>       TROFF     .tmp/man/man8/tzselect.8.cat.set
>>       TROFF     .tmp/man/man8/zdump.8.cat.set
>>       TROFF     .tmp/man/man8/zic.8.cat.set
>>
>>       After touching the previous files, `make check` will succeed:
>>
>>       $ make check -k 2>/dev/null | awk '{print $2}' | xargs touch;
>>       $ make check -j >/dev/null;
>>       $ echo $?
>>       0
>>
>> The most notable changes in this release (man-pages-6.05) are:
>>
>> New and rewritten pages
>> -----------------------
>>
>> man2/
>>         ioctl_pipe.2
>>
>> man3/
>>         regex.3
>>
>> man5/
>>         erofs.5
>>
>> Newly documented interfaces in existing pages
>> ---------------------------------------------
>>
>> bpf.2
>>         EAGAIN
>>
>> ioctl_userfaultfd.2
>>         UFFD_FEATURE_EXACT_ADDRESS
>>
>> prctl.2
>>         PR_GET_AUXV
>>
>> recv.2
>>         MSG_CMSG_CLOEXEC
>>
>> statx.2
>>         STAT_ATTR_MOUNT_ROOT
>>
>> syscall.2
>>         ENOSYS
>>
>> resolv.conf.5
>>         no-aaaa
>>         RES_NOAAAA
>>
>> tmpfs.5
>>         CONFIG_TRANSPARENT_HUGEPAGE
>>
>> ip.7
>>         IP_LOCAL_PORT_RANGE
>>
>> rtnetlink.7
>>         IFLA_PERM_ADDRESS
>>
>> New and changed links
>> ---------------------
>>
>> man3type/
>>         regex_t.3type                           (regex(3))
>>         regmatch_t.3type                        (regex(3))
>>         regoff_t.3type                          (regex(3))
>>
>> Global changes
>> --------------
>>
>> -  Types:
>>    -  Document functions using off64_t as if they used off_t (except
>>       for lseek64()).
>>
>> -  Build system:
>>    -  Keep file modes in the release tarball.
>>    -  Fix symlink installation (`make install LINK_PAGES=3Dsymlink`).
>>    -  Add support for using bzip2(1), lzip(1), and xz(1) when installi=
ng
>>       pages and creating release tarballs.
>>    -  Create reproducible release tarballs.
>>    -  Move makefiles from lib/ to share/mk/.
>>    -  Support mdoc(7) pages.
>>    -  Relicense Makefiles as GPL-3.0-or-later.
>>    -  Build PostScript and PDF manual pages.
>>    -  Add support for running our build system on arbitrary source
>>       trees; this makes it possible to easily run our linters on anoth=
er
>>       project's manual pages as easily as `make lint MANDIR=3D~/src/gr=
off`
>>
>> -  Licenses:
>>    -  Relicense ddp.7 from VERBATIM_ONE_PARA to Linux-man-pages-copyle=
ft.
>>    -  Relicense dir_colors.5 from LDPv1 to GPL-2.0-or-later.
>>    -  Use new SPDX license identifiers:
>>       -  Linux-man-pages-1-para                 (was VERBATIM_ONE_PARA=
)
>>       -  Linux-man-pages-copyleft-2-para        (was VERBATIM_TWO_PARA=
)
>>       -  Linux-man-pages-copyleft-var           (was VERBATIM_PROF)
>>
>> -  ffix:
>>    -  use `\%`
>>    -  un-bracket tbl(1) tables
>>
>>
>> Contributors
>> ------------
>>
>> The following people contributed patches/fixes, reports, notes,
>> ideas, and discussions that have been incorporated in changes in
>> this release:
>>
>> "David S. Miller" <davem@davemloft.net>
>> "G. Branden Robinson" <g.branden.robinson@gmail.com>
>> A. Wilcox <AWilcox@wilcox-tech.com>
>> Adam Dobes <adobes@redhat.com>
>> Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
>> Alan Cox <alan@llwyncelyn.cymru>
>> Alejandro Colomar <alx@kernel.org>
>> Alexei Starovoitov <ast@kernel.org>
>> Andreas Schwab <schwab@suse.de>
>> Andrew Clayton <andrew@digital-domain.net>
>> Andrew Morton <akpm@linux-foundation.org>
>> Avinesh Kumar <akumar@suse.de>
>> Bastien Roucari=C3=A8s <rouca@debian.org>
>> Bjarni Ingi Gislason <bjarniig@simnet.is>
>> Brian Inglis <Brian.Inglis@Shaw.ca>
>> Bruno Haible <bruno@clisp.org>
>> Carsten Grohmann <carstengrohmann@gmx.de>
>> Colin Watson <cjwatson@debian.org>
>> Cyril Hrubis <chrubis@suse.cz>
>> DJ Delorie <dj@redhat.com>
>> Daniel Verkamp <daniel@drv.nu>
>> David Howells <dhowells@redhat.com>
>> Dirk Gouders <dirk@gouders.net>
>> Dmitry Goncharov <dgoncharov@users.sf.net>
>> Eli Zaretskii <eliz@gnu.org>
>> Elliott Hughes <enh@google.com>
>> Eric Biggers <ebiggers@google.com>
>> Eric Blake <eblake@redhat.com>
>> Eric Wong <e@80x24.org>
>> Fangrui Song <maskray@google.com>
>> Florian Weimer <fweimer@redhat.com>
>> Gavin Smith <gavinsmith0123@gmail.com>
>> Guillem Jover <guillem@hadrons.org>
>> G=C3=BCnther Noack <gnoack@google.com>
>> Helge Kreutzmann <debian@helgefjell.de>
>> Igor Sysoev <igor@sysoev.ru>
>> Ingo Schwarze <schwarze@openbsd.org>
>> Jakub Jelinek <jakub@redhat.com>
>> Jakub Sitnicki <jakub@cloudflare.com>
>> Jakub Wilk <jwilk@jwilk.net>
>> Johannes Weiner <hannes@cmpxchg.org>
>> John Gilmore <gnu@toad.com>
>> John Hubbard <jhubbard@nvidia.com>
>> John Scott <jscott@posteo.net>
>> Jonathan Corbet <corbet@lwn.net>
>> Jonathan Wakely <jwakely@redhat.com>
>> Joseph Myers <joseph@codesourcery.com>
>> Josh Triplett <josh@joshtriplett.org>
>> Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
>> Larry McVoy <lm@mcvoy.com>
>> Lennart Jablonka <humm@ljabl.com>
>> Linus Heckemann <git@sphalerite.org>
>> Lukas Javorsky <ljavorsk@redhat.com>
>> Marcos Fouces <marcos@debian.org>
>> Mario Blaettermann <mario.blaettermann@gmail.com>
>> Martin (Joey) Schulze <joey@infodrom.org>
>> Masami Hiramatsu <mhiramat@kernel.org>
>> Masatake YAMATO <yamato@redhat.com>
>> Matthew House <mattlloydhouse@gmail.com>
>> Matthew Wilcox (Oracle) <willy@infradead.org>
>> Michael Kerrisk <mtk.manpages@gmail.com>
>> Michael Wei=C3=9F <michael.weiss@aisec.fraunhofer.de>
>> Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
>> Mike Frysinger <vapier@gentoo.org>
>> Mike Kravetz <mike.kravetz@oracle.com>
>> Mingye Wang <arthur200126@gmail.com>
>> Nadav Amit <namit@vmware.com>
>> Nick Desaulniers <ndesaulniers@google.com>
>> Oskari Pirhonen <xxc3ncoredxx@gmail.com>
>> Paul E. McKenney <paulmck@kernel.org>
>> Paul Eggert <eggert@cs.ucla.edu>
>> Paul Floyd <pjfloyd@wanadoo.fr>
>> Paul Smith <psmith@gnu.org>
>> Philip Guenther <guenther@gmail.com>
>> Ralph Corderoy <ralph@inputplus.co.uk>
>> Reuben Thomas <rrt@sc3d.org>
>> Rich Felker <dalias@libc.org>
>> Richard Biener <richard.guenther@gmail.com>
>> Sam James <sam@gentoo.org>
>> Serge Hallyn <serge@hallyn.com>
>> Seth David Schoen <schoen@loyalty.org>
>> Siddhesh Poyarekar <siddhesh@gotplt.org>
>> Simon Horman <simon.horman@corigine.com>
>> Stefan Puiu <stefan.puiu@gmail.com>
>> Steffen Nurpmeso <steffen@sdaoden.eu>
>> Szabolcs Nagy <nsz@port70.net>
>> Thomas Wei=C3=9Fschuh <thomas@t-8ch.de>
>> Tom Schwindl <schwindl@posteo.de>
>> Tom=C3=A1=C5=A1 Golembiovsk=C3=BD <tgolembi@redhat.com>
>> Torbjorn SVENSSON <torbjorn.svensson@foss.st.com>
>> Ulrich Drepper <drepper@redhat.com>
>> Vahid Noormofidi <vnoormof@nvidia.com>
>> Vlastimil Babka <vbabka@suse.cz>
>> Wilco Dijkstra <Wilco.Dijkstra@arm.com>
>> Xi Ruoyao <xry111@xry111.site>
>> Yang Xu <xuyang2018.jy@fujitsu.com>
>> Yedidyah Bar David <didi@redhat.com>
>> Zack Weinberg <zack@owlfolio.org>
>> Zijun Zhao <zijunzhao@google.com>
>>
>> Apologies if I missed anyone!
>>
>>
>> Thanks you all for contributing!
>>
>> Cheers,
>> Alex
>>
>> --
>> <http://www.alejandro-colomar.es/>
>> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------pIWI0MaRjoXLuwDeLo6ezM3s--

--------------PIoSlRed0091BPsGiZQnSjvS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTKOC4ACgkQnowa+77/
2zK35xAAgHJPE8ImS6hBPdQo74eACBW0KNbH+lOJWCX9vNqjMIQhlFnv4ONSQwba
Ih/h6VaOmzefGc+n6IrRI0priiRjKvS1RbWqt+TNnWCReUbp1UptdvOPkzfiJYgc
EsJNPZRn9rgq4pUeQuoDQ7rBZhKNQmIYj0Y7Xhes4USvX911zkDv2fSyg1ZhH673
W6SJl15PGYRTFv54wR2q1D729OT90JiNSdYJsj9YR8ZQf+CI/3n24p8lNyWpXkv8
8zxxeI6g2RL1hJ5DrCnm92VRF8VBtnqUF4BT00Zibl2d3vhvmC258hpB4S6/tZT9
tEW1qlfUNYbAThiGKdssHCXTCwSWoxcXWOy5rlyeX/a1JO9U9+kiDikpF54ELlwC
XcPwtzRDl8pPNqui2AMVz+fpa5wXIbgm+sz5c6FaJsqc+d44VI48AQTfMNuc22qc
8cGBO8RQCr7VJimvcE2LMJfdKiISWkEGZRA7kriodUGxBbHr9MjHoSe8snIqzrxD
1Vaii4zx7cY7mdMdHmxJItq1DBI7KWAvsFInMZPXGNmWiOWTcixeNRf2whI3oc6W
D7ZdqwnGJn1dE78oE0vn2nKd4ymirGKK1XQeccsU81wgxvpKRULKM3HpsBkmWiyc
G/zMRNjwNJdfb4n3+8s3OH6WYxqJ2cVgSZpLeWgvJ/Eyf20xygo=
=lqaQ
-----END PGP SIGNATURE-----

--------------PIoSlRed0091BPsGiZQnSjvS--
