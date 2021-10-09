Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D78F427CB8
	for <lists+linux-man@lfdr.de>; Sat,  9 Oct 2021 20:40:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbhJISl7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Oct 2021 14:41:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbhJISl7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Oct 2021 14:41:59 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A488C061570
        for <linux-man@vger.kernel.org>; Sat,  9 Oct 2021 11:40:01 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id t2so40534670wrb.8
        for <linux-man@vger.kernel.org>; Sat, 09 Oct 2021 11:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pjrmD37o6/YYmthfIxeRYNvwOxJiRX1LZbSUIqNvztc=;
        b=KjlGk2ZTrlIEzMWclGnOxKHRXlBQERRux7xRbFK4XaxsKWLsAQ7TRjKKhpfw7jf7pw
         fcevCWIFf9KvdZE7zP746qXgCH7/9kmm46aCn2Knu5i/gTDPU7CVfDrhyuoKb6NuP5BC
         awNncZ/jEjljP294DZvQrRQFbGQp3zn7DH+l/lU0Wq4C12btIA+0FWblnWO5N17rK9zI
         OjIFXuxfdJr9NNcsH8wMM3Z1hDn+A5oiRIBq/xRUZj1p7D/MZD1ZfI1bp9QmuhMnrWdi
         1OFOmRPHGg+wz9iIyUGKNr7IMv2lnUEWwORbjg31BoF83Z5AtXlzpLT62UOGeAxg0TNC
         LHzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pjrmD37o6/YYmthfIxeRYNvwOxJiRX1LZbSUIqNvztc=;
        b=ubt6rkLuQPIdZYdYvfjdxPYfHMKWNlrNxVjeAFJtHMSfWZPJl4Osfy+Qe0/Mi64fWn
         mAYch2Yse+Hu+qOH1XSWU83h26DQ6bcXcsvUw4Vz5zzMe3wF8GDR12xtI1reaBEJVw7M
         Rz+1+nuedAhtAKwgKC0jP4BjJ9cWjKZbQ72TkLTlGyosTuKI4IQGuGRUDrCykhUwMhmY
         2rzurnSFrxrSy+U1XzSU6SrnLIqu2g/oYkaf80BhAMsDGCPrXIaMaMn4mfTnMVJqad72
         y73CLqDIxmd+t+rInvo+6aoVuAGzwm+co3yVmqLknLkeZUBqvWNXicXSpsIjp8zhr2Fy
         OlYQ==
X-Gm-Message-State: AOAM5331bPFlTo+l+CcTbFW1oR+wqZf4X9HVvFsJGB9zl4OJY3N8S/Gi
        R8RQEdUgtI56q2pWgulQjcSQ1DYf3Po=
X-Google-Smtp-Source: ABdhPJwzKRuCwu2dsPPQy7qRmM7Eprf0o0nl77bm4htseTphZF0/OBbGOTHYUIoF2uiGePTpCPAqnA==
X-Received: by 2002:adf:ab02:: with SMTP id q2mr12948366wrc.263.1633804799513;
        Sat, 09 Oct 2021 11:39:59 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id a16sm2809913wrp.14.2021.10.09.11.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Oct 2021 11:39:59 -0700 (PDT)
Subject: Re: should free() refer to posix_memalign?
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
 <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
 <bdd56782-05d4-d4b9-a9a7-81f8ee8749d9@jguk.org>
 <6bfeeca4-66c7-6349-4009-e724c2eb2fd5@gmail.com>
 <63fc78fe-ea5d-d351-0a2e-f05395e1cade@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <55349181-0ea8-0977-2d3a-a98688ff82de@gmail.com>
Date:   Sat, 9 Oct 2021 20:39:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <63fc78fe-ea5d-d351-0a2e-f05395e1cade@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 10/8/21 7:57 PM, Jonny Grant wrote:
> I noticed this page has a date  2021-03-22     for the 5.13 at the footer.

