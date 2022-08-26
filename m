Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 304785A30D1
	for <lists+linux-man@lfdr.de>; Fri, 26 Aug 2022 23:09:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231483AbiHZVJL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Aug 2022 17:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbiHZVJK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Aug 2022 17:09:10 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCDBBDEB62
        for <linux-man@vger.kernel.org>; Fri, 26 Aug 2022 14:09:06 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id b5so3153518wrr.5
        for <linux-man@vger.kernel.org>; Fri, 26 Aug 2022 14:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=vNczYwAMsWtJf2pwi1KKpJFapMip4HCbO0Evec7piGQ=;
        b=qcOg/YBHkVoojM+lBJpHMedq1mncPvyjIYkd0Jrr805AElg12wa6GU7Bnhtnz4XE8k
         EqOFk9PmlQeLGozODaQi38LFIyPaTDfevNTu3rS6LqpjLVjmEbh0yzx7ZMvEf3axqj7p
         VRnYOklOQU1+1vWCizhLXrYmnopdeSeS4gpOALqSWtNvtcf134RHRgaJrgTHqZ1ziac+
         WrQUr1K3UzrT4uCGHrIAf4PA2kU4IwSQp9qn02aMzib79rRzSiA0qP0Bho7oKP8NRY4K
         Dzmt7WMG5h1b/4fxrpZ6WTLriT2Va2PbHJofYXy0W5awIy7qyhCE7Jbilrpfbp7cKnWa
         UGTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=vNczYwAMsWtJf2pwi1KKpJFapMip4HCbO0Evec7piGQ=;
        b=FT54gv2WOD+domr2xMfMGf/yiIjjBO3V8Mzh1Es2w37Mb1nKKOxbYY2QcFg0FrNwju
         SajbYVEZyb6b0RSqFn+kw1zklpQyKOBzgNizEbyWNOtEVEa4jjXwO6mckUEfBGIFUIyl
         qyWOrabDcb2qMhQKKTueTqTF7QgPNS4cD+GZYTipczoI0UKZdYCAeW93YJbGEHLhO8g1
         oWM8R9IyJ7bpw9ZQvy08+XeKnGWaLGtQyhpNp4TDqO9UISEGHp/EjkAWU0zmPYPbhSXC
         fe4aqAEVTjwxqIAx/atPYlJHQkPZQa3VT1PM+3ftkSxvVTtOesnKGFg4DrazSRgvt1zu
         SNEg==
X-Gm-Message-State: ACgBeo2glCFxOG//bzIBRTpu2YEAfw9DI6WXDwlBtLPzFxY9gwkhaJlb
        BCXYeSa0gcQt5pQY/4xm7XwDOs6xMGA=
X-Google-Smtp-Source: AA6agR7Pb3vvJ/SJnvOjVLLOPCxMhwHwb0uenFJOTmWCBj9xT9iakL6AR5vCB8Fb9xBTvXjIdncxew==
X-Received: by 2002:a5d:6c6a:0:b0:225:6138:5b9d with SMTP id r10-20020a5d6c6a000000b0022561385b9dmr732472wrz.451.1661548145113;
        Fri, 26 Aug 2022 14:09:05 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id bq28-20020a5d5a1c000000b002253604bbefsm669265wrb.75.2022.08.26.14.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 14:09:04 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Ingo Schwarze <schwarze@openbsd.org>,
        JeanHeyd Meneide <wg14@soasis.org>
Subject: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function parameters
Date:   Fri, 26 Aug 2022 23:07:11 +0200
Message-Id: <20220826210710.35237-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=45596; i=alx.manpages@gmail.com;
 h=from:subject; bh=ic4hX118y27wBvMGwzsDGKbTDIwh7d3VlGDmv2+dn1o=;
 b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBjCTXxZm7KTY96xOqTbDtud9DDAjyWiixF5gLtjQ6z
 SF9oKyGJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYwk18QAKCRCejBr7vv/bMjQDD/
 9TdynCw8vhDWqmWfB3TjDE7Yg/fkvUP0jhAgguFsGw7xTB4SgRQrLEZyYV6bw4ukpvAB1kJf3T3Yal
 NYOSSmW2iv0o5EnWs1RDJRteV7fCaHxxttKKlD5ruBPNDpOo0OoJisJ5okvavjeASvN1DHs/6fn3DO
 9y7UeFxYwfZ5i01OvStlkm0DWA2O/igDNQ/GEHmS/MS2tWJ4xYeX2zFjZ2Z2OUdL1vhIVJJPxFXapt
 QqrhA9yQ/UY0qzPgUDa+7VqZtcVkoFxax1KpUpMpQqcn9NQBZnaZTs0X6og3fwjxZKMTC1U5WOTkKu
 Sju+ZfTh3IHLXhZ/R9OXNbOAREQh095tUu5M3rtJrje44dzmmq5PIa2s5tRWl1OpjTEHhHESH1ZtBK
 40iL3t5YMps+vGbNssmJdgpTP5bStu6JAdQ6Hck5nlUYwM3czHU7buuWDRSsp+6lUA/ZityvA1TqD5
 Psm29MJRw2WRXaiF4qlcOAnWRYIbjYwXB2fdK7MVjWGbiknaJ2G6G7S7CjWFnqhi34lw2BoCZzqE+k
 9uSBcJ/lmvYO9Mb/2abu53SFoR2oUQz/hpYOR6aqIzPHkFio8/Cua0YWCwRx7CtSlye98h6cJQ/mhf
 cfAjYBkR2At1VuSM+3877o0+SFW3ItGsTTSgFOn5aaTUrrpuiw/Iv3v1MgoQ==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The WG14 charter for C23 added one principle to the ones in
previous standards:

[
15.  Application Programming Interfaces (APIs) should be
self-documenting when possible.  In particular, the order of
parameters in function declarations should be arranged such that
the size of an array appears before the array.  The purpose is to
allow Variable-Length Array (VLA) notation to be used. This not
only makes the code's purpose clearer to human readers, but also
makes static analysis easier.  Any new APIs added to the Standard
should take this into consideration.
]

ISO C doesn't allow using VLA syntax when the parameter used for
the size of the array is declared _after_ the parameter that is a
VLa.  That's a minor issue that could be easily changed in the
language without backwards-compatibility issues, and in fact it
seems to have been proposed, and not yet discarded, even if it's
not going to change in C23.

Since the manual pages SYNOPSIS are not bounded by strict C legal
syntax, but we already use some "tricks" to try to convey the most
information to the reader even if it might not be the most legal
syntax, we can also make a small compromise in this case, using
illegal syntax (at least not yet legalized) to add important
information to the function prototypes.

If we're lucky, compiler authors, and maybe even WG14 members, may
be satisfied by the syntax used in these manual pages, and may
decide to implement this feature to the language.

It seems to me a sound syntax that isn't ambiguous, even if it
deviates from the common pattern in C that declarations _always_
come before use.  It's a reasonable tradeoff.

