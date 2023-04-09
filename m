Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1AF4D6DBFCE
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 14:18:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbjDIMSM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 08:18:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIMSL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 08:18:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FBD33581
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 05:18:10 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so23908853wmq.3
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 05:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681042688; x=1683634688;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FsMo3yJhIjxcKrf5fwpdZzhJEP3QjFmwkYrs9A0m4eE=;
        b=Knhsbzx7bCTsJSPk3fObL7cIRpILYztP2Klz2UWIsEzni8hULb75CLOfesSEC+BJBH
         uBOhD8Dag4WjE/9mk2d0PfyGZoOjdi/K+aPtzQeuxuZRkP/5pctlZFwp7/gpHvASU9Qn
         4KS7cjNMheYws4FZc7BLGDPeYSri8enhsXPA7hS1B7QvhlsIhNhleS1ci9Uee9fxevb+
         TVlhTEUjUN78tlHJUXVJ9oTrxKdRv/AhRgy2bHgq1ch8dC8f/wH1QNoRqT2TNmfPVGyZ
         71vwq0xoK5ecW59oWqxFDLqabMiThquze81PUr5339wbQlmHqjmX4A7fPL69q5IQ9rpe
         W1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681042688; x=1683634688;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FsMo3yJhIjxcKrf5fwpdZzhJEP3QjFmwkYrs9A0m4eE=;
        b=CZNOscvNnY2MVsLR9JUdMt0EiShRGPSkjR3FkrohXeCqs/B+HmOOOaH5atYta4Dl2r
         77KS2qx9zt1nxkT6RYAbWWnsIFDAfmIJzxIVnWDLjYclr+TfgCieK08cF06Gm32qdsN8
         dvS1RHz843zF51WcRaNAVh1fFMqIiI9bwf6IApy7uyWYJs4mzS/XmV+xMwKz9knjzY5J
         Dc5eANL+4Q/sHAXERci3C9nWK5S2Qe6k4NyuV8uy6lYCbIEMEkoS+0tL+MlfU6bSGLW8
         iZ+2VQ4QUaPViBCTo5iy20Z/dneDctAC4PdGsMvYJIKUBoYxCNP6ixoEVwUc6YXuY+sj
         y/4Q==
X-Gm-Message-State: AAQBX9dTXiMuzY5pMKQOZIAPVreLb3PwuOYzW8HKQa6tpfcM309nGskQ
        vvrApz6BC6VBPVutMvvJtcQFT9/G7xQ=
X-Google-Smtp-Source: AKy350ZudeFqYhloNu7NygEJSaVr55jibAkbXElQ6iKJwVXvuAhBboVNKX6vNL7KCR7Uer0UpfQSoQ==
X-Received: by 2002:a05:600c:2148:b0:3ed:f9d3:f95c with SMTP id v8-20020a05600c214800b003edf9d3f95cmr2975626wml.19.1681042688560;
        Sun, 09 Apr 2023 05:18:08 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id i1-20020a5d6301000000b002efb31d3c24sm5695493wru.32.2023.04.09.05.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 05:18:08 -0700 (PDT)
Message-ID: <53b0f991-7187-07ed-b2f8-4b6d8d7ffc3a@gmail.com>
Date:   Sun, 9 Apr 2023 14:17:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, Dirk Gouders <dirk@gouders.net>,
        Colin Watson <cjwatson@debian.org>, Sam James <sam@gentoo.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Alexis <flexibeast@gmail.com>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
In-Reply-To: <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------c3sztQepF5CZjLVpGAAYwTg0"
X-Spam-Status: No, score=-3.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------c3sztQepF5CZjLVpGAAYwTg0
Content-Type: multipart/mixed; boundary="------------lYD5VSjeA7jRpzac1aBFwLum";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: groff@gnu.org, linux-man <linux-man@vger.kernel.org>
Cc: Ingo Schwarze <schwarze@usta.de>, Dirk Gouders <dirk@gouders.net>,
 Colin Watson <cjwatson@debian.org>, Sam James <sam@gentoo.org>,
 Ralph Corderoy <ralph@inputplus.co.uk>, Alexis <flexibeast@gmail.com>
