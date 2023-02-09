Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE2EC690FF5
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 19:09:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjBISJ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 13:09:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbjBISJz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 13:09:55 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D74D63115
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 10:09:53 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id p24-20020a056830131800b0068d4b30536aso785280otq.9
        for <linux-man@vger.kernel.org>; Thu, 09 Feb 2023 10:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=liHBzUhClEesjyVGG9YxIfJzGId6fvXAh0sXJbB8ydU=;
        b=bQnAC/qJLt/kaMUyI7LMvZmofh/dAWjYlrqfqplG3kxV1ZjYRqLpn+oeF4uzy1I+v+
         CAHAZOt8wgqIzgobYuXh6BhWBsHA/1RkFJAl540YlPXBvcMmTx/dJNLHtdS+UbX4gU2f
         LnnQnmnEdJMXSsPQjadxcyArccYZRNPms7iSMw2beam6eFRlsgUfq98bB8BDAkrcJzaS
         nMOB1L5AHD35Toho2etdNJSvA1u6IChKUgGBGKKmyNMsLiI/q/0LkAT97SQdOyP6VUCd
         hEfccyIVx7DJYZj+IuY+9JIOWaeXciEupgnNEo44bCOWthucS/du53BKt08FApGtdkbg
         Rc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=liHBzUhClEesjyVGG9YxIfJzGId6fvXAh0sXJbB8ydU=;
        b=iwJ7LiIRlICi+a5AhIjSWa3hRqmNpEishU13JVwxdIXC/lmDohHIPrQjCiUaB3j/Ml
         EOUNrDDhAlZZkH+p35arH5XvT/1a9/ssx97cIeb+hp07CE+4u8po4HcJIeC/zaYLXZV0
         iUeLl3P4I8p4i2Jm5hnVhGMQ1qg+UkWPOFmYEykTz9BCJ7nkI+n2NvEQxLm1IkQCJ8+I
         FPGZiorEL7fk7qOfoCorUB1Ktm8GbhCmbbJp+VFN5w8UjPqyUl4JxK28Jt08hngm9IeE
         8gWj2R57+JrbHWBJJstxbDuEbH40mpy+OeH12MiKU+A/+juBpAKxr5IDQCl0vrucNFfG
         uuAg==
X-Gm-Message-State: AO0yUKVFmXqUyNBaQ9DMJ8UC+hMLPk/EY9R5O1ynI54j8EufUTW73hDC
        S0SgB6paXMJcKfEKYVwXHzkXWgVEYnA=
X-Google-Smtp-Source: AK7set8hq6A9KWTCfhvr5JsgKfIcSJwnB1iJlduaMbfyqDRclQ/PstEXRUD3P6tULrKL3/U2ayjg5Q==
X-Received: by 2002:a9d:647:0:b0:68b:cb6a:d1c5 with SMTP id 65-20020a9d0647000000b0068bcb6ad1c5mr6739157otn.36.1675966192762;
        Thu, 09 Feb 2023 10:09:52 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id q25-20020a05683022d900b00686a19ffef1sm975569otc.80.2023.02.09.10.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 10:09:52 -0800 (PST)
Date:   Thu, 9 Feb 2023 12:09:50 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 05/20] many pages: srcfix (^ -> \[ha])
Message-ID: <20230209180950.gj5ckk6tg2ohn5fg@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tzj5vs33djqvzedj"
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


--tzj5vs33djqvzedj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Use correct *roff special character for hat/caret/circumflex accent.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man2/adjtimex.2         |  2 +-
 man2/eventfd.2          |  2 +-
 man2/mmap2.2            |  2 +-
 man2/perf_event_open.2  |  2 +-
 man2/quotactl.2         |  4 +--
 man2/shmget.2           |  4 +--
 man2/times.2            |  2 +-
 man3/drand48.3          |  6 ++--
 man3/ldexp.3            |  2 +-
 man3/random.3           |  6 ++--
 man3/tgamma.3           |  2 +-
 man5/proc.5             |  4 +--
 man7/mount_namespaces.7 |  2 +-
 man7/random.7           |  2 +-
 man7/sched.7            |  2 +-
 man7/tcp.7              |  6 ++--
 man7/udplite.7          |  6 ++--
 man7/units.7            | 64 ++++++++++++++++++++---------------------
 man7/unix.7             |  4 +--
 man7/utf-8.7            |  2 +-
 20 files changed, 63 insertions(+), 63 deletions(-)

