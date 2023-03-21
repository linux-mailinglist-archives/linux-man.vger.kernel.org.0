Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 930FA6C2FC0
	for <lists+linux-man@lfdr.de>; Tue, 21 Mar 2023 12:05:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230443AbjCULFt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Mar 2023 07:05:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230428AbjCULFq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Mar 2023 07:05:46 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31E1A3B862
        for <linux-man@vger.kernel.org>; Tue, 21 Mar 2023 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679396694;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=IHHWrV4/CMFkMDM9gNjYOdU142LTmlM9bh2wMOc2WCo=;
        b=ADrDIxOdhR3O5eK64sQXW9wybHFhSakmQmzeBNdCME1a2gCIFbxxafnCMUdR+7MYPck2JR
        DRCfLWPauA11i7NMLo/nBL9HxCgooasFoa7rhNkZ9YPZxMdjm5fXfePsjPoKNW79xTku7H
        3aJneUFoYOAmWemBXxYIZj2UrOnkras=
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com
 [209.85.222.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-127--9YX7_7lNHmrpoBK7Xw6NQ-1; Tue, 21 Mar 2023 07:04:52 -0400
X-MC-Unique: -9YX7_7lNHmrpoBK7Xw6NQ-1
Received: by mail-ua1-f70.google.com with SMTP id e21-20020ab01695000000b0068fb160ab81so7766023uaf.17
        for <linux-man@vger.kernel.org>; Tue, 21 Mar 2023 04:04:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679396692;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IHHWrV4/CMFkMDM9gNjYOdU142LTmlM9bh2wMOc2WCo=;
        b=xJT6VCaDskpyo/QXScESWBRY825U+9uma4kj4yk7lKjp5ED5+K2AROY8eYKSFf5Q1t
         x45WYuHO4FSPPJHcM7kxcfJpHR6GGOSz9jtoH/XpbBwsaNlKXCbvSl65CuMSg2GNqNsA
         elU9fbLR7Sb00MzFPnruGRYt5S2EJtxX15vXuzzMg3baaV9/w3c82xM3FO3YKVVRcFyd
         ryDQilgb5dZ6D3GUwSXB4SpkJ7B7XWhaYA4IKAozxMfn8V8kE1F+1T8ClTPjjeVXzzip
         zRdOoJVeEfS+fXCLAKc9H0hWQ4ZG/ph06Agmp9X1xdXYRROMIpeUPsiVwFNrmUIKFOsQ
         NAYA==
X-Gm-Message-State: AAQBX9du9lO/yAR6kXcBGLCOLZoF43mNnAZiH4ceVItdJS318BE+tkln
        yq0OAUsn65AjMRpXUBa33KF1OuQFF+1YwOqpevyF7yekpPnLV2TBteRAtYvvhs69xfwhQ6whwIv
        uKmHb90CAL//7rmCQ2LGcfNDHhPUMFwekJ6URfMeOE4N2n2M=
X-Received: by 2002:a05:6130:421:b0:73f:f15b:d9e3 with SMTP id ba33-20020a056130042100b0073ff15bd9e3mr1185833uab.0.1679396691354;
        Tue, 21 Mar 2023 04:04:51 -0700 (PDT)
X-Google-Smtp-Source: AKy350Yg7qpw6AQCZlXacPIdoim9OKkm0BFdMVnTCpUd8wirLtCVn2YE1FbfE4waY34aISo0RpvQtCOZUaSvgCVx44s=
X-Received: by 2002:a05:6130:421:b0:73f:f15b:d9e3 with SMTP id
 ba33-20020a056130042100b0073ff15bd9e3mr1185790uab.0.1679396690548; Tue, 21
 Mar 2023 04:04:50 -0700 (PDT)
MIME-Version: 1.0
From:   Yedidyah Bar David <didi@redhat.com>
Date:   Tue, 21 Mar 2023 13:04:39 +0200
Message-ID: <CAHRwYXvBfRbxXPXCf=tqDp_JYtrajTjyhADOCMLAXT-CMekTYw@mail.gmail.com>
Subject: [PATCH] Many pages: Replace links to sources.redhat.com
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: multipart/mixed; boundary="0000000000002d837b05f76703e6"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--0000000000002d837b05f76703e6
Content-Type: text/plain; charset="UTF-8"

sources.redhat.com/bugzilla seems broken right now.

Apparently it was replaced, quite a long time ago - based on what I can
find on the net - with www.sourceware.org/bugzilla, which does work.

This patch was created with:

files=$(find man* -type f -print0 | xargs -0 grep -l
sources.redhat.com/bugzilla)
for f in $files; do sed -i
's;http://sources.redhat.com/bugzilla/;https://www.sourceware.org/bugzilla/;g'
$f; done

Verified with:

git diff | sed -n
's;^+.*\(https://www.sourceware.org/bugzilla/show_bug.cgi?id=[0-9]*\).*;\1;p'
> URLs
mkdir test
cd test
wget -i ../URLs

Signed-off-by: Yedidyah Bar David <didi@redhat.com>
---
 man2/getrlimit.2                 | 2 +-
 man2/inotify_rm_watch.2          | 2 +-
 man2/ioprio_set.2                | 2 +-
 man3/atanh.3                     | 2 +-
 man3/cos.3                       | 2 +-
 man3/cproj.3                     | 2 +-
 man3/erf.3                       | 2 +-
 man3/erfc.3                      | 2 +-
 man3/exp10.3                     | 2 +-
 man3/expm1.3                     | 6 +++---
 man3/fma.3                       | 2 +-
 man3/fmod.3                      | 2 +-
 man3/ilogb.3                     | 2 +-
 man3/j0.3                        | 2 +-
 man3/lgamma.3                    | 2 +-
 man3/logb.3                      | 2 +-
 man3/lrint.3                     | 2 +-
 man3/lround.3                    | 2 +-
 man3/mallopt.3                   | 4 ++--
 man3/pow.3                       | 8 ++++----
 man3/pthread_attr_setguardsize.3 | 2 +-
 man3/rcmd.3                      | 2 +-
 man3/remainder.3                 | 4 ++--
 man3/remquo.3                    | 2 +-
 man3/scalb.3                     | 4 ++--
 man3/scalbln.3                   | 2 +-
 man3/sin.3                       | 2 +-
 man3/tgamma.3                    | 4 ++--
 man3/y0.3                        | 4 ++--
 man7/inotify.7                   | 2 +-
 man7/tcp.7                       | 4 ++--
 man7/unix.7                      | 2 +-
 32 files changed, 43 insertions(+), 43 deletions(-)

diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
index 700fd6438..fdcc9c96f 100644
--- a/man2/getrlimit.2
+++ b/man2/getrlimit.2
@@ -738,7 +738,7 @@ the kernel represents resource limits on 32-bit platforms as
 .IR "unsigned long" .
 However, a 32-bit data type is not wide enough.
 .\" https://bugzilla.kernel.org/show_bug.cgi?id=5042
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=12201
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=12201
 The most pertinent limit here is
 .BR RLIMIT_FSIZE ,
 which specifies the maximum size to which a file can grow:
diff --git a/man2/inotify_rm_watch.2 b/man2/inotify_rm_watch.2
index 64731c090..6ec0fd667 100644
--- a/man2/inotify_rm_watch.2
+++ b/man2/inotify_rm_watch.2
@@ -17,7 +17,7 @@ Standard C library
 .PP
 .BI "int inotify_rm_watch(int " fd ", int " wd );
 .\" Before glibc 2.10, the second argument was types as uint32_t.
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=7040
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=7040
 .fi
 .SH DESCRIPTION
 .BR inotify_rm_watch ()
diff --git a/man2/ioprio_set.2 b/man2/ioprio_set.2
index 26f440d3e..8f964af68 100644
--- a/man2/ioprio_set.2
+++ b/man2/ioprio_set.2
@@ -345,7 +345,7 @@ must follow both rules, or the call will fail with the error
 .BR EPERM .
 .SH BUGS
 .\" 6 May 07: Bug report raised:
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=4464
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=4464
 .\" Ulrich Drepper replied that he wasn't going to add these
 .\" to glibc.
 glibc does not yet provide a suitable header file defining
diff --git a/man3/atanh.3 b/man3/atanh.3
index 5b21a01c7..1caa364de 100644
--- a/man3/atanh.3
+++ b/man3/atanh.3
@@ -137,7 +137,7 @@ also conforms to
 SVr4, 4.3BSD.
 .SH BUGS
 In glibc 2.9 and earlier,
-.\" Bug: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6759
+.\" Bug: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6759
 .\" This can be seen in sysdeps/ieee754/k_standard.c
 when a pole error occurs,
 .I errno
diff --git a/man3/cos.3 b/man3/cos.3
index c59150f2c..69f88044b 100644
--- a/man3/cos.3
+++ b/man3/cos.3
@@ -103,7 +103,7 @@ also conforms to
 SVr4, 4.3BSD.
 .SH BUGS
 Before glibc 2.10, the glibc implementation did not set
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6780
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6780
 .I errno
 to
 .B EDOM
diff --git a/man3/cproj.3 b/man3/cproj.3
index b05e98a72..32dd29165 100644
--- a/man3/cproj.3
+++ b/man3/cproj.3
@@ -55,7 +55,7 @@ In glibc 2.11 and earlier, the implementation does
something different
 (a
 .I stereographic
 projection onto a Riemann Sphere).
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=10401
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=10401
 .SH SEE ALSO
 .BR cabs (3),
 .BR complex (7)
diff --git a/man3/erf.3 b/man3/erf.3
index a66b08da4..a2a100236 100644
--- a/man3/erf.3
+++ b/man3/erf.3
@@ -99,7 +99,7 @@ is raised.
 These functions do not set
 .IR errno .
 .\" It is intentional that these functions do not set errno for this case
