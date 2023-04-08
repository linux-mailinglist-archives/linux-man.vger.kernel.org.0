Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E02106DBD5D
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 23:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjDHVxq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 17:53:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDHVxp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 17:53:45 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACCF45FC8
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 14:53:43 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id v14-20020a05600c470e00b003f06520825fso6055528wmo.0
        for <linux-man@vger.kernel.org>; Sat, 08 Apr 2023 14:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680990822; x=1683582822;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fL3wy0P7uJUzXu8E9yJQnWm2PxwKmf2sHdARVYqrTI4=;
        b=Z6IhHy5w9b5j5uAEGVMBvD2zLr3sA+/aEOHtP1pSkXJbsQ5cMOumIfMnnt3fEaH18A
         o7H6SIwI7I151+qdZS6zUe6SBU9EYDhjg61hrWkl8bjE+h2S0GhSMEhvCBrNPTLUiRF1
         wK05NY8wa9Uhgv3kAj8BfxqEK2f147x9cqj9cw2nU0JV5gfdU4YJNMvSbG66+l/ONHjR
         +s8ILU7lT+NlDhmhF2SoPsr1ibKDb3XoBJMsUvB31P6uSCf78Buz50Npyi19QsckzPPo
         ZvLuqeI1Aq9M9/sXHYIveGA3xrmhhap1njk3wrzFSsZ2BvWpK89OS5HTckpPohSPwV3h
         lpJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680990822; x=1683582822;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fL3wy0P7uJUzXu8E9yJQnWm2PxwKmf2sHdARVYqrTI4=;
        b=lq9GTfA83FzFHqVc4IkvDobge8tcwph9+7r67uGp1UL/E7DIQcEL6QP8OcFPB4CA/t
         9NRuldlOPA3/KsxyyoWwZronjwUCXOZAn/Aea8QDzDhc7rRrqnbH21Pc1GT5u1MY8/Mu
         iI34wCtFbO6DZ3Ywm4xme+EtQsBWB13tMr/fmyNiVogiQpNUy+uzYdb4ChrjTZNqspGv
         dBZDvEthY/w7h9bsihCSXJYpLonX1PsmUCg+W61CQvfsoIWGGrJ6q5AY/b0BK2wVm5oh
         ngitFFutlihy2TQudCkaPEGMoLBEHMME/3RRRoi7fCUFmO6LjR9U2Ty4k1ovloUwhlEZ
         JA8Q==
X-Gm-Message-State: AAQBX9cu+snEXw5p4Bzhr2+V1kGDi/BMEDJ68L89fF9fTaFwsfKfaM6I
        UKl7T/CITEqq134/EHVMbhbo+FgpCbQ=
X-Google-Smtp-Source: AKy350YrZ9ctEdd+rG+sCkv0eAJ4blJQRIklyaHcN5qKiV9LX23dbEZtKIbySqH9gwvERHJnXkUbmg==
X-Received: by 2002:a7b:c7d1:0:b0:3eb:38b0:e757 with SMTP id z17-20020a7bc7d1000000b003eb38b0e757mr4085096wmk.10.1680990821861;
        Sat, 08 Apr 2023 14:53:41 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id v7-20020a05600c214700b003eb966d39desm8975381wml.2.2023.04.08.14.53.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Apr 2023 14:53:41 -0700 (PDT)
Message-ID: <3770fc9f-a098-6696-8510-b1f583f06992@gmail.com>
Date:   Sat, 8 Apr 2023 23:53:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Accessibility of man pages
To:     Dirk Gouders <dirk@gouders.net>, Eli Zaretskii <eliz@gnu.org>,
        cjwatson@debian.org, Ingo Schwarze <schwarze@usta.de>
Cc:     linux-man@vger.kernel.org, help-texinfo@gnu.org,
        nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
        groff@gnu.org
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
 <83bkjym9bw.fsf@gnu.org> <ghcz4eksp5.fsf@gouders.net>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ghcz4eksp5.fsf@gouders.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JejQmbEWSTAfTt3x9nvEbHhB"
X-Spam-Status: No, score=-0.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------JejQmbEWSTAfTt3x9nvEbHhB
Content-Type: multipart/mixed; boundary="------------kXZ0lYIqnlNQOl9ylsDC5hm5";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Dirk Gouders <dirk@gouders.net>, Eli Zaretskii <eliz@gnu.org>,
 cjwatson@debian.org, Ingo Schwarze <schwarze@usta.de>
Cc: linux-man@vger.kernel.org, help-texinfo@gnu.org,
 nabijaczleweli@nabijaczleweli.xyz, g.branden.robinson@gmail.com,
 groff@gnu.org
Message-ID: <3770fc9f-a098-6696-8510-b1f583f06992@gmail.com>
Subject: Re: Accessibility of man pages
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net>
 <83bkjym9bw.fsf@gnu.org> <ghcz4eksp5.fsf@gouders.net>
In-Reply-To: <ghcz4eksp5.fsf@gouders.net>

--------------kXZ0lYIqnlNQOl9ylsDC5hm5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Dirk, Ingo, Eli, Colin,

I prepared some (hopefully) fair comparison:

$ sudo make install-man prefix=3D/opt/local/man/compressed -j LINK_PAGES=3D=
symlink Z=3D.gz >/dev/null
$ sudo make install-man prefix=3D/opt/local/man/expanded__ -j LINK_PAGES=3D=
symlink       >/dev/null


I don't know what kind of magic man(1) does to be so fast reading compres=
sed pages:


$ export MANPATH=3D/opt/local/man/compressed/share/man
$ time man -Kaw RLIMIT_NOFILE | wc -l
17

real	0m0.330s
user	0m0.261s
sys	0m0.074s
$ time find $MANPATH -type f | xargs zgrep -l RLIMIT_NOFILE | wc -l
17

real	0m3.732s
user	0m4.776s
sys	0m0.703s
$ time find $MANPATH -type f | xargs -P0 zgrep -l RLIMIT_NOFILE | wc -l
17

real	0m3.403s
user	0m4.706s
sys	0m0.699s
$ time find $MANPATH -type f | while read f; do zcat $f | grep -l RLIMIT_=
NOFILE >/dev/null && echo "$f"; done | wc -l
17

real	0m3.730s
user	0m4.769s
sys	0m1.973s


man(1) seems to be faster than reading uncompressed pages!  See:


$ export MANPATH=3D/opt/local/man/expanded__/share/man
$ time man -Kaw RLIMIT_NOFILE | wc -l
35

real	0m1.138s
user	0m0.669s
sys	0m0.470s
$ time find $MANPATH -type f | xargs grep -l RLIMIT_NOFILE | wc -l
17

real	0m0.018s
user	0m0.007s
sys	0m0.015s


Having the pages uncompressed seems to be an important advantage for
searching through the sources.  0.018 (with the manual search) is
more than 10x faster than what man(1) can get from compressed pages.
And it allows using more complex tools, like pcre2grep(1), or sed(1)
for more complex searches.

Colin, did I do anything wrong to have this slowness in man(1) with
uncompressed pages?  Also, it's finding some repeated lines; did we
find a bug?


$ man -Kaw RLIMIT_NOFILE
/opt/local/man/expanded__/share/man/man3/errno.3
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man3/getdtablesize.3
/opt/local/man/expanded__/share/man/man3/mq_open.3
/opt/local/man/expanded__/share/man/man3/sysconf.3
/opt/local/man/expanded__/share/man/man2/fcntl.2
/opt/local/man/expanded__/share/man/man2/fcntl.2
/opt/local/man/expanded__/share/man/man2/open.2
/opt/local/man/expanded__/share/man/man2/open.2
/opt/local/man/expanded__/share/man/man2/open.2
/opt/local/man/expanded__/share/man/man2/poll.2
/opt/local/man/expanded__/share/man/man2/poll.2
/opt/local/man/expanded__/share/man/man2/seccomp_unotify.2
/opt/local/man/expanded__/share/man/man2/pidfd_getfd.2
/opt/local/man/expanded__/share/man/man2/dup.2
/opt/local/man/expanded__/share/man/man2/dup.2
/opt/local/man/expanded__/share/man/man2/dup.2
/opt/local/man/expanded__/share/man/man2/getrlimit.2
/opt/local/man/expanded__/share/man/man2/getrlimit.2
/opt/local/man/expanded__/share/man/man2/getrlimit.2
/opt/local/man/expanded__/share/man/man2/getrlimit.2
/opt/local/man/expanded__/share/man/man2/getrlimit.2
/opt/local/man/expanded__/share/man/man2/pidfd_open.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man2/select.2
/opt/local/man/expanded__/share/man/man5/proc.5
/opt/local/man/expanded__/share/man/man5/proc.5
/opt/local/man/expanded__/share/man/man7/capabilities.7
/opt/local/man/expanded__/share/man/man7/fanotify.7
/opt/local/man/expanded__/share/man/man7/unix.7

$ grep -n RLIMIT_NOFILE /opt/local/man/expanded__/share/man/man2/select.2=

412:.B RLIMIT_NOFILE


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------kXZ0lYIqnlNQOl9ylsDC5hm5--

--------------JejQmbEWSTAfTt3x9nvEbHhB
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQx4l0ACgkQnowa+77/
2zLfDg/+J5+e/SfX/3FG0ap00SLAtRktd0x1AVcW7thDMrj6U4jJ41wvohsyiKdC
b1jgWjrRzKjLKEav1QsLzMSW2gkA1t2nOrHAcrdlfZW9Mobsj3rzOJKMgW1XDU6B
5jKqgltMCmjIgSA/IEuaSM7XOS4UsCId/s+NCBPKpttQjcf+V5Y/wHSUoJNHHK+i
5AWdTzd6/H2yt/3xU6QUJLpmlGjI+1g+sUyvuStGODuZRU1z7lEi6KdIQPP+fiUi
tvAGxJbyUWmSdGfO8UPLaHyUbxzaFCxfPO3mAi5EhCj8UZy/f3Ray4bEP53XOa0U
KiI6d+vX7C6PM6455Ogz4+kpIXpZB2NFMIz3O5DcfU8GQksPddyrvH9hxdBwguSh
PIYxjHzT7KFU8YU1vtEw1LCpMvQZm5NMIySBgJmQUIOZTZ3wb+HTzHn0SquaMMtN
Oek+7ICxLwxieyQiNnkrIk6RzSFV5reZxt8B8zhQCkVh846CGX2+LsQWGq6dDOn4
DM9aXiGQaIFzda88cwuHr8YOgmtEMUiraYWCGM3nRnd8iS1EL27trxQRox5h+U9G
E2l2NarztEtlGsFIFYabx7kLAj+jL0K8+EW4p9VXvhsD/GmJm9l9cFS93yE1x92i
Ojl7q2w99YzTq7tHCkR9ikvm6uMORSnCFCvI3P41RIQARgPUKXU=
=UM0u
-----END PGP SIGNATURE-----

--------------JejQmbEWSTAfTt3x9nvEbHhB--