This change will make the contract between the programmer and the
implementation clearer just by reading a prototype.  For example:

    size_t strlcpy(char *restrict dst, const char *restrict src,
                   size_t size);

      vs

    size_t strlcpy(char dst[restrict size], const char *restrict src,
                   size_t size);

The second prototype above makes it clear that the 'dst' buffer
will be safe from overflow, but the 'src' one clearly needs to be
NUL-terminated, or it will cause UB, since nothing tells the
function how long it is.

Link: <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2611.htm>
Cc: Ingo Schwarze <schwarze@openbsd.org>
Cc: JeanHeyd Meneide <wg14@soasis.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/confstr.3            |  2 +-
 man3/des_crypt.3          |  6 ++++--
 man3/fgetc.3              |  2 +-
 man3/getcwd.3             |  2 +-
 man3/getdirentries.3      |  3 ++-
 man3/getgrent_r.3         |  4 ++--
 man3/getgrnam.3           |  4 ++--
 man3/gethostbyname.3      |  8 ++++----
 man3/getlogin.3           |  2 +-
 man3/getmntent.3          |  2 +-
 man3/getnameinfo.3        |  6 +++---
 man3/getnetent_r.3        |  6 +++---
 man3/getprotoent_r.3      |  6 +++---
 man3/getpwent_r.3         |  4 ++--
 man3/getpwnam.3           |  8 ++++----
 man3/getrpcent_r.3        |  6 +++---
 man3/getservent_r.3       |  6 +++---
 man3/getspnam.3           |  8 ++++----
 man3/inet_net_pton.3      |  2 +-
 man3/inet_ntop.3          |  2 +-
 man3/mblen.3              |  2 +-
 man3/mbrlen.3             |  2 +-
 man3/mbrtowc.3            |  5 ++---
 man3/mbstowcs.3           |  3 ++-
 man3/mbtowc.3             |  4 ++--
 man3/mq_receive.3         |  5 +++--
 man3/mq_send.3            |  4 ++--
 man3/printf.3             |  4 ++--
 man3/pthread_setname_np.3 |  3 ++-
 man3/ptsname.3            |  4 ++--
 man3/random.3             |  2 +-
 man3/random_r.3           |  3 ++-
 man3/regex.3              |  7 ++++---
 man3/resolver.3           | 34 ++++++++++++++++++----------------
 man3/rpc.3                |  2 +-
 man3/setaliasent.3        |  6 ++++--
 man3/setbuf.3             |  4 ++--
 man3/setnetgrent.3        |  2 +-
 man3/stpncpy.3            |  5 +++--
 man3/strcasecmp.3         |  2 +-
 man3/strcat.3             |  5 +++--
 man3/strcmp.3             |  2 +-
 man3/strcpy.3             |  5 +++--
 man3/strdup.3             |  4 ++--
 man3/strerror.3           |  4 ++--
 man3/strfmon.3            |  4 ++--
 man3/strfromd.3           |  6 +++---
 man3/strftime.3           |  4 ++--
 man3/string.3             | 25 +++++++++++++++++--------
 man3/strnlen.3            |  2 +-
 man3/strxfrm.3            |  3 ++-
 man3/ttyname.3            |  2 +-
 man3/unlocked_stdio.3     |  4 ++--
 man3/wcsnrtombs.3         |  2 +-
 man3/wcsrtombs.3          |  2 +-
 man3/wcstombs.3           |  2 +-
 56 files changed, 146 insertions(+), 122 deletions(-)

diff --git a/man3/confstr.3 b/man3/confstr.3
index 5bc334c02..434ab9678 100644
--- a/man3/confstr.3
+++ b/man3/confstr.3
@@ -20,7 +20,7 @@ Standard C library
 .nf
 .B #include <unistd.h>
 .PP
-.BI "size_t confstr(int " "name" ", char *" buf ", size_t " size );
+.BI "size_t confstr(int " "name" ", char " buf [ size "], size_t " size );
 .fi
 .PP
 .RS -4
diff --git a/man3/des_crypt.3 b/man3/des_crypt.3
index 90ce308b9..f419ab026 100644
--- a/man3/des_crypt.3
+++ b/man3/des_crypt.3
@@ -22,9 +22,11 @@ Standard C library
 .\" .B #include <des_crypt.h>
 .B #include <rpc/des_crypt.h>
 .PP
-.BI "int ecb_crypt(char *" key ", char *" data ", unsigned int " datalen ,
+.BI "int ecb_crypt(char *" key ", char " data [ datalen "], \
+unsigned int " datalen ,
 .BI "              unsigned int " mode );
-.BI "int cbc_crypt(char *" key ", char *" data ", unsigned int " datalen ,
+.BI "int cbc_crypt(char *" key ", char " data [ datalen "], \
+unsigned int " datalen ,
 .BI "              unsigned int " mode ", char *" ivec );
 .PP
 .BI "void des_setparity(char *" key );
diff --git a/man3/fgetc.3 b/man3/fgetc.3
index 2cd14a5fb..690cbce80 100644
--- a/man3/fgetc.3
+++ b/man3/fgetc.3
@@ -18,7 +18,7 @@ Standard C library
 .BI "int getc(FILE *" stream );
 .B "int getchar(void);"
 .PP
-.BI "char *fgets(char *restrict " s ", int " size ", FILE *restrict " stream );
+.BI "char *fgets(char " s "[restrict " size "], int " size ", FILE *restrict " stream );
 .PP
 .BI "int ungetc(int " c ", FILE *" stream );
 .fi
diff --git a/man3/getcwd.3 b/man3/getcwd.3
index 382bade77..82f573115 100644
--- a/man3/getcwd.3
+++ b/man3/getcwd.3
@@ -19,7 +19,7 @@ Standard C library
 .nf
 .B #include <unistd.h>
 .PP
-.BI "char *getcwd(char *" buf ", size_t " size );
+.BI "char *getcwd(char " buf [ size "], size_t " size );
 .BI "char *getwd(char *" buf );
 .B "char *get_current_dir_name(void);"
 .fi
diff --git a/man3/getdirentries.3 b/man3/getdirentries.3
index ce8ee69a8..eadc3c86e 100644
--- a/man3/getdirentries.3
+++ b/man3/getdirentries.3
@@ -14,7 +14,8 @@ Standard C library
 .nf
 .B #include <dirent.h>
 .PP
-.BI "ssize_t getdirentries(int " fd ", char *restrict " buf ", size_t " nbytes ,
+.BI "ssize_t getdirentries(int " fd ", char " buf "[restrict " nbytes "], \
+size_t " nbytes ,
 .BI "                      off_t *restrict " basep );
 .fi
 .PP
diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
index 8a47bf59e..e1eeb31c7 100644
--- a/man3/getgrent_r.3
+++ b/man3/getgrent_r.3
@@ -13,10 +13,10 @@ Standard C library
 .B #include <grp.h>
 .PP
 .BI "int getgrent_r(struct group *restrict " gbuf ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct group **restrict " gbufp );
 .BI "int fgetgrent_r(FILE *restrict " stream ", struct group *restrict " gbuf ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct group **restrict " gbufp );
 .fi
 .PP
