Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9CEB65CDBD
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:41:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231201AbjADHlG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:41:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbjADHlF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:41:05 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B1B7F7F
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:41:04 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id h185so6406553oif.5
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ip6bpc55wdPpIjkQ5X4kzwx8xB4JrSNtqG94rFaJ1qQ=;
        b=DL0VxAT645TAn+rZT9qznui2qZ5grhclYBVlSSE6GdhATeBZ8lZ+SP5LGl8TIfMUcO
         /74VqPHq4SvXJdzsFucgIBbgx+j+oTzuA2N4KlozEce9mHUC5Aw/yBhICFWCoL93/l/I
         +1uUYL5Up99VTpV0cFyR50YU/lejQiHkFjVa3B4HMMhOw7mJ1Y7bPWw5mOFGVHJxdnYP
         /VebhpJp3rVEJBEuZIf3OeUtD6rGggCOoHtpiaG/rRPebeyxvAdB0nicwaknWqJTNGx6
         f5RoNJTJM6vqCzGxledHhXdoKtjMH3ORiWyrprE/rXJvMMwYNqXCPkN3zZfp1JmjMUs2
         8afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ip6bpc55wdPpIjkQ5X4kzwx8xB4JrSNtqG94rFaJ1qQ=;
        b=fZWr8NQJbLR+V5NaBXXAqNME8VkkKLr805J0H7U1pYOawFs8pEKBkuHQPLQ2H/Iykl
         ms5ap6aPSL0l0s3+qkXABfs0u2NCkEChyk8ApvGEUczpfEP7223/2KUxR/zLjvBJ/eQt
         jHY1kC2Zff+cHSyILLAHAv3AzURPU8JuoBN0wxFxFGAWLUsqUJrRMbG/0qhbkcCVXAtj
         SupOpd1NC9InLgsBWlKfTi5lhjqY5DKr5WfIfjz/tmo1eTy0C+PZqiwrp+/AJDtONpGF
         odnkBEzdiEDr+5jpf1jV4fzV/D8gOdG8lulgMwey9GmvR7z18iysObx33772twkD2Pok
         okng==
X-Gm-Message-State: AFqh2kqgLYzmYOd9lIsLzSqbn6H8rvRpllRza0iruncBkUL3MSMxt/6T
        /a/osRgScbwWPaPLgJY591KnB1A0DX8=
X-Google-Smtp-Source: AMrXdXuFT08wsrQWxYXw96a4dQF4OcDHZC2VfKE9eULF5BvMFvUljcs+UF3uPvhbcfBGbvw80XghrA==
X-Received: by 2002:a05:6808:190e:b0:35c:b79:8cf8 with SMTP id bf14-20020a056808190e00b0035c0b798cf8mr28113944oib.6.1672818063660;
        Tue, 03 Jan 2023 23:41:03 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r20-20020a056830121400b0066c49ce8b77sm15606177otp.77.2023.01.03.23.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:41:03 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:41:00 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 6/9] libc.7: Revise content
Message-ID: <20230104074100.cxyfpdas6gql6swl@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="rpj7fpwnbdvowk2i"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--rpj7fpwnbdvowk2i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Define the term "standard C library".
* Say who's responsible for standardizing it.
* Practically all C _libraries_ use libc, too.
* Move material describing structure glibc from intro(3) to here and
  recast in more detail.
* Update example filespec for libc.so.6.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man7/libc.7 | 34 ++++++++++++++++++++++++++--------
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index c6180075c..09d21e7f5 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -8,13 +8,18 @@
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
 The term \(lqlibc\(rq is commonly used as a shorthand for
-the \(lqstandard C library\(rq
-a library of standard functions that can be used by all C programs
-(and sometimes by programs in other languages).
-Because of some history
-(see below),
-use of the term \(lqlibc\(rq
-to refer to the standard C library is somewhat ambiguous on Linux.
+the
+.IR "standard C library" ,
+a collection of functions,
+data types,
+constants,
+and global variables \" like errno
+defined by ISO/IEC JTC1/\:SC22/\:WG14 and POSIX.1
+(the Austin Group)
+and used by practically all programs and libraries written in C.
+.I libc
+refers to any library that implements a significant portion of the
+published standard interface.
 .SS glibc
 The standard libc most popularly used with the Linux kernel is
 .UR http://www.gnu.org\:/software\:/libc/
@@ -33,13 +38,26 @@ primarily in section 3 of the manual.
 glibc also offers a manual of its own in Texinfo format,
 browsable at the command line with
 .RI \(lq "info libc" \(rq.
+.PP
+glibc is organized into three
+.I dynamic shared objects
+(DSOs):
+.I libc
+itself,
+.I libm
+for mathematical functions,
+and
+.I librt
+for real-time extensions
+(historically POSIX.1b).
 Version 1.0 of glibc was released in September 1992.
 (There were earlier 0.x releases.)
 The next major release of glibc was 2.0
 at the beginning of 1997.
 .PP
 The file
-.I /lib/libc.so.6
+.IR /lib/libc.so.6 ,
+.IR /lib/x86_64\-linux\-gnu/libc.so.6 ,
 or similar
 is normally a symbolic link to the glibc library.
 Execute it to display information about the version installed on your
--=20
2.30.2


--rpj7fpwnbdvowk2i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LYwACgkQ0Z6cfXEm
bc7mvA/+I1rmnIwALDCcV0VNtSS7TkfdbaFMGWHxicI6WgKeYU5Th3E4r8YjSf1o
QxJsoWxhbsy2ZYnpxolHmnsdXRjbqEhMTpdzKiGHaIEjperNJY+fsv8EMp7itorH
/GUxdi4mQFaJ9/UFtZcy/yTUf6gPrPJLJRBkUwR1AsMYD5xAjDSYMciKjRpWbdYe
nE2DEQB2H0H8RFzBF1LzCmdlixWzTfEJm76AhuvGSfPGsRFZcmGNEokpUlh2Irgb
gnpIOaFEe0fHMseBfJRVvDQ6pBuD8wtWVsOBNNjtxUhZOl000KnS8LhXf2UMEZ+0
cpgvCX5sFcdWa2ILbE3e01aEOgsFDmyexWCSI0bczY2YRomAkkaiEfz/YByujos/
gZ3xSmrbgkdn9KOnS3xNgo6w7RQ1fA+a6BVtDaVhMBKxaBYB87EdcJ+ujIYXgDYm
3HIW9XuiWb9R40zj6QnSKYA5mvxr0Yk9tBFQc+/CE8XUnFvrVYeoo7LzCFBLYzfd
aJy3IgsAFz/JPf7ep+WIAAN3SPnnxuXnOh9QNpze5Fb8T2RmfZdS9nu88oQs3zfK
S7J/Vahxkma131KQqWUmGEaMg+TrRiUEYMkRkaLqU4ZpTqVP6iTKJX57HK4nyrNA
RXksd2FMrcOnkcluMX7XqVfZ9EiBsh9iRRd6arvnvFD7v3aN73M=
=7eop
-----END PGP SIGNATURE-----

--rpj7fpwnbdvowk2i--
