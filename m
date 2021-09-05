Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D18EB400FF6
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231754AbhIEN04 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:26:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhIEN0z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:26:55 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED7EBC061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:51 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id i6so5670410wrv.2
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ev/cBt69FzLKuKj/VNjVj0GxuCfWIOH/nOFVtmdQC24=;
        b=XUZEozTb3KBBA1urOn7C0xZGL1TrjJtFQiAVwacUgI9Nbmia5NFZ7gPmmfIo7fzLct
         U9sQpzMQ5t/Bq+pOiRfKCKeO9l21F0mvO56HYwOB3z6Tj8nzRlDoEB7z9Cj07LzteSig
         VLN0CuJ7SkzODhP7mku1dA9umeypyUabitsmPOPzqyv/iMTeV5svlwoQ4Xd2DvXp1v0C
         JUaQ0YO8OaTtYtONQbBhKjN2JdjghS1yR/PNqMv6XqG/sLkS05fx/uV9q4wPYRX/FzVm
         he7nrQCNPQhmZMcW/5v6bmmMfCRpylGVMpwfMTjZgCA7NyqhC+206wsnKEsjAwmUZ5Zi
         jeCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ev/cBt69FzLKuKj/VNjVj0GxuCfWIOH/nOFVtmdQC24=;
        b=ebYB7pMcofs/Htc1RE5/Y5jfVS7gVj9KlX2sT5lq4zHxRJTqfZY02QtiDra2zO4DRG
         +pOz1B+HUjqdgsKroiJt0hLfd0o+6v2rWnzFv5L0hc0a7jJ8t4bq5PWIR056i/5U70o/
         5yik40cTmNEHZfNCQm1o17m0LLKaJX4vbkVcCbre+kxNM2o37dJ3lc4IOzmvUrKJpIEu
         v9VAqjoLITLKpOGXCMX8T4Y1Yb+vPw6etb5hHJBCbDEY1hYZ3dDkq7vJ4MJ/YK512k04
         R2sKokYHjiMT0LbO/vpXHzD6uM9V2bM8unQZk+MeN7CV9L4aj8ostQaZHUdE32Hm4qW1
         /17A==
X-Gm-Message-State: AOAM532kPCARZ6Xyp5VZzjA0BTCYjbfQ20oJpt++AFFdckhY3W3nvIE4
        04qmXWWzREWCAPO1ASer7Fk=
X-Google-Smtp-Source: ABdhPJxKBljDf6TcV/Eho4Gd+pqSzzjXdnHiEWEvjgDvCDkeb2MGXj9L7MXKoU8GOo8oEDzzm4TKVg==
X-Received: by 2002:adf:dd11:: with SMTP id a17mr8303463wrm.132.1630848349558;
        Sun, 05 Sep 2021 06:25:49 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:49 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>
Subject: [RFC v3 1/9] LICENSES/GPL-1.0-or-later.txt, many pages: Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:34 +0200
Message-Id: <20210905132542.245236-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210905132542.245236-1-alx.manpages@gmail.com>
References: <20210905132542.245236-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

To simplify understanding which license applies to each file,
let's use SPDX markings, which are simple, informative, and
commonly used in many projects.
Let's also follow REUSE <https://reuse.software/> conventions.

I assime GPL-1.0-or-later is the closest thing to GPL_NOVERSION_ONELINE,
which I couldn't find anywhere.

Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jilayne Lovejoy <opensource@jilayne.com>
Cc: Alexios Zavras <alexios.zavras@intel.com>
Cc: Richard Fontana <rfontana@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 LICENSES/GPL-1.0-or-later.txt | 100 ++++++++++++++++++++++++++++++++++
 man1/ldd.1                    |  18 ++----
 man1/time.1                   |   8 +--
 man2/capget.2                 |   9 +--
 man2/clone.2                  |   9 +--
 man2/create_module.2          |   7 +--
 man2/get_kernel_syms.2        |   7 +--
 man2/io_cancel.2              |   7 +--
 man2/io_destroy.2             |   7 +--
 man2/io_getevents.2           |   7 +--
 man2/io_setup.2               |   7 +--
 man2/io_submit.2              |   9 +--
 man2/ioctl_tty.2              |   9 +--
 man2/mkdir.2                  |  14 ++---
 man2/mknod.2                  |  14 ++---
 man2/query_module.2           |   7 +--
 man2/set_thread_area.2        |  10 ++--
 man2/unshare.2                |  13 ++---
 man3/__setfpucw.3             |   8 +--
 man3/a64l.3                   |   8 +--
 man3/addseverity.3            |   7 +--
 man3/argz_add.3               |   8 +--
 man3/cabs.3                   |   7 +--
 man3/cacos.3                  |   9 +--
 man3/cacosh.3                 |   9 +--
 man3/carg.3                   |   7 +--
 man3/casin.3                  |   7 +--
 man3/casinh.3                 |   7 +--
 man3/catan.3                  |   9 +--
 man3/catanh.3                 |   9 +--
 man3/ccos.3                   |   7 +--
 man3/ccosh.3                  |   7 +--
 man3/cexp.3                   |   7 +--
 man3/cexp2.3                  |   7 +--
 man3/cimag.3                  |   7 +--
 man3/clog.3                   |   7 +--
 man3/clog10.3                 |   7 +--
 man3/clog2.3                  |   7 +--
 man3/conj.3                   |   7 +--
 man3/cpow.3                   |   7 +--
 man3/cproj.3                  |   7 +--
 man3/creal.3                  |   7 +--
 man3/csin.3                   |   7 +--
 man3/csinh.3                  |   7 +--
 man3/csqrt.3                  |   7 +--
 man3/ctan.3                   |   7 +--
 man3/ctanh.3                  |   7 +--
 man3/des_crypt.3              |  10 ++--
 man3/envz_add.3               |   8 +--
 man3/fdim.3                   |  10 +---
 man3/fma.3                    |  10 +---
 man3/fmax.3                   |  10 +---
 man3/fmemopen.3               |   7 +--
 man3/fmin.3                   |  10 +---
 man3/fmtmsg.3                 |   8 +--
 man3/fpclassify.3             |   8 +--
 man3/gamma.3                  |   7 +--
 man3/getspnam.3               |   9 +--
 man3/getttyent.3              |   7 +--
 man3/isgreater.3              |   7 +--
 man3/key_setsecret.3          |   8 +--
 man3/lgamma.3                 |  10 +---
 man3/malloc_hook.3            |   7 +--
 man3/mempcpy.3                |  11 ++--
 man3/nan.3                    |   7 +--
 man3/netlink.3                |   7 +--
 man3/nextafter.3              |  10 +---
 man3/open_memstream.3         |   7 +--
 man3/putgrent.3               |   7 +--
 man3/remquo.3                 |  10 +---
 man3/rtime.3                  |   7 +--
 man3/setaliasent.3            |   7 +--
 man3/setnetgrent.3            |   7 +--
 man3/signbit.3                |  13 ++---
 man3/significand.3            |  10 ++--
 man3/sincos.3                 |  10 +---
 man3/tgamma.3                 |  10 +---
 man3/xcrypt.3                 |   7 +--
 man4/wavelan.4                |   5 +-
 man5/hosts.equiv.5            |   6 +-
 man7/boot.7                   |   7 +--
 man7/complex.7                |   7 +--
 man7/netlink.7                |   8 +--
 83 files changed, 317 insertions(+), 458 deletions(-)
 create mode 100644 LICENSES/GPL-1.0-or-later.txt

