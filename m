Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E9B2301D64
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 17:07:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726396AbhAXQHJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 11:07:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726362AbhAXQHH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 11:07:07 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9374C061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 08:06:26 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id b5so9821473wrr.10
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 08:06:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Bb6K2CvGX/2/VLz+iIKC4xxKzCQpr1YfOspJPiQyQv4=;
        b=TCDtmVPyz5no5/AxJCvupDI3jfKUuBp3JZxt4f14Ej4eS+89VuZB4ELVgNHs4sG0ZQ
         XAqqfXDTsi1CgpPPrsVw4lu8xupA0EAYyk9D1jFdqGcSEN+8EBDhVmdYph9LUE+lPhMm
         auUcDJDlBVVSPYmwoIHgBfTFnD21CqmNBYXV67iPv0jYy+1CYOHajTmLFbyHUBZiA7fw
         Nf+WcE14tAFom0Lw92mWQxXhlqLNbyTpDhWx4geCL9zf1k4FCOvZMga2f1/90xyrcC1V
         gHY0aESC5/NNktu3SH3McDQCD9Clt7tjG7ZRIhwcFM+h4XmB4g9p6oM2qufPlDSGyzWu
         a8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Bb6K2CvGX/2/VLz+iIKC4xxKzCQpr1YfOspJPiQyQv4=;
        b=G8qb3puKJ+SSziCvnS+t+nWNCHLXvkr8y0iYs6cmET3BGuz3o/9XQUFR3cA3BtX11d
         HwpgzmVVdqyyGNT/2u+52vTjW76nCmtwGHP8c3FzliBLvcNJHIb0os8q0k5Y8vAlAXY2
         LY34xHjYbX6uTNhOMTV904GD12NyrvtcWIF/hpBdeTTiV+hGY0hQqQY4PtA7Ceefi2aX
         eu7lODHXxZZLvjO2GKpiMNFhKHYD195KsW65I1qRJVuI6nGPzXNuAkY+MalkBsAQfLze
         NXyRKwtl0aNtaezhIMi4070JO+5nhWZ9ykk6mVjp6witzJksxjYzS9+MdHYYT6ts9mFx
         ZUsA==
X-Gm-Message-State: AOAM530uh/0jXei3MUxfB1YoGlZcJrjvkmUYHIT0E2OMOowNfZXob8AH
        M5VGv7MzjuFVh8oIjSWa/3Uo2qI7Iyw=
X-Google-Smtp-Source: ABdhPJwUWaEPmJoFTWEhaxWhkbXGHeWDY8O/PkZbANcVb5Ak44Owy2dcNljCzEgYA2guVszwfe14Og==
X-Received: by 2002:a5d:6206:: with SMTP id y6mr13723213wru.413.1611504385202;
        Sun, 24 Jan 2021 08:06:25 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id v6sm18477447wrx.32.2021.01.24.08.06.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Jan 2021 08:06:23 -0800 (PST)
Subject: Re: [PATCH] Various pages: Use 'logical' puntuation method for
 parentheses
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
References: <20210124151035.70536-5-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ab080b59-8d3e-d3cf-3b70-ba2cf8fbae67@gmail.com>
Date:   Sun, 24 Jan 2021 17:06:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <20210124151035.70536-5-alx.manpages@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/24/21 4:10 PM, Alejandro Colomar wrote:
> This fix places periods after the closing parenthesis.
> This is normative in various European languages,
> and avoids confusion.
> 
> See "Hart's Rules",
> and the "Oxford Dictionary for Writers and Editors".
> See also the spanish "Diccionario Panhispanico de Dudas"
> entry about parentheses.
> 
> 
> Script:
> 
> $ find man? -type f \
>   |xargs sed -iE '/(etc\.\)|\.\.\.|\.\)\.|\(\.\)| ack\.| ed\.| dec\.|Copyright)/!s/\.\)/)./';
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>> ---
> 
> Hi Michael,
> 
> I thoroughly reviewed this one, and didn't see any weird things.
> I don't have a copy of Hart's Rules, or the Oxford dict.;
> I followed the Spanish rules for parentheses, which I guess will be the same:
> <https://www.rae.es/dpd/par%C3%A9ntesis>.
> You can practice a bit of Spanish reading that ;).
> 
> Cheers,
> 
> Alex

