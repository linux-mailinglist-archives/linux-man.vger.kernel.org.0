Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17CFC2B39EB
	for <lists+linux-man@lfdr.de>; Sun, 15 Nov 2020 23:34:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727942AbgKOWda (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 17:33:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727940AbgKOWd3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 17:33:29 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51F6EC0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 14:32:53 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id 33so16742895wrl.7
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 14:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9zRMPVM3zgySmpYPwhm2NgC/ZFVErsmGsBMSo06z3Ck=;
        b=oZggq3zAE8dXvFkKGaXkv/bgjhqBxBmL+rY3r12zuJZqryEzxWqWd9q/KwPpeK4THM
         siqwPMKtB+9+fCeKqmV20zGtf0bZGHAj51fZg3QYxfhvpc+4gL22GY+t1jn5ee8aGKvz
         9DuJCAew9dzCfQp/iaY79UZ3MTYbeA5E01Wj5eiiaHBXCvpZoKmeEGuuY2Y/kosa3uRJ
         JTOGJwSG/pr/+tIf67n9vLUWuSQQaIj+vP4tn3VNFaAP2yCpcN15rJQ5FN5BFCnGF8DO
         3p7qnNDP9NK+Z7vrJ168m4HbHIAYkIB0c+SoCqK4yueTNH791obrQccNK0Yy7LvOyj72
         G5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9zRMPVM3zgySmpYPwhm2NgC/ZFVErsmGsBMSo06z3Ck=;
        b=rUVqoQKpv7pzmrnWNUS9PkfP3vmEaHlt3Q0FEWBc2/mlgIK40GqdxBCiYLoiS1CZD9
         ZIABcQAY7vyKwXkh7uLQP1VINb6xPtAYDbpEE5rYa0txx17GjREfh8/2CsQHW4Z4YEPa
         yE1ME8tSz1fxW8MDSUa59TPqrKlJIF6/blS6Oa46fBMVrsXsCdibp9aT7ma97DgC9gPM
         n/E9fZQM9aNQVrNX9fGBrK1LvNLMJT/sMZ4eQQSi4DaHRfM8G7at16CT7hL+NfmkkOx0
         IL1qcbLwJ1c4Hejl6yEQdf9FPuHes+5N8H+td2T9IF8Ce703whfxh4SX1HOzoXZXonoY
         ve4A==
X-Gm-Message-State: AOAM533kLAAyRLE9Tiba5raFvUfwNprBNLLY1m4RLCH1YM8AD2ZxUPZI
        IbySsDDuiK/9H9ob3lEpCWc=
X-Google-Smtp-Source: ABdhPJz0L7/jP2V4ylklX7jZRIEbDLNYbCW43nQRtrTkSpZfR7tq9kFR0e2Tre6yzJBblkmkHwRYfg==
X-Received: by 2002:adf:de85:: with SMTP id w5mr16363252wrl.90.1605479571714;
        Sun, 15 Nov 2020 14:32:51 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id i16sm20429493wru.92.2020.11.15.14.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 14:32:50 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] locale.1, pldd.1, sprof.1, accept.2, access.2, acct.2,
 add_key.2, adjtimex.2, alarm.2, alloc_hugepages.2, arch_prctl.2, bdflush.2,
 bind.2, bpf.2, brk.2, cacheflush.2, chmod.2, chown.2, chroot.2,
 clock_nanosleep.2, clone.2, close.2, connect.2, copy_file_range.2,
 create_module.2, delete_module.2, dup.2, epoll_create.2, epoll_wait.2,
 exit_group.2, fallocate.2, fanotify_mark.2, fcntl.2, futex.2, futimesat.2,
 get_kernel_syms.2, get_mempolicy.2, get_robust_list.2, getcpu.2, getdents.2,
 getdomainname.2, gethostname.2, getitimer.2, getpagesize.2, getsockname.2,
 getsockopt.2, gettid.2, gettimeofday.2, getunwind.2, getxattr.2,
 init_module.2, inotify_init.2, io_cancel.2, io_destroy.2, io_getevents.2,
 io_setup.2, io_submit.2, ioctl_fat.2, ioctl_tty.2, ioctl_userfaultfd.2,
 ioprio_set.2, ipc.2, kcmp.2, kexec_load.2, keyctl.2, kill.2, link.2,
 listen.2, listxattr.2, llseek.2, mbind.2, membarrier.2, memfd_create.2,
 migrate_pages.2, mkdir.2, mknod.2, mlock.2, mmap.2, mmap2.2, modify_ldt.2,
 mount.2, move_pages.2, mprotect.2, mq_getsetattr.2, mremap.2, msgctl.2,
 msgget.2, msgop.2, nfsservctl.2, open.2, open_by_handle_at.2, openat2.2,
 outb.2, pciconfig_read.2, perf_event_open.2, perfmonctl.2, pidfd_getfd.2,
 pidfd_open.2, pidfd_send_signal.2, pipe.2, pkey_alloc.2, poll.2,
 posix_fadvise.2, prctl.2, process_vm_readv.2, ptrace.2, query_module.2,
 quotactl.2, read.2, readahead.2, readdir.2, readlink.2, readv.2, recv.2,
 recvmmsg.2, remap_file_pages.2, removexattr.2, rename.2, request_key.2,
 rt_sigqueueinfo.2, s390_guarded_storage.2, s390_pci_mmio_write.2,
 s390_runtime_instr.2, s390_sthyi.2, sched_setaffinity.2, sched_setattr.2,
 sched_setparam.2, sched_setscheduler.2, seccomp.2, select.2, semctl.2,
 semget.2, semop.2, send.2, sendmmsg.2, set_mempolicy.2, set_thread_area.2,
 set_tid_address.2, setns.2, setpgid.2, setxattr.2, shmop.2, sigaction.2,
 sigprocmask.2, sigwaitinfo.2, splice.2, spu_create.2, spu_run.2, stat.2,
 statx.2, subpage_prot.2, symlink.2, sync_file_range.2, syscall.2, sysctl.2,
 syslog.2, tee.2, timer_create.2, timer_delete.2, timer_getoverrun.2,
 timer_settime.2, timerfd_create.2, tkill.2, umount.2, unlink.2, unshare.2,
 userfaultfd.2, ustat.2, utime.2, utimensat.2, vfork.2, vhangup.2, vmsplice.2,
 wait4.2, CPU_SET.3, INFINITY.3, MB_CUR_MAX.3, MB_LEN_MAX.3, a64l.3, abort.3,
 abs.3, acos.3, acosh.3, addseverity.3, adjtime.3, aio_init.3, aio_suspend.3,
 argz_add.3, asin.3, asinh.3, assert.3, assert_perror.3, atan.3, atan2.3,
 atanh.3, atexit.3, atof.3, atoi.3, basename.3, bcmp.3, bcopy.3,
 bindresvport.3, bsearch.3, bstring.3, bswap.3, btowc.3, btree.3, byteorder.3,
 bzero.3, cacos.3, cacosh.3, carg.3, casin.3, casinh.3, catan.3, catanh.3,
 catgets.3, cbrt.3, ccos.3, ccosh.3, ceil.3, cexp.3, cfree.3, cimag.3,
 circleq.3, clearenv.3, clock.3, clock_getcpuclockid.3, clog.3, closedir.3,
 cmsg.3, confstr.3, conj.3, copysign.3, cos.3, cosh.3, cpow.3, creal.3,
 crypt.3, csin.3, csinh.3, ctan.3, ctanh.3, ctermid.3, ctime.3, daemon.3,
 dbopen.3, des_crypt.3, difftime.3, div.3, dl_iterate_phdr.3, dladdr.3,
 dlinfo.3, drand48.3, drand48_r.3, duplocale.3, ecvt.3, ecvt_r.3, encrypt.3,
 end.3, endian.3, envz_add.3, erf.3, erfc.3, err.3, error.3, ether_aton.3,
 euidaccess.3, exec.3, exit.3, exp.3, exp10.3, exp2.3, expm1.3, fabs.3,
 fcloseall.3, fenv.3, fexecve.3, ffs.3, fgetc.3, fgetgrent.3, fgetpwent.3,
 fgetwc.3, fgetws.3, finite.3, flockfile.3, floor.3, fma.3, fmemopen.3,
 fmod.3, fmtmsg.3, fnmatch.3, fopen.3, fopencookie.3, fpathconf.3,
 fpclassify.3, fpurge.3, fputwc.3, fputws.3, fread.3, frexp.3, fseeko.3,
 ftok.3, fts.3, ftw.3, futimes.3, fwide.3, gcvt.3, get_phys_pages.3,
 getaddrinfo.3, getaddrinfo_a.3, getauxval.3, getcwd.3, getdtablesize.3,
 getenv.3, getgrent.3, getgrent_r.3, getgrnam.3, gethostbyname.3, gethostid.3,
 getifaddrs.3, getipnodebyname.3, getline.3, getloadavg.3, getlogin.3,
 getmntent.3, getnameinfo.3, getnetent.3, getnetent_r.3, getopt.3, getpass.3,
 getprotoent.3, getprotoent_r.3, getpt.3, getpw.3, getpwent.3, getpwent_r.3,
 getpwnam.3, getrpcent.3, getrpcent_r.3, getrpcport.3, gets.3, getservent.3,
 getservent_r.3, getspnam.3, getusershell.3, getutent.3, getutmp.3, getw.3,
 getwchar.3, glob.3, gnu_get_libc_version.3, gsignal.3, hash.3, hsearch.3,
 hypot.3, iconv.3, iconv_close.3, iconv_open.3, if_nameindex.3,
 if_nametoindex.3, index.3, inet.3, inet_net_pton.3, inet_ntop.3, inet_pton.3,
 initgroups.3, insque.3, isalpha.3, isatty.3, isfdtype.3, isgreater.3,
 iswalnum.3, iswalpha.3, iswblank.3, iswcntrl.3, iswctype.3, iswdigit.3,
 iswgraph.3, iswlower.3, iswprint.3, iswpunct.3, iswspace.3, iswupper.3,
 iswxdigit.3, j0.3, ldexp.3, lgamma.3, lio_listio.3, list.3, localeconv.3,
 log.3, log10.3, log1p.3, log2.3, lrint.3, lround.3, lsearch.3, makedev.3,
 malloc.3, malloc_get_state.3, malloc_hook.3, malloc_info.3, matherr.3,
 mblen.3, mbrlen.3, mbrtowc.3, mbsinit.3, mbsnrtowcs.3, mbsrtowcs.3,
 mbstowcs.3, mbtowc.3, mcheck.3, memccpy.3, memchr.3, memcmp.3, memcpy.3,
 memfrob.3, memmem.3, memmove.3, mempcpy.3, memset.3, mkdtemp.3, mkfifo.3,
 mkstemp.3, mktemp.3, modf.3, mpool.3, mq_close.3, mq_getattr.3, mq_notify.3,
 mq_open.3, mq_receive.3, mq_send.3, mq_unlink.3, netlink.3, newlocale.3,
 nextup.3, nl_langinfo.3, ntp_gettime.3, offsetof.3, on_exit.3,
 open_memstream.3, opendir.3, openpty.3, popen.3, posix_fallocate.3,
 posix_madvise.3, posix_memalign.3, posix_openpt.3, posix_spawn.3, pow.3,
 pow10.3, printf.3, profil.3, program_invocation_name.3, psignal.3,
 pthread_atfork.3, pthread_attr_init.3, pthread_attr_setaffinity_np.3,
 pthread_attr_setdetachstate.3, pthread_attr_setguardsize.3,
 pthread_attr_setinheritsched.3, pthread_attr_setschedparam.3,
 pthread_attr_setschedpolicy.3, pthread_attr_setscope.3,
 pthread_attr_setsigmask_np.3, pthread_attr_setstack.3,
 pthread_attr_setstackaddr.3, pthread_attr_setstacksize.3, pthread_cancel.3,
 pthread_cleanup_push.3, pthread_cleanup_push_defer_np.3, pthread_create.3,
 pthread_detach.3, pthread_equal.3, pthread_exit.3,
 pthread_getattr_default_np.3, pthread_getattr_np.3, pthread_getcpuclockid.3,
 pthread_join.3, pthread_kill.3, pthread_kill_other_threads_np.3,
 pthread_mutex_consistent.3, pthread_mutexattr_getpshared.3,
 pthread_mutexattr_init.3, pthread_mutexattr_setrobust.3,
 pthread_rwlockattr_setkind_np.3, pthread_self.3, pthread_setaffinity_np.3,
 pthread_setcancelstate.3, pthread_setconcurrency.3, pthread_setname_np.3,
 pthread_setschedparam.3, pthread_setschedprio.3, pthread_sigmask.3,
 pthread_sigqueue.3, pthread_spin_init.3, pthread_spin_lock.3,
 pthread_testcancel.3, pthread_tryjoin_np.3, pthread_yield.3, putenv.3,
 putpwent.3, puts.3, putwchar.3, qsort.3, raise.3, rand.3, random.3,
 random_r.3, rcmd.3, readdir.3, readdir_r.3, realpath.3, recno.3, regex.3,
 remainder.3, remquo.3, resolver.3, rewinddir.3, rexec.3, rint.3, round.3,
 rpc.3, rpmatch.3, rtime.3, scalb.3, scalbln.3, scandir.3, scanf.3,
 sched_getcpu.3, seekdir.3, sem_close.3, sem_destroy.3, sem_getvalue.3,
 sem_init.3, sem_open.3, sem_post.3, sem_unlink.3, sem_wait.3, setbuf.3,
 setenv.3, setjmp.3, setlocale.3, setlogmask.3, setnetgrent.3, siginterrupt.3,
 sigpause.3, sigsetops.3, sigwait.3, sin.3, sincos.3, sinh.3, sleep.3,
 slist.3, sqrt.3, stailq.3, stdin.3, stdio_ext.3, stpcpy.3, stpncpy.3,
 strcasecmp.3, strcat.3, strchr.3, strcmp.3, strcoll.3, strcpy.3, strdup.3,
 strerror.3, strfmon.3, strfromd.3, strfry.3, strftime.3, strlen.3, strnlen.3,
 strpbrk.3, strsep.3, strsignal.3, strspn.3, strstr.3, strtoimax.3, strtok.3,
 strtol.3, strtoul.3, strverscmp.3, strxfrm.3, swab.3, sysconf.3, system.3,
 tailq.3, tan.3, tanh.3, telldir.3, tempnam.3, termios.3, timegm.3,
 timeradd.3, tmpfile.3, tmpnam.3, toascii.3, toupper.3, towctrans.3,
 towlower.3, towupper.3, trunc.3, tsearch.3, ttyname.3, tzset.3, ualarm.3,
 ungetwc.3, unlocked_stdio.3, updwtmp.3, uselocale.3, usleep.3, wcpcpy.3,
 wcpncpy.3, wcrtomb.3, wcscasecmp.3, wcscat.3, wcschr.3, wcscmp.3, wcscpy.3,
 wcscspn.3, wcsdup.3, wcslen.3, wcsncasecmp.3, wcsncat.3, wcsncmp.3,
 wcsncpy.3, wcsnlen.3, wcsnrtombs.3, wcspbrk.3, wcsrchr.3, wcsrtombs.3,
 wcsspn.3, wcsstr.3, wcstoimax.3, wcstok.3, wcstombs.3, wcswidth.3, wctob.3,
 wctomb.3, wctrans.3, wctype.3, wcwidth.3, wmemchr.3, wmemcmp.3, wmemcpy.3,
 wmemmove.3, wmemset.3, wprintf.3, xdr.3, y0.3, cciss.4, dsp56k.4, fuse.4,
 hpsa.4, lirc.4, sd.4, sk98lin.4, st.4, acct.5, charmap.5, elf.5,
 repertoiremap.5, termcap.5, tzfile.5, ascii.7, bpf-helpers.7, environ.7,
 futex.7, glob.7, locale.7, man-pages.7, math_error.7, netlink.7, packet.7,
 posixoptions.7, rtld-audit.7, sigevent.7, sock_diag.7, tcp.7, udp.7, unix.7,
 uri.7, zdump.8, zic.8: srcfix: 's/^.nf$/.EX/; s/^.fi$/.EE/'
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20201115140737.247270-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f6eafa23-f893-4f78-6316-b7e0ea15489c@gmail.com>
Date:   Sun, 15 Nov 2020 23:32:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201115140737.247270-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 11/15/20 3:07 PM, Alejandro Colomar wrote:
> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi Michael,
> 
> As we discussed,
> I removed _every_ appearance of [.nf] and [.fi] from the pages.