diff --git a/LICENSES/GPL-1.0-or-later.txt b/LICENSES/GPL-1.0-or-later.txt
new file mode 100644
index 000000000..b3a222308
--- /dev/null
+++ b/LICENSES/GPL-1.0-or-later.txt
@@ -0,0 +1,100 @@
+GNU GENERAL PUBLIC LICENSE
+Version 1, February 1989
+
+Copyright (C) 1989 Free Software Foundation, Inc. 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
+
+Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.
+
+Preamble
+
+The license agreements of most software companies try to keep users at the mercy of those companies. By contrast, our General Public License is intended to guarantee your freedom to share and change free software--to make sure the software is free for all its users. The General Public License applies to the Free Software Foundation's software and to any other program whose authors commit to using it. You can use it for your programs, too.
+
+When we speak of free software, we are referring to freedom, not price. Specifically, the General Public License is designed to make sure that you have the freedom to give away or sell copies of free software, that you receive source code or can get it if you want it, that you can change the software or use pieces of it in new free programs; and that you know you can do these things.
+
+To protect your rights, we need to make restrictions that forbid anyone to deny you these rights or to ask you to surrender the rights. These restrictions translate to certain responsibilities for you if you distribute copies of the software, or if you modify it.
+
+For example, if you distribute copies of a such a program, whether gratis or for a fee, you must give the recipients all the rights that you have. You must make sure that they, too, receive or can get the source code. And you must tell them their rights.
+
+We protect your rights with two steps: (1) copyright the software, and (2) offer you this license which gives you legal permission to copy, distribute and/or modify the software.
+
+Also, for each author's protection and ours, we want to make certain that everyone understands that there is no warranty for this free software. If the software is modified by someone else and passed on, we want its recipients to know that what they have is not the original, so that any problems introduced by others will not reflect on the original authors' reputations.
+
+The precise terms and conditions for copying, distribution and modification follow.
+
+GNU GENERAL PUBLIC LICENSE TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION
+
+0. This License Agreement applies to any program or other work which contains a notice placed by the copyright holder saying it may be distributed under the terms of this General Public License. The "Program", below, refers to any such program or work, and a "work based on the Program" means either the Program or any work containing the Program or a portion of it, either verbatim or with modifications. Each licensee is addressed as "you".
+
+1. You may copy and distribute verbatim copies of the Program's source code as you receive it, in any medium, provided that you conspicuously and appropriately publish on each copy an appropriate copyright notice and disclaimer of warranty; keep intact all the notices that refer to this General Public License and to the absence of any warranty; and give any other recipients of the Program a copy of this General Public License along with the Program. You may charge a fee for the physical act of transferring a copy.
+
+2. You may modify your copy or copies of the Program or any portion of it, and copy and distribute such modifications under the terms of Paragraph 1 above, provided that you also do the following:
+
+     a) cause the modified files to carry prominent notices stating that you changed the files and the date of any change; and
+
+     b) cause the whole of any work that you distribute or publish, that in whole or in part contains the Program or any part thereof, either with or without modifications, to be licensed at no charge to all third parties under the terms of this General Public License (except that you may choose to grant warranty protection to some or all third parties, at your option).
+
+     c) If the modified program normally reads commands interactively when run, you must cause it, when started running for such interactive use in the simplest and most usual way, to print or display an announcement including an appropriate copyright notice and a notice that there is no warranty (or else, saying that you provide a warranty) and that users may redistribute the program under these conditions, and telling the user how to view a copy of this General Public License.
+
+     d) You may charge a fee for the physical act of transferring a copy, and you may at your option offer warranty protection in exchange for a fee.
+
+Mere aggregation of another independent work with the Program (or its derivative) on a volume of a storage or distribution medium does not bring the other work under the scope of these terms.
+
+3. You may copy and distribute the Program (or a portion or derivative of it, under Paragraph 2) in object code or executable form under the terms of Paragraphs 1 and 2 above provided that you also do one of the following:
+
+     a) accompany it with the complete corresponding machine-readable source code, which must be distributed under the terms of Paragraphs 1 and 2 above; or,
+
+     b) accompany it with a written offer, valid for at least three years, to give any third party free (except for a nominal charge for the cost of distribution) a complete machine-readable copy of the corresponding source code, to be distributed under the terms of Paragraphs 1 and 2 above; or,
+
+     c) accompany it with the information you received as to where the corresponding source code may be obtained. (This alternative is allowed only for noncommercial distribution and only if you received the program in object code or executable form alone.)
+
+Source code for a work means the preferred form of the work for making modifications to it. For an executable file, complete source code means all the source code for all modules it contains; but, as a special exception, it need not include source code for modules which are standard libraries that accompany the operating system on which the executable file runs, or for standard header files or definitions files that accompany that operating system.
+
+4. You may not copy, modify, sublicense, distribute or transfer the Program except as expressly provided under this General Public License. Any attempt otherwise to copy, modify, sublicense, distribute or transfer the Program is void, and will automatically terminate your rights to use the Program under this License. However, parties who have received copies, or rights to use copies, from you under this General Public License will not have their licenses terminated so long as such parties remain in full compliance.
+
+5. By copying, distributing or modifying the Program (or any work based on the Program) you indicate your acceptance of this license to do so, and all its terms and conditions.
+
+6. Each time you redistribute the Program (or any work based on the Program), the recipient automatically receives a license from the original licensor to copy, distribute or modify the Program subject to these terms and conditions. You may not impose any further restrictions on the recipients' exercise of the rights granted herein.
+
+7. The Free Software Foundation may publish revised and/or new versions of the General Public License from time to time. Such new versions will be similar in spirit to the present version, but may differ in detail to address new problems or concerns.
+
+Each version is given a distinguishing version number. If the Program specifies a version number of the license which applies to it and "any later version", you have the option of following the terms and conditions either of that version or of any later version published by the Free Software Foundation. If the Program does not specify a version number of the license, you may choose any version ever published by the Free Software Foundation.
+
+8. If you wish to incorporate parts of the Program into other free programs whose distribution conditions are different, write to the author to ask for permission. For software which is copyrighted by the Free Software Foundation, write to the Free Software Foundation; we sometimes make exceptions for this. Our decision will be guided by the two goals of preserving the free status of all derivatives of our free software and of promoting the sharing and reuse of software generally.
+
+NO WARRANTY
+
+9. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION.
+
+10. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
+
+END OF TERMS AND CONDITIONS
+
+Appendix: How to Apply These Terms to Your New Programs
+
+If you develop a new program, and you want it to be of the greatest possible use to humanity, the best way to achieve this is to make it free software which everyone can redistribute and change under these terms.
+
+To do so, attach the following notices to the program. It is safest to attach them to the start of each source file to most effectively convey the exclusion of warranty; and each file should have at least the "copyright" line and a pointer to where the full notice is found.
+
+     <one line to give the program's name and a brief idea of what it does.> Copyright (C) 19yy <name of author>
+
+     This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 1, or (at your option) any later version.
+
+     This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
+
+     You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+
+Also add information on how to contact you by electronic and paper mail.
+
+If the program is interactive, make it output a short notice like this when it starts in an interactive mode:
+
+     Gnomovision version 69, Copyright (C) 19xx name of author Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'. This is free software, and you are welcome to redistribute it under certain conditions; type `show c' for details.
+
+The hypothetical commands `show w' and `show c' should show the appropriate parts of the General Public License. Of course, the commands you use may be called something other than `show w' and `show c'; they could even be mouse-clicks or menu items--whatever suits your program.
+
+You should also get your employer (if you work as a programmer) or your school, if any, to sign a "copyright disclaimer" for the program, if necessary. Here a sample; alter the names:
+
+     Yoyodyne, Inc., hereby disclaims all copyright interest in the program `Gnomovision' (a program to direct compilers to make passes at assemblers) written by James Hacker.
+
+     <signature of Ty Coon>, 1 April 1989 Ty Coon, President of Vice
+
+That's all there is to it!
diff --git a/man1/ldd.1 b/man1/ldd.1
index f358f9658..70d71b2c9 100644
--- a/man1/ldd.1
+++ b/man1/ldd.1
@@ -1,15 +1,9 @@
-.\" Copyright 1995-2000 David Engel (david@ods.com)
-.\" Copyright 1995 Rickard E. Faith (faith@cs.unc.edu)
-.\" Copyright 2000 Ben Collins (bcollins@debian.org)
-.\"    Redone for GLibc 2.2
-.\" Copyright 2000 Jakub Jelinek (jakub@redhat.com)
-.\"    Corrected.
-.\" and Copyright (C) 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Do not restrict distribution.
-.\" May be distributed under the GNU General Public License
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1995-2000, David Engel <david@ods.com>
+.\" SPDX-FileCopyrightText: 1995, Rickard E. Faith <faith@cs.unc.edu>
+.\" SPDX-FileCopyrightText: 2000, Ben Collins <bcollins@debian.org>
+.\" SPDX-FileCopyrightText: 2000, Jakub Jelinek <jakub@redhat.com>
+.\" SPDX-FileCopyrightText: 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH LDD 1 2021-08-27 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man1/time.1 b/man1/time.1
index 5af90c1d0..7dad9f57c 100644
--- a/man1/time.1
+++ b/man1/time.1
@@ -1,11 +1,9 @@
-.\" Copyright Andries Brouwer, 2000
+.\" SPDX-FileCopyrightText: 2000, Andries Brouwer
+.\" SPDX-License-Identifier: GPL-1.0-or-later
+.\"
 .\" Some fragments of text came from the time-1.7 info file.
 .\" Inspired by kromJx@crosswinds.net.
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
-.\"
 .TH TIME 1 2019-03-06 "" "Linux User's Manual"
 .SH NAME
 time \- time a simple command or give resource usage