diff --git a/man3/getgrnam.3 b/man3/getgrnam.3
index 7ef37819f..ab46a7570 100644
--- a/man3/getgrnam.3
+++ b/man3/getgrnam.3
@@ -26,10 +26,10 @@ Standard C library
 .PP
 .BI "int getgrnam_r(const char *restrict " name \
 ", struct group *restrict " grp ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct group **restrict " result );
 .BI "int getgrgid_r(gid_t " gid ", struct group *restrict " grp ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct group **restrict " result );
 .fi
 .PP
diff --git a/man3/gethostbyname.3 b/man3/gethostbyname.3
index 20ad562be..1c7182245 100644
--- a/man3/gethostbyname.3
+++ b/man3/gethostbyname.3
@@ -49,24 +49,24 @@ Standard C library
 .BI "struct hostent *gethostbyname2(const char *" name ", int " af );
 .PP
 .BI "int gethostent_r(struct hostent *restrict " ret ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .PP
 .BI "int gethostbyaddr_r(const void *restrict " addr ", socklen_t " len \
 ", int " type ,
 .BI "                 struct hostent *restrict " ret ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .BI "int gethostbyname_r(const char *restrict " name ,
 .BI "                 struct hostent *restrict " ret ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .BI "int gethostbyname2_r(const char *restrict " name ", int " af,
 .BI "                 struct hostent *restrict " ret ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .fi
diff --git a/man3/getlogin.3 b/man3/getlogin.3
index 50b8b008b..8604f2bcd 100644
--- a/man3/getlogin.3
+++ b/man3/getlogin.3
@@ -16,7 +16,7 @@ Standard C library
 .B #include <unistd.h>
 .PP
 .B "char *getlogin(void);"
-.BI "int getlogin_r(char *" buf ", size_t " bufsize );
+.BI "int getlogin_r(char " buf [ bufsize "], size_t " bufsize );
 .PP
 .B #include <stdio.h>
 .PP
diff --git a/man3/getmntent.3 b/man3/getmntent.3
index 3c704b1d8..41746d9eb 100644
--- a/man3/getmntent.3
+++ b/man3/getmntent.3
@@ -37,7 +37,7 @@ Standard C library
 .PP
 .BI "struct mntent *getmntent_r(FILE *restrict " streamp ,
 .BI "              struct mntent *restrict " mntbuf ,
-.BI "              char *restrict " buf ", int " buflen );
+.BI "              char " buf "[restrict " buflen "], int " buflen );
 .fi
 .PP
 .RS -4
diff --git a/man3/getnameinfo.3 b/man3/getnameinfo.3
index 5c42c09b6..b72c37117 100644
--- a/man3/getnameinfo.3
+++ b/man3/getnameinfo.3
@@ -20,9 +20,9 @@ Standard C library
 .PP
 .BI "int getnameinfo(const struct sockaddr *restrict " addr \
 ", socklen_t " addrlen ,
-.BI "                char *restrict " host ", socklen_t " hostlen ,
-.BI "                char *restrict " serv ", socklen_t " servlen \
-", int " flags );
+.BI "                char " host "[restrict " hostlen "], socklen_t " hostlen ,
+.BI "                char " serv "[restrict " servlen "], socklen_t " servlen ,
+.BI "                int " flags );
 .fi
 .PP
 .RS -4
diff --git a/man3/getnetent_r.3 b/man3/getnetent_r.3
index 36a2ff819..55322df27 100644
--- a/man3/getnetent_r.3
+++ b/man3/getnetent_r.3
@@ -15,17 +15,17 @@ Standard C library
 .B #include <netdb.h>
 .PP
 .BI "int getnetent_r(struct netent *restrict " result_buf ,
-.BI "                char *restrict " buf ", size_t " buflen ,
+.BI "                char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                struct netent **restrict " result ,
 .BI "                int *restrict " h_errnop );
 .BI "int getnetbyname_r(const char *restrict " name ,
 .BI "                struct netent *restrict " result_buf ,
-.BI "                char *restrict " buf ", size_t " buflen ,
+.BI "                char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                struct netent **restrict " result ,
 .BI "                int *restrict " h_errnop );
 .BI "int getnetbyaddr_r(uint32_t " net ", int " type ,
 .BI "                struct netent *restrict " result_buf ,
-.BI "                char *restrict " buf ", size_t " buflen ,
+.BI "                char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                struct netent **restrict " result ,
 .BI "                int *restrict " h_errnop );
 .PP
diff --git a/man3/getprotoent_r.3 b/man3/getprotoent_r.3
index 2e3815a30..34ae75634 100644
--- a/man3/getprotoent_r.3
+++ b/man3/getprotoent_r.3
@@ -15,15 +15,15 @@ Standard C library
 .B #include <netdb.h>
 .PP
 .BI "int getprotoent_r(struct protoent *restrict " result_buf ,
-.BI "                  char *restrict " buf ", size_t " buflen ,
+.BI "                  char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                  struct protoent **restrict " result );
 .BI "int getprotobyname_r(const char *restrict " name ,
 .BI "                  struct protoent *restrict " result_buf ,
-.BI "                  char *restrict " buf ", size_t " buflen ,
+.BI "                  char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                  struct protoent **restrict " result );
 .BI "int getprotobynumber_r(int " proto ,
 .BI "                  struct protoent *restrict " result_buf ,
-.BI "                  char *restrict " buf ", size_t " buflen ,
+.BI "                  char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                  struct protoent **restrict " result );
 .PP
 .fi
diff --git a/man3/getpwent_r.3 b/man3/getpwent_r.3
index bde13f399..03826578c 100644
--- a/man3/getpwent_r.3
+++ b/man3/getpwent_r.3
@@ -13,11 +13,11 @@ Standard C library
 .B #include <pwd.h>
 .PP
 .BI "int getpwent_r(struct passwd *restrict " pwbuf ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct passwd **restrict " pwbufp );
 .BI "int fgetpwent_r(FILE *restrict " stream \
 ", struct passwd *restrict " pwbuf ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct passwd **restrict " pwbufp );
 .fi
 .PP
diff --git a/man3/getpwnam.3 b/man3/getpwnam.3
index 219d37733..d711a4c4a 100644
--- a/man3/getpwnam.3
+++ b/man3/getpwnam.3
@@ -28,12 +28,12 @@ Standard C library
 .BI "struct passwd *getpwnam(const char *" name );
 .BI "struct passwd *getpwuid(uid_t " uid );
 .PP
-.BI "int getpwnam_r(const char *restrict " name \
-", struct passwd *restrict " pwd ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "int getpwnam_r(const char *restrict " name ", \
+struct passwd *restrict " pwd ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct passwd **restrict " result );
 .BI "int getpwuid_r(uid_t " uid ", struct passwd *restrict " pwd ,