diff --git a/man2/adjtimex.2 b/man2/adjtimex.2
index 9f278674a..d76ec04a9 100644
--- a/man2/adjtimex.2
+++ b/man2/adjtimex.2
@@ -571,7 +571,7 @@ and
 .I stabil
 are ppm (parts per million) with a 16-bit fractional part,
 which means that a value of 1 in one of those fields
-actually means 2^-16 ppm, and 2^16=3D65536 is 1 ppm.
+actually means 2\[ha]-16 ppm, and 2\[ha]16=3D65536 is 1 ppm.
 This is the case for both input values (in the case of
 .IR freq )
 and output values.
diff --git a/man2/eventfd.2 b/man2/eventfd.2
index c1cb40894..5f25ca82b 100644
--- a/man2/eventfd.2
+++ b/man2/eventfd.2
@@ -183,7 +183,7 @@ event.
 As noted above,
 .BR write (2)
 can never overflow the counter.
-However an overflow can occur if 2^64
+However an overflow can occur if 2\[ha]64
 eventfd "signal posts" were performed by the KAIO
 subsystem (theoretically possible, but practically unlikely).
 If an overflow has occurred, then
diff --git a/man2/mmap2.2 b/man2/mmap2.2
index 1c541d55b..1fd5732ad 100644
--- a/man2/mmap2.2
+++ b/man2/mmap2.2
@@ -36,7 +36,7 @@ file in 4096-byte units (instead of bytes, as is done by
 .BR mmap (2)).
 This enables applications that use a 32-bit
 .I off_t
-to map large files (up to 2^44 bytes).
+to map large files (up to 2\[ha]44 bytes).
 .SH RETURN VALUE
 On success,
 .BR mmap2 ()
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index dd90ab007..68f68fe31 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -1681,7 +1681,7 @@ are logged into a ring-buffer.
 This ring-buffer is created and accessed through
 .BR mmap (2).
 .PP
-The mmap size should be 1+2^n pages, where the first page is a
+The mmap size should be 1+2\[ha]n pages, where the first page is a
 metadata page
 .RI ( "struct perf_event_mmap_page" )
 that contains various
diff --git a/man2/quotactl.2 b/man2/quotactl.2
index 47655d516..30e93966f 100644
--- a/man2/quotactl.2
+++ b/man2/quotactl.2
@@ -88,11 +88,11 @@ The original quota format.
 .TP
 .B QFMT_VFS_V0
 The standard VFS v0 quota format, which can handle 32-bit UIDs and GIDs
-and quota limits up to 2^42 bytes and 2^32 inodes.
+and quota limits up to 2\[ha]42 bytes and 2\[ha]32 inodes.
 .TP
 .B QFMT_VFS_V1
 A quota format that can handle 32-bit UIDs and GIDs
-and quota limits of 2^63 - 1 bytes and 2^63 - 1 inodes.
+and quota limits of 2\[ha]63 - 1 bytes and 2\[ha]63 - 1 inodes.
 .RE
 .IP
 The
diff --git a/man2/shmget.2 b/man2/shmget.2
index e12915dd8..484dd317f 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -297,7 +297,7 @@ the default value for this limit is:
 .IP
 .in +4n
 .EX
-ULONG_MAX - 2^24
+ULONG_MAX - 2\[ha]24
 .EE
 .in
 .IP
@@ -340,7 +340,7 @@ the default value for this limit is:
 .IP
 .in +4n
 .EX
-ULONG_MAX - 2^24
+ULONG_MAX - 2\[ha]24
 .EE
 .in
 .IP
diff --git a/man2/times.2 b/man2/times.2
index 4f6aac578..745867e8e 100644
--- a/man2/times.2
+++ b/man2/times.2
@@ -155,7 +155,7 @@ On Linux, the "arbitrary point in the past" from which =
the return value of
 .BR times ()
 is measured has varied across kernel versions.
 On Linux 2.4 and earlier, this point is the moment the system was booted.
