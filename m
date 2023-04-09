Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 902E66DC089
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 17:20:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbjDIPUz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 11:20:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbjDIPUy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 11:20:54 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5A52D4A
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 08:20:52 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id d8-20020a05600c3ac800b003ee6e324b19so1550320wms.1
        for <linux-man@vger.kernel.org>; Sun, 09 Apr 2023 08:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681053651; x=1683645651;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n16nu+RsIBOQ3Q048ZvYsG9ykAgsW+1z5udM4afR70U=;
        b=e6ecwHLlZYBBDn02TlOkzq1YAQwLXoliY92UnN1njXHGdTB0sNGcSJpqK6eVYNvBKM
         o+MmYu/Aywblgq3XMkN5pjNpadrYv1IjTv4tpbIbDTCAE6oPVRLafVXacoM5LL2DRGY0
         mLTuL/A+kRwwANqwsI7IryUJZ6kNpkvk1VJgkLl3/kAfCiE/BPi2ST+nx27dLfNzJRhv
         x9Xm7bnVgkVijfMAZTAnO2LAmNnwe2xqN0hyHTTXA7KdLAa4+GxYgcksSmiGGRKHi7c4
         EWV5z6LcOIP8fCbsbvxSChg4jVdCu25OXmmf2wmiaE8LxfITlTUxXwUHlxyG0JBpQWts
         XQRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681053651; x=1683645651;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n16nu+RsIBOQ3Q048ZvYsG9ykAgsW+1z5udM4afR70U=;
        b=mfTaKnA84/vT+DJEnKtCSOnl1h9qcuSzuqhOl65aFkzZx5XGDmdQMiTX0YQjtiwm5r
         ACNop95gvfQwTNUR1K+WAUZSbAjeu1UKY/4LBhacNZKSn/Uh+hQVBacJCGSiG86lMZat
         DYtZl3osQf3oCpeuXIIZwQyd7PFwtuKXGdMP1qGGnHyHbTPR4JFUsKrGrhjwJAZ6cY+6
         81mhPwLGIBeP/JJa6qNtLgiV42y7j/yGUXZUW1CKPq0bc44sP7qeXtf4LPkdvodg1vlg
         mSGtfAUJCpBrqY7sSeuJi3/ropKERMaQ6ojJDtrpSBMr0D5fixCbG3/4369LrYEoR90F
         TA7Q==
X-Gm-Message-State: AAQBX9ftUyLznMFVDCN8zNo8BcPVxdqgINBdDv5+bXHCw5ck+b7LUy2h
        YWtKtGIoDWbI/FVk3FeKOJaamtP+n7I=
X-Google-Smtp-Source: AKy350YlgyjPqPbMcKyMrGVp3fQSGOSF2D1zZYEOZYVyvYdYPzmXMvNYC9vsMZ25zi2xikD4L8rs4g==
X-Received: by 2002:a05:600c:249:b0:3ed:2a8f:e6dd with SMTP id 9-20020a05600c024900b003ed2a8fe6ddmr5531624wmj.6.1681053651165;
        Sun, 09 Apr 2023 08:20:51 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id k19-20020a5d5253000000b002effef459eesm2410254wrc.72.2023.04.09.08.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Apr 2023 08:20:50 -0700 (PDT)
Message-ID: <6bc6cc90-88e3-2ad1-c761-395ae512b560@gmail.com>
Date:   Sun, 9 Apr 2023 17:20:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Poor performance of man -K for uncompressed pages (was: man -K finds
 repeated entries for each symlink page)
Content-Language: en-US
To:     Colin Watson <cjwatson@debian.org>
Cc:     man-db-devel@nongnu.org, linux-man <linux-man@vger.kernel.org>
References: <a93419ac-b06a-41d3-7c82-339f1773ee76@gmail.com>
 <ZDLR5SrIPXstHgBM@riva.ucam.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <ZDLR5SrIPXstHgBM@riva.ucam.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Gbk0l5eTzUYAMx5y5taOwiKl"
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
--------------Gbk0l5eTzUYAMx5y5taOwiKl
Content-Type: multipart/mixed; boundary="------------N3LyZygtnbR6vyYgSjVqFjJj";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Colin Watson <cjwatson@debian.org>
Cc: man-db-devel@nongnu.org, linux-man <linux-man@vger.kernel.org>
Message-ID: <6bc6cc90-88e3-2ad1-c761-395ae512b560@gmail.com>
Subject: Poor performance of man -K for uncompressed pages (was: man -K finds
 repeated entries for each symlink page)
References: <a93419ac-b06a-41d3-7c82-339f1773ee76@gmail.com>
 <ZDLR5SrIPXstHgBM@riva.ucam.org>