diff --git a/man2/capget.2 b/man2/capget.2
index 3ac05106f..89c098aa3 100644
--- a/man2/capget.2
+++ b/man2/capget.2
@@ -1,9 +1,6 @@
-.\" Copyright: written by Andrew Morgan <morgan@kernel.org>
-.\" and Copyright 2006, 2008, Michael Kerrisk <tmk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" may be distributed as per GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Andrew Morgan <morgan@kernel.org>
+.\" SPDX-FileCopyrightText: 2006, 2008, Michael Kerrisk <tmk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Modified by David A. Wheeler <dwheeler@ida.org>
 .\" Modified 2004-05-27, mtk
diff --git a/man2/clone.2 b/man2/clone.2
index e381da165..ce770d19b 100644
--- a/man2/clone.2
+++ b/man2/clone.2
@@ -1,9 +1,6 @@
-.\" Copyright (c) 1992 Drew Eckhardt <drew@cs.colorado.edu>, March 28, 1992
-.\" and Copyright (c) Michael Kerrisk, 2001, 2002, 2005, 2013, 2019
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" May be distributed under the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1992, Drew Eckhardt <drew@cs.colorado.edu>
+.\" SPDX-FileCopyrightText: 2001, 2002, 2005, 2013, 2019, Michael Kerrisk
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Modified by Michael Haardt <michael@moria.de>
 .\" Modified 24 Jul 1993 by Rik Faith <faith@cs.unc.edu>
