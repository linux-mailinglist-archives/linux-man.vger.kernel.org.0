Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C8EA400FF5
	for <lists+linux-man@lfdr.de>; Sun,  5 Sep 2021 15:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229583AbhIEN0y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Sep 2021 09:26:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbhIEN0x (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Sep 2021 09:26:53 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D4BC061575
        for <linux-man@vger.kernel.org>; Sun,  5 Sep 2021 06:25:49 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id i3so2643619wmq.3
        for <linux-man@vger.kernel.org>; Sun, 05 Sep 2021 06:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9Tv2nthIF8eqXuQ0ifRatsPOzE6hAU2POtXPPikNHdw=;
        b=E5+dN163AlJ7PlH0K68RfNiUagBOP5U8CkgEQUcB1Pe4vtVlerxNkaaAI7xGNKHJ6l
         KGU3KnKep6RgJj3nu2A+F9+CT/sD8BQEBgUTndUv3TEkkn9BYvRLXGrnL+bAbo2zfy4z
         HlGbmRO5bFxPyp5Yohz07TJt4cWLTiaffIwR2GuepXWTD4EVDP1z40YZiCe12uyLe6yf
         TTvy9qrUwlyOxNwM35mVfcqMRuTyhzQh/96Z+DLWOUxXclWJPDtLHy8Qr8q7D0X8DRIW
         UXd/JZzi6PBMXCwXKqqnGQ4xKtsF263iiYqUBttQ5L6Dw5JWT54vgi7hvTA1KutXbGXS
         oIWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9Tv2nthIF8eqXuQ0ifRatsPOzE6hAU2POtXPPikNHdw=;
        b=pY4faEhMpWiRdJQjDWTfVpJaIFJpv01c2LkdD9pfTQUKDE/CZ2Iogtsx3Af/lSWn1a
         0rC6vBk/5it1jRgGc+ye8M+B060ZKMSq+SI+/ARdEirLHPhGPPYJHYQVy/5cx1nKPeuC
         ryUp3a27jPAA28mcCwGQy84zW2oF4zehoK20u3WLSmMbiXFtS0COeLx73HaA4OcOzsQ3
         WQ8ABHQs2hhv+fBcABTujMlG4t5CNM/Ocr44p5l3D65Ol1aghOuPa3l/d2B+sMCLhioG
         2hb6yClJo6drvpbn1k5+7+rncm6bF9ErydG4tjp2TJA0QM84hVPpxkqnp2m6a4mwTsHS
         ZUng==
X-Gm-Message-State: AOAM530nFlhDT3R2vvgmzBpnPSh/1tsLQEO7yctvfRuoHsLc0I4E2WPP
        zW4QXWyydPKP9vUYRCfTHhM=
X-Google-Smtp-Source: ABdhPJxIb6/CxjLtxDYvSTpc/xf5d9Nq1X08MfZEIw6w8hTtMbvqy/cs5C24q1qTWodlNWWm4Tr2TQ==
X-Received: by 2002:a1c:1cc:: with SMTP id 195mr7175831wmb.188.1630848348240;
        Sun, 05 Sep 2021 06:25:48 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id l124sm4608586wml.8.2021.09.05.06.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Sep 2021 06:25:47 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Jilayne Lovejoy <opensource@jilayne.com>,
        Alexios Zavras <alexios.zavras@intel.com>,
        Richard Fontana <rfontana@redhat.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RFC v3 0/9] Use SPDX markings
Date:   Sun,  5 Sep 2021 15:25:33 +0200
Message-Id: <20210905132542.245236-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi,

This (unfinished) patch set simplifies copyright markings to use SPDX
and REUSE conventions, by leaving a few lines in the files themselves,
and having the full license texts in LICENSES/, avoiding also repetition.

I'd like to get some feedback before continuing with these changes.

There are some pages where the copyright text wasn't clearly differentiated
from historic version markings, and I might have made some mistakes;
please review that specially.

I have yet to add the Verbatim-man-pages license text,
which will be released soon by SPDX, and fix the remaining cases of
Verbatim-man-pages, and also the remaining licenses.

Since this is a quite heavy patch set, you can check the corresponding
tag on my github:

	github.com:alejandro-colomar/man-pages.git	spdx-v3-20210905