Ooops -- I don't quite recall the details of that discussion.
But, this is not so simple.

> There were some unmatched [.nf] appearances,
> which I manually matched with [.EE].

In cases like this, it would probably be better to split this
out into separate patches with a small preparatory patch that
fixes the unbalanced .nf macros, followed by the bigger patch,
but even so, it's not so simple...

.nf/.fi appears in two places generally:
(1) Inside the SYNOPSIS (many pages)
(2) Elsewhere in the page (fewer pages)

Probably, most (all?) cases in the second category should 
really be .EX/.EE.

But in the SYNOPSIS, .nf/.fi is used inconsistently. The 
majority of pages use it, but a substantial minority (200+ pages)
do not (e.g., chdir.2). (That inconsistency is a mess from
history.) Why does this matter? Well, theoretically at least,
pages might be rendered to something other than the terminal.
I care at least a little bit about PDF rendering[1], and the
inconsistency means that converting .nf/fi to .EX/.EE will
produce a very different appearance in pages that currently
do/don't use .nf/.fi in the SYNOPSIS.

What to do? I'm not sure. When I look at the PDF renderings,
using simply .nf/.fi (or nothing at all) in the SYNOPSIS
produces a variable-width-font output that is visually
appealing for the function prototypes. Switching to
.EX/.EE, the result is not unpleasant, but I'm not
sure I prefer it (in a PDF rendering).[2]

As a first step, all pages should probably be using .nf/.fi
in the SYNOPSIS. But, that's probably a painful manual edit.
I've been manually fixing pages over the years, but many
are not fixed yet.

> That's the reason there are a few more insertions than deletions.


I manually fixed chroot.2, memfd_create.2, and tailq.3. Were there
any others?

> Woah, 439 KiB of a patch...

:-)

 
> I tested a few of the pages to see
> if anything changed in the rendered output.
> Apparently, no.
> I hope that holds throughout all of the modified pages.
> 
> BTW, I had to script a bit to get the subject of the commit
> (as you can probably guess I didn't write that myself :p)
> Would you want to add that to 'scripts/'?

I myself have a small script based around the output of

   git status | grep 'modified:' | awk '{print $NF}'

How do you do it?

Thanks,

Michael

[1] 
function pdfmanq {
    man -Tps -l $1 > /tmp/$(basename $1).$$.ps
    ps2pdf /tmp/$(basename $1).$$.ps $1.pdf
}

function pdfman {
    pdfmanq $1
    evince $1.pdf    # Or whatever PDF viewer you use
}

# pdfman somepage.n

[2]
But I am perhaps old school on this point.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