At each release (actualy, a couple of commits before the release), we 
run a script that, for each page, checks if a page has been modified 
during that release.

If it hasn't been modified, the page will keep its old page timestamp.
If it has been modified, it will be updated with a timestamp 
corresponding to the date of the to-be-released release.

So that date you're seeing is because malloc.3 hasn't been modified 
since version 5.11 (which was released on 2021-03-22).

See below some tree view of the history of man3/malloc.3 including 
releases to explain the above graphically.

> But the release tarball is dated 27-Aug-2021
> https://man7.org/linux/man-pages/man3/malloc.3.html
> 
> Possibly there is a reason the date is different?
> 
> Kind regards
> Jonny
> 

Cheers,

Alex

---

$ git tree -- man3/malloc.3 Changes | head -n 50;
* e18626140 - Tue, 31 Aug 2021 03:26:46 +0200 (6 weeks ago)
|           malloc.3: Clarify that realloc() may move the memory block - 
Michael Kerrisk
* f1d01de4c - Tue, 31 Aug 2021 03:25:58 +0200 (6 weeks ago)
|           malloc.3: wfix - Michael Kerrisk
* 1949f7656 - Tue, 31 Aug 2021 03:25:29 +0200 (6 weeks ago)
|           malloc.3: ffix - Michael Kerrisk
* 5d46c7a93 - Tue, 31 Aug 2021 03:24:43 +0200 (6 weeks ago)
|           malloc.3: Add some structuring to improve readability - 
Michael Kerrisk
* cfc381be2 - Tue, 10 Aug 2021 12:37:07 -0700 (9 weeks ago)
|           malloc.3: Modernize for glibc 2.34 - Paul Eggert
* 2af47cd37 - Fri, 27 Aug 2021 22:13:35 +0200 (6 weeks ago)
|           Start of man-pages-5.14: updating Changes and Changes.old - 
Michael Kerrisk
* 091fbf1fe - Fri, 27 Aug 2021 02:50:30 +0200 (6 weeks ago) (tag: 
man-pages-5.13)
|           Ready for 5.13 - Michael Kerrisk
* a7846609d - Fri, 27 Aug 2021 02:11:10 +0200 (6 weeks ago)
|           Changes: Ready for 5.13 - Michael Kerrisk
* 33248cfe5 - Tue, 22 Jun 2021 13:04:07 +1200 (4 months ago)
|           Start of man-pages-5.13: updating Changes and Changes.old - 
Michael Kerrisk
* cf0eb47aa - Sun, 20 Jun 2021 16:56:14 +1200 (4 months ago)
|           Ready for 5.12 - Michael Kerrisk
* a23b0c5a5 - Sun, 20 Jun 2021 16:53:07 +1200 (4 months ago)
|           Changes: Ready for 5.12 - Michael Kerrisk
| * 6ef1e4e7e - Sun, 20 Jun 2021 16:56:14 +1200 (4 months ago) (tag: 
man-pages-5.12)
| |           Ready for 5.12 - Michael Kerrisk
| * a5495fd86 - Sun, 20 Jun 2021 16:53:07 +1200 (4 months ago)
|/            Changes: Ready for 5.12 - Michael Kerrisk
* c49a3b60d - Sun, 20 Jun 2021 15:56:16 +1200 (4 months ago)
|           Changes: Change release location - Michael Kerrisk
* 18e408ec5 - Mon, 22 Mar 2021 11:19:38 +0100 (7 months ago)
|           Start of man-pages-5.12: updating Changes and Changes.old - 
Michael Kerrisk
* a29147295 - Mon, 22 Mar 2021 07:38:11 +0100 (7 months ago) (tag: 
man-pages-5.11)
|           Ready for 5.11 - Michael Kerrisk
* ae151c519 - Mon, 22 Mar 2021 07:38:01 +0100 (7 months ago)
|           Changes: whitespace cleanups - Michael Kerrisk
* 1d767b552 - Mon, 22 Mar 2021 00:15:34 +0100 (7 months ago)
|           getent.1, ldd.1, locale.1, localedef.1, memusage.1, 
memusagestat.1, mtrace.1, _exit.2, _syscall.2, accept.2, access.2, 
acct.2, add_key.2, adjtimex.2, alloc_hugepages.2, arch_prctl.2, 
bdflush.2, bind.2, bpf.2, brk.2, cacheflush.2, capget.2, chdir.2, 
chmod.2, chown.2, chroot.2, clock_getres.2, clock_nanosleep.2, clone.2, 
close.2, close_range.2, connect.2, copy_file_range.2, create_module.2, 
delete_module.2, dup.2, epoll_create.2, epoll_ctl.2, epoll_wait.2, 
eventfd.2, execve.2, execveat.2, fanotify_init.2, fanotify_mark.2, 
fcntl.2, flock.2, fork.2, fsync.2, futex.2, get_kernel_syms.2, 
get_mempolicy.2, get_robust_list.2, getcpu.2, getdents.2, 
getdomainname.2, getgid.2, getgroups.2, gethostname.2, getitimer.2, 
getpagesize.2, getpeername.2, getpid.2, getpriority.2, getrandom.2, 
getresuid.2, getrlimit.2, getrusage.2, getsid.2, getsockname.2, 
getsockopt.2, gettid.2, gettimeofday.2, getuid.2, getunwind.2, 
getxattr.2, idle.2, init_module.2, inotify_add_watch.2, 
inotify_rm_watch.2, io_cancel.2, io_destroy.2, io_getevents.2, 
io_setup.2, io_submit.2, ioctl.2, ioctl_console.2, ioctl_fat.2, 
ioctl_ficlonerange.2, ioctl_fideduperange.2, ioctl_fslabel.2, 
ioctl_getfsmap.2, ioctl_ns.2, ioctl_tty.2, ioctl_userfaultfd.2, 
ioperm.2, iopl.2, ipc.2, kcmp.2, kexec_load.2, keyctl.2, kill.2, link.2, 
listen.2, listxattr.2, llseek.2, lookup_dcookie.2, lseek.2, madvise.2, 
mbind.2, membarrier.2, memfd_create.2, migrate_pages.2, mincore.2, 
mkdir.2, mknod.2, mlock.2, mmap.2, mmap2.2, modify_ldt.2, mount.2, 
move_pages.2, mprotect.2, mq_getsetattr.2, mremap.2, msgctl.2, msgget.2, 
msgop.2, msync.2, nanosleep.2, nfsservctl.2, nice.2, open.2, 
open_by_handle_at.2, openat2.2, pause.2, pciconfig_read.2, 
perf_event_open.2, perfmonctl.2, personality.2, pidfd_getfd.2, 
pidfd_open.2, pidfd_send_signal.2, pipe.2, pivot_root.2, pkey_alloc.2, 
poll.2, posix_fadvise.2, prctl.2, pread.2, process_vm_readv.2, ptrace.2, 
query_module.2, quotactl.2, read.2, readahead.2, readdir.2, readlink.2, 
readv.2, reboot.2, recv.2, remap_file_pages.2, removexattr.2, rename.2, 
request_key.2, restart_syscall.2, rmdir.2, rt_sigqueueinfo.2, 
s390_guarded_storage.2, s390_pci_mmio_write.2, s390_runtime_instr.2, 
s390_sthyi.2, sched_get_priority_max.2, sched_rr_get_interval.2, 
sched_setaffinity.2, sched_setattr.2, sched_setparam.2, 
sched_setscheduler.2, sched_yield.2, seccomp.2, select.2, select_tut.2, 
semctl.2, semget.2, semop.2, send.2, sendfile.2, set_thread_area.2, 
seteuid.2, setfsgid.2, setfsuid.2, setgid.2, setpgid.2, setresuid.2, 
setreuid.2, setsid.2, setuid.2, setup.2, setxattr.2, sgetmask.2, 
shmctl.2, shmget.2, shmop.2, shutdown.2, sigaction.2, sigaltstack.2, 
signal.2, signalfd.2, sigpending.2, sigprocmask.2, sigreturn.2, 
sigsuspend.2, sigwaitinfo.2, socket.2, socketcall.2, socketpair.2, 
splice.2, spu_create.2, spu_run.2, stat.2, statfs.2, statx.2, stime.2, 
subpage_prot.2, swapon.2, symlink.2, sync.2, sync_file_range.2, 
syscall.2, syscalls.2, sysctl.2, sysfs.2, sysinfo.2, syslog.2, time.2, 
timer_create.2, timer_delete.2, timer_getoverrun.2, timer_settime.2, 
timerfd_create.2, times.2, tkill.2, truncate.2, umask.2, umount.2, 
uname.2, unimplemented.2, unlink.2, unshare.2, uselib.2, userfaultfd.2, 
ustat.2, utime.2, utimensat.2, vfork.2, vhangup.2, vm86.2, vmsplice.2, 
wait.2, wait4.2, write.2, CPU_SET.3, __ppc_get_timebase.3, 
__ppc_set_ppr_med.3, __ppc_yield.3, __setfpucw.3, a64l.3, abort.3, 
abs.3, acos.3, acosh.3, addseverity.3, adjtime.3, aio_cancel.3, 
aio_error.3, aio_fsync.3, aio_read.3, aio_return.3, aio_suspend.3, 
aio_write.3, alloca.3, argz_add.3, asin.3, asinh.3, asprintf.3, 
assert.3, assert_perror.3, atan.3, atan2.3, atanh.3, atexit.3, atof.3, 
atoi.3, backtrace.3, basename.3, bcmp.3, bcopy.3, bindresvport.3, 
bsd_signal.3, bsearch.3, bstring.3, btowc.3, byteorder.3, bzero.3, 
cabs.3, cacos.3, cacosh.3, canonicalize_file_name.3, carg.3, casin.3, 
casinh.3, catan.3, catanh.3, catgets.3, catopen.3, cbrt.3, ccos.3, 
ccosh.3, ceil.3, cexp.3, cexp2.3, cfree.3, cimag.3, circleq.3, 
clearenv.3, clock.3, clock_getcpuclockid.3, clog.3, clog10.3, clog2.3, 
closedir.3, cmsg.3, confstr.3, conj.3, copysign.3, cos.3, cosh.3, 
cpow.3, cproj.3, creal.3, crypt.3, csin.3, csinh.3, csqrt.3, ctan.3, 
ctanh.3, ctermid.3, ctime.3, daemon.3, des_crypt.3, difftime.3, dirfd.3, 
div.3, dl_iterate_phdr.3, dladdr.3, dlerror.3, dlinfo.3, dlopen.3, 
dlsym.3, drand48.3, drand48_r.3, duplocale.3, dysize.3, ecvt.3, 
ecvt_r.3, encrypt.3, endian.3, envz_add.3, erf.3, erfc.3, err.3, 
errno.3, error.3, ether_aton.3, euidaccess.3, exec.3, exit.3, exp.3, 
exp10.3, exp2.3, expm1.3, fabs.3, fclose.3, fcloseall.3, fdim.3, fenv.3, 
ferror.3, fexecve.3, fflush.3, ffs.3, fgetc.3, fgetgrent.3, fgetpwent.3, 
fgetwc.3, fgetws.3, fileno.3, finite.3, flockfile.3, floor.3, fma.3, 
fmax.3, fmemopen.3, fmin.3, fmod.3, fmtmsg.3, fnmatch.3, fopen.3, 
fopencookie.3, fpathconf.3, fpclassify.3, fpurge.3, fputwc.3, fputws.3, 
fread.3, frexp.3, fseek.3, fseeko.3, ftime.3, ftok.3, fts.3, ftw.3, 
futimes.3, fwide.3, gamma.3, gcvt.3, get_nprocs_conf.3, 
get_phys_pages.3, getaddrinfo.3, getaddrinfo_a.3, getauxval.3, 
getcontext.3, getcwd.3, getdate.3, getdirentries.3, getdtablesize.3, 
getentropy.3, getenv.3, getfsent.3, getgrent.3, getgrent_r.3, 
getgrnam.3, getgrouplist.3, gethostbyname.3, gethostid.3, getifaddrs.3, 
getipnodebyname.3, getline.3, getloadavg.3, getlogin.3, getmntent.3, 
getnameinfo.3, getnetent.3, getnetent_r.3, getopt.3, getpass.3, 
getprotoent.3, getprotoent_r.3, getpt.3, getpw.3, getpwent.3, 
getpwent_r.3, getpwnam.3, getrpcent.3, getrpcent_r.3, getrpcport.3, 
gets.3, getservent.3, getservent_r.3, getspnam.3, getsubopt.3, 
getttyent.3, getumask.3, getusershell.3, getutent.3, getutmp.3, getw.3, 
getwchar.3, glob.3, gnu_get_libc_version.3, grantpt.3, group_member.3, 
gsignal.3, hsearch.3, hypot.3, iconv.3, iconv_close.3, iconv_open.3, 
if_nameindex.3, if_nametoindex.3, ilogb.3, index.3, inet.3, 
inet_net_pton.3, inet_ntop.3, inet_pton.3, initgroups.3, insque.3, 
isalpha.3, isatty.3, isfdtype.3, isgreater.3, iswalnum.3, iswalpha.3, 
iswblank.3, iswcntrl.3, iswctype.3, iswdigit.3, iswgraph.3, iswlower.3, 
iswprint.3, iswpunct.3, iswspace.3, iswupper.3, iswxdigit.3, j0.3, 
key_setsecret.3, killpg.3, ldexp.3, lgamma.3, lio_listio.3, list.3, 
localeconv.3, lockf.3, log.3, log10.3, log1p.3, log2.3, logb.3, login.3, 
lrint.3, lround.3, lsearch.3, lseek64.3, makecontext.3, makedev.3, 
mallinfo.3, malloc.3, malloc_get_state.3, malloc_hook.3, malloc_info.3, 
malloc_stats.3, malloc_trim.3, malloc_usable_size.3, mallopt.3, 
matherr.3, mblen.3, mbrlen.3, mbrtowc.3, mbsinit.3, mbsnrtowcs.3, 
mbsrtowcs.3, mbstowcs.3, mbtowc.3, mcheck.3, memccpy.3, memchr.3, 
memcmp.3, memcpy.3, memfrob.3, memmem.3, memmove.3, mempcpy.3, memset.3, 
mkdtemp.3, mkfifo.3, mkstemp.3, mktemp.3, modf.3, mpool.3, mq_close.3, 
mq_getattr.3, mq_notify.3, mq_open.3, mq_receive.3, mq_send.3, 
mq_unlink.3, mtrace.3, nan.3, newlocale.3, nextafter.3, nextup.3, 
nl_langinfo.3, ntp_gettime.3, on_exit.3, open_memstream.3, opendir.3, 
openpty.3, perror.3, popen.3, posix_fallocate.3, posix_madvise.3, 
posix_memalign.3, posix_openpt.3, posix_spawn.3, pow.3, pow10.3, 
printf.3, profil.3, psignal.3, pthread_attr_init.3, 
pthread_attr_setaffinity_np.3, pthread_attr_setdetachstate.3, 
pthread_attr_setguardsize.3, pthread_attr_setinheritsched.3, 
pthread_attr_setschedparam.3, pthread_attr_setschedpolicy.3, 
pthread_attr_setscope.3, pthread_attr_setsigmask_np.3, 
pthread_attr_setstack.3, pthread_attr_setstackaddr.3, 
pthread_attr_setstacksize.3, pthread_cancel.3, pthread_cleanup_push.3, 
pthread_cleanup_push_defer_np.3, pthread_create.3, pthread_detach.3, 
pthread_equal.3, pthread_exit.3, pthread_getattr_default_np.3, 
pthread_getattr_np.3, pthread_getcpuclockid.3, pthread_join.3, 
pthread_kill.3, pthread_kill_other_threads_np.3, 
pthread_mutex_consistent.3, pthread_mutexattr_getpshared.3, 
pthread_mutexattr_setrobust.3, pthread_rwlockattr_setkind_np.3, 
pthread_self.3, pthread_setaffinity_np.3, pthread_setcancelstate.3, 
pthread_setconcurrency.3, pthread_setname_np.3, pthread_setschedparam.3, 
pthread_setschedprio.3, pthread_sigmask.3, pthread_sigqueue.3, 
pthread_spin_init.3, pthread_spin_lock.3, pthread_testcancel.3, 
pthread_tryjoin_np.3, pthread_yield.3, ptsname.3, putenv.3, putgrent.3, 
putpwent.3, puts.3, putwchar.3, qecvt.3, qsort.3, raise.3, rand.3, 
random.3, random_r.3, rcmd.3, re_comp.3, readdir.3, readdir_r.3, 
realpath.3, regex.3, remainder.3, remove.3, remquo.3, resolver.3, 
rewinddir.3, rexec.3, rint.3, round.3, rpc.3, rpmatch.3, rtime.3, 
rtnetlink.3, scalb.3, scalbln.3, scandir.3, scanf.3, sched_getcpu.3, 
seekdir.3, sem_close.3, sem_destroy.3, sem_getvalue.3, sem_init.3, 
sem_open.3, sem_post.3, sem_unlink.3, sem_wait.3, setaliasent.3, 
setbuf.3, setenv.3, setjmp.3, setlocale.3, setlogmask.3, setnetgrent.3, 
shm_open.3, siginterrupt.3, signbit.3, significand.3, sigpause.3, 
sigqueue.3, sigset.3, sigsetops.3, sigvec.3, sigwait.3, sin.3, sincos.3, 
sinh.3, sleep.3, slist.3, sockatmark.3, sqrt.3, stailq.3, statvfs.3, 
stdarg.3, stdio.3, stdio_ext.3, stpcpy.3, stpncpy.3, strcasecmp.3, 
strcat.3, strchr.3, strcmp.3, strcoll.3, strcpy.3, strdup.3, strerror.3, 
strfmon.3, strfromd.3, strfry.3, strftime.3, string.3, strlen.3, 
strnlen.3, strpbrk.3, strptime.3, strsep.3, strsignal.3, strspn.3, 
strstr.3, strtod.3, strtoimax.3, strtok.3, strtol.3, strtoul.3, 
strverscmp.3, strxfrm.3, swab.3, sysconf.3, syslog.3, system.3, 
sysv_signal.3, tailq.3, tan.3, tanh.3, tcgetpgrp.3, tcgetsid.3, 
telldir.3, tempnam.3, termios.3, tgamma.3, timegm.3, timeradd.3, 
tmpfile.3, tmpnam.3, toascii.3, toupper.3, towctrans.3, towlower.3, 
towupper.3, trunc.3, tsearch.3, ttyname.3, ttyslot.3, tzset.3, ualarm.3, 
ulimit.3, undocumented.3, ungetwc.3, unlocked_stdio.3, unlockpt.3, 
updwtmp.3, uselocale.3, usleep.3, wcpcpy.3, wcpncpy.3, wcrtomb.3, 
wcscasecmp.3, wcscat.3, wcschr.3, wcscmp.3, wcscpy.3, wcscspn.3, 
wcsdup.3, wcslen.3, wcsncasecmp.3, wcsncat.3, wcsncmp.3, wcsncpy.3, 
wcsnlen.3, wcsnrtombs.3, wcspbrk.3, wcsrchr.3, wcsrtombs.3, wcsspn.3, 
wcsstr.3, wcstoimax.3, wcstok.3, wcstombs.3, wcswidth.3, wctob.3, 
wctomb.3, wctrans.3, wctype.3, wcwidth.3, wmemchr.3, wmemcmp.3, 
wmemcpy.3, wmemmove.3, wmemset.3, wordexp.3, wprintf.3, xcrypt.3, xdr.3, 
y0.3, cciss.4, console_codes.4, dsp56k.4, hpsa.4, initrd.4, loop.4, 
lp.4, msr.4, random.4, rtc.4, smartpqi.4, veth.4, wavelan.4, acct.5, 
core.5, elf.5, hosts.5, locale.5, proc.5, resolv.conf.5, rpc.5, 
slabinfo.5, sysfs.5, tmpfs.5, utmp.5, address_families.7, aio.7, 
attributes.7, bootparam.7, capabilities.7, cgroups.7, complex.7, ddp.7, 
environ.7, epoll.7, fanotify.7, feature_test_macros.7, hier.7, inode.7, 
inotify.7, ip.7, ipv6.7, keyrings.7, locale.7, man-pages.7, man.7, 
math_error.7, mount_namespaces.7, namespaces.7, netdevice.7, netlink.7, 
numa.7, packet.7, pkeys.7, pthreads.7, queue.7, raw.7, rtnetlink.7, 
sched.7, session-keyring.7, shm_overview.7, sigevent.7, signal-safety.7, 
signal.7, sock_diag.7, socket.7, spufs.7, symlink.7, 
system_data_types.7, tcp.7, time_namespaces.7, udp.7, udplite.7, 
unicode.7, unix.7, uri.7, user_namespaces.7, vdso.7, vsock.7, x25.7, 
iconvconfig.8, ld.so.8, ldconfig.8, sln.8, tzselect.8: tstamp - Michael 
Kerrisk
* abd7f4ed7 - Sun, 21 Mar 2021 23:50:36 +0100 (7 months ago)
|           Changes: Ready for 5.11 - Michael Kerrisk
* b49c2acb4 - Thu, 21 Jan 2021 09:29:38 +0100 (9 months ago)
|           Various pages: use real minus signs in pathnames - Michael 
Kerrisk
* da116d481 - Sat, 9 Jan 2021 22:15:06 +0100 (9 months ago)
|           malloc.3: Document that realloc(p, 0) is specific to glibc 
and nonportable - Alejandro Colomar
* c466875ec - Wed, 6 Jan 2021 10:52:04 +0100 (9 months ago)
|           Various pages: Improve formatting in ATTRIBUTES - Michael 
Kerrisk
* 9d2adbae2 - Mon, 4 Jan 2021 23:18:08 +0100 (9 months ago)
|           Various pages: Simplify mark-up for Feature Test Macro 
requirements - Michael Kerrisk
* 5e207fcf1 - Tue, 22 Dec 2020 09:30:12 +0100 (10 months ago)
|           Start of man-pages-5.11: updating Changes and Changes.old - 
Michael Kerrisk
* 79cd79b63 - Mon, 21 Dec 2020 16:20:35 +0100 (10 months ago) (tag: 
man-pages-5.10)
|           Ready for 5.10 - Michael Kerrisk



$ cat .gitconfig | sed -n '/^.alias/,/tree/p';
[alias]
	lg = log --graph --abbrev-commit --decorate \
		--format=format:'%C(bold brightblue)%h%C(reset) - %C(bold 
cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold 
yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- 
%an%C(reset)'
	tree = lg --all


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