Thanks,

Alex


Alejandro Colomar (9):
  LICENSES/GPL-1.0-or-later.txt, many pages: Use SPDX markings
  LICENSES/GPL-2.0-or-later.txt: Add license text
  Many pages: [GPL-2.0-or-later] Use SPDX markings
  Many pages: [GPL-2.0-or-later] Use SPDX markings
  Many pages: [GPL-2.0-or-later] Use SPDX markings
  Many pages: [GPL-2.0-or-later] Use SPDX markings
  Many pages: [GPL-2.0-or-later] Use SPDX markings
  Many pages: [Verbatim-man-pages] Use SPDX markings
  Many pages: [Verbatim-man-pages] Use SPDX markings

 LICENSES/GPL-1.0-or-later.txt | 100 +++++++++++++++++++++++++++++
 LICENSES/GPL-2.0-or-later.txt | 117 ++++++++++++++++++++++++++++++++++
 man1/getent.1                 |  26 +-------
 man1/iconv.1                  |  24 +------
 man1/intro.1                  |  25 +-------
 man1/ldd.1                    |  18 ++----
 man1/locale.1                 |  25 +-------
 man1/localedef.1              |  30 ++-------
 man1/memusage.1               |  25 +-------
 man1/memusagestat.1           |  23 +------
 man1/mtrace.1                 |  23 +------
 man1/pldd.1                   |  25 +-------
 man1/sprof.1                  |  25 +-------
 man1/time.1                   |   8 +--
 man2/_syscall.2               |  25 +-------
 man2/acct.2                   |  26 +-------
 man2/add_key.2                |  13 ++--
 man2/adjtimex.2               |  26 +-------
 man2/bdflush.2                |  24 +------
 man2/brk.2                    |  27 +-------
 man2/cacheflush.2             |  25 +-------
 man2/capget.2                 |   9 +--
 man2/clone.2                  |   9 +--
 man2/create_module.2          |   7 +-
 man2/epoll_create.2           |  22 +------
 man2/epoll_ctl.2              |  22 +------
 man2/epoll_wait.2             |  22 +------
 man2/eventfd.2                |  21 +-----
 man2/get_kernel_syms.2        |   7 +-
 man2/getsid.2                 |  27 ++------
 man2/getxattr.2               |  26 +-------
 man2/inotify_add_watch.2      |  26 +-------
 man2/inotify_init.2           |  26 +-------
 man2/inotify_rm_watch.2       |  24 +------
 man2/io_cancel.2              |   7 +-
 man2/io_destroy.2             |   7 +-
 man2/io_getevents.2           |   7 +-
 man2/io_setup.2               |   7 +-
 man2/io_submit.2              |   9 +--
 man2/ioctl_console.2          |  26 +-------
 man2/ioctl_ficlonerange.2     |  23 +------
 man2/ioctl_fideduperange.2    |  23 +------
 man2/ioctl_fslabel.2          |  23 +------
 man2/ioctl_getfsmap.2         |  23 +------
 man2/ioctl_tty.2              |   9 +--
 man2/ioperm.2                 |  26 +-------
 man2/ioprio_set.2             |  19 +-----
 man2/ipc.2                    |  25 +-------
 man2/listxattr.2              |  28 ++------
 man2/memfd_create.2           |  22 +------
 man2/memfd_secret.2           |  25 ++------
 man2/mkdir.2                  |  14 ++--
 man2/mknod.2                  |  14 ++--
 man2/mlock.2                  |  27 ++------
 man2/modify_ldt.2             |  26 +-------
 man2/mremap.2                 |  24 +------
 man2/nanosleep.2              |  28 ++------
 man2/outb.2                   |  26 +-------
 man2/perf_event_open.2        |  24 +------
 man2/ptrace.2                 |  32 ++--------
 man2/query_module.2           |   7 +-
 man2/removexattr.2            |  26 +-------
 man2/request_key.2            |  13 ++--
 man2/s390_pci_mmio_write.2    |  25 +-------
 man2/s390_runtime_instr.2     |  25 +-------
 man2/s390_sthyi.2             |  25 +-------
 man2/sched_get_priority_max.2 |  24 +------
 man2/sched_rr_get_interval.2  |  24 +------
 man2/sched_setaffinity.2      |  26 +-------
 man2/sched_setparam.2         |  24 +------
 man2/sched_yield.2            |  24 +------
 man2/set_thread_area.2        |  10 ++-
 man2/setsid.2                 |  27 +-------
 man2/setxattr.2               |  26 +-------
 man2/signalfd.2               |  21 +-----
 man2/socketcall.2             |  25 +-------
 man2/spu_create.2             |  19 +-----
 man2/spu_run.2                |  19 +-----
 man2/timerfd_create.2         |  19 +-----
 man2/unimplemented.2          |  24 +------
 man2/unshare.2                |  13 ++--
 man3/MB_CUR_MAX.3             |  10 +--
 man3/MB_LEN_MAX.3             |  10 +--
 man3/__setfpucw.3             |   8 +--
 man3/a64l.3                   |   8 +--
 man3/addseverity.3            |   7 +-
 man3/aio_cancel.3             |  24 +------
 man3/aio_error.3              |  24 +------
 man3/aio_fsync.3              |  24 +------
 man3/aio_read.3               |  24 +------
 man3/aio_return.3             |  24 +------
 man3/aio_suspend.3            |  26 +-------
 man3/aio_write.3              |  24 +------
 man3/argz_add.3               |   8 +--
 man3/btowc.3                  |  10 +--
 man3/cabs.3                   |   7 +-
 man3/cacos.3                  |   9 +--
 man3/cacosh.3                 |   9 +--
 man3/carg.3                   |   7 +-
 man3/casin.3                  |   7 +-
 man3/casinh.3                 |   7 +-
 man3/catan.3                  |   9 +--
 man3/catanh.3                 |   9 +--
 man3/ccos.3                   |   7 +-
 man3/ccosh.3                  |   7 +-
 man3/cexp.3                   |   7 +-
 man3/cexp2.3                  |   7 +-
 man3/cfree.3                  |  24 +------
 man3/cimag.3                  |   7 +-
 man3/clog.3                   |   7 +-
 man3/clog10.3                 |   7 +-
 man3/clog2.3                  |   7 +-
 man3/conj.3                   |   7 +-
 man3/cpow.3                   |   7 +-
 man3/cproj.3                  |   7 +-
 man3/creal.3                  |   7 +-
 man3/crypt.3                  |  27 +-------
 man3/csin.3                   |   7 +-
 man3/csinh.3                  |   7 +-
 man3/csqrt.3                  |   7 +-
 man3/ctan.3                   |   7 +-
 man3/ctanh.3                  |   7 +-
 man3/des_crypt.3              |  10 +--
 man3/dlerror.3                |  26 +-------
 man3/dlopen.3                 |  29 ++-------
 man3/dlsym.3                  |  26 +-------
 man3/encrypt.3                |  25 +-------
 man3/envz_add.3               |   8 +--
 man3/errno.3                  |  24 +------
 man3/fdim.3                   |  10 +--
 man3/fenv.3                   |  24 +------
 man3/fgetwc.3                 |  11 +---
 man3/fgetws.3                 |  11 +---
 man3/fma.3                    |  10 +--
 man3/fmax.3                   |  10 +--
 man3/fmemopen.3               |   7 +-
 man3/fmin.3                   |  10 +--
 man3/fmtmsg.3                 |   8 +--
 man3/fpclassify.3             |   8 +--
 man3/fputwc.3                 |  10 +--
 man3/fputws.3                 |  10 +--
 man3/ftime.3                  |  26 +-------
 man3/ftw.3                    |  30 ++-------
 man3/fwide.3                  |  10 +--
 man3/gamma.3                  |   7 +-
 man3/getgrent_r.3             |  24 +------
 man3/getpass.3                |  24 +------
 man3/getpwent_r.3             |  24 +------
 man3/getspnam.3               |   9 +--
 man3/getttyent.3              |   7 +-
 man3/getutent.3               |  24 +------
 man3/getwchar.3               |  10 +--
 man3/hsearch.3                |  27 +-------
 man3/iconv.3                  |  10 +--
 man3/iconv_close.3            |  10 +--
 man3/iconv_open.3             |  10 +--
 man3/isgreater.3              |   7 +-
 man3/iswalnum.3               |  10 +--
 man3/iswalpha.3               |  10 +--
 man3/iswblank.3               |  10 +--
 man3/iswcntrl.3               |  10 +--
 man3/iswctype.3               |  10 +--
 man3/iswdigit.3               |  10 +--
 man3/iswgraph.3               |  10 +--
 man3/iswlower.3               |  10 +--
 man3/iswprint.3               |  10 +--
 man3/iswpunct.3               |  10 +--
 man3/iswspace.3               |  10 +--
 man3/iswupper.3               |  10 +--
 man3/iswxdigit.3              |  10 +--
 man3/key_setsecret.3          |   8 +--
 man3/lgamma.3                 |  10 +--
 man3/lio_listio.3             |  24 +------
 man3/lockf.3                  |  25 +-------
 man3/login.3                  |  26 +-------
 man3/malloc_hook.3            |   7 +-
 man3/mblen.3                  |  10 +--
 man3/mbrlen.3                 |  10 +--
 man3/mbrtowc.3                |  10 +--
 man3/mbsinit.3                |  10 +--
 man3/mbsnrtowcs.3             |  10 +--
 man3/mbsrtowcs.3              |  10 +--
 man3/mbstowcs.3               |  12 +---
 man3/mbtowc.3                 |  10 +--
 man3/mempcpy.3                |  11 ++--
 man3/nan.3                    |   7 +-
 man3/netlink.3                |   7 +-
 man3/nextafter.3              |  10 +--
 man3/nl_langinfo.3            |  14 ++--
 man3/open_memstream.3         |   7 +-
 man3/perror.3                 |  29 ++-------
 man3/posix_madvise.3          |  20 +-----
 man3/printf.3                 |  24 +------
 man3/putgrent.3               |   7 +-
 man3/putwchar.3               |  10 +--
 man3/remquo.3                 |  10 +--
 man3/rtime.3                  |   7 +-
 man3/setaliasent.3            |   7 +-
 man3/setjmp.3                 |  24 +------
 man3/setnetgrent.3            |   7 +-
 man3/signbit.3                |  13 ++--
 man3/significand.3            |  10 ++-
 man3/sincos.3                 |  10 +--
 man3/stpncpy.3                |  10 +--
 man3/strfmon.3                |  24 +------
 man3/strnlen.3                |  10 +--
 man3/strtoimax.3              |  24 +------
 man3/termios.3                |  27 +-------
 man3/tgamma.3                 |  10 +--
 man3/towctrans.3              |  10 +--
 man3/towlower.3               |  12 +---
 man3/towupper.3               |  11 +---
 man3/ttyname.3                |  24 +------
 man3/ualarm.3                 |  24 +------
 man3/ungetwc.3                |  10 +--
 man3/updwtmp.3                |  25 +-------
 man3/wcpcpy.3                 |  10 +--
 man3/wcpncpy.3                |  10 +--
 man3/wcrtomb.3                |  10 +--
 man3/wcscasecmp.3             |  10 +--
 man3/wcscat.3                 |  10 +--
 man3/wcschr.3                 |  10 +--
 man3/wcscmp.3                 |  10 +--
 man3/wcscpy.3                 |  10 +--
 man3/wcscspn.3                |  10 +--
 man3/wcsdup.3                 |  10 +--
 man3/wcslen.3                 |  10 +--
 man3/wcsncasecmp.3            |  10 +--
 man3/wcsncat.3                |  10 +--
 man3/wcsncmp.3                |  10 +--
 man3/wcsncpy.3                |  10 +--
 man3/wcsnlen.3                |  10 +--
 man3/wcsnrtombs.3             |  10 +--
 man3/wcspbrk.3                |  10 +--
 man3/wcsrchr.3                |  10 +--
 man3/wcsrtombs.3              |  10 +--
 man3/wcsspn.3                 |  10 +--
 man3/wcsstr.3                 |  10 +--
 man3/wcstoimax.3              |  24 +------
 man3/wcstok.3                 |  10 +--
 man3/wcstombs.3               |  10 +--
 man3/wcswidth.3               |  10 +--
 man3/wctob.3                  |  10 +--
 man3/wctomb.3                 |  10 +--
 man3/wctrans.3                |  10 +--
 man3/wctype.3                 |  10 +--
 man3/wcwidth.3                |  10 +--
 man3/wmemchr.3                |  10 +--
 man3/wmemcmp.3                |  10 +--
 man3/wmemcpy.3                |  10 +--
 man3/wmemmove.3               |  10 +--
 man3/wmemset.3                |  10 +--
 man3/wordexp.3                |  24 +------
 man3/wprintf.3                |  10 +--
 man3/xcrypt.3                 |   7 +-
 man4/console_codes.4          |  20 +-----
 man4/cpuid.4                  |  26 +-------
 man4/dsp56k.4                 |  26 +-------
 man4/fd.4                     |  28 ++------
 man4/full.4                   |  26 +-------
 man4/fuse.4                   |  26 +-------
 man4/hd.4                     |  25 +-------
 man4/initrd.4                 |  26 +-------
 man4/intro.4                  |  26 +-------
 man4/lirc.4                   |  25 +-------
 man4/loop.4                   |  27 +-------
 man4/lp.4                     |  26 +-------
 man4/mem.4                    |  26 +-------
 man4/mouse.4                  |  26 +-------
 man4/msr.4                    |  26 +-------
 man4/null.4                   |  26 +-------
 man4/ram.4                    |  26 +-------
 man4/random.4                 |  10 +--
 man4/rtc.4                    |  25 +-------
 man4/sd.4                     |  26 +-------
 man4/sk98lin.4                |  27 +-------
 man4/st.4                     |  26 +-------
 man4/tty.4                    |  27 +-------
 man4/ttyS.4                   |  26 +-------
 man4/vcs.4                    |  27 +-------
 man4/veth.4                   |  29 +--------
 man4/wavelan.4                |   5 +-
 man5/acct.5                   |  25 +-------
 man5/charmap.5                |  19 +-----
 man5/core.5                   |  25 +-------
 man5/filesystems.5            |  24 +------
 man5/ftpusers.5               |  19 +-----
 man5/group.5                  |  26 +-------
 man5/host.conf.5              |  26 ++------
 man5/hosts.5                  |  24 +------
 man5/hosts.equiv.5            |   6 +-
 man5/intro.5                  |  28 ++------
 man5/issue.5                  |  26 +-------
 man5/locale.5                 |  23 ++-----
 man5/motd.5                   |  26 +-------
 man5/networks.5               |  24 +------
 man5/nologin.5                |  28 ++------
 man5/nscd.conf.5              |  20 +-----
 man5/nsswitch.conf.5          |  26 +-------
 man5/passwd.5                 |  34 ++--------
 man5/proc.5                   |  36 ++---------
 man5/protocols.5              |  24 +------
 man5/repertoiremap.5          |  22 +------
 man5/securetty.5              |  26 +-------
 man5/services.5               |  28 +-------
 man5/shells.5                 |  26 +-------
 man5/slabinfo.5               |  27 +-------
 man5/sysfs.5                  |  25 +-------
 man5/termcap.5                |  26 +-------
 man5/tmpfs.5                  |  25 +-------
 man5/ttytype.5                |  29 ++-------
 man5/utmp.5                   |  28 ++------
 man6/intro.6                  |  26 +-------
 man7/address_families.7       |  27 +-------
 man7/aio.7                    |  25 +-------
 man7/armscii-8.7              |  24 +------
 man7/ascii.7                  |  24 +------
 man7/attributes.7             |  24 +------
 man7/boot.7                   |   7 +-
 man7/bootparam.7              |  24 +------
 man7/capabilities.7           |  25 +-------
 man7/cgroup_namespaces.7      |  26 +-------
 man7/cgroups.7                |  27 +-------
 man7/charsets.7               |  12 +---
 man7/complex.7                |   7 +-
 man7/cp1251.7                 |  24 +------
 man7/cp1252.7                 |  24 +------
 man7/credentials.7            |  25 +-------
 man7/environ.7                |  39 +++---------
 man7/epoll.7                  |  21 +-----
 man7/fanotify.7               |  26 +-------
 man7/feature_test_macros.7    |  25 +-------
 man7/glob.7                   |  24 +------
 man7/hier.7                   |  31 +--------
 man7/inode.7                  |  25 +-------
 man7/inotify.7                |  27 +-------
 man7/intro.7                  |  27 +-------
 man7/ipc_namespaces.7         |  26 +-------
 man7/iso_8859-1.7             |  25 +-------
 man7/iso_8859-10.7            |  24 +------
 man7/iso_8859-11.7            |  26 +-------
 man7/iso_8859-13.7            |  24 +------
 man7/iso_8859-14.7            |  24 +------
 man7/iso_8859-15.7            |  26 +-------
 man7/iso_8859-16.7            |  24 +------
 man7/iso_8859-2.7             |  27 ++------
 man7/iso_8859-3.7             |  24 +------
 man7/iso_8859-4.7             |  24 +------
 man7/iso_8859-5.7             |  24 +------
 man7/iso_8859-6.7             |  24 +------
 man7/iso_8859-7.7             |  24 +------
 man7/iso_8859-8.7             |  24 +------
 man7/iso_8859-9.7             |  24 +------
 man7/kernel_lockdown.7        |  12 +---
 man7/keyrings.7               |  13 ++--
 man7/koi8-r.7                 |  24 +------
 man7/koi8-u.7                 |  24 +------
 man7/libc.7                   |  26 +-------
 man7/locale.7                 |  27 +-------
 man7/man-pages.7              |  29 ++-------
 man7/man.7                    |  27 +-------
 man7/math_error.7             |  26 +-------
 man7/mount_namespaces.7       |  26 +-------
 man7/mq_overview.7            |  25 +-------
 man7/namespaces.7             |  28 +-------
 man7/netlink.7                |   8 +--
 man7/network_namespaces.7     |  26 +-------
 man7/nptl.7                   |  26 +-------
 man7/numa.7                   |  31 ++-------
 man7/path_resolution.7        |  25 +-------
 man7/persistent-keyring.7     |  11 +---
 man7/pid_namespaces.7         |  28 +-------
 man7/pipe.7                   |  25 +-------
 man7/pkeys.7                  |  25 +-------
 man7/posixoptions.7           |  24 +------
 man7/process-keyring.7        |  11 +---
 man7/pthreads.7               |  25 +-------
 man7/pty.7                    |  25 +-------
 man7/random.7                 |  31 ++-------
 man7/rtld-audit.7             |  26 +-------
 man7/sched.7                  |  35 ++--------
 man7/sem_overview.7           |  25 +-------
 man7/session-keyring.7        |  11 +---
 man7/shm_overview.7           |  26 +-------
 man7/sigevent.7               |  27 +-------
 man7/signal-safety.7          |  25 +-------
 man7/signal.7                 |  30 ++-------
 man7/sock_diag.7              |  25 +-------
 man7/spufs.7                  |  19 +-----
 man7/standards.7              |  24 +------
 man7/suffixes.7               |  25 +-------
 man7/system_data_types.7      |  28 +-------
 man7/sysvipc.7                |  25 +-------
 man7/termio.7                 |  25 +-------
 man7/thread-keyring.7         |  11 +---
 man7/time.7                   |  25 +-------
 man7/time_namespaces.7        |  26 +-------
 man7/udplite.7                |  25 +-------
 man7/unicode.7                |  24 +------
 man7/units.7                  |  25 +-------
 man7/uri.7                    |  26 +-------
 man7/user-keyring.7           |  11 +---
 man7/user-session-keyring.7   |  11 +---
 man7/user_namespaces.7        |  28 +-------
 man7/utf-8.7                  |  24 +------
 man7/uts_namespaces.7         |  26 +-------
 man7/vsock.7                  |  25 +-------
 man7/xattr.7                  |  29 +--------
 man8/iconvconfig.8            |  24 +------
 man8/intro.8                  |  27 +-------
 man8/ldconfig.8               |  21 ++----
 man8/nscd.8                   |  20 +-----
 man8/sln.8                    |  25 +-------
 413 files changed, 1269 insertions(+), 6615 deletions(-)
 create mode 100644 LICENSES/GPL-1.0-or-later.txt
 create mode 100644 LICENSES/GPL-2.0-or-later.txt

-- 
2.33.0