-.BI "               char *restrict " buf ", size_t " buflen ,
+.BI "               char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "               struct passwd **restrict " result );
 .fi
 .PP
diff --git a/man3/getrpcent_r.3 b/man3/getrpcent_r.3
index 44d20b7ed..74182fd83 100644
--- a/man3/getrpcent_r.3
+++ b/man3/getrpcent_r.3
@@ -14,13 +14,13 @@ Standard C library
 .nf
 .B #include <netdb.h>
 .PP
-.BI "int getrpcent_r(struct rpcent *" result_buf ", char *" buf ,
+.BI "int getrpcent_r(struct rpcent *" result_buf ", char " buf [ buflen "],
 .BI "                size_t " buflen ", struct rpcent **" result );
 .BI "int getrpcbyname_r(const char *" name ,
-.BI "                struct rpcent *" result_buf ", char *" buf ,
+.BI "                struct rpcent *" result_buf ", char " buf [ buflen "],
 .BI "                size_t " buflen ", struct rpcent **" result );
 .BI "int getrpcbynumber_r(int " number ,
-.BI "                struct rpcent *" result_buf ", char *" buf ,
+.BI "                struct rpcent *" result_buf ", char " buf [ buflen "],
 .BI "                size_t " buflen ", struct rpcent **" result );
 .PP
 .fi
diff --git a/man3/getservent_r.3 b/man3/getservent_r.3
index 4e7b1f03d..6d9c578b4 100644
--- a/man3/getservent_r.3
+++ b/man3/getservent_r.3
@@ -15,17 +15,17 @@ Standard C library
 .B #include <netdb.h>
 .PP
 .BI "int getservent_r(struct servent *restrict " result_buf ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct servent **restrict " result );
 .BI "int getservbyname_r(const char *restrict " name ,
 .BI "                 const char *restrict " proto ,
 .BI "                 struct servent *restrict " result_buf ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct servent **restrict " result );
 .BI "int getservbyport_r(int " port ,
 .BI "                 const char *restrict " proto ,
 .BI "                 struct servent *restrict " result_buf ,
-.BI "                 char *restrict " buf ", size_t " buflen ,
+.BI "                 char " buf "[restrict " buflen "], size_t " buflen ,
 .BI "                 struct servent **restrict " result );
 .PP
 .fi
diff --git a/man3/getspnam.3 b/man3/getspnam.3
index 3389105ab..db5f8f5f8 100644
--- a/man3/getspnam.3
+++ b/man3/getspnam.3
@@ -34,14 +34,14 @@ Standard C library
 .B #include <shadow.h>
 .PP
 .BI "int getspent_r(struct spwd *" spbuf ,
-.BI "               char *" buf ", size_t " buflen ", struct spwd **" spbufp );
+.BI "               char " buf [ buflen "], size_t " buflen ", struct spwd **" spbufp );
 .BI "int getspnam_r(const char *" name ", struct spwd *" spbuf ,
-.BI "               char *" buf ", size_t " buflen ", struct spwd **" spbufp );
+.BI "               char " buf [ buflen "], size_t " buflen ", struct spwd **" spbufp );
 .PP
 .BI "int fgetspent_r(FILE *" stream ", struct spwd *" spbuf ,
-.BI "               char *" buf ", size_t " buflen ", struct spwd **" spbufp );
+.BI "               char " buf [ buflen "], size_t " buflen ", struct spwd **" spbufp );
 .BI "int sgetspent_r(const char *" s ", struct spwd *" spbuf ,
-.BI "               char *" buf ", size_t " buflen ", struct spwd **" spbufp );
+.BI "               char " buf [ buflen "], size_t " buflen ", struct spwd **" spbufp );
 .fi
 .PP
 .RS -4
diff --git a/man3/inet_net_pton.3 b/man3/inet_net_pton.3
index 8dce6b299..c7d477695 100644
--- a/man3/inet_net_pton.3
+++ b/man3/inet_net_pton.3
@@ -15,7 +15,7 @@ Resolver library
 .BI "int inet_net_pton(int " af ", const char *" pres ,
 .BI "                    void *" netp ", size_t " nsize );
 .BI "char *inet_net_ntop(int " af ", const void *" netp ", int " bits ,
-.BI "                    char *" pres ", size_t " psize );
+.BI "                    char " pres [ psize "], size_t " psize );
 .fi
 .PP
 .RS -4
diff --git a/man3/inet_ntop.3 b/man3/inet_ntop.3
index b06c268bd..6f73b33fa 100644
--- a/man3/inet_ntop.3
+++ b/man3/inet_ntop.3
@@ -14,7 +14,7 @@ Standard C library
 .B #include <arpa/inet.h>
 .PP
 .BI "const char *inet_ntop(int " af ", const void *restrict " src ,
-.BI "                      char *restrict " dst ", socklen_t " size );
+.BI "                      char " dst "[restrict " size "], socklen_t " size );
 .fi
 .SH DESCRIPTION
 This function converts the network address structure
diff --git a/man3/mblen.3 b/man3/mblen.3
index ae7b38f1b..de826f2b8 100644
--- a/man3/mblen.3
+++ b/man3/mblen.3
@@ -18,7 +18,7 @@ Standard C library
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int mblen(const char *" s ", size_t " n );
+.BI "int mblen(const char " s [ n "], size_t " n );
 .fi
 .SH DESCRIPTION
 If
diff --git a/man3/mbrlen.3 b/man3/mbrlen.3
index 35c2b8db5..4522d2cac 100644
--- a/man3/mbrlen.3
+++ b/man3/mbrlen.3
@@ -18,7 +18,7 @@ Standard C library
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t mbrlen(const char *restrict " s ", size_t " n ,
+.BI "size_t mbrlen(const char " s "[restrict " n "], size_t " n ,
 .BI "              mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
diff --git a/man3/mbrtowc.3 b/man3/mbrtowc.3
index b91c0fbc2..1de0f1ba7 100644
--- a/man3/mbrtowc.3
+++ b/man3/mbrtowc.3
@@ -19,9 +19,8 @@ Standard C library
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char *restrict " s \
-", size_t " n ,
-.BI "               mbstate_t *restrict " ps );
+.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char " s "[restrict " n ],
+.BI "               size_t " n ", mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
 The main case for this function is when
diff --git a/man3/mbstowcs.3 b/man3/mbstowcs.3
index 30a2a8679..67b8e569e 100644
--- a/man3/mbstowcs.3
+++ b/man3/mbstowcs.3
@@ -19,7 +19,8 @@ Standard C library
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "size_t mbstowcs(wchar_t *restrict " dest ", const char *restrict " src ,
+.BI "size_t mbstowcs(wchar_t " dest "[restrict " n "], \
+const char *restrict " src ,
 .BI "                size_t " n );
 .fi
 .SH DESCRIPTION
diff --git a/man3/mbtowc.3 b/man3/mbtowc.3
index b0a25ae12..18dca1957 100644
--- a/man3/mbtowc.3
+++ b/man3/mbtowc.3
@@ -18,8 +18,8 @@ Standard C library
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int mbtowc(wchar_t *restrict " pwc ", const char *restrict " s \
-", size_t " n );
+.BI "int mbtowc(wchar_t *restrict " pwc ", const char " s "[restrict " n "], \
+size_t " n );
 .fi
 .SH DESCRIPTION
 The main case for this function is when
diff --git a/man3/mq_receive.3 b/man3/mq_receive.3
index 94f686d97..f43df785f 100644
--- a/man3/mq_receive.3
+++ b/man3/mq_receive.3
@@ -12,13 +12,14 @@ Real-time library
 .nf
 .B #include <mqueue.h>
 .PP
-.BI "ssize_t mq_receive(mqd_t " mqdes ", char *" msg_ptr ,
+.BI "ssize_t mq_receive(mqd_t " mqdes ", char " msg_ptr [ msg_len ],
 .BI "                   size_t " msg_len ", unsigned int *" msg_prio );
 .PP
 .B #include <time.h>
 .B #include <mqueue.h>
 .PP
