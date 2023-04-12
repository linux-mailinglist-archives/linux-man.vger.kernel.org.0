Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8CF876DED5C
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 10:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229531AbjDLIRe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 04:17:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbjDLIRe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 04:17:34 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD29139
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 01:17:32 -0700 (PDT)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
User-agent: mu4e 1.10.1; emacs 29.0.90
From:   Sam James <sam@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alexis <flexibeast@gmail.com>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>,
        Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Kerin Millar <kfm@plushkava.net>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Date:   Wed, 12 Apr 2023 09:13:13 +0100
In-reply-to: <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
Message-ID: <875ya1ecq1.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Alejandro Colomar <alx.manpages@gmail.com> writes:

> [[PGP Signed Part:Undecided]]
> [Added back linux-man@, and people that commented on this (sub)topic]
> [Added Sam, I've got a question for you]
>
> Hi Alexis,
>
> Please keep (at least) linux-man@ in the loop.
>
> On 4/9/23 08:44, Alexis wrote:
>>=20
>> As a related data point, i'd like to mention Gentoo's position on=20
>> this, i.e. that man pages will continue to be bzip2-compressed by
>> default:
>>=20
>> "app-text/mandoc bzip2 support"
>> https://bugs.gentoo.org/854267
>>=20
>> "Remove /usr/share/man from default inclusion list for docompress"
>> https://bugs.gentoo.org/836367
>
> As Ingo said[1] 3 years ago, I don't think in this year it makes any
> sense to compress pages anymore.  However, since it's simple for me
> to add support for that, and it can be interesting for testing
> purposes, I added support for installing the Linux man-pages
> compressed with bzip2 using the Makefile[2].  While I was at it, I
> also added support for generating .tar.bz2 release tarballs[3].
>
> With this, I was able to test a bit more than what I did yesterday:
>
>
> $ sudo rm -rf /opt/local/man/
> $ sudo make install-man prefix=3D/opt/local/man/gz_ -j LINK_PAGES=3Dsymli=
nk Z=3D.gz | wc -l
> 2570
> $ sudo make install-man prefix=3D/opt/local/man/bz2 -j LINK_PAGES=3Dsymli=
nk Z=3D.bz2 | wc -l
> 2570
> $ sudo make install-man prefix=3D/opt/local/man/man -j LINK_PAGES=3Dsymli=
nk Z=3D | wc -l
> 2570
> $ du -sh /opt/local/man/*
> 5.4M	/opt/local/man/bz2
> 5.5M	/opt/local/man/gz_
> 9.4M	/opt/local/man/man
>
>
> $ export MANPATH=3D/opt/local/man/gz_/share/man
> $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> 37
> 0.31
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs zgrep -l RLIMIT_=
NOFILE | wc -l"
> 17
> 1.56
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 zgrep -l RLI=
MIT_NOFILE | wc -l"
> 17
> 1.56
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do zcat =
\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> 17
> 1.24
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> 17
> 1.14
>
>
> $ export MANPATH=3D/opt/local/man/bz2/share/man
> $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> 37
> 10.90
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs bzgrep -l RLIMIT=
_NOFILE | wc -l"
> 17
> 1.33
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 bzgrep -l RL=
IMIT_NOFILE | wc -l"
> 17
> 1.31
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzcat=
 \$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> 17
> 1.21
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> 17
> 1.22
>
>
> $ export MANPATH=3D/opt/local/man/man/share/man
> $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> 37
> 0.56
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs grep -l RLIMIT_N=
OFILE | wc -l"
> 17
> 0.01
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 grep -l RLIM=
IT_NOFILE | wc -l"
> 17
> 0.01
>
> Weird thing: today, the symlink bug in man(1) was reproducible in
> all kinds of pages, while yesterday it only reproduced in
> uncompressed ones.
>
> Another weird thing: times today changed considerably for the
> find(1) pipelines (half of yesterday's).  It's not a thing of
> using dash(1), because I get similar times with bash(1) and its
> builtin time(1).
>
> Important note: Sam, are you sure you want your pages compressed
> with bz2?  Have you seen the 10 seconds it takes man-db's man(1) to
> find a word in the pages?  I suggest that at least you try to
> reproduce these tests in your machine, and see if it's just me or
> man-db's man(1) is pretty bad at non-gz pages.
>
> Test results:
>
> -  man-db's man(1) is slower with plain man(7) source than with .gz
>    pages for some misterious reason.
>
> -  man-db's man(1) is turtle slow with .bz2 pages.

I started looking into changing to xz (or just.. not bz2, anyway),
partially motivated by https://gitlab.com/man-db/man-db/-/issues/4 /
just interest locally (without having done measurements to see if it
would be worth a global change) and the xz maintainer ended up
recommending a different implementation to how man-db currently handles
external utilties entirely (which I have a draft of).

The xz author had some suggestions on the best parameters to use
for man pages too which I need to look into and dig up...

https://bugs.gentoo.org/169260 was an interesting discussion
about our choice of bz2 (it came up a bit in
https://bugs.gentoo.org/372653 too).

(I'll get back and read the rest of the thread later, but wanted
to add this tidbit.)

Definitely surprised to learn bz2 is *that* bad though!

best,
sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZDZpFl8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZDwhgD9EJgWA7hPW1HxYt+aK8aWTGxuREe8oivsytWE
KWnKO0QA/iCUE5WcVQtUGfnGTdi9J9z07or8UWbE7LDKd68ZsA8F
=K01s
-----END PGP SIGNATURE-----
--=-=-=--