diff --git a/man2/create_module.2 b/man2/create_module.2
index 81136fe06..30e6abcba 100644
--- a/man2/create_module.2
+++ b/man2/create_module.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 1996 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1996, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" 2006-02-09, some reformatting by Luc Van Oostenryck; some
 .\" reformatting and rewordings by mtk
diff --git a/man2/get_kernel_syms.2 b/man2/get_kernel_syms.2
index beb26e539..593c6bc7b 100644
--- a/man2/get_kernel_syms.2
+++ b/man2/get_kernel_syms.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 1996 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1996, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" 2006-02-09, some reformatting by Luc Van Oostenryck; some
 .\" reformatting and rewordings by mtk
diff --git a/man2/io_cancel.2 b/man2/io_cancel.2
index 248fe5791..39b0b04df 100644
--- a/man2/io_cancel.2
+++ b/man2/io_cancel.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 2003 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH IO_CANCEL 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/io_destroy.2 b/man2/io_destroy.2
index c9418336f..7debf111b 100644
--- a/man2/io_destroy.2
+++ b/man2/io_destroy.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 2003 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH IO_DESTROY 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/io_getevents.2 b/man2/io_getevents.2
index 7c7e625bf..9f25c0991 100644
--- a/man2/io_getevents.2
+++ b/man2/io_getevents.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 2003 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH IO_GETEVENTS 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/io_setup.2 b/man2/io_setup.2
index 1e3cdd6e1..2c821dd0a 100644
--- a/man2/io_setup.2
+++ b/man2/io_setup.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 2003 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH IO_SETUP 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/io_submit.2 b/man2/io_submit.2
index 08f5b0412..c1a05b773 100644
--- a/man2/io_submit.2
+++ b/man2/io_submit.2
@@ -1,9 +1,6 @@
-.\" Copyright (C) 2003 Free Software Foundation, Inc.
-.\" and Copyright (C) 2017 Goldwyn Rodrigues <rgoldwyn@suse.de>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Free Software Foundation, Inc.
+.\" SPDX-FileCopyrightText: 2017, Goldwyn Rodrigues <rgoldwyn@suse.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH IO_SUBMIT 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 186011ee7..0a4c86779 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -1,9 +1,6 @@
-.\" Copyright 2002 Walter Harms <walter.harms@informatik.uni-oldenburg.de>
-.\" and Andries Brouwer <aeb@cwi.nl>.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2002, Andries Brouwer <aeb@cwi.nl>.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH IOCTL_TTY 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/mkdir.2 b/man2/mkdir.2
index 33eafc935..711cffd2d 100644
--- a/man2/mkdir.2
+++ b/man2/mkdir.2
@@ -1,12 +1,8 @@
-.\" This manpage is Copyright (C) 1992 Drew Eckhardt;
-.\"             and Copyright (C) 1993 Michael Haardt
-.\"             and Copyright (C) 1993,1994 Ian Jackson
-.\"		and Copyright (C) 2006, 2014 Michael Kerrisk
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" You may distribute it under the terms of the GNU General
-.\" Public License. It comes with NO WARRANTY.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1992, Drew Eckhardt;
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt
+.\" SPDX-FileCopyrightText: 1993, 1994, Ian Jackson
+.\" SPDX-FileCopyrightText: 2006, 2014, Michael Kerrisk
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH MKDIR 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/mknod.2 b/man2/mknod.2
index 00199898c..f1c0e720a 100644
--- a/man2/mknod.2
+++ b/man2/mknod.2
@@ -1,12 +1,8 @@
-.\" This manpage is Copyright (C) 1992 Drew Eckhardt;
-.\"             and Copyright (C) 1993 Michael Haardt
-.\"             and Copyright (C) 1993,1994 Ian Jackson
-.\"		and Copyright (C) 2006, 2014, Michael Kerrisk
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" You may distribute it under the terms of the GNU General
-.\" Public License. It comes with NO WARRANTY.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1992, Drew Eckhardt;
+.\" SPDX-FileCopyrightText: 1993, Michael Haardt
+.\" SPDX-FileCopyrightText: 1993, 1994, Ian Jackson
+.\" SPDX-FileCopyrightText: 2006, 2014, Michael Kerrisk
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Modified 1996-08-18 by urs
 .\" Modified 2003-04-23 by Michael Kerrisk
diff --git a/man2/query_module.2 b/man2/query_module.2
index ef8d803ee..0730c705a 100644
--- a/man2/query_module.2
+++ b/man2/query_module.2
@@ -1,8 +1,5 @@
-.\" Copyright (C) 1996 Free Software Foundation, Inc.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1996, Free Software Foundation, Inc.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" 2006-02-09, some reformatting by Luc Van Oostenryck; some
 .\" reformatting and rewordings by mtk