-.\" see http://sources.redhat.com/bugzilla/show_bug.cgi?id=6785
+.\" see https://www.sourceware.org/bugzilla/show_bug.cgi?id=6785
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/erfc.3 b/man3/erfc.3
index 90cac21a1..267dda8dd 100644
--- a/man3/erfc.3
+++ b/man3/erfc.3
@@ -92,7 +92,7 @@ is raised.
 These functions do not set
 .IR errno .
 .\" It is intentional that these functions do not set errno for this case
-.\" see http://sources.redhat.com/bugzilla/show_bug.cgi?id=6785
+.\" see https://www.sourceware.org/bugzilla/show_bug.cgi?id=6785
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/exp10.3 b/man3/exp10.3
index f739b8025..290d495ca 100644
--- a/man3/exp10.3
+++ b/man3/exp10.3
@@ -76,7 +76,7 @@ Before glibc 2.19, the glibc implementation of these
functions did not set
 to
 .B ERANGE
 when an underflow error occurred.
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6787
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6787
 .SH SEE ALSO
 .BR cbrt (3),
 .BR exp (3),
diff --git a/man3/expm1.3 b/man3/expm1.3
index ed3e7c341..832660f2f 100644
--- a/man3/expm1.3
+++ b/man3/expm1.3
@@ -130,7 +130,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 .\" BSD.
 .SH BUGS
 Before glibc 2.17,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6778
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6778
 on certain architectures (e.g., x86, but not x86_64)
 .BR expm1 ()
 raised a bogus underflow floating-point exception
@@ -139,7 +139,7 @@ for some large negative
 values (where the function result approaches \-1).
 .PP
 Before approximately glibc 2.11,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6814
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6814
 .\" e.g., expm1(1e5) through expm1(1.00199970127e5),
 .\" but not expm1(1.00199970128e5) and beyond.
 .BR expm1 ()
@@ -155,7 +155,7 @@ Before glibc 2.11,
 .\" From the source (sysdeps/i386/fpu/s_expm1.S) it looks
 .\" like the changes were in glibc 2.11.
 the glibc implementation did not set
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6788
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6788
 .I errno
 to
 .B ERANGE
diff --git a/man3/fma.3 b/man3/fma.3
index e170136c8..616a26592 100644
--- a/man3/fma.3
+++ b/man3/fma.3
@@ -140,7 +140,7 @@ is raised.
 These functions do not set
 .IR errno .
 .\" FIXME . Is it intentional that these functions do not set errno?
-.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6801
+.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6801
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/fmod.3 b/man3/fmod.3
index 5c9c2be38..57546fe32 100644
--- a/man3/fmod.3
+++ b/man3/fmod.3
@@ -145,7 +145,7 @@ also conforms to
 SVr4, 4.3BSD, C89.
 .SH BUGS
 Before glibc 2.10, the glibc implementation did not set
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6784
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6784
 .I errno
 to
 .B EDOM
diff --git a/man3/ilogb.3 b/man3/ilogb.3
index f6e016fd1..3e141e323 100644
--- a/man3/ilogb.3
+++ b/man3/ilogb.3
@@ -130,7 +130,7 @@ T}  Thread safety   MT-Safe
 .SH STANDARDS
 C99, POSIX.1-2001, POSIX.1-2008.
 .SH BUGS
-.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6794
+.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6794
 Before glibc 2.16, the following bugs existed in the
 glibc implementation of these functions:
 .IP \[bu] 3
diff --git a/man3/j0.3 b/man3/j0.3
index 358b73ddf..c9ee0561e 100644
--- a/man3/j0.3
+++ b/man3/j0.3
@@ -128,7 +128,7 @@ These functions do not raise exceptions for
 .BR fetestexcept (3).
 .\" e.g., j0(1.5e16)
 .\" This is intentional.
-.\" See http://sources.redhat.com/bugzilla/show_bug.cgi?id=6805
+.\" See https://www.sourceware.org/bugzilla/show_bug.cgi?id=6805
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/lgamma.3 b/man3/lgamma.3
index f3def3a04..c86ac24c1 100644
--- a/man3/lgamma.3
+++ b/man3/lgamma.3
@@ -163,7 +163,7 @@ The
 functions are nonstandard, but present on several other systems.
 .SH BUGS
 In glibc 2.9 and earlier,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6777
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6777
 when a pole error occurs,
 .I errno
 is set to
diff --git a/man3/logb.3 b/man3/logb.3
index 817ef6463..3fbb9a3f1 100644
--- a/man3/logb.3
+++ b/man3/logb.3
@@ -110,7 +110,7 @@ These functions do not set
 .IR errno .
 .\" FIXME . Is it intentional that these functions do not set errno?
 .\" log(), log2(), log10() do set errno
-.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6793
+.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6793
 .\"
 .\" .SH HISTORY
 .\" The
diff --git a/man3/lrint.3 b/man3/lrint.3
index 8c405578e..87dc6aaec 100644
--- a/man3/lrint.3
+++ b/man3/lrint.3
@@ -76,7 +76,7 @@ is raised.
 These functions do not set
 .IR errno .
 .\" FIXME . Is it intentional that these functions do not set errno?
-.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6798
+.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6798
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/lround.3 b/man3/lround.3
index 83927601f..c2084518c 100644
--- a/man3/lround.3
+++ b/man3/lround.3
@@ -79,7 +79,7 @@ is raised.
 These functions do not set
 .IR errno .
 .\" FIXME . Is it intentional that these functions do not set errno?
-.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6797
+.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6797
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/mallopt.3 b/man3/mallopt.3
index f4f31eda3..f9af38ee2 100644
--- a/man3/mallopt.3
+++ b/man3/mallopt.3
@@ -462,7 +462,7 @@ a call of the form:
 .\" setting the M_MXFAST limit rounds up:    (s + SIZE_SZ) &
~MALLOC_ALIGN_MASK)
 .\" malloc requests are rounded up:
 .\"    (req) + SIZE_SZ + MALLOC_ALIGN_MASK) & ~MALLOC_ALIGN_MASK
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=12129
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=12129
 .PP
 .in +4n
 .EX
@@ -494,7 +494,7 @@ the bytes of the region are initialized to the
byte specified in
 However, there is an
 .RI off-by- sizeof(size_t)
 error in the implementation:
-.\" FIXME . http://sources.redhat.com/bugzilla/show_bug.cgi?id=12140
+.\" FIXME . https://www.sourceware.org/bugzilla/show_bug.cgi?id=12140
 instead of initializing precisely the block of memory
 being freed by the call
 .IR free(p) ,
diff --git a/man3/pow.3 b/man3/pow.3
index b9a66c929..a1c48c31b 100644
--- a/man3/pow.3
+++ b/man3/pow.3
@@ -66,7 +66,7 @@ If result underflows, and is not representable,
 a range error occurs,
 and 0.0 with the appropriate sign is returned.
 .\" POSIX.1 does not specify the sign of the zero,
-.\" but http://sources.redhat.com/bugzilla/show_bug.cgi?id=2678
+.\" but https://www.sourceware.org/bugzilla/show_bug.cgi?id=2678
 .\" points out that the zero has the wrong sign in some cases.
 .PP
 .\" pow(\(+-0, <0 [[odd]]) = HUGE_VAL*
@@ -249,7 +249,7 @@ is a NaN, the result is a NaN.
 .SH ERRORS
 .\" FIXME . review status of this error
 .\" longstanding bug report for glibc:
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=369
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=369
 .\" For negative x, and -large and +large y, glibc 2.8 gives incorrect
 .\" results
 .\" pow(-0.5,-DBL_MAX)=nan
@@ -351,14 +351,14 @@ This problem was fixed
 in glibc 2.28.
 .PP
 A number of bugs
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=3866
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=3866
 in the glibc implementation of
 .BR pow ()
 were fixed in glibc 2.16.
 .PP
 In glibc 2.9 and earlier,
 .\"
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6776
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6776
 when a pole error occurs,
 .I errno
 is set to
diff --git a/man3/pthread_attr_setguardsize.3 b/man3/pthread_attr_setguardsize.3
index f6007c682..01d9af47c 100644
--- a/man3/pthread_attr_setguardsize.3
+++ b/man3/pthread_attr_setguardsize.3
@@ -145,7 +145,7 @@ allocating extra space at the end of the stack for
the guard area.
 .\" which looks pretty clearly to be in violation of POSIX.
 .\"
 .\" Filed bug, 22 Oct 2008:
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6973
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6973
 .\"
 .\" Older reports:
 .\" https//bugzilla.redhat.com/show_bug.cgi?id=435337
diff --git a/man3/rcmd.3 b/man3/rcmd.3
index a17238af8..35168c4c3 100644
--- a/man3/rcmd.3
+++ b/man3/rcmd.3
@@ -293,7 +293,7 @@ and
 .BR iruserok_af ()
 are declared in glibc headers only since glibc 2.12.
 .\" Bug filed 25 Nov 2007:
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=5399
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=5399
 .SH SEE ALSO
 .BR rlogin (1),
 .BR rsh (1),
diff --git a/man3/remainder.3 b/man3/remainder.3
index 0de1d26d3..19ca62544 100644
--- a/man3/remainder.3
+++ b/man3/remainder.3
@@ -199,7 +199,7 @@ Avoid the use of these functions in favor of
 etc.
 .SH BUGS
 Before glibc 2.15,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6779
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6779
 the call
 .PP
 .in +4n
@@ -212,7 +212,7 @@ returned a NaN, as expected, but wrongly caused a
domain error.
 Since glibc 2.15, a silent NaN (i.e., no domain error) is returned.
 .PP
 Before glibc 2.15,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6783
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6783
 .I errno
 was not set to
 .B EDOM
diff --git a/man3/remquo.3 b/man3/remquo.3
index c2232ee0e..8c764c9e0 100644
--- a/man3/remquo.3
+++ b/man3/remquo.3
@@ -110,7 +110,7 @@ is raised.
 These functions do not set
 .IR errno .
 .\" FIXME . Is it intentional that these functions do not set errno?
