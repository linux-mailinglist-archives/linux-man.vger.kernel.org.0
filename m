Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 936116DF858
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 16:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230356AbjDLOY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 10:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230143AbjDLOYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 10:24:55 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5ACBD106
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 07:24:53 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id g5so14478735wrb.5
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 07:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681309492; x=1683901492;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MAwmnUsDI+NODbwMaHXEPbanLG6gLhgmT9WLLjVjJtc=;
        b=SfOlWLHDbR5N8IS2lPlfsVPxT8hZxZs+RIuhEjNW6cyhvWk4DW1fe9ngL7nkS3Pzhe
         XWig59EWQ9cjJDiltDk7ey2kMX+Jneoo5z/aUir4ITVwhmp1HCXsYEYWygwIcu4zKrk7
         MF/fPVC2Fmj7nhghePkqP2vBDSSF0rDhqlzc6YVsp69imbCTv0X4M7r+LCuv6qo4T6qR
         L8DVQeLWMesL3s/1uS9PnxQL39yFJ54zxCvGRHSZtkrvDaK2xB/ROu14sDj+S4RybcoV
         Xh98u+I2WhFdGr8016FXvTJs0j25gK9vB6CBj/JEMXOUjBJ44+g/c5kPAi9UBQIoBtvp
         BfqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681309492; x=1683901492;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MAwmnUsDI+NODbwMaHXEPbanLG6gLhgmT9WLLjVjJtc=;
        b=Qy+tgrTVKdim8ca7kmpAOI/fIgeSM/dxj/8w09SrCM9rDPcpB6/57e8uBSjZGQo4xg
         ovS9Nrz3f+e4UTefePdOQWncnIl5UxzFAxlOP7Hotq6pN/hBeCvVL4K4acrT1ZzpNEAT
         /nhvEheFCDWckDyuMpDB2Dj9PG/oA/1XLjxUG0ViXsZiX7zn0y8T6ZhmP3lWn7AOzYpW
         2XmtHSIClE/53h2nlslwmBJdunOqOA+SApIyltIPRwzNKUVe8livOwmMd7DhW5XWJ/O+
         K07sjnJVVDnRwhQ6PeRnxDA1oLbfxY4XKw7NYeOe13ECBgzySz2LT0aZ9qB3mlt51+kN
         gFlQ==
X-Gm-Message-State: AAQBX9ccp/ztlTc3YStce7BhkwdNErVb5wLLvj7d4kiX20K5IhGYaMh4
        zW6SOu4RnekIb0kP9i2mCOIsVsHl0OQ=
X-Google-Smtp-Source: AKy350a1nQSkqwoPvB0cJj7vbStOnPiVaOXwJuLOIlCmmvzo9iIQip4ZAQ5ID3rkk5qQMxjE3QCe0g==
X-Received: by 2002:a5d:6087:0:b0:2ef:b5a0:35e1 with SMTP id w7-20020a5d6087000000b002efb5a035e1mr2115413wrt.8.1681309491657;
        Wed, 12 Apr 2023 07:24:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id o8-20020adfcf08000000b002f47ae62fe0sm1738479wrj.115.2023.04.12.07.24.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 07:24:51 -0700 (PDT)
Message-ID: <44768e26-ed92-0562-2318-68fec781126b@gmail.com>
Date:   Wed, 12 Apr 2023 16:24:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Alexis <flexibeast@gmail.com>, groff@gnu.org,
        Ingo Schwarze <schwarze@usta.de>,
        Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Mingye Wang <arthur200126@gmail.com>,
        Kerin Millar <kfm@plushkava.net>, Sam James <sam@gentoo.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org>
 <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xpYHRDsvgtgFCR6llW2xUNDR"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xpYHRDsvgtgFCR6llW2xUNDR
Content-Type: multipart/mixed; boundary="------------tWksvG6nnrXVjBtRNepJ50FU";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Cc: Alexis <flexibeast@gmail.com>, groff@gnu.org,
 Ingo Schwarze <schwarze@usta.de>, Dirk Gouders <dirk@gouders.net>,
 Colin Watson <cjwatson@debian.org>, Ralph Corderoy <ralph@inputplus.co.uk>,
 Mingye Wang <arthur200126@gmail.com>, Kerin Millar <kfm@plushkava.net>,
 Sam James <sam@gentoo.org>