diff --git a/man2/set_thread_area.2 b/man2/set_thread_area.2
index 43f3009f7..01446d98b 100644
--- a/man2/set_thread_area.2
+++ b/man2/set_thread_area.2
@@ -1,10 +1,8 @@
-.\" Copyright (C) 2003 Free Software Foundation, Inc.
-.\" Copyright (C) 2015 Andrew Lutomirski
-.\" Author: Kent Yoder
+.\" SPDX-FileCopyrightText: 2003, Free Software Foundation, Inc.
+.\" SPDX-FileCopyrightText: 2015, Andrew Lutomirski
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file is distributed according to the GNU General Public License.
-.\" %%%LICENSE_END
+.\" Author: Kent Yoder
 .\"
 .TH SET_THREAD_AREA 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man2/unshare.2 b/man2/unshare.2
index 851c2b20e..dbfe3243f 100644
--- a/man2/unshare.2
+++ b/man2/unshare.2
@@ -1,18 +1,15 @@
-.\" Copyright (C) 2006, Janak Desai <janak@us.ibm.com>
-.\" and Copyright (C) 2006, 2012 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Licensed under the GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2006, Janak Desai <janak@us.ibm.com>
+.\" SPDX-FileCopyrightText: 2006, 2012, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Patch Justification:
 .\" unshare system call is needed to implement, using PAM,
 .\" per-security_context and/or per-user namespace to provide
-.\" polyinstantiated directories. Using unshare and bind mounts, a
+.\" polyinstantiated directories.  Using unshare and bind mounts, a
 .\" PAM module can create private namespace with appropriate
 .\" directories(based on user's security context) bind mounted on
 .\" public directories such as /tmp, thus providing an instance of
-.\" /tmp that is based on user's security context. Without the
+.\" /tmp that is based on user's security context.  Without the
 .\" unshare system call, namespace separation can only be achieved
 .\" by clone, which would require porting and maintaining all commands
 .\" such as login, and su, that establish a user session.
diff --git a/man3/__setfpucw.3 b/man3/__setfpucw.3
index b7daecde9..b341fb062 100644
--- a/man3/__setfpucw.3
+++ b/man3/__setfpucw.3
@@ -1,9 +1,5 @@
-.\" Written Sat Mar  8 10:35:08 MEZ 1997 by
-.\" J. "MUFTI" Scheurich (mufti@csv.ica.uni-stuttgart.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This page is licensed under the GNU General Public License
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1997, J. "MUFTI" Scheurich <mufti@csv.ica.uni-stuttgart.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH __SETFPUCW 3 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/a64l.3 b/man3/a64l.3
index 4014212fd..cbed7a611 100644
--- a/man3/a64l.3
+++ b/man3/a64l.3
@@ -1,9 +1,5 @@
-\t
-.\" Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Corrected, aeb, 2002-05-30
 .\"
diff --git a/man3/addseverity.3 b/man3/addseverity.3
index 0a3c8cf5d..21121eda6 100644
--- a/man3/addseverity.3
+++ b/man3/addseverity.3
@@ -1,11 +1,10 @@
-.\"  Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
 .\"  adapted glibc info page
 .\"
 .\"  polished a little, aeb
+.\"
 .TH ADDSEVERITY 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 addseverity \- introduce new severity classes
diff --git a/man3/argz_add.3 b/man3/argz_add.3
index 1ed05ccdf..d91f05cf7 100644
--- a/man3/argz_add.3
+++ b/man3/argz_add.3
@@ -1,12 +1,10 @@
-.\" Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" based on the description in glibc source and infopages
 .\"
 .\" Corrections and additions, aeb
+.\"
 .TH ARGZ_ADD 3 2021-03-22  "" "Linux Programmer's Manual"
 .SH NAME
 argz_add, argz_add_sep, argz_append, argz_count, argz_create,