-.\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=6802
+.\" Bug raised: https://www.sourceware.org/bugzilla/show_bug.cgi?id=6802
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
diff --git a/man3/scalb.3 b/man3/scalb.3
index f116c74d4..a25ca078f 100644
--- a/man3/scalb.3
+++ b/man3/scalb.3
@@ -196,8 +196,8 @@ is nevertheless present on several other systems
 .\" BSDs, Tru64, HP-UX 11, Irix 6.5; scalbl() is on HP-UX 11 and Tru64.
 .SH BUGS
 Before glibc 2.20,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6803
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6804
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6803
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6804
 these functions did not set
 .I errno
 for domain and range errors.
diff --git a/man3/scalbln.3 b/man3/scalbln.3
index 4ffe1ac6a..4a6acc58b 100644
--- a/man3/scalbln.3
+++ b/man3/scalbln.3
@@ -167,7 +167,7 @@ is equivalent to
 .BR ldexp (3).
 .SH BUGS
 Before glibc 2.20,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6803
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6803
 these functions did not set
 .I errno
 for range errors.
diff --git a/man3/sin.3 b/man3/sin.3
index ccfddf87a..65386e10a 100644
--- a/man3/sin.3
+++ b/man3/sin.3
@@ -107,7 +107,7 @@ also conforms to
 SVr4, 4.3BSD, C89.
 .SH BUGS
 Before glibc 2.10, the glibc implementation did not set
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6781
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6781
 .I errno
 to
 .B EDOM
diff --git a/man3/tgamma.3 b/man3/tgamma.3
index 749720741..298e6f109 100644
--- a/man3/tgamma.3
+++ b/man3/tgamma.3
@@ -188,7 +188,7 @@ that returns something else (see
 for details).
 .SH BUGS
 Before glibc 2.18, the glibc implementation of these functions did not set
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6809
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6809
 .I errno
 to
 .B EDOM
@@ -197,7 +197,7 @@ when
 is negative infinity.
 .PP
 Before glibc 2.19,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6810
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6810
 the glibc implementation of these functions did not set
 .I errno
 to
diff --git a/man3/y0.3 b/man3/y0.3
index e7033f8f8..a2c9e2174 100644
--- a/man3/y0.3
+++ b/man3/y0.3
@@ -181,7 +181,7 @@ No
 .B FE_UNDERFLOW
 exception is returned by
 .\" This is intended behavior
-.\" See http://sources.redhat.com/bugzilla/show_bug.cgi?id=6806
+.\" See https://www.sourceware.org/bugzilla/show_bug.cgi?id=6806
 .BR fetestexcept (3)
 for this case.
 .TP
@@ -243,7 +243,7 @@ and no
 exception was raised.
 .PP
 Before glibc 2.17,
-.\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6808
+.\" https://www.sourceware.org/bugzilla/show_bug.cgi?id=6808
 did not set
 .I errno
 for "range error: result underflow".