Message-ID: <53b0f991-7187-07ed-b2f8-4b6d8d7ffc3a@gmail.com>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
In-Reply-To: <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>

--------------lYD5VSjeA7jRpzac1aBFwLum
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 4/9/23 14:05, Alejandro Colomar wrote:
> [Added back linux-man@, and people that commented on this (sub)topic]
> [Added Sam, I've got a question for you]
>=20
> Hi Alexis,
>=20
> Please keep (at least) linux-man@ in the loop.
>=20
> On 4/9/23 08:44, Alexis wrote:
>>
>> As a related data point, i'd like to mention Gentoo's position on=20
>> this, i.e. that man pages will continue to be bzip2-compressed by=20
>> default:
>>
>> "app-text/mandoc bzip2 support"
>> https://bugs.gentoo.org/854267
>>
>> "Remove /usr/share/man from default inclusion list for docompress"
>> https://bugs.gentoo.org/836367
>=20
> As Ingo said[1] 3 years ago, I don't think in this year it makes any
> sense to compress pages anymore.  However, since it's simple for me
> to add support for that, and it can be interesting for testing
> purposes, I added support for installing the Linux man-pages
> compressed with bzip2 using the Makefile[2].  While I was at it, I
> also added support for generating .tar.bz2 release tarballs[3].
>=20
> With this, I was able to test a bit more than what I did yesterday:
>=20
>=20
> $ sudo rm -rf /opt/local/man/
> $ sudo make install-man prefix=3D/opt/local/man/gz_ -j LINK_PAGES=3Dsym=
link Z=3D.gz | wc -l
> 2570
> $ sudo make install-man prefix=3D/opt/local/man/bz2 -j LINK_PAGES=3Dsym=
link Z=3D.bz2 | wc -l
> 2570
> $ sudo make install-man prefix=3D/opt/local/man/man -j LINK_PAGES=3Dsym=
link Z=3D | wc -l
> 2570
> $ du -sh /opt/local/man/*
> 5.4M	/opt/local/man/bz2
> 5.5M	/opt/local/man/gz_
> 9.4M	/opt/local/man/man
>=20
>=20
> $ export MANPATH=3D/opt/local/man/gz_/share/man
> $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> 37
> 0.31
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs zgrep -l RLIMI=
T_NOFILE | wc -l"
> 17
> 1.56
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 zgrep -l R=
LIMIT_NOFILE | wc -l"
> 17
> 1.56
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do zca=
t \$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> 17
> 1.24
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzi=
p -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"=

> 17
> 1.14
>=20
>=20
> $ export MANPATH=3D/opt/local/man/bz2/share/man
> $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> 37
> 10.90
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs bzgrep -l RLIM=
IT_NOFILE | wc -l"
> 17
> 1.33
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 bzgrep -l =
RLIMIT_NOFILE | wc -l"
> 17
> 1.31
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzc=
at \$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
> 17
> 1.21
> $ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzi=
p2 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l=
"
> 17
> 1.22
>=20
>=20
> $ export MANPATH=3D/opt/local/man/man/share/man
> $ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
> 37
> 0.56
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs grep -l RLIMIT=
_NOFILE | wc -l"
> 17
> 0.01
> $ /bin/time -f %e dash -c "find $MANPATH -type f | xargs -P0 grep -l RL=
IMIT_NOFILE | wc -l"
> 17
> 0.01
>=20
> Weird thing: today, the symlink bug in man(1) was reproducible in
> all kinds of pages, while yesterday it only reproduced in
> uncompressed ones.
>=20
> Another weird thing: times today changed considerably for the
> find(1) pipelines (half of yesterday's).  It's not a thing of
> using dash(1), because I get similar times with bash(1) and its
> builtin time(1).
>=20
> Important note: Sam, are you sure you want your pages compressed
> with bz2?  Have you seen the 10 seconds it takes man-db's man(1) to
> find a word in the pages?  I suggest that at least you try to
> reproduce these tests in your machine, and see if it's just me or
> man-db's man(1) is pretty bad at non-gz pages.
>=20
> Test results:
>=20
> -  man-db's man(1) is slower with plain man(7) source than with .gz
>    pages for some misterious reason.
>=20
> -  man-db's man(1) is turtle slow with .bz2 pages.
>=20
> -  xargs -P0 doesn't affect significantly.  As Ralph said, this is
>    probably because the main issue with find(1) was having the
>    bottleneck in clone/fork+exec, and xargs(1) already solves that.
>=20
>    Expanding the pipeline to use zcat(1) instead of zgrep(1)
>    improves a little bit more, because the zgrep(1) script is
>    probably quite inefficient, while zcat(1) is just a simple
>    wrapper around gzip(1).  We see that zgrep(1) is more
>    inefficient than running ourselves a few programs per file in a
>    pipeline!
>=20
>    Calling gzip(1) directly is even faster, since we avoid invoking
>    a shell for such a small script.
>=20
>    Expanding the bzgrep(1) pipeline into one using bzcat(1) has
>    similar improvements.  However, since bzcat(1) is a binary, we
>    don't get further improvement from calling bzip2(1) directly.

And I forgot the obvious one:

-  Using plain man(7) source is blazingly fast.  So much that I
   don't miss mdoc(7)'s indexability so much.

However, I must admit that I do miss mdoc(7)'s power sometimes.
The man_lsfunc() and man_lsvar() functions for finding function
prototypes and variable declarations in man(7) source would be
much simpler using mdoc(1), and I could even use mandoc(1) to
find such things.

>=20
>=20
> Cheers,
> Alex
>=20
>>
>>
>> Alexis.
>>
>=20
>=20
> [1]:  <https://marc.info/?l=3Dmandoc-discuss&m=3D160668087317110&w=3D2>=

>=20
> [2]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/comm=
it/?id=3D6a828d5b6879ef19c3f59034fe1d0850d25d0056>
>=20
> [3]:  <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/comm=
it/?id=3De5b23b9c5b318d69ee78af0906e3bf0c665f9ae5>
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------lYD5VSjeA7jRpzac1aBFwLum--

--------------c3sztQepF5CZjLVpGAAYwTg0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQyrPUACgkQnowa+77/
2zLAUw//ak/sG+VVyyfgJZXp/yoFbaL4m1Z9luSeKGNey/9T/Ra1z3WODMZjJMk5
3tO/WNRNRQK6EDD7FDuiw/AiQCwJKWgjvYYtQLha1gdujt20BbC9dmCAEHmq0qB8
miFGvspVL05lkrNhCci99wVU90NOnZTxexeDi0nQtGc0K4w5nsJZDkfsx5EQc8Lc
h8pJ3adEFCEfUFLUjW/2uMBsvda9RMOgkfYzBDOeB49K3OZ20paimlDN5biaXFHB
VP/VwMgTs3AMjnVFbUwO2huiyfoNeI9mkkv4n0JALRvU0YH2IQhdLM+OleNzbWIm
mBumRMIuou86nuJwyIy2bgeaPo78TD/ySH3zsb16e2Hrf1+gI5uDV3LKfTYZtE6L
VuCAvfsqGozJvxChpCLVn9jNTy8K+fyCnyZj7eA4QrMd4Bb+R3wfoqvqCQuMLW/t
ZKP/dr88tx8n5hSE62UWTsLGTNtUExjscOw4bOJ7MqCgy0kfJ7QTmogtqQ+pF7Wb
lx8F7ZUfnRpD4VY0zU0RrknIgNpdOHo6MYjBn4NVy6lQsLiYzTOk8O7Llp4Ru3du
+LtGL/xwc3zQwHm1As1sXfcSaEsfHweyF6G4rDcrSOB24s+7NdpeI483m/s+javW
TbLyzL+2FHO0FnQ9pSm7/Ukuw3yttxEtl997ZGGLmeOZzKg01uA=
=fSS9
-----END PGP SIGNATURE-----

--------------c3sztQepF5CZjLVpGAAYwTg0--