-.BI "ssize_t mq_timedreceive(mqd_t " mqdes ", char *restrict " msg_ptr ,
+.BI "ssize_t mq_timedreceive(mqd_t " mqdes ", \
+char *restrict " msg_ptr [ msg_len ],
 .BI "                   size_t " msg_len ", unsigned int *restrict " msg_prio ,
 .BI "                   const struct timespec *restrict " abs_timeout );
 .fi
diff --git a/man3/mq_send.3 b/man3/mq_send.3
index 26947595a..6f147d4fb 100644
--- a/man3/mq_send.3
+++ b/man3/mq_send.3
@@ -12,13 +12,13 @@ Real-time library
 .nf
 .B #include <mqueue.h>
 .PP
-.BI "int mq_send(mqd_t " mqdes ", const char *" msg_ptr ,
+.BI "int mq_send(mqd_t " mqdes ", const char " msg_ptr [ msg_len ],
 .BI "              size_t " msg_len ", unsigned int " msg_prio );
 .PP
 .B #include <time.h>
 .B #include <mqueue.h>
 .PP
-.BI "int mq_timedsend(mqd_t " mqdes ", const char *" msg_ptr ,
+.BI "int mq_timedsend(mqd_t " mqdes ", const char " msg_ptr [ msg_len ],
 .BI "              size_t " msg_len ", unsigned int " msg_prio ,
 .BI "              const struct timespec *" abs_timeout );
 .fi
diff --git a/man3/printf.3 b/man3/printf.3
index 878f95791..5099b6f72 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -30,7 +30,7 @@ Standard C library
 .BI "            const char *restrict " format ", ...);"
 .BI "int sprintf(char *restrict " str ,
 .BI "            const char *restrict " format ", ...);"
-.BI "int snprintf(char *restrict " str ", size_t " size ,
+.BI "int snprintf(char " str "[restrict " size "], size_t " size ,
 .BI "            const char *restrict " format ", ...);"
 .PP
 .B #include <stdarg.h>
@@ -42,7 +42,7 @@ Standard C library
 .BI "            const char *restrict " format ", va_list " ap );
 .BI "int vsprintf(char *restrict " str ,
 .BI "            const char *restrict " format ", va_list " ap );
-.BI "int vsnprintf(char *restrict " str ", size_t " size ,
+.BI "int vsnprintf(char " str "[restrict " size "], size_t " size ,
 .BI "            const char *restrict " format ", va_list " ap );
 .fi
 .PP
diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
index 115557787..2bab13e85 100644
--- a/man3/pthread_setname_np.3
+++ b/man3/pthread_setname_np.3
@@ -15,7 +15,8 @@ POSIX threads library
 .B #include <pthread.h>
 .PP
 .BI "int pthread_setname_np(pthread_t " thread ", const char *" name );
-.BI "int pthread_getname_np(pthread_t " thread ", char *" name ", size_t " size );
+.BI "int pthread_getname_np(pthread_t " thread ", char " name [ size "], \
+size_t " size );
 .fi
 .SH DESCRIPTION
 By default, all the threads created using
diff --git a/man3/ptsname.3 b/man3/ptsname.3
index e40005df6..135730752 100644
--- a/man3/ptsname.3
+++ b/man3/ptsname.3
@@ -14,8 +14,8 @@ Standard C library
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "char *ptsname(int " fd ");"
-.BI "int ptsname_r(int " fd ", char *" buf ", size_t " buflen ");"
+.BI "char *ptsname(int " fd );
+.BI "int ptsname_r(int " fd ", char " buf [ buflen "], size_t " buflen );
 .fi
 .PP
 .RS -4
diff --git a/man3/random.3 b/man3/random.3
index fd2512626..3a7af437a 100644
--- a/man3/random.3
+++ b/man3/random.3
@@ -23,7 +23,7 @@ Standard C library
 .B long random(void);
 .BI "void srandom(unsigned int " seed );
 .PP
-.BI "char *initstate(unsigned int " seed ", char *" state ", size_t " n );
+.BI "char *initstate(unsigned int " seed ", char " state [ n "], size_t " n );
 .BI "char *setstate(char *" state );
 .fi
 .PP
diff --git a/man3/random_r.3 b/man3/random_r.3
index b2bf97b06..8564e1723 100644
--- a/man3/random_r.3
+++ b/man3/random_r.3
@@ -18,7 +18,8 @@ Standard C library
 .BI "             int32_t *restrict " result );
 .BI "int srandom_r(unsigned int " seed ", struct random_data *" buf );
 .PP
-.BI "int initstate_r(unsigned int " seed ", char *restrict " statebuf ,
+.BI "int initstate_r(unsigned int " seed ", \
+char " statebuf "[restrict " statelen ],
 .BI "             size_t " statelen ", struct random_data *restrict " buf );
 .BI "int setstate_r(char *restrict " statebuf ,
 .BI "             struct random_data *restrict " buf );
diff --git a/man3/regex.3 b/man3/regex.3
index e423e442d..ae66b7980 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -21,11 +21,12 @@ Standard C library
 .BI "            int " cflags );
 .BI "int regexec(const regex_t *restrict " preg \
 ", const char *restrict " string ,
-.BI "            size_t " nmatch ", regmatch_t " pmatch "[restrict]\
-, int " eflags );
+.BI "            size_t " nmatch ", regmatch_t " pmatch "[restrict " nmatch ],
+.BI "            int " eflags );
 .PP
 .BI "size_t regerror(int " errcode ", const regex_t *restrict " preg ,
-.BI "            char *restrict " errbuf ", size_t " errbuf_size );
+.BI "            char " errbuf "[restrict " errbuf_size "], \
+size_t " errbuf_size );
 .BI "void regfree(regex_t *" preg );
 .fi
 .SH DESCRIPTION