diff --git a/man3/cabs.3 b/man3/cabs.3
index 9c1140cea..697f52ead 100644
--- a/man3/cabs.3
+++ b/man3/cabs.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CABS 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cacos.3 b/man3/cacos.3
index 5ba4fcdd3..cdd3289a9 100644
--- a/man3/cacos.3
+++ b/man3/cacos.3
@@ -1,9 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright (C) 2011 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2011, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CACOS 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cacosh.3 b/man3/cacosh.3
index dc131f3e0..a12585e77 100644
--- a/man3/cacosh.3
+++ b/man3/cacosh.3
@@ -1,9 +1,6 @@
-.\" Copyright 2002 Walter Harms(walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright (C) 2011 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2011, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CACOSH 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/carg.3 b/man3/carg.3
index 99dd8145b..912aa5f2c 100644
--- a/man3/carg.3
+++ b/man3/carg.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CARG 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/casin.3 b/man3/casin.3
index 4d1995c8f..a2564bffe 100644
--- a/man3/casin.3
+++ b/man3/casin.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CASIN 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/casinh.3 b/man3/casinh.3
index 738042f4a..146a9819c 100644
--- a/man3/casinh.3
+++ b/man3/casinh.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CASINH 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/catan.3 b/man3/catan.3
index 22de9567a..327cb02eb 100644
--- a/man3/catan.3
+++ b/man3/catan.3
@@ -1,9 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright (C) 2011 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2011, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CATAN 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/catanh.3 b/man3/catanh.3
index dc70867a4..d64b74083 100644
--- a/man3/catanh.3
+++ b/man3/catanh.3
@@ -1,9 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright (C) 2011 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2011, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CATANH 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/ccos.3 b/man3/ccos.3
index 50dc970fc..d3fdc47fc 100644
--- a/man3/ccos.3
+++ b/man3/ccos.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CCOS 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/ccosh.3 b/man3/ccosh.3
index 67e35389a..481b32ede 100644
--- a/man3/ccosh.3
+++ b/man3/ccosh.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CCOSH 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cexp.3 b/man3/cexp.3
index 47b29358f..a1b53f206 100644
--- a/man3/cexp.3
+++ b/man3/cexp.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CEXP 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cexp2.3 b/man3/cexp2.3
index 14ed1c7a9..873fe42b1 100644
--- a/man3/cexp2.3
+++ b/man3/cexp2.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CEXP2 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cimag.3 b/man3/cimag.3
index 9b19e184c..164132dc3 100644
--- a/man3/cimag.3
+++ b/man3/cimag.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CIMAG 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/clog.3 b/man3/clog.3
index 35801ed7a..50f382c56 100644
--- a/man3/clog.3
+++ b/man3/clog.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CLOG 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/clog10.3 b/man3/clog10.3
index 47a18fcad..658680b44 100644
--- a/man3/clog10.3
+++ b/man3/clog10.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CLOG10 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/clog2.3 b/man3/clog2.3
index 828dfda4d..88ae04a6f 100644
--- a/man3/clog2.3
+++ b/man3/clog2.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CLOG2 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/conj.3 b/man3/conj.3
index ead311403..f7432494e 100644
--- a/man3/conj.3
+++ b/man3/conj.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CONJ 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cpow.3 b/man3/cpow.3
index be93bff74..9c46d4f9f 100644
--- a/man3/cpow.3
+++ b/man3/cpow.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CPOW 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/cproj.3 b/man3/cproj.3
index 74feb8576..9bd560788 100644
--- a/man3/cproj.3
+++ b/man3/cproj.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CPROJ 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/creal.3 b/man3/creal.3
index 47692f873..c052813f4 100644
--- a/man3/creal.3
+++ b/man3/creal.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CREAL 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/csin.3 b/man3/csin.3
index 5e18fadd8..06f887c76 100644
--- a/man3/csin.3
+++ b/man3/csin.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CSIN 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/csinh.3 b/man3/csinh.3
index e3eacaa00..f3359b37b 100644
--- a/man3/csinh.3
+++ b/man3/csinh.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CSINH 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/csqrt.3 b/man3/csqrt.3
index f4a0f0300..8b4a77a7d 100644
--- a/man3/csqrt.3
+++ b/man3/csqrt.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CSQRT 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/ctan.3 b/man3/ctan.3
index 1a8a1b5e3..788664b07 100644
--- a/man3/ctan.3
+++ b/man3/ctan.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CTAN 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/ctanh.3 b/man3/ctanh.3
index f4205ffba..f68eb651e 100644
--- a/man3/ctanh.3
+++ b/man3/ctanh.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH CTANH 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/des_crypt.3 b/man3/des_crypt.3
index bce05ab73..835a81b7e 100644
--- a/man3/des_crypt.3
+++ b/man3/des_crypt.3
@@ -1,4 +1,8 @@
-.\" @(#)des_crypt.3	2.1 88/08/11 4.0 RPCSRC; from 1.16 88/03/02 SMI;
+.\" SPDX-FileCopyrightText: Sun Microsystems, Inc.
+.\" SPDX-FileCopyrightText: 1993, Eric Young
+.\" SPDX-License-Identifier: GPL-1.0-or-later
+.\"
+.\" @(#)des_crypt.3    2.1 88/08/11 4.0 RPCSRC; from 1.16 88/03/02 SMI;
 .\"
 .\" Taken from libc4 sources, which say:
 .\" Copyright (C) 1993 Eric Young - can be distributed under GPL.
@@ -7,10 +11,6 @@
 .\" Copyright Sun Microsystems, Inc (and is provided for unrestricted use,
 .\" see other Sun RPC sources).
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" can be distributed under GPL.
-.\" %%%LICENSE_END
-.\"
 .TH DES_CRYPT 3  2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
 des_crypt, ecb_crypt, cbc_crypt, des_setparity, DES_FAILED \- fast
diff --git a/man3/envz_add.3 b/man3/envz_add.3
index 9ed8381f5..a79f5e7db 100644
--- a/man3/envz_add.3
+++ b/man3/envz_add.3
@@ -1,12 +1,10 @@
-.\" Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms (walter.harms@informatik.uni-oldenburg.de)
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" based on the description in glibc source and infopages
 .\"
 .\" Corrections and additions, aeb
+.\"
 .TH ENVZ_ADD 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
 envz_add, envz_entry, envz_get, envz_merge,
diff --git a/man3/fdim.3 b/man3/fdim.3
index 3096f4bbb..82761e2b7 100644
--- a/man3/fdim.3
+++ b/man3/fdim.3
@@ -1,10 +1,6 @@
-.\" Copyright 2003 Walter Harms, Andries Brouwer
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Walter Harms, Andries Brouwer
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH FDIM 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/fma.3 b/man3/fma.3
index 468bb04e4..cc511d42e 100644
--- a/man3/fma.3
+++ b/man3/fma.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Modified 2004-11-15, Added further text on FLT_ROUNDS
 .\" 	as suggested by AEB and Fabian Kreutz
diff --git a/man3/fmax.3 b/man3/fmax.3
index 452cdc86f..8764faba8 100644
--- a/man3/fmax.3
+++ b/man3/fmax.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH FMAX 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/fmemopen.3 b/man3/fmemopen.3
index 50b0e4ff5..812c7933b 100644
--- a/man3/fmemopen.3
+++ b/man3/fmemopen.3
@@ -1,8 +1,5 @@
-.\" Copyright 2005, 2012, 2016 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under the GPL.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2005, 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH FMEMOPEN 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/fmin.3 b/man3/fmin.3
index 75ed1281c..a82b6085b 100644
--- a/man3/fmin.3
+++ b/man3/fmin.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH FMIN 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/fmtmsg.3 b/man3/fmtmsg.3
index b937b57fe..d9c6390bc 100644
--- a/man3/fmtmsg.3
+++ b/man3/fmtmsg.3
@@ -1,8 +1,5 @@
-.\"  Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\"  adapted glibc info page
 .\"
@@ -10,6 +7,7 @@
 .\"  The function is quite complex and deserves an example
 .\"
 .\"  Polished, aeb, 2003-11-01
+.\"
 .TH FMTMSG 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
 fmtmsg \- print formatted error messages