-Since Linux 2.6, this point is \fI(2^32/HZ) \- 300\fP
+Since Linux 2.6, this point is \fI(2\[ha]32/HZ) \- 300\fP
 seconds before system boot time.
 This variability across kernel versions (and across UNIX implementations),
 combined with the fact that the returned value may overflow the range of
diff --git a/man3/drand48.3 b/man3/drand48.3
index f9425a91e..a93b8655e 100644
--- a/man3/drand48.3
+++ b/man3/drand48.3
@@ -70,14 +70,14 @@ The
 and
 .BR nrand48 ()
 functions return nonnegative
-long integers uniformly distributed over the interval [0,\ 2^31).
+long integers uniformly distributed over the interval [0,\ 2\[ha]31).
 .PP
 The
 .BR mrand48 ()
 and
 .BR jrand48 ()
 functions return signed long
-integers uniformly distributed over the interval [\-2^31,\ 2^31).
+integers uniformly distributed over the interval [\-2\[ha]31,\ 2\[ha]31).
 .PP
 The
 .BR srand48 (),
@@ -110,7 +110,7 @@ according to the linear congruential formula:
 .PP
 The parameter
 .I m
-=3D 2^48, hence 48-bit integer arithmetic is performed.
+=3D 2\[ha]48, hence 48-bit integer arithmetic is performed.
 Unless
 .BR lcong48 ()
 is called,
diff --git a/man3/ldexp.3 b/man3/ldexp.3
index 6ee0f5495..fc944b729 100644
--- a/man3/ldexp.3
+++ b/man3/ldexp.3
@@ -46,7 +46,7 @@ by 2 raised to the power
 .IR exp .
 .SH RETURN VALUE
 On success, these functions return
-.IR "x * (2^exp)" .
+.IR "x * (2\[ha]exp)" .
 .PP
 If
 .I exp
diff --git a/man3/random.3 b/man3/random.3
index 5ad72d878..7bc300d7b 100644
--- a/man3/random.3
+++ b/man3/random.3
@@ -49,9 +49,9 @@ The
 function uses a nonlinear additive feedback random
 number generator employing a default table of size 31 long integers to
 return successive pseudo-random numbers in
-the range from 0 to 2^31\ \-\ 1.
+the range from 0 to 2\[ha]31\ \-\ 1.
 The period of this random number generator is very large, approximately
-.IR "16\ *\ ((2^31)\ \-\ 1)" .
+.IR "16\ *\ ((2\[ha]31)\ \-\ 1)" .
 .PP
 The
 .BR srandom ()
@@ -105,7 +105,7 @@ or be the result of a previous call of
 The
 .BR random ()
 function returns a value between 0 and
-.IR "(2^31)\ \-\ 1" .
+.IR "(2\[ha]31)\ \-\ 1" .
 The
 .BR srandom ()
 function returns no value.
diff --git a/man3/tgamma.3 b/man3/tgamma.3
index d7318c2cb..1ed27bf66 100644
--- a/man3/tgamma.3
+++ b/man3/tgamma.3
@@ -42,7 +42,7 @@ These functions calculate the Gamma function of
 The Gamma function is defined by
 .PP
 .RS
-Gamma(x) =3D integral from 0 to infinity of t^(x\-1) e^\-t dt
+Gamma(x) =3D integral from 0 to infinity of t\[ha](x\-1) e\[ha]\-t dt
 .RE
 .PP
 It is defined for every real number except for nonpositive integers.
diff --git a/man5/proc.5 b/man5/proc.5
index 7d09da6bb..b253e42f5 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -3073,7 +3073,7 @@ The size in bytes of a certain order is given by the =
formula:
 .IP
 .in +4n
 .EX
-(2^order)\ *\ PAGE_SIZE
+(2\[ha]order)\ *\ PAGE_SIZE
 .EE
 .in
 .IP
@@ -5195,7 +5195,7 @@ On 32-bit platforms, 32768 is the maximum value for
 .IR pid_max .
 On 64-bit systems,
 .I pid_max