diff --git a/man3/resolver.3 b/man3/resolver.3
index b565bb5e6..c701b4629 100644
--- a/man3/resolver.3
+++ b/man3/resolver.3
@@ -35,34 +35,35 @@ Resolver library
 .PP
 .BI "int res_nquery(res_state " statep ,
 .BI "           const char *" dname ", int " class ", int " type ,
-.BI "           unsigned char *" answer ", int " anslen );
+.BI "           unsigned char " answer [ anslen "], int " anslen );
 .PP
 .BI "int res_nsearch(res_state " statep ,
 .BI "           const char *" dname ", int " class ", int " type ,
-.BI "           unsigned char *" answer ", int " anslen );
+.BI "           unsigned char " answer [ anslen "], int " anslen );
 .PP
 .BI "int res_nquerydomain(res_state " statep ,
 .BI "           const char *" name ", const char *" domain ,
-.BI "           int " class ", int " type ", unsigned char *" answer ,
+.BI "           int " class ", int " type ", unsigned char " answer [ anslen ],
 .BI "           int " anslen );
 .PP
 .BI "int res_nmkquery(res_state " statep ,
 .BI "           int " op ", const char *" dname ", int " class ,
-.BI "           int " type ", const unsigned char *" data ", int " datalen ,
+.BI "           int " type ", const unsigned char " data [ datalen "], \
+int " datalen ,
 .BI "           const unsigned char *" newrr ,
-.BI "           unsigned char *" buf ", int " buflen );
+.BI "           unsigned char " buf [ buflen "], int " buflen );
 .PP
 .BI "int res_nsend(res_state " statep ,
-.BI "           const unsigned char *" msg ", int " msglen ,
-.BI "           unsigned char *" answer ", int " anslen );
+.BI "           const unsigned char " msg [ msglen "], int " msglen ,
+.BI "           unsigned char " answer [ anslen "], int " anslen );
 .PP
-.BI "int dn_comp(const char *" exp_dn ", unsigned char *" comp_dn ,
+.BI "int dn_comp(const char *" exp_dn ", unsigned char " comp_dn [ length ],
 .BI "           int " length ", unsigned char **" dnptrs ,
 .BI "           unsigned char **" lastdnptr );
 .PP
 .BI "int dn_expand(const unsigned char *" msg ,
 .BI "           const unsigned char *" eomorig ,
-.BI "           const unsigned char *" comp_dn ", char *" exp_dn ,
+.BI "           const unsigned char *" comp_dn ", char " exp_dn [ length ],
 .BI "           int " length );
 .fi
 .\"
@@ -73,22 +74,23 @@ Resolver library
 .B int res_init(void);
 .PP
 .BI "int res_query(const char *" dname ", int " class ", int " type ,
-.BI "           unsigned char *" answer ", int " anslen );
+.BI "           unsigned char " answer [ anslen "], int " anslen );
 .PP
 .BI "int res_search(const char *" dname ", int " class ", int " type ,
-.BI "           unsigned char *" answer ", int " anslen );
+.BI "           unsigned char " answer [ anslen "], int " anslen );
 .PP
 .BI "int res_querydomain(const char *" name ", const char *" domain ,
-.BI "           int " class ", int " type ", unsigned char *" answer ,
+.BI "           int " class ", int " type ", unsigned char " answer [ anslen ],
 .BI "           int " anslen );
 .PP
 .BI "int res_mkquery(int " op ", const char *" dname ", int " class ,
-.BI "           int " type ", const unsigned char *" data ", int " datalen ,
+.BI "           int " type ", const unsigned char " data [ datalen "], \
+int " datalen ,
 .BI "           const unsigned char *" newrr ,
-.BI "           unsigned char *" buf ", int " buflen );
+.BI "           unsigned char " buf [ buflen "], int " buflen );
 .PP
-.BI "int res_send(const unsigned char *" msg ", int " msglen ,
-.BI "           unsigned char *" answer ", int " anslen );
+.BI "int res_send(const unsigned char " msg [ msglen "], int " msglen ,
+.BI "           unsigned char " answer [ anslen "], int " anslen );
 .fi
 .SH DESCRIPTION
 .B Note:
diff --git a/man3/rpc.3 b/man3/rpc.3
index b0cfc52e7..80fdd5dc4 100644
--- a/man3/rpc.3
+++ b/man3/rpc.3
@@ -74,7 +74,7 @@ This is the default authentication used by RPC.
 .PP
 .nf
 .BI "AUTH *authunix_create(char *" host ", uid_t " uid ", gid_t " gid ,
-.BI "                      int " len ", gid_t *" aup_gids );
+.BI "                      int " len ", gid_t " aup_gids [ len ]);
 .fi
 .IP
 Create and return an RPC authentication handle that contains
diff --git a/man3/setaliasent.3 b/man3/setaliasent.3
index 9d3cfb968..f4401608b 100644
--- a/man3/setaliasent.3
+++ b/man3/setaliasent.3
@@ -20,13 +20,15 @@ Standard C library
 .PP
 .B "struct aliasent *getaliasent(void);"
 .BI "int getaliasent_r(struct aliasent *restrict " result ,
-.BI "                     char *restrict " buffer ", size_t " buflen ,
+.BI "                     char " buffer "[restrict " buflen "], \
+size_t " buflen ,
 .BI "                     struct aliasent **restrict " res );
 .PP
 .BI "struct aliasent *getaliasbyname(const char *" name );
 .BI "int getaliasbyname_r(const char *restrict " name ,
 .BI "                     struct aliasent *restrict " result ,
-.BI "                     char *restrict " buffer ", size_t " buflen ,
+.BI "                     char " buffer "[restrict " buflen "], \
+size_t " buflen ,
 .BI "                     struct aliasent **restrict " res );
 .fi
 .SH DESCRIPTION
diff --git a/man3/setbuf.3 b/man3/setbuf.3
index 4a62952d7..8c72b8e0a 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -27,11 +27,11 @@ Standard C library
 .nf
 .B #include <stdio.h>
 .PP
-.BI "int setvbuf(FILE *restrict " stream ", char *restrict " buf ,
+.BI "int setvbuf(FILE *restrict " stream ", char " buf "[restrict " size ],
 .BI "            int " mode ", size_t " size );
 .PP
 .BI "void setbuf(FILE *restrict " stream ", char *restrict " buf );
-.BI "void setbuffer(FILE *restrict " stream ", char *restrict " buf ,
+.BI "void setbuffer(FILE *restrict " stream ", char " buf "[restrict " size ],
 .BI "            size_t "  size );
 .BI "void setlinebuf(FILE *" stream );
 .fi
diff --git a/man3/setnetgrent.3 b/man3/setnetgrent.3
index 3625adf14..9cfda3c83 100644
--- a/man3/setnetgrent.3
+++ b/man3/setnetgrent.3
@@ -23,7 +23,7 @@ Standard C library
 .BI "            char **restrict " user ", char **restrict " domain );
 .BI "int getnetgrent_r(char **restrict " host ,
 .BI "            char **restrict " user ", char **restrict " domain ,