diff --git a/man3/fpclassify.3 b/man3/fpclassify.3
index ba23cf246..72ba45e61 100644
--- a/man3/fpclassify.3
+++ b/man3/fpclassify.3
@@ -1,12 +1,10 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" This was done with the help of the glibc manual.
 .\"
 .\" 2004-10-31, aeb, corrected
+.\"
 .TH FPCLASSIFY 3  2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
 fpclassify, isfinite, isnormal, isnan, isinf \- floating-point
diff --git a/man3/gamma.3 b/man3/gamma.3
index 003964158..bb0cf5bae 100644
--- a/man3/gamma.3
+++ b/man3/gamma.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Modified 2003-11-18, aeb: historical remarks
 .\"
diff --git a/man3/getspnam.3 b/man3/getspnam.3
index 9a8b2c022..dc34b2fb1 100644
--- a/man3/getspnam.3
+++ b/man3/getspnam.3
@@ -1,9 +1,6 @@
-.\" Copyright (c) 2003 Andries Brouwer (aeb@cwi.nl) and
-.\" Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Andries Brouwer <aeb@cwi.nl>
+.\" SPDX-FileCopyrightText: 2003, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH GETSPNAM 3  2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/getttyent.3 b/man3/getttyent.3
index c9fbe7c70..8fc914a45 100644
--- a/man3/getttyent.3
+++ b/man3/getttyent.3
@@ -1,8 +1,5 @@
-.\"  Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH GETTTYENT 3 2021-03-22  "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/isgreater.3 b/man3/isgreater.3
index 7c1f2a7c5..4c9b7fbd1 100644
--- a/man3/isgreater.3
+++ b/man3/isgreater.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" 2002-07-27 Walter Harms
 .\" this was done with the help of the glibc manual
diff --git a/man3/key_setsecret.3 b/man3/key_setsecret.3
index 5cb433b1e..04a76bf5f 100644
--- a/man3/key_setsecret.3
+++ b/man3/key_setsecret.3
@@ -1,11 +1,9 @@
-.\"  Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\"  I had no way the check the functions out
 .\"  be careful
+.\"
 .TH KEY_SETSECRET 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
 key_decryptsession, key_encryptsession, key_setsecret, key_gendes,
diff --git a/man3/lgamma.3 b/man3/lgamma.3
index de29baecc..8d5acdd7d 100644
--- a/man3/lgamma.3
+++ b/man3/lgamma.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" based on glibc infopages
 .\"
diff --git a/man3/malloc_hook.3 b/man3/malloc_hook.3
index 7b76bbc9b..47e2e8ace 100644
--- a/man3/malloc_hook.3
+++ b/man3/malloc_hook.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Heavily based on glibc documentation
 .\" Polished, added docs, removed glibc doc bug, 2002-07-20, aeb
diff --git a/man3/mempcpy.3 b/man3/mempcpy.3
index e91fce99c..5ebe74e20 100644
--- a/man3/mempcpy.3
+++ b/man3/mempcpy.3
@@ -1,12 +1,11 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
+.\" SPDX-FileCopyrightText: Free Software Foundation
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
-.\"
-.\" Heavily based on glibc infopages, copyright Free Software Foundation
+.\" Heavily based on glibc infopages
 .\"
 .\" aeb, 2003, polished a little
+.\"
 .TH MEMPCPY 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
 mempcpy, wmempcpy  \- copy memory area
diff --git a/man3/nan.3 b/man3/nan.3
index 08eba183e..fd88aa3e7 100644
--- a/man3/nan.3
+++ b/man3/nan.3
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Based on glibc infopages
 .\"
diff --git a/man3/netlink.3 b/man3/netlink.3
index 4920f97b2..f37d4cdf3 100644
--- a/man3/netlink.3
+++ b/man3/netlink.3
@@ -1,8 +1,5 @@
-.\" This manpage copyright 1998 by Andi Kleen.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Subject to the GPL.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1998, Andi Kleen.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Based on the original comments from Alexey Kuznetsov
 .\" $Id: netlink.3,v 1.1 1999/05/14 17:17:24 freitag Exp $
diff --git a/man3/nextafter.3 b/man3/nextafter.3
index 020531113..86c5886c0 100644
--- a/man3/nextafter.3
+++ b/man3/nextafter.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Based on glibc infopages
 .\"
diff --git a/man3/open_memstream.3 b/man3/open_memstream.3
index ea1489cb8..8351a9fb1 100644
--- a/man3/open_memstream.3
+++ b/man3/open_memstream.3
@@ -1,8 +1,5 @@
-.\" Copyright 2005, 2012, 2016 Michael Kerrisk <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under the GPL.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2005, 2012, 2016, Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" 2008-12-04, Petr Baudis <pasky@suse.cz>: Document open_wmemstream()
 .\"
diff --git a/man3/putgrent.3 b/man3/putgrent.3
index 3b4b4d925..e82cf53e4 100644
--- a/man3/putgrent.3
+++ b/man3/putgrent.3
@@ -1,8 +1,5 @@
-.\" Copyright 2003 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH PUTGRENT 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/remquo.3 b/man3/remquo.3
index 492329ddc..110faa41f 100644
--- a/man3/remquo.3
+++ b/man3/remquo.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" based on glibc infopages
 .\" polished, aeb
diff --git a/man3/rtime.3 b/man3/rtime.3
index 9512f9223..df03989a7 100644
--- a/man3/rtime.3
+++ b/man3/rtime.3
@@ -1,8 +1,5 @@
-.\" Copyright 2003 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003 walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Modified 2003-04-04 Walter Harms
 .\" <walter.harms@informatik.uni-oldenburg.de>
diff --git a/man3/setaliasent.3 b/man3/setaliasent.3
index 9ddf21f18..a22ed5b23 100644
--- a/man3/setaliasent.3
+++ b/man3/setaliasent.3
@@ -1,8 +1,5 @@
-.\" Copyright 2003 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003 Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Polished a bit, added a little, aeb
 .\"