In-Reply-To: <ZDLR5SrIPXstHgBM@riva.ucam.org>

--------------N3LyZygtnbR6vyYgSjVqFjJj
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Colin,

On 4/9/23 16:55, Colin Watson wrote:
> On Sun, Apr 09, 2023 at 03:58:28PM +0200, Alejandro Colomar wrote:
>> $ man -Kaw RLIMIT_NOFILE | sort | uniq -c
>>       3 /opt/local/man/share/man/man2/dup.2
>>       2 /opt/local/man/share/man/man2/fcntl.2
>>       5 /opt/local/man/share/man/man2/getrlimit.2
>>       3 /opt/local/man/share/man/man2/open.2
>>       1 /opt/local/man/share/man/man2/pidfd_getfd.2
>>       1 /opt/local/man/share/man/man2/pidfd_open.2
>>       2 /opt/local/man/share/man/man2/poll.2
>>       1 /opt/local/man/share/man/man2/seccomp_unotify.2
>>       4 /opt/local/man/share/man/man2/select.2
>>
>> Those numbers coincide with 1+ the number of symlinks for each of the
>> pages.  For example, see select.2:
>=20
> Thanks for the report.  Fixed by this commit:
>=20
>   https://gitlab.com/man-db/man-db/-/commit/7ef30573a7023eb78bf70a34eda=
a4e3906531993

Heh, that was fast :)

As a side effect of not reading too many files, performance improved
considerably for bzip2 (~3x), and for gzip (~2x).

I built man from source (tweaking with -O3, so I cheated a little bit),
and here are the results:


$ export MANPATH=3D/tmp/man/gz_/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
17
0.19
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do gzip =
-d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.14


$ export MANPATH=3D/tmp/man/bz2/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
17
3.05
$ /bin/time -f %e dash -c "find $MANPATH -type f | while read f; do bzip2=
 -d - <\$f | grep -l RLIMIT_NOFILE >/dev/null && echo \$f; done | wc -l"
17
1.20


$ export MANPATH=3D/tmp/man/man/share/man
$ /bin/time -f %e dash -c "man -Kaw RLIMIT_NOFILE | wc -l"
17
0.52
$ /bin/time -f %e dash -c "find $MANPATH -type f | xargs grep -l RLIMIT_N=
OFILE | wc -l"
17
0.01


Please consider this a new bug report, about performance.  See the last
block of commands.  man(1) takes half a second, while my loop with
find(1) and grep(1) is almost non-measurable.  I could understand that
man(1) has some overhead, but 52x feels like there's some serious
performance problem; especially when man(1) is faster reading
uncompressed pages (see at the top).


Cheers,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------N3LyZygtnbR6vyYgSjVqFjJj--

--------------Gbk0l5eTzUYAMx5y5taOwiKl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQy18sACgkQnowa+77/
2zLzrhAAqdPTEaaTqM7gfTFIEReC+N36PMLp0pMWrJB/f3hsCcBfEd6WiGwRxuDI
LY/dRezBe2Gnsb3NEtxE8d5t/8mEg+FjXhsO5isWs2+HjSCdyaDhCHS1jnh1jp1N
pdIh8vm9nOeCUgS208IL0LG2q1a8z/I0e+VsATQdl6JeqATzmQsMZsrZBR14mQpu
OT14N4Q0S1Kjz3pC3YS8eY17yIFwtFHuOjoD8P0Pdl2/8g4sgXlBUza1noVmSgGa
4By2sHTkxqw156AbTpCD8fUatuXrKATp1n002LHsuzmgAjAIG0OXyQdxKkh2+b60
Z69Xsfld+mW8m5w3UjPjQW90beQZE8NlYKCQ06MRatazbtFevfN3jj7sDGRGZic1
BkKsjZ4PZYvlzMBa2SBss5HHYX6fHS/9hxyn2fDmEbr7Xm3pQR5WvEf6e96K8H1A
jkUuTLTYrDGPJfwbEwquZdy3Uz26o4Z+VvO6ge6c8mot6fRT5//DluqmWlR3jSq1
axEE6xu1vCHMEnLECbfsz346OCeDZvEZCA06XmKhOLRbOsrC2ZWeYaDH2tmJLA2t
iAyVwxyly4Z2voicaQMlyz11RdATS4GqYhUPmdNGZEwNbnoVnAj59s7xAX/cSiVu
xetHukepi1IObNpHsVeXcpTonB+k2T1aIiOc8xL8zsNzeiAHN2g=
=4evI
-----END PGP SIGNATURE-----

--------------Gbk0l5eTzUYAMx5y5taOwiKl--