-can be set to any value up to 2^22
+can be set to any value up to 2\[ha]22
 .RB ( PID_MAX_LIMIT ,
 approximately 4 million).
 .\" Prior to Linux 2.6.10, pid_max could also be raised above 32768 on 32-=
bit
diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
index cfd639c52..c40aae96b 100644
--- a/man7/mount_namespaces.7
+++ b/man7/mount_namespaces.7
@@ -1129,7 +1129,7 @@ in the following step:
                \fBstrace \-o /tmp/log \e\fP
                \fBumount /mnt/dir\fP
 umount: /etc/shadow: not mounted.
-# \fBgrep \[aq]^umount\[aq] /tmp/log\fP
+# \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
 umount2("/etc/shadow", 0)     =3D \-1 EINVAL (Invalid argument)
 .EE
 .in
diff --git a/man7/random.7 b/man7/random.7
index 280e798c6..69e6c2403 100644
--- a/man7/random.7
+++ b/man7/random.7
@@ -191,7 +191,7 @@ The amount of seed material required to generate a cryp=
tographic key
 equals the effective key size of the key.
 For example, a 3072-bit RSA
 or Diffie-Hellman private key has an effective key size of 128 bits
-(it requires about 2^128 operations to break) so a key generator
+(it requires about 2\[ha]128 operations to break) so a key generator
 needs only 128 bits (16 bytes) of seed material from
 .IR /dev/random .
 .PP
diff --git a/man7/sched.7 b/man7/sched.7
index ba9196ac8..4da3ea331 100644
--- a/man7/sched.7
+++ b/man7/sched.7
@@ -318,7 +318,7 @@ sched_runtime <=3D sched_deadline <=3D sched_period
 In addition, under the current implementation,
 all of the parameter values must be at least 1024
 (i.e., just over one microsecond,
-which is the resolution of the implementation), and less than 2^63.
+which is the resolution of the implementation), and less than 2\[ha]63.
 If any of these checks fails,
 .BR sched_setattr (2)
 fails with the error
diff --git a/man7/tcp.7 b/man7/tcp.7
index 2daea58af..c0c4a838b 100644
--- a/man7/tcp.7
+++ b/man7/tcp.7
@@ -300,11 +300,11 @@ Enabling this option can harm the clients of your ser=
ver.
 .IR tcp_adv_win_scale " (integer; default: 2; since Linux 2.4)"
 .\" Since Linux 2.4.0-test7
 Count buffering overhead as
-.IR "bytes/2^tcp_adv_win_scale" ,
+.IR "bytes/2\[ha]tcp_adv_win_scale" ,
 if
 .I tcp_adv_win_scale
 is greater than 0; or
-.IR "bytes\-bytes/2^(\-tcp_adv_win_scale)" ,
+.IR "bytes\-bytes/2\[ha](\-tcp_adv_win_scale)" ,
 if
 .I tcp_adv_win_scale
 is less than or equal to zero.
@@ -368,7 +368,7 @@ but not loaded.
 This variable defines how many
 bytes of the TCP window are reserved for buffering overhead.
 .IP
-A maximum of (\fIwindow/2^tcp_app_win\fP, mss) bytes in the window
+A maximum of (\fIwindow/2\[ha]tcp_app_win\fP, mss) bytes in the window
 are reserved for the application buffer.
 A value of 0 implies that no amount is reserved.
 .\"
diff --git a/man7/udplite.7 b/man7/udplite.7
index 6e2330340..509b3060c 100644
--- a/man7/udplite.7
+++ b/man7/udplite.7
@@ -64,15 +64,15 @@ The following two options are specific to UDP-Lite.
 .B UDPLITE_SEND_CSCOV
 This option sets the sender checksum coverage and takes an
 .I int
-as argument, with a checksum coverage value in the range 0..2^16-1.
+as argument, with a checksum coverage value in the range 0..2\[ha]16-1.
 .IP
 A value of 0 means that the entire datagram is always covered.
 Values from 1\-7 are illegal (RFC\ 3828, 3.1) and are rounded up to
 the minimum coverage of 8.
 .IP
 With regard to IPv6 jumbograms (RFC\ 2675), the UDP-Litev6 checksum