Hi Michael,

This patch is too large for vger (395 KiB);
what should I do?

Split it into <100K chunks? (I think the limit for vger is 100 KiB).
Forward a sample of it to linux-man@?

Thanks,

Alex

> 
> 
>  man1/getent.1                        |   6 +-
>  man1/intro.1                         |   2 +-
>  man1/ldd.1                           |   6 +-
>  man1/time.1                          |  16 ++--
>  man2/_exit.2                         |   2 +-
>  man2/_syscall.2                      |   2 +-
>  man2/access.2                        |   6 +-
>  man2/adjtimex.2                      |   2 +-
>  man2/alloc_hugepages.2               |   2 +-
>  man2/bind.2                          |   2 +-
>  man2/bpf.2                           |   6 +-
>  man2/brk.2                           |   2 +-
>  man2/capget.2                        |   2 +-
>  man2/chdir.2                         |   2 +-
>  man2/chmod.2                         |   8 +-
>  man2/chown.2                         |   6 +-
>  man2/chroot.2                        |   2 +-
>  man2/clock_getres.2                  |   2 +-
>  man2/clock_nanosleep.2               |   6 +-
>  man2/clone.2                         |  36 ++++-----
>  man2/close.2                         |   6 +-
>  man2/connect.2                       |   6 +-
>  man2/delete_module.2                 |   2 +-
>  man2/epoll_create.2                  |   2 +-
>  man2/epoll_ctl.2                     |   2 +-
>  man2/eventfd.2                       |   2 +-
>  man2/execve.2                        |  14 ++--
>  man2/execveat.2                      |   2 +-
>  man2/fallocate.2                     |   4 +-
>  man2/fanotify_mark.2                 |   2 +-
>  man2/fcntl.2                         |  42 +++++------
>  man2/flock.2                         |   4 +-
>  man2/fork.2                          |   8 +-
>  man2/fsync.2                         |   2 +-
>  man2/futex.2                         |  28 +++----
>  man2/get_mempolicy.2                 |   2 +-
>  man2/getcpu.2                        |   6 +-
>  man2/getdomainname.2                 |   2 +-
>  man2/getgroups.2                     |   2 +-
>  man2/gethostname.2                   |   4 +-
>  man2/getitimer.2                     |   6 +-
>  man2/getpagesize.2                   |   2 +-
>  man2/getpid.2                        |   4 +-
>  man2/getpriority.2                   |   4 +-
>  man2/getrlimit.2                     |   4 +-
>  man2/getrusage.2                     |   6 +-
>  man2/gettid.2                        |   2 +-
>  man2/gettimeofday.2                  |   8 +-
>  man2/getxattr.2                      |   4 +-
>  man2/init_module.2                   |   2 +-
>  man2/inotify_rm_watch.2              |   2 +-
>  man2/intro.2                         |   2 +-
>  man2/ioctl_console.2                 |  60 +++++++--------
>  man2/ioctl_iflags.2                  |   4 +-
>  man2/ioctl_tty.2                     |   8 +-
>  man2/ioctl_userfaultfd.2             |  16 ++--
>  man2/keyctl.2                        |  12 +--
>  man2/kill.2                          |   2 +-
>  man2/link.2                          |   6 +-
>  man2/listxattr.2                     |   2 +-
>  man2/lseek.2                         |   4 +-
>  man2/madvise.2                       |  14 ++--
>  man2/mbind.2                         |   2 +-
>  man2/memfd_create.2                  |   8 +-
>  man2/mincore.2                       |   4 +-
>  man2/mkdir.2                         |   2 +-
>  man2/mknod.2                         |   4 +-
>  man2/mlock.2                         |   6 +-
>  man2/mmap.2                          |  14 ++--
>  man2/mmap2.2                         |   2 +-
>  man2/mount.2                         |  22 +++---
>  man2/mprotect.2                      |   6 +-
>  man2/msgctl.2                        |   4 +-
>  man2/msgget.2                        |   4 +-
>  man2/msgop.2                         |   4 +-
>  man2/msync.2                         |   4 +-
>  man2/nice.2                          |   4 +-
>  man2/open.2                          |  16 ++--
>  man2/open_by_handle_at.2             |  10 +--
>  man2/openat2.2                       |  10 +--
>  man2/perf_event_open.2               |   2 +-
>  man2/personality.2                   |   2 +-
>  man2/pipe.2                          |   4 +-
>  man2/pivot_root.2                    |   6 +-
>  man2/poll.2                          |   4 +-
>  man2/posix_fadvise.2                 |   4 +-
>  man2/prctl.2                         |  18 ++---
>  man2/process_vm_readv.2              |   4 +-
>  man2/ptrace.2                        |  74 +++++++++----------
>  man2/quotactl.2                      |   2 +-
>  man2/read.2                          |   2 +-
>  man2/readlink.2                      |   4 +-
>  man2/readv.2                         |   6 +-
>  man2/reboot.2                        |   2 +-
>  man2/recv.2                          |   2 +-
>  man2/recvmmsg.2                      |   4 +-
>  man2/removexattr.2                   |   2 +-
>  man2/rename.2                        |   8 +-
>  man2/request_key.2                   |   2 +-
>  man2/rt_sigqueueinfo.2               |   4 +-
>  man2/sched_setaffinity.2             |   4 +-
>  man2/sched_setscheduler.2            |   2 +-
>  man2/seccomp.2                       |  20 ++---
>  man2/select.2                        |  12 +--
>  man2/select_tut.2                    |   6 +-
>  man2/semctl.2                        |   8 +-
>  man2/semget.2                        |   4 +-
>  man2/semop.2                         |   2 +-
>  man2/send.2                          |   8 +-
>  man2/sendfile.2                      |   2 +-
>  man2/sendmmsg.2                      |   2 +-
>  man2/seteuid.2                       |   2 +-
>  man2/setfsuid.2                      |   2 +-
>  man2/setns.2                         |   4 +-
>  man2/setpgid.2                       |   8 +-
>  man2/setxattr.2                      |   4 +-
>  man2/shmctl.2                        |   8 +-
>  man2/shmget.2                        |   2 +-
>  man2/shmop.2                         |   4 +-
>  man2/sigaction.2                     |  10 +--
>  man2/sigaltstack.2                   |   4 +-
>  man2/signal.2                        |   4 +-
>  man2/signalfd.2                      |   6 +-
>  man2/sigreturn.2                     |   4 +-
>  man2/sigwaitinfo.2                   |   6 +-
>  man2/spu_create.2                    |   2 +-
>  man2/stat.2                          |  14 ++--
>  man2/statfs.2                        |   2 +-
>  man2/statx.2                         |  14 ++--
>  man2/subpage_prot.2                  |   2 +-
>  man2/swapon.2                        |   2 +-
>  man2/symlink.2                       |   2 +-
>  man2/sync_file_range.2               |   2 +-
>  man2/syscalls.2                      |  16 ++--
>  man2/syslog.2                        |   2 +-
>  man2/time.2                          |   2 +-
>  man2/timer_create.2                  |   2 +-
>  man2/timer_getoverrun.2              |   2 +-
>  man2/timer_settime.2                 |   2 +-
>  man2/timerfd_create.2                |  10 +--
>  man2/tkill.2                         |   4 +-
>  man2/truncate.2                      |   4 +-
>  man2/umask.2                         |   2 +-
>  man2/unlink.2                        |   8 +-
>  man2/unshare.2                       |   2 +-
>  man2/uselib.2                        |   2 +-
>  man2/utimensat.2                     |   4 +-
>  man2/vfork.2                         |   6 +-
>  man2/vm86.2                          |   2 +-
>  man2/wait.2                          |  12 +--
>  man2/wait4.2                         |   2 +-
>  man2/write.2                         |   6 +-
>  man3/CPU_SET.3                       |   2 +-
>  man3/adjtime.3                       |   2 +-
>  man3/aio_cancel.3                    |   4 +-
>  man3/aio_error.3                     |   2 +-
>  man3/aio_fsync.3                     |   2 +-
>  man3/aio_read.3                      |   2 +-
>  man3/aio_return.3                    |   2 +-
>  man3/aio_suspend.3                   |   4 +-
>  man3/aio_write.3                     |   2 +-
>  man3/alloca.3                        |   2 +-
>  man3/argz_add.3                      |   2 +-
>  man3/backtrace.3                     |   2 +-
>  man3/basename.3                      |   2 +-
>  man3/bindresvport.3                  |   2 +-
>  man3/bzero.3                         |   2 +-
>  man3/catopen.3                       |   2 +-
>  man3/ceil.3                          |   2 +-
>  man3/circleq.3                       |   2 +-
>  man3/clock_getcpuclockid.3           |   2 +-
>  man3/cpow.3                          |   2 +-
>  man3/csqrt.3                         |   2 +-
>  man3/daemon.3                        |   2 +-
>  man3/dbopen.3                        |  16 ++--
>  man3/dl_iterate_phdr.3               |   2 +-
>  man3/dlopen.3                        |  10 +--
>  man3/dlsym.3                         |   2 +-
>  man3/encrypt.3                       |   2 +-
>  man3/envz_add.3                      |   4 +-
>  man3/errno.3                         |   4 +-
>  man3/exec.3                          |   4 +-
>  man3/exit.3                          |   2 +-
>  man3/ferror.3                        |   2 +-
>  man3/fexecve.3                       |   4 +-
>  man3/flockfile.3                     |   2 +-
>  man3/floor.3                         |   2 +-
>  man3/fmtmsg.3                        |   2 +-
>  man3/fopen.3                         |   4 +-
>  man3/fopencookie.3                   |   2 +-
>  man3/fpathconf.3                     |   2 +-
>  man3/fpclassify.3                    |   2 +-
>  man3/ftime.3                         |   2 +-
>  man3/fts.3                           |   4 +-
>  man3/ftw.3                           |  14 ++--
>  man3/getaddrinfo.3                   |   2 +-
>  man3/getauxval.3                     |   2 +-
>  man3/getcwd.3                        |   4 +-
>  man3/getentropy.3                    |   2 +-
>  man3/getfsent.3                      |   2 +-
>  man3/getgrent.3                      |   2 +-
>  man3/getgrnam.3                      |   4 +-
>  man3/gethostbyname.3                 |   2 +-
>  man3/gethostid.3                     |   4 +-
>  man3/getifaddrs.3                    |   2 +-
>  man3/getlogin.3                      |   6 +-
>  man3/getnameinfo.3                   |   4 +-
>  man3/getnetent_r.3                   |   4 +-
>  man3/getopt.3                        |  12 +--
>  man3/getprotoent_r.3                 |   4 +-
>  man3/getpwent.3                      |   2 +-
>  man3/getpwnam.3                      |   4 +-
>  man3/getrpcent_r.3                   |   4 +-
>  man3/getservent_r.3                  |   4 +-
>  man3/getsubopt.3                     |   2 +-
>  man3/getumask.3                      |   2 +-
>  man3/getutent.3                      |   2 +-
>  man3/glob.3                          |   2 +-
>  man3/hsearch.3                       |   6 +-
>  man3/inet_net_pton.3                 |   2 +-
>  man3/intro.3                         |   2 +-
>  man3/killpg.3                        |   2 +-
>  man3/lio_listio.3                    |   2 +-
>  man3/list.3                          |   2 +-
>  man3/makecontext.3                   |   2 +-
>  man3/mallinfo.3                      |   2 +-
>  man3/malloc_get_state.3              |   2 +-
>  man3/malloc_stats.3                  |   2 +-
>  man3/mallopt.3                       |  16 ++--
>  man3/memcpy.3                        |   2 +-
>  man3/mq_notify.3                     |   4 +-
>  man3/mq_open.3                       |   6 +-
>  man3/nl_langinfo.3                   |  12 +--
>  man3/perror.3                        |   2 +-
>  man3/posix_spawn.3                   |   2 +-
>  man3/printf.3                        |  24 +++---
>  man3/pthread_attr_setaffinity_np.3   |   2 +-
>  man3/pthread_attr_setguardsize.3     |   4 +-
>  man3/pthread_attr_setstack.3         |   2 +-
>  man3/pthread_cancel.3                |   8 +-
>  man3/pthread_cleanup_push.3          |   4 +-
>  man3/pthread_detach.3                |   2 +-
>  man3/pthread_kill_other_threads_np.3 |   2 +-
>  man3/pthread_setaffinity_np.3        |   4 +-
>  man3/pthread_setcancelstate.3        |   2 +-
>  man3/pthread_setschedprio.3          |   2 +-
>  man3/pthread_sigqueue.3              |   2 +-
>  man3/pthread_spin_init.3             |   2 +-
>  man3/ptsname.3                       |   2 +-
>  man3/putenv.3                        |   2 +-
>  man3/rand.3                          |   4 +-
>  man3/random_r.3                      |   2 +-
>  man3/readdir.3                       |   2 +-
>  man3/realpath.3                      |   6 +-
>  man3/regex.3                         |   2 +-
>  man3/rint.3                          |   2 +-
>  man3/round.3                         |   2 +-
>  man3/scanf.3                         |   6 +-
>  man3/sem_getvalue.3                  |   2 +-
>  man3/sem_init.3                      |   2 +-
>  man3/sem_open.3                      |   4 +-
>  man3/setaliasent.3                   |   2 +-
>  man3/setbuf.3                        |   2 +-
>  man3/setjmp.3                        |   2 +-
>  man3/shm_open.3                      |   2 +-
>  man3/sigqueue.3                      |   2 +-
>  man3/sigset.3                        |   2 +-
>  man3/sigvec.3                        |   2 +-
>  man3/slist.3                         |   2 +-
>  man3/stailq.3                        |   2 +-
>  man3/statvfs.3                       |   2 +-
>  man3/stdin.3                         |   8 +-
>  man3/stdio_ext.3                     |   4 +-
>  man3/strcat.3                        |   2 +-
>  man3/strcmp.3                        |   2 +-
>  man3/strcoll.3                       |   2 +-
>  man3/strcpy.3                        |   4 +-
>  man3/strerror.3                      |   2 +-
>  man3/strfmon.3                       |   4 +-
>  man3/strftime.3                      | 100 ++++++++++++-------------
>  man3/strptime.3                      |   8 +-
>  man3/strtok.3                        |   2 +-
>  man3/strtol.3                        |   4 +-
>  man3/strtoul.3                       |   4 +-
>  man3/swab.3                          |   2 +-
>  man3/sysconf.3                       |   6 +-
>  man3/syslog.3                        |   8 +-
>  man3/system.3                        |   8 +-
>  man3/tailq.3                         |   2 +-
>  man3/termios.3                       |  18 ++---
>  man3/tmpnam.3                        |   2 +-
>  man3/tsearch.3                       |   8 +-
>  man3/ualarm.3                        |   2 +-
>  man3/ulimit.3                        |   4 +-
>  man3/usleep.3                        |   2 +-
>  man3/wordexp.3                       |   2 +-
>  man3/wprintf.3                       |   4 +-
>  man3/y0.3                            |   4 +-
>  man4/cciss.4                         |   4 +-
>  man4/console_codes.4                 |  10 +--
>  man4/fd.4                            |   2 +-
>  man4/initrd.4                        |  10 +--
>  man4/mouse.4                         |   2 +-
>  man4/null.4                          |   2 +-
>  man4/random.4                        |   2 +-
>  man4/rtc.4                           |   4 +-
>  man4/smartpqi.4                      |   2 +-
>  man4/st.4                            |  10 +--
>  man4/vcs.4                           |   2 +-
>  man5/core.5                          |  12 +--
>  man5/dir_colors.5                    |   8 +-
>  man5/elf.5                           |   2 +-
>  man5/host.conf.5                     |   2 +-
>  man5/passwd.5                        |   4 +-
>  man5/proc.5                          | 106 +++++++++++++--------------
>  man5/resolv.conf.5                   |   2 +-
>  man5/services.5                      |   2 +-
>  man5/slabinfo.5                      |   2 +-
>  man5/sysfs.5                         |   4 +-
>  man5/termcap.5                       |   2 +-
>  man5/tzfile.5                        |   6 +-
>  man7/bootparam.7                     |  26 +++----
>  man7/capabilities.7                  |  30 ++++----
>  man7/cgroup_namespaces.7             |   4 +-
>  man7/cgroups.7                       |  36 ++++-----
>  man7/charsets.7                      |   4 +-
>  man7/cpuset.7                        |   6 +-
>  man7/credentials.7                   |   2 +-
>  man7/environ.7                       |   2 +-
>  man7/epoll.7                         |  10 +--
>  man7/fanotify.7                      |   2 +-
>  man7/feature_test_macros.7           |  10 +--
>  man7/glob.7                          |  14 ++--
>  man7/hier.7                          |   4 +-
>  man7/hostname.7                      |   2 +-
>  man7/inode.7                         |  10 +--
>  man7/inotify.7                       |  12 +--
>  man7/ip.7                            |   4 +-
>  man7/keyrings.7                      |  10 +--
>  man7/libc.7                          |   2 +-
>  man7/locale.7                        |   8 +-
>  man7/mailaddr.7                      |   4 +-
>  man7/man-pages.7                     |  12 +--
>  man7/man.7                           |   4 +-
>  man7/math_error.7                    |   2 +-
>  man7/mount_namespaces.7              |  16 ++--
>  man7/mq_overview.7                   |   4 +-
>  man7/namespaces.7                    |   6 +-
>  man7/numa.7                          |   2 +-
>  man7/path_resolution.7               |   8 +-
>  man7/persistent-keyring.7            |   4 +-
>  man7/pid_namespaces.7                |   4 +-
>  man7/pipe.7                          |   4 +-
>  man7/pthreads.7                      |  12 +--
>  man7/pty.7                           |   6 +-
>  man7/random.7                        |   2 +-
>  man7/regex.7                         |   2 +-
>  man7/rtld-audit.7                    |   4 +-
>  man7/sched.7                         |   8 +-
>  man7/sem_overview.7                  |   2 +-
>  man7/session-keyring.7               |   8 +-
>  man7/shm_overview.7                  |   2 +-
>  man7/sigevent.7                      |   2 +-
>  man7/signal-safety.7                 |   2 +-
>  man7/signal.7                        |  14 ++--
>  man7/sock_diag.7                     |   2 +-
>  man7/socket.7                        |   4 +-
>  man7/standards.7                     |   2 +-
>  man7/symlink.7                       |  20 ++---
>  man7/tcp.7                           |  10 +--
>  man7/termio.7                        |   2 +-
>  man7/time.7                          |   2 +-
>  man7/time_namespaces.7               |   2 +-
>  man7/unix.7                          |  10 +--
>  man7/user-keyring.7                  |   2 +-
>  man7/user-session-keyring.7          |   2 +-
>  man7/user_namespaces.7               |   8 +-
>  man8/ld.so.8                         |  20 ++---
>  man8/ldconfig.8                      |   2 +-
>  man8/zdump.8                         |   2 +-
>  380 files changed, 1113 insertions(+), 1113 deletions(-)
> 
> diff --git a/man1/getent.1 b/man1/getent.1

[...]


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