Message-ID: <44768e26-ed92-0562-2318-68fec781126b@gmail.com>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org>
 <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>
In-Reply-To: <20230412140451.f03a6c19983694fe844bbb5a@plushkava.net>

--------------tWksvG6nnrXVjBtRNepJ50FU
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

After the suggestion by Ralph of trying .lz, Sam's comment about .xz),
and Kerin's comment about tuning the compression parameters, I decided
to try out everything at once, so we can see the effects of the
alternatives.

TL;DR:  For manual pages, use uncompressed source, or gzip(1).
        Everything else is unreasonably slow.


Here go the numbers.  Below, will be a conclusion I get from them.
The following tests have been produced with man-db's man(1) built
from source, since Colin fixed an relevant bug a few days ago[1].
This improves performance considerably compared to the latest
release.


$ sudo make install-man prefix=3D/opt/local/man/bz2_1 -j LINK_PAGES=3Dsym=
link Z=3D.bz2 BZIP2FLAGS=3D-1 | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/bz2_9 -j LINK_PAGES=3Dsym=
link Z=3D.bz2 BZIP2FLAGS=3D-9 | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/bz2__ -j LINK_PAGES=3Dsym=
link Z=3D.bz2 BZIP2FLAGS=3D   | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/gz__1 -j LINK_PAGES=3Dsym=
link Z=3D.gz  GZIPFLAGS=3D-1  | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/gz__9 -j LINK_PAGES=3Dsym=
link Z=3D.gz  GZIPFLAGS=3D-9  | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/gz___ -j LINK_PAGES=3Dsym=
link Z=3D.gz  GZIPFLAGS=3D    | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/lz__1 -j LINK_PAGES=3Dsym=
link Z=3D.lz  LZIPFLAGS=3D-1  | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/lz__9 -j LINK_PAGES=3Dsym=
link Z=3D.lz  LZIPFLAGS=3D-9  | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/lz___ -j LINK_PAGES=3Dsym=
link Z=3D.lz  LZIPFLAGS=3D    | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/xz__1 -j LINK_PAGES=3Dsym=
link Z=3D.xz  XZFLAGS=3D-1    | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/xz__9 -j LINK_PAGES=3Dsym=
link Z=3D.xz  XZFLAGS=3D-9    | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/xz___ -j LINK_PAGES=3Dsym=
link Z=3D.xz  XZFLAGS=3D      | wc -l
2571
$ sudo make install-man prefix=3D/opt/local/man/man__ -j LINK_PAGES=3Dsym=
link Z=3D                   | wc -l
2571
$ du -sh /opt/local/man/*
5.4M	/opt/local/man/bz2_1
5.4M	/opt/local/man/bz2_9
5.4M	/opt/local/man/bz2__
5.7M	/opt/local/man/gz__1
5.5M	/opt/local/man/gz__9
5.5M	/opt/local/man/gz___
5.5M	/opt/local/man/lz__1
5.4M	/opt/local/man/lz__9
5.4M	/opt/local/man/lz___
9.4M	/opt/local/man/man__
5.5M	/opt/local/man/xz__1
5.4M	/opt/local/man/xz__9
5.4M	/opt/local/man/xz___


$ export MANPATH=3D/opt/local/man/bz2_1/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.15
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l |=
 xargs printf '%s; '"
17; 1.22

$ export MANPATH=3D/opt/local/man/bz2_9/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.15
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l |=
 xargs printf '%s; '"
17; 1.23

$ export MANPATH=3D/opt/local/man/bz2__/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.19
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l |=
 xargs printf '%s; '"
17; 1.23


$ export MANPATH=3D/opt/local/man/gz__1/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 0.21
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | =
xargs printf '%s; '"
17; 1.16

$ export MANPATH=3D/opt/local/man/gz__9/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 0.20
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | =
xargs printf '%s; '"
17; 1.17

$ export MANPATH=3D/opt/local/man/gz___/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 0.20
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | =
xargs printf '%s; '"
17; 1.15


$ export MANPATH=3D/opt/local/man/lz__1/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.95
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do lzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | =
xargs printf '%s; '"
17; 1.40

$ export MANPATH=3D/opt/local/man/lz__9/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.93
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do lzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | =
xargs printf '%s; '"
17; 1.40

$ export MANPATH=3D/opt/local/man/lz___/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.94
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do lzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | =
xargs printf '%s; '"
17; 1.40


$ export MANPATH=3D/opt/local/man/xz__1/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 3.43
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do xz -d=
 - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | xa=
rgs printf '%s; '"
17; 1.24

$ export MANPATH=3D/opt/local/man/xz__9/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 4.21
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do xz -d=
 - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | xa=
rgs printf '%s; '"
17; 1.55

$ export MANPATH=3D/opt/local/man/xz___/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 4.17
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do xz -d=
 - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l | xa=
rgs printf '%s; '"
17; 1.55


$ export MANPATH=3D/opt/local/man/man__/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l | xargs printf =
'%s; '"
17; 0.55
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 grep -l RLIM=
IT_NOFILE | wc -l | xargs printf '%s; '"
17; 0.01


Conclussions:

Any compression formats other than .gz are unreasonably slow.
I'd say either use .gz, or plain text, or prepare to
contribute code yourself to man-db to optimize for your favourite
compression format.

=2Ebz2, .lz, and .xz have similar times, and tuning the compression
doesn't produce important changes in speed (except slightly for
=2Exz, but I don't see any advantage of using .xz).

Similarly, tuning the compression of .gz doesn't produce
important changes in speed.

Plain text has the advantage that you can use all the power of
Unix tools to search through the source code of the pages
instantaneously, without being restricted to what man(1) allows.


I hope this was useful.

Cheers,
Alex


[1]:  <https://lists.nongnu.org/archive/html/man-db-devel/2023-04/msg0000=
0.html>

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------tWksvG6nnrXVjBtRNepJ50FU--

--------------xpYHRDsvgtgFCR6llW2xUNDR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQ2vyoACgkQnowa+77/
2zKpSA/9F+cCi724HPkAYYpiAWTriuRmjiF/CB16cmiuhGfVgDO5cfE1dn6Xwoll
z304lrJFviBZeT93CV0Lo12e3mxZzFX0mPCs6vjFe1vHgsogTHTpJE3EAu7i2rUO
M+GIitSTzku3VPtGv3mqPth0WdVsDYilXoTYiNF3VylA7q5uQjSzUc2VlcL0XcCz
5pPjaw4qTi8JpskVGSLW19GVN488hPoBcdW+vaN5kuAMdAzQv2T8t1y6XNv6KrT+
A6As/6drXfhsrjTVJ9fHcynlv05AXD8fcdim0mljY3xz9dmUuVbDnxu8LadqScxq
47ZWnID7TcBFDJ0VygtGs8T6/iKDmyy0b0I0DnnCRwaOpOZdwcFncej8HhN/Wd+y
xrAWcv9Jij9soMrbQDCzq82rv6djvv0i8XJrlFrsv6phYADDlqbrqnFOXh8eYwi+
pqba9KfEXxf3AIl4NW1V3xNBNT9TP5Kgn7UhK9n7Ocmcqu8ymWyNHrvlVCJjQsUZ
BMObRYf9fqIEmkgvZJEEnRzC62rSh9J2RuwaTwcBG+nEQY639JFtwiYUU465sbw3
CV3aoeOABiGhTDHIpb7MPpe2YGKSe9ZbNrp1JE4h2ckE7B1fgoMRpzamcbJ3UGZj
tKwjN/oAXnlGTu364byGzfLhpqDKgHQe2ky3cIQRrvwz7paMPns=
=luCa
-----END PGP SIGNATURE-----

--------------xpYHRDsvgtgFCR6llW2xUNDR--