diff --git a/man7/inotify.7 b/man7/inotify.7
index 92f833afa..4b9fa0200 100644
--- a/man7/inotify.7
+++ b/man7/inotify.7
@@ -90,7 +90,7 @@ struct inotify_event {
 .\" FIXME . The type of the 'wd' field should probably be "int32_t".
 .\" I submitted a patch to fix this.  See the LKML thread
 .\" "[patch] Fix type errors in inotify interfaces", 18 Nov 2008
-.\" glibc bug filed: http://sources.redhat.com/bugzilla/show_bug.cgi?id=7040
+.\" glibc bug filed: https://www.sourceware.org/bugzilla/show_bug.cgi?id=7040
     uint32_t mask;     /* Mask describing event */
     uint32_t cookie;   /* Unique cookie associating related
                           events (for rename(2)) */
diff --git a/man7/tcp.7 b/man7/tcp.7
index c0c4a838b..dda714afb 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -1426,7 +1426,7 @@ is returned.
 .B SIOCINQ
 is defined in
 .IR <linux/sockios.h> .
-.\" FIXME http://sources.redhat.com/bugzilla/show_bug.cgi?id=12002,
+.\" FIXME https://www.sourceware.org/bugzilla/show_bug.cgi?id=12002,
 .\" filed 2010-09-10, may cause SIOCINQ to be defined in glibc headers
 Alternatively,
 you can use the synonymous
@@ -1477,7 +1477,7 @@ is returned.
 .B SIOCOUTQ
 is defined in
 .IR <linux/sockios.h> .
-.\" FIXME . http://sources.redhat.com/bugzilla/show_bug.cgi?id=12002,
+.\" FIXME . https://www.sourceware.org/bugzilla/show_bug.cgi?id=12002,
 .\" filed 2010-09-10, may cause SIOCOUTQ to be defined in glibc headers
 Alternatively,
 you can use the synonymous
diff --git a/man7/unix.7 b/man7/unix.7
index e9fe40c9b..e23ccbc12 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -665,7 +665,7 @@ is returned.
 .B SIOCINQ
 is defined in
 .IR <linux/sockios.h> .
-.\" FIXME . http://sources.redhat.com/bugzilla/show_bug.cgi?id=12002,
+.\" FIXME . https://www.sourceware.org/bugzilla/show_bug.cgi?id=12002,
 .\" filed 2010-09-10, may cause SIOCINQ to be defined in glibc headers
 Alternatively,
 you can use the synonymous
-- 
2.31.1

--0000000000002d837b05f76703e6
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-Many-pages-Replace-links-to-sources.redhat.com.patch"
Content-Disposition: attachment; 
	filename="0001-Many-pages-Replace-links-to-sources.redhat.com.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lfi5ehoj0>
X-Attachment-Id: f_lfi5ehoj0

RnJvbSAxNjA2OTRjMmUyNzk0MTFlYzAwYzVlY2Q0NDcwY2JhNWRkNjNlNGQ3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBZZWRpZHlhaCBCYXIgRGF2aWQgPGRpZGlAcmVkaGF0LmNvbT4K
RGF0ZTogVHVlLCAyMSBNYXIgMjAyMyAxMjo0MzowNiArMDIwMApTdWJqZWN0OiBbUEFUQ0hdIE1h
bnkgcGFnZXM6IFJlcGxhY2UgbGlua3MgdG8gc291cmNlcy5yZWRoYXQuY29tCgpzb3VyY2VzLnJl
ZGhhdC5jb20vYnVnemlsbGEgc2VlbXMgYnJva2VuIHJpZ2h0IG5vdy4KCkFwcGFyZW50bHkgaXQg
d2FzIHJlcGxhY2VkLCBxdWl0ZSBhIGxvbmcgdGltZSBhZ28gLSBiYXNlZCBvbiB3aGF0IEkgY2Fu
CmZpbmQgb24gdGhlIG5ldCAtIHdpdGggd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhLCB3aGlj
aCBkb2VzIHdvcmsuCgpUaGlzIHBhdGNoIHdhcyBjcmVhdGVkIHdpdGg6CgpmaWxlcz0kKGZpbmQg
bWFuKiAtdHlwZSBmIC1wcmludDAgfCB4YXJncyAtMCBncmVwIC1sIHNvdXJjZXMucmVkaGF0LmNv
bS9idWd6aWxsYSkKZm9yIGYgaW4gJGZpbGVzOyBkbyBzZWQgLWkgJ3M7aHR0cDovL3NvdXJjZXMu
cmVkaGF0LmNvbS9idWd6aWxsYS87aHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEv
O2cnICRmOyBkb25lCgpWZXJpZmllZCB3aXRoOgoKZ2l0IGRpZmYgfCBzZWQgLW4gJ3M7XisuKlwo
aHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPVswLTld
KlwpLio7XDE7cCcgPiBVUkxzCm1rZGlyIHRlc3QKY2QgdGVzdAp3Z2V0IC1pIC4uL1VSTHMKClNp
Z25lZC1vZmYtYnk6IFllZGlkeWFoIEJhciBEYXZpZCA8ZGlkaUByZWRoYXQuY29tPgotLS0KIG1h
bjIvZ2V0cmxpbWl0LjIgICAgICAgICAgICAgICAgIHwgMiArLQogbWFuMi9pbm90aWZ5X3JtX3dh
dGNoLjIgICAgICAgICAgfCAyICstCiBtYW4yL2lvcHJpb19zZXQuMiAgICAgICAgICAgICAgICB8
IDIgKy0KIG1hbjMvYXRhbmguMyAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogbWFuMy9jb3Mu
MyAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBtYW4zL2Nwcm9qLjMgICAgICAgICAgICAg
ICAgICAgICB8IDIgKy0KIG1hbjMvZXJmLjMgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQog
bWFuMy9lcmZjLjMgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBtYW4zL2V4cDEwLjMgICAg
ICAgICAgICAgICAgICAgICB8IDIgKy0KIG1hbjMvZXhwbTEuMyAgICAgICAgICAgICAgICAgICAg
IHwgNiArKystLS0KIG1hbjMvZm1hLjMgICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQogbWFu
My9mbW9kLjMgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBtYW4zL2lsb2diLjMgICAgICAg
ICAgICAgICAgICAgICB8IDIgKy0KIG1hbjMvajAuMyAgICAgICAgICAgICAgICAgICAgICAgIHwg
MiArLQogbWFuMy9sZ2FtbWEuMyAgICAgICAgICAgICAgICAgICAgfCAyICstCiBtYW4zL2xvZ2Iu
MyAgICAgICAgICAgICAgICAgICAgICB8IDIgKy0KIG1hbjMvbHJpbnQuMyAgICAgICAgICAgICAg
ICAgICAgIHwgMiArLQogbWFuMy9scm91bmQuMyAgICAgICAgICAgICAgICAgICAgfCAyICstCiBt
YW4zL21hbGxvcHQuMyAgICAgICAgICAgICAgICAgICB8IDQgKystLQogbWFuMy9wb3cuMyAgICAg
ICAgICAgICAgICAgICAgICAgfCA4ICsrKystLS0tCiBtYW4zL3B0aHJlYWRfYXR0cl9zZXRndWFy
ZHNpemUuMyB8IDIgKy0KIG1hbjMvcmNtZC4zICAgICAgICAgICAgICAgICAgICAgIHwgMiArLQog
bWFuMy9yZW1haW5kZXIuMyAgICAgICAgICAgICAgICAgfCA0ICsrLS0KIG1hbjMvcmVtcXVvLjMg
ICAgICAgICAgICAgICAgICAgIHwgMiArLQogbWFuMy9zY2FsYi4zICAgICAgICAgICAgICAgICAg
ICAgfCA0ICsrLS0KIG1hbjMvc2NhbGJsbi4zICAgICAgICAgICAgICAgICAgIHwgMiArLQogbWFu
My9zaW4uMyAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCiBtYW4zL3RnYW1tYS4zICAgICAg
ICAgICAgICAgICAgICB8IDQgKystLQogbWFuMy95MC4zICAgICAgICAgICAgICAgICAgICAgICAg
fCA0ICsrLS0KIG1hbjcvaW5vdGlmeS43ICAgICAgICAgICAgICAgICAgIHwgMiArLQogbWFuNy90
Y3AuNyAgICAgICAgICAgICAgICAgICAgICAgfCA0ICsrLS0KIG1hbjcvdW5peC43ICAgICAgICAg
ICAgICAgICAgICAgIHwgMiArLQogMzIgZmlsZXMgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwg
NDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWFuMi9nZXRybGltaXQuMiBiL21hbjIvZ2V0
cmxpbWl0LjIKaW5kZXggNzAwZmQ2NDM4Li5mZGNjOWM5NmYgMTAwNjQ0Ci0tLSBhL21hbjIvZ2V0
cmxpbWl0LjIKKysrIGIvbWFuMi9nZXRybGltaXQuMgpAQCAtNzM4LDcgKzczOCw3IEBAIHRoZSBr
ZXJuZWwgcmVwcmVzZW50cyByZXNvdXJjZSBsaW1pdHMgb24gMzItYml0IHBsYXRmb3JtcyBhcwog
LklSICJ1bnNpZ25lZCBsb25nIiAuCiBIb3dldmVyLCBhIDMyLWJpdCBkYXRhIHR5cGUgaXMgbm90
IHdpZGUgZW5vdWdoLgogLlwiIGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9NTA0MgotLlwiIGh0dHA6Ly9zb3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19i
dWcuY2dpP2lkPTEyMjAxCisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEv
c2hvd19idWcuY2dpP2lkPTEyMjAxCiBUaGUgbW9zdCBwZXJ0aW5lbnQgbGltaXQgaGVyZSBpcwog
LkJSIFJMSU1JVF9GU0laRSAsCiB3aGljaCBzcGVjaWZpZXMgdGhlIG1heGltdW0gc2l6ZSB0byB3
aGljaCBhIGZpbGUgY2FuIGdyb3c6CmRpZmYgLS1naXQgYS9tYW4yL2lub3RpZnlfcm1fd2F0Y2gu
MiBiL21hbjIvaW5vdGlmeV9ybV93YXRjaC4yCmluZGV4IDY0NzMxYzA5MC4uNmVjMGZkNjY3IDEw
MDY0NAotLS0gYS9tYW4yL2lub3RpZnlfcm1fd2F0Y2guMgorKysgYi9tYW4yL2lub3RpZnlfcm1f
d2F0Y2guMgpAQCAtMTcsNyArMTcsNyBAQCBTdGFuZGFyZCBDIGxpYnJhcnkKIC5QUAogLkJJICJp
bnQgaW5vdGlmeV9ybV93YXRjaChpbnQgIiBmZCAiLCBpbnQgIiB3ZCApOwogLlwiIEJlZm9yZSBn
bGliYyAyLjEwLCB0aGUgc2Vjb25kIGFyZ3VtZW50IHdhcyB0eXBlcyBhcyB1aW50MzJfdC4KLS5c
IiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD03MDQw
CisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lk
PTcwNDAKIC5maQogLlNIIERFU0NSSVBUSU9OCiAuQlIgaW5vdGlmeV9ybV93YXRjaCAoKQpkaWZm
IC0tZ2l0IGEvbWFuMi9pb3ByaW9fc2V0LjIgYi9tYW4yL2lvcHJpb19zZXQuMgppbmRleCAyNmY0
NDBkM2UuLjhmOTY0YWY2OCAxMDA2NDQKLS0tIGEvbWFuMi9pb3ByaW9fc2V0LjIKKysrIGIvbWFu
Mi9pb3ByaW9fc2V0LjIKQEAgLTM0NSw3ICszNDUsNyBAQCBtdXN0IGZvbGxvdyBib3RoIHJ1bGVz
LCBvciB0aGUgY2FsbCB3aWxsIGZhaWwgd2l0aCB0aGUgZXJyb3IKIC5CUiBFUEVSTSAuCiAuU0gg
QlVHUwogLlwiIDYgTWF5IDA3OiBCdWcgcmVwb3J0IHJhaXNlZDoKLS5cIiBodHRwOi8vc291cmNl
cy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD00NDY0CisuXCIgaHR0cHM6Ly93
d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTQ0NjQKIC5cIiBVbHJp
Y2ggRHJlcHBlciByZXBsaWVkIHRoYXQgaGUgd2Fzbid0IGdvaW5nIHRvIGFkZCB0aGVzZQogLlwi
IHRvIGdsaWJjLgogZ2xpYmMgZG9lcyBub3QgeWV0IHByb3ZpZGUgYSBzdWl0YWJsZSBoZWFkZXIg
ZmlsZSBkZWZpbmluZwpkaWZmIC0tZ2l0IGEvbWFuMy9hdGFuaC4zIGIvbWFuMy9hdGFuaC4zCmlu
ZGV4IDViMjFhMDFjNy4uMWNhYTM2NGRlIDEwMDY0NAotLS0gYS9tYW4zL2F0YW5oLjMKKysrIGIv
bWFuMy9hdGFuaC4zCkBAIC0xMzcsNyArMTM3LDcgQEAgYWxzbyBjb25mb3JtcyB0bwogU1ZyNCwg
NC4zQlNELgogLlNIIEJVR1MKIEluIGdsaWJjIDIuOSBhbmQgZWFybGllciwKLS5cIiBCdWc6IGh0
dHA6Ly9zb3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3NTkKKy5c
IiBCdWc6IGh0dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9p
ZD02NzU5CiAuXCIgVGhpcyBjYW4gYmUgc2VlbiBpbiBzeXNkZXBzL2llZWU3NTQva19zdGFuZGFy
ZC5jCiB3aGVuIGEgcG9sZSBlcnJvciBvY2N1cnMsCiAuSSBlcnJubwpkaWZmIC0tZ2l0IGEvbWFu
My9jb3MuMyBiL21hbjMvY29zLjMKaW5kZXggYzU5MTUwZjJjLi42OWY4ODA0NGIgMTAwNjQ0Ci0t
LSBhL21hbjMvY29zLjMKKysrIGIvbWFuMy9jb3MuMwpAQCAtMTAzLDcgKzEwMyw3IEBAIGFsc28g
Y29uZm9ybXMgdG8KIFNWcjQsIDQuM0JTRC4KIC5TSCBCVUdTCiBCZWZvcmUgZ2xpYmMgMi4xMCwg
dGhlIGdsaWJjIGltcGxlbWVudGF0aW9uIGRpZCBub3Qgc2V0Ci0uXCIgaHR0cDovL3NvdXJjZXMu
cmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc4MAorLlwiIGh0dHBzOi8vd3d3
LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02NzgwCiAuSSBlcnJubwog
dG8KIC5CIEVET00KZGlmZiAtLWdpdCBhL21hbjMvY3Byb2ouMyBiL21hbjMvY3Byb2ouMwppbmRl
eCBiMDVlOThhNzIuLjMyZGQyOTE2NSAxMDA2NDQKLS0tIGEvbWFuMy9jcHJvai4zCisrKyBiL21h
bjMvY3Byb2ouMwpAQCAtNTUsNyArNTUsNyBAQCBJbiBnbGliYyAyLjExIGFuZCBlYXJsaWVyLCB0
aGUgaW1wbGVtZW50YXRpb24gZG9lcyBzb21ldGhpbmcgZGlmZmVyZW50CiAoYQogLkkgc3RlcmVv
Z3JhcGhpYwogcHJvamVjdGlvbiBvbnRvIGEgUmllbWFubiBTcGhlcmUpLgotLlwiIGh0dHA6Ly9z
b3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTEwNDAxCisuXCIgaHR0
cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTEwNDAxCiAu
U0ggU0VFIEFMU08KIC5CUiBjYWJzICgzKSwKIC5CUiBjb21wbGV4ICg3KQpkaWZmIC0tZ2l0IGEv
bWFuMy9lcmYuMyBiL21hbjMvZXJmLjMKaW5kZXggYTY2YjA4ZGE0Li5hMmExMDAyMzYgMTAwNjQ0
Ci0tLSBhL21hbjMvZXJmLjMKKysrIGIvbWFuMy9lcmYuMwpAQCAtOTksNyArOTksNyBAQCBpcyBy
YWlzZWQuCiBUaGVzZSBmdW5jdGlvbnMgZG8gbm90IHNldAogLklSIGVycm5vIC4KIC5cIiBJdCBp
cyBpbnRlbnRpb25hbCB0aGF0IHRoZXNlIGZ1bmN0aW9ucyBkbyBub3Qgc2V0IGVycm5vIGZvciB0
aGlzIGNhc2UKLS5cIiBzZWUgaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93
X2J1Zy5jZ2k/aWQ9Njc4NQorLlwiIHNlZSBodHRwczovL3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6
aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc4NQogLlNIIEFUVFJJQlVURVMKIEZvciBhbiBleHBsYW5h
dGlvbiBvZiB0aGUgdGVybXMgdXNlZCBpbiB0aGlzIHNlY3Rpb24sIHNlZQogLkJSIGF0dHJpYnV0
ZXMgKDcpLgpkaWZmIC0tZ2l0IGEvbWFuMy9lcmZjLjMgYi9tYW4zL2VyZmMuMwppbmRleCA5MGNh
YzIxYTEuLjI2N2RkYThkZCAxMDA2NDQKLS0tIGEvbWFuMy9lcmZjLjMKKysrIGIvbWFuMy9lcmZj
LjMKQEAgLTkyLDcgKzkyLDcgQEAgaXMgcmFpc2VkLgogVGhlc2UgZnVuY3Rpb25zIGRvIG5vdCBz
ZXQKIC5JUiBlcnJubyAuCiAuXCIgSXQgaXMgaW50ZW50aW9uYWwgdGhhdCB0aGVzZSBmdW5jdGlv
bnMgZG8gbm90IHNldCBlcnJubyBmb3IgdGhpcyBjYXNlCi0uXCIgc2VlIGh0dHA6Ly9zb3VyY2Vz
LnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3ODUKKy5cIiBzZWUgaHR0cHM6
Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3ODUKIC5TSCBB
VFRSSUJVVEVTCiBGb3IgYW4gZXhwbGFuYXRpb24gb2YgdGhlIHRlcm1zIHVzZWQgaW4gdGhpcyBz
ZWN0aW9uLCBzZWUKIC5CUiBhdHRyaWJ1dGVzICg3KS4KZGlmZiAtLWdpdCBhL21hbjMvZXhwMTAu
MyBiL21hbjMvZXhwMTAuMwppbmRleCBmNzM5YjgwMjUuLjI5MGQ0OTVjYSAxMDA2NDQKLS0tIGEv
bWFuMy9leHAxMC4zCisrKyBiL21hbjMvZXhwMTAuMwpAQCAtNzYsNyArNzYsNyBAQCBCZWZvcmUg
Z2xpYmMgMi4xOSwgdGhlIGdsaWJjIGltcGxlbWVudGF0aW9uIG9mIHRoZXNlIGZ1bmN0aW9ucyBk
aWQgbm90IHNldAogdG8KIC5CIEVSQU5HRQogd2hlbiBhbiB1bmRlcmZsb3cgZXJyb3Igb2NjdXJy
ZWQuCi0uXCIgaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/
aWQ9Njc4NworLlwiIGh0dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVn
LmNnaT9pZD02Nzg3CiAuU0ggU0VFIEFMU08KIC5CUiBjYnJ0ICgzKSwKIC5CUiBleHAgKDMpLApk
aWZmIC0tZ2l0IGEvbWFuMy9leHBtMS4zIGIvbWFuMy9leHBtMS4zCmluZGV4IGVkM2U3YzM0MS4u
ODMyNjYwZjJmIDEwMDY0NAotLS0gYS9tYW4zL2V4cG0xLjMKKysrIGIvbWFuMy9leHBtMS4zCkBA
IC0xMzAsNyArMTMwLDcgQEAgQzk5LCBQT1NJWC4xLTIwMDEsIFBPU0lYLjEtMjAwOC4KIC5cIiBC
U0QuCiAuU0ggQlVHUwogQmVmb3JlIGdsaWJjIDIuMTcsCi0uXCIgaHR0cDovL3NvdXJjZXMucmVk
aGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc3OAorLlwiIGh0dHBzOi8vd3d3LnNv
dXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02Nzc4CiBvbiBjZXJ0YWluIGFy
Y2hpdGVjdHVyZXMgKGUuZy4sIHg4NiwgYnV0IG5vdCB4ODZfNjQpCiAuQlIgZXhwbTEgKCkKIHJh
aXNlZCBhIGJvZ3VzIHVuZGVyZmxvdyBmbG9hdGluZy1wb2ludCBleGNlcHRpb24KQEAgLTEzOSw3
ICsxMzksNyBAQCBmb3Igc29tZSBsYXJnZSBuZWdhdGl2ZQogdmFsdWVzICh3aGVyZSB0aGUgZnVu
Y3Rpb24gcmVzdWx0IGFwcHJvYWNoZXMgXC0xKS4KIC5QUAogQmVmb3JlIGFwcHJveGltYXRlbHkg
Z2xpYmMgMi4xMSwKLS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3df
YnVnLmNnaT9pZD02ODE0CisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEv
c2hvd19idWcuY2dpP2lkPTY4MTQKIC5cIiBlLmcuLCBleHBtMSgxZTUpIHRocm91Z2ggZXhwbTEo
MS4wMDE5OTk3MDEyN2U1KSwKIC5cIiBidXQgbm90IGV4cG0xKDEuMDAxOTk5NzAxMjhlNSkgYW5k
IGJleW9uZC4KIC5CUiBleHBtMSAoKQpAQCAtMTU1LDcgKzE1NSw3IEBAIEJlZm9yZSBnbGliYyAy
LjExLAogLlwiIEZyb20gdGhlIHNvdXJjZSAoc3lzZGVwcy9pMzg2L2ZwdS9zX2V4cG0xLlMpIGl0
IGxvb2tzCiAuXCIgbGlrZSB0aGUgY2hhbmdlcyB3ZXJlIGluIGdsaWJjIDIuMTEuCiB0aGUgZ2xp
YmMgaW1wbGVtZW50YXRpb24gZGlkIG5vdCBzZXQKLS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQu
Y29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02Nzg4CisuXCIgaHR0cHM6Ly93d3cuc291cmNl
d2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3ODgKIC5JIGVycm5vCiB0bwogLkIg
RVJBTkdFCmRpZmYgLS1naXQgYS9tYW4zL2ZtYS4zIGIvbWFuMy9mbWEuMwppbmRleCBlMTcwMTM2
YzguLjYxNmEyNjU5MiAxMDA2NDQKLS0tIGEvbWFuMy9mbWEuMworKysgYi9tYW4zL2ZtYS4zCkBA
IC0xNDAsNyArMTQwLDcgQEAgaXMgcmFpc2VkLgogVGhlc2UgZnVuY3Rpb25zIGRvIG5vdCBzZXQK
IC5JUiBlcnJubyAuCiAuXCIgRklYTUUgLiBJcyBpdCBpbnRlbnRpb25hbCB0aGF0IHRoZXNlIGZ1
bmN0aW9ucyBkbyBub3Qgc2V0IGVycm5vPwotLlwiIEJ1ZyByYWlzZWQ6IGh0dHA6Ly9zb3VyY2Vz
LnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDEKKy5cIiBCdWcgcmFpc2Vk
OiBodHRwczovL3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njgw
MQogLlNIIEFUVFJJQlVURVMKIEZvciBhbiBleHBsYW5hdGlvbiBvZiB0aGUgdGVybXMgdXNlZCBp
biB0aGlzIHNlY3Rpb24sIHNlZQogLkJSIGF0dHJpYnV0ZXMgKDcpLgpkaWZmIC0tZ2l0IGEvbWFu
My9mbW9kLjMgYi9tYW4zL2Ztb2QuMwppbmRleCA1YzljMmJlMzguLjU3NTQ2ZmUzMiAxMDA2NDQK
LS0tIGEvbWFuMy9mbW9kLjMKKysrIGIvbWFuMy9mbW9kLjMKQEAgLTE0NSw3ICsxNDUsNyBAQCBh
bHNvIGNvbmZvcm1zIHRvCiBTVnI0LCA0LjNCU0QsIEM4OS4KIC5TSCBCVUdTCiBCZWZvcmUgZ2xp
YmMgMi4xMCwgdGhlIGdsaWJjIGltcGxlbWVudGF0aW9uIGRpZCBub3Qgc2V0Ci0uXCIgaHR0cDov
L3NvdXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc4NAorLlwiIGh0
dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02Nzg0CiAu
SSBlcnJubwogdG8KIC5CIEVET00KZGlmZiAtLWdpdCBhL21hbjMvaWxvZ2IuMyBiL21hbjMvaWxv
Z2IuMwppbmRleCBmNmUwMTZmZDEuLjNlMTQxZTMyMyAxMDA2NDQKLS0tIGEvbWFuMy9pbG9nYi4z
CisrKyBiL21hbjMvaWxvZ2IuMwpAQCAtMTMwLDcgKzEzMCw3IEBAIFR9CVRocmVhZCBzYWZldHkJ
TVQtU2FmZQogLlNIIFNUQU5EQVJEUwogQzk5LCBQT1NJWC4xLTIwMDEsIFBPU0lYLjEtMjAwOC4K
IC5TSCBCVUdTCi0uXCIgQnVnIHJhaXNlZDogaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9idWd6
aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc5NAorLlwiIEJ1ZyByYWlzZWQ6IGh0dHBzOi8vd3d3LnNv
dXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02Nzk0CiBCZWZvcmUgZ2xpYmMg
Mi4xNiwgdGhlIGZvbGxvd2luZyBidWdzIGV4aXN0ZWQgaW4gdGhlCiBnbGliYyBpbXBsZW1lbnRh
dGlvbiBvZiB0aGVzZSBmdW5jdGlvbnM6CiAuSVAgXFtidV0gMwpkaWZmIC0tZ2l0IGEvbWFuMy9q
MC4zIGIvbWFuMy9qMC4zCmluZGV4IDM1OGI3M2RkZi4uYzllZTA1NjFlIDEwMDY0NAotLS0gYS9t
YW4zL2owLjMKKysrIGIvbWFuMy9qMC4zCkBAIC0xMjgsNyArMTI4LDcgQEAgVGhlc2UgZnVuY3Rp
b25zIGRvIG5vdCByYWlzZSBleGNlcHRpb25zIGZvcgogLkJSIGZldGVzdGV4Y2VwdCAoMykuCiAu
XCIgZS5nLiwgajAoMS41ZTE2KQogLlwiIFRoaXMgaXMgaW50ZW50aW9uYWwuCi0uXCIgU2VlIGh0
dHA6Ly9zb3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDUKKy5c
IiBTZWUgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lk
PTY4MDUKIC5TSCBBVFRSSUJVVEVTCiBGb3IgYW4gZXhwbGFuYXRpb24gb2YgdGhlIHRlcm1zIHVz
ZWQgaW4gdGhpcyBzZWN0aW9uLCBzZWUKIC5CUiBhdHRyaWJ1dGVzICg3KS4KZGlmZiAtLWdpdCBh
L21hbjMvbGdhbW1hLjMgYi9tYW4zL2xnYW1tYS4zCmluZGV4IGYzZGVmM2EwNC4uYzg2YWMyNGMx
IDEwMDY0NAotLS0gYS9tYW4zL2xnYW1tYS4zCisrKyBiL21hbjMvbGdhbW1hLjMKQEAgLTE2Myw3
ICsxNjMsNyBAQCBUaGUKIGZ1bmN0aW9ucyBhcmUgbm9uc3RhbmRhcmQsIGJ1dCBwcmVzZW50IG9u
IHNldmVyYWwgb3RoZXIgc3lzdGVtcy4KIC5TSCBCVUdTCiBJbiBnbGliYyAyLjkgYW5kIGVhcmxp
ZXIsCi0uXCIgaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/
aWQ9Njc3NworLlwiIGh0dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVn
LmNnaT9pZD02Nzc3CiB3aGVuIGEgcG9sZSBlcnJvciBvY2N1cnMsCiAuSSBlcnJubwogaXMgc2V0
IHRvCmRpZmYgLS1naXQgYS9tYW4zL2xvZ2IuMyBiL21hbjMvbG9nYi4zCmluZGV4IDgxN2VmNjQ2
My4uM2ZiYjlhM2YxIDEwMDY0NAotLS0gYS9tYW4zL2xvZ2IuMworKysgYi9tYW4zL2xvZ2IuMwpA
QCAtMTEwLDcgKzExMCw3IEBAIFRoZXNlIGZ1bmN0aW9ucyBkbyBub3Qgc2V0CiAuSVIgZXJybm8g
LgogLlwiIEZJWE1FIC4gSXMgaXQgaW50ZW50aW9uYWwgdGhhdCB0aGVzZSBmdW5jdGlvbnMgZG8g
bm90IHNldCBlcnJubz8KIC5cIiBsb2coKSwgbG9nMigpLCBsb2cxMCgpIGRvIHNldCBlcnJubwot
LlwiIEJ1ZyByYWlzZWQ6IGh0dHA6Ly9zb3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19i
dWcuY2dpP2lkPTY3OTMKKy5cIiBCdWcgcmFpc2VkOiBodHRwczovL3d3dy5zb3VyY2V3YXJlLm9y
Zy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc5MwogLlwiCiAuXCIgLlNIIEhJU1RPUlkKIC5c
IiBUaGUKZGlmZiAtLWdpdCBhL21hbjMvbHJpbnQuMyBiL21hbjMvbHJpbnQuMwppbmRleCA4YzQw
NTU3OGUuLjg3ZGM2YWFlYyAxMDA2NDQKLS0tIGEvbWFuMy9scmludC4zCisrKyBiL21hbjMvbHJp
bnQuMwpAQCAtNzYsNyArNzYsNyBAQCBpcyByYWlzZWQuCiBUaGVzZSBmdW5jdGlvbnMgZG8gbm90
IHNldAogLklSIGVycm5vIC4KIC5cIiBGSVhNRSAuIElzIGl0IGludGVudGlvbmFsIHRoYXQgdGhl
c2UgZnVuY3Rpb25zIGRvIG5vdCBzZXQgZXJybm8/Ci0uXCIgQnVnIHJhaXNlZDogaHR0cDovL3Nv
dXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc5OAorLlwiIEJ1ZyBy
YWlzZWQ6IGh0dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9p
ZD02Nzk4CiAuU0ggQVRUUklCVVRFUwogRm9yIGFuIGV4cGxhbmF0aW9uIG9mIHRoZSB0ZXJtcyB1
c2VkIGluIHRoaXMgc2VjdGlvbiwgc2VlCiAuQlIgYXR0cmlidXRlcyAoNykuCmRpZmYgLS1naXQg
YS9tYW4zL2xyb3VuZC4zIGIvbWFuMy9scm91bmQuMwppbmRleCA4MzkyNzYwMWYuLmMyMDg0NTE4
YyAxMDA2NDQKLS0tIGEvbWFuMy9scm91bmQuMworKysgYi9tYW4zL2xyb3VuZC4zCkBAIC03OSw3
ICs3OSw3IEBAIGlzIHJhaXNlZC4KIFRoZXNlIGZ1bmN0aW9ucyBkbyBub3Qgc2V0CiAuSVIgZXJy
bm8gLgogLlwiIEZJWE1FIC4gSXMgaXQgaW50ZW50aW9uYWwgdGhhdCB0aGVzZSBmdW5jdGlvbnMg
ZG8gbm90IHNldCBlcnJubz8KLS5cIiBCdWcgcmFpc2VkOiBodHRwOi8vc291cmNlcy5yZWRoYXQu
Y29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02Nzk3CisuXCIgQnVnIHJhaXNlZDogaHR0cHM6
Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3OTcKIC5TSCBB
VFRSSUJVVEVTCiBGb3IgYW4gZXhwbGFuYXRpb24gb2YgdGhlIHRlcm1zIHVzZWQgaW4gdGhpcyBz
ZWN0aW9uLCBzZWUKIC5CUiBhdHRyaWJ1dGVzICg3KS4KZGlmZiAtLWdpdCBhL21hbjMvbWFsbG9w
dC4zIGIvbWFuMy9tYWxsb3B0LjMKaW5kZXggZjRmMzFlZGEzLi5mOWFmMzhlZTIgMTAwNjQ0Ci0t
LSBhL21hbjMvbWFsbG9wdC4zCisrKyBiL21hbjMvbWFsbG9wdC4zCkBAIC00NjIsNyArNDYyLDcg
QEAgYSBjYWxsIG9mIHRoZSBmb3JtOgogLlwiIHNldHRpbmcgdGhlIE1fTVhGQVNUIGxpbWl0IHJv
dW5kcyB1cDogICAgKHMgKyBTSVpFX1NaKSAmIH5NQUxMT0NfQUxJR05fTUFTSykKIC5cIiBtYWxs
b2MgcmVxdWVzdHMgYXJlIHJvdW5kZWQgdXA6CiAuXCIgICAgKHJlcSkgKyBTSVpFX1NaICsgTUFM
TE9DX0FMSUdOX01BU0spICYgfk1BTExPQ19BTElHTl9NQVNLCi0uXCIgaHR0cDovL3NvdXJjZXMu
cmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MTIxMjkKKy5cIiBodHRwczovL3d3
dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MTIxMjkKIC5QUAogLmlu
ICs0bgogLkVYCkBAIC00OTQsNyArNDk0LDcgQEAgdGhlIGJ5dGVzIG9mIHRoZSByZWdpb24gYXJl
IGluaXRpYWxpemVkIHRvIHRoZSBieXRlIHNwZWNpZmllZCBpbgogSG93ZXZlciwgdGhlcmUgaXMg
YW4KIC5SSSBvZmYtYnktIHNpemVvZihzaXplX3QpCiBlcnJvciBpbiB0aGUgaW1wbGVtZW50YXRp
b246Ci0uXCIgRklYTUUgLiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3df
YnVnLmNnaT9pZD0xMjE0MAorLlwiIEZJWE1FIC4gaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcv
YnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTEyMTQwCiBpbnN0ZWFkIG9mIGluaXRpYWxpemluZyBw
cmVjaXNlbHkgdGhlIGJsb2NrIG9mIG1lbW9yeQogYmVpbmcgZnJlZWQgYnkgdGhlIGNhbGwKIC5J
UiBmcmVlKHApICwKZGlmZiAtLWdpdCBhL21hbjMvcG93LjMgYi9tYW4zL3Bvdy4zCmluZGV4IGI5
YTY2YzkyOS4uYTFjNDhjMzFiIDEwMDY0NAotLS0gYS9tYW4zL3Bvdy4zCisrKyBiL21hbjMvcG93
LjMKQEAgLTY2LDcgKzY2LDcgQEAgSWYgcmVzdWx0IHVuZGVyZmxvd3MsIGFuZCBpcyBub3QgcmVw
cmVzZW50YWJsZSwKIGEgcmFuZ2UgZXJyb3Igb2NjdXJzLAogYW5kIDAuMCB3aXRoIHRoZSBhcHBy
b3ByaWF0ZSBzaWduIGlzIHJldHVybmVkLgogLlwiIFBPU0lYLjEgZG9lcyBub3Qgc3BlY2lmeSB0
aGUgc2lnbiBvZiB0aGUgemVybywKLS5cIiBidXQgaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9i
dWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MjY3OAorLlwiIGJ1dCBodHRwczovL3d3dy5zb3VyY2V3
YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MjY3OAogLlwiIHBvaW50cyBvdXQgdGhh
dCB0aGUgemVybyBoYXMgdGhlIHdyb25nIHNpZ24gaW4gc29tZSBjYXNlcy4KIC5QUAogLlwiIHBv
dyhcKCstMCwgPDAgW1tvZGRdXSkgPSBIVUdFX1ZBTCoKQEAgLTI0OSw3ICsyNDksNyBAQCBpcyBh
IE5hTiwgdGhlIHJlc3VsdCBpcyBhIE5hTi4KIC5TSCBFUlJPUlMKIC5cIiBGSVhNRSAuIHJldmll
dyBzdGF0dXMgb2YgdGhpcyBlcnJvcgogLlwiIGxvbmdzdGFuZGluZyBidWcgcmVwb3J0IGZvciBn
bGliYzoKLS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNn
aT9pZD0zNjkKKy5cIiBodHRwczovL3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1
Zy5jZ2k/aWQ9MzY5CiAuXCIgRm9yIG5lZ2F0aXZlIHgsIGFuZCAtbGFyZ2UgYW5kICtsYXJnZSB5
LCBnbGliYyAyLjggZ2l2ZXMgaW5jb3JyZWN0CiAuXCIgcmVzdWx0cwogLlwiIHBvdygtMC41LC1E
QkxfTUFYKT1uYW4KQEAgLTM1MSwxNCArMzUxLDE0IEBAIFRoaXMgcHJvYmxlbSB3YXMgZml4ZWQK
IGluIGdsaWJjIDIuMjguCiAuUFAKIEEgbnVtYmVyIG9mIGJ1Z3MKLS5cIiBodHRwOi8vc291cmNl
cy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD0zODY2CisuXCIgaHR0cHM6Ly93
d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTM4NjYKIGluIHRoZSBn
bGliYyBpbXBsZW1lbnRhdGlvbiBvZgogLkJSIHBvdyAoKQogd2VyZSBmaXhlZCBpbiBnbGliYyAy
LjE2LgogLlBQCiBJbiBnbGliYyAyLjkgYW5kIGVhcmxpZXIsCiAuXCIKLS5cIiBodHRwOi8vc291
cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02Nzc2CisuXCIgaHR0cHM6
Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3NzYKIHdoZW4g
YSBwb2xlIGVycm9yIG9jY3VycywKIC5JIGVycm5vCiBpcyBzZXQgdG8KZGlmZiAtLWdpdCBhL21h
bjMvcHRocmVhZF9hdHRyX3NldGd1YXJkc2l6ZS4zIGIvbWFuMy9wdGhyZWFkX2F0dHJfc2V0Z3Vh
cmRzaXplLjMKaW5kZXggZjYwMDdjNjgyLi4wMWQ5YWY0N2MgMTAwNjQ0Ci0tLSBhL21hbjMvcHRo
cmVhZF9hdHRyX3NldGd1YXJkc2l6ZS4zCisrKyBiL21hbjMvcHRocmVhZF9hdHRyX3NldGd1YXJk
c2l6ZS4zCkBAIC0xNDUsNyArMTQ1LDcgQEAgYWxsb2NhdGluZyBleHRyYSBzcGFjZSBhdCB0aGUg
ZW5kIG9mIHRoZSBzdGFjayBmb3IgdGhlIGd1YXJkIGFyZWEuCiAuXCIgd2hpY2ggbG9va3MgcHJl
dHR5IGNsZWFybHkgdG8gYmUgaW4gdmlvbGF0aW9uIG9mIFBPU0lYLgogLlwiCiAuXCIgRmlsZWQg
YnVnLCAyMiBPY3QgMjAwODoKLS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxh
L3Nob3dfYnVnLmNnaT9pZD02OTczCisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVn
emlsbGEvc2hvd19idWcuY2dpP2lkPTY5NzMKIC5cIgogLlwiIE9sZGVyIHJlcG9ydHM6CiAuXCIg
aHR0cHMvL2J1Z3ppbGxhLnJlZGhhdC5jb20vc2hvd19idWcuY2dpP2lkPTQzNTMzNwpkaWZmIC0t
Z2l0IGEvbWFuMy9yY21kLjMgYi9tYW4zL3JjbWQuMwppbmRleCBhMTcyMzhhZjguLjM1MTY4YzRj
MyAxMDA2NDQKLS0tIGEvbWFuMy9yY21kLjMKKysrIGIvbWFuMy9yY21kLjMKQEAgLTI5Myw3ICsy
OTMsNyBAQCBhbmQKIC5CUiBpcnVzZXJva19hZiAoKQogYXJlIGRlY2xhcmVkIGluIGdsaWJjIGhl
YWRlcnMgb25seSBzaW5jZSBnbGliYyAyLjEyLgogLlwiIEJ1ZyBmaWxlZCAyNSBOb3YgMjAwNzoK
LS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD01
Mzk5CisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dp
P2lkPTUzOTkKIC5TSCBTRUUgQUxTTwogLkJSIHJsb2dpbiAoMSksCiAuQlIgcnNoICgxKSwKZGlm
ZiAtLWdpdCBhL21hbjMvcmVtYWluZGVyLjMgYi9tYW4zL3JlbWFpbmRlci4zCmluZGV4IDBkZTFk
MjZkMy4uMTljYTYyNTQ0IDEwMDY0NAotLS0gYS9tYW4zL3JlbWFpbmRlci4zCisrKyBiL21hbjMv
cmVtYWluZGVyLjMKQEAgLTE5OSw3ICsxOTksNyBAQCBBdm9pZCB0aGUgdXNlIG9mIHRoZXNlIGZ1
bmN0aW9ucyBpbiBmYXZvciBvZgogZXRjLgogLlNIIEJVR1MKIEJlZm9yZSBnbGliYyAyLjE1LAot
LlwiIGh0dHA6Ly9zb3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3
NzkKKy5cIiBodHRwczovL3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/
aWQ9Njc3OQogdGhlIGNhbGwKIC5QUAogLmluICs0bgpAQCAtMjEyLDcgKzIxMiw3IEBAIHJldHVy
bmVkIGEgTmFOLCBhcyBleHBlY3RlZCwgYnV0IHdyb25nbHkgY2F1c2VkIGEgZG9tYWluIGVycm9y
LgogU2luY2UgZ2xpYmMgMi4xNSwgYSBzaWxlbnQgTmFOIChpLmUuLCBubyBkb21haW4gZXJyb3Ip
IGlzIHJldHVybmVkLgogLlBQCiBCZWZvcmUgZ2xpYmMgMi4xNSwKLS5cIiBodHRwOi8vc291cmNl
cy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02NzgzCisuXCIgaHR0cHM6Ly93
d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3ODMKIC5JIGVycm5v
CiB3YXMgbm90IHNldCB0bwogLkIgRURPTQpkaWZmIC0tZ2l0IGEvbWFuMy9yZW1xdW8uMyBiL21h
bjMvcmVtcXVvLjMKaW5kZXggYzIyMzJlZTBlLi44Yzc2NGM5ZTAgMTAwNjQ0Ci0tLSBhL21hbjMv
cmVtcXVvLjMKKysrIGIvbWFuMy9yZW1xdW8uMwpAQCAtMTEwLDcgKzExMCw3IEBAIGlzIHJhaXNl
ZC4KIFRoZXNlIGZ1bmN0aW9ucyBkbyBub3Qgc2V0CiAuSVIgZXJybm8gLgogLlwiIEZJWE1FIC4g
SXMgaXQgaW50ZW50aW9uYWwgdGhhdCB0aGVzZSBmdW5jdGlvbnMgZG8gbm90IHNldCBlcnJubz8K
LS5cIiBCdWcgcmFpc2VkOiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3Nob3df
YnVnLmNnaT9pZD02ODAyCisuXCIgQnVnIHJhaXNlZDogaHR0cHM6Ly93d3cuc291cmNld2FyZS5v
cmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDIKIC5TSCBBVFRSSUJVVEVTCiBGb3IgYW4g
ZXhwbGFuYXRpb24gb2YgdGhlIHRlcm1zIHVzZWQgaW4gdGhpcyBzZWN0aW9uLCBzZWUKIC5CUiBh
dHRyaWJ1dGVzICg3KS4KZGlmZiAtLWdpdCBhL21hbjMvc2NhbGIuMyBiL21hbjMvc2NhbGIuMwpp
bmRleCBmMTE2Yzc0ZDQuLmEyNWNhMDc4ZiAxMDA2NDQKLS0tIGEvbWFuMy9zY2FsYi4zCisrKyBi
L21hbjMvc2NhbGIuMwpAQCAtMTk2LDggKzE5Niw4IEBAIGlzIG5ldmVydGhlbGVzcyBwcmVzZW50
IG9uIHNldmVyYWwgb3RoZXIgc3lzdGVtcwogLlwiIEJTRHMsIFRydTY0LCBIUC1VWCAxMSwgSXJp
eCA2LjU7IHNjYWxibCgpIGlzIG9uIEhQLVVYIDExIGFuZCBUcnU2NC4KIC5TSCBCVUdTCiBCZWZv
cmUgZ2xpYmMgMi4yMCwKLS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3ppbGxhL3No
b3dfYnVnLmNnaT9pZD02ODAzCi0uXCIgaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9idWd6aWxs
YS9zaG93X2J1Zy5jZ2k/aWQ9NjgwNAorLlwiIGh0dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1
Z3ppbGxhL3Nob3dfYnVnLmNnaT9pZD02ODAzCisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5v
cmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDQKIHRoZXNlIGZ1bmN0aW9ucyBkaWQgbm90
IHNldAogLkkgZXJybm8KIGZvciBkb21haW4gYW5kIHJhbmdlIGVycm9ycy4KZGlmZiAtLWdpdCBh
L21hbjMvc2NhbGJsbi4zIGIvbWFuMy9zY2FsYmxuLjMKaW5kZXggNGZmZTFhYzZhLi40YTZhY2M1
OGIgMTAwNjQ0Ci0tLSBhL21hbjMvc2NhbGJsbi4zCisrKyBiL21hbjMvc2NhbGJsbi4zCkBAIC0x
NjcsNyArMTY3LDcgQEAgaXMgZXF1aXZhbGVudCB0bwogLkJSIGxkZXhwICgzKS4KIC5TSCBCVUdT
CiBCZWZvcmUgZ2xpYmMgMi4yMCwKLS5cIiBodHRwOi8vc291cmNlcy5yZWRoYXQuY29tL2J1Z3pp
bGxhL3Nob3dfYnVnLmNnaT9pZD02ODAzCisuXCIgaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcv
YnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDMKIHRoZXNlIGZ1bmN0aW9ucyBkaWQgbm90IHNl
dAogLkkgZXJybm8KIGZvciByYW5nZSBlcnJvcnMuCmRpZmYgLS1naXQgYS9tYW4zL3Npbi4zIGIv
bWFuMy9zaW4uMwppbmRleCBjY2ZkZGY4N2EuLjY1Mzg2ZTEwYSAxMDA2NDQKLS0tIGEvbWFuMy9z
aW4uMworKysgYi9tYW4zL3Npbi4zCkBAIC0xMDcsNyArMTA3LDcgQEAgYWxzbyBjb25mb3JtcyB0
bwogU1ZyNCwgNC4zQlNELCBDODkuCiAuU0ggQlVHUwogQmVmb3JlIGdsaWJjIDIuMTAsIHRoZSBn
bGliYyBpbXBsZW1lbnRhdGlvbiBkaWQgbm90IHNldAotLlwiIGh0dHA6Ly9zb3VyY2VzLnJlZGhh
dC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY3ODEKKy5cIiBodHRwczovL3d3dy5zb3Vy
Y2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njc4MQogLkkgZXJybm8KIHRvCiAu
QiBFRE9NCmRpZmYgLS1naXQgYS9tYW4zL3RnYW1tYS4zIGIvbWFuMy90Z2FtbWEuMwppbmRleCA3
NDk3MjA3NDEuLjI5OGU2ZjEwOSAxMDA2NDQKLS0tIGEvbWFuMy90Z2FtbWEuMworKysgYi9tYW4z
L3RnYW1tYS4zCkBAIC0xODgsNyArMTg4LDcgQEAgdGhhdCByZXR1cm5zIHNvbWV0aGluZyBlbHNl
IChzZWUKIGZvciBkZXRhaWxzKS4KIC5TSCBCVUdTCiBCZWZvcmUgZ2xpYmMgMi4xOCwgdGhlIGds
aWJjIGltcGxlbWVudGF0aW9uIG9mIHRoZXNlIGZ1bmN0aW9ucyBkaWQgbm90IHNldAotLlwiIGh0
dHA6Ly9zb3VyY2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDkKKy5c
IiBodHRwczovL3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njgw
OQogLkkgZXJybm8KIHRvCiAuQiBFRE9NCkBAIC0xOTcsNyArMTk3LDcgQEAgd2hlbgogaXMgbmVn
YXRpdmUgaW5maW5pdHkuCiAuUFAKIEJlZm9yZSBnbGliYyAyLjE5LAotLlwiIGh0dHA6Ly9zb3Vy
Y2VzLnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MTAKKy5cIiBodHRwczov
L3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9NjgxMAogdGhlIGds
aWJjIGltcGxlbWVudGF0aW9uIG9mIHRoZXNlIGZ1bmN0aW9ucyBkaWQgbm90IHNldAogLkkgZXJy
bm8KIHRvCmRpZmYgLS1naXQgYS9tYW4zL3kwLjMgYi9tYW4zL3kwLjMKaW5kZXggZTcwMzNmOGY4
Li5hMmM5ZTIxNzQgMTAwNjQ0Ci0tLSBhL21hbjMveTAuMworKysgYi9tYW4zL3kwLjMKQEAgLTE4
MSw3ICsxODEsNyBAQCBObwogLkIgRkVfVU5ERVJGTE9XCiBleGNlcHRpb24gaXMgcmV0dXJuZWQg
YnkKIC5cIiBUaGlzIGlzIGludGVuZGVkIGJlaGF2aW9yCi0uXCIgU2VlIGh0dHA6Ly9zb3VyY2Vz
LnJlZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDYKKy5cIiBTZWUgaHR0cHM6
Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTY4MDYKIC5CUiBm
ZXRlc3RleGNlcHQgKDMpCiBmb3IgdGhpcyBjYXNlLgogLlRQCkBAIC0yNDMsNyArMjQzLDcgQEAg
YW5kIG5vCiBleGNlcHRpb24gd2FzIHJhaXNlZC4KIC5QUAogQmVmb3JlIGdsaWJjIDIuMTcsCi0u
XCIgaHR0cDovL3NvdXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9Njgw
OAorLlwiIGh0dHBzOi8vd3d3LnNvdXJjZXdhcmUub3JnL2J1Z3ppbGxhL3Nob3dfYnVnLmNnaT9p
ZD02ODA4CiBkaWQgbm90IHNldAogLkkgZXJybm8KIGZvciAicmFuZ2UgZXJyb3I6IHJlc3VsdCB1
bmRlcmZsb3ciLgpkaWZmIC0tZ2l0IGEvbWFuNy9pbm90aWZ5LjcgYi9tYW43L2lub3RpZnkuNwpp
bmRleCA5MmY4MzNhZmEuLjRiOWZhMDIwMCAxMDA2NDQKLS0tIGEvbWFuNy9pbm90aWZ5LjcKKysr
IGIvbWFuNy9pbm90aWZ5LjcKQEAgLTkwLDcgKzkwLDcgQEAgc3RydWN0IGlub3RpZnlfZXZlbnQg
ewogLlwiIEZJWE1FIC4gVGhlIHR5cGUgb2YgdGhlICd3ZCcgZmllbGQgc2hvdWxkIHByb2JhYmx5
IGJlICJpbnQzMl90Ii4KIC5cIiBJIHN1Ym1pdHRlZCBhIHBhdGNoIHRvIGZpeCB0aGlzLiAgU2Vl
IHRoZSBMS01MIHRocmVhZAogLlwiICJbcGF0Y2hdIEZpeCB0eXBlIGVycm9ycyBpbiBpbm90aWZ5
IGludGVyZmFjZXMiLCAxOCBOb3YgMjAwOAotLlwiIGdsaWJjIGJ1ZyBmaWxlZDogaHR0cDovL3Nv
dXJjZXMucmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9NzA0MAorLlwiIGdsaWJj
IGJ1ZyBmaWxlZDogaHR0cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcu
Y2dpP2lkPTcwNDAKICAgICB1aW50MzJfdCBtYXNrOyAgICAgLyogTWFzayBkZXNjcmliaW5nIGV2
ZW50ICovCiAgICAgdWludDMyX3QgY29va2llOyAgIC8qIFVuaXF1ZSBjb29raWUgYXNzb2NpYXRp
bmcgcmVsYXRlZAogICAgICAgICAgICAgICAgICAgICAgICAgICBldmVudHMgKGZvciByZW5hbWUo
MikpICovCmRpZmYgLS1naXQgYS9tYW43L3RjcC43IGIvbWFuNy90Y3AuNwppbmRleCBjMGM0YTgz
OGIuLmRkYTcxNGFmYiAxMDA2NDQKLS0tIGEvbWFuNy90Y3AuNworKysgYi9tYW43L3RjcC43CkBA
IC0xNDI2LDcgKzE0MjYsNyBAQCBpcyByZXR1cm5lZC4KIC5CIFNJT0NJTlEKIGlzIGRlZmluZWQg
aW4KIC5JUiA8bGludXgvc29ja2lvcy5oPiAuCi0uXCIgRklYTUUgaHR0cDovL3NvdXJjZXMucmVk
aGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MTIwMDIsCisuXCIgRklYTUUgaHR0cHM6
Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTEyMDAyLAogLlwi
IGZpbGVkIDIwMTAtMDktMTAsIG1heSBjYXVzZSBTSU9DSU5RIHRvIGJlIGRlZmluZWQgaW4gZ2xp
YmMgaGVhZGVycwogQWx0ZXJuYXRpdmVseSwKIHlvdSBjYW4gdXNlIHRoZSBzeW5vbnltb3VzCkBA
IC0xNDc3LDcgKzE0NzcsNyBAQCBpcyByZXR1cm5lZC4KIC5CIFNJT0NPVVRRCiBpcyBkZWZpbmVk
IGluCiAuSVIgPGxpbnV4L3NvY2tpb3MuaD4gLgotLlwiIEZJWE1FIC4gaHR0cDovL3NvdXJjZXMu
cmVkaGF0LmNvbS9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MTIwMDIsCisuXCIgRklYTUUgLiBo
dHRwczovL3d3dy5zb3VyY2V3YXJlLm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9MTIwMDIs
CiAuXCIgZmlsZWQgMjAxMC0wOS0xMCwgbWF5IGNhdXNlIFNJT0NPVVRRIHRvIGJlIGRlZmluZWQg
aW4gZ2xpYmMgaGVhZGVycwogQWx0ZXJuYXRpdmVseSwKIHlvdSBjYW4gdXNlIHRoZSBzeW5vbnlt
b3VzCmRpZmYgLS1naXQgYS9tYW43L3VuaXguNyBiL21hbjcvdW5peC43CmluZGV4IGU5ZmU0MGM5
Yi4uZTIzY2NiYzEyIDEwMDY0NAotLS0gYS9tYW43L3VuaXguNworKysgYi9tYW43L3VuaXguNwpA
QCAtNjY1LDcgKzY2NSw3IEBAIGlzIHJldHVybmVkLgogLkIgU0lPQ0lOUQogaXMgZGVmaW5lZCBp
bgogLklSIDxsaW51eC9zb2NraW9zLmg+IC4KLS5cIiBGSVhNRSAuIGh0dHA6Ly9zb3VyY2VzLnJl
ZGhhdC5jb20vYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTEyMDAyLAorLlwiIEZJWE1FIC4gaHR0
cHM6Ly93d3cuc291cmNld2FyZS5vcmcvYnVnemlsbGEvc2hvd19idWcuY2dpP2lkPTEyMDAyLAog
LlwiIGZpbGVkIDIwMTAtMDktMTAsIG1heSBjYXVzZSBTSU9DSU5RIHRvIGJlIGRlZmluZWQgaW4g
Z2xpYmMgaGVhZGVycwogQWx0ZXJuYXRpdmVseSwKIHlvdSBjYW4gdXNlIHRoZSBzeW5vbnltb3Vz
Ci0tIAoyLjMxLjEKCg==
--0000000000002d837b05f76703e6--