-.BI "            char *restrict " buf ", size_t " buflen );
+.BI "            char " buf "[restrict " buflen "], size_t " buflen );
 .PP
 .BI "int innetgr(const char *" netgroup ", const char *" host ,
 .BI "            const char *" user ", const char *" domain );
diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index c057845ac..5dd7cc96d 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -16,8 +16,9 @@ Standard C library
 .nf
 .B #include <string.h>
 .PP
-.BI "char *stpncpy(char *restrict " dest ", const char *restrict " src \
-", size_t " n );
+.BI "char *stpncpy(char " dest "[restrict " n "], \
+const char " src "[restrict " n "],
+.BI "              size_t " n );
 .fi
 .PP
 .RS -4
diff --git a/man3/strcasecmp.3 b/man3/strcasecmp.3
index 58a22349e..e94c79966 100644
--- a/man3/strcasecmp.3
+++ b/man3/strcasecmp.3
@@ -18,7 +18,7 @@ Standard C library
 .B #include <strings.h>
 .PP
 .BI "int strcasecmp(const char *" s1 ", const char *" s2 );
-.BI "int strncasecmp(const char *" s1 ", const char *" s2 ", size_t " n );
+.BI "int strncasecmp(const char " s1 [ n "], const char " s2 [ n "], size_t " n );
 .fi
 .SH DESCRIPTION
 The
diff --git a/man3/strcat.3 b/man3/strcat.3
index 5738bb9be..ff4c91307 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -20,8 +20,9 @@ Standard C library
 .B #include <string.h>
 .PP
 .BI "char *strcat(char *restrict " dest ", const char *restrict " src );
-.BI "char *strncat(char *restrict " dest ", const char *restrict " src \
-", size_t " n );
+.BI "char *strncat(char " dest "[restrict " n "], \
+const char " src "[restrict " n ],
+.BI "              size_t " n );
 .fi
 .SH DESCRIPTION
 The
diff --git a/man3/strcmp.3 b/man3/strcmp.3
index 933011b9c..fc5bf1a70 100644
--- a/man3/strcmp.3
+++ b/man3/strcmp.3
@@ -21,7 +21,7 @@ Standard C library
 .B #include <string.h>
 .PP
 .BI "int strcmp(const char *" s1 ", const char *" s2 );
-.BI "int strncmp(const char *" s1 ", const char *" s2 ", size_t " n );
+.BI "int strncmp(const char " s1 [ n "], const char " s2 [ n "], size_t " n );
 .fi
 .SH DESCRIPTION
 The
diff --git a/man3/strcpy.3 b/man3/strcpy.3
index 461b811a5..50543cf7b 100644
--- a/man3/strcpy.3
+++ b/man3/strcpy.3
@@ -23,8 +23,9 @@ Standard C library
 .B #include <string.h>
 .PP
 .BI "char *strcpy(char *restrict " dest ", const char *" src );
-.BI "char *strncpy(char *restrict " dest ", const char *restrict " src \
-", size_t " n );
+.BI "char *strncpy(char " dest "[restrict " n "], \
+const char " src "[restrict " n ],
+.BI "              size_t " n );
 .fi
 .SH DESCRIPTION
 The
diff --git a/man3/strdup.3 b/man3/strdup.3
index 7d15245b4..ea24a61bd 100644
--- a/man3/strdup.3
+++ b/man3/strdup.3
@@ -20,9 +20,9 @@ Standard C library
 .PP
 .BI "char *strdup(const char *" s );
 .PP
-.BI "char *strndup(const char *" s ", size_t " n );
+.BI "char *strndup(const char " s [ n "], size_t " n );
 .BI "char *strdupa(const char *" s );
-.BI "char *strndupa(const char *" s ", size_t " n );
+.BI "char *strndupa(const char " s [ n "], size_t " n );
 .fi
 .PP
 .RS -4
diff --git a/man3/strerror.3 b/man3/strerror.3
index 8857ddb4e..c1621372b 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -31,10 +31,10 @@ Standard C library
 .BI "const char *strerrorname_np(int " errnum );
 .BI "const char *strerrordesc_np(int " errnum );
 .PP
-.BI "int strerror_r(int " errnum ", char *" buf ", size_t " buflen );
+.BI "int strerror_r(int " errnum ", char " buf [ buflen "], size_t " buflen );
                /* XSI-compliant */
 .PP
-.BI "char *strerror_r(int " errnum ", char *" buf ", size_t " buflen );
+.BI "char *strerror_r(int " errnum ", char " buf [ buflen "], size_t " buflen );
                /* GNU-specific */
 .PP
 .BI "char *strerror_l(int " errnum ", locale_t " locale );
diff --git a/man3/strfmon.3 b/man3/strfmon.3
index 40342a900..41b22b95e 100644
--- a/man3/strfmon.3
+++ b/man3/strfmon.3
@@ -12,9 +12,9 @@ Standard C library
 .nf
 .B #include <monetary.h>
 .PP
-.BI "ssize_t strfmon(char *restrict " s ", size_t " max ,
+.BI "ssize_t strfmon(char " s "[restrict " max "], size_t " max ,
 .BI "                const char *restrict " format ", ...);"
-.BI "ssize_t strfmon_l(char *restrict " s ", size_t " max ", locale_t " locale ,
+.BI "ssize_t strfmon_l(char " s "[restrict " max "], size_t " max ", locale_t " locale ,
 .BI "                const char *restrict " format ", ...);"
 .fi
 .SH DESCRIPTION
diff --git a/man3/strfromd.3 b/man3/strfromd.3
index a936489a1..6c4df845c 100644
--- a/man3/strfromd.3
+++ b/man3/strfromd.3
@@ -20,11 +20,11 @@ Standard C library
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "int strfromd(char *restrict " str ", size_t " n ,
+.BI "int strfromd(char " str "[restrict " n "], size_t " n ,
 .BI "             const char *restrict " format ", double " fp ");"
-.BI "int strfromf(char *restrict " str ", size_t " n ,
+.BI "int strfromf(char " str "[restrict " n "], size_t " n ,
 .BI "             const char *restrict " format ", float "fp ");"
-.BI "int strfroml(char *restrict " str ", size_t " n ,
+.BI "int strfroml(char " str "[restrict " n "], size_t " n ,
 .BI "             const char *restrict " format ", long double " fp ");"
 .fi
 .PP
diff --git a/man3/strftime.3 b/man3/strftime.3
index 9a10275ca..0fb2c3123 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -24,11 +24,11 @@ Standard C library
 .nf
 .B #include <time.h>
 .PP
-.BI "size_t strftime(char *restrict " s ", size_t " max ,
+.BI "size_t strftime(char " s "[restrict " max "], size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm );
 .PP
