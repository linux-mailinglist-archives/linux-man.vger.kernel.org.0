Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 770246DBFC6
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 14:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbjDIMFW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 08:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIMFV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 08:05:21 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 117584493
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 05:05:19 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id g5so5757602wrb.5
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 05:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681041917; x=1683633917;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOMtEBc2l1GTcF4dkI8TUYaYFX0ZQexar8XcZ/maq6w=;
        b=qkkSfjm1iE7IQbgiSQTQK6A8jg6rGUsn6ePE15lqbZ5QUrlbmwR/XKHtD3+CJdjBLm
         WWi9mafFwatUSz9mebjL/R0D1fEnlcPIinTpJeVSi/4QeSl9h2YaoiV8p+6+jvfWmG+u
         S3AQyRPTmNKxkRVQpbTW51Kr/31iwg3YgfEwrjQrs8WIcXc+zZMZK/j0g2J1GHHILkSK
         SMOM2g0X6qUHoy8Ml+T6V2TdbzyimTHgj8+CMCvmAgsKgmkWhcJibY3whOcMJ2AIyFCK
         3pGApF7RzDKLvnJO7C6oNjiSa/11LsT18sDxxgZTTULBcUs3/8zUNIHS5Uu+gc1Lw5hP
         9llw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681041917; x=1683633917;
        h=in-reply-to:from:cc:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XOMtEBc2l1GTcF4dkI8TUYaYFX0ZQexar8XcZ/maq6w=;
        b=ICYzzofA6UJ4E12gvVKk8MXgEafNqj00vUQqtTszvwL99axaH5X/xJOCEj58caLIOt
         a9ONQOTIQbYumnyOwdMGHbTbK1ORx7rScvEjDwFGk/NexaQltwG77dlA89c8BnFXwlaJ
         HAk0ZrXBmCNnqXRWiWaFG+sMaYNSXT81MYzn+EK22qbaZ9a/0d4vaf07TDkJntoTmK/j
         3wtJjK0JDtmq7L6STLjuU8eBDvK0CqteI3Yk7hr+Ui1n0R+E8yzSS7B31qp0neXPo1XU
         ddMPkEESRsdBJCYjqkKCIEuA43opZ7RQmX9V+V7DEtXG1SpxQ+h8XxKuR97gHWqrAsMG
         q6zw==
X-Gm-Message-State: AAQBX9fWWdM65spIqnJvBKRQoCKFHPSrd6tQPyqnBEr6FSk3vvWZgW/O
        y2pHtDuT3qYfnVCuKHF7ZT0=
X-Google-Smtp-Source: AKy350ZUVO3FXKUAbW/SUPLjUYRWeQXEdN9Z8Y+Cf4rTkuHPMi9FH4OLRcB6XTGVJqPNdqkuBME/7Q==
X-Received: by 2002:a5d:6144:0:b0:2cf:ee72:a6d5 with SMTP id y4-20020a5d6144000000b002cfee72a6d5mr5342819wrt.44.1681041917255;
        Sun, 09 Apr 2023 05:05:17 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id v18-20020adfebd2000000b002c7066a6f77sm9081096wrn.31.2023.04.09.05.05.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 05:05:16 -0700 (PDT)
Message-ID: <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
Date:   Sun, 9 Apr 2023 14:05:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
To:     Alexis <flexibeast@gmail.com>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
Content-Language: en-US
Cc:     Ingo Schwarze <schwarze@usta.de>, Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>, Sam James <sam@gentoo.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <87a5zhwntt.fsf@ada>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------2YOR0ATmeIQ3sCC0wh1s2qem"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------2YOR0ATmeIQ3sCC0wh1s2qem
Content-Type: multipart/mixed; boundary="------------cmdi5g6u1nybrTIb6y8Z9BPN";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Alexis <flexibeast@gmail.com>, groff@gnu.org,
 linux-man <linux-man@vger.kernel.org>
Cc: Ingo Schwarze <schwarze@usta.de>, Dirk Gouders <dirk@gouders.net>,
 Colin Watson <cjwatson@debian.org>, Sam James <sam@gentoo.org>,
 Ralph Corderoy <ralph@inputplus.co.uk>
Message-ID: <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
Subject: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
In-Reply-To: <87a5zhwntt.fsf@ada>