-coverage is limited to the first 2^16-1 octets, as per RFC\ 3828, 3.5.
-Higher values are therefore silently truncated to 2^16-1.
+coverage is limited to the first 2\[ha]16-1 octets, as per RFC\ 3828, 3.5.
+Higher values are therefore silently truncated to 2\[ha]16-1.
 If in doubt, the current coverage value can always be queried using
 .BR getsockopt (2).
 .TP
diff --git a/man7/units.7 b/man7/units.7
index e089c2359..4618727ae 100644
--- a/man7/units.7
+++ b/man7/units.7
@@ -15,30 +15,30 @@ Below the standard prefixes.
 .TS
 l l l.
 Prefix	Name	Value
-q	quecto	10^\-30 =3D 0.000000000000000000000000000001
-r	ronto	10^\-27 =3D 0.000000000000000000000000001
-y	yocto	10^\-24 =3D 0.000000000000000000000001
-z	zepto	10^\-21 =3D 0.000000000000000000001
-a	atto	10^\-18 =3D 0.000000000000000001
-f	femto	10^\-15 =3D 0.000000000000001
-p	pico	10^\-12 =3D 0.000000000001
-n	nano	10^\-9  =3D 0.000000001
-\[mc]	micro	10^\-6  =3D 0.000001
-m	milli	10^\-3  =3D 0.001
-c	centi	10^\-2  =3D 0.01
-d	deci	10^\-1  =3D 0.1
-da	deka	10^ 1  =3D 10
-h	hecto	10^ 2  =3D 100
-k	kilo	10^ 3  =3D 1000
-M	mega	10^ 6  =3D 1000000
-G	giga	10^ 9  =3D 1000000000
-T	tera	10^12  =3D 1000000000000
-P	peta	10^15  =3D 1000000000000000
-E	exa	10^18  =3D 1000000000000000000
-Z	zetta	10^21  =3D 1000000000000000000000
-Y	yotta	10^24  =3D 1000000000000000000000000
-R	ronna	10^27  =3D 1000000000000000000000000000
-Q	quetta	10^30  =3D 1000000000000000000000000000000
+q	quecto	10\[ha]\-30 =3D 0.000000000000000000000000000001
+r	ronto	10\[ha]\-27 =3D 0.000000000000000000000000001
+y	yocto	10\[ha]\-24 =3D 0.000000000000000000000001
+z	zepto	10\[ha]\-21 =3D 0.000000000000000000001
+a	atto	10\[ha]\-18 =3D 0.000000000000000001
+f	femto	10\[ha]\-15 =3D 0.000000000000001
+p	pico	10\[ha]\-12 =3D 0.000000000001
+n	nano	10\[ha]\-9  =3D 0.000000001
+\(mc	micro	10\[ha]\-6  =3D 0.000001
+m	milli	10\[ha]\-3  =3D 0.001
+c	centi	10\[ha]\-2  =3D 0.01
+d	deci	10\[ha]\-1  =3D 0.1
+da	deka	10\[ha] 1  =3D 10
+h	hecto	10\[ha] 2  =3D 100
+k	kilo	10\[ha] 3  =3D 1000
+M	mega	10\[ha] 6  =3D 1000000
+G	giga	10\[ha] 9  =3D 1000000000
+T	tera	10\[ha]12  =3D 1000000000000
+P	peta	10\[ha]15  =3D 1000000000000000
+E	exa	10\[ha]18  =3D 1000000000000000000
+Z	zetta	10\[ha]21  =3D 1000000000000000000000
+Y	yotta	10\[ha]24  =3D 1000000000000000000000000
+R	ronna	10\[ha]27  =3D 1000000000000000000000000000
+Q	quetta	10\[ha]30  =3D 1000000000000000000000000000000
 .TE
 .RE
 .PP
@@ -55,14 +55,14 @@ size, followed by "bi" for "binary".
 .TS
 l l l.
 Prefix	Name	Value
-Ki	kibi	2^10 =3D 1024
-Mi	mebi	2^20 =3D 1048576
-Gi	gibi	2^30 =3D 1073741824
-Ti	tebi	2^40 =3D 1099511627776
-Pi	pebi	2^50 =3D 1125899906842624
-Ei	exbi	2^60 =3D 1152921504606846976
-Zi	zebi	2^70 =3D 1180591620717411303424
-Yi	yobi	2^80 =3D 1208925819614629174706176
+Ki	kibi	2\[ha]10 =3D 1024
+Mi	mebi	2\[ha]20 =3D 1048576
+Gi	gibi	2\[ha]30 =3D 1073741824
+Ti	tebi	2\[ha]40 =3D 1099511627776
+Pi	pebi	2\[ha]50 =3D 1125899906842624
+Ei	exbi	2\[ha]60 =3D 1152921504606846976
+Zi	zebi	2\[ha]70 =3D 1180591620717411303424
+Yi	yobi	2\[ha]80 =3D 1208925819614629174706176
 .TE
 .RE
 .SS Discussion
diff --git a/man7/unix.7 b/man7/unix.7
index 7c987fbd0..e9fe40c9b 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -416,9 +416,9 @@ then the socket is autobound to an abstract address.
 The address consists of a null byte
 followed by 5 bytes in the character set
 .IR [0\-9a\-f] .
-Thus, there is a limit of 2^20 autobind addresses.
+Thus, there is a limit of 2\[ha]20 autobind addresses.
 (From Linux 2.1.15, when the autobind feature was added,
-8 bytes were used, and the limit was thus 2^32 autobind addresses.
+8 bytes were used, and the limit was thus 2\[ha]32 autobind addresses.
 The change to 5 bytes came in Linux 2.3.15.)
 .SS Sockets API
 The following paragraphs describe domain-specific details and
diff --git a/man7/utf-8.7 b/man7/utf-8.7
index abdf6244c..5ff634306 100644
--- a/man7/utf-8.7
+++ b/man7/utf-8.7
@@ -55,7 +55,7 @@ problems with, for example,  \[aq]\e0\[aq] or \[aq]/\[aq].
 The lexicographic sorting order of UCS-4 strings is preserved.
 .TP
 *
-All possible 2^31 UCS codes can be encoded using UTF-8.
+All possible 2\[ha]31 UCS codes can be encoded using UTF-8.
 .TP
 *
 The bytes 0xc0, 0xc1, 0xfe, and 0xff are never used in the UTF-8 encoding.
--=20
2.30.2


--tzj5vs33djqvzedj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPlNu4ACgkQ0Z6cfXEm
bc6K6Q/+J4lPuacWG4v5hk5UuD/6rN2KF3kgClejTmVC5fFoRu4CveTE+MZZsBA2
u6Bjfrw+1bAEvhTwdGp1f8s7rukh8S23skQVxeRaDwnJDPhoX52lBXNiF++Oh29G
8cC5YOsqL6IAKcFbhSRL3EJxDICz2Z1msNENiN9npmvbic7m4VjoGz3lc3tI7FhB
QnN2OjJONSXOOx2Xq0bjeCu5aA6evGeYo+20PAaMusmDqpIeJk39Cu0IcSKhJB6U
zw8w84Xwh5anO4ZPm+quz8B2q2kkF2U+hYnJUbj+jrgQhdLh7F8vFf+oucXKPXgS
CT3tGt0BmpEzVTWbJiEIFzxel3ktAzCo4O0TfMGlflNXXs2EGSMRANy3EXI2LzW5
K2zy2ndjQesEyaYpcmXr5iGtXFkyljXfWhcrwt61XmVfJDiXy4VOObaEvtgCPpay
6dMqPtzn3565rmxOcXsDMd6Hu5Qd6SDfT/gZfjI5obVpsl6rd02QYVW1sV12r85x
SBjz7F30MfIGzTUFFxAps1vPDvlu30i5AfSy9L0g5sW/XySdF5nmcjJdHOmVBvlo
jjRuiOhRE1B4oT7BsPufS+yl7Dw7w0g4b+TY5fn9ZD4JAMERc2kud3ETVZTI5O5k
rQrk91T9FrCHSTbKfOaL4+0rw2fMzAColjVsilh4mknLoD2UU4g=
=fRZp
-----END PGP SIGNATURE-----

--tzj5vs33djqvzedj--