-.BI "size_t strftime_l(char *restrict " s ", size_t " max ,
+.BI "size_t strftime_l(char " s "[restrict " max "], size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm ,
 .BI "                locale_t " locale );
diff --git a/man3/string.3 b/man3/string.3
index ec5ed0bd9..2db0f80eb 100644
--- a/man3/string.3
+++ b/man3/string.3
@@ -26,7 +26,7 @@ and
 .I s2
 ignoring case.
 .TP
-.BI "int strncasecmp(const char *" s1 ", const char *" s2 ", size_t " n );
+.BI "int strncasecmp(const char " s1 [ n "], const char " s2 [ n "], size_t " n );
 Compare the first
 .I n
 bytes of the strings
@@ -112,8 +112,11 @@ Randomly swap the characters in
 Return the length of the string
 .IR s .
 .TP
-.BI "char *strncat(char *restrict " dest ", const char *restrict " src \
-", size_t " n );
+.nf
+.BI "char *strncat(char " dest "[restrict " n "], \
+const char " src "[restrict " n ],
+.BI "       size_t " n );
+.fi
 Append at most
 .I n
 bytes from the string
@@ -123,7 +126,7 @@ to the string
 returning a pointer to
 .IR dest .
 .TP
-.BI "int strncmp(const char *" s1 ", const char *" s2 ", size_t " n );
+.BI "int strncmp(const char " s1 [ n "], const char " s2 [ n "], size_t " n );
 Compare at most
 .I n
 bytes of the strings
@@ -131,8 +134,11 @@ bytes of the strings
 and
 .IR s2 .
 .TP
-.BI "char *strncpy(char *restrict " dest ", const char *restrict " src \
-", size_t " n );
+.nf
+.BI "char *strncpy(char " dest "[restrict " n "], \
+const char " src "[restrict " n ],
+.BI "       size_t " n );
+.fi
 Copy at most
 .I n
 bytes from string
@@ -179,8 +185,11 @@ Extract tokens from the string
 that are delimited by one of the bytes in
 .IR delim .
 .TP
-.BI "size_t strxfrm(char *restrict " dst ", const char *restrict " src \
-", size_t " n );
+.nf
+.BI "size_t strxfrm(char " dst "[restrict " n "], \
+const char " src "[restrict " n ],
+.BI "        size_t " n );
+.fi
 Transforms
 .I src
 to the current locale and copies the first
diff --git a/man3/strnlen.3 b/man3/strnlen.3
index 3cf575735..6df8e0d03 100644
--- a/man3/strnlen.3
+++ b/man3/strnlen.3
@@ -15,7 +15,7 @@ Standard C library
 .nf
 .B #include <string.h>
 .PP
-.BI "size_t strnlen(const char *" s ", size_t " maxlen );
+.BI "size_t strnlen(const char " s [ maxlen "], size_t " maxlen );
 .fi
 .PP
 .RS -4
diff --git a/man3/strxfrm.3 b/man3/strxfrm.3
index 909aed1df..df623a186 100644
--- a/man3/strxfrm.3
+++ b/man3/strxfrm.3
@@ -17,7 +17,8 @@ Standard C library
 .nf
 .B #include <string.h>
 .PP
-.BI "size_t strxfrm(char *restrict " dest ", const char *restrict " src ,
+.BI "size_t strxfrm(char " dest "[restrict " n "], \
+const char " src "[restrict " n ],
 .BI "               size_t " n );
 .fi
 .SH DESCRIPTION
diff --git a/man3/ttyname.3 b/man3/ttyname.3
index 39d253356..4e37d6cbf 100644
--- a/man3/ttyname.3
+++ b/man3/ttyname.3
@@ -16,7 +16,7 @@ Standard C library
 .B #include <unistd.h>
 .PP
 .BI "char *ttyname(int " fd );
-.BI "int ttyname_r(int " fd ", char *" buf ", size_t " buflen );
+.BI "int ttyname_r(int " fd ", char " buf [ buflen "], size_t " buflen );
 .fi
 .SH DESCRIPTION
 The function
diff --git a/man3/unlocked_stdio.3 b/man3/unlocked_stdio.3
index f87b57779..cb9de40f6 100644
--- a/man3/unlocked_stdio.3
+++ b/man3/unlocked_stdio.3
@@ -33,7 +33,7 @@ Standard C library
 ", size_t " n ,
 .BI "                      FILE *restrict " stream );
 .PP
-.BI "char *fgets_unlocked(char *restrict " s ", int " n \
+.BI "char *fgets_unlocked(char " s "[restrict " n "], int " n \
 ", FILE *restrict " stream );
 .BI "int fputs_unlocked(const char *restrict " s ", FILE *restrict " stream );
 .PP
@@ -47,7 +47,7 @@ Standard C library
 .BI "wint_t putwc_unlocked(wchar_t " wc ", FILE *" stream );
 .BI "wint_t putwchar_unlocked(wchar_t " wc );
 .PP
-.BI "wchar_t *fgetws_unlocked(wchar_t *restrict " ws ", int " n ,
+.BI "wchar_t *fgetws_unlocked(wchar_t " ws "[restrict " n "], int " n ,
 .BI "                      FILE *restrict " stream );
 .BI "int fputws_unlocked(const wchar_t *restrict " ws ,
 .BI "                      FILE *restrict " stream );
diff --git a/man3/wcsnrtombs.3 b/man3/wcsnrtombs.3
index ef9aeba4c..bc0a9c64f 100644
--- a/man3/wcsnrtombs.3
+++ b/man3/wcsnrtombs.3
@@ -17,7 +17,7 @@ Standard C library
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t wcsnrtombs(char *restrict " dest ", const wchar_t **restrict " src ,
+.BI "size_t wcsnrtombs(char " dest "[restrict " len "], const wchar_t **restrict " src ,
 .BI "                  size_t " nwc ", size_t " len \
 ", mbstate_t *restrict " ps );
 .fi
diff --git a/man3/wcsrtombs.3 b/man3/wcsrtombs.3
index aed7024b7..335498663 100644
--- a/man3/wcsrtombs.3
+++ b/man3/wcsrtombs.3
@@ -18,7 +18,7 @@ Standard C library
 .nf
 .B #include <wchar.h>
 .PP
-.BI "size_t wcsrtombs(char *restrict " dest ", const wchar_t **restrict " src ,
+.BI "size_t wcsrtombs(char " dest "[restrict " len "], const wchar_t **restrict " src ,
 .BI "                 size_t " len ", mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
diff --git a/man3/wcstombs.3 b/man3/wcstombs.3
index 547381f7e..7c2394b36 100644
--- a/man3/wcstombs.3
+++ b/man3/wcstombs.3
@@ -18,7 +18,7 @@ Standard C library
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "size_t wcstombs(char *restrict " dest ", const wchar_t *restrict " src ,
+.BI "size_t wcstombs(char " dest "[restrict " n "], const wchar_t *restrict " src ,
 .BI "                size_t " n );
 .fi
 .SH DESCRIPTION
-- 
2.37.2