diff --git a/man3/setnetgrent.3 b/man3/setnetgrent.3
index 95dd67f51..0afa216d8 100644
--- a/man3/setnetgrent.3
+++ b/man3/setnetgrent.3
@@ -1,8 +1,5 @@
-.\"  Copyright 2002 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\"  based on glibc infopages
 .\" polished - aeb
diff --git a/man3/signbit.3 b/man3/signbit.3
index 0fbc26d55..aa6110368 100644
--- a/man3/signbit.3
+++ b/man3/signbit.3
@@ -1,12 +1,9 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
+.\" SPDX-FileCopyrightText: Free Software Foundation
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
-.\"
-.\" Based on glibc infopages, copyright Free Software Foundation
+.\" Based on glibc infopages
 .\"
 .TH SIGNBIT 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/significand.3 b/man3/significand.3
index 55b7bcd6d..df903496e 100644
--- a/man3/significand.3
+++ b/man3/significand.3
@@ -1,10 +1,8 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
+.\" SPDX-FileCopyrightText: Free Software Foundation
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
-.\"
-.\" heavily based on glibc infopages, copyright Free Software Foundation
+.\" heavily based on glibc infopages
 .\"
 .TH SIGNIFICAND 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/sincos.3 b/man3/sincos.3
index 4834da815..5b5c9808e 100644
--- a/man3/sincos.3
+++ b/man3/sincos.3
@@ -1,10 +1,6 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH SINCOS 3  2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man3/tgamma.3 b/man3/tgamma.3
index 5cd58f251..b5e08c664 100644
--- a/man3/tgamma.3
+++ b/man3/tgamma.3
@@ -1,12 +1,8 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-FileCopyrightText: 2008, Linux Foundation, written by Michael Kerrisk <mtk.manpages@gmail.com>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Based on glibc infopages
-.\" and Copyright 2008, Linux Foundation, written by Michael Kerrisk
-.\"     <mtk.manpages@gmail.com>
 .\" Modified 2004-11-15, fixed error noted by Fabian Kreutz
 .\"	 <kreutz@dbs.uni-hannover.de>
 .\"
diff --git a/man3/xcrypt.3 b/man3/xcrypt.3
index 4b425ccb8..d2bb76388 100644
--- a/man3/xcrypt.3
+++ b/man3/xcrypt.3
@@ -1,8 +1,5 @@
-.\"  Copyright 2003 walter harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\"  Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2003, walter harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\"  this is the 3rd type of interface for cryptographic routines
 .\"  1. encrypt() expects a bit field
diff --git a/man4/wavelan.4 b/man4/wavelan.4
index 529351f13..f93f36a8a 100644
--- a/man4/wavelan.4
+++ b/man4/wavelan.4
@@ -1,3 +1,6 @@
+.\" SPDX-FileCopyrightText: Provenance of this page is unclear
+.\" SPDX-License-Identifier: GPL-1.0-or-later
+.\"
 .\" From jt@hplb.hpl.hp.com Thu Dec 19 18:31:49 1996
 .\" From: Jean Tourrilhes <jt@hplb.hpl.hp.com>
 .\" Address: HP Labs, Filton Road, Stoke Gifford, Bristol BS12 6QZ, U.K.
@@ -6,11 +9,9 @@
 .\"
 .\" Provenance of this page is unclear.
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
 .\" Licensed under the GPL,
 .\" after inquiries with Jean Tourrilhes and Bruce Janson
 .\" (mtk, July 2006)
-.\" %%%LICENSE_END
 .\"
 .TH WAVELAN 4 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man5/hosts.equiv.5 b/man5/hosts.equiv.5
index 2aa59be58..4993b743f 100644
--- a/man5/hosts.equiv.5
+++ b/man5/hosts.equiv.5
@@ -1,8 +1,6 @@
-.\" Copyright (c) 1995 Peter Tobias <tobias@et-inf.fho-emden.de>
+.\" SPDX-FileCopyrightText: 1995, Peter Tobias <tobias@et-inf.fho-emden.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" This file may be distributed under the GNU General Public License.
-.\" %%%LICENSE_END
 .TH HOSTS.EQUIV 5 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
 hosts.equiv \- list of hosts and users that are granted "trusted"
diff --git a/man7/boot.7 b/man7/boot.7
index 25d7b6a7c..8d0a418ae 100644
--- a/man7/boot.7
+++ b/man7/boot.7
@@ -1,8 +1,5 @@
-.\" Written by Oron Peled <oron@actcom.co.il>.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" May be distributed subject to the GPL.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: Oron Peled <oron@actcom.co.il>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" I tried to be as much generic in the description as possible:
 .\" - General boot sequence is applicable to almost any
diff --git a/man7/complex.7 b/man7/complex.7
index 6c7fcaade..ce6b8e40e 100644
--- a/man7/complex.7
+++ b/man7/complex.7
@@ -1,8 +1,5 @@
-.\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de)
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Distributed under GPL
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 2002, Walter Harms <walter.harms@informatik.uni-oldenburg.de>
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .TH COMPLEX 7 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
diff --git a/man7/netlink.7 b/man7/netlink.7
index 6b04fead9..51b043c0b 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -1,12 +1,10 @@
-.\" This man page is Copyright (c) 1998 by Andi Kleen.
-.\"
-.\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
-.\" Subject to the GPL.
-.\" %%%LICENSE_END
+.\" SPDX-FileCopyrightText: 1998, Andi Kleen.
+.\" SPDX-License-Identifier: GPL-1.0-or-later
 .\"
 .\" Based on the original comments from Alexey Kuznetsov
 .\" Modified 2005-12-27 by Hasso Tepper <hasso@estpak.ee>
 .\" $Id: netlink.7,v 1.8 2000/06/22 13:23:00 ak Exp $
+.\"
 .TH NETLINK  7 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 netlink \- communication between kernel and user space (AF_NETLINK)
-- 
2.33.0