--------------cmdi5g6u1nybrTIb6y8Z9BPN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[Added back linux-man@, and people that commented on this (sub)topic]
[Added Sam, I've got a question for you]

Hi Alexis,

Please keep (at least) linux-man@ in the loop.

On 4/9/23 08:44, Alexis wrote:
>=20
> As a related data point, i'd like to mention Gentoo's position on=20
> this, i.e. that man pages will continue to be bzip2-compressed by=20
> default:
>=20
> "app-text/mandoc bzip2 support"
> https://bugs.gentoo.org/854267
>=20
> "Remove /usr/share/man from default inclusion list for docompress"
> https://bugs.gentoo.org/836367

As Ingo said[1] 3 years ago, I don't think in this year it makes any
sense to compress pages anymore.  However, since it's simple for me
to add support for that, and it can be interesting for testing
purposes, I added support for installing the Linux man-pages
compressed with bzip2 using the Makefile[2].  While I was at it, I
also added support for generating .tar.bz2 release tarballs[3].

With this, I was able to test a bit more than what I did yesterday:


$ sudo rm -rf /opt/local/man/
$ sudo make install-man prefix=3D/opt/local/man/gz_ -j LINK_PAGES=3Dsymli=
nk Z=3D.gz | wc -l
2570
$ sudo make install-man prefix=3D/opt/local/man/bz2 -j LINK_PAGES=3Dsymli=
nk Z=3D.bz2 | wc -l
2570
$ sudo make install-man prefix=3D/opt/local/man/man -j LINK_PAGES=3Dsymli=
nk Z=3D | wc -l
2570
$ du -sh /opt/local/man/*
5.4M	/opt/local/man/bz2
5.5M	/opt/local/man/gz_
9.4M	/opt/local/man/man


$ export MANPATH=3D/opt/local/man/gz_/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
37
0.31
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs zgrep -l RLIMIT_=
NOFILE | wc -l"
17
1.56
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 zgrep -l RLI=
MIT_NOFILE | wc -l"
17
1.56
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do zcat =
\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.24
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.14


$ export MANPATH=3D/opt/local/man/bz2/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
37
10.90
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs bzgrep -l RLIMIT=
_NOFILE | wc -l"
17
1.33
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 bzgrep -l RL=
IMIT_NOFILE | wc -l"
17
1.31
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzcat=
 \$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.21
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.22


$ export MANPATH=3D/opt/local/man/man/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
37
0.56
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs grep -l RLIMIT_N=
OFILE | wc -l"
17
0.01
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 grep -l RLIM=
IT_NOFILE | wc -l"
17
0.01

Weird thing: today, the symlink bug in man(1) was reproducible in
all kinds of pages, while yesterday it only reproduced in
uncompressed ones.

Another weird thing: times today changed considerably for the
find(1) pipelines (half of yesterday's).  It's not a thing of
using dash(1), because I get similar times with bash(1) and its
builtin time(1).

Important note: Sam, are you sure you want your pages compressed
with bz2?  Have you seen the 10 seconds it takes man-db's man(1) to
find a word in the pages?  I suggest that at least you try to
reproduce these tests in your machine, and see if it's just me or
man-db's man(1) is pretty bad at non-gz pages.

Test results:

-  man-db's man(1) is slower with plain man(7) source than with .gz
   pages for some misterious reason.

-  man-db's man(1) is turtle slow with .bz2 pages.

-  xargs -P0 doesn't affect significantly.  As Ralph said, this is
   probably because the main issue with find(1) was having the
   bottleneck in clone/fork+exec, and xargs(1) already solves that.

   Expanding the pipeline to use zcat(1) instead of zgrep(1)
   improves a little bit more, because the zgrep(1) script is
   probably quite inefficient, while zcat(1) is just a simple
   wrapper around gzip(1).  We see that zgrep(1) is more
   inefficient than running ourselves a few programs per file in a
   pipeline!

   Calling gzip(1) directly is even faster, since we avoid invoking
   a shell for such a small script.

   Expanding the bzgrep(1) pipeline into one using bzcat(1) has
   similar improvements.  However, since bzcat(1) is a binary, we
   don't get further improvement from calling bzip2(1) directly.


Cheers,
Alex

>=20
>=20
> Alexis.
>=20


[1]:  <https://marc.info/?l=3Dmandoc-discuss&m=3D160668087317110&w=3D2>

[2]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit=
/?id=3D6a828d5b6879ef19c3f59034fe1d0850d25d0056>

[3]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit=
/?id=3De5b23b9c5b318d69ee78af0906e3bf0c665f9ae5>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------cmdi5g6u1nybrTIb6y8Z9BPN--

--------------2YOR0ATmeIQ3sCC0wh1s2qem
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQyqfUACgkQnowa+77/
2zJdUw//eEhUS7JqjDh1RqkFsfNw+R2OfMzMGlhC6DSeFpSeZTMx0UQeklX4H8hz
LyNiSCYs12sGGCt5g0UZLJzuBjks4X5VRzxh2wNMNDgVnXoZq01TV7Ifv1tmlIus
xNZNBTqgUlPs0mqJBt+Odmufw2gyYIvbDWOmVbfNIipbfjVKEUy3SztRjRs7cEiH
L+Idv24vx0taGS2bVfqm9UArhtvN4shgbwTapjh6+g6OSY3rAwgETc1sYZmodVh/
1PIb3L50wepQI7H3gmyltPY0p9CMljnmiq02YlHrObBX9It+EFcEIshNKMQ7/wwE
VsiH8+6PN28xaMaClmGPAIrR0uDe79HQGaARUOQuD8sMoExvFgAmojUeJVnsRPSv
zGDLFkEITN6O1Avtga45aD8MIbTgK7tEHgayt5wcgcjkBtZ9NMoKU6VFFSbTQizR
J0oncLA7+cq5ZzuVPlJ0B16lnwLTSpJgOpcLlhvkPPxdC2LfQ3JE7DpP3p3E76ph
OuaoO35TYRgek6Va+UzvfmeITjV9aCw2o03Hm42+yX8quHMC99RaLX8COiZhTnlZ
e8j4GF4TdQfnzukAxjCEa2r7uehXSN5yqgZFFIc7OUQJ/AOh/nbxUdiKWiN424Ih
NAIzm5Z0QjzhyIiLCJ90doYbgl1OjijFPrvORIS1JdiYBT1smAQ=
=UwA2
-----END PGP SIGNATURE-----

--------------2YOR0ATmeIQ3sCC0wh1s2qem--
