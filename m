Return-Path: <linux-man+bounces-1189-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30687909997
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 20:31:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76460282AAE
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 18:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97E8C2745E;
	Sat, 15 Jun 2024 18:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4gaTQ0j"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1231EB3A
	for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718476292; cv=none; b=ZGfl8W0rbgGKlLBp9MVu5pxd0mtDoREaWCm97vqlqfGQw+aMMry3lFS6Y4otA7/y25hlC5BGpSaM7aas6bp4gZCtwGOzYNxsrslJbOE9Cb7FqVNF5z/MPN6TdPBBkqpUD3ieoqgpum328A7PPMARjGwFCU459rJor9DwpAr4HV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718476292; c=relaxed/simple;
	bh=SF28YfGEEFlBtm5EggvSDoOCb8bXZ/aXn+2FlceM9ts=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NwLFjdFGYuW0PZ/igsh7LSYGxyYRaRSCIF4Gd1AqhzelwTAPv0ZDdj7tlWDptm2aUjoighj85/QrGRhdIQxO+IrPOIOASw6loilGI6AwhAEPjio2zrnWEjbk1uGrS/hbUvCz5SCGX7Rses8Nt2efI1jr9oZzkTrVXMi2Y0gSKvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4gaTQ0j; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE467C4AF1C;
	Sat, 15 Jun 2024 18:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718476291;
	bh=SF28YfGEEFlBtm5EggvSDoOCb8bXZ/aXn+2FlceM9ts=;
	h=Date:From:To:Cc:Subject:From;
	b=f4gaTQ0jJVabjQS0jXOU9FbBhVE5Z7g55uwF1/bYdq8VP6UvkvNlzuQNHHrnxfARD
	 EZFXMHvhCnmvNJ+xG/RfbaE1e47XH6WDxQNbPldCwY9GQRSDWWfJDQmDnHSVFBYnZp
	 x0vOFZ//hg76Z/JZ53prpFFlN6QDFLUzq0IbHRGEu8swrj2HSPnbVGxe2SpPwhBJW9
	 NDKApShDW3PZqEWJUZMPoQu7BaWOmWNwytlLGZOIOy8keYAbInCnwZM9BP9i0yTIpc
	 q06B+tXEDtw23xGhHq5PW1mF6Y2CdO0rUwaCX/gLSknkHEPh4E5Dz4Po+rFousLVuL
	 Jw+eqMDGyUUww==
Date: Sat, 15 Jun 2024 20:31:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>, branden@debian.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1] man/: Use \[rs] instead of \e
Message-ID: <20240615183058.452624-3-alx@kernel.org>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2722i7nogunlowmk"
Content-Disposition: inline


--2722i7nogunlowmk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>, branden@debian.org
Cc: linux-man@vger.kernel.org
Subject: [PATCH v1] man/: Use \[rs] instead of \e
MIME-Version: 1.0

Link: <https://lore.kernel.org/linux-man/20240611122453.qn6jyl4go4bvwkqm@il=
lithid/>
Suggested-by: "G. Branden Robinson" <branden@debian.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
Range-diff against v0:
-:  --------- > 1:  1fc1669e9 man/: Use \[rs] instead of \e

 man/man1/locale.1                             |   2 +-
 man/man1/memusage.1                           |   6 +-
 man/man1/pldd.1                               |   2 +-
 man/man1/sprof.1                              |   2 +-
 man/man1/time.1                               |   4 +-
 man/man2/_syscall.2                           |  10 +-
 man/man2/add_key.2                            |   4 +-
 man/man2/bind.2                               |   2 +-
 man/man2/bpf.2                                |   4 +-
 man/man2/chown.2                              |   6 +-
 man/man2/clock_getres.2                       |   4 +-
 man/man2/clone.2                              |  10 +-
 man/man2/close_range.2                        |   6 +-
 man/man2/copy_file_range.2                    |   2 +-
 man/man2/eventfd.2                            |  10 +-
 man/man2/execve.2                             |   4 +-
 man/man2/fork.2                               |   2 +-
 man/man2/futex.2                              |  12 +-
 man/man2/getdents.2                           |   6 +-
 man/man2/getrlimit.2                          |   6 +-
 man/man2/kcmp.2                               |  14 +--
 man/man2/kexec_load.2                         |   4 +-
 man/man2/keyctl.2                             |  50 ++++-----
 man/man2/listxattr.2                          |  12 +-
 man/man2/lseek.2                              |   2 +-
 man/man2/membarrier.2                         |   2 +-
 man/man2/memfd_create.2                       |  22 ++--
 man/man2/mmap.2                               |   6 +-
 man/man2/mprotect.2                           |   8 +-
 man/man2/msgop.2                              |  24 ++--
 man/man2/open_by_handle_at.2                  |  22 ++--
 man/man2/perf_event_open.2                    |   6 +-
 man/man2/pidfd_open.2                         |   4 +-
 man/man2/pidfd_send_signal.2                  |   2 +-
 man/man2/pipe.2                               |   4 +-
 man/man2/poll.2                               |  18 +--
 man/man2/readdir.2                            |   2 +-
 man/man2/readlink.2                           |   8 +-
 man/man2/readv.2                              |   2 +-
 man/man2/recvmmsg.2                           |   2 +-
 man/man2/request_key.2                        |   6 +-
 man/man2/sched_setaffinity.2                  |   2 +-
 man/man2/seccomp.2                            |  10 +-
 man/man2/seccomp_unotify.2                    |  58 +++++-----
 man/man2/select.2                             |   4 +-
 man/man2/select_tut.2                         |  34 +++---
 man/man2/semget.2                             |   8 +-
 man/man2/sendmmsg.2                           |   2 +-
 man/man2/setns.2                              |   2 +-
 man/man2/shmop.2                              |  12 +-
 man/man2/signalfd.2                           |   8 +-
 man/man2/spu_run.2                            |   2 +-
 man/man2/stat.2                               |  34 +++---
 man/man2/sysctl.2                             |   2 +-
 man/man2/tee.2                                |   2 +-
 man/man2/timer_create.2                       |  20 ++--
 man/man2/timerfd_create.2                     |   6 +-
 man/man2/truncate.2                           |   2 +-
 man/man2/uname.2                              |   2 +-
 man/man2/unshare.2                            |  20 ++--
 man/man2/userfaultfd.2                        |  18 +--
 man/man2/ustat.2                              |   2 +-
 man/man2/wait.2                               |  10 +-
 man/man2const/FAT_IOCTL_GET_VOLUME_ID.2const  |   6 +-
 man/man2const/FAT_IOCTL_SET_ATTRIBUTES.2const |   8 +-
 man/man2const/NS_GET_USERNS.2const            |  20 ++--
 man/man2const/PR_SET_VMA.2const               |   2 +-
 man/man2const/TCSETS.2const                   |   8 +-
 man/man2const/TIOCPKT.2const                  |   2 +-
 man/man2const/VFAT_IOCTL_READDIR_BOTH.2const  |   4 +-
 man/man3/CPU_SET.3                            |   4 +-
 man/man3/MAX.3                                |   4 +-
 man/man3/_Generic.3                           |  16 +--
 man/man3/__ppc_get_timebase.3                 |   4 +-
 man/man3/argz_add.3                           |   6 +-
 man/man3/asprintf.3                           |   2 +-
 man/man3/atexit.3                             |   6 +-
 man/man3/backtrace.3                          |   6 +-
 man/man3/basename.3                           |   2 +-
 man/man3/bsearch.3                            |   4 +-
 man/man3/bswap.3                              |   4 +-
 man/man3/bzero.3                              |   2 +-
 man/man3/cacos.3                              |   6 +-
 man/man3/cacosh.3                             |   6 +-
 man/man3/catan.3                              |   6 +-
 man/man3/catanh.3                             |   6 +-
 man/man3/catgets.3                            |   2 +-
 man/man3/circleq.3                            |   2 +-
 man/man3/clock_getcpuclockid.3                |   4 +-
 man/man3/confstr.3                            |   2 +-
 man/man3/ctime.3                              |   2 +-
 man/man3/dl_iterate_phdr.3                    |   6 +-
 man/man3/dlinfo.3                             |  12 +-
 man/man3/dlopen.3                             |   6 +-
 man/man3/duplocale.3                          |   6 +-
 man/man3/encrypt.3                            |  14 +--
 man/man3/end.3                                |   8 +-
 man/man3/endian.3                             |   6 +-
 man/man3/envz_add.3                           |   4 +-
 man/man3/errno.3                              |   4 +-
 man/man3/fgetc.3                              |   2 +-
 man/man3/fgetws.3                             |   2 +-
 man/man3/fmemopen.3                           |   8 +-
 man/man3/fmtmsg.3                             |   8 +-
 man/man3/fopencookie.3                        |   6 +-
 man/man3/fputws.3                             |   2 +-
 man/man3/fread.3                              |   8 +-
 man/man3/frexp.3                              |   2 +-
 man/man3/ftw.3                                |   2 +-
 man/man3/get_nprocs.3                         |   2 +-
 man/man3/get_phys_pages.3                     |   2 +-
 man/man3/getaddrinfo.3                        |  24 ++--
 man/man3/getaddrinfo_a.3                      |  34 +++---
 man/man3/getdate.3                            |  22 ++--
 man/man3/getgrent_r.3                         |   2 +-
 man/man3/getgrouplist.3                       |  10 +-
 man/man3/getifaddrs.3                         |  10 +-
 man/man3/getline.3                            |   6 +-
 man/man3/getlogin.3                           |   2 +-
 man/man3/getmntent.3                          |   6 +-
 man/man3/getnameinfo.3                        |   4 +-
 man/man3/getopt.3                             |  26 ++---
 man/man3/getpass.3                            |   4 +-
 man/man3/getprotoent_r.3                      |  14 +--
 man/man3/getpwent_r.3                         |   2 +-
 man/man3/getpwnam.3                           |   6 +-
 man/man3/gets.3                               |   2 +-
 man/man3/getservent_r.3                       |  14 +--
 man/man3/getsubopt.3                          |  14 +--
 man/man3/glob.3                               |   2 +-
 man/man3/gnu_get_libc_version.3               |   4 +-
 man/man3/hsearch.3                            |   4 +-
 man/man3/if_nameindex.3                       |   2 +-
 man/man3/inet.3                               |   6 +-
 man/man3/inet_net_pton.3                      |  10 +-
 man/man3/inet_pton.3                          |   4 +-
 man/man3/insque.3                             |  10 +-
 man/man3/isalpha.3                            |  10 +-
 man/man3/iswblank.3                           |   2 +-
 man/man3/iswspace.3                           |   2 +-
 man/man3/list.3                               |   2 +-
 man/man3/makecontext.3                        |  18 +--
 man/man3/mallinfo.3                           |  30 ++---
 man/man3/malloc_hook.3                        |   2 +-
 man/man3/malloc_info.3                        |   6 +-
 man/man3/mallopt.3                            |   4 +-
 man/man3/matherr.3                            |  10 +-
 man/man3/mbrtowc.3                            |   8 +-
 man/man3/mbsnrtowcs.3                         |   4 +-
 man/man3/mbsrtowcs.3                          |   4 +-
 man/man3/mbstowcs.3                           |  18 +--
 man/man3/mbtowc.3                             |   2 +-
 man/man3/mcheck.3                             |   6 +-
 man/man3/mq_getattr.3                         |   8 +-
 man/man3/mq_notify.3                          |   6 +-
 man/man3/newlocale.3                          |   8 +-
 man/man3/nl_langinfo.3                        |   4 +-
 man/man3/offsetof.3                           |   4 +-
 man/man3/perror.3                             |   2 +-
 man/man3/posix_spawn.3                        |  16 +--
 man/man3/printf.3                             |  14 +--
 man/man3/pthread_attr_init.3                  |  22 ++--
 man/man3/pthread_cancel.3                     |  14 +--
 man/man3/pthread_cleanup_push.3               |  14 +--
 man/man3/pthread_create.3                     |  12 +-
 man/man3/pthread_getattr_default_np.3         |  12 +-
 man/man3/pthread_getattr_np.3                 |  26 ++---
 man/man3/pthread_getcpuclockid.3              |  12 +-
 man/man3/pthread_mutexattr_setrobust.3        |  18 +--
 man/man3/pthread_setaffinity_np.3             |   4 +-
 man/man3/pthread_setname_np.3                 |   8 +-
 man/man3/pthread_setschedparam.3              |  52 ++++-----
 man/man3/pthread_sigmask.3                    |   4 +-
 man/man3/puts.3                               |   2 +-
 man/man3/qsort.3                              |   2 +-
 man/man3/rand.3                               |   6 +-
 man/man3/readdir.3                            |   2 +-
 man/man3/recno.3                              |   2 +-
 man/man3/regex.3                              |  12 +-
 man/man3/rpmatch.3                            |   4 +-
 man/man3/rtime.3                              |   2 +-
 man/man3/scandir.3                            |   2 +-
 man/man3/scanf.3                              |   2 +-
 man/man3/sem_wait.3                           |  14 +--
 man/man3/setaliasent.3                        |   2 +-
 man/man3/setbuf.3                             |   2 +-
 man/man3/shm_open.3                           |  10 +-
 man/man3/slist.3                              |   2 +-
 man/man3/sscanf.3                             |   8 +-
 man/man3/stailq.3                             |   2 +-
 man/man3/static_assert.3                      |  20 ++--
 man/man3/stdarg.3                             |   6 +-
 man/man3/stpncpy.3                            |   4 +-
 man/man3/strchr.3                             |   2 +-
 man/man3/strcmp.3                             |  14 +--
 man/man3/strcpy.3                             |   2 +-
 man/man3/strdup.3                             |   2 +-
 man/man3/strerror.3                           |   2 +-
 man/man3/strfromd.3                           |   2 +-
 man/man3/strftime.3                           |   2 +-
 man/man3/strlen.3                             |   2 +-
 man/man3/strncat.3                            |   2 +-
 man/man3/strnlen.3                            |   4 +-
 man/man3/strsep.3                             |   8 +-
 man/man3/strstr.3                             |   2 +-
 man/man3/strtok.3                             |   8 +-
 man/man3/strtol.3                             |  14 +--
 man/man3/strtoul.3                            |   4 +-
 man/man3/strverscmp.3                         |   4 +-
 man/man3/strxfrm.3                            |   2 +-
 man/man3/sysconf.3                            |   2 +-
 man/man3/tailq.3                              |   2 +-
 man/man3/termios.3                            |  22 ++--
 man/man3/tsearch.3                            |   6 +-
 man/man3/wcpcpy.3                             |   2 +-
 man/man3/wcpncpy.3                            |   6 +-
 man/man3/wcrtomb.3                            |   8 +-
 man/man3/wcscat.3                             |   2 +-
 man/man3/wcscpy.3                             |   2 +-
 man/man3/wcslen.3                             |   2 +-
 man/man3/wcsncat.3                            |   2 +-
 man/man3/wcsncmp.3                            |   2 +-
 man/man3/wcsncpy.3                            |   2 +-
 man/man3/wcsnlen.3                            |   2 +-
 man/man3/wcsnrtombs.3                         |   4 +-
 man/man3/wcsrtombs.3                          |   4 +-
 man/man3/wcsstr.3                             |   2 +-
 man/man3/wcstok.3                             |   6 +-
 man/man3/wcstombs.3                           |   4 +-
 man/man3/wcwidth.3                            |   2 +-
 man/man3/wordexp.3                            |   2 +-
 man/man3/wprintf.3                            |   6 +-
 man/man3const/EXIT_SUCCESS.3const             |   2 +-
 man/man3const/NULL.3const                     |   2 +-
 man/man3head/printf.h.3head                   | 104 +++++++++---------
 man/man4/console_codes.4                      |  12 +-
 man/man4/dsp56k.4                             |   2 +-
 man/man4/full.4                               |   2 +-
 man/man4/initrd.4                             |   2 +-
 man/man4/loop.4                               |   6 +-
 man/man4/null.4                               |   2 +-
 man/man4/vcs.4                                |   2 +-
 man/man5/charmap.5                            |   2 +-
 man/man5/core.5                               |  12 +-
 man/man5/dir_colors.5                         |  34 +++---
 man/man5/elf.5                                |   2 +-
 man/man5/issue.5                              |   2 +-
 man/man5/locale.5                             |   2 +-
 man/man5/proc.5                               |   4 +-
 man/man5/proc_pid_cmdline.5                   |   2 +-
 man/man5/proc_pid_environ.5                   |   4 +-
 man/man5/proc_pid_maps.5                      |   2 +-
 man/man5/proc_sys.5                           |   4 +-
 man/man5/repertoiremap.5                      |   2 +-
 man/man5/sysfs.5                              |   2 +-
 man/man5/termcap.5                            |  20 ++--
 man/man5/utmp.5                               |   2 +-
 man/man7/aio.7                                |  30 ++---
 man/man7/ascii.7                              |  24 ++--
 man/man7/cgroups.7                            |   2 +-
 man/man7/charsets.7                           |   2 +-
 man/man7/complex.7                            |   2 +-
 man/man7/cpuset.7                             |   2 +-
 man/man7/environ.7                            |   2 +-
 man/man7/fanotify.7                           |  40 +++----
 man/man7/feature_test_macros.7                |  34 +++---
 man/man7/glob.7                               |   4 +-
 man/man7/inode.7                              |   2 +-
 man/man7/inotify.7                            |  18 +--
 man/man7/locale.7                             |   2 +-
 man/man7/man-pages.7                          |  18 +--
 man/man7/mount_namespaces.7                   |  12 +-
 man/man7/packet.7                             |   2 +-
 man/man7/pkeys.7                              |   6 +-
 man/man7/pthreads.7                           |   4 +-
 man/man7/regex.7                              |  20 ++--
 man/man7/rtld-audit.7                         |  22 ++--
 man/man7/sock_diag.7                          |  16 +--
 man/man7/system_data_types.7                  |   6 +-
 man/man7/unix.7                               |   8 +-
 man/man7/user_namespaces.7                    |  68 ++++++------
 man/man7/utf-8.7                              |   8 +-
 man/man8/zdump.8                              |   8 +-
 man/man8/zic.8                                |   6 +-
 284 files changed, 1173 insertions(+), 1173 deletions(-)

diff --git a/man/man1/locale.1 b/man/man1/locale.1
index 8c26f831c..5d6ab2b40 100644
--- a/man/man1/locale.1
+++ b/man/man1/locale.1
@@ -198,7 +198,7 @@ .SH EXAMPLES
 $ \fBmkdir \-p $HOME/.locale\fP
 $ \fBI18NPATH=3D./wrk/ localedef \-f UTF\-8 \-i fi_SE $HOME/.locale/fi_SE.=
UTF\-8\fP
 $ \fBLOCPATH=3D$HOME/.locale LC_ALL=3Dfi_SE.UTF\-8 date\fP
-$ \fBecho "export LOCPATH=3D\e$HOME/.locale" >> $HOME/.bashrc\fP
+$ \fBecho "export LOCPATH=3D\[rs]$HOME/.locale" >> $HOME/.bashrc\fP
 $ \fBecho "export LANG=3Dfi_SE.UTF\-8" >> $HOME/.bashrc\fP
 .EE
 .SH SEE ALSO
diff --git a/man/man1/memusage.1 b/man/man1/memusage.1
index b6793f6e8..0419b73f5 100644
--- a/man/man1/memusage.1
+++ b/man/man1/memusage.1
@@ -234,7 +234,7 @@ .SS Program source
     int *p;
 \&
     size =3D sizeof(*p) * 100;
-    printf("malloc: %zu\en", size);
+    printf("malloc: %zu\[rs]n", size);
     p =3D malloc(size);
 \&
     for (i =3D 0; i < CYCLES; i++) {
@@ -244,11 +244,11 @@ .SS Program source
             j\-\-;
 \&
         size =3D sizeof(*p) * (j * 50 + 110);
-        printf("realloc: %zu\en", size);
+        printf("realloc: %zu\[rs]n", size);
         p =3D realloc(p, size);
 \&
         size =3D sizeof(*p) * ((j + 1) * 150 + 110);
-        printf("realloc: %zu\en", size);
+        printf("realloc: %zu\[rs]n", size);
         p =3D realloc(p, size);
     }
 \&
diff --git a/man/man1/pldd.1 b/man/man1/pldd.1
index e0fa32b6e..3b374736a 100644
--- a/man/man1/pldd.1
+++ b/man/man1/pldd.1
@@ -74,7 +74,7 @@ .SH NOTES
 .P
 .in +4n
 .EX
-$ \fBgdb \-ex "set confirm off" \-ex "set height 0" \-ex "info shared" \e\=
fP
+$ \fBgdb \-ex "set confirm off" \-ex "set height 0" \-ex "info shared" \[r=
s]\fP
         \fB\-ex "quit" \-p $pid | grep \[aq]\[ha]0x.*0x\[aq]\fP
 .EE
 .in
diff --git a/man/man1/sprof.1 b/man/man1/sprof.1
index a6eb7ad3c..2e4c98d56 100644
--- a/man/man1/sprof.1
+++ b/man/man1/sprof.1
@@ -137,7 +137,7 @@ .SH EXAMPLES
 .P
 .in +4n
 .EX
-$ \fBcc \-g \-fPIC \-shared \-Wl,\-soname,libdemo.so.1 \e\fP
+$ \fBcc \-g \-fPIC \-shared \-Wl,\-soname,libdemo.so.1 \[rs]\fP
         \fB\-o libdemo.so.1.0.1 libdemo.c\fP
 .EE
 .in
diff --git a/man/man1/time.1 b/man/man1/time.1
index 9b7efcfd4..7729eda86 100644
--- a/man/man1/time.1
+++ b/man/man1/time.1
@@ -57,7 +57,7 @@ .SH OPTIONS
 .IP
 .in +4n
 .EX
-"real %f\enuser %f\ensys %f\en"
+"real %f\[rs]nuser %f\[rs]nsys %f\[rs]n"
 .EE
 .in
 .IP
@@ -123,7 +123,7 @@ .SH GNU VERSION
 .SS The format string
 The format is interpreted in the usual printf-like way.
 Ordinary characters are directly copied, tab, newline,
-and backslash are escaped using \et, \en, and \e\e,
+and backslash are escaped using \[rs]t, \[rs]n, and \[rs]\[rs],
 a percent sign is represented by %%, and otherwise %
 indicates a conversion.
 The program
diff --git a/man/man2/_syscall.2 b/man/man2/_syscall.2
index 0b781a39e..c9b407b28 100644
--- a/man/man2/_syscall.2
+++ b/man/man2/_syscall.2
@@ -140,11 +140,11 @@ .SH EXAMPLES
     int error;
 \&
     error =3D sysinfo(&s_info);
-    printf("code error =3D %d\en", error);
-    printf("Uptime =3D %lds\enLoad: 1 min %lu / 5 min %lu / 15 min %lu\en"
-           "RAM: total %lu / free %lu / shared %lu\en"
-           "Memory in buffers =3D %lu\enSwap: total %lu / free %lu\en"
-           "Number of processes =3D %d\en",
+    printf("code error =3D %d\[rs]n", error);
+    printf("Uptime =3D %lds\[rs]nLoad: 1 min %lu / 5 min %lu / 15 min %lu\=
[rs]n"
+           "RAM: total %lu / free %lu / shared %lu\[rs]n"
+           "Memory in buffers =3D %lu\[rs]nSwap: total %lu / free %lu\[rs]=
n"
+           "Number of processes =3D %d\[rs]n",
            s_info.uptime, s_info.loads[0],
            s_info.loads[1], s_info.loads[2],
            s_info.totalram, s_info.freeram,
diff --git a/man/man2/add_key.2 b/man/man2/add_key.2
index 2b017f680..d3ce3356b 100644
--- a/man/man2/add_key.2
+++ b/man/man2/add_key.2
@@ -252,7 +252,7 @@ .SS Program source
     key_serial_t key;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage: %s type description payload\en",
+        fprintf(stderr, "Usage: %s type description payload\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -264,7 +264,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Key ID is %jx\en", (uintmax_t) key);
+    printf("Key ID is %jx\[rs]n", (uintmax_t) key);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/bind.2 b/man/man2/bind.2
index 2fec135d9..ff14507bd 100644
--- a/man/man2/bind.2
+++ b/man/man2/bind.2
@@ -226,7 +226,7 @@ .SH EXAMPLES
 #define MY_SOCK_PATH "/somepath"
 #define LISTEN_BACKLOG 50
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 int
diff --git a/man/man2/bpf.2 b/man/man2/bpf.2
index 69e1cd933..5b0acb006 100644
--- a/man/man2/bpf.2
+++ b/man/man2/bpf.2
@@ -1211,7 +1211,7 @@ .SH EXAMPLES
     map_fd =3D bpf_create_map(BPF_MAP_TYPE_ARRAY, sizeof(key),
                             sizeof(value), 256);
     if (map_fd < 0) {
-        printf("failed to create map \[aq]%s\[aq]\en", strerror(errno));
+        printf("failed to create map \[aq]%s\[aq]\[rs]n", strerror(errno));
         /* likely not run as root */
         return 1;
     }
@@ -1250,7 +1250,7 @@ .SH EXAMPLES
         assert(bpf_lookup_elem(map_fd, &key, &tcp_cnt) =3D=3D 0);
         key =3D IPPROTO_UDP;
         assert(bpf_lookup_elem(map_fd, &key, &udp_cnt) =3D=3D 0);
-        printf("TCP %lld UDP %lld packets\en", tcp_cnt, udp_cnt);
+        printf("TCP %lld UDP %lld packets\[rs]n", tcp_cnt, udp_cnt);
         sleep(1);
     }
 \&
diff --git a/man/man2/chown.2 b/man/man2/chown.2
index 5ea6f5857..7141cc3d2 100644
--- a/man/man2/chown.2
+++ b/man/man2/chown.2
@@ -437,14 +437,14 @@ .SS Program source
     uid_t          uid;
     struct passwd  *pwd;
 \&
-    if (argc !=3D 3 || argv[1][0] =3D=3D \[aq]\e0\[aq]) {
-        fprintf(stderr, "%s <owner> <file>\en", argv[0]);
+    if (argc !=3D 3 || argv[1][0] =3D=3D \[aq]\[rs]0\[aq]) {
+        fprintf(stderr, "%s <owner> <file>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     uid =3D strtol(argv[1], &endptr, 10);  /* Allow a numeric string */
 \&
-    if (*endptr !=3D \[aq]\e0\[aq]) {         /* Was not pure numeric stri=
ng */
+    if (*endptr !=3D \[aq]\[rs]0\[aq]) {         /* Was not pure numeric s=
tring */
         pwd =3D getpwnam(argv[1]);   /* Try getting UID for username */
         if (pwd =3D=3D NULL) {
             perror("getpwnam");
diff --git a/man/man2/clock_getres.2 b/man/man2/clock_getres.2
index 9c98d12e9..b2c183758 100644
--- a/man/man2/clock_getres.2
+++ b/man/man2/clock_getres.2
@@ -492,7 +492,7 @@ .SS Program source
            (int) (ts.tv_sec % SECS_IN_DAY) / 3600,
            (int) (ts.tv_sec % 3600) / 60,
            (int) ts.tv_sec % 60);
-    printf(")\en");
+    printf(")\[rs]n");
 \&
     if (clock_getres(clock, &ts) =3D=3D \-1) {
         perror("clock_getres");
@@ -500,7 +500,7 @@ .SS Program source
     }
 \&
     if (showRes)
-        printf("     resolution: %10jd.%09ld\en",
+        printf("     resolution: %10jd.%09ld\[rs]n",
                (intmax_t) ts.tv_sec, ts.tv_nsec);
 }
 \&
diff --git a/man/man2/clone.2 b/man/man2/clone.2
index 5a4add238..655e50b82 100644
--- a/man/man2/clone.2
+++ b/man/man2/clone.2
@@ -1869,7 +1869,7 @@ .SS Program source
 \&
     if (uname(&uts) =3D=3D \-1)
         err(EXIT_FAILURE, "uname");
-    printf("uts.nodename in child:  %s\en", uts.nodename);
+    printf("uts.nodename in child:  %s\[rs]n", uts.nodename);
 \&
     /* Keep the namespace open for a while, by sleeping.
        This allows some experimentation\-\-for example, another
@@ -1891,7 +1891,7 @@ .SS Program source
     struct utsname  uts;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s <child\-hostname>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <child\-hostname>\[rs]n", argv[0]);
         exit(EXIT_SUCCESS);
     }
 \&
@@ -1910,7 +1910,7 @@ .SS Program source
     pid =3D clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]);
     if (pid =3D=3D \-1)
         err(EXIT_FAILURE, "clone");
-    printf("clone() returned %jd\en", (intmax_t) pid);
+    printf("clone() returned %jd\[rs]n", (intmax_t) pid);
 \&
     /* Parent falls through to here */
 \&
@@ -1921,11 +1921,11 @@ .SS Program source
 \&
     if (uname(&uts) =3D=3D \-1)
         err(EXIT_FAILURE, "uname");
-    printf("uts.nodename in parent: %s\en", uts.nodename);
+    printf("uts.nodename in parent: %s\[rs]n", uts.nodename);
 \&
     if (waitpid(pid, NULL, 0) =3D=3D \-1)    /* Wait for child */
         err(EXIT_FAILURE, "waitpid");
-    printf("child has terminated\en");
+    printf("child has terminated\[rs]n");
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/close_range.2 b/man/man2/close_range.2
index 9806638bd..efb39d698 100644
--- a/man/man2/close_range.2
+++ b/man/man2/close_range.2
@@ -238,7 +238,7 @@ .SS Program source
                      dp\->d_name);
 \&
             len =3D readlink(path, target, sizeof(target));
-            printf("%s =3D=3D> %.*s\en", path, (int) len, target);
+            printf("%s =3D=3D> %.*s\[rs]n", path, (int) len, target);
         }
     }
 \&
@@ -256,12 +256,12 @@ .SS Program source
             perror(argv[j]);
             exit(EXIT_FAILURE);
         }
-        printf("%s opened as FD %d\en", argv[j], fd);
+        printf("%s opened as FD %d\[rs]n", argv[j], fd);
     }
 \&
     show_fds();
 \&
-    printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D About to call close_range() =3D=3D=
=3D=3D=3D=3D=3D\en");
+    printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D About to call close_range() =3D=3D=
=3D=3D=3D=3D=3D\[rs]n");
 \&
     if (close_range(3, \[ti]0U, 0) =3D=3D \-1) {
         perror("close_range");
diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
index 50ecef77c..7e4aff057 100644
--- a/man/man2/copy_file_range.2
+++ b/man/man2/copy_file_range.2
@@ -263,7 +263,7 @@ .SH EXAMPLES
     struct stat  stat;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <source> <destination>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <source> <destination>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/eventfd.2 b/man/man2/eventfd.2
index 48e9e2ac6..b532af459 100644
--- a/man/man2/eventfd.2
+++ b/man/man2/eventfd.2
@@ -396,7 +396,7 @@ .SS Program source
     ssize_t   s;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s <num>...\en", argv[0]);
+        fprintf(stderr, "Usage: %s <num>...\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -407,25 +407,25 @@ .SS Program source
     switch (fork()) {
     case 0:
         for (size_t j =3D 1; j < argc; j++) {
-            printf("Child writing %s to efd\en", argv[j]);
+            printf("Child writing %s to efd\[rs]n", argv[j]);
             u =3D strtoull(argv[j], NULL, 0);
                     /* strtoull() allows various bases */
             s =3D write(efd, &u, sizeof(uint64_t));
             if (s !=3D sizeof(uint64_t))
                 err(EXIT_FAILURE, "write");
         }
-        printf("Child completed write loop\en");
+        printf("Child completed write loop\[rs]n");
 \&
         exit(EXIT_SUCCESS);
 \&
     default:
         sleep(2);
 \&
-        printf("Parent about to read\en");
+        printf("Parent about to read\[rs]n");
         s =3D read(efd, &u, sizeof(uint64_t));
         if (s !=3D sizeof(uint64_t))
             err(EXIT_FAILURE, "read");
-        printf("Parent read %"PRIu64" (%#"PRIx64") from efd\en", u, u);
+        printf("Parent read %"PRIu64" (%#"PRIx64") from efd\[rs]n", u, u);
         exit(EXIT_SUCCESS);
 \&
     case \-1:
diff --git a/man/man2/execve.2 b/man/man2/execve.2
index 03dfdcdcf..997bb4724 100644
--- a/man/man2/execve.2
+++ b/man/man2/execve.2
@@ -790,7 +790,7 @@ .SH EXAMPLES
 main(int argc, char *argv[])
 {
     for (size_t j =3D 0; j < argc; j++)
-        printf("argv[%zu]: %s\en", j, argv[j]);
+        printf("argv[%zu]: %s\[rs]n", j, argv[j]);
 \&
     exit(EXIT_SUCCESS);
 }
@@ -817,7 +817,7 @@ .SH EXAMPLES
     static char *newenviron[] =3D { NULL };
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <file\-to\-exec>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <file\-to\-exec>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/fork.2 b/man/man2/fork.2
index bf491857f..ff1768bb3 100644
--- a/man/man2/fork.2
+++ b/man/man2/fork.2
@@ -328,7 +328,7 @@ .SH EXAMPLES
         puts("Child exiting.");
         exit(EXIT_SUCCESS);
     default:
-        printf("Child is PID %jd\en", (intmax_t) pid);
+        printf("Child is PID %jd\[rs]n", (intmax_t) pid);
         puts("Parent exiting.");
         exit(EXIT_SUCCESS);
     }
diff --git a/man/man2/futex.2 b/man/man2/futex.2
index 3eed74412..2098bbe61 100644
--- a/man/man2/futex.2
+++ b/man/man2/futex.2
@@ -645,10 +645,10 @@ .SS Futex operations
 .IP
 .in +4n
 .EX
-#define FUTEX_OP(op, oparg, cmp, cmparg) \e
-                (((op & 0xf) << 28) | \e
-                ((cmp & 0xf) << 24) | \e
-                ((oparg & 0xfff) << 12) | \e
+#define FUTEX_OP(op, oparg, cmp, cmparg) \[rs]
+                (((op & 0xf) << 28) | \[rs]
+                ((cmp & 0xf) << 24) | \[rs]
+                ((oparg & 0xfff) << 12) | \[rs]
                 (cmparg & 0xfff))
 .EE
 .in
@@ -1903,7 +1903,7 @@ .SS Program source
     if (childPid =3D=3D 0) {        /* Child */
         for (unsigned int j =3D 0; j < nloops; j++) {
             fwait(futex1);
-            printf("Child  (%jd) %u\en", (intmax_t) getpid(), j);
+            printf("Child  (%jd) %u\[rs]n", (intmax_t) getpid(), j);
             fpost(futex2);
         }
 \&
@@ -1914,7 +1914,7 @@ .SS Program source
 \&
     for (unsigned int j =3D 0; j < nloops; j++) {
         fwait(futex2);
-        printf("Parent (%jd) %u\en", (intmax_t) getpid(), j);
+        printf("Parent (%jd) %u\[rs]n", (intmax_t) getpid(), j);
         fpost(futex1);
     }
 \&
diff --git a/man/man2/getdents.2 b/man/man2/getdents.2
index 421318e5e..ad8749045 100644
--- a/man/man2/getdents.2
+++ b/man/man2/getdents.2
@@ -295,8 +295,8 @@ .SS Program source
         if (nread =3D=3D 0)
             break;
 \&
-        printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=3D%ld \-\-\-\-\-\-\-\=
-\-\-\-\-\-\-\-\en", nread);
-        printf("inode#    file type  d_reclen  d_off   d_name\en");
+        printf("\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- nread=3D%ld \-\-\-\-\-\-\-\=
-\-\-\-\-\-\-\-\[rs]n", nread);
+        printf("inode#    file type  d_reclen  d_off   d_name\[rs]n");
         for (size_t bpos =3D 0; bpos < nread;) {
             d =3D (struct linux_dirent *) (buf + bpos);
             printf("%8lu  ", d\->d_ino);
@@ -308,7 +308,7 @@ .SS Program source
                              (d_type =3D=3D DT_LNK) ?  "symlink" :
                              (d_type =3D=3D DT_BLK) ?  "block dev" :
                              (d_type =3D=3D DT_CHR) ?  "char dev" : "???");
-            printf("%4d %10jd  %s\en", d\->d_reclen,
+            printf("%4d %10jd  %s\[rs]n", d\->d_reclen,
                    (intmax_t) d\->d_off, d\->d_name);
             bpos +=3D d\->d_reclen;
         }
diff --git a/man/man2/getrlimit.2 b/man/man2/getrlimit.2
index b1254f618..61a1484e4 100644
--- a/man/man2/getrlimit.2
+++ b/man/man2/getrlimit.2
@@ -799,7 +799,7 @@ .SH EXAMPLES
 \&
     if (!(argc =3D=3D 2 || argc =3D=3D 4)) {
         fprintf(stderr, "Usage: %s <pid> [<new\-soft\-limit> "
-                "<new\-hard\-limit>]\en", argv[0]);
+                "<new\-hard\-limit>]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -817,14 +817,14 @@ .SH EXAMPLES
 \&
     if (prlimit(pid, RLIMIT_CPU, newp, &old) =3D=3D \-1)
         err(EXIT_FAILURE, "prlimit\-1");
-    printf("Previous limits: soft=3D%jd; hard=3D%jd\en",
+    printf("Previous limits: soft=3D%jd; hard=3D%jd\[rs]n",
            (intmax_t) old.rlim_cur, (intmax_t) old.rlim_max);
 \&
     /* Retrieve and display new CPU time limit */
 \&
     if (prlimit(pid, RLIMIT_CPU, NULL, &old) =3D=3D \-1)
         err(EXIT_FAILURE, "prlimit\-2");
-    printf("New limits: soft=3D%jd; hard=3D%jd\en",
+    printf("New limits: soft=3D%jd; hard=3D%jd\[rs]n",
            (intmax_t) old.rlim_cur, (intmax_t) old.rlim_max);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man2/kcmp.2 b/man/man2/kcmp.2
index 33d4a25e1..98f8fc0d9 100644
--- a/man/man2/kcmp.2
+++ b/man/man2/kcmp.2
@@ -361,8 +361,8 @@ .SS Program source
 static void
 test_kcmp(char *msg, pid_t pid1, pid_t pid2, int fd_a, int fd_b)
 {
-    printf("\et%s\en", msg);
-    printf("\et\etkcmp(%jd, %jd, KCMP_FILE, %d, %d) =3D=3D> %s\en",
+    printf("\[rs]t%s\[rs]n", msg);
+    printf("\[rs]t\[rs]tkcmp(%jd, %jd, KCMP_FILE, %d, %d) =3D=3D> %s\[rs]n=
",
            (intmax_t) pid1, (intmax_t) pid2, fd_a, fd_b,
            (kcmp(pid1, pid2, KCMP_FILE, fd_a, fd_b) =3D=3D 0) ?
                         "same" : "different");
@@ -378,15 +378,15 @@ .SS Program source
     if (fd1 =3D=3D \-1)
         err(EXIT_FAILURE, "open");
 \&
-    printf("Parent PID is %jd\en", (intmax_t) getpid());
-    printf("Parent opened file on FD %d\en\en", fd1);
+    printf("Parent PID is %jd\[rs]n", (intmax_t) getpid());
+    printf("Parent opened file on FD %d\[rs]n\[rs]n", fd1);
 \&
     switch (fork()) {
     case \-1:
         err(EXIT_FAILURE, "fork");
 \&
     case 0:
-        printf("PID of child of fork() is %jd\en", (intmax_t) getpid());
+        printf("PID of child of fork() is %jd\[rs]n", (intmax_t) getpid());
 \&
         test_kcmp("Compare duplicate FDs from different processes:",
                   getpid(), getppid(), fd1, fd1);
@@ -394,7 +394,7 @@ .SS Program source
         fd2 =3D open(pathname, O_CREAT | O_RDWR, 0600);
         if (fd2 =3D=3D \-1)
             err(EXIT_FAILURE, "open");
-        printf("Child opened file on FD %d\en", fd2);
+        printf("Child opened file on FD %d\[rs]n", fd2);
 \&
         test_kcmp("Compare FDs from distinct open()s in same process:",
                   getpid(), getpid(), fd1, fd2);
@@ -402,7 +402,7 @@ .SS Program source
         fd3 =3D dup(fd1);
         if (fd3 =3D=3D \-1)
             err(EXIT_FAILURE, "dup");
-        printf("Child duplicated FD %d to create FD %d\en", fd1, fd3);
+        printf("Child duplicated FD %d to create FD %d\[rs]n", fd1, fd3);
 \&
         test_kcmp("Compare duplicated FDs in same process:",
                   getpid(), getpid(), fd1, fd3);
diff --git a/man/man2/kexec_load.2 b/man/man2/kexec_load.2
index 58a894f30..80edb4b25 100644
--- a/man/man2/kexec_load.2
+++ b/man/man2/kexec_load.2
@@ -193,7 +193,7 @@ .SS kexec_file_load()
 The
 .I cmdline_len
 argument specifies size of the buffer.
-The last byte in the buffer must be a null byte (\[aq]\e0\[aq]).
+The last byte in the buffer must be a null byte (\[aq]\[rs]0\[aq]).
 .P
 The
 .I flags
@@ -288,7 +288,7 @@ .SH ERRORS
 .B EINVAL
 The value in
 .I cmdline[cmdline_len\-1]
-is not \[aq]\e0\[aq].
+is not \[aq]\[rs]0\[aq].
 .TP
 .B EINVAL
 The file referred to by
diff --git a/man/man2/keyctl.2 b/man/man2/keyctl.2
index a2a4ab047..8e6296cc4 100644
--- a/man/man2/keyctl.2
+++ b/man/man2/keyctl.2
@@ -2106,7 +2106,7 @@ .SS Program source
 \&
     if (argc !=3D 8) {
         fprintf(stderr, "Usage: %s op key uid gid thread_keyring "
-                        "process_keyring session_keyring\en", argv[0]);
+                        "process_keyring session_keyring\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -2117,7 +2117,7 @@ .SS Program source
     setbuf(fp, NULL);
 \&
     t =3D time(NULL);
-    fprintf(fp, "Time: %s\en", ctime(&t));
+    fprintf(fp, "Time: %s\[rs]n", ctime(&t));
 \&
     /*
      * The kernel passes a fixed set of arguments to the program
@@ -2131,26 +2131,26 @@ .SS Program source
     process_keyring =3D atoi(argv[6]);
     session_keyring =3D atoi(argv[7]);
 \&
-    fprintf(fp, "Command line arguments:\en");
-    fprintf(fp, "  argv[0]:            %s\en", argv[0]);
-    fprintf(fp, "  operation:          %s\en", operation);
-    fprintf(fp, "  key_to_instantiate: %jx\en",
+    fprintf(fp, "Command line arguments:\[rs]n");
+    fprintf(fp, "  argv[0]:            %s\[rs]n", argv[0]);
+    fprintf(fp, "  operation:          %s\[rs]n", operation);
+    fprintf(fp, "  key_to_instantiate: %jx\[rs]n",
             (uintmax_t) key_to_instantiate);
-    fprintf(fp, "  UID:                %jd\en", (intmax_t) uid);
-    fprintf(fp, "  GID:                %jd\en", (intmax_t) gid);
-    fprintf(fp, "  thread_keyring:     %jx\en",
+    fprintf(fp, "  UID:                %jd\[rs]n", (intmax_t) uid);
+    fprintf(fp, "  GID:                %jd\[rs]n", (intmax_t) gid);
+    fprintf(fp, "  thread_keyring:     %jx\[rs]n",
             (uintmax_t) thread_keyring);
-    fprintf(fp, "  process_keyring:    %jx\en",
+    fprintf(fp, "  process_keyring:    %jx\[rs]n",
             (uintmax_t) process_keyring);
-    fprintf(fp, "  session_keyring:    %jx\en",
+    fprintf(fp, "  session_keyring:    %jx\[rs]n",
             (uintmax_t) session_keyring);
-    fprintf(fp, "\en");
+    fprintf(fp, "\[rs]n");
 \&
     /*
      * Assume the authority to instantiate the key named in argv[2].
      */
     if (keyctl(KEYCTL_ASSUME_AUTHORITY, key_to_instantiate) =3D=3D \-1) {
-        fprintf(fp, "KEYCTL_ASSUME_AUTHORITY failed: %s\en",
+        fprintf(fp, "KEYCTL_ASSUME_AUTHORITY failed: %s\[rs]n",
                 strerror(errno));
         exit(EXIT_FAILURE);
     }
@@ -2160,11 +2160,11 @@ .SS Program source
      */
     if (keyctl(KEYCTL_DESCRIBE, key_to_instantiate,
                dbuf, sizeof(dbuf)) =3D=3D \-1) {
-        fprintf(fp, "KEYCTL_DESCRIBE failed: %s\en", strerror(errno));
+        fprintf(fp, "KEYCTL_DESCRIBE failed: %s\[rs]n", strerror(errno));
         exit(EXIT_FAILURE);
     }
 \&
-    fprintf(fp, "Key description:      %s\en", dbuf);
+    fprintf(fp, "Key description:      %s\[rs]n", dbuf);
 \&
     /*
      * Fetch the payload of the authorization key, which is
@@ -2173,12 +2173,12 @@ .SS Program source
     akp_size =3D keyctl(KEYCTL_READ, KEY_SPEC_REQKEY_AUTH_KEY,
                       auth_key_payload, sizeof(auth_key_payload));
     if (akp_size =3D=3D \-1) {
-        fprintf(fp, "KEYCTL_READ failed: %s\en", strerror(errno));
+        fprintf(fp, "KEYCTL_READ failed: %s\[rs]n", strerror(errno));
         exit(EXIT_FAILURE);
     }
 \&
-    auth_key_payload[akp_size] =3D \[aq]\e0\[aq];
-    fprintf(fp, "Auth key payload:     %s\en", auth_key_payload);
+    auth_key_payload[akp_size] =3D \[aq]\[rs]0\[aq];
+    fprintf(fp, "Auth key payload:     %s\[rs]n", auth_key_payload);
 \&
     /*
      * For interest, get the ID of the authorization key and
@@ -2187,12 +2187,12 @@ .SS Program source
     auth_key =3D keyctl(KEYCTL_GET_KEYRING_ID,
                       KEY_SPEC_REQKEY_AUTH_KEY);
     if (auth_key =3D=3D \-1) {
-        fprintf(fp, "KEYCTL_GET_KEYRING_ID failed: %s\en",
+        fprintf(fp, "KEYCTL_GET_KEYRING_ID failed: %s\[rs]n",
                 strerror(errno));
         exit(EXIT_FAILURE);
     }
 \&
-    fprintf(fp, "Auth key ID:          %jx\en", (uintmax_t) auth_key);
+    fprintf(fp, "Auth key ID:          %jx\[rs]n", (uintmax_t) auth_key);
 \&
     /*
      * Fetch key ID for the request_key(2) destination keyring.
@@ -2200,12 +2200,12 @@ .SS Program source
     dest_keyring =3D keyctl(KEYCTL_GET_KEYRING_ID,
                           KEY_SPEC_REQUESTOR_KEYRING);
     if (dest_keyring =3D=3D \-1) {
-        fprintf(fp, "KEYCTL_GET_KEYRING_ID failed: %s\en",
+        fprintf(fp, "KEYCTL_GET_KEYRING_ID failed: %s\[rs]n",
                 strerror(errno));
         exit(EXIT_FAILURE);
     }
 \&
-    fprintf(fp, "Destination keyring:  %jx\en", (uintmax_t) dest_keyring);
+    fprintf(fp, "Destination keyring:  %jx\[rs]n", (uintmax_t) dest_keyrin=
g);
 \&
     /*
      * Fetch the description of the authorization key. This
@@ -2217,11 +2217,11 @@ .SS Program source
     if (keyctl(KEYCTL_DESCRIBE, KEY_SPEC_REQKEY_AUTH_KEY,
                dbuf, sizeof(dbuf)) =3D=3D \-1)
     {
-        fprintf(fp, "KEYCTL_DESCRIBE failed: %s\en", strerror(errno));
+        fprintf(fp, "KEYCTL_DESCRIBE failed: %s\[rs]n", strerror(errno));
         exit(EXIT_FAILURE);
     }
 \&
-    fprintf(fp, "Auth key description: %s\en", dbuf);
+    fprintf(fp, "Auth key description: %s\[rs]n", dbuf);
 \&
     /*
      * Instantiate the key using the callout data that was supplied
@@ -2230,7 +2230,7 @@ .SS Program source
     if (keyctl(KEYCTL_INSTANTIATE, key_to_instantiate,
                auth_key_payload, akp_size + 1, dest_keyring) =3D=3D \-1)
     {
-        fprintf(fp, "KEYCTL_INSTANTIATE failed: %s\en",
+        fprintf(fp, "KEYCTL_INSTANTIATE failed: %s\[rs]n",
                 strerror(errno));
         exit(EXIT_FAILURE);
     }
diff --git a/man/man2/listxattr.2 b/man/man2/listxattr.2
index 72b769a0e..fd624425f 100644
--- a/man/man2/listxattr.2
+++ b/man/man2/listxattr.2
@@ -86,12 +86,12 @@ .SS Example
 The
 .I list
 of names is returned as an unordered array of null-terminated character st=
rings
-(attribute names are separated by null bytes (\[aq]\e0\[aq])),
+(attribute names are separated by null bytes (\[aq]\[rs]0\[aq])),
 like this:
 .P
 .in +4n
 .EX
-user.name1\e0system.name1\e0user.name2\e0
+user.name1\[rs]0system.name1\[rs]0user.name2\[rs]0
 .EE
 .in
 .P
@@ -102,7 +102,7 @@ .SS Example
 .P
 .in +4n
 .EX
-system.posix_acl_access\e0system.posix_acl_default\e0
+system.posix_acl_access\[rs]0system.posix_acl_default\[rs]0
 .EE
 .in
 .SH RETURN VALUE
@@ -209,7 +209,7 @@ .SS Program source (listxattr.c)
     ssize_t  buflen, keylen, vallen;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s path\en", argv[0]);
+        fprintf(stderr, "Usage: %s path\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -222,7 +222,7 @@ .SS Program source (listxattr.c)
         exit(EXIT_FAILURE);
     }
     if (buflen =3D=3D 0) {
-        printf("%s has no attributes.\en", argv[1]);
+        printf("%s has no attributes.\[rs]n", argv[1]);
         exit(EXIT_SUCCESS);
     }
 \&
@@ -295,7 +295,7 @@ .SS Program source (listxattr.c)
             printf("<no value>");
         }
 \&
-        printf("\en");
+        printf("\[rs]n");
 \&
         /*
          * Forward to next attribute key.
diff --git a/man/man2/lseek.2 b/man/man2/lseek.2
index 14fc13734..c344c6baa 100644
--- a/man/man2/lseek.2
+++ b/man/man2/lseek.2
@@ -57,7 +57,7 @@ .SH DESCRIPTION
 allows the file offset to be set beyond the end
 of the file (but this does not change the size of the file).
 If data is later written at this point, subsequent reads of the data
-in the gap (a "hole") return null bytes (\[aq]\e0\[aq]) until
+in the gap (a "hole") return null bytes (\[aq]\[rs]0\[aq]) until
 data is actually written into the gap.
 .SS Seeking file data and holes
 Since Linux 3.1, Linux supports the following additional values for
diff --git a/man/man2/membarrier.2 b/man/man2/membarrier.2
index cd8029dd9..d6e5e7394 100644
--- a/man/man2/membarrier.2
+++ b/man/man2/membarrier.2
@@ -402,7 +402,7 @@ .SH EXAMPLES
 \&
     if (!(ret & MEMBARRIER_CMD_GLOBAL)) {
         fprintf(stderr,
-            "membarrier does not support MEMBARRIER_CMD_GLOBAL\en");
+            "membarrier does not support MEMBARRIER_CMD_GLOBAL\[rs]n");
         return \-1;
     }
 \&
diff --git a/man/man2/memfd_create.2 b/man/man2/memfd_create.2
index 55cb59ef0..4ae50c237 100644
--- a/man/man2/memfd_create.2
+++ b/man/man2/memfd_create.2
@@ -429,14 +429,14 @@ .SS Program source: t_memfd_create.c
     unsigned int  seals;
 \&
     if (argc < 3) {
-        fprintf(stderr, "%s name size [seals]\en", argv[0]);
-        fprintf(stderr, "\et\[aq]seals\[aq] can contain any of the "
-                "following characters:\en");
-        fprintf(stderr, "\et\etg \- F_SEAL_GROW\en");
-        fprintf(stderr, "\et\ets \- F_SEAL_SHRINK\en");
-        fprintf(stderr, "\et\etw \- F_SEAL_WRITE\en");
-        fprintf(stderr, "\et\etW \- F_SEAL_FUTURE_WRITE\en");
-        fprintf(stderr, "\et\etS \- F_SEAL_SEAL\en");
+        fprintf(stderr, "%s name size [seals]\[rs]n", argv[0]);
+        fprintf(stderr, "\[rs]t\[aq]seals\[aq] can contain any of the "
+                "following characters:\[rs]n");
+        fprintf(stderr, "\[rs]t\[rs]tg \- F_SEAL_GROW\[rs]n");
+        fprintf(stderr, "\[rs]t\[rs]ts \- F_SEAL_SHRINK\[rs]n");
+        fprintf(stderr, "\[rs]t\[rs]tw \- F_SEAL_WRITE\[rs]n");
+        fprintf(stderr, "\[rs]t\[rs]tW \- F_SEAL_FUTURE_WRITE\[rs]n");
+        fprintf(stderr, "\[rs]t\[rs]tS \- F_SEAL_SEAL\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -456,7 +456,7 @@ .SS Program source: t_memfd_create.c
     if (ftruncate(fd, len) =3D=3D \-1)
         err(EXIT_FAILURE, "truncate");
 \&
-    printf("PID: %jd; fd: %d; /proc/%jd/fd/%d\en",
+    printf("PID: %jd; fd: %d; /proc/%jd/fd/%d\[rs]n",
            (intmax_t) getpid(), fd, (intmax_t) getpid(), fd);
 \&
     /* Code to map the file and populate the mapping with data
@@ -509,7 +509,7 @@ .SS Program source: t_get_seals.c
     unsigned int  seals;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "%s /proc/PID/fd/FD\en", argv[0]);
+        fprintf(stderr, "%s /proc/PID/fd/FD\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -532,7 +532,7 @@ .SS Program source: t_get_seals.c
         printf(" FUTURE_WRITE");
     if (seals & F_SEAL_SHRINK)
         printf(" SHRINK");
-    printf("\en");
+    printf("\[rs]n");
 \&
     /* Code to map the file and access the contents of the
        resulting mapping omitted. */
diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index f4cecbefb..12d60f500 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -943,7 +943,7 @@ .SS Program source
 #include <sys/types.h>
 #include <unistd.h>
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 int
@@ -957,7 +957,7 @@ .SS Program source
     struct stat  sb;
 \&
     if (argc < 3 || argc > 4) {
-        fprintf(stderr, "%s file offset [length]\en", argv[0]);
+        fprintf(stderr, "%s file offset [length]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -973,7 +973,7 @@ .SS Program source
         /* offset for mmap() must be page aligned */
 \&
     if (offset >=3D sb.st_size) {
-        fprintf(stderr, "offset is past end of file\en");
+        fprintf(stderr, "offset is past end of file\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/mprotect.2 b/man/man2/mprotect.2
index 63781f536..b82f728e5 100644
--- a/man/man2/mprotect.2
+++ b/man/man2/mprotect.2
@@ -302,7 +302,7 @@ .SS Program source
 #include <sys/mman.h>
 #include <unistd.h>
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static char *buffer;
@@ -316,7 +316,7 @@ .SS Program source
        Nevertheless, we use printf() here as a simple way of
        showing that the handler was called. */
 \&
-    printf("Got SIGSEGV at address: %p\en", si\->si_addr);
+    printf("Got SIGSEGV at address: %p\[rs]n", si\->si_addr);
     exit(EXIT_FAILURE);
 }
 \&
@@ -343,7 +343,7 @@ .SS Program source
     if (buffer =3D=3D NULL)
         handle_error("memalign");
 \&
-    printf("Start of region:        %p\en", buffer);
+    printf("Start of region:        %p\[rs]n", buffer);
 \&
     if (mprotect(buffer + pagesize * 2, pagesize,
                  PROT_READ) =3D=3D \-1)
@@ -352,7 +352,7 @@ .SS Program source
     for (char *p =3D buffer ; ; )
         *(p++) =3D \[aq]a\[aq];
 \&
-    printf("Loop completed\en");     /* Should never happen */
+    printf("Loop completed\[rs]n");     /* Should never happen */
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man2/msgop.2 b/man/man2/msgop.2
index 6ffd76b2f..ecb260134 100644
--- a/man/man2/msgop.2
+++ b/man/man2/msgop.2
@@ -581,12 +581,12 @@ .SS Program source
     if (msg !=3D NULL)
         fputs(msg, stderr);
 \&
-    fprintf(stderr, "Usage: %s [options]\en", prog_name);
-    fprintf(stderr, "Options are:\en");
-    fprintf(stderr, "\-s        send message using msgsnd()\en");
-    fprintf(stderr, "\-r        read message using msgrcv()\en");
-    fprintf(stderr, "\-t        message type (default is 1)\en");
-    fprintf(stderr, "\-k        message queue key (default is 1234)\en");
+    fprintf(stderr, "Usage: %s [options]\[rs]n", prog_name);
+    fprintf(stderr, "Options are:\[rs]n");
+    fprintf(stderr, "\-s        send message using msgsnd()\[rs]n");
+    fprintf(stderr, "\-r        read message using msgrcv()\[rs]n");
+    fprintf(stderr, "\-t        message type (default is 1)\[rs]n");
+    fprintf(stderr, "\-k        message queue key (default is 1234)\[rs]n"=
);
     exit(EXIT_FAILURE);
 }
 \&
@@ -608,7 +608,7 @@ .SS Program source
         perror("msgsnd error");
         exit(EXIT_FAILURE);
     }
-    printf("sent: %s\en", msg.mtext);
+    printf("sent: %s\[rs]n", msg.mtext);
 }
 \&
 static void
@@ -622,9 +622,9 @@ .SS Program source
             perror("msgrcv");
             exit(EXIT_FAILURE);
         }
-        printf("No message available for msgrcv()\en");
+        printf("No message available for msgrcv()\[rs]n");
     } else {
-        printf("message received: %s\en", msg.mtext);
+        printf("message received: %s\[rs]n", msg.mtext);
     }
 }
 \&
@@ -647,18 +647,18 @@ .SS Program source
         case \[aq]t\[aq]:
             msgtype =3D atoi(optarg);
             if (msgtype <=3D 0)
-                usage(argv[0], "\-t option must be greater than 0\en");
+                usage(argv[0], "\-t option must be greater than 0\[rs]n");
             break;
         case \[aq]k\[aq]:
             msgkey =3D atoi(optarg);
             break;
         default:
-            usage(argv[0], "Unrecognized option\en");
+            usage(argv[0], "Unrecognized option\[rs]n");
         }
     }
 \&
     if (mode =3D=3D 0)
-        usage(argv[0], "must use either \-s or \-r option\en");
+        usage(argv[0], "must use either \-s or \-r option\[rs]n");
 \&
     qid =3D msgget(msgkey, IPC_CREAT | 0666);
 \&
diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
index ee8a4f72b..886ff4ef6 100644
--- a/man/man2/open_by_handle_at.2
+++ b/man/man2/open_by_handle_at.2
@@ -549,11 +549,11 @@ .SH EXAMPLES
 .P
 .in +4n
 .EX
-$ \fBstat \-\-printf=3D"%i\en" cecilia.txt\fP     # Display inode number
+$ \fBstat \-\-printf=3D"%i\[rs]n" cecilia.txt\fP     # Display inode number
 4072121
 $ \fBrm cecilia.txt\fP
 $ \fBecho \[aq]Can you please think about it?\[aq] > cecilia.txt\fP
-$ \fBstat \-\-printf=3D"%i\en" cecilia.txt\fP     # Check inode number
+$ \fBstat \-\-printf=3D"%i\[rs]n" cecilia.txt\fP     # Check inode number
 4072121
 $ \fBsudo ./t_open_by_handle_at < fh\fP
 open_by_handle_at: Stale NFS file handle
@@ -578,7 +578,7 @@ .SS Program source: t_name_to_handle_at.c
     struct file_handle  *fhp;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s pathname\en", argv[0]);
+        fprintf(stderr, "Usage: %s pathname\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -601,7 +601,7 @@ .SS Program source: t_name_to_handle_at.c
                           &mount_id, flags) !=3D \-1
         || errno !=3D EOVERFLOW)
     {
-        fprintf(stderr, "Unexpected result from name_to_handle_at()\en");
+        fprintf(stderr, "Unexpected result from name_to_handle_at()\[rs]n"=
);
         exit(EXIT_FAILURE);
     }
 \&
@@ -620,11 +620,11 @@ .SS Program source: t_name_to_handle_at.c
     /* Write mount ID, file handle size, and file handle to stdout,
        for later reuse by t_open_by_handle_at.c. */
 \&
-    printf("%d\en", mount_id);
+    printf("%d\[rs]n", mount_id);
     printf("%u %d   ", fhp\->handle_bytes, fhp\->handle_type);
     for (size_t j =3D 0; j < fhp\->handle_bytes; j++)
         printf(" %02x", fhp\->f_handle[j]);
-    printf("\en");
+    printf("\[rs]n");
 \&
     exit(EXIT_SUCCESS);
 }
@@ -674,7 +674,7 @@ .SS Program source: t_open_by_handle_at.c
         nread =3D sscanf(linep, "%d %*d %*s %*s %s",
                        &mi_mount_id, mount_path);
         if (nread !=3D 2) {
-            fprintf(stderr, "Bad sscanf()\en");
+            fprintf(stderr, "Bad sscanf()\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
@@ -686,7 +686,7 @@ .SS Program source: t_open_by_handle_at.c
     fclose(fp);
 \&
     if (!found) {
-        fprintf(stderr, "Could not find mount point\en");
+        fprintf(stderr, "Could not find mount point\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -705,7 +705,7 @@ .SS Program source: t_open_by_handle_at.c
     struct file_handle  *fhp;
 \&
     if ((argc > 1 && strcmp(argv[1], "\-\-help") =3D=3D 0) || argc > 2) {
-        fprintf(stderr, "Usage: %s [mount\-path]\en", argv[0]);
+        fprintf(stderr, "Usage: %s [mount\-path]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -718,7 +718,7 @@ .SS Program source: t_open_by_handle_at.c
     if (fgets(line1, sizeof(line1), stdin) =3D=3D NULL ||
         fgets(line2, sizeof(line2), stdin) =3D=3D NULL)
     {
-        fprintf(stderr, "Missing mount_id / file handle\en");
+        fprintf(stderr, "Missing mount_id / file handle\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -764,7 +764,7 @@ .SS Program source: t_open_by_handle_at.c
     if (nread =3D=3D \-1)
         err(EXIT_FAILURE, "read");
 \&
-    printf("Read %zd bytes\en", nread);
+    printf("Read %zd bytes\[rs]n", nread);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
index 37272edc3..2f345ff5b 100644
--- a/man/man2/perf_event_open.2
+++ b/man/man2/perf_event_open.2
@@ -4007,19 +4007,19 @@ .SH EXAMPLES
 \&
     fd =3D perf_event_open(&pe, 0, \-1, \-1, 0);
     if (fd =3D=3D \-1) {
-       fprintf(stderr, "Error opening leader %llx\en", pe.config);
+       fprintf(stderr, "Error opening leader %llx\[rs]n", pe.config);
        exit(EXIT_FAILURE);
     }
 \&
     ioctl(fd, PERF_EVENT_IOC_RESET, 0);
     ioctl(fd, PERF_EVENT_IOC_ENABLE, 0);
 \&
-    printf("Measuring instruction count for this printf\en");
+    printf("Measuring instruction count for this printf\[rs]n");
 \&
     ioctl(fd, PERF_EVENT_IOC_DISABLE, 0);
     read(fd, &count, sizeof(count));
 \&
-    printf("Used %lld instructions\en", count);
+    printf("Used %lld instructions\[rs]n", count);
 \&
     close(fd);
 }
diff --git a/man/man2/pidfd_open.2 b/man/man2/pidfd_open.2
index 4f2b4c6d8..c027afe67 100644
--- a/man/man2/pidfd_open.2
+++ b/man/man2/pidfd_open.2
@@ -230,7 +230,7 @@ .SS Program source
     struct pollfd  pollfd;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <pid>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <pid>\[rs]n", argv[0]);
         exit(EXIT_SUCCESS);
     }
 \&
@@ -249,7 +249,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Events (%#x): POLLIN is %sset\en", pollfd.revents,
+    printf("Events (%#x): POLLIN is %sset\[rs]n", pollfd.revents,
            (pollfd.revents & POLLIN) ? "" : "not ");
 \&
     close(pidfd);
diff --git a/man/man2/pidfd_send_signal.2 b/man/man2/pidfd_send_signal.2
index 205808425..c7aecbf96 100644
--- a/man/man2/pidfd_send_signal.2
+++ b/man/man2/pidfd_send_signal.2
@@ -191,7 +191,7 @@ .SH EXAMPLES
     siginfo_t  info;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <pid> <signal>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <pid> <signal>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/pipe.2 b/man/man2/pipe.2
index b354775ce..04230924d 100644
--- a/man/man2/pipe.2
+++ b/man/man2/pipe.2
@@ -258,7 +258,7 @@ .SS Program source
     pid_t  cpid;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <string>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <string>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -279,7 +279,7 @@ .SS Program source
         while (read(pipefd[0], &buf, 1) > 0)
             write(STDOUT_FILENO, &buf, 1);
 \&
-        write(STDOUT_FILENO, "\en", 1);
+        write(STDOUT_FILENO, "\[rs]n", 1);
         close(pipefd[0]);
         _exit(EXIT_SUCCESS);
 \&
diff --git a/man/man2/poll.2 b/man/man2/poll.2
index 4472baf3e..94e0f2478 100644
--- a/man/man2/poll.2
+++ b/man/man2/poll.2
@@ -566,7 +566,7 @@ .SS Program source
 #include <sys/types.h>
 #include <unistd.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 int
@@ -579,7 +579,7 @@ .SS Program source
     struct pollfd  *pfds;
 \&
     if (argc < 2) {
-       fprintf(stderr, "Usage: %s file...\en", argv[0]);
+       fprintf(stderr, "Usage: %s file...\[rs]n", argv[0]);
        exit(EXIT_FAILURE);
     }
 \&
@@ -595,7 +595,7 @@ .SS Program source
         if (pfds[j].fd =3D=3D \-1)
             errExit("open");
 \&
-        printf("Opened \e"%s\e" on fd %d\en", argv[j + 1], pfds[j].fd);
+        printf("Opened \[rs]"%s\[rs]" on fd %d\[rs]n", argv[j + 1], pfds[j=
].fd);
 \&
         pfds[j].events =3D POLLIN;
     }
@@ -604,18 +604,18 @@ .SS Program source
        open. */
 \&
     while (num_open_fds > 0) {
-        printf("About to poll()\en");
+        printf("About to poll()\[rs]n");
         ready =3D poll(pfds, nfds, \-1);
         if (ready =3D=3D \-1)
             errExit("poll");
 \&
-        printf("Ready: %d\en", ready);
+        printf("Ready: %d\[rs]n", ready);
 \&
         /* Deal with array returned by poll(). */
 \&
         for (nfds_t j =3D 0; j < nfds; j++) {
             if (pfds[j].revents !=3D 0) {
-                printf("  fd=3D%d; events: %s%s%s\en", pfds[j].fd,
+                printf("  fd=3D%d; events: %s%s%s\[rs]n", pfds[j].fd,
                        (pfds[j].revents & POLLIN)  ? "POLLIN "  : "",
                        (pfds[j].revents & POLLHUP) ? "POLLHUP " : "",
                        (pfds[j].revents & POLLERR) ? "POLLERR " : "");
@@ -624,10 +624,10 @@ .SS Program source
                     s =3D read(pfds[j].fd, buf, sizeof(buf));
                     if (s =3D=3D \-1)
                         errExit("read");
-                    printf("    read %zd bytes: %.*s\en",
+                    printf("    read %zd bytes: %.*s\[rs]n",
                            s, (int) s, buf);
                 } else {                /* POLLERR | POLLHUP */
-                    printf("    closing fd %d\en", pfds[j].fd);
+                    printf("    closing fd %d\[rs]n", pfds[j].fd);
                     if (close(pfds[j].fd) =3D=3D \-1)
                         errExit("close");
                     num_open_fds\-\-;
@@ -636,7 +636,7 @@ .SS Program source
         }
     }
 \&
-    printf("All file descriptors closed; bye\en");
+    printf("All file descriptors closed; bye\[rs]n");
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man2/readdir.2 b/man/man2/readdir.2
index 933bb30d4..1fb02f7d5 100644
--- a/man/man2/readdir.2
+++ b/man/man2/readdir.2
@@ -74,7 +74,7 @@ .SH DESCRIPTION
 .I d_reclen
 is the size of
 .IR d_name ,
-not counting the terminating null byte (\[aq]\e0\[aq]).
+not counting the terminating null byte (\[aq]\[rs]0\[aq]).
 .I d_name
 is a null-terminated filename.
 .SH RETURN VALUE
diff --git a/man/man2/readlink.2 b/man/man2/readlink.2
index 9c616f6ed..2a7cb76fe 100644
--- a/man/man2/readlink.2
+++ b/man/man2/readlink.2
@@ -271,7 +271,7 @@ .SH EXAMPLES
     struct stat  sb;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <pathname>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <pathname>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -305,8 +305,8 @@ .SH EXAMPLES
     }
 \&
     /* Print only \[aq]nbytes\[aq] of \[aq]buf\[aq], as it doesn't contain=
 a terminating
-       null byte (\[aq]\e0\[aq]). */
-    printf("\[aq]%s\[aq] points to \[aq]%.*s\[aq]\en", argv[1], (int) nbyt=
es, buf);
+       null byte (\[aq]\[rs]0\[aq]). */
+    printf("\[aq]%s\[aq] points to \[aq]%.*s\[aq]\[rs]n", argv[1], (int) n=
bytes, buf);
 \&
     /* If the return value was equal to the buffer size, then
        the link target was larger than expected (perhaps because the
@@ -315,7 +315,7 @@ .SH EXAMPLES
        been truncated. */
 \&
     if (nbytes =3D=3D bufsiz)
-        printf("(Returned buffer may have been truncated)\en");
+        printf("(Returned buffer may have been truncated)\[rs]n");
 \&
     free(buf);
     exit(EXIT_SUCCESS);
diff --git a/man/man2/readv.2 b/man/man2/readv.2
index d39f2b9b9..eecde06dc 100644
--- a/man/man2/readv.2
+++ b/man/man2/readv.2
@@ -409,7 +409,7 @@ .SH EXAMPLES
 .in +4n
 .EX
 char          *str0 =3D "hello ";
-char          *str1 =3D "world\en";
+char          *str1 =3D "world\[rs]n";
 ssize_t       nwritten;
 struct iovec  iov[2];
 \&
diff --git a/man/man2/recvmmsg.2 b/man/man2/recvmmsg.2
index bf3c9d4ca..891484f02 100644
--- a/man/man2/recvmmsg.2
+++ b/man/man2/recvmmsg.2
@@ -258,7 +258,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("%d messages received\en", retval);
+    printf("%d messages received\[rs]n", retval);
     for (size_t i =3D 0; i < retval; i++) {
         bufs[i][msgs[i].msg_len] =3D 0;
         printf("%zu %s", i+1, bufs[i]);
diff --git a/man/man2/request_key.2 b/man/man2/request_key.2
index 53c47e450..6ca8bbcea 100644
--- a/man/man2/request_key.2
+++ b/man/man2/request_key.2
@@ -452,7 +452,7 @@ .SH EXAMPLES
 .in +4n
 .EX
 $ sudo sh
-# \fBecho \[aq]create user mtk:* *   /bin/keyctl instantiate %k %c %S\[aq]=
 \e\fP
+# \fBecho \[aq]create user mtk:* *   /bin/keyctl instantiate %k %c %S\[aq]=
 \[rs]\fP
           \fB> /etc/request\-key.conf\fP
 # \fBexit\fP
 .EE
@@ -514,7 +514,7 @@ .SS Program source
     key_serial_t key;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage: %s type description callout\-data\en",
+        fprintf(stderr, "Usage: %s type description callout\-data\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -526,7 +526,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Key ID is %jx\en", (uintmax_t) key);
+    printf("Key ID is %jx\[rs]n", (uintmax_t) key);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/sched_setaffinity.2 b/man/man2/sched_setaffinity.2
index 7f87fabb1..75a24158f 100644
--- a/man/man2/sched_setaffinity.2
+++ b/man/man2/sched_setaffinity.2
@@ -360,7 +360,7 @@ .SS Program source
     unsigned int  nloops;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage: %s parent\-cpu child\-cpu num\-loops\en",
+        fprintf(stderr, "Usage: %s parent\-cpu child\-cpu num\-loops\[rs]n=
",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
diff --git a/man/man2/seccomp.2 b/man/man2/seccomp.2
index 25376c3bf..34e0bcd2b 100644
--- a/man/man2/seccomp.2
+++ b/man/man2/seccomp.2
@@ -1038,7 +1038,7 @@ .SH EXAMPLES
 $ \fBuname \-m\fP
 x86_64
 $ \fBsyscall_nr() {
-    cat /usr/src/linux/arch/x86/syscalls/syscall_64.tbl | \e
+    cat /usr/src/linux/arch/x86/syscalls/syscall_64.tbl | \[rs]
     awk \[aq]$2 !=3D "x32" && $3 =3D=3D "\[aq]$1\[aq]" { print $1 }\[aq]
 }\fP
 .EE
@@ -1184,10 +1184,10 @@ .SS Program source
 {
     if (argc < 5) {
         fprintf(stderr, "Usage: "
-                "%s <syscall_nr> <arch> <errno> <prog> [<args>]\en"
-                "Hint for <arch>: AUDIT_ARCH_I386: 0x%X\en"
-                "                 AUDIT_ARCH_X86_64: 0x%X\en"
-                "\en", argv[0], AUDIT_ARCH_I386, AUDIT_ARCH_X86_64);
+                "%s <syscall_nr> <arch> <errno> <prog> [<args>]\[rs]n"
+                "Hint for <arch>: AUDIT_ARCH_I386: 0x%X\[rs]n"
+                "                 AUDIT_ARCH_X86_64: 0x%X\[rs]n"
+                "\[rs]n", argv[0], AUDIT_ARCH_I386, AUDIT_ARCH_X86_64);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index f11dabf3a..7092f9491 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -1542,7 +1542,7 @@ .SS Program source
 static void
 sigchldHandler(int sig)
 {
-    char msg[] =3D "\etS: target has terminated; bye\en";
+    char msg[] =3D "\[rs]tS: target has terminated; bye\[rs]n";
 \&
     write(STDOUT_FILENO, msg, sizeof(msg) \- 1);
     _exit(EXIT_SUCCESS);
@@ -1563,13 +1563,13 @@ .SS Program source
 \&
 #define X32_SYSCALL_BIT         0x40000000
 \&
-#define X86_64_CHECK_ARCH_AND_LOAD_SYSCALL_NR \e
-        BPF_STMT(BPF_LD | BPF_W | BPF_ABS, \e
-                 (offsetof(struct seccomp_data, arch))), \e
-        BPF_JUMP(BPF_JMP | BPF_JEQ | BPF_K, AUDIT_ARCH_X86_64, 0, 2), \e
-        BPF_STMT(BPF_LD | BPF_W | BPF_ABS, \e
-                 (offsetof(struct seccomp_data, nr))), \e
-        BPF_JUMP(BPF_JMP | BPF_JGE | BPF_K, X32_SYSCALL_BIT, 0, 1), \e
+#define X86_64_CHECK_ARCH_AND_LOAD_SYSCALL_NR \[rs]
+        BPF_STMT(BPF_LD | BPF_W | BPF_ABS, \[rs]
+                 (offsetof(struct seccomp_data, arch))), \[rs]
+        BPF_JUMP(BPF_JMP | BPF_JEQ | BPF_K, AUDIT_ARCH_X86_64, 0, 2), \[rs]
+        BPF_STMT(BPF_LD | BPF_W | BPF_ABS, \[rs]
+                 (offsetof(struct seccomp_data, nr))), \[rs]
+        BPF_JUMP(BPF_JMP | BPF_JGE | BPF_K, X32_SYSCALL_BIT, 0, 1), \[rs]
         BPF_STMT(BPF_RET | BPF_K, SECCOMP_RET_KILL_PROCESS)
 \&
 /* installNotifyFilter() installs a seccomp filter that generates
@@ -1651,7 +1651,7 @@ .SS Program source
 \&
     /* Child falls through to here */
 \&
-    printf("T: PID =3D %ld\en", (long) getpid());
+    printf("T: PID =3D %ld\[rs]n", (long) getpid());
 \&
     /* Install seccomp filter(s) */
 \&
@@ -1676,16 +1676,16 @@ .SS Program source
     /* Perform a mkdir() call for each of the command\-line arguments */
 \&
     for (char **ap =3D argv; *ap !=3D NULL; ap++) {
-        printf("\enT: about to mkdir(\e"%s\e")\en", *ap);
+        printf("\[rs]nT: about to mkdir(\[rs]"%s\[rs]")\[rs]n", *ap);
 \&
         s =3D mkdir(*ap, 0700);
         if (s =3D=3D \-1)
             perror("T: ERROR: mkdir(2)");
         else
-            printf("T: SUCCESS: mkdir(2) returned %d\en", s);
+            printf("T: SUCCESS: mkdir(2) returned %d\[rs]n", s);
     }
 \&
-    printf("\enT: terminating\en");
+    printf("\[rs]nT: terminating\[rs]n");
     exit(EXIT_SUCCESS);
 }
 \&
@@ -1759,7 +1759,7 @@ .SS Program source
        changed by subsequent operations. */
 \&
     if (!cookieIsValid(notifyFd, req\->id)) {
-        perror("\etS: notification ID check failed!!!");
+        perror("\[rs]tS: notification ID check failed!!!");
         return false;
     }
 \&
@@ -1842,10 +1842,10 @@ .SS Program source
         if (ioctl(notifyFd, SECCOMP_IOCTL_NOTIF_RECV, req) =3D=3D \-1) {
             if (errno =3D=3D EINTR)
                 continue;
-            err(EXIT_FAILURE, "\etS: ioctl\-SECCOMP_IOCTL_NOTIF_RECV");
+            err(EXIT_FAILURE, "\[rs]tS: ioctl\-SECCOMP_IOCTL_NOTIF_RECV");
         }
 \&
-        printf("\etS: got notification (ID %#llx) for PID %d\en",
+        printf("\[rs]tS: got notification (ID %#llx) for PID %d\[rs]n",
                req\->id, req\->pid);
 \&
         /* The only system call that can generate a notification event
@@ -1855,8 +1855,8 @@ .SS Program source
            generate notifications for other system calls. */
 \&
         if (req\->data.nr !=3D SYS_mkdir) {
-            printf("\etS: notification contained unexpected "
-                   "system call number; bye!!!\en");
+            printf("\[rs]tS: notification contained unexpected "
+                   "system call number; bye!!!\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
@@ -1879,17 +1879,17 @@ .SS Program source
 \&
         if (!pathOK) {
             resp\->error =3D \-EINVAL;
-            printf("\etS: spoofing error for invalid pathname (%s)\en",
+            printf("\[rs]tS: spoofing error for invalid pathname (%s)\[rs]=
n",
                    strerror(\-resp\->error));
         } else if (strncmp(path, "/tmp/", strlen("/tmp/")) =3D=3D 0) {
-            printf("\etS: executing: mkdir(\e"%s\e", %#llo)\en",
+            printf("\[rs]tS: executing: mkdir(\[rs]"%s\[rs]", %#llo)\[rs]n=
",
                    path, req\->data.args[1]);
 \&
             if (mkdir(path, req\->data.args[1]) =3D=3D 0) {
                 resp\->error =3D 0;            /* "Success" */
                 resp\->val =3D strlen(path);   /* Used as return value of
                                                mkdir() in target */
-                printf("\etS: success! spoofed return =3D %lld\en",
+                printf("\[rs]tS: success! spoofed return =3D %lld\[rs]n",
                        resp\->val);
             } else {
 \&
@@ -1897,30 +1897,30 @@ .SS Program source
                    back to the target */
 \&
                 resp\->error =3D \-errno;
-                printf("\etS: failure! (errno =3D %d; %s)\en", errno,
+                printf("\[rs]tS: failure! (errno =3D %d; %s)\[rs]n", errno,
                        strerror(errno));
             }
         } else if (strncmp(path, "./", strlen("./")) =3D=3D 0) {
             resp\->error =3D resp\->val =3D 0;
             resp\->flags =3D SECCOMP_USER_NOTIF_FLAG_CONTINUE;
-            printf("\etS: target can execute system call\en");
+            printf("\[rs]tS: target can execute system call\[rs]n");
         } else {
             resp\->error =3D \-EOPNOTSUPP;
-            printf("\etS: spoofing error response (%s)\en",
+            printf("\[rs]tS: spoofing error response (%s)\[rs]n",
                    strerror(\-resp\->error));
         }
 \&
         /* Send a response to the notification */
 \&
-        printf("\etS: sending response "
-               "(flags =3D %#x; val =3D %lld; error =3D %d)\en",
+        printf("\[rs]tS: sending response "
+               "(flags =3D %#x; val =3D %lld; error =3D %d)\[rs]n",
                resp\->flags, resp\->val, resp\->error);
 \&
         if (ioctl(notifyFd, SECCOMP_IOCTL_NOTIF_SEND, resp) =3D=3D \-1) {
             if (errno =3D=3D ENOENT)
-                printf("\etS: response failed with ENOENT; "
+                printf("\[rs]tS: response failed with ENOENT; "
                        "perhaps target process\[aq]s syscall was "
-                       "interrupted by a signal?\en");
+                       "interrupted by a signal?\[rs]n");
             else
                 perror("ioctl\-SECCOMP_IOCTL_NOTIF_SEND");
         }
@@ -1935,7 +1935,7 @@ .SS Program source
 \&
     free(req);
     free(resp);
-    printf("\etS: terminating **********\en");
+    printf("\[rs]tS: terminating **********\[rs]n");
     exit(EXIT_FAILURE);
 }
 \&
@@ -1968,7 +1968,7 @@ .SS Program source
     setbuf(stdout, NULL);
 \&
     if (argc < 2) {
-        fprintf(stderr, "At least one pathname argument is required\en");
+        fprintf(stderr, "At least one pathname argument is required\[rs]n"=
);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/select.2 b/man/man2/select.2
index bbf8ea9e0..e9eead575 100644
--- a/man/man2/select.2
+++ b/man/man2/select.2
@@ -738,10 +738,10 @@ .SH EXAMPLES
     if (retval =3D=3D \-1)
         perror("select()");
     else if (retval)
-        printf("Data is available now.\en");
+        printf("Data is available now.\[rs]n");
         /* FD_ISSET(0, &rfds) will be true. */
     else
-        printf("No data within five seconds.\en");
+        printf("No data within five seconds.\[rs]n");
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/select_tut.2 b/man/man2/select_tut.2
index 4ef523ead..c027cda9f 100644
--- a/man/man2/select_tut.2
+++ b/man/man2/select_tut.2
@@ -383,7 +383,7 @@ .SH EXAMPLES
         return \-1;
     }
 \&
-    printf("accepting connections on port %d\en", listen_port);
+    printf("accepting connections on port %d\[rs]n", listen_port);
     listen(lfd, 10);
     return lfd;
 }
@@ -405,7 +405,7 @@ .SH EXAMPLES
     addr.sin_family =3D AF_INET;
 \&
     if (!inet_aton(address, (struct in_addr *) &addr.sin_addr.s_addr)) {
-        fprintf(stderr, "inet_aton(): bad IP address format\en");
+        fprintf(stderr, "inet_aton(): bad IP address format\[rs]n");
         close(cfd);
         return \-1;
     }
@@ -419,20 +419,20 @@ .SH EXAMPLES
     return cfd;
 }
 \&
-#define SHUT_FD1 do {                                \e
-                     if (fd1 >=3D 0) {                 \e
-                         shutdown(fd1, SHUT_RDWR);   \e
-                         close(fd1);                 \e
-                         fd1 =3D \-1;                   \e
-                     }                               \e
+#define SHUT_FD1 do {                                \[rs]
+                     if (fd1 >=3D 0) {                 \[rs]
+                         shutdown(fd1, SHUT_RDWR);   \[rs]
+                         close(fd1);                 \[rs]
+                         fd1 =3D \-1;                   \[rs]
+                     }                               \[rs]
                  } while (0)
 \&
-#define SHUT_FD2 do {                                \e
-                     if (fd2 >=3D 0) {                 \e
-                         shutdown(fd2, SHUT_RDWR);   \e
-                         close(fd2);                 \e
-                         fd2 =3D \-1;                   \e
-                     }                               \e
+#define SHUT_FD2 do {                                \[rs]
+                     if (fd2 >=3D 0) {                 \[rs]
+                         shutdown(fd2, SHUT_RDWR);   \[rs]
+                         close(fd2);                 \[rs]
+                         fd2 =3D \-1;                   \[rs]
+                     }                               \[rs]
                  } while (0)
 \&
 #define BUF_SIZE 1024
@@ -450,8 +450,8 @@ .SH EXAMPLES
     ssize_t  nbytes;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage\en\etfwd <listen\-port> "
-                "<forward\-to\-port> <forward\-to\-ip\-address>\en");
+        fprintf(stderr, "Usage\[rs]n\[rs]tfwd <listen\-port> "
+                "<forward\-to\-port> <forward\-to\-ip\-address>\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -523,7 +523,7 @@ .SH EXAMPLES
                 if (fd2 =3D=3D \-1)
                     SHUT_FD1;
                 else
-                    printf("connect from %s\en",
+                    printf("connect from %s\[rs]n",
                            inet_ntoa(client_addr.sin_addr));
 \&
                 /* Skip any events on the old, closed file
diff --git a/man/man2/semget.2 b/man/man2/semget.2
index 167957b3a..f49ea88e4 100644
--- a/man/man2/semget.2
+++ b/man/man2/semget.2
@@ -380,10 +380,10 @@ .SS Program source
 static void
 usage(const char *pname)
 {
-    fprintf(stderr, "Usage: %s [\-cx] pathname proj\-id num\-sems\en",
+    fprintf(stderr, "Usage: %s [\-cx] pathname proj\-id num\-sems\[rs]n",
             pname);
-    fprintf(stderr, "    \-c           Use IPC_CREAT flag\en");
-    fprintf(stderr, "    \-x           Use IPC_EXCL flag\en");
+    fprintf(stderr, "    \-c           Use IPC_CREAT flag\[rs]n");
+    fprintf(stderr, "    \-x           Use IPC_EXCL flag\[rs]n");
     exit(EXIT_FAILURE);
 }
 \&
@@ -419,7 +419,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("ID =3D %d\en", semid);
+    printf("ID =3D %d\[rs]n", semid);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/sendmmsg.2 b/man/man2/sendmmsg.2
index bc541aae5..74f5e9724 100644
--- a/man/man2/sendmmsg.2
+++ b/man/man2/sendmmsg.2
@@ -219,7 +219,7 @@ .SH EXAMPLES
     if (retval =3D=3D \-1)
         perror("sendmmsg()");
     else
-        printf("%d messages sent\en", retval);
+        printf("%d messages sent\[rs]n", retval);
 \&
     exit(0);
 }
diff --git a/man/man2/setns.2 b/man/man2/setns.2
index 860ee7e10..f6c221d4f 100644
--- a/man/man2/setns.2
+++ b/man/man2/setns.2
@@ -389,7 +389,7 @@ .SS Program source
     int fd;
 \&
     if (argc < 3) {
-        fprintf(stderr, "%s /proc/PID/ns/FILE cmd args...\en", argv[0]);
+        fprintf(stderr, "%s /proc/PID/ns/FILE cmd args...\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/shmop.2 b/man/man2/shmop.2
index 9d0acf7f5..223955b41 100644
--- a/man/man2/shmop.2
+++ b/man/man2/shmop.2
@@ -326,7 +326,7 @@ .SS Program source: svshm_string.h
 #include <stdlib.h>
 #include <sys/sem.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 union semun {                   /* Used in calls to semctl() */
@@ -400,7 +400,7 @@ .SS Program source: svshm_string_read.c
     if (semctl(semid, 0, SETVAL, arg) =3D=3D \-1)
         errExit("semctl");
 \&
-    printf("shmid =3D %d; semid =3D %d\en", shmid, semid);
+    printf("shmid =3D %d; semid =3D %d\[rs]n", shmid, semid);
 \&
     /* Wait for semaphore value to become 0. */
 \&
@@ -413,7 +413,7 @@ .SS Program source: svshm_string_read.c
 \&
     /* Print the string from shared memory. */
 \&
-    printf("%s\en", addr);
+    printf("%s\[rs]n", addr);
 \&
     /* Remove shared memory and semaphore set. */
 \&
@@ -460,13 +460,13 @@ .SS Program source: svshm_string_write.c
     struct sembuf  sop;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage: %s shmid semid string\en", argv[0]);
+        fprintf(stderr, "Usage: %s shmid semid string\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
-    len =3D strlen(argv[3]) + 1;  /* +1 to include trailing \[aq]\e0\[aq] =
*/
+    len =3D strlen(argv[3]) + 1;  /* +1 to include trailing \[aq]\[rs]0\[a=
q] */
     if (len > MEM_SIZE) {
-        fprintf(stderr, "String is too big!\en");
+        fprintf(stderr, "String is too big!\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/signalfd.2 b/man/man2/signalfd.2
index cf0e6df28..4e5fdf575 100644
--- a/man/man2/signalfd.2
+++ b/man/man2/signalfd.2
@@ -455,7 +455,7 @@ .SH EXAMPLES
 Got SIGINT
 .B \[ha]C
 Got SIGINT
-\fB\[ha]\e\fP                    # Control\-\e generates SIGQUIT
+\fB\[ha]\[rs]\fP                    # Control\-\[rs] generates SIGQUIT
 Got SIGQUIT
 $
 .EE
@@ -500,12 +500,12 @@ .SS Program source
             err(EXIT_FAILURE, "read");
 \&
         if (fdsi.ssi_signo =3D=3D SIGINT) {
-            printf("Got SIGINT\en");
+            printf("Got SIGINT\[rs]n");
         } else if (fdsi.ssi_signo =3D=3D SIGQUIT) {
-            printf("Got SIGQUIT\en");
+            printf("Got SIGQUIT\[rs]n");
             exit(EXIT_SUCCESS);
         } else {
-            printf("Read unexpected signal\en");
+            printf("Read unexpected signal\[rs]n");
         }
     }
 }
diff --git a/man/man2/spu_run.2 b/man/man2/spu_run.2
index d96592726..0cab2262e 100644
--- a/man/man2/spu_run.2
+++ b/man/man2/spu_run.2
@@ -245,7 +245,7 @@ .SH EXAMPLES
      *   0x00000002 (spu was stopped due to stop\-and\-signal)
      * | 0x12340000 (the stop\-and\-signal code)
      */
-    printf("SPU Status: %#08x\en", spu_status);
+    printf("SPU Status: %#08x\[rs]n", spu_status);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man2/stat.2 b/man/man2/stat.2
index e15269a70..0c8325b11 100644
--- a/man/man2/stat.2
+++ b/man/man2/stat.2
@@ -474,7 +474,7 @@ .SH EXAMPLES
     struct stat sb;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <pathname>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <pathname>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -483,37 +483,37 @@ .SH EXAMPLES
         exit(EXIT_FAILURE);
     }
 \&
-    printf("ID of containing device:  [%x,%x]\en",
+    printf("ID of containing device:  [%x,%x]\[rs]n",
            major(sb.st_dev),
            minor(sb.st_dev));
 \&
     printf("File type:                ");
 \&
     switch (sb.st_mode & S_IFMT) {
-    case S_IFBLK:  printf("block device\en");            break;
-    case S_IFCHR:  printf("character device\en");        break;
-    case S_IFDIR:  printf("directory\en");               break;
-    case S_IFIFO:  printf("FIFO/pipe\en");               break;
-    case S_IFLNK:  printf("symlink\en");                 break;
-    case S_IFREG:  printf("regular file\en");            break;
-    case S_IFSOCK: printf("socket\en");                  break;
-    default:       printf("unknown?\en");                break;
+    case S_IFBLK:  printf("block device\[rs]n");            break;
+    case S_IFCHR:  printf("character device\[rs]n");        break;
+    case S_IFDIR:  printf("directory\[rs]n");               break;
+    case S_IFIFO:  printf("FIFO/pipe\[rs]n");               break;
+    case S_IFLNK:  printf("symlink\[rs]n");                 break;
+    case S_IFREG:  printf("regular file\[rs]n");            break;
+    case S_IFSOCK: printf("socket\[rs]n");                  break;
+    default:       printf("unknown?\[rs]n");                break;
     }
 \&
-    printf("I\-node number:            %ju\en", (uintmax_t) sb.st_ino);
+    printf("I\-node number:            %ju\[rs]n", (uintmax_t) sb.st_ino);
 \&
-    printf("Mode:                     %jo (octal)\en",
+    printf("Mode:                     %jo (octal)\[rs]n",
            (uintmax_t) sb.st_mode);
 \&
-    printf("Link count:               %ju\en", (uintmax_t) sb.st_nlink);
-    printf("Ownership:                UID=3D%ju   GID=3D%ju\en",
+    printf("Link count:               %ju\[rs]n", (uintmax_t) sb.st_nlink);
+    printf("Ownership:                UID=3D%ju   GID=3D%ju\[rs]n",
            (uintmax_t) sb.st_uid, (uintmax_t) sb.st_gid);
 \&
-    printf("Preferred I/O block size: %jd bytes\en",
+    printf("Preferred I/O block size: %jd bytes\[rs]n",
            (intmax_t) sb.st_blksize);
-    printf("File size:                %jd bytes\en",
+    printf("File size:                %jd bytes\[rs]n",
            (intmax_t) sb.st_size);
-    printf("Blocks allocated:         %jd\en",
+    printf("Blocks allocated:         %jd\[rs]n",
            (intmax_t) sb.st_blocks);
 \&
     printf("Last status change:       %s", ctime(&sb.st_ctime));
diff --git a/man/man2/sysctl.2 b/man/man2/sysctl.2
index 3d91dc632..090c99fc0 100644
--- a/man/man2/sysctl.2
+++ b/man/man2/sysctl.2
@@ -151,7 +151,7 @@ .SH EXAMPLES
         perror("_sysctl");
         exit(EXIT_FAILURE);
     }
-    printf("This machine is running %*s\en", (int) osnamelth, osname);
+    printf("This machine is running %*s\[rs]n", (int) osnamelth, osname);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man2/tee.2 b/man/man2/tee.2
index 18f6b39a0..4873ce731 100644
--- a/man/man2/tee.2
+++ b/man/man2/tee.2
@@ -150,7 +150,7 @@ .SS Program source
     ssize_t  len, slen;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <file>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <file>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man2/timer_create.2 b/man/man2/timer_create.2
index 1109858b8..c42880255 100644
--- a/man/man2/timer_create.2
+++ b/man/man2/timer_create.2
@@ -364,7 +364,7 @@ .SS Program source
 #define CLOCKID CLOCK_REALTIME
 #define SIG SIGRTMIN
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 static void
@@ -376,13 +376,13 @@ .SS Program source
     tidp =3D si\->si_value.sival_ptr;
 \&
     printf("    sival_ptr =3D %p; ", si\->si_value.sival_ptr);
-    printf("    *sival_ptr =3D %#jx\en", (uintmax_t) *tidp);
+    printf("    *sival_ptr =3D %#jx\[rs]n", (uintmax_t) *tidp);
 \&
     or =3D timer_getoverrun(*tidp);
     if (or =3D=3D \-1)
         errExit("timer_getoverrun");
     else
-        printf("    overrun count =3D %d\en", or);
+        printf("    overrun count =3D %d\[rs]n", or);
 }
 \&
 static void
@@ -394,7 +394,7 @@ .SS Program source
        Nevertheless, we use printf() here as a simple way of
        showing that the handler was called. */
 \&
-    printf("Caught signal %d\en", sig);
+    printf("Caught signal %d\[rs]n", sig);
     print_siginfo(si);
     signal(sig, SIG_IGN);
 }
@@ -410,14 +410,14 @@ .SS Program source
     struct itimerspec  its;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <sleep\-secs> <freq\-nanosecs>\en",
+        fprintf(stderr, "Usage: %s <sleep\-secs> <freq\-nanosecs>\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     /* Establish handler for timer signal. */
 \&
-    printf("Establishing handler for signal %d\en", SIG);
+    printf("Establishing handler for signal %d\[rs]n", SIG);
     sa.sa_flags =3D SA_SIGINFO;
     sa.sa_sigaction =3D handler;
     sigemptyset(&sa.sa_mask);
@@ -426,7 +426,7 @@ .SS Program source
 \&
     /* Block timer signal temporarily. */
 \&
-    printf("Blocking signal %d\en", SIG);
+    printf("Blocking signal %d\[rs]n", SIG);
     sigemptyset(&mask);
     sigaddset(&mask, SIG);
     if (sigprocmask(SIG_SETMASK, &mask, NULL) =3D=3D \-1)
@@ -440,7 +440,7 @@ .SS Program source
     if (timer_create(CLOCKID, &sev, &timerid) =3D=3D \-1)
         errExit("timer_create");
 \&
-    printf("timer ID is %#jx\en", (uintmax_t) timerid);
+    printf("timer ID is %#jx\[rs]n", (uintmax_t) timerid);
 \&
     /* Start the timer. */
 \&
@@ -456,13 +456,13 @@ .SS Program source
     /* Sleep for a while; meanwhile, the timer may expire
        multiple times. */
 \&
-    printf("Sleeping for %d seconds\en", atoi(argv[1]));
+    printf("Sleeping for %d seconds\[rs]n", atoi(argv[1]));
     sleep(atoi(argv[1]));
 \&
     /* Unlock the timer signal, so that timer notification
        can be delivered. */
 \&
-    printf("Unblocking signal %d\en", SIG);
+    printf("Unblocking signal %d\[rs]n", SIG);
     if (sigprocmask(SIG_UNBLOCK, &mask, NULL) =3D=3D \-1)
         errExit("sigprocmask");
 \&
diff --git a/man/man2/timerfd_create.2 b/man/man2/timerfd_create.2
index 8d3fd0da4..428919b99 100644
--- a/man/man2/timerfd_create.2
+++ b/man/man2/timerfd_create.2
@@ -644,7 +644,7 @@ .SS Program source
     struct itimerspec  new_value;
 \&
     if (argc !=3D 2 && argc !=3D 4) {
-        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\en",
+        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -674,7 +674,7 @@ .SS Program source
         err(EXIT_FAILURE, "timerfd_settime");
 \&
     print_elapsed_time();
-    printf("timer started\en");
+    printf("timer started\[rs]n");
 \&
     for (tot_exp =3D 0; tot_exp < max_exp;) {
         s =3D read(fd, &exp, sizeof(uint64_t));
@@ -683,7 +683,7 @@ .SS Program source
 \&
         tot_exp +=3D exp;
         print_elapsed_time();
-        printf("read: %" PRIu64 "; total=3D%" PRIu64 "\en", exp, tot_exp);
+        printf("read: %" PRIu64 "; total=3D%" PRIu64 "\[rs]n", exp, tot_ex=
p);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man2/truncate.2 b/man/man2/truncate.2
index ac72f8820..cc4746913 100644
--- a/man/man2/truncate.2
+++ b/man/man2/truncate.2
@@ -61,7 +61,7 @@ .SH DESCRIPTION
 .P
 If the file previously was larger than this size, the extra data is lost.
 If the file previously was shorter, it is extended, and
-the extended part reads as null bytes (\[aq]\e0\[aq]).
+the extended part reads as null bytes (\[aq]\[rs]0\[aq]).
 .P
 The file offset is not changed.
 .P
diff --git a/man/man2/uname.2 b/man/man2/uname.2
index 99178fc22..572bfd3a6 100644
--- a/man/man2/uname.2
+++ b/man/man2/uname.2
@@ -45,7 +45,7 @@ .SH DESCRIPTION
 The length of the arrays in a
 .I struct utsname
 is unspecified (see NOTES);
-the fields are terminated by a null byte (\[aq]\e0\[aq]).
+the fields are terminated by a null byte (\[aq]\[rs]0\[aq]).
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
diff --git a/man/man2/unshare.2 b/man/man2/unshare.2
index 98d92cf72..1ae3e548d 100644
--- a/man/man2/unshare.2
+++ b/man/man2/unshare.2
@@ -510,16 +510,16 @@ .SS Program source
 static void
 usage(char *pname)
 {
-    fprintf(stderr, "Usage: %s [options] program [arg...]\en", pname);
-    fprintf(stderr, "Options can be:\en");
-    fprintf(stderr, "    \-C   unshare cgroup namespace\en");
-    fprintf(stderr, "    \-i   unshare IPC namespace\en");
-    fprintf(stderr, "    \-m   unshare mount namespace\en");
-    fprintf(stderr, "    \-n   unshare network namespace\en");
-    fprintf(stderr, "    \-p   unshare PID namespace\en");
-    fprintf(stderr, "    \-t   unshare time namespace\en");
-    fprintf(stderr, "    \-u   unshare UTS namespace\en");
-    fprintf(stderr, "    \-U   unshare user namespace\en");
+    fprintf(stderr, "Usage: %s [options] program [arg...]\[rs]n", pname);
+    fprintf(stderr, "Options can be:\[rs]n");
+    fprintf(stderr, "    \-C   unshare cgroup namespace\[rs]n");
+    fprintf(stderr, "    \-i   unshare IPC namespace\[rs]n");
+    fprintf(stderr, "    \-m   unshare mount namespace\[rs]n");
+    fprintf(stderr, "    \-n   unshare network namespace\[rs]n");
+    fprintf(stderr, "    \-p   unshare PID namespace\[rs]n");
+    fprintf(stderr, "    \-t   unshare time namespace\[rs]n");
+    fprintf(stderr, "    \-u   unshare UTS namespace\[rs]n");
+    fprintf(stderr, "    \-U   unshare user namespace\[rs]n");
     exit(EXIT_FAILURE);
 }
 \&
diff --git a/man/man2/userfaultfd.2 b/man/man2/userfaultfd.2
index fa6038774..49662080e 100644
--- a/man/man2/userfaultfd.2
+++ b/man/man2/userfaultfd.2
@@ -799,9 +799,9 @@ .SS Program source
         if (nready =3D=3D \-1)
             err(EXIT_FAILURE, "poll");
 \&
-        printf("\enfault_handler_thread():\en");
+        printf("\[rs]nfault_handler_thread():\[rs]n");
         printf("    poll() returns: nready =3D %d; "
-               "POLLIN =3D %d; POLLERR =3D %d\en", nready,
+               "POLLIN =3D %d; POLLERR =3D %d\[rs]n", nready,
                (pollfd.revents & POLLIN) !=3D 0,
                (pollfd.revents & POLLERR) !=3D 0);
 \&
@@ -809,7 +809,7 @@ .SS Program source
 \&
         nread =3D read(uffd, &msg, sizeof(msg));
         if (nread =3D=3D 0) {
-            printf("EOF on userfaultfd!\en");
+            printf("EOF on userfaultfd!\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
@@ -819,7 +819,7 @@ .SS Program source
         /* We expect only one kind of event; verify that assumption. */
 \&
         if (msg.event !=3D UFFD_EVENT_PAGEFAULT) {
-            fprintf(stderr, "Unexpected event on userfaultfd\en");
+            fprintf(stderr, "Unexpected event on userfaultfd\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
@@ -827,7 +827,7 @@ .SS Program source
 \&
         printf("    UFFD_EVENT_PAGEFAULT event: ");
         printf("flags =3D %"PRIx64"; ", msg.arg.pagefault.flags);
-        printf("address =3D %"PRIx64"\en", msg.arg.pagefault.address);
+        printf("address =3D %"PRIx64"\[rs]n", msg.arg.pagefault.address);
 \&
         /* Copy the page pointed to by \[aq]page\[aq] into the faulting
            region. Vary the contents that are copied in, so that it
@@ -849,7 +849,7 @@ .SS Program source
         if (ioctl(uffd, UFFDIO_COPY, &uffdio_copy) =3D=3D \-1)
             err(EXIT_FAILURE, "ioctl\-UFFDIO_COPY");
 \&
-        printf("        (uffdio_copy.copy returned %"PRId64")\en",
+        printf("        (uffdio_copy.copy returned %"PRId64")\[rs]n",
                uffdio_copy.copy);
     }
 }
@@ -867,7 +867,7 @@ .SS Program source
     struct uffdio_register  uffdio_register;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s num\-pages\en", argv[0]);
+        fprintf(stderr, "Usage: %s num\-pages\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -902,7 +902,7 @@ .SS Program source
     if (addr =3D=3D MAP_FAILED)
         err(EXIT_FAILURE, "mmap");
 \&
-    printf("Address returned by mmap() =3D %p\en", addr);
+    printf("Address returned by mmap() =3D %p\[rs]n", addr);
 \&
     /* Register the memory range of the mapping we just created for
        handling by the userfaultfd object. In mode, we request to track
@@ -931,7 +931,7 @@ .SS Program source
     while (l < len) {
         c =3D addr[l];
         printf("Read address %p in %s(): ", addr + l, __func__);
-        printf("%c\en", c);
+        printf("%c\[rs]n", c);
         l +=3D 1024;
         usleep(100000);         /* Slow things down a little */
     }
diff --git a/man/man2/ustat.2 b/man/man2/ustat.2
index 2b47f9f54..c7ccacfad 100644
--- a/man/man2/ustat.2
+++ b/man/man2/ustat.2
@@ -47,7 +47,7 @@ .SH DESCRIPTION
 and
 .IR f_fpack ,
 are not implemented and will
-always be filled with null bytes (\[aq]\e0\[aq]).
+always be filled with null bytes (\[aq]\[rs]0\[aq]).
 .SH RETURN VALUE
 On success, zero is returned and the
 .I ustat
diff --git a/man/man2/wait.2 b/man/man2/wait.2
index ff68f2ddb..dbbb8abf5 100644
--- a/man/man2/wait.2
+++ b/man/man2/wait.2
@@ -678,7 +678,7 @@ .SS Program source
     }
 \&
     if (cpid =3D=3D 0) {            /* Code executed by child */
-        printf("Child PID is %jd\en", (intmax_t) getpid());
+        printf("Child PID is %jd\[rs]n", (intmax_t) getpid());
         if (argc =3D=3D 1)
             pause();                    /* Wait for signals */
         _exit(atoi(argv[1]));
@@ -692,13 +692,13 @@ .SS Program source
             }
 \&
             if (WIFEXITED(wstatus)) {
-                printf("exited, status=3D%d\en", WEXITSTATUS(wstatus));
+                printf("exited, status=3D%d\[rs]n", WEXITSTATUS(wstatus));
             } else if (WIFSIGNALED(wstatus)) {
-                printf("killed by signal %d\en", WTERMSIG(wstatus));
+                printf("killed by signal %d\[rs]n", WTERMSIG(wstatus));
             } else if (WIFSTOPPED(wstatus)) {
-                printf("stopped by signal %d\en", WSTOPSIG(wstatus));
+                printf("stopped by signal %d\[rs]n", WSTOPSIG(wstatus));
             } else if (WIFCONTINUED(wstatus)) {
-                printf("continued\en");
+                printf("continued\[rs]n");
             }
         } while (!WIFEXITED(wstatus) && !WIFSIGNALED(wstatus));
         exit(EXIT_SUCCESS);
diff --git a/man/man2const/FAT_IOCTL_GET_VOLUME_ID.2const b/man/man2const/F=
AT_IOCTL_GET_VOLUME_ID.2const
index dfae1bab1..968fa75f3 100644
--- a/man/man2const/FAT_IOCTL_GET_VOLUME_ID.2const
+++ b/man/man2const/FAT_IOCTL_GET_VOLUME_ID.2const
@@ -41,7 +41,7 @@ .SH DESCRIPTION
 .P
 .in +4n
 .EX
-printf("Volume ID %04x\-%04x\en", id >> 16, id & 0xFFFF);
+printf("Volume ID %04x\-%04x\[rs]n", id >> 16, id & 0xFFFF);
 .EE
 .in
 .SH RETURN VALUE
@@ -90,7 +90,7 @@ .SS Program source (display_fat_volume_id.c)
     uint32_t  id;
 \&
     if (argc !=3D 2) {
-        printf("Usage: %s FILENAME\en", argv[0]);
+        printf("Usage: %s FILENAME\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -112,7 +112,7 @@ .SS Program source (display_fat_volume_id.c)
     /*
      * Format the output as two groups of 16 bits each.
      */
-    printf("Volume ID %04x\-%04x\en", id >> 16, id & 0xFFFF);
+    printf("Volume ID %04x\-%04x\[rs]n", id >> 16, id & 0xFFFF);
 \&
     close(fd);
 \&
diff --git a/man/man2const/FAT_IOCTL_SET_ATTRIBUTES.2const b/man/man2const/=
FAT_IOCTL_SET_ATTRIBUTES.2const
index 5fe63ccab..97a8b2a72 100644
--- a/man/man2const/FAT_IOCTL_SET_ATTRIBUTES.2const
+++ b/man/man2const/FAT_IOCTL_SET_ATTRIBUTES.2const
@@ -126,9 +126,9 @@ .SS Program source (toggle_fat_archive_flag.c)
     }
 \&
     if (attr & ATTR_ARCH)
-        printf("Archive flag is set\en");
+        printf("Archive flag is set\[rs]n");
     else
-        printf("Archive flag is not set\en");
+        printf("Archive flag is not set\[rs]n");
 \&
     return attr;
 }
@@ -141,7 +141,7 @@ .SS Program source (toggle_fat_archive_flag.c)
     uint32_t  attr;
 \&
     if (argc !=3D 2) {
-        printf("Usage: %s FILENAME\en", argv[0]);
+        printf("Usage: %s FILENAME\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -159,7 +159,7 @@ .SS Program source (toggle_fat_archive_flag.c)
     /*
      * Invert archive attribute.
      */
-    printf("Toggling archive flag\en");
+    printf("Toggling archive flag\[rs]n");
     attr \[ha]=3D ATTR_ARCH;
 \&
     /*
diff --git a/man/man2const/NS_GET_USERNS.2const b/man/man2const/NS_GET_USER=
NS.2const
index 68a2b45dc..1c1e925f1 100644
--- a/man/man2const/NS_GET_USERNS.2const
+++ b/man/man2const/NS_GET_USERNS.2const
@@ -192,13 +192,13 @@ .SS Program source
     struct stat  sb;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s /proc/[pid]/ns/[file] [p|u]\en",
+        fprintf(stderr, "Usage: %s /proc/[pid]/ns/[file] [p|u]\[rs]n",
                 argv[0]);
-        fprintf(stderr, "\enDisplay the result of one or both "
-                "of NS_GET_USERNS (u) or NS_GET_PARENT (p)\en"
+        fprintf(stderr, "\[rs]nDisplay the result of one or both "
+                "of NS_GET_USERNS (u) or NS_GET_PARENT (p)\[rs]n"
                 "for the specified /proc/[pid]/ns/[file]. If neither "
-                "\[aq]p\[aq] nor \[aq]u\[aq] is specified,\en"
-                "NS_GET_USERNS is the default.\en");
+                "\[aq]p\[aq] nor \[aq]u\[aq] is specified,\[rs]n"
+                "NS_GET_USERNS is the default.\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -220,7 +220,7 @@ .SS Program source
         if (userns_fd =3D=3D \-1) {
             if (errno =3D=3D EPERM)
                 printf("The owning user namespace is outside "
-                       "your namespace scope\en");
+                       "your namespace scope\[rs]n");
             else
                perror("ioctl\-NS_GET_USERNS");
             exit(EXIT_FAILURE);
@@ -231,7 +231,7 @@ .SS Program source
             exit(EXIT_FAILURE);
         }
         printf("Device/Inode of owning user namespace is: "
-               "[%x,%x] / %ju\en",
+               "[%x,%x] / %ju\[rs]n",
                major(sb.st_dev),
                minor(sb.st_dev),
                (uintmax_t) sb.st_ino);
@@ -248,10 +248,10 @@ .SS Program source
         if (parent_fd =3D=3D \-1) {
             if (errno =3D=3D EINVAL)
                 printf("Can\[aq] get parent namespace of a "
-                       "nonhierarchical namespace\en");
+                       "nonhierarchical namespace\[rs]n");
             else if (errno =3D=3D EPERM)
                 printf("The parent namespace is outside "
-                       "your namespace scope\en");
+                       "your namespace scope\[rs]n");
             else
                 perror("ioctl\-NS_GET_PARENT");
             exit(EXIT_FAILURE);
@@ -261,7 +261,7 @@ .SS Program source
             perror("fstat\-parentns");
             exit(EXIT_FAILURE);
         }
-        printf("Device/Inode of parent namespace is: [%x,%x] / %ju\en",
+        printf("Device/Inode of parent namespace is: [%x,%x] / %ju\[rs]n",
                major(sb.st_dev),
                minor(sb.st_dev),
                (uintmax_t) sb.st_ino);
diff --git a/man/man2const/PR_SET_VMA.2const b/man/man2const/PR_SET_VMA.2co=
nst
index 752fb19d1..eb3a8c836 100644
--- a/man/man2const/PR_SET_VMA.2const
+++ b/man/man2const/PR_SET_VMA.2const
@@ -50,7 +50,7 @@ .SH DESCRIPTION
 will be reset.
 The name can contain only printable ascii characters
 .RB ( isprint (3)),
-except \[aq][\[aq], \[aq]]\[aq], \[aq]\e\[aq], \[aq]$\[aq], and \[aq]\[ga]=
\[aq].
+except \[aq][\[aq], \[aq]]\[aq], \[aq]\[rs]\[aq], \[aq]$\[aq], and \[aq]\[=
ga]\[aq].
 .SH RETURN VALUE
 On success,
 0 is returned.
diff --git a/man/man2const/TCSETS.2const b/man/man2const/TCSETS.2const
index f1e4d1d6d..541da7952 100644
--- a/man/man2const/TCSETS.2const
+++ b/man/man2const/TCSETS.2const
@@ -179,7 +179,7 @@ .SH EXAMPLES
 main(int argc, char *argv[])
 {
 #if !defined BOTHER
-    fprintf(stderr, "BOTHER is unsupported\en");
+    fprintf(stderr, "BOTHER is unsupported\[rs]n");
     /* Program may fallback to TCGETS/TCSETS with Bnnn constants */
     exit(EXIT_FAILURE);
 #else
@@ -192,7 +192,7 @@ .SH EXAMPLES
     int fd, rc;
 \&
     if (argc !=3D 2 && argc !=3D 3 && argc !=3D 4) {
-        fprintf(stderr, "Usage: %s device [output [input] ]\en", argv[0]);
+        fprintf(stderr, "Usage: %s device [output [input] ]\[rs]n", argv[0=
]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -254,8 +254,8 @@ .SH EXAMPLES
 \&
     close(fd);
 \&
-    printf("output baud rate: %u\en", tio.c_ospeed);
-    printf("input baud rate: %u\en", tio.c_ispeed);
+    printf("output baud rate: %u\[rs]n", tio.c_ospeed);
+    printf("input baud rate: %u\[rs]n", tio.c_ispeed);
 \&
     exit(EXIT_SUCCESS);
 #endif
diff --git a/man/man2const/TIOCPKT.2const b/man/man2const/TIOCPKT.2const
index 528200fdd..744ea9ac9 100644
--- a/man/man2const/TIOCPKT.2const
+++ b/man/man2const/TIOCPKT.2const
@@ -42,7 +42,7 @@ .SH DESCRIPTION
 In packet mode, each subsequent
 .BR read (2)
 will return a packet that either contains a single nonzero control byte,
-or has a single byte containing zero (\[aq]\e0\[aq]) followed by data
+or has a single byte containing zero (\[aq]\[rs]0\[aq]) followed by data
 written on the slave side of the pseudoterminal.
 If the first byte is not
 .B TIOCPKT_DATA
diff --git a/man/man2const/VFAT_IOCTL_READDIR_BOTH.2const b/man/man2const/V=
FAT_IOCTL_READDIR_BOTH.2const
index ecac84b93..5f26c5406 100644
--- a/man/man2const/VFAT_IOCTL_READDIR_BOTH.2const
+++ b/man/man2const/VFAT_IOCTL_READDIR_BOTH.2const
@@ -151,7 +151,7 @@ .SS Program source
     struct __fat_dirent  entry[2];
 \&
     if (argc !=3D 2) {
-        printf("Usage: %s DIRECTORY\en", argv[0]);
+        printf("Usage: %s DIRECTORY\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -184,7 +184,7 @@ .SS Program source
         /*
          * Write both the short name and the long name.
          */
-        printf("%s \-> \[aq]%s\[aq]\en", entry[0].d_name, entry[1].d_name);
+        printf("%s \-> \[aq]%s\[aq]\[rs]n", entry[0].d_name, entry[1].d_na=
me);
     }
 \&
     if (ret =3D=3D \-1) {
diff --git a/man/man3/CPU_SET.3 b/man/man3/CPU_SET.3
index 402910913..c1313f81f 100644
--- a/man/man3/CPU_SET.3
+++ b/man/man3/CPU_SET.3
@@ -316,7 +316,7 @@ .SH EXAMPLES
     size_t size, num_cpus;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s <num\-cpus>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <num\-cpus>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -334,7 +334,7 @@ .SH EXAMPLES
     for (size_t cpu =3D 0; cpu < num_cpus; cpu +=3D 2)
         CPU_SET_S(cpu, size, cpusetp);
 \&
-    printf("CPU_COUNT() of set:    %d\en", CPU_COUNT_S(size, cpusetp));
+    printf("CPU_COUNT() of set:    %d\[rs]n", CPU_COUNT_S(size, cpusetp));
 \&
     CPU_FREE(cpusetp);
     exit(EXIT_SUCCESS);
diff --git a/man/man3/MAX.3 b/man/man3/MAX.3
index 9e74ad614..8ced39a94 100644
--- a/man/man3/MAX.3
+++ b/man/man3/MAX.3
@@ -57,14 +57,14 @@ .SH EXAMPLES
     int a, b, x;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <num> <num>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <num> <num>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     a =3D atoi(argv[1]);
     b =3D atoi(argv[2]);
     x =3D MAX(a, b);
-    printf("MAX(%d, %d) is %d\en", a, b, x);
+    printf("MAX(%d, %d) is %d\[rs]n", a, b, x);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/_Generic.3 b/man/man3/_Generic.3
index 788a117dd..09b64e6fa 100644
--- a/man/man3/_Generic.3
+++ b/man/man3/_Generic.3
@@ -41,10 +41,10 @@ .SH EXAMPLES
 #include <stdio.h>
 #include <stdlib.h>
 \&
-#define my_imaxabs  _Generic(INTMAX_C(0),  \e
-    long:           labs,                  \e
-    long long:      llabs                  \e
-/*  long long long: lllabs */              \e
+#define my_imaxabs  _Generic(INTMAX_C(0),  \[rs]
+    long:           labs,                  \[rs]
+    long long:      llabs                  \[rs]
+/*  long long long: lllabs */              \[rs]
 )
 \&
 int
@@ -53,10 +53,10 @@ .SH EXAMPLES
     off_t  a;
 \&
     a =3D \-42;
-    printf("imaxabs(%jd) =3D=3D %jd\en", (intmax_t) a, my_imaxabs(a));
-    printf("&imaxabs =3D=3D %p\en", &my_imaxabs);
-    printf("&labs    =3D=3D %p\en", &labs);
-    printf("&llabs   =3D=3D %p\en", &llabs);
+    printf("imaxabs(%jd) =3D=3D %jd\[rs]n", (intmax_t) a, my_imaxabs(a));
+    printf("&imaxabs =3D=3D %p\[rs]n", &my_imaxabs);
+    printf("&labs    =3D=3D %p\[rs]n", &labs);
+    printf("&llabs   =3D=3D %p\[rs]n", &llabs);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/__ppc_get_timebase.3 b/man/man3/__ppc_get_timebase.3
index ee922c130..9df5ceb5e 100644
--- a/man/man3/__ppc_get_timebase.3
+++ b/man/man3/__ppc_get_timebase.3
@@ -72,7 +72,7 @@ .SS Program source
     uint64_t freq;
 \&
     freq =3D __ppc_get_timebase_freq();
-    printf("Time Base frequency =3D %"PRIu64" Hz\en", freq);
+    printf("Time Base frequency =3D %"PRIu64" Hz\[rs]n", freq);
 \&
     tb1 =3D __ppc_get_timebase();
 \&
@@ -87,7 +87,7 @@ .SS Program source
         diff =3D (MAX_TB \- tb2) + tb1;
     }
 \&
-    printf("Elapsed time  =3D %1.2f usecs\en",
+    printf("Elapsed time  =3D %1.2f usecs\[rs]n",
            (double) diff * 1000000 / freq);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/argz_add.3 b/man/man3/argz_add.3
index 4b4fc4f8d..edc80e183 100644
--- a/man/man3/argz_add.3
+++ b/man/man3/argz_add.3
@@ -60,7 +60,7 @@ .SH DESCRIPTION
 .P
 An argz vector is a pointer to a character buffer together with a length.
 The intended interpretation of the character buffer is an array
-of strings, where the strings are separated by null bytes (\[aq]\e0\[aq]).
+of strings, where the strings are separated by null bytes (\[aq]\[rs]0\[aq=
]).
 If the length is nonzero, the last byte of the buffer must be a null byte.
 .P
 These functions are for handling argz vectors.
@@ -106,7 +106,7 @@ .SH DESCRIPTION
 .P
 .BR argz_count ()
 counts the number of strings, that is,
-the number of null bytes (\[aq]\e0\[aq]), in
+the number of null bytes (\[aq]\[rs]0\[aq]), in
 .RI ( argz ,\  argz_len ).
 .P
 .BR argz_create ()
@@ -194,7 +194,7 @@ .SH DESCRIPTION
 is the opposite of
 .BR argz_create_sep ().
 It transforms the argz vector into a normal string by replacing
-all null bytes (\[aq]\e0\[aq]) except the last by
+all null bytes (\[aq]\[rs]0\[aq]) except the last by
 .IR sep .
 .SH RETURN VALUE
 All argz functions that do memory allocation have a return type of
diff --git a/man/man3/asprintf.3 b/man/man3/asprintf.3
index bd5fcf7fa..eeb168aa3 100644
--- a/man/man3/asprintf.3
+++ b/man/man3/asprintf.3
@@ -30,7 +30,7 @@ .SH DESCRIPTION
 and
 .BR vsprintf (3),
 except that they allocate a string large enough to hold the output
-including the terminating null byte (\[aq]\e0\[aq]),
+including the terminating null byte (\[aq]\[rs]0\[aq]),
 and return a pointer to it via the first argument.
 This pointer should be passed to
 .BR free (3)
diff --git a/man/man3/atexit.3 b/man/man3/atexit.3
index 88f2817b8..78dcdf839 100644
--- a/man/man3/atexit.3
+++ b/man/man3/atexit.3
@@ -140,7 +140,7 @@ .SH EXAMPLES
 void
 bye(void)
 {
-    printf("That was all, folks\en");
+    printf("That was all, folks\[rs]n");
 }
 \&
 int
@@ -150,11 +150,11 @@ .SH EXAMPLES
     int i;
 \&
     a =3D sysconf(_SC_ATEXIT_MAX);
-    printf("ATEXIT_MAX =3D %ld\en", a);
+    printf("ATEXIT_MAX =3D %ld\[rs]n", a);
 \&
     i =3D atexit(bye);
     if (i !=3D 0) {
-        fprintf(stderr, "cannot set exit function\en");
+        fprintf(stderr, "cannot set exit function\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man3/backtrace.3 b/man/man3/backtrace.3
index 4875da31f..4876448c6 100644
--- a/man/man3/backtrace.3
+++ b/man/man3/backtrace.3
@@ -229,7 +229,7 @@ .SS Program source
     char **strings;
 \&
     nptrs =3D backtrace(buffer, BT_BUF_SIZE);
-    printf("backtrace() returned %d addresses\en", nptrs);
+    printf("backtrace() returned %d addresses\[rs]n", nptrs);
 \&
     /* The call backtrace_symbols_fd(buffer, nptrs, STDOUT_FILENO)
        would produce similar output to the following: */
@@ -241,7 +241,7 @@ .SS Program source
     }
 \&
     for (size_t j =3D 0; j < nptrs; j++)
-        printf("%s\en", strings[j]);
+        printf("%s\[rs]n", strings[j]);
 \&
     free(strings);
 }
@@ -265,7 +265,7 @@ .SS Program source
 main(int argc, char *argv[])
 {
     if (argc !=3D 2) {
-        fprintf(stderr, "%s num\-calls\en", argv[0]);
+        fprintf(stderr, "%s num\-calls\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man3/basename.3 b/man/man3/basename.3
index 2702a05f8..6f81b3504 100644
--- a/man/man3/basename.3
+++ b/man/man3/basename.3
@@ -179,7 +179,7 @@ .SH EXAMPLES
 basec =3D strdup(path);
 dname =3D dirname(dirc);
 bname =3D basename(basec);
-printf("dirname=3D%s, basename=3D%s\en", dname, bname);
+printf("dirname=3D%s, basename=3D%s\[rs]n", dname, bname);
 .EE
 .in
 .SH SEE ALSO
diff --git a/man/man3/bsearch.3 b/man/man3/bsearch.3
index 56ba64486..ba3f57664 100644
--- a/man/man3/bsearch.3
+++ b/man/man3/bsearch.3
@@ -124,9 +124,9 @@ .SH EXAMPLES
         res =3D bsearch(&key, months, ARRAY_SIZE(months),
                       sizeof(months[0]), compmi);
         if (res =3D=3D NULL)
-            printf("\[aq]%s\[aq]: unknown month\en", argv[i]);
+            printf("\[aq]%s\[aq]: unknown month\[rs]n", argv[i]);
         else
-            printf("%s: month #%d\en", res\->name, res\->nr);
+            printf("%s: month #%d\[rs]n", res\->name, res\->nr);
     }
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/bswap.3 b/man/man3/bswap.3
index d7bac680c..28229c9e3 100644
--- a/man/man3/bswap.3
+++ b/man/man3/bswap.3
@@ -52,12 +52,12 @@ .SS Program source
     uint64_t x;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <num>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <num>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     x =3D strtoull(argv[1], NULL, 0);
-    printf("%#" PRIx64 " =3D=3D> %#" PRIx64 "\en", x, bswap_64(x));
+    printf("%#" PRIx64 " =3D=3D> %#" PRIx64 "\[rs]n", x, bswap_64(x));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/bzero.3 b/man/man3/bzero.3
index f6c0ca2f3..84754f73e 100644
--- a/man/man3/bzero.3
+++ b/man/man3/bzero.3
@@ -26,7 +26,7 @@ .SH DESCRIPTION
 .I n
 bytes of the memory starting at the location pointed to by
 .IR s ,
-by writing zeros (bytes containing \[aq]\e0\[aq]) to that area.
+by writing zeros (bytes containing \[aq]\[rs]0\[aq]) to that area.
 .P
 The
 .BR explicit_bzero ()
diff --git a/man/man3/cacos.3 b/man/man3/cacos.3
index 13a57e1ab..701d89f32 100644
--- a/man/man3/cacos.3
+++ b/man/man3/cacos.3
@@ -69,7 +69,7 @@ .SH EXAMPLES
     double complex i =3D I;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <real> <imag>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <real> <imag>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -77,11 +77,11 @@ .SH EXAMPLES
 \&
     c =3D cacos(z);
 \&
-    printf("cacos() =3D %6.3f %6.3f*i\en", creal(c), cimag(c));
+    printf("cacos() =3D %6.3f %6.3f*i\[rs]n", creal(c), cimag(c));
 \&
     f =3D \-i * clog(z + i * csqrt(1 \- z * z));
 \&
-    printf("formula =3D %6.3f %6.3f*i\en", creal(f), cimag(f));
+    printf("formula =3D %6.3f %6.3f*i\[rs]n", creal(f), cimag(f));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/cacosh.3 b/man/man3/cacosh.3
index c6b3a2067..bebd65f14 100644
--- a/man/man3/cacosh.3
+++ b/man/man3/cacosh.3
@@ -71,17 +71,17 @@ .SH EXAMPLES
     double complex z, c, f;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <real> <imag>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <real> <imag>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     z =3D atof(argv[1]) + atof(argv[2]) * I;
 \&
     c =3D cacosh(z);
-    printf("cacosh() =3D %6.3f %6.3f*i\en", creal(c), cimag(c));
+    printf("cacosh() =3D %6.3f %6.3f*i\[rs]n", creal(c), cimag(c));
 \&
     f =3D 2 * clog(csqrt((z + 1)/2) + csqrt((z \- 1)/2));
-    printf("formula  =3D %6.3f %6.3f*i\en", creal(f), cimag(f));
+    printf("formula  =3D %6.3f %6.3f*i\[rs]n", creal(f), cimag(f));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/catan.3 b/man/man3/catan.3
index d8e290853..c1987ced0 100644
--- a/man/man3/catan.3
+++ b/man/man3/catan.3
@@ -71,17 +71,17 @@ .SH EXAMPLES
     double complex i =3D I;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <real> <imag>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <real> <imag>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     z =3D atof(argv[1]) + atof(argv[2]) * I;
 \&
     c =3D catan(z);
-    printf("catan() =3D %6.3f %6.3f*i\en", creal(c), cimag(c));
+    printf("catan() =3D %6.3f %6.3f*i\[rs]n", creal(c), cimag(c));
 \&
     f =3D (clog(1 + i * z) \- clog(1 \- i * z)) / (2 * i);
-    printf("formula =3D %6.3f %6.3f*i\en", creal(f), cimag(f));
+    printf("formula =3D %6.3f %6.3f*i\[rs]n", creal(f), cimag(f));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/catanh.3 b/man/man3/catanh.3
index f6749fe6c..db121d762 100644
--- a/man/man3/catanh.3
+++ b/man/man3/catanh.3
@@ -70,17 +70,17 @@ .SH EXAMPLES
     double complex z, c, f;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <real> <imag>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <real> <imag>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     z =3D atof(argv[1]) + atof(argv[2]) * I;
 \&
     c =3D catanh(z);
-    printf("catanh() =3D %6.3f %6.3f*i\en", creal(c), cimag(c));
+    printf("catanh() =3D %6.3f %6.3f*i\[rs]n", creal(c), cimag(c));
 \&
     f =3D 0.5 * (clog(1 + z) \- clog(1 \- z));
-    printf("formula  =3D %6.3f %6.3f*i\en", creal(f), cimag(f));
+    printf("formula  =3D %6.3f %6.3f*i\[rs]n", creal(f), cimag(f));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/catgets.3 b/man/man3/catgets.3
index 58320b673..442f496d5 100644
--- a/man/man3/catgets.3
+++ b/man/man3/catgets.3
@@ -39,7 +39,7 @@ .SH DESCRIPTION
 message-text is contained in an internal buffer area and should be copied =
by
 the application if it is to be saved or modified.
 The return string is
-always terminated with a null byte (\[aq]\e0\[aq]).
+always terminated with a null byte (\[aq]\[rs]0\[aq]).
 .SH RETURN VALUE
 On success,
 .BR catgets ()
diff --git a/man/man3/circleq.3 b/man/man3/circleq.3
index 75442e710..3c6dbebfa 100644
--- a/man/man3/circleq.3
+++ b/man/man3/circleq.3
@@ -299,7 +299,7 @@ .SH EXAMPLES
         np\->data =3D i++;
                                             /* Reverse traversal */
     CIRCLEQ_FOREACH_REVERSE(np, &head, entries)
-        printf("%i\en", np\->data);
+        printf("%i\[rs]n", np\->data);
                                             /* Queue deletion */
     n1 =3D CIRCLEQ_FIRST(&head);
     while (n1 !=3D (void *)&head) {
diff --git a/man/man3/clock_getcpuclockid.3 b/man/man3/clock_getcpuclockid.3
index 0d6e231d7..ff4406792 100644
--- a/man/man3/clock_getcpuclockid.3
+++ b/man/man3/clock_getcpuclockid.3
@@ -128,7 +128,7 @@ .SS Program source
     struct timespec ts;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "%s <process\-ID>\en", argv[0]);
+        fprintf(stderr, "%s <process\-ID>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -142,7 +142,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("CPU\-time clock for PID %s is %jd.%09ld seconds\en",
+    printf("CPU\-time clock for PID %s is %jd.%09ld seconds\[rs]n",
            argv[1], (intmax_t) ts.tv_sec, ts.tv_nsec);
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/confstr.3 b/man/man3/confstr.3
index 5cb924cf0..f69d4cc82 100644
--- a/man/man3/confstr.3
+++ b/man/man3/confstr.3
@@ -66,7 +66,7 @@ .SH DESCRIPTION
 .I buf
 truncated to
 .I size \- 1
-bytes if necessary, with a null byte (\[aq]\e0\[aq]) as terminator.
+bytes if necessary, with a null byte (\[aq]\[rs]0\[aq]) as terminator.
 This can be detected by comparing the return value of
 .BR confstr ()
 against
diff --git a/man/man3/ctime.3 b/man/man3/ctime.3
index 4b3c3fc0d..559816912 100644
--- a/man/man3/ctime.3
+++ b/man/man3/ctime.3
@@ -89,7 +89,7 @@ .SH DESCRIPTION
 .P
 .in +4n
 .EX
-"Wed Jun 30 21:49:08 1993\en"
+"Wed Jun 30 21:49:08 1993\[rs]n"
 .EE
 .in
 .P
diff --git a/man/man3/dl_iterate_phdr.3 b/man/man3/dl_iterate_phdr.3
index 0a8beb3ae..c9efa0e03 100644
--- a/man/man3/dl_iterate_phdr.3
+++ b/man/man3/dl_iterate_phdr.3
@@ -294,7 +294,7 @@ .SS Program source
     char *type;
     int p_type;
 \&
-    printf("Name: \e"%s\e" (%d segments)\en", info\->dlpi_name,
+    printf("Name: \[rs]"%s\[rs]" (%d segments)\[rs]n", info\->dlpi_name,
            info\->dlpi_phnum);
 \&
     for (size_t j =3D 0; j < info\->dlpi_phnum; j++) {
@@ -315,9 +315,9 @@ .SS Program source
                (uintmax_t) info\->dlpi_phdr[j].p_memsz,
                (uintmax_t) info\->dlpi_phdr[j].p_flags);
         if (type !=3D NULL)
-            printf("%s\en", type);
+            printf("%s\[rs]n", type);
         else
-            printf("[other (%#x)]\en", p_type);
+            printf("[other (%#x)]\[rs]n", p_type);
     }
 \&
     return 0;
diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
index c3a5662ca..ada8f643e 100644
--- a/man/man3/dlinfo.3
+++ b/man/man3/dlinfo.3
@@ -257,7 +257,7 @@ .SS Program source
     Dl_serinfo *sip;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <libpath>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <libpath>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -265,7 +265,7 @@ .SS Program source
 \&
     handle =3D dlopen(argv[1], RTLD_NOW);
     if (handle =3D=3D NULL) {
-        fprintf(stderr, "dlopen() failed: %s\en", dlerror());
+        fprintf(stderr, "dlopen() failed: %s\[rs]n", dlerror());
         exit(EXIT_FAILURE);
     }
 \&
@@ -273,7 +273,7 @@ .SS Program source
        RTLD_DI_SERINFO. */
 \&
     if (dlinfo(handle, RTLD_DI_SERINFOSIZE, &serinfo) =3D=3D \-1) {
-        fprintf(stderr, "RTLD_DI_SERINFOSIZE failed: %s\en", dlerror());
+        fprintf(stderr, "RTLD_DI_SERINFOSIZE failed: %s\[rs]n", dlerror());
         exit(EXIT_FAILURE);
     }
 \&
@@ -289,19 +289,19 @@ .SS Program source
        allocated buffer. */
 \&
     if (dlinfo(handle, RTLD_DI_SERINFOSIZE, sip) =3D=3D \-1) {
-        fprintf(stderr, "RTLD_DI_SERINFOSIZE failed: %s\en", dlerror());
+        fprintf(stderr, "RTLD_DI_SERINFOSIZE failed: %s\[rs]n", dlerror());
         exit(EXIT_FAILURE);
     }
 \&
     /* Fetch and print library search list. */
 \&
     if (dlinfo(handle, RTLD_DI_SERINFO, sip) =3D=3D \-1) {
-        fprintf(stderr, "RTLD_DI_SERINFO failed: %s\en", dlerror());
+        fprintf(stderr, "RTLD_DI_SERINFO failed: %s\[rs]n", dlerror());
         exit(EXIT_FAILURE);
     }
 \&
     for (size_t j =3D 0; j < serinfo.dls_cnt; j++)
-        printf("dls_serpath[%zu].dls_name =3D %s\en",
+        printf("dls_serpath[%zu].dls_name =3D %s\[rs]n",
                j, sip\->dls_serpath[j].dls_name);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/dlopen.3 b/man/man3/dlopen.3
index 03fbc04e1..3f71c3113 100644
--- a/man/man3/dlopen.3
+++ b/man/man3/dlopen.3
@@ -569,7 +569,7 @@ .SS Program source
 \&
     handle =3D dlopen(LIBM_SO, RTLD_LAZY);
     if (!handle) {
-        fprintf(stderr, "%s\en", dlerror());
+        fprintf(stderr, "%s\[rs]n", dlerror());
         exit(EXIT_FAILURE);
     }
 \&
@@ -598,11 +598,11 @@ .SS Program source
 \&
     error =3D dlerror();
     if (error !=3D NULL) {
-        fprintf(stderr, "%s\en", error);
+        fprintf(stderr, "%s\[rs]n", error);
         exit(EXIT_FAILURE);
     }
 \&
-    printf("%f\en", (*cosine)(2.0));
+    printf("%f\[rs]n", (*cosine)(2.0));
     dlclose(handle);
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/duplocale.3 b/man/man3/duplocale.3
index 246af79e9..96472a850 100644
--- a/man/man3/duplocale.3
+++ b/man/man3/duplocale.3
@@ -123,7 +123,7 @@ .SS Program source
 #include <stdio.h>
 #include <stdlib.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 int
@@ -132,7 +132,7 @@ .SS Program source
     locale_t loc, nloc;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s string\en", argv[0]);
+        fprintf(stderr, "Usage: %s string\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -151,7 +151,7 @@ .SS Program source
     for (char *p =3D argv[1]; *p; p++)
         putchar(toupper_l(*p, nloc));
 \&
-    printf("\en");
+    printf("\[rs]n");
 \&
     freelocale(nloc);
 \&
diff --git a/man/man3/encrypt.3 b/man/man3/encrypt.3
index 4ec5cd7fd..0963ccf62 100644
--- a/man/man3/encrypt.3
+++ b/man/man3/encrypt.3
@@ -181,25 +181,25 @@ .SH EXAMPLES
         }
         setkey(key);
     }
-    printf("Before encrypting: %s\en", orig);
+    printf("Before encrypting: %s\[rs]n", orig);
 \&
     encrypt(buf, 0);
     for (size_t i =3D 0; i < 8; i++) {
-        for (size_t j =3D 0, txt[i] =3D \[aq]\e0\[aq]; j < 8; j++) {
+        for (size_t j =3D 0, txt[i] =3D \[aq]\[rs]0\[aq]; j < 8; j++) {
             txt[i] |=3D buf[i * 8 + j] << j;
         }
-        txt[8] =3D \[aq]\e0\[aq];
+        txt[8] =3D \[aq]\[rs]0\[aq];
     }
-    printf("After encrypting:  %s\en", txt);
+    printf("After encrypting:  %s\[rs]n", txt);
 \&
     encrypt(buf, 1);
     for (size_t i =3D 0; i < 8; i++) {
-        for (size_t j =3D 0, txt[i] =3D \[aq]\e0\[aq]; j < 8; j++) {
+        for (size_t j =3D 0, txt[i] =3D \[aq]\[rs]0\[aq]; j < 8; j++) {
             txt[i] |=3D buf[i * 8 + j] << j;
         }
-        txt[8] =3D \[aq]\e0\[aq];
+        txt[8] =3D \[aq]\[rs]0\[aq];
     }
-    printf("After decrypting:  %s\en", txt);
+    printf("After decrypting:  %s\[rs]n", txt);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/end.3 b/man/man3/end.3
index f0c22ff5d..9d57499bb 100644
--- a/man/man3/end.3
+++ b/man/man3/end.3
@@ -80,10 +80,10 @@ .SS Program source
 int
 main(void)
 {
-    printf("First address past:\en");
-    printf("    program text (etext)      %10p\en", &etext);
-    printf("    initialized data (edata)  %10p\en", &edata);
-    printf("    uninitialized data (end)  %10p\en", &end);
+    printf("First address past:\[rs]n");
+    printf("    program text (etext)      %10p\[rs]n", &etext);
+    printf("    initialized data (edata)  %10p\[rs]n", &edata);
+    printf("    uninitialized data (end)  %10p\[rs]n", &end);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/endian.3 b/man/man3/endian.3
index 6cd85317a..06fb51141 100644
--- a/man/man3/endian.3
+++ b/man/man3/endian.3
@@ -151,9 +151,9 @@ .SS Program source
     x.arr[2] =3D 0x33;
     x.arr[3] =3D 0x44;	/* Highest\-address byte */
 \&
-    printf("x.u32 =3D %#x\en", x.u32);
-    printf("htole32(x.u32) =3D %#x\en", htole32(x.u32));
-    printf("htobe32(x.u32) =3D %#x\en", htobe32(x.u32));
+    printf("x.u32 =3D %#x\[rs]n", x.u32);
+    printf("htole32(x.u32) =3D %#x\[rs]n", htole32(x.u32));
+    printf("htobe32(x.u32) =3D %#x\[rs]n", htobe32(x.u32));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/envz_add.3 b/man/man3/envz_add.3
index fd5b77029..2a217fc55 100644
--- a/man/man3/envz_add.3
+++ b/man/man3/envz_add.3
@@ -157,9 +157,9 @@ .SH EXAMPLES
         e_len +=3D strlen(envp[i]) + 1;
 \&
     str =3D envz_entry(*envp, e_len, "HOME");
-    printf("%s\en", str);
+    printf("%s\[rs]n", str);
     str =3D envz_get(*envp, e_len, "HOME");
-    printf("%s\en", str);
+    printf("%s\[rs]n", str);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/errno.3 b/man/man3/errno.3
index 786dec824..bfe659953 100644
--- a/man/man3/errno.3
+++ b/man/man3/errno.3
@@ -599,7 +599,7 @@ .SH NOTES
 .in +4n
 .EX
 if (somecall() =3D=3D \-1) {
-    printf("somecall() failed\en");
+    printf("somecall() failed\[rs]n");
     if (errno =3D=3D ...) { ... }
 }
 .EE
@@ -619,7 +619,7 @@ .SH NOTES
 .EX
 if (somecall() =3D=3D \-1) {
     int errsv =3D errno;
-    printf("somecall() failed\en");
+    printf("somecall() failed\[rs]n");
     if (errsv =3D=3D ...) { ... }
 }
 .EE
diff --git a/man/man3/fgetc.3 b/man/man3/fgetc.3
index d92fd8413..57321d042 100644
--- a/man/man3/fgetc.3
+++ b/man/man3/fgetc.3
@@ -58,7 +58,7 @@ .SH DESCRIPTION
 .B EOF
 or a newline.
 If a newline is read, it is stored into the buffer.
-A terminating null byte (\[aq]\e0\[aq])
+A terminating null byte (\[aq]\[rs]0\[aq])
 is stored after the last character in the buffer.
 .P
 .BR ungetc ()
diff --git a/man/man3/fgetws.3 b/man/man3/fgetws.3
index a41573b6f..afb08ab76 100644
--- a/man/man3/fgetws.3
+++ b/man/man3/fgetws.3
@@ -33,7 +33,7 @@ .SH DESCRIPTION
 function.
 It reads a string of at most \fIn\-1\fP wide characters into the
 wide-character array pointed to by \fIws\fP,
-and adds a terminating null wide character (L\[aq]\e0\[aq]).
+and adds a terminating null wide character (L\[aq]\[rs]0\[aq]).
 It stops reading wide characters after it has encountered and
 stored a newline wide character.
 It also stops when end of stream is reached.
diff --git a/man/man3/fmemopen.3 b/man/man3/fmemopen.3
index 385fcdcc9..0207fbbfd 100644
--- a/man/man3/fmemopen.3
+++ b/man/man3/fmemopen.3
@@ -59,7 +59,7 @@ .SH DESCRIPTION
 .I w+
 Open the stream for reading and writing.
 The buffer contents are truncated
-(i.e., \[aq]\e0\[aq] is placed in the first byte of the buffer).
+(i.e., \[aq]\[rs]0\[aq] is placed in the first byte of the buffer).
 .TP
 .I a+
 Append; open the stream for reading and writing,
@@ -112,7 +112,7 @@ .SH DESCRIPTION
 to allow for this.
 .P
 In a stream opened for reading,
-null bytes (\[aq]\e0\[aq]) in the buffer do not cause read
+null bytes (\[aq]\[rs]0\[aq]) in the buffer do not cause read
 operations to return an end-of-file indication.
 A read from the buffer will indicate end-of-file
 only when the current buffer position advances
@@ -314,7 +314,7 @@ .SS Program source
     char *ptr;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s \[aq]<num>...\[aq]\en", argv[0]);
+        fprintf(stderr, "Usage: %s \[aq]<num>...\[aq]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -339,7 +339,7 @@ .SS Program source
     fclose(in);
     fclose(out);
 \&
-    printf("size=3D%zu; ptr=3D%s\en", size, ptr);
+    printf("size=3D%zu; ptr=3D%s\[rs]n", size, ptr);
 \&
     free(ptr);
     exit(EXIT_SUCCESS);
diff --git a/man/man3/fmtmsg.3 b/man/man3/fmtmsg.3
index 699db65e7..111b8121f 100644
--- a/man/man3/fmtmsg.3
+++ b/man/man3/fmtmsg.3
@@ -291,16 +291,16 @@ .SH EXAMPLES
     case MM_OK:
         break;
     case MM_NOTOK:
-        printf("Nothing printed\en");
+        printf("Nothing printed\[rs]n");
         break;
     case MM_NOMSG:
-        printf("Nothing printed to stderr\en");
+        printf("Nothing printed to stderr\[rs]n");
         break;
     case MM_NOCON:
-        printf("No console output\en");
+        printf("No console output\[rs]n");
         break;
     default:
-        printf("Unknown error from fmtmsg()\en");
+        printf("Unknown error from fmtmsg()\[rs]n");
     }
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/fopencookie.3 b/man/man3/fopencookie.3
index d1821772c..9c31c9bf1 100644
--- a/man/man3/fopencookie.3
+++ b/man/man3/fopencookie.3
@@ -433,14 +433,14 @@ .SS Program source
         nread =3D fread(buf, 1, 2, stream);
         if (nread =3D=3D 0) {
             if (ferror(stream) !=3D 0) {
-                fprintf(stderr, "fread failed\en");
+                fprintf(stderr, "fread failed\[rs]n");
                 exit(EXIT_FAILURE);
             }
-            printf("Reached end of file\en");
+            printf("Reached end of file\[rs]n");
             break;
         }
 \&
-        printf("/%.*s/\en", (int) nread, buf);
+        printf("/%.*s/\[rs]n", (int) nread, buf);
     }
 \&
     free(mycookie.buf);
diff --git a/man/man3/fputws.3 b/man/man3/fputws.3
index e40396d15..54e708b0f 100644
--- a/man/man3/fputws.3
+++ b/man/man3/fputws.3
@@ -29,7 +29,7 @@ .SH DESCRIPTION
 .BR fputs (3)
 function.
 It writes the wide-character string starting at \fIws\fP,
-up to but not including the terminating null wide character (L\[aq]\e0\[aq=
]),
+up to but not including the terminating null wide character (L\[aq]\[rs]0\=
[aq]),
 to \fIstream\fP.
 .P
 For a nonlocking counterpart, see
diff --git a/man/man3/fread.3 b/man/man3/fread.3
index dc320cd30..9ed4c6a64 100644
--- a/man/man3/fread.3
+++ b/man/man3/fread.3
@@ -135,20 +135,20 @@ .SS Program source
 \&
     ret =3D fread(buffer, sizeof(*buffer), ARRAY_SIZE(buffer), fp);
     if (ret !=3D ARRAY_SIZE(buffer)) {
-        fprintf(stderr, "fread() failed: %zu\en", ret);
+        fprintf(stderr, "fread() failed: %zu\[rs]n", ret);
         exit(EXIT_FAILURE);
     }
 \&
-    printf("ELF magic: %#04x%02x%02x%02x\en", buffer[0], buffer[1],
+    printf("ELF magic: %#04x%02x%02x%02x\[rs]n", buffer[0], buffer[1],
            buffer[2], buffer[3]);
 \&
     ret =3D fread(buffer, 1, 1, fp);
     if (ret !=3D 1) {
-        fprintf(stderr, "fread() failed: %zu\en", ret);
+        fprintf(stderr, "fread() failed: %zu\[rs]n", ret);
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Class: %#04x\en", buffer[0]);
+    printf("Class: %#04x\[rs]n", buffer[0]);
 \&
     fclose(fp);
 \&
diff --git a/man/man3/frexp.3 b/man/man3/frexp.3
index 16ece267d..394e0e6e4 100644
--- a/man/man3/frexp.3
+++ b/man/man3/frexp.3
@@ -131,7 +131,7 @@ .SS Program source
     x =3D strtod(argv[1], NULL);
     r =3D frexp(x, &exp);
 \&
-    printf("frexp(%g, &e) =3D %g: %g * %d\[ha]%d =3D %g\en", x, r, r, 2, e=
xp, x);
+    printf("frexp(%g, &e) =3D %g: %g * %d\[ha]%d =3D %g\[rs]n", x, r, r, 2=
, exp, x);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/ftw.3 b/man/man3/ftw.3
index 655bd38ac..cdeb40127 100644
--- a/man/man3/ftw.3
+++ b/man/man3/ftw.3
@@ -469,7 +469,7 @@ .SS Program source
     else
         printf("%7jd", (intmax_t) sb\->st_size);
 \&
-    printf("   %\-40s %d %s\en",
+    printf("   %\-40s %d %s\[rs]n",
            fpath, ftwbuf\->base, fpath + ftwbuf\->base);
 \&
     return 0;           /* To tell nftw() to continue */
diff --git a/man/man3/get_nprocs.3 b/man/man3/get_nprocs.3
index 49605f99a..411911efc 100644
--- a/man/man3/get_nprocs.3
+++ b/man/man3/get_nprocs.3
@@ -83,7 +83,7 @@ .SH EXAMPLES
 main(void)
 {
     printf("This system has %d processors configured and "
-            "%d processors available.\en",
+            "%d processors available.\[rs]n",
             get_nprocs_conf(), get_nprocs());
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/get_phys_pages.3 b/man/man3/get_phys_pages.3
index a2a627a8c..b0b70577f 100644
--- a/man/man3/get_phys_pages.3
+++ b/man/man3/get_phys_pages.3
@@ -80,7 +80,7 @@ .SH EXAMPLES
 main(void)
 {
     printf("This system has %ld pages of physical memory and "
-            "%ld pages of physical memory available.\en",
+            "%ld pages of physical memory available.\[rs]n",
             get_phys_pages(), get_avphys_pages());
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/getaddrinfo.3 b/man/man3/getaddrinfo.3
index beb643460..d35f97125 100644
--- a/man/man3/getaddrinfo.3
+++ b/man/man3/getaddrinfo.3
@@ -672,7 +672,7 @@ .SS Server program
     struct sockaddr_storage  peer_addr;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s port\en", argv[0]);
+        fprintf(stderr, "Usage: %s port\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -687,7 +687,7 @@ .SS Server program
 \&
     s =3D getaddrinfo(NULL, argv[1], &hints, &result);
     if (s !=3D 0) {
-        fprintf(stderr, "getaddrinfo: %s\en", gai_strerror(s));
+        fprintf(stderr, "getaddrinfo: %s\[rs]n", gai_strerror(s));
         exit(EXIT_FAILURE);
     }
 \&
@@ -711,7 +711,7 @@ .SS Server program
     freeaddrinfo(result);           /* No longer needed */
 \&
     if (rp =3D=3D NULL) {               /* No address succeeded */
-        fprintf(stderr, "Could not bind\en");
+        fprintf(stderr, "Could not bind\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -730,15 +730,15 @@ .SS Server program
                         peer_addrlen, host, NI_MAXHOST,
                         service, NI_MAXSERV, NI_NUMERICSERV);
         if (s =3D=3D 0)
-            printf("Received %zd bytes from %s:%s\en",
+            printf("Received %zd bytes from %s:%s\[rs]n",
                    nread, host, service);
         else
-            fprintf(stderr, "getnameinfo: %s\en", gai_strerror(s));
+            fprintf(stderr, "getnameinfo: %s\[rs]n", gai_strerror(s));
 \&
         if (sendto(sfd, buf, nread, 0, (struct sockaddr *) &peer_addr,
                    peer_addrlen) !=3D nread)
         {
-            fprintf(stderr, "Error sending response\en");
+            fprintf(stderr, "Error sending response\[rs]n");
         }
     }
 }
@@ -769,7 +769,7 @@ .SS Client program
     struct addrinfo  *result, *rp;
 \&
     if (argc < 3) {
-        fprintf(stderr, "Usage: %s host port msg...\en", argv[0]);
+        fprintf(stderr, "Usage: %s host port msg...\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -783,7 +783,7 @@ .SS Client program
 \&
     s =3D getaddrinfo(argv[1], argv[2], &hints, &result);
     if (s !=3D 0) {
-        fprintf(stderr, "getaddrinfo: %s\en", gai_strerror(s));
+        fprintf(stderr, "getaddrinfo: %s\[rs]n", gai_strerror(s));
         exit(EXIT_FAILURE);
     }
 \&
@@ -807,7 +807,7 @@ .SS Client program
     freeaddrinfo(result);           /* No longer needed */
 \&
     if (rp =3D=3D NULL) {               /* No address succeeded */
-        fprintf(stderr, "Could not connect\en");
+        fprintf(stderr, "Could not connect\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -820,12 +820,12 @@ .SS Client program
 \&
         if (len > BUF_SIZE) {
             fprintf(stderr,
-                    "Ignoring long message in argument %zu\en", j);
+                    "Ignoring long message in argument %zu\[rs]n", j);
             continue;
         }
 \&
         if (write(sfd, argv[j], len) !=3D len) {
-            fprintf(stderr, "partial/failed write\en");
+            fprintf(stderr, "partial/failed write\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
@@ -835,7 +835,7 @@ .SS Client program
             exit(EXIT_FAILURE);
         }
 \&
-        printf("Received %zd bytes: %s\en", nread, buf);
+        printf("Received %zd bytes: %s\[rs]n", nread, buf);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/getaddrinfo_a.3 b/man/man3/getaddrinfo_a.3
index e7792fd76..3ec50a79e 100644
--- a/man/man3/getaddrinfo_a.3
+++ b/man/man3/getaddrinfo_a.3
@@ -351,7 +351,7 @@ .SS Synchronous example
     struct addrinfo *res;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s HOST...\en", argv[0]);
+        fprintf(stderr, "Usage: %s HOST...\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -366,7 +366,7 @@ .SS Synchronous example
 \&
     ret =3D getaddrinfo_a(GAI_WAIT, reqs, argc \- 1, NULL);
     if (ret !=3D 0) {
-        fprintf(stderr, "getaddrinfo_a() failed: %s\en",
+        fprintf(stderr, "getaddrinfo_a() failed: %s\[rs]n",
                 gai_strerror(ret));
         exit(EXIT_FAILURE);
     }
@@ -381,7 +381,7 @@ .SS Synchronous example
                               host, sizeof(host),
                               NULL, 0, NI_NUMERICHOST);
             if (ret !=3D 0) {
-                fprintf(stderr, "getnameinfo() failed: %s\en",
+                fprintf(stderr, "getnameinfo() failed: %s\[rs]n",
                         gai_strerror(ret));
                 exit(EXIT_FAILURE);
             }
@@ -436,11 +436,11 @@ .SS Asynchronous example
 \&
 #define CALLOC(n, type)  ((type *) calloc(n, sizeof(type)))
 \&
-#define REALLOCF(ptr, n, type)                                          \e
-({                                                                      \e
-    static_assert(__builtin_types_compatible_p(typeof(ptr), type *));   \e
-                                                                        \e
-    (type *) reallocarrayf(ptr, n, sizeof(type));                       \e
+#define REALLOCF(ptr, n, type)                                          \[=
rs]
+({                                                                      \[=
rs]
+    static_assert(__builtin_types_compatible_p(typeof(ptr), type *));   \[=
rs]
+                                                                        \[=
rs]
+    (type *) reallocarrayf(ptr, n, sizeof(type));                       \[=
rs]
 })
 \&
 static struct gaicb **reqs =3D NULL;
@@ -466,7 +466,7 @@ .SS Asynchronous example
     if (fgets(buf, sizeof(buf), stdin) =3D=3D NULL)
         return NULL;
 \&
-    if (buf[strlen(buf) \- 1] =3D=3D \[aq]\en\[aq])
+    if (buf[strlen(buf) \- 1] =3D=3D \[aq]\[rs]n\[aq])
         buf[strlen(buf) \- 1] =3D 0;
 \&
     return buf;
@@ -498,7 +498,7 @@ .SS Asynchronous example
     ret =3D getaddrinfo_a(GAI_NOWAIT, &reqs[nreqs_base],
                         nreqs \- nreqs_base, NULL);
     if (ret) {
-        fprintf(stderr, "getaddrinfo_a() failed: %s\en",
+        fprintf(stderr, "getaddrinfo_a() failed: %s\[rs]n",
                 gai_strerror(ret));
         exit(EXIT_FAILURE);
     }
@@ -523,7 +523,7 @@ .SS Asynchronous example
         n =3D atoi(id);
 \&
         if (n >=3D nreqs) {
-            printf("Bad request number: %s\en", id);
+            printf("Bad request number: %s\[rs]n", id);
             return;
         }
 \&
@@ -532,7 +532,7 @@ .SS Asynchronous example
 \&
     ret =3D gai_suspend(wait_reqs, nreqs, NULL);
     if (ret) {
-        printf("gai_suspend(): %s\en", gai_strerror(ret));
+        printf("gai_suspend(): %s\[rs]n", gai_strerror(ret));
         return;
     }
 \&
@@ -544,7 +544,7 @@ .SS Asynchronous example
         if (ret =3D=3D EAI_INPROGRESS)
             continue;
 \&
-        printf("[%02zu] %s: %s\en", i, reqs[i]\->ar_name,
+        printf("[%02zu] %s: %s\[rs]n", i, reqs[i]\->ar_name,
                ret =3D=3D 0 ? "Finished" : gai_strerror(ret));
     }
 }
@@ -561,12 +561,12 @@ .SS Asynchronous example
         n =3D atoi(id);
 \&
         if (n >=3D nreqs) {
-            printf("Bad request number: %s\en", id);
+            printf("Bad request number: %s\[rs]n", id);
             return;
         }
 \&
         ret =3D gai_cancel(reqs[n]);
-        printf("[%s] %s: %s\en", id, reqs[atoi(id)]\->ar_name,
+        printf("[%s] %s: %s\[rs]n", id, reqs[atoi(id)]\->ar_name,
                gai_strerror(ret));
     }
 }
@@ -590,7 +590,7 @@ .SS Asynchronous example
                               host, sizeof(host),
                               NULL, 0, NI_NUMERICHOST);
             if (ret) {
-                fprintf(stderr, "getnameinfo() failed: %s\en",
+                fprintf(stderr, "getnameinfo() failed: %s\[rs]n",
                         gai_strerror(ret));
                 exit(EXIT_FAILURE);
             }
@@ -627,7 +627,7 @@ .SS Asynchronous example
                 list_requests();
                 break;
             default:
-                fprintf(stderr, "Bad command: %c\en", cmd[0]);
+                fprintf(stderr, "Bad command: %c\[rs]n", cmd[0]);
                 break;
             }
         }
diff --git a/man/man3/getdate.3 b/man/man3/getdate.3
index 74e4a086e..57ad74d99 100644
--- a/man/man3/getdate.3
+++ b/man/man3/getdate.3
@@ -293,21 +293,21 @@ .SS Program source
         tmp =3D getdate(argv[j]);
 \&
         if (tmp =3D=3D NULL) {
-            printf("Call %zu failed; getdate_err =3D %d\en",
+            printf("Call %zu failed; getdate_err =3D %d\[rs]n",
                    j, getdate_err);
             continue;
         }
 \&
-        printf("Call %zu (\e"%s\e") succeeded:\en", j, argv[j]);
-        printf("    tm_sec   =3D %d\en", tmp\->tm_sec);
-        printf("    tm_min   =3D %d\en", tmp\->tm_min);
-        printf("    tm_hour  =3D %d\en", tmp\->tm_hour);
-        printf("    tm_mday  =3D %d\en", tmp\->tm_mday);
-        printf("    tm_mon   =3D %d\en", tmp\->tm_mon);
-        printf("    tm_year  =3D %d\en", tmp\->tm_year);
-        printf("    tm_wday  =3D %d\en", tmp\->tm_wday);
-        printf("    tm_yday  =3D %d\en", tmp\->tm_yday);
-        printf("    tm_isdst =3D %d\en", tmp\->tm_isdst);
+        printf("Call %zu (\[rs]"%s\[rs]") succeeded:\[rs]n", j, argv[j]);
+        printf("    tm_sec   =3D %d\[rs]n", tmp\->tm_sec);
+        printf("    tm_min   =3D %d\[rs]n", tmp\->tm_min);
+        printf("    tm_hour  =3D %d\[rs]n", tmp\->tm_hour);
+        printf("    tm_mday  =3D %d\[rs]n", tmp\->tm_mday);
+        printf("    tm_mon   =3D %d\[rs]n", tmp\->tm_mon);
+        printf("    tm_year  =3D %d\[rs]n", tmp\->tm_year);
+        printf("    tm_wday  =3D %d\[rs]n", tmp\->tm_wday);
+        printf("    tm_yday  =3D %d\[rs]n", tmp\->tm_yday);
+        printf("    tm_isdst =3D %d\[rs]n", tmp\->tm_isdst);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/getgrent_r.3 b/man/man3/getgrent_r.3
index 6c3018787..688f81689 100644
--- a/man/man3/getgrent_r.3
+++ b/man/man3/getgrent_r.3
@@ -203,7 +203,7 @@ .SH EXAMPLES
                 break;
             printf(" %s", grpp\->gr_mem[j]);
         }
-        printf("\en");
+        printf("\[rs]n");
     }
     endgrent();
     exit(EXIT_SUCCESS);
diff --git a/man/man3/getgrouplist.3 b/man/man3/getgrouplist.3
index 61d3b7a9b..d8c761019 100644
--- a/man/man3/getgrouplist.3
+++ b/man/man3/getgrouplist.3
@@ -149,7 +149,7 @@ .SS Program source
     struct passwd  *pw;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <user> <ngroups>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <user> <ngroups>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -169,27 +169,27 @@ .SS Program source
         if (errno)
             perror("getpwnam");
         else
-            fprintf(stderr, "no such user\en");
+            fprintf(stderr, "no such user\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
     /* Retrieve group list. */
 \&
     if (getgrouplist(argv[1], pw\->pw_gid, groups, &ngroups) =3D=3D \-1) {
-        fprintf(stderr, "getgrouplist() returned \-1; ngroups =3D %d\en",
+        fprintf(stderr, "getgrouplist() returned \-1; ngroups =3D %d\[rs]n=
",
                 ngroups);
         exit(EXIT_FAILURE);
     }
 \&
     /* Display list of retrieved groups, along with group names. */
 \&
-    fprintf(stderr, "ngroups =3D %d\en", ngroups);
+    fprintf(stderr, "ngroups =3D %d\[rs]n", ngroups);
     for (int j =3D 0; j < ngroups; j++) {
         printf("%d", groups[j]);
         gr =3D getgrgid(groups[j]);
         if (gr !=3D NULL)
             printf(" (%s)", gr\->gr_name);
-        printf("\en");
+        printf("\[rs]n");
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/getifaddrs.3 b/man/man3/getifaddrs.3
index 3ecaf71c0..8a13821e6 100644
--- a/man/man3/getifaddrs.3
+++ b/man/man3/getifaddrs.3
@@ -269,7 +269,7 @@ .SS Program source
         /* Display interface name and family (including symbolic
            form of the latter for the common families). */
 \&
-        printf("%\-8s %s (%d)\en",
+        printf("%\-8s %s (%d)\[rs]n",
                ifa\->ifa_name,
                (family =3D=3D AF_PACKET) ? "AF_PACKET" :
                (family =3D=3D AF_INET) ? "AF_INET" :
@@ -285,17 +285,17 @@ .SS Program source
                     host, NI_MAXHOST,
                     NULL, 0, NI_NUMERICHOST);
             if (s !=3D 0) {
-                printf("getnameinfo() failed: %s\en", gai_strerror(s));
+                printf("getnameinfo() failed: %s\[rs]n", gai_strerror(s));
                 exit(EXIT_FAILURE);
             }
 \&
-            printf("\et\etaddress: <%s>\en", host);
+            printf("\[rs]t\[rs]taddress: <%s>\[rs]n", host);
 \&
         } else if (family =3D=3D AF_PACKET && ifa\->ifa_data !=3D NULL) {
             struct rtnl_link_stats *stats =3D ifa\->ifa_data;
 \&
-            printf("\et\ettx_packets =3D %10u; rx_packets =3D %10u\en"
-                   "\et\ettx_bytes   =3D %10u; rx_bytes   =3D %10u\en",
+            printf("\[rs]t\[rs]ttx_packets =3D %10u; rx_packets =3D %10u\[=
rs]n"
+                   "\[rs]t\[rs]ttx_bytes   =3D %10u; rx_bytes   =3D %10u\[=
rs]n",
                    stats\->tx_packets, stats\->rx_packets,
                    stats\->tx_bytes, stats\->rx_bytes);
         }
diff --git a/man/man3/getline.3 b/man/man3/getline.3
index e9afc06eb..c9b018560 100644
--- a/man/man3/getline.3
+++ b/man/man3/getline.3
@@ -91,7 +91,7 @@ .SH RETURN VALUE
 and
 .BR getdelim ()
 return the number of characters read, including the delimiter character,
-but not including the terminating null byte (\[aq]\e0\[aq]).
+but not including the terminating null byte (\[aq]\[rs]0\[aq]).
 This value can be used
 to handle embedded null bytes in the line read.
 .P
@@ -153,7 +153,7 @@ .SH EXAMPLES
     ssize_t nread;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <file>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <file>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -164,7 +164,7 @@ .SH EXAMPLES
     }
 \&
     while ((nread =3D getline(&line, &len, stream)) !=3D \-1) {
-        printf("Retrieved line of length %zd:\en", nread);
+        printf("Retrieved line of length %zd:\[rs]n", nread);
         fwrite(line, nread, 1, stdout);
     }
 \&
diff --git a/man/man3/getlogin.3 b/man/man3/getlogin.3
index f27dfb2d6..da8d04df6 100644
--- a/man/man3/getlogin.3
+++ b/man/man3/getlogin.3
@@ -108,7 +108,7 @@ .SH ERRORS
 .TP
 .B ERANGE
 (getlogin_r)
-The length of the username, including the terminating null byte (\[aq]\e0\=
[aq]),
+The length of the username, including the terminating null byte (\[aq]\[rs=
]0\[aq]),
 is larger than
 .IR bufsize .
 .P
diff --git a/man/man3/getmntent.3 b/man/man3/getmntent.3
index 4f22658ef..3b6d8bc8a 100644
--- a/man/man3/getmntent.3
+++ b/man/man3/getmntent.3
@@ -157,8 +157,8 @@ .SH DESCRIPTION
 .in
 .P
 Since fields in the mtab and fstab files are separated by whitespace,
-octal escapes are used to represent the characters space (\e040),
-tab (\e011), newline (\e012), and backslash (\e\e) in those files
+octal escapes are used to represent the characters space (\[rs]040),
+tab (\[rs]011), newline (\[rs]012), and backslash (\[rs]\[rs]) in those fi=
les
 when they occur in one of the four strings in a
 .I mntent
 structure.
@@ -168,7 +168,7 @@ .SH DESCRIPTION
 .BR getmntent ()
 will convert
 from string representation to escaped representation and back.
-When converting from escaped representation, the sequence \e134 is
+When converting from escaped representation, the sequence \[rs]134 is
 also converted to a backslash.
 .SH RETURN VALUE
 The
diff --git a/man/man3/getnameinfo.3 b/man/man3/getnameinfo.3
index 16c202fc4..b800f315d 100644
--- a/man/man3/getnameinfo.3
+++ b/man/man3/getnameinfo.3
@@ -285,7 +285,7 @@ .SH EXAMPLES
 \&
 if (getnameinfo(addr, addrlen, hbuf, sizeof(hbuf), sbuf,
             sizeof(sbuf), NI_NUMERICHOST | NI_NUMERICSERV) =3D=3D 0)
-    printf("host=3D%s, serv=3D%s\en", hbuf, sbuf);
+    printf("host=3D%s, serv=3D%s\[rs]n", hbuf, sbuf);
 .EE
 .in
 .P
@@ -302,7 +302,7 @@ .SH EXAMPLES
             NULL, 0, NI_NAMEREQD))
     printf("could not resolve hostname");
 else
-    printf("host=3D%s\en", hbuf);
+    printf("host=3D%s\[rs]n", hbuf);
 .EE
 .in
 .P
diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
index 02d0ea141..7963d910e 100644
--- a/man/man3/getopt.3
+++ b/man/man3/getopt.3
@@ -463,21 +463,21 @@ .SS getopt()
             tfnd =3D 1;
             break;
         default: /* \[aq]?\[aq] */
-            fprintf(stderr, "Usage: %s [\-t nsecs] [\-n] name\en",
+            fprintf(stderr, "Usage: %s [\-t nsecs] [\-n] name\[rs]n",
                     argv[0]);
             exit(EXIT_FAILURE);
         }
     }
 \&
-    printf("flags=3D%d; tfnd=3D%d; nsecs=3D%d; optind=3D%d\en",
+    printf("flags=3D%d; tfnd=3D%d; nsecs=3D%d; optind=3D%d\[rs]n",
            flags, tfnd, nsecs, optind);
 \&
     if (optind >=3D argc) {
-        fprintf(stderr, "Expected argument after options\en");
+        fprintf(stderr, "Expected argument after options\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
-    printf("name argument =3D %s\en", argv[optind]);
+    printf("name argument =3D %s\[rs]n", argv[optind]);
 \&
     /* Other code omitted */
 \&
@@ -525,39 +525,39 @@ .SS getopt_long()
             printf("option %s", long_options[option_index].name);
             if (optarg)
                 printf(" with arg %s", optarg);
-            printf("\en");
+            printf("\[rs]n");
             break;
 \&
         case \[aq]0\[aq]:
         case \[aq]1\[aq]:
         case \[aq]2\[aq]:
             if (digit_optind !=3D 0 && digit_optind !=3D this_option_optin=
d)
-              printf("digits occur in two different argv\-elements.\en");
+              printf("digits occur in two different argv\-elements.\[rs]n"=
);
             digit_optind =3D this_option_optind;
-            printf("option %c\en", c);
+            printf("option %c\[rs]n", c);
             break;
 \&
         case \[aq]a\[aq]:
-            printf("option a\en");
+            printf("option a\[rs]n");
             break;
 \&
         case \[aq]b\[aq]:
-            printf("option b\en");
+            printf("option b\[rs]n");
             break;
 \&
         case \[aq]c\[aq]:
-            printf("option c with value \[aq]%s\[aq]\en", optarg);
+            printf("option c with value \[aq]%s\[aq]\[rs]n", optarg);
             break;
 \&
         case \[aq]d\[aq]:
-            printf("option d with value \[aq]%s\[aq]\en", optarg);
+            printf("option d with value \[aq]%s\[aq]\[rs]n", optarg);
             break;
 \&
         case \[aq]?\[aq]:
             break;
 \&
         default:
-            printf("?? getopt returned character code 0%o ??\en", c);
+            printf("?? getopt returned character code 0%o ??\[rs]n", c);
         }
     }
 \&
@@ -565,7 +565,7 @@ .SS getopt_long()
         printf("non\-option ARGV\-elements: ");
         while (optind < argc)
             printf("%s ", argv[optind++]);
-        printf("\en");
+        printf("\[rs]n");
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/getpass.3 b/man/man3/getpass.3
index 979da4949..9abf657e2 100644
--- a/man/man3/getpass.3
+++ b/man/man3/getpass.3
@@ -56,7 +56,7 @@ .SH RETURN VALUE
 returns a pointer to a static buffer containing (the first
 .B PASS_MAX
 bytes of) the password without the trailing
-newline, terminated by a null byte (\[aq]\e0\[aq]).
+newline, terminated by a null byte (\[aq]\[rs]0\[aq]).
 This buffer may be overwritten by a following call.
 On error, the terminal state is restored,
 .I errno
@@ -104,7 +104,7 @@ .SH NOTES
 .\" .BR SIGSTOP ,
 .\" .BR SIGTSTP )
 .\" is disabled and the corresponding characters
-.\" (usually control-C, control-\e, control-Z and control-Y)
+.\" (usually control-C, control-\[rs], control-Z and control-Y)
 .\" are transmitted as part of the password.
 .\" Since libc 5.4.19 also line editing is disabled, so that also
 .\" backspace and the like will be seen as part of the password.
diff --git a/man/man3/getprotoent_r.3 b/man/man3/getprotoent_r.3
index 846eec936..b4251929b 100644
--- a/man/man3/getprotoent_r.3
+++ b/man/man3/getprotoent_r.3
@@ -185,7 +185,7 @@ .SS Program source
     char buf[MAX_BUF];
 \&
     if (argc < 2) {
-        printf("Usage: %s proto\-name [buflen]\en", argv[0]);
+        printf("Usage: %s proto\-name [buflen]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -194,7 +194,7 @@ .SS Program source
         buflen =3D atoi(argv[2]);
 \&
     if (buflen > MAX_BUF) {
-        printf("Exceeded buffer limit (%d)\en", MAX_BUF);
+        printf("Exceeded buffer limit (%d)\[rs]n", MAX_BUF);
         exit(EXIT_FAILURE);
     }
 \&
@@ -204,7 +204,7 @@ .SS Program source
                              buf, buflen, &result);
         if (s =3D=3D ERANGE) {
             if (erange_cnt =3D=3D 0)
-                printf("ERANGE! Retrying with larger buffer\en");
+                printf("ERANGE! Retrying with larger buffer\[rs]n");
             erange_cnt++;
 \&
             /* Increment a byte at a time so we can see exactly
@@ -213,18 +213,18 @@ .SS Program source
             buflen++;
 \&
             if (buflen > MAX_BUF) {
-                printf("Exceeded buffer limit (%d)\en", MAX_BUF);
+                printf("Exceeded buffer limit (%d)\[rs]n", MAX_BUF);
                 exit(EXIT_FAILURE);
             }
         }
     } while (s =3D=3D ERANGE);
 \&
-    printf("getprotobyname_r() returned: %s  (buflen=3D%d)\en",
+    printf("getprotobyname_r() returned: %s  (buflen=3D%d)\[rs]n",
            (s =3D=3D 0) ? "0 (success)" : (s =3D=3D ENOENT) ? "ENOENT" :
            strerror(s), buflen);
 \&
     if (s !=3D 0 || result =3D=3D NULL) {
-        printf("Call failed/record not found\en");
+        printf("Call failed/record not found\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -232,7 +232,7 @@ .SS Program source
            result_buf.p_name, result_buf.p_proto);
     for (char **p =3D result_buf.p_aliases; *p !=3D NULL; p++)
         printf("%s ", *p);
-    printf("\en");
+    printf("\[rs]n");
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/getpwent_r.3 b/man/man3/getpwent_r.3
index 5433e6ae6..8ce8525c1 100644
--- a/man/man3/getpwent_r.3
+++ b/man/man3/getpwent_r.3
@@ -200,7 +200,7 @@ .SH EXAMPLES
         i =3D getpwent_r(&pw, buf, sizeof(buf), &pwp);
         if (i)
             break;
-        printf("%s (%jd)\etHOME %s\etSHELL %s\en", pwp\->pw_name,
+        printf("%s (%jd)\[rs]tHOME %s\[rs]tSHELL %s\[rs]n", pwp\->pw_name,
                (intmax_t) pwp\->pw_uid, pwp\->pw_dir, pwp\->pw_shell);
     }
     endpwent();
diff --git a/man/man3/getpwnam.3 b/man/man3/getpwnam.3
index 7974fd229..3393a66ec 100644
--- a/man/man3/getpwnam.3
+++ b/man/man3/getpwnam.3
@@ -307,7 +307,7 @@ .SH EXAMPLES
     int s;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s username\en", argv[0]);
+        fprintf(stderr, "Usage: %s username\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -324,7 +324,7 @@ .SH EXAMPLES
     s =3D getpwnam_r(argv[1], &pwd, buf, bufsize, &result);
     if (result =3D=3D NULL) {
         if (s =3D=3D 0)
-            printf("Not found\en");
+            printf("Not found\[rs]n");
         else {
             errno =3D s;
             perror("getpwnam_r");
@@ -332,7 +332,7 @@ .SH EXAMPLES
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Name: %s; UID: %jd\en", pwd.pw_gecos,
+    printf("Name: %s; UID: %jd\[rs]n", pwd.pw_gecos,
            (intmax_t) pwd.pw_uid);
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/gets.3 b/man/man3/gets.3
index 8ffffaaa6..ee7cdfdf0 100644
--- a/man/man3/gets.3
+++ b/man/man3/gets.3
@@ -29,7 +29,7 @@ .SH DESCRIPTION
 .I s
 until either a terminating newline or
 .BR EOF ,
-which it replaces with a null byte (\[aq]\e0\[aq]).
+which it replaces with a null byte (\[aq]\[rs]0\[aq]).
 No check for buffer overrun is performed (see BUGS below).
 .SH RETURN VALUE
 .BR gets ()
diff --git a/man/man3/getservent_r.3 b/man/man3/getservent_r.3
index 50952d87d..020b57830 100644
--- a/man/man3/getservent_r.3
+++ b/man/man3/getservent_r.3
@@ -186,7 +186,7 @@ .SS Program source
     char *protop;
 \&
     if (argc < 3) {
-        printf("Usage: %s port\-num proto\-name [buflen]\en", argv[0]);
+        printf("Usage: %s port\-num proto\-name [buflen]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -199,7 +199,7 @@ .SS Program source
         buflen =3D atoi(argv[3]);
 \&
     if (buflen > MAX_BUF) {
-        printf("Exceeded buffer limit (%d)\en", MAX_BUF);
+        printf("Exceeded buffer limit (%d)\[rs]n", MAX_BUF);
         exit(EXIT_FAILURE);
     }
 \&
@@ -209,7 +209,7 @@ .SS Program source
                             buf, buflen, &result);
         if (s =3D=3D ERANGE) {
             if (erange_cnt =3D=3D 0)
-                printf("ERANGE! Retrying with larger buffer\en");
+                printf("ERANGE! Retrying with larger buffer\[rs]n");
             erange_cnt++;
 \&
             /* Increment a byte at a time so we can see exactly
@@ -218,18 +218,18 @@ .SS Program source
             buflen++;
 \&
             if (buflen > MAX_BUF) {
-                printf("Exceeded buffer limit (%d)\en", MAX_BUF);
+                printf("Exceeded buffer limit (%d)\[rs]n", MAX_BUF);
                 exit(EXIT_FAILURE);
             }
         }
     } while (s =3D=3D ERANGE);
 \&
-    printf("getservbyport_r() returned: %s  (buflen=3D%d)\en",
+    printf("getservbyport_r() returned: %s  (buflen=3D%d)\[rs]n",
            (s =3D=3D 0) ? "0 (success)" : (s =3D=3D ENOENT) ? "ENOENT" :
            strerror(s), buflen);
 \&
     if (s !=3D 0 || result =3D=3D NULL) {
-        printf("Call failed/record not found\en");
+        printf("Call failed/record not found\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -238,7 +238,7 @@ .SS Program source
            ntohs(result_buf.s_port));
     for (char **p =3D result_buf.s_aliases; *p !=3D NULL; p++)
         printf("%s ", *p);
-    printf("\en");
+    printf("\[rs]n");
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/getsubopt.3 b/man/man3/getsubopt.3
index e5da55405..74d0f98b2 100644
--- a/man/man3/getsubopt.3
+++ b/man/man3/getsubopt.3
@@ -108,7 +108,7 @@ .SH DESCRIPTION
 returns,
 .I optionp
 points to the next suboption,
-or to the null byte (\[aq]\e0\[aq]) at the end of the
+or to the null byte (\[aq]\[rs]0\[aq]) at the end of the
 string if the last suboption was just processed.
 .SH RETURN VALUE
 If the first suboption in
@@ -191,7 +191,7 @@ .SH EXAMPLES
         switch (opt) {
         case \[aq]o\[aq]:
             subopts =3D optarg;
-            while (*subopts !=3D \[aq]\e0\[aq] && !errfnd) {
+            while (*subopts !=3D \[aq]\[rs]0\[aq] && !errfnd) {
 \&
                 switch (getsubopt(&subopts, token, &value)) {
                 case RO_OPT:
@@ -205,7 +205,7 @@ .SH EXAMPLES
                 case NAME_OPT:
                     if (value =3D=3D NULL) {
                         fprintf(stderr,
-                                "Missing value for suboption \[aq]%s\[aq]\=
en",
+                                "Missing value for suboption \[aq]%s\[aq]\=
[rs]n",
                                 token[NAME_OPT]);
                         errfnd =3D 1;
                         continue;
@@ -216,14 +216,14 @@ .SH EXAMPLES
 \&
                 default:
                     fprintf(stderr,
-                            "No match found for token: /%s/\en", value);
+                            "No match found for token: /%s/\[rs]n", value);
                     errfnd =3D 1;
                     break;
                 }
             }
             if (readwrite && readonly) {
                 fprintf(stderr,
-                        "Only one of \[aq]%s\[aq] and \[aq]%s\[aq] can be =
specified\en",
+                        "Only one of \[aq]%s\[aq] and \[aq]%s\[aq] can be =
specified\[rs]n",
                         token[RO_OPT], token[RW_OPT]);
                 errfnd =3D 1;
             }
@@ -235,9 +235,9 @@ .SH EXAMPLES
     }
 \&
     if (errfnd || argc =3D=3D 1) {
-        fprintf(stderr, "\enUsage: %s \-o <suboptstring>\en", argv[0]);
+        fprintf(stderr, "\[rs]nUsage: %s \-o <suboptstring>\[rs]n", argv[0=
]);
         fprintf(stderr,
-                "suboptions are \[aq]ro\[aq], \[aq]rw\[aq], and \[aq]name=
=3D<value>\[aq]\en");
+                "suboptions are \[aq]ro\[aq], \[aq]rw\[aq], and \[aq]name=
=3D<value>\[aq]\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man3/glob.3 b/man/man3/glob.3
index 130a6ce60..214836a91 100644
--- a/man/man3/glob.3
+++ b/man/man3/glob.3
@@ -112,7 +112,7 @@ .SH DESCRIPTION
 .BR glob ().
 .TP
 .B GLOB_NOESCAPE
-Don't allow backslash (\[aq]\e\[aq]) to be used as an escape
+Don't allow backslash (\[aq]\[rs]\[aq]) to be used as an escape
 character.
 Normally, a backslash can be used to quote the following character,
 providing a mechanism to turn off the special meaning
diff --git a/man/man3/gnu_get_libc_version.3 b/man/man3/gnu_get_libc_versio=
n.3
index d08ecc4b9..a50f108d4 100644
--- a/man/man3/gnu_get_libc_version.3
+++ b/man/man3/gnu_get_libc_version.3
@@ -69,8 +69,8 @@ .SS Program source
 int
 main(void)
 {
-    printf("GNU libc version: %s\en", gnu_get_libc_version());
-    printf("GNU libc release: %s\en", gnu_get_libc_release());
+    printf("GNU libc version: %s\[rs]n", gnu_get_libc_version());
+    printf("GNU libc release: %s\[rs]n", gnu_get_libc_release());
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/hsearch.3 b/man/man3/hsearch.3
index 1234228c0..91f184a88 100644
--- a/man/man3/hsearch.3
+++ b/man/man3/hsearch.3
@@ -330,7 +330,7 @@ .SH EXAMPLES
         ep =3D hsearch(e, ENTER);
         /* there should be no failures */
         if (ep =3D=3D NULL) {
-            fprintf(stderr, "entry failed\en");
+            fprintf(stderr, "entry failed\[rs]n");
             exit(EXIT_FAILURE);
         }
     }
@@ -340,7 +340,7 @@ .SH EXAMPLES
            show that two are not in the table */
         e.key =3D data[i];
         ep =3D hsearch(e, FIND);
-        printf("%9.9s \-> %9.9s:%d\en", e.key,
+        printf("%9.9s \-> %9.9s:%d\[rs]n", e.key,
                ep ? ep\->key : "NULL", ep ? (int)(ep\->data) : 0);
     }
     hdestroy();
diff --git a/man/man3/if_nameindex.3 b/man/man3/if_nameindex.3
index 32afb1763..38f0f3a62 100644
--- a/man/man3/if_nameindex.3
+++ b/man/man3/if_nameindex.3
@@ -137,7 +137,7 @@ .SS Program source
     }
 \&
     for (i =3D if_ni; !(i\->if_index =3D=3D 0 && i\->if_name =3D=3D NULL);=
 i++)
-        printf("%u: %s\en", i\->if_index, i\->if_name);
+        printf("%u: %s\[rs]n", i\->if_index, i\->if_name);
 \&
     if_freenameindex(if_ni);
 \&
diff --git a/man/man3/inet.3 b/man/man3/inet.3
index 9e292f08a..f72245b4e 100644
--- a/man/man3/inet.3
+++ b/man/man3/inet.3
@@ -309,16 +309,16 @@ .SS Program source
     struct in_addr addr;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "%s <dotted\-address>\en", argv[0]);
+        fprintf(stderr, "%s <dotted\-address>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     if (inet_aton(argv[1], &addr) =3D=3D 0) {
-        fprintf(stderr, "Invalid address\en");
+        fprintf(stderr, "Invalid address\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
-    printf("%s\en", inet_ntoa(addr));
+    printf("%s\[rs]n", inet_ntoa(addr));
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/inet_net_pton.3 b/man/man3/inet_net_pton.3
index c66ee8257..d0421bc67 100644
--- a/man/man3/inet_net_pton.3
+++ b/man/man3/inet_net_pton.3
@@ -312,7 +312,7 @@ .SS Program source
 #include <stdio.h>
 #include <stdlib.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 int
@@ -324,7 +324,7 @@ .SS Program source
 \&
     if (argc < 2) {
         fprintf(stderr,
-                "Usage: %s presentation\-form [addr\-init\-value]\en",
+                "Usage: %s presentation\-form [addr\-init\-value]\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -343,7 +343,7 @@ .SS Program source
     if (bits =3D=3D \-1)
         errExit("inet_net_ntop");
 \&
-    printf("inet_net_pton() returned: %d\en", bits);
+    printf("inet_net_pton() returned: %d\[rs]n", bits);
 \&
     /* Convert binary format back to presentation, using \[aq]bits\[aq]
        returned by inet_net_pton(). */
@@ -351,14 +351,14 @@ .SS Program source
     if (inet_net_ntop(AF_INET, &addr, bits, buf, sizeof(buf)) =3D=3D NULL)
         errExit("inet_net_ntop");
 \&
-    printf("inet_net_ntop() yielded:  %s\en", buf);
+    printf("inet_net_ntop() yielded:  %s\[rs]n", buf);
 \&
     /* Display \[aq]addr\[aq] in raw form (in network byte order), so we c=
an
        see bytes not displayed by inet_net_ntop(); some of those bytes
        may not have been touched by inet_net_ntop(), and so will still
        have any initial value that was specified in argv[2]. */
 \&
-    printf("Raw address:              %x\en", htonl(addr.s_addr));
+    printf("Raw address:              %x\[rs]n", htonl(addr.s_addr));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/inet_pton.3 b/man/man3/inet_pton.3
index b92046e40..10cce5561 100644
--- a/man/man3/inet_pton.3
+++ b/man/man3/inet_pton.3
@@ -190,7 +190,7 @@ .SS Program source
     char str[INET6_ADDRSTRLEN];
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s {i4|i6|<num>} string\en", argv[0]);
+        fprintf(stderr, "Usage: %s {i4|i6|<num>} string\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -211,7 +211,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("%s\en", str);
+    printf("%s\[rs]n", str);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/insque.3 b/man/man3/insque.3
index fedbbc214..8fb0e4db2 100644
--- a/man/man3/insque.3
+++ b/man/man3/insque.3
@@ -169,7 +169,7 @@ .SS Program source
 \&
     e =3D malloc(sizeof(*e));
     if (e =3D=3D NULL) {
-        fprintf(stderr, "malloc() failed\en");
+        fprintf(stderr, "malloc() failed\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -199,7 +199,7 @@ .SS Program source
     }
 \&
     if (errfnd || optind >=3D argc) {
-        fprintf(stderr,  "Usage: %s [\-c] string...\en", argv[0]);
+        fprintf(stderr,  "Usage: %s [\-c] string...\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -230,15 +230,15 @@ .SS Program source
 \&
     /* Traverse the list from the start, printing element names. */
 \&
-    printf("Traversing completed list:\en");
+    printf("Traversing completed list:\[rs]n");
     elem =3D first;
     do {
-        printf("    %s\en", elem\->name);
+        printf("    %s\[rs]n", elem\->name);
         elem =3D elem\->forward;
     } while (elem !=3D NULL && elem !=3D first);
 \&
     if (elem =3D=3D first)
-        printf("That was a circular list\en");
+        printf("That was a circular list\[rs]n");
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/isalpha.3 b/man/man3/isalpha.3
index 05d373780..6e113203b 100644
--- a/man/man3/isalpha.3
+++ b/man/man3/isalpha.3
@@ -174,15 +174,15 @@ .SH DESCRIPTION
 and
 .B \[dq]POSIX\[dq]
 locales, these are: space, form-feed
-.RB ( \[aq]\ef\[aq] ),
+.RB ( \[aq]\[rs]f\[aq] ),
 newline
-.RB ( \[aq]\en\[aq] ),
+.RB ( \[aq]\[rs]n\[aq] ),
 carriage return
-.RB ( \[aq]\er\[aq] ),
+.RB ( \[aq]\[rs]r\[aq] ),
 horizontal tab
-.RB ( \[aq]\et\[aq] ),
+.RB ( \[aq]\[rs]t\[aq] ),
 and vertical tab
-.RB ( \[aq]\ev\[aq] ).
+.RB ( \[aq]\[rs]v\[aq] ).
 .TP
 .BR isupper ()
 checks for an uppercase letter.
diff --git a/man/man3/iswblank.3 b/man/man3/iswblank.3
index 79c89ba59..58361f139 100644
--- a/man/man3/iswblank.3
+++ b/man/man3/iswblank.3
@@ -51,7 +51,7 @@ .SH DESCRIPTION
 .P
 The wide-character class "blank" always contains
 at least the space character
-and the control character \[aq]\et\[aq].
+and the control character \[aq]\[rs]t\[aq].
 .SH RETURN VALUE
 The
 .BR iswblank ()
diff --git a/man/man3/iswspace.3 b/man/man3/iswspace.3
index c89517b15..bb53c9aa7 100644
--- a/man/man3/iswspace.3
+++ b/man/man3/iswspace.3
@@ -44,7 +44,7 @@ .SH DESCRIPTION
 The wide-character class "space"
 always contains at least the space character
 and the control characters
-\[aq]\ef\[aq], \[aq]\en\[aq], \[aq]\er\[aq], \[aq]\et\[aq], and \[aq]\ev\[=
aq].
+\[aq]\[rs]f\[aq], \[aq]\[rs]n\[aq], \[aq]\[rs]r\[aq], \[aq]\[rs]t\[aq], an=
d \[aq]\[rs]v\[aq].
 .SH RETURN VALUE
 The
 .BR iswspace ()
diff --git a/man/man3/list.3 b/man/man3/list.3
index 6f33dbf99..d869f62b8 100644
--- a/man/man3/list.3
+++ b/man/man3/list.3
@@ -289,7 +289,7 @@ .SH EXAMPLES
     free(n2);
                                             /* Forward traversal */
     LIST_FOREACH(np, &head, entries)
-        printf("%i\en", np\->data);
+        printf("%i\[rs]n", np\->data);
                                             /* List deletion */
     n1 =3D LIST_FIRST(&head);
     while (n1 !=3D NULL) {
diff --git a/man/man3/makecontext.3 b/man/man3/makecontext.3
index 4ee3cc2c4..25bfd6e6d 100644
--- a/man/man3/makecontext.3
+++ b/man/man3/makecontext.3
@@ -175,27 +175,27 @@ .SS Program source
 \&
 static ucontext_t uctx_main, uctx_func1, uctx_func2;
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static void
 func1(void)
 {
-    printf("%s: started\en", __func__);
-    printf("%s: swapcontext(&uctx_func1, &uctx_func2)\en", __func__);
+    printf("%s: started\[rs]n", __func__);
+    printf("%s: swapcontext(&uctx_func1, &uctx_func2)\[rs]n", __func__);
     if (swapcontext(&uctx_func1, &uctx_func2) =3D=3D \-1)
         handle_error("swapcontext");
-    printf("%s: returning\en", __func__);
+    printf("%s: returning\[rs]n", __func__);
 }
 \&
 static void
 func2(void)
 {
-    printf("%s: started\en", __func__);
-    printf("%s: swapcontext(&uctx_func2, &uctx_func1)\en", __func__);
+    printf("%s: started\[rs]n", __func__);
+    printf("%s: swapcontext(&uctx_func2, &uctx_func1)\[rs]n", __func__);
     if (swapcontext(&uctx_func2, &uctx_func1) =3D=3D \-1)
         handle_error("swapcontext");
-    printf("%s: returning\en", __func__);
+    printf("%s: returning\[rs]n", __func__);
 }
 \&
 int
@@ -219,11 +219,11 @@ .SS Program source
     uctx_func2.uc_link =3D (argc > 1) ? NULL : &uctx_func1;
     makecontext(&uctx_func2, func2, 0);
 \&
-    printf("%s: swapcontext(&uctx_main, &uctx_func2)\en", __func__);
+    printf("%s: swapcontext(&uctx_main, &uctx_func2)\[rs]n", __func__);
     if (swapcontext(&uctx_main, &uctx_func2) =3D=3D \-1)
         handle_error("swapcontext");
 \&
-    printf("%s: exiting\en", __func__);
+    printf("%s: exiting\[rs]n", __func__);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/mallinfo.3 b/man/man3/mallinfo.3
index 20ac7f896..3e1ac26cd 100644
--- a/man/man3/mallinfo.3
+++ b/man/man3/mallinfo.3
@@ -267,16 +267,16 @@ .SS Program source
 \&
     mi =3D mallinfo2();
 \&
-    printf("Total non\-mmapped bytes (arena):       %zu\en", mi.arena);
-    printf("# of free chunks (ordblks):            %zu\en", mi.ordblks);
-    printf("# of free fastbin blocks (smblks):     %zu\en", mi.smblks);
-    printf("# of mapped regions (hblks):           %zu\en", mi.hblks);
-    printf("Bytes in mapped regions (hblkhd):      %zu\en", mi.hblkhd);
-    printf("Max. total allocated space (usmblks):  %zu\en", mi.usmblks);
-    printf("Free bytes held in fastbins (fsmblks): %zu\en", mi.fsmblks);
-    printf("Total allocated space (uordblks):      %zu\en", mi.uordblks);
-    printf("Total free space (fordblks):           %zu\en", mi.fordblks);
-    printf("Topmost releasable block (keepcost):   %zu\en", mi.keepcost);
+    printf("Total non\-mmapped bytes (arena):       %zu\[rs]n", mi.arena);
+    printf("# of free chunks (ordblks):            %zu\[rs]n", mi.ordblks);
+    printf("# of free fastbin blocks (smblks):     %zu\[rs]n", mi.smblks);
+    printf("# of mapped regions (hblks):           %zu\[rs]n", mi.hblks);
+    printf("Bytes in mapped regions (hblkhd):      %zu\[rs]n", mi.hblkhd);
+    printf("Max. total allocated space (usmblks):  %zu\[rs]n", mi.usmblks);
+    printf("Free bytes held in fastbins (fsmblks): %zu\[rs]n", mi.fsmblks);
+    printf("Total allocated space (uordblks):      %zu\[rs]n", mi.uordblks=
);
+    printf("Total free space (fordblks):           %zu\[rs]n", mi.fordblks=
);
+    printf("Topmost releasable block (keepcost):   %zu\[rs]n", mi.keepcost=
);
 }
 \&
 int
@@ -288,7 +288,7 @@ .SS Program source
 \&
     if (argc < 3 || strcmp(argv[1], "\-\-help") =3D=3D 0) {
         fprintf(stderr, "%s num\-blocks block\-size [free\-step "
-                "[start\-free [end\-free]]]\en", argv[0]);
+                "[start\-free [end\-free]]]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -298,12 +298,12 @@ .SS Program source
     freeBegin =3D (argc > 4) ? atoi(argv[4]) : 0;
     freeEnd =3D (argc > 5) ? atoi(argv[5]) : numBlocks;
 \&
-    printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Before allocating b=
locks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\en");
+    printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Before allocating b=
locks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\[rs]n");
     display_mallinfo2();
 \&
     for (size_t j =3D 0; j < numBlocks; j++) {
         if (numBlocks >=3D MAX_ALLOCS) {
-            fprintf(stderr, "Too many allocations\en");
+            fprintf(stderr, "Too many allocations\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
@@ -314,13 +314,13 @@ .SS Program source
         }
     }
 \&
-    printf("\en=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D After allocating=
 blocks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\en");
+    printf("\[rs]n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D After allocat=
ing blocks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\[rs]n");
     display_mallinfo2();
 \&
     for (size_t j =3D freeBegin; j < freeEnd; j +=3D freeStep)
         free(alloc[j]);
 \&
-    printf("\en=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D After freeing bl=
ocks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\en");
+    printf("\[rs]n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D After freeing=
 blocks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\[rs]n");
     display_mallinfo2();
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/malloc_hook.3 b/man/man3/malloc_hook.3
index bddcdf3e2..0ed73e3bb 100644
--- a/man/man3/malloc_hook.3
+++ b/man/man3/malloc_hook.3
@@ -138,7 +138,7 @@ .SH EXAMPLES
     old_malloc_hook =3D __malloc_hook;
 \&
     /* printf() might call malloc(), so protect it too */
-    printf("malloc(%zu) called from %p returns %p\en",
+    printf("malloc(%zu) called from %p returns %p\[rs]n",
             size, caller, result);
 \&
     /* Restore our own hooks */
diff --git a/man/man3/malloc_info.3 b/man/man3/malloc_info.3
index 0aa55ba67..b293f4e3d 100644
--- a/man/man3/malloc_info.3
+++ b/man/man3/malloc_info.3
@@ -199,7 +199,7 @@ .SS Program source
 \&
     if (argc < 4) {
         fprintf(stderr,
-                "%s num\-threads num\-blocks block\-size [sleep\-time]\en",
+                "%s num\-threads num\-blocks block\-size [sleep\-time]\[rs=
]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -213,7 +213,7 @@ .SS Program source
     if (thr =3D=3D NULL)
         err(EXIT_FAILURE, "calloc");
 \&
-    printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Before allocating blocks =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\en");
+    printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Before allocating blocks =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\[rs]n");
     malloc_info(0, stdout);
 \&
     /* Create threads that allocate different amounts of memory. */
@@ -242,7 +242,7 @@ .SS Program source
     sleep(2);           /* Give all threads a chance to
                            complete allocations. */
 \&
-    printf("\en=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D After allocating block=
s =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\en");
+    printf("\[rs]n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D After allocating bl=
ocks =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\[rs]n");
     malloc_info(0, stdout);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/mallopt.3 b/man/man3/mallopt.3
index 822487251..b09871aa2 100644
--- a/man/man3/mallopt.3
+++ b/man/man3/mallopt.3
@@ -594,10 +594,10 @@ .SS Program source
     }
 \&
     free(p);
-    printf("%s(): returned from first free() call\en", __func__);
+    printf("%s(): returned from first free() call\[rs]n", __func__);
 \&
     free(p);
-    printf("%s(): returned from second free() call\en", __func__);
+    printf("%s(): returned from second free() call\[rs]n", __func__);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/matherr.3 b/man/man3/matherr.3
index 66b2f0fe8..36a5d4e60 100644
--- a/man/man3/matherr.3
+++ b/man/man3/matherr.3
@@ -374,7 +374,7 @@ .SS Program source
 int
 matherr(struct exception *exc)
 {
-    fprintf(stderr, "matherr %s exception in %s() function\en",
+    fprintf(stderr, "matherr %s exception in %s() function\[rs]n",
             (exc\->type =3D=3D DOMAIN) ?    "DOMAIN" :
             (exc\->type =3D=3D OVERFLOW) ?  "OVERFLOW" :
             (exc\->type =3D=3D UNDERFLOW) ? "UNDERFLOW" :
@@ -382,9 +382,9 @@ .SS Program source
             (exc\->type =3D=3D TLOSS) ?     "TLOSS" :
             (exc\->type =3D=3D PLOSS) ?     "PLOSS" : "???",
             exc\->name);
-    fprintf(stderr, "        args:   %f, %f\en",
+    fprintf(stderr, "        args:   %f, %f\[rs]n",
             exc\->arg1, exc\->arg2);
-    fprintf(stderr, "        retval: %f\en", exc\->retval);
+    fprintf(stderr, "        retval: %f\[rs]n", exc\->retval);
 \&
     if (change_retval)
         exc\->retval =3D new_retval;
@@ -399,7 +399,7 @@ .SS Program source
 \&
     if (argc < 2) {
         fprintf(stderr, "Usage: %s <argval>"
-                " [<matherr\-ret> [<new\-func\-retval>]]\en", argv[0]);
+                " [<matherr\-ret> [<new\-func\-retval>]]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -417,7 +417,7 @@ .SS Program source
     if (errno !=3D 0)
         perror("errno");
 \&
-    printf("x=3D%f\en", x);
+    printf("x=3D%f\[rs]n", x);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3
index 26d29b255..3c1fc99ad 100644
--- a/man/man3/mbrtowc.3
+++ b/man/man3/mbrtowc.3
@@ -42,11 +42,11 @@ .SH DESCRIPTION
 It updates the shift state
 .IR *ps .
 If the converted wide
-character is not L\[aq]\e0\[aq] (the null wide character),
+character is not L\[aq]\[rs]0\[aq] (the null wide character),
 it returns the number of bytes that were consumed
 from
 .IR s .
-If the converted wide character is L\[aq]\e0\[aq], it resets the shift
+If the converted wide character is L\[aq]\[rs]0\[aq], it resets the shift
 state
 .I *ps
 to the initial state and returns 0.
@@ -154,9 +154,9 @@ .SH RETURN VALUE
 function returns the number of bytes parsed from the
 multibyte sequence starting at
 .IR s ,
-if a non-L\[aq]\e0\[aq] wide character
+if a non-L\[aq]\[rs]0\[aq] wide character
 was recognized.
-It returns 0, if a L\[aq]\e0\[aq] wide character was recognized.
+It returns 0, if a L\[aq]\[rs]0\[aq] wide character was recognized.
 It returns
 .I (size_t)\ \-1
 and sets
diff --git a/man/man3/mbsnrtowcs.3 b/man/man3/mbsnrtowcs.3
index a8447e594..12d00b2ff 100644
--- a/man/man3/mbsnrtowcs.3
+++ b/man/man3/mbsnrtowcs.3
@@ -96,7 +96,7 @@ .SH DESCRIPTION
 limit forces a stop,
 or
 .I len
-non-L\[aq]\e0\[aq] wide characters
+non-L\[aq]\[rs]0\[aq] wide characters
 have been stored at
 .IR dest .
 In this case,
@@ -108,7 +108,7 @@ .SH DESCRIPTION
 is returned.
 .IP \[bu]
 The multibyte string has been completely converted, including the
-terminating null wide character (\[aq]\e0\[aq])
+terminating null wide character (\[aq]\[rs]0\[aq])
 (which has the side effect of bringing back
 .I *ps
 to the
diff --git a/man/man3/mbsrtowcs.3 b/man/man3/mbsrtowcs.3
index f061672b7..1328ce69a 100644
--- a/man/man3/mbsrtowcs.3
+++ b/man/man3/mbsrtowcs.3
@@ -64,7 +64,7 @@ .SH DESCRIPTION
 .BR EILSEQ .
 .IP \[bu]
 .I dsize
-non-L\[aq]\e0\[aq] wide characters have been stored at
+non-L\[aq]\[rs]0\[aq] wide characters have been stored at
 .IR dest .
 In this case,
 .I *src
@@ -75,7 +75,7 @@ .SH DESCRIPTION
 is returned.
 .IP \[bu]
 The multibyte string has been completely converted, including the
-terminating null wide character (\[aq]\e0\[aq]), which has the side
+terminating null wide character (\[aq]\[rs]0\[aq]), which has the side
 effect of bringing back
 .I *ps
 to the
diff --git a/man/man3/mbstowcs.3 b/man/man3/mbstowcs.3
index f08ce3258..fc945166d 100644
--- a/man/man3/mbstowcs.3
+++ b/man/man3/mbstowcs.3
@@ -48,7 +48,7 @@ .SH DESCRIPTION
 is returned.
 .IP \[bu]
 .I dsize
-non-L\[aq]\e0\[aq] wide characters have been stored at
+non-L\[aq]\[rs]0\[aq] wide characters have been stored at
 .IR dest .
 In this case, the number of wide characters written to
 .I dest
@@ -56,7 +56,7 @@ .SH DESCRIPTION
 shift state at this point is lost.
 .IP \[bu]
 The multibyte string has been completely converted, including the
-terminating null character (\[aq]\e0\[aq]).
+terminating null character (\[aq]\[rs]0\[aq]).
 In this case, the number of wide characters written to
 .IR dest ,
 excluding the terminating null wide character, is returned.
@@ -158,7 +158,7 @@ .SS Program source
     wchar_t *wcs;       /* Pointer to converted wide character string */
 \&
     if (argc < 3) {
-        fprintf(stderr, "Usage: %s <locale> <string>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <locale> <string>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -180,12 +180,12 @@ .SS Program source
 \&
     /* Describe the source string to the user. */
 \&
-    printf("Length of source string (excluding terminator):\en");
-    printf("    %zu bytes\en", strlen(argv[2]));
-    printf("    %zu multibyte characters\en\en", mbslen);
+    printf("Length of source string (excluding terminator):\[rs]n");
+    printf("    %zu bytes\[rs]n", strlen(argv[2]));
+    printf("    %zu multibyte characters\[rs]n\[rs]n", mbslen);
 \&
     /* Allocate wide character string of the desired size.  Add 1
-       to allow for terminating null wide character (L\[aq]\e0\[aq]). */
+       to allow for terminating null wide character (L\[aq]\[rs]0\[aq]). */
 \&
     wcs =3D calloc(mbslen + 1, sizeof(*wcs));
     if (wcs =3D=3D NULL) {
@@ -201,7 +201,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Wide character string is: %ls (%zu characters)\en",
+    printf("Wide character string is: %ls (%zu characters)\[rs]n",
            wcs, mbslen);
 \&
     /* Now do some inspection of the classes of the characters in
@@ -222,7 +222,7 @@ .SS Program source
                 printf("lower ");
         }
 \&
-        putchar(\[aq]\en\[aq]);
+        putchar(\[aq]\[rs]n\[aq]);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/mbtowc.3 b/man/man3/mbtowc.3
index 08739facb..9cd05db1e 100644
--- a/man/man3/mbtowc.3
+++ b/man/man3/mbtowc.3
@@ -43,7 +43,7 @@ .SH DESCRIPTION
 function.
 If
 .I s
-does not point to a null byte (\[aq]\e0\[aq]), it returns the number
+does not point to a null byte (\[aq]\[rs]0\[aq]), it returns the number
 of bytes that were consumed from
 .IR s ,
 otherwise it returns 0.
diff --git a/man/man3/mcheck.3 b/man/man3/mcheck.3
index 4b2920c19..81397c181 100644
--- a/man/man3/mcheck.3
+++ b/man/man3/mcheck.3
@@ -191,16 +191,16 @@ .SS Program source
     char *p;
 \&
     if (mcheck(NULL) !=3D 0) {
-        fprintf(stderr, "mcheck() failed\en");
+        fprintf(stderr, "mcheck() failed\[rs]n");
 \&
         exit(EXIT_FAILURE);
     }
 \&
     p =3D malloc(1000);
 \&
-    fprintf(stderr, "About to free\en");
+    fprintf(stderr, "About to free\[rs]n");
     free(p);
-    fprintf(stderr, "\enAbout to free a second time\en");
+    fprintf(stderr, "\[rs]nAbout to free a second time\[rs]n");
     free(p);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/mq_getattr.3 b/man/man3/mq_getattr.3
index 3d11c308c..63ea6e458 100644
--- a/man/man3/mq_getattr.3
+++ b/man/man3/mq_getattr.3
@@ -188,7 +188,7 @@ .SS Program source
 #include <sys/stat.h>
 #include <unistd.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 int
@@ -198,7 +198,7 @@ .SS Program source
     struct mq_attr attr;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s mq\-name\en", argv[0]);
+        fprintf(stderr, "Usage: %s mq\-name\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -209,8 +209,8 @@ .SS Program source
     if (mq_getattr(mqd, &attr) =3D=3D \-1)
         errExit("mq_getattr");
 \&
-    printf("Maximum # of messages on queue:   %ld\en", attr.mq_maxmsg);
-    printf("Maximum message size:             %ld\en", attr.mq_msgsize);
+    printf("Maximum # of messages on queue:   %ld\[rs]n", attr.mq_maxmsg);
+    printf("Maximum message size:             %ld\[rs]n", attr.mq_msgsize);
 \&
     if (mq_unlink(argv[1]) =3D=3D \-1)
         errExit("mq_unlink");
diff --git a/man/man3/mq_notify.3 b/man/man3/mq_notify.3
index 653e401c9..c32356da4 100644
--- a/man/man3/mq_notify.3
+++ b/man/man3/mq_notify.3
@@ -208,7 +208,7 @@ .SS Program source
 #include <stdlib.h>
 #include <unistd.h>
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static void                     /* Thread start function */
@@ -231,7 +231,7 @@ .SS Program source
     if (nr =3D=3D \-1)
         handle_error("mq_receive");
 \&
-    printf("Read %zd bytes from MQ\en", nr);
+    printf("Read %zd bytes from MQ\[rs]n", nr);
     free(buf);
     exit(EXIT_SUCCESS);         /* Terminate the process */
 }
@@ -243,7 +243,7 @@ .SS Program source
     struct sigevent sev;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <mq\-name>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <mq\-name>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man3/newlocale.3 b/man/man3/newlocale.3
index e6b29f875..23ce11475 100644
--- a/man/man3/newlocale.3
+++ b/man/man3/newlocale.3
@@ -280,7 +280,7 @@ .SS Program source
 #include <stdlib.h>
 #include <time.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 int
@@ -293,7 +293,7 @@ .SS Program source
     locale_t loc, nloc;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s locale1 [locale2]\en", argv[0]);
+        fprintf(stderr, "Usage: %s locale1 [locale2]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -323,7 +323,7 @@ .SS Program source
 \&
     /* Test effect of LC_NUMERIC. */
 \&
-    printf("%8.3f\en", 123456.789);
+    printf("%8.3f\[rs]n", 123456.789);
 \&
     /* Test effect of LC_TIME. */
 \&
@@ -336,7 +336,7 @@ .SS Program source
     if (s =3D=3D 0)
         errExit("strftime");
 \&
-    printf("%s\en", buf);
+    printf("%s\[rs]n", buf);
 \&
     /* Free the locale object. */
 \&
diff --git a/man/man3/nl_langinfo.3 b/man/man3/nl_langinfo.3
index 24cdfe88e..49608368c 100644
--- a/man/man3/nl_langinfo.3
+++ b/man/man3/nl_langinfo.3
@@ -336,8 +336,8 @@ .SH EXAMPLES
     setlocale(LC_CTYPE, "");
     setlocale(LC_NUMERIC, "");
 \&
-    printf("%s\en", nl_langinfo(CODESET));
-    printf("%s\en", nl_langinfo(RADIXCHAR));
+    printf("%s\[rs]n", nl_langinfo(CODESET));
+    printf("%s\[rs]n", nl_langinfo(RADIXCHAR));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/offsetof.3 b/man/man3/offsetof.3
index 7eea85c10..ec20a5ede 100644
--- a/man/man3/offsetof.3
+++ b/man/man3/offsetof.3
@@ -99,10 +99,10 @@ .SS Program source
 \&
     /* Output is compiler dependent */
 \&
-    printf("offsets: i=3D%zu; c=3D%zu; d=3D%zu a=3D%zu\en",
+    printf("offsets: i=3D%zu; c=3D%zu; d=3D%zu a=3D%zu\[rs]n",
            offsetof(struct s, i), offsetof(struct s, c),
            offsetof(struct s, d), offsetof(struct s, a));
-    printf("sizeof(struct s)=3D%zu\en", sizeof(struct s));
+    printf("sizeof(struct s)=3D%zu\[rs]n", sizeof(struct s));
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/perror.3 b/man/man3/perror.3
index 87a2520f1..1066bb92c 100644
--- a/man/man3/perror.3
+++ b/man/man3/perror.3
@@ -53,7 +53,7 @@ .SH DESCRIPTION
 .I s
 is not NULL and
 .I *s
-is not a null byte (\[aq]\e0\[aq])), the argument string
+is not a null byte (\[aq]\[rs]0\[aq])), the argument string
 .I s
 is printed, followed by a colon and a blank.
 Then an error message corresponding to the current value of
diff --git a/man/man3/posix_spawn.3 b/man/man3/posix_spawn.3
index 7eb96429f..6937b4dc8 100644
--- a/man/man3/posix_spawn.3
+++ b/man/man3/posix_spawn.3
@@ -667,11 +667,11 @@ .SS Program source
 #include <unistd.h>
 #include <wait.h>
 \&
-#define errExit(msg)    do { perror(msg); \e
+#define errExit(msg)    do { perror(msg); \[rs]
                              exit(EXIT_FAILURE); } while (0)
 \&
-#define errExitEN(en, msg) \e
-                        do { errno =3D en; perror(msg); \e
+#define errExitEN(en, msg) \[rs]
+                        do { errno =3D en; perror(msg); \[rs]
                              exit(EXIT_FAILURE); } while (0)
 \&
 char **environ;
@@ -758,7 +758,7 @@ .SS Program source
             errExitEN(s, "posix_spawn_file_actions_destroy");
     }
 \&
-    printf("PID of child: %jd\en", (intmax_t) child_pid);
+    printf("PID of child: %jd\[rs]n", (intmax_t) child_pid);
 \&
     /* Monitor status of the child until it terminates. */
 \&
@@ -769,13 +769,13 @@ .SS Program source
 \&
         printf("Child status: ");
         if (WIFEXITED(status)) {
-            printf("exited, status=3D%d\en", WEXITSTATUS(status));
+            printf("exited, status=3D%d\[rs]n", WEXITSTATUS(status));
         } else if (WIFSIGNALED(status)) {
-            printf("killed by signal %d\en", WTERMSIG(status));
+            printf("killed by signal %d\[rs]n", WTERMSIG(status));
         } else if (WIFSTOPPED(status)) {
-            printf("stopped by signal %d\en", WSTOPSIG(status));
+            printf("stopped by signal %d\[rs]n", WSTOPSIG(status));
         } else if (WIFCONTINUED(status)) {
-            printf("continued\en");
+            printf("continued\[rs]n");
         }
     } while (!WIFEXITED(status) && !WIFSIGNALED(status));
 \&
diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 15ed75439..54a0339ec 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -107,7 +107,7 @@ .SH DESCRIPTION
 .BR vsnprintf ()
 write at most
 .I size
-bytes (including the terminating null byte (\[aq]\e0\[aq])) to
+bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
 .IR str .
 .P
 The functions
@@ -794,7 +794,7 @@ .SS Conversion specifiers
 argument is expected to be a pointer to an array of character type (pointer
 to a string).
 Characters from the array are written up to (but not
-including) a terminating null byte (\[aq]\e0\[aq]);
+including) a terminating null byte (\[aq]\[rs]0\[aq]);
 if a precision is specified, no more than the number specified
 are written.
 If a precision is given, no null byte need be present;
@@ -884,7 +884,7 @@ .SH RETURN VALUE
 .BR vsnprintf ()
 do not write more than
 .I size
-bytes (including the terminating null byte (\[aq]\e0\[aq])).
+bytes (including the terminating null byte (\[aq]\[rs]0\[aq])).
 If the output was truncated due to this limit, then the return value
 is the number of characters (excluding the terminating null byte)
 which would have been written to the final string if enough space
@@ -1138,7 +1138,7 @@ .SH EXAMPLES
 .EX
 #include <math.h>
 #include <stdio.h>
-fprintf(stdout, "pi =3D %.5f\en", 4 * atan(1.0));
+fprintf(stdout, "pi =3D %.5f\[rs]n", 4 * atan(1.0));
 .EE
 .in
 .P
@@ -1152,7 +1152,7 @@ .SH EXAMPLES
 .in +4n
 .EX
 #include <stdio.h>
-fprintf(stdout, "%s, %s %d, %.2d:%.2d\en",
+fprintf(stdout, "%s, %s %d, %.2d:%.2d\[rs]n",
         weekday, month, day, hour, min);
 .EE
 .in
@@ -1176,7 +1176,7 @@ .SH EXAMPLES
 .P
 .in +4n
 .EX
-"%1$s, %3$d. %2$s, %4$d:%5$.2d\en"
+"%1$s, %3$d. %2$s, %4$d:%5$.2d\[rs]n"
 .EE
 .in
 .P
@@ -1207,7 +1207,7 @@ .SH EXAMPLES
     if (n < 0)
         return NULL;
 \&
-    size =3D (size_t) n + 1;      /* One extra byte for \[aq]\e0\[aq] */
+    size =3D (size_t) n + 1;      /* One extra byte for \[aq]\[rs]0\[aq] */
     p =3D malloc(size);
     if (p =3D=3D NULL)
         return NULL;
diff --git a/man/man3/pthread_attr_init.3 b/man/man3/pthread_attr_init.3
index dfd5ac67f..34b7f5070 100644
--- a/man/man3/pthread_attr_init.3
+++ b/man/man3/pthread_attr_init.3
@@ -167,7 +167,7 @@ .SS Program source
     s =3D pthread_attr_getdetachstate(attr, &i);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getdetachstate");
-    printf("%sDetach state        =3D %s\en", prefix,
+    printf("%sDetach state        =3D %s\[rs]n", prefix,
            (i =3D=3D PTHREAD_CREATE_DETACHED) ? "PTHREAD_CREATE_DETACHED" :
            (i =3D=3D PTHREAD_CREATE_JOINABLE) ? "PTHREAD_CREATE_JOINABLE" :
            "???");
@@ -175,7 +175,7 @@ .SS Program source
     s =3D pthread_attr_getscope(attr, &i);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getscope");
-    printf("%sScope               =3D %s\en", prefix,
+    printf("%sScope               =3D %s\[rs]n", prefix,
            (i =3D=3D PTHREAD_SCOPE_SYSTEM)  ? "PTHREAD_SCOPE_SYSTEM" :
            (i =3D=3D PTHREAD_SCOPE_PROCESS) ? "PTHREAD_SCOPE_PROCESS" :
            "???");
@@ -183,7 +183,7 @@ .SS Program source
     s =3D pthread_attr_getinheritsched(attr, &i);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getinheritsched");
-    printf("%sInherit scheduler   =3D %s\en", prefix,
+    printf("%sInherit scheduler   =3D %s\[rs]n", prefix,
            (i =3D=3D PTHREAD_INHERIT_SCHED)  ? "PTHREAD_INHERIT_SCHED" :
            (i =3D=3D PTHREAD_EXPLICIT_SCHED) ? "PTHREAD_EXPLICIT_SCHED" :
            "???");
@@ -191,7 +191,7 @@ .SS Program source
     s =3D pthread_attr_getschedpolicy(attr, &i);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getschedpolicy");
-    printf("%sScheduling policy   =3D %s\en", prefix,
+    printf("%sScheduling policy   =3D %s\[rs]n", prefix,
            (i =3D=3D SCHED_OTHER) ? "SCHED_OTHER" :
            (i =3D=3D SCHED_FIFO)  ? "SCHED_FIFO" :
            (i =3D=3D SCHED_RR)    ? "SCHED_RR" :
@@ -200,18 +200,18 @@ .SS Program source
     s =3D pthread_attr_getschedparam(attr, &sp);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getschedparam");
-    printf("%sScheduling priority =3D %d\en", prefix, sp.sched_priority);
+    printf("%sScheduling priority =3D %d\[rs]n", prefix, sp.sched_priority=
);
 \&
     s =3D pthread_attr_getguardsize(attr, &v);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getguardsize");
-    printf("%sGuard size          =3D %zu bytes\en", prefix, v);
+    printf("%sGuard size          =3D %zu bytes\[rs]n", prefix, v);
 \&
     s =3D pthread_attr_getstack(attr, &stkaddr, &v);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getstack");
-    printf("%sStack address       =3D %p\en", prefix, stkaddr);
-    printf("%sStack size          =3D %#zx bytes\en", prefix, v);
+    printf("%sStack address       =3D %p\[rs]n", prefix, stkaddr);
+    printf("%sStack size          =3D %#zx bytes\[rs]n", prefix, v);
 }
 \&
 static void *
@@ -228,8 +228,8 @@ .SS Program source
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_getattr_np");
 \&
-    printf("Thread attributes:\en");
-    display_pthread_attr(&gattr, "\et");
+    printf("Thread attributes:\[rs]n");
+    display_pthread_attr(&gattr, "\[rs]t");
 \&
     exit(EXIT_SUCCESS);         /* Terminate all threads */
 }
@@ -272,7 +272,7 @@ .SS Program source
         if (s !=3D 0)
             errc(EXIT_FAILURE, s, "posix_memalign");
 \&
-        printf("posix_memalign() allocated at %p\en", sp);
+        printf("posix_memalign() allocated at %p\[rs]n", sp);
 \&
         s =3D pthread_attr_setstack(&attr, sp, stack_size);
         if (s !=3D 0)
diff --git a/man/man3/pthread_cancel.3 b/man/man3/pthread_cancel.3
index 3fef2f1c5..df059f43a 100644
--- a/man/man3/pthread_cancel.3
+++ b/man/man3/pthread_cancel.3
@@ -155,7 +155,7 @@ .SS Program source
 #include <stdlib.h>
 #include <unistd.h>
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static void *
@@ -170,9 +170,9 @@ .SS Program source
     if (s !=3D 0)
         handle_error_en(s, "pthread_setcancelstate");
 \&
-    printf("%s(): started; cancelation disabled\en", __func__);
+    printf("%s(): started; cancelation disabled\[rs]n", __func__);
     sleep(5);
-    printf("%s(): about to enable cancelation\en", __func__);
+    printf("%s(): about to enable cancelation\[rs]n", __func__);
 \&
     s =3D pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, NULL);
     if (s !=3D 0)
@@ -184,7 +184,7 @@ .SS Program source
 \&
     /* Should never get here. */
 \&
-    printf("%s(): not canceled!\en", __func__);
+    printf("%s(): not canceled!\[rs]n", __func__);
     return NULL;
 }
 \&
@@ -203,7 +203,7 @@ .SS Program source
 \&
     sleep(2);           /* Give thread a chance to get started */
 \&
-    printf("%s(): sending cancelation request\en", __func__);
+    printf("%s(): sending cancelation request\[rs]n", __func__);
     s =3D pthread_cancel(thr);
     if (s !=3D 0)
         handle_error_en(s, "pthread_cancel");
@@ -215,9 +215,9 @@ .SS Program source
         handle_error_en(s, "pthread_join");
 \&
     if (res =3D=3D PTHREAD_CANCELED)
-        printf("%s(): thread was canceled\en", __func__);
+        printf("%s(): thread was canceled\[rs]n", __func__);
     else
-        printf("%s(): thread wasn\[aq]t canceled (shouldn\[aq]t happen!)\e=
n",
+        printf("%s(): thread wasn\[aq]t canceled (shouldn\[aq]t happen!)\[=
rs]n",
                __func__);
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/pthread_cleanup_push.3 b/man/man3/pthread_cleanup_pus=
h.3
index 7026929a8..a9427f6ef 100644
--- a/man/man3/pthread_cleanup_push.3
+++ b/man/man3/pthread_cleanup_push.3
@@ -236,7 +236,7 @@ .SS Program source
 #include <sys/types.h>
 #include <unistd.h>
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static int done =3D 0;
@@ -246,7 +246,7 @@ .SS Program source
 static void
 cleanup_handler(void *arg)
 {
-    printf("Called clean\-up handler\en");
+    printf("Called clean\-up handler\[rs]n");
     cnt =3D 0;
 }
 \&
@@ -255,7 +255,7 @@ .SS Program source
 {
     time_t curr;
 \&
-    printf("New thread started\en");
+    printf("New thread started\[rs]n");
 \&
     pthread_cleanup_push(cleanup_handler, NULL);
 \&
@@ -265,7 +265,7 @@ .SS Program source
         pthread_testcancel();           /* A cancelation point */
         if (curr < time(NULL)) {
             curr =3D time(NULL);
-            printf("cnt =3D %d\en", cnt);  /* A cancelation point */
+            printf("cnt =3D %d\[rs]n", cnt);  /* A cancelation point */
             cnt++;
         }
     }
@@ -293,7 +293,7 @@ .SS Program source
         done =3D 1;
 \&
     } else {
-        printf("Canceling thread\en");
+        printf("Canceling thread\[rs]n");
         s =3D pthread_cancel(thr);
         if (s !=3D 0)
             handle_error_en(s, "pthread_cancel");
@@ -304,9 +304,9 @@ .SS Program source
         handle_error_en(s, "pthread_join");
 \&
     if (res =3D=3D PTHREAD_CANCELED)
-        printf("Thread was canceled; cnt =3D %d\en", cnt);
+        printf("Thread was canceled; cnt =3D %d\[rs]n", cnt);
     else
-        printf("Thread terminated normally; cnt =3D %d\en", cnt);
+        printf("Thread terminated normally; cnt =3D %d\[rs]n", cnt);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/pthread_create.3 b/man/man3/pthread_create.3
index 793939b7f..76b7ac8a6 100644
--- a/man/man3/pthread_create.3
+++ b/man/man3/pthread_create.3
@@ -260,10 +260,10 @@ .SS Program source
 #include <sys/types.h>
 #include <unistd.h>
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
         do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 struct thread_info {    /* Used as argument to thread_start() */
@@ -281,14 +281,14 @@ .SS Program source
     struct thread_info *tinfo =3D arg;
     char *uargv;
 \&
-    printf("Thread %d: top of stack near %p; argv_string=3D%s\en",
+    printf("Thread %d: top of stack near %p; argv_string=3D%s\[rs]n",
            tinfo\->thread_num, (void *) &tinfo, tinfo\->argv_string);
 \&
     uargv =3D strdup(tinfo\->argv_string);
     if (uargv =3D=3D NULL)
         handle_error("strdup");
 \&
-    for (char *p =3D uargv; *p !=3D \[aq]\e0\[aq]; p++)
+    for (char *p =3D uargv; *p !=3D \[aq]\[rs]0\[aq]; p++)
         *p =3D toupper(*p);
 \&
     return uargv;
@@ -314,7 +314,7 @@ .SS Program source
             break;
 \&
         default:
-            fprintf(stderr, "Usage: %s [\-s stack\-size] arg...\en",
+            fprintf(stderr, "Usage: %s [\-s stack\-size] arg...\[rs]n",
                     argv[0]);
             exit(EXIT_FAILURE);
         }
@@ -369,7 +369,7 @@ .SS Program source
         if (s !=3D 0)
             handle_error_en(s, "pthread_join");
 \&
-        printf("Joined with thread %d; returned value was %s\en",
+        printf("Joined with thread %d; returned value was %s\[rs]n",
                tinfo[tnum].thread_num, (char *) res);
         free(res);      /* Free memory allocated by thread */
     }
diff --git a/man/man3/pthread_getattr_default_np.3 b/man/man3/pthread_getat=
tr_default_np.3
index 97f734eb9..7a796320d 100644
--- a/man/man3/pthread_getattr_default_np.3
+++ b/man/man3/pthread_getattr_default_np.3
@@ -121,17 +121,17 @@ .SS Program source
     s =3D pthread_attr_getstacksize(attr, &stacksize);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getstacksize");
-    printf("Stack size:          %zu\en", stacksize);
+    printf("Stack size:          %zu\[rs]n", stacksize);
 \&
     s =3D pthread_attr_getguardsize(attr, &guardsize);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getguardsize");
-    printf("Guard size:          %zu\en", guardsize);
+    printf("Guard size:          %zu\[rs]n", guardsize);
 \&
     s =3D pthread_attr_getschedpolicy(attr, &policy);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getschedpolicy");
-    printf("Scheduling policy:   %s\en",
+    printf("Scheduling policy:   %s\[rs]n",
            (policy =3D=3D SCHED_FIFO) ? "SCHED_FIFO" :
            (policy =3D=3D SCHED_RR) ? "SCHED_RR" :
            (policy =3D=3D SCHED_OTHER) ? "SCHED_OTHER" : "[unknown]");
@@ -139,12 +139,12 @@ .SS Program source
     s =3D pthread_attr_getschedparam(attr, &schedparam);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getschedparam");
-    printf("Scheduling priority: %d\en", schedparam.sched_priority);
+    printf("Scheduling priority: %d\[rs]n", schedparam.sched_priority);
 \&
     s =3D pthread_attr_getdetachstate(attr, &detachstate);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getdetachstate");
-    printf("Detach state:        %s\en",
+    printf("Detach state:        %s\[rs]n",
            (detachstate =3D=3D PTHREAD_CREATE_DETACHED) ? "DETACHED" :
            (detachstate =3D=3D PTHREAD_CREATE_JOINABLE) ? "JOINABLE" :
            "???");
@@ -152,7 +152,7 @@ .SS Program source
     s =3D pthread_attr_getinheritsched(attr, &inheritsched);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getinheritsched");
-    printf("Inherit scheduler:   %s\en",
+    printf("Inherit scheduler:   %s\[rs]n",
            (inheritsched =3D=3D PTHREAD_INHERIT_SCHED) ? "INHERIT" :
            (inheritsched =3D=3D PTHREAD_EXPLICIT_SCHED) ? "EXPLICIT" :
            "???");
diff --git a/man/man3/pthread_getattr_np.3 b/man/man3/pthread_getattr_np.3
index 2c9d7c196..de171fddc 100644
--- a/man/man3/pthread_getattr_np.3
+++ b/man/man3/pthread_getattr_np.3
@@ -194,7 +194,7 @@ .SS Program source
     s =3D pthread_attr_getguardsize(attr, &guard_size);
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_attr_getguardsize");
-    printf("%sGuard size          =3D %zu bytes\en", prefix, guard_size);
+    printf("%sGuard size          =3D %zu bytes\[rs]n", prefix, guard_size=
);
 \&
     s =3D pthread_attr_getstack(attr, &stack_addr, &stack_size);
     if (s !=3D 0)
@@ -202,8 +202,8 @@ .SS Program source
     printf("%sStack address       =3D %p", prefix, stack_addr);
     if (stack_size > 0)
         printf(" (EOS =3D %p)", (char *) stack_addr + stack_size);
-    printf("\en");
-    printf("%sStack size          =3D %#zx (%zu) bytes\en",
+    printf("\[rs]n");
+    printf("%sStack size          =3D %#zx (%zu) bytes\[rs]n",
            prefix, stack_size, stack_size);
 }
 \&
@@ -227,8 +227,8 @@ .SS Program source
 static void *           /* Start function for thread we create */
 thread_start(void *arg)
 {
-    printf("Attributes of created thread:\en");
-    display_thread_attributes(pthread_self(), "\et");
+    printf("Attributes of created thread:\[rs]n");
+    display_thread_attributes(pthread_self(), "\[rs]t");
 \&
     exit(EXIT_SUCCESS);         /* Terminate all threads */
 }
@@ -239,8 +239,8 @@ .SS Program source
     if (msg !=3D NULL)
         fputs(msg, stderr);
     fprintf(stderr, "Usage: %s [\-s stack\-size [\-a]]"
-            " [\-g guard\-size]\en", pname);
-    fprintf(stderr, "\et\et\-a means program should allocate stack\en");
+            " [\-g guard\-size]\[rs]n", pname);
+    fprintf(stderr, "\[rs]t\[rs]t\-a means program should allocate stack\[=
rs]n");
     exit(EXIT_FAILURE);
 }
 \&
@@ -267,10 +267,10 @@ .SS Program source
     }
 \&
     if (allocate_stack && stack_size =3D=3D \-1)
-        usage(argv[0], "Specifying \-a without \-s makes no sense\en");
+        usage(argv[0], "Specifying \-a without \-s makes no sense\[rs]n");
 \&
     if (argc > optind)
-        usage(argv[0], "Extraneous command\-line arguments\en");
+        usage(argv[0], "Extraneous command\-line arguments\[rs]n");
 \&
     if (stack_size !=3D -1 || guard_size > 0) {
         ret_attrp =3D attrp;
@@ -290,7 +290,7 @@ .SS Program source
                                stack_size);
             if (s !=3D 0)
                 errc(EXIT_FAILURE, s, "posix_memalign");
-            printf("Allocated thread stack at %p\en\en", stack_addr);
+            printf("Allocated thread stack at %p\[rs]n\[rs]n", stack_addr);
 \&
             s =3D pthread_attr_setstack(attrp, stack_addr, stack_size);
             if (s !=3D 0)
@@ -319,9 +319,9 @@ .SS Program source
     attrp =3D get_thread_attributes_from_cl(argc, argv, &attr);
 \&
     if (attrp !=3D NULL) {
-        printf("Thread attributes object after initializations:\en");
-        display_stack_related_attributes(attrp, "\et");
-        printf("\en");
+        printf("Thread attributes object after initializations:\[rs]n");
+        display_stack_related_attributes(attrp, "\[rs]t");
+        printf("\[rs]n");
     }
 \&
     s =3D pthread_create(&thr, attrp, &thread_start, NULL);
diff --git a/man/man3/pthread_getcpuclockid.3 b/man/man3/pthread_getcpucloc=
kid.3
index e352dfbce..e07413fdb 100644
--- a/man/man3/pthread_getcpuclockid.3
+++ b/man/man3/pthread_getcpuclockid.3
@@ -108,16 +108,16 @@ .SS Program source
 #include <time.h>
 #include <unistd.h>
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
         do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static void *
 thread_start(void *arg)
 {
-    printf("Subthread starting infinite loop\en");
+    printf("Subthread starting infinite loop\[rs]n");
     for (;;)
         continue;
 }
@@ -130,7 +130,7 @@ .SS Program source
     printf("%s", msg);
     if (clock_gettime(cid, &ts) =3D=3D \-1)
         handle_error("clock_gettime");
-    printf("%4jd.%03ld\en", (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
+    printf("%4jd.%03ld\[rs]n", (intmax_t) ts.tv_sec, ts.tv_nsec / 1000000);
 }
 \&
 int
@@ -144,10 +144,10 @@ .SS Program source
     if (s !=3D 0)
         handle_error_en(s, "pthread_create");
 \&
-    printf("Main thread sleeping\en");
+    printf("Main thread sleeping\[rs]n");
     sleep(1);
 \&
-    printf("Main thread consuming some CPU time...\en");
+    printf("Main thread consuming some CPU time...\[rs]n");
     for (unsigned int j =3D 0; j < 2000000; j++)
         getppid();
 \&
diff --git a/man/man3/pthread_mutexattr_setrobust.3 b/man/man3/pthread_mute=
xattr_setrobust.3
index 921d9e9c0..6f03864a4 100644
--- a/man/man3/pthread_mutexattr_setrobust.3
+++ b/man/man3/pthread_mutexattr_setrobust.3
@@ -196,7 +196,7 @@ .SS Program source
 #include <stdlib.h>
 #include <unistd.h>
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static pthread_mutex_t mtx;
@@ -204,9 +204,9 @@ .SS Program source
 static void *
 original_owner_thread(void *ptr)
 {
-    printf("[original owner] Setting lock...\en");
+    printf("[original owner] Setting lock...\[rs]n");
     pthread_mutex_lock(&mtx);
-    printf("[original owner] Locked. Now exiting without unlocking.\en");
+    printf("[original owner] Locked. Now exiting without unlocking.\[rs]n"=
);
     pthread_exit(NULL);
 }
 \&
@@ -229,25 +229,25 @@ .SS Program source
 \&
     /* "original_owner_thread" should have exited by now. */
 \&
-    printf("[main] Attempting to lock the robust mutex.\en");
+    printf("[main] Attempting to lock the robust mutex.\[rs]n");
     s =3D pthread_mutex_lock(&mtx);
     if (s =3D=3D EOWNERDEAD) {
-        printf("[main] pthread_mutex_lock() returned EOWNERDEAD\en");
-        printf("[main] Now make the mutex consistent\en");
+        printf("[main] pthread_mutex_lock() returned EOWNERDEAD\[rs]n");
+        printf("[main] Now make the mutex consistent\[rs]n");
         s =3D pthread_mutex_consistent(&mtx);
         if (s !=3D 0)
             handle_error_en(s, "pthread_mutex_consistent");
-        printf("[main] Mutex is now consistent; unlocking\en");
+        printf("[main] Mutex is now consistent; unlocking\[rs]n");
         s =3D pthread_mutex_unlock(&mtx);
         if (s !=3D 0)
             handle_error_en(s, "pthread_mutex_unlock");
 \&
         exit(EXIT_SUCCESS);
     } else if (s =3D=3D 0) {
-        printf("[main] pthread_mutex_lock() unexpectedly succeeded\en");
+        printf("[main] pthread_mutex_lock() unexpectedly succeeded\[rs]n");
         exit(EXIT_FAILURE);
     } else {
-        printf("[main] pthread_mutex_lock() unexpectedly failed\en");
+        printf("[main] pthread_mutex_lock() unexpectedly failed\[rs]n");
         handle_error_en(s, "pthread_mutex_lock");
     }
 }
diff --git a/man/man3/pthread_setaffinity_np.3 b/man/man3/pthread_setaffini=
ty_np.3
index 4e7147321..49e32cf62 100644
--- a/man/man3/pthread_setaffinity_np.3
+++ b/man/man3/pthread_setaffinity_np.3
@@ -187,10 +187,10 @@ .SH EXAMPLES
     if (s !=3D 0)
         errc(EXIT_FAILURE, s, "pthread_getaffinity_np");
 \&
-    printf("Set returned by pthread_getaffinity_np() contained:\en");
+    printf("Set returned by pthread_getaffinity_np() contained:\[rs]n");
     for (size_t j =3D 0; j < CPU_SETSIZE; j++)
         if (CPU_ISSET(j, &cpuset))
-            printf("    CPU %zu\en", j);
+            printf("    CPU %zu\[rs]n", j);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/pthread_setname_np.3 b/man/man3/pthread_setname_np.3
index 587dd3e8c..331985f6e 100644
--- a/man/man3/pthread_setname_np.3
+++ b/man/man3/pthread_setname_np.3
@@ -30,7 +30,7 @@ .SH DESCRIPTION
 multithreaded applications.
 The thread name is a meaningful C language string,
 whose length is restricted to 16 characters,
-including the terminating null byte (\[aq]\e0\[aq]).
+including the terminating null byte (\[aq]\[rs]0\[aq]).
 The
 .I thread
 argument specifies the thread whose name is to be changed;
@@ -173,7 +173,7 @@ .SS Program source
     if (rc !=3D 0)
         errc(EXIT_FAILURE, rc, "pthread_getname_np");
 \&
-    printf("Created a thread. Default name is: %s\en", thread_name);
+    printf("Created a thread. Default name is: %s\[rs]n", thread_name);
     rc =3D pthread_setname_np(thread, (argc > 1) ? argv[1] : "THREADFOO");
     if (rc !=3D 0)
         errc(EXIT_FAILURE, rc, "pthread_setname_np");
@@ -183,13 +183,13 @@ .SS Program source
     rc =3D pthread_getname_np(thread, thread_name, NAMELEN);
     if (rc !=3D 0)
         errc(EXIT_FAILURE, rc, "pthread_getname_np");
-    printf("The thread name after setting it is %s.\en", thread_name);
+    printf("The thread name after setting it is %s.\[rs]n", thread_name);
 \&
     rc =3D pthread_join(thread, NULL);
     if (rc !=3D 0)
         errc(EXIT_FAILURE, rc, "pthread_join");
 \&
-    printf("Done\en");
+    printf("Done\[rs]n");
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/pthread_setschedparam.3 b/man/man3/pthread_setschedpa=
ram.3
index 0bc45ccd5..62bb0f874 100644
--- a/man/man3/pthread_setschedparam.3
+++ b/man/man3/pthread_setschedparam.3
@@ -231,7 +231,7 @@ .SS Program source
 #include <stdlib.h>
 #include <unistd.h>
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 [[noreturn]]
@@ -241,20 +241,20 @@ .SS Program source
     if (msg !=3D NULL)
         fputs(msg, stderr);
 \&
-    fprintf(stderr, "Usage: %s [options]\en", prog_name);
-    fprintf(stderr, "Options are:\en");
-#define fpe(msg) fprintf(stderr, "\et%s", msg)          /* Shorter */
-    fpe("\-a<policy><prio> Set scheduling policy and priority in\en");
-    fpe("                 thread attributes object\en");
-    fpe("                 <policy> can be\en");
-    fpe("                     f  SCHED_FIFO\en");
-    fpe("                     r  SCHED_RR\en");
-    fpe("                     o  SCHED_OTHER\en");
-    fpe("\-A               Use default thread attributes object\en");
-    fpe("\-i {e|i}         Set inherit scheduler attribute to\en");
-    fpe("                 \[aq]explicit\[aq] or \[aq]inherit\[aq]\en");
-    fpe("\-m<policy><prio> Set scheduling policy and priority on\en");
-    fpe("                 main thread before pthread_create() call\en");
+    fprintf(stderr, "Usage: %s [options]\[rs]n", prog_name);
+    fprintf(stderr, "Options are:\[rs]n");
+#define fpe(msg) fprintf(stderr, "\[rs]t%s", msg)          /* Shorter */
+    fpe("\-a<policy><prio> Set scheduling policy and priority in\[rs]n");
+    fpe("                 thread attributes object\[rs]n");
+    fpe("                 <policy> can be\[rs]n");
+    fpe("                     f  SCHED_FIFO\[rs]n");
+    fpe("                     r  SCHED_RR\[rs]n");
+    fpe("                     o  SCHED_OTHER\[rs]n");
+    fpe("\-A               Use default thread attributes object\[rs]n");
+    fpe("\-i {e|i}         Set inherit scheduler attribute to\[rs]n");
+    fpe("                 \[aq]explicit\[aq] or \[aq]inherit\[aq]\[rs]n");
+    fpe("\-m<policy><prio> Set scheduling policy and priority on\[rs]n");
+    fpe("                 main thread before pthread_create() call\[rs]n");
     exit(EXIT_FAILURE);
 }
 \&
@@ -272,7 +272,7 @@ .SS Program source
 static void
 display_sched_attr(int policy, const struct sched_param *param)
 {
-    printf("    policy=3D%s, priority=3D%d\en",
+    printf("    policy=3D%s, priority=3D%d\[rs]n",
            (policy =3D=3D SCHED_FIFO)  ? "SCHED_FIFO" :
            (policy =3D=3D SCHED_RR)    ? "SCHED_RR" :
            (policy =3D=3D SCHED_OTHER) ? "SCHED_OTHER" :
@@ -290,7 +290,7 @@ .SS Program source
     if (s !=3D 0)
         handle_error_en(s, "pthread_getschedparam");
 \&
-    printf("%s\en", msg);
+    printf("%s\[rs]n", msg);
     display_sched_attr(policy, &param);
 }
 \&
@@ -325,14 +325,14 @@ .SS Program source
         case \[aq]A\[aq]: use_null_attrib =3D 1;          break;
         case \[aq]i\[aq]: inheritsched_str =3D optarg;    break;
         case \[aq]m\[aq]: main_sched_str =3D optarg;      break;
-        default:  usage(argv[0], "Unrecognized option\en");
+        default:  usage(argv[0], "Unrecognized option\[rs]n");
         }
     }
 \&
     if (use_null_attrib
         && (inheritsched_str !=3D NULL || attr_sched_str !=3D NULL))
     {
-        usage(argv[0], "Can\[aq]t specify \-A with \-i or \-a\en");
+        usage(argv[0], "Can\[aq]t specify \-A with \-i or \-a\[rs]n");
     }
 \&
     /* Optionally set scheduling attributes of main thread,
@@ -340,7 +340,7 @@ .SS Program source
 \&
     if (main_sched_str !=3D NULL) {
         if (!get_policy(main_sched_str[0], &policy))
-            usage(argv[0], "Bad policy for main thread (\-m)\en");
+            usage(argv[0], "Bad policy for main thread (\-m)\[rs]n");
         param.sched_priority =3D strtol(&main_sched_str[1], NULL, 0);
 \&
         s =3D pthread_setschedparam(pthread_self(), policy, &param);
@@ -349,7 +349,7 @@ .SS Program source
     }
 \&
     display_thread_sched_attr("Scheduler settings of main thread");
-    printf("\en");
+    printf("\[rs]n");
 \&
     /* Initialize thread attributes object according to options. */
 \&
@@ -368,7 +368,7 @@ .SS Program source
         else if (inheritsched_str[0] =3D=3D \[aq]i\[aq])
             inheritsched =3D PTHREAD_INHERIT_SCHED;
         else
-            usage(argv[0], "Value for \-i must be \[aq]e\[aq] or \[aq]i\[a=
q]\en");
+            usage(argv[0], "Value for \-i must be \[aq]e\[aq] or \[aq]i\[a=
q]\[rs]n");
 \&
         s =3D pthread_attr_setinheritsched(&attr, inheritsched);
         if (s !=3D 0)
@@ -377,7 +377,7 @@ .SS Program source
 \&
     if (attr_sched_str !=3D NULL) {
         if (!get_policy(attr_sched_str[0], &policy))
-            usage(argv[0], "Bad policy for \[aq]attr\[aq] (\-a)\en");
+            usage(argv[0], "Bad policy for \[aq]attr\[aq] (\-a)\[rs]n");
         param.sched_priority =3D strtol(&attr_sched_str[1], NULL, 0);
 \&
         s =3D pthread_attr_setschedpolicy(&attr, policy);
@@ -399,15 +399,15 @@ .SS Program source
         if (s !=3D 0)
             handle_error_en(s, "pthread_attr_getschedpolicy");
 \&
-        printf("Scheduler settings in \[aq]attr\[aq]\en");
+        printf("Scheduler settings in \[aq]attr\[aq]\[rs]n");
         display_sched_attr(policy, &param);
 \&
         pthread_attr_getinheritsched(&attr, &inheritsched);
-        printf("    inheritsched is %s\en",
+        printf("    inheritsched is %s\[rs]n",
                (inheritsched =3D=3D PTHREAD_INHERIT_SCHED)  ? "INHERIT" :
                (inheritsched =3D=3D PTHREAD_EXPLICIT_SCHED) ? "EXPLICIT" :
                "???");
-        printf("\en");
+        printf("\[rs]n");
     }
 \&
     /* Create a thread that will display its scheduling attributes. */
diff --git a/man/man3/pthread_sigmask.3 b/man/man3/pthread_sigmask.3
index 8d859d760..4a199b7c9 100644
--- a/man/man3/pthread_sigmask.3
+++ b/man/man3/pthread_sigmask.3
@@ -105,7 +105,7 @@ .SS Program source
 \&
 /* Simple error handling functions */
 \&
-#define handle_error_en(en, msg) \e
+#define handle_error_en(en, msg) \[rs]
         do { errno =3D en; perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static void *
@@ -118,7 +118,7 @@ .SS Program source
         s =3D sigwait(set, &sig);
         if (s !=3D 0)
             handle_error_en(s, "sigwait");
-        printf("Signal handling thread got signal %d\en", sig);
+        printf("Signal handling thread got signal %d\[rs]n", sig);
     }
 }
 \&
diff --git a/man/man3/puts.3 b/man/man3/puts.3
index 19241af90..6504098e6 100644
--- a/man/man3/puts.3
+++ b/man/man3/puts.3
@@ -46,7 +46,7 @@ .SH DESCRIPTION
 .I s
 to
 .IR stream ,
-without its terminating null byte (\[aq]\e0\[aq]).
+without its terminating null byte (\[aq]\[rs]0\[aq]).
 .P
 .BR puts ()
 writes the string
diff --git a/man/man3/qsort.3 b/man/man3/qsort.3
index 16e8b1b65..8a5bab612 100644
--- a/man/man3/qsort.3
+++ b/man/man3/qsort.3
@@ -138,7 +138,7 @@ .SH EXAMPLES
 main(int argc, char *argv[])
 {
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s <string>...\en", argv[0]);
+        fprintf(stderr, "Usage: %s <string>...\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man3/rand.3 b/man/man3/rand.3
index 9f63ee9a1..6ac577e8e 100644
--- a/man/man3/rand.3
+++ b/man/man3/rand.3
@@ -212,7 +212,7 @@ .SH EXAMPLES
     unsigned int  seed, nloops;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <seed> <nloops>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <seed> <nloops>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -221,13 +221,13 @@ .SH EXAMPLES
 \&
     if (seed =3D=3D \-1) {
         seed =3D arc4random();
-        printf("seed: %u\en", seed);
+        printf("seed: %u\[rs]n", seed);
     }
 \&
     srand(seed);
     for (unsigned int j =3D 0; j < nloops; j++) {
         r =3D  rand();
-        printf("%d\en", r);
+        printf("%d\[rs]n", r);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
index 731e25c85..41cc00b52 100644
--- a/man/man3/readdir.3
+++ b/man/man3/readdir.3
@@ -243,7 +243,7 @@ .SS The d_name field
 .IR "char\ d_name[]",
 a character array of unspecified size, with at most
 .B NAME_MAX
-characters preceding the terminating null byte (\[aq]\e0\[aq]).
+characters preceding the terminating null byte (\[aq]\[rs]0\[aq]).
 .P
 POSIX.1 explicitly notes that this field should not be used as an lvalue.
 The standard also notes that the use of
diff --git a/man/man3/recno.3 b/man/man3/recno.3
index fa666f585..3d6f66ee7 100644
--- a/man/man3/recno.3
+++ b/man/man3/recno.3
@@ -138,7 +138,7 @@ .SH DESCRIPTION
 The delimiting byte to be used to mark the end of a record for
 variable-length records, and the pad character for fixed-length
 records.
-If no value is specified, newlines ("\en") are used to mark the end
+If no value is specified, newlines ("\[rs]n") are used to mark the end
 of variable-length records and fixed-length records are padded with
 spaces.
 .TP
diff --git a/man/man3/regex.3 b/man/man3/regex.3
index a4e89c100..6ac2493fe 100644
--- a/man/man3/regex.3
+++ b/man/man3/regex.3
@@ -370,7 +370,7 @@ .SH EXAMPLES
 #define ARRAY_SIZE(arr) (sizeof((arr)) / sizeof((arr)[0]))
 \&
 static const char *const str =3D
-        "1) John Driverhacker;\en2) John Doe;\en3) John Foo;\en";
+        "1) John Driverhacker;\[rs]n2) John Doe;\[rs]n3) John Foo;\[rs]n";
 static const char *const re =3D "John.*o";
 \&
 int main(void)
@@ -383,8 +383,8 @@ .SH EXAMPLES
     if (regcomp(&regex, re, REG_NEWLINE))
         exit(EXIT_FAILURE);
 \&
-    printf("String =3D \e"%s\e"\en", str);
-    printf("Matches:\en");
+    printf("String =3D \[rs]"%s\[rs]"\[rs]n", str);
+    printf("Matches:\[rs]n");
 \&
     for (unsigned int i =3D 0; ; i++) {
         if (regexec(&regex, s, ARRAY_SIZE(pmatch), pmatch, 0))
@@ -392,10 +392,10 @@ .SH EXAMPLES
 \&
         off =3D pmatch[0].rm_so + (s \- str);
         len =3D pmatch[0].rm_eo \- pmatch[0].rm_so;
-        printf("#%zu:\en", i);
-        printf("offset =3D %jd; length =3D %jd\en", (intmax_t) off,
+        printf("#%zu:\[rs]n", i);
+        printf("offset =3D %jd; length =3D %jd\[rs]n", (intmax_t) off,
                 (intmax_t) len);
-        printf("substring =3D \e"%.*s\e"\en", len, s + pmatch[0].rm_so);
+        printf("substring =3D \[rs]"%.*s\[rs]"\[rs]n", len, s + pmatch[0].=
rm_so);
 \&
         s +=3D pmatch[0].rm_eo;
     }
diff --git a/man/man3/rpmatch.3 b/man/man3/rpmatch.3
index fd285cc64..5ef3ca5f9 100644
--- a/man/man3/rpmatch.3
+++ b/man/man3/rpmatch.3
@@ -151,12 +151,12 @@ .SH EXAMPLES
 main(int argc, char *argv[])
 {
     if (argc !=3D 2 || strcmp(argv[1], "\-\-help") =3D=3D 0) {
-        fprintf(stderr, "%s response\en", argv[0]);
+        fprintf(stderr, "%s response\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     setlocale(LC_ALL, "");
-    printf("rpmatch() returns: %d\en", rpmatch(argv[1]));
+    printf("rpmatch() returns: %d\[rs]n", rpmatch(argv[1]));
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/rtime.3 b/man/man3/rtime.3
index cac162ed2..171812e7c 100644
--- a/man/man3/rtime.3
+++ b/man/man3/rtime.3
@@ -138,7 +138,7 @@ .SH EXAMPLES
         perror("rtime error");
     else {
         t =3D time1.tv_sec;
-        printf("%s\en", ctime(&t));
+        printf("%s\[rs]n", ctime(&t));
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/scandir.3 b/man/man3/scandir.3
index 8ec405e3a..e60b7a25f 100644
--- a/man/man3/scandir.3
+++ b/man/man3/scandir.3
@@ -288,7 +288,7 @@ .SS Program source
     }
 \&
     while (n\-\-) {
-        printf("%s\en", namelist[n]\->d_name);
+        printf("%s\[rs]n", namelist[n]\->d_name);
         free(namelist[n]);
     }
     free(namelist);
diff --git a/man/man3/scanf.3 b/man/man3/scanf.3
index be335a597..d22f9ba1a 100644
--- a/man/man3/scanf.3
+++ b/man/man3/scanf.3
@@ -149,7 +149,7 @@ .SH BUGS
 how many characters these functions have consumed from the input stream,
 since they only report the number of successful conversions.
 For example,
-if the input is "123\en\ a",
+if the input is "123\[rs]n\ a",
 .I scanf(\[dq]%d\ %d\[dq], &a, &b)
 will consume the digits, the newline, and the space, but not the letter a.
 This makes it difficult to recover from invalid input.
diff --git a/man/man3/sem_wait.3 b/man/man3/sem_wait.3
index 8d31e2f2a..ab2dee21f 100644
--- a/man/man3/sem_wait.3
+++ b/man/man3/sem_wait.3
@@ -177,15 +177,15 @@ .SS Program source
 \&
 sem_t sem;
 \&
-#define handle_error(msg) \e
+#define handle_error(msg) \[rs]
     do { perror(msg); exit(EXIT_FAILURE); } while (0)
 \&
 static void
 handler(int sig)
 {
-    write(STDOUT_FILENO, "sem_post() from handler\en", 24);
+    write(STDOUT_FILENO, "sem_post() from handler\[rs]n", 24);
     if (sem_post(&sem) =3D=3D \-1) {
-        write(STDERR_FILENO, "sem_post() failed\en", 18);
+        write(STDERR_FILENO, "sem_post() failed\[rs]n", 18);
         _exit(EXIT_FAILURE);
     }
 }
@@ -198,7 +198,7 @@ .SS Program source
     int s;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <alarm\-secs> <wait\-secs>\en",
+        fprintf(stderr, "Usage: %s <alarm\-secs> <wait\-secs>\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -224,7 +224,7 @@ .SS Program source
 \&
     ts.tv_sec +=3D atoi(argv[2]);
 \&
-    printf("%s() about to call sem_timedwait()\en", __func__);
+    printf("%s() about to call sem_timedwait()\[rs]n", __func__);
     while ((s =3D sem_timedwait(&sem, &ts)) =3D=3D \-1 && errno =3D=3D EIN=
TR)
         continue;       /* Restart if interrupted by handler. */
 \&
@@ -232,11 +232,11 @@ .SS Program source
 \&
     if (s =3D=3D \-1) {
         if (errno =3D=3D ETIMEDOUT)
-            printf("sem_timedwait() timed out\en");
+            printf("sem_timedwait() timed out\[rs]n");
         else
             perror("sem_timedwait");
     } else
-        printf("sem_timedwait() succeeded\en");
+        printf("sem_timedwait() succeeded\[rs]n");
 \&
     exit((s =3D=3D 0) ? EXIT_SUCCESS : EXIT_FAILURE);
 }
diff --git a/man/man3/setaliasent.3 b/man/man3/setaliasent.3
index 24d162751..c66372cd3 100644
--- a/man/man3/setaliasent.3
+++ b/man/man3/setaliasent.3
@@ -162,7 +162,7 @@ .SH EXAMPLES
         al =3D getaliasent();
         if (al =3D=3D NULL)
             break;
-        printf("Name: %s\en", al\->alias_name);
+        printf("Name: %s\[rs]n", al\->alias_name);
     }
     if (errno) {
         perror("reading alias");
diff --git a/man/man3/setbuf.3 b/man/man3/setbuf.3
index 8604d4754..be5f63357 100644
--- a/man/man3/setbuf.3
+++ b/man/man3/setbuf.3
@@ -211,7 +211,7 @@ .SH BUGS
     char buf[BUFSIZ];
 \&
     setbuf(stdout, buf);
-    printf("Hello, world!\en");
+    printf("Hello, world!\[rs]n");
     return 0;
 }
 .EE
diff --git a/man/man3/shm_open.3 b/man/man3/shm_open.3
index a907df906..fda155711 100644
--- a/man/man3/shm_open.3
+++ b/man/man3/shm_open.3
@@ -298,7 +298,7 @@ .SS Program source: pshm_ucase.h
 #include <stdio.h>
 #include <stdlib.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 #define BUF_SIZE 1024   /* Maximum size for exchanged string */
@@ -356,7 +356,7 @@ .SS Program source: pshm_ucase_bounce.c
     struct shmbuf  *shmp;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s /shm\-path\en", argv[0]);
+        fprintf(stderr, "Usage: %s /shm\-path\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -456,7 +456,7 @@ .SS Program source: pshm_ucase_send.c
     struct shmbuf  *shmp;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s /shm\-path string\en", argv[0]);
+        fprintf(stderr, "Usage: %s /shm\-path string\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -465,7 +465,7 @@ .SS Program source: pshm_ucase_send.c
     len =3D strlen(string);
 \&
     if (len > BUF_SIZE) {
-        fprintf(stderr, "String is too long\en");
+        fprintf(stderr, "String is too long\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -500,7 +500,7 @@ .SS Program source: pshm_ucase_send.c
     /* Write modified data in shared memory to standard output. */
 \&
     write(STDOUT_FILENO, &shmp\->buf, len);
-    write(STDOUT_FILENO, "\en", 1);
+    write(STDOUT_FILENO, "\[rs]n", 1);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/slist.3 b/man/man3/slist.3
index 02745286b..3240c40b6 100644
--- a/man/man3/slist.3
+++ b/man/man3/slist.3
@@ -301,7 +301,7 @@ .SH EXAMPLES
 \&
                                             /* Forward traversal */
     SLIST_FOREACH(np, &head, entries)
-        printf("%i\en", np\->data);
+        printf("%i\[rs]n", np\->data);
 \&
     while (!SLIST_EMPTY(&head)) {           /* List deletion */
         n1 =3D SLIST_FIRST(&head);
diff --git a/man/man3/sscanf.3 b/man/man3/sscanf.3
index d488cd861..df18cb92d 100644
--- a/man/man3/sscanf.3
+++ b/man/man3/sscanf.3
@@ -183,7 +183,7 @@ .SH DESCRIPTION
 Most conversions discard initial white space characters (the exceptions
 are noted below),
 and these discarded characters don't count toward the maximum field width.
-String input conversions store a terminating null byte (\[aq]\e0\[aq])
+String input conversions store a terminating null byte (\[aq]\[rs]0\[aq])
 to mark the end of the input;
 the maximum field width does not include this terminator.
 .TP
@@ -432,7 +432,7 @@ .SS Conversions
 Matches a sequence of non-white-space characters;
 the next pointer must be a pointer to the initial element of a
 character array that is long enough to hold the input sequence and
-the terminating null byte (\[aq]\e0\[aq]), which is added automatically.
+the terminating null byte (\[aq]\[rs]0\[aq]), which is added automatically.
 The input string stops at white space or at the maximum field
 width, whichever occurs first.
 .TP
@@ -706,12 +706,12 @@ .SH EXAMPLES
 errno =3D 0;
 n =3D sscanf(str, "%m[a\-z]", &p);
 if (n =3D=3D 1) {
-    printf("read: %s\en", p);
+    printf("read: %s\[rs]n", p);
     free(p);
 } else if (errno !=3D 0) {
     perror("sscanf");
 } else {
-    fprintf(stderr, "No matching characters\en");
+    fprintf(stderr, "No matching characters\[rs]n");
 }
 .EE
 .in
diff --git a/man/man3/stailq.3 b/man/man3/stailq.3
index eca802cbd..9f827e630 100644
--- a/man/man3/stailq.3
+++ b/man/man3/stailq.3
@@ -358,7 +358,7 @@ .SH EXAMPLES
     }
                                             /* Forward traversal */
     STAILQ_FOREACH(np, &head, entries)
-        printf("%i\en", np\->data);
+        printf("%i\[rs]n", np\->data);
                                             /* TailQ deletion */
     n1 =3D STAILQ_FIRST(&head);
     while (n1 !=3D NULL) {
diff --git a/man/man3/static_assert.3 b/man/man3/static_assert.3
index 04b24a95a..fef9c3058 100644
--- a/man/man3/static_assert.3
+++ b/man/man3/static_assert.3
@@ -74,24 +74,24 @@ .SH EXAMPLES
  * returns 0, which allows using it everywhere an expression
  * can be used.
  */
-#define must_be(e)                                        \e
-(                                                         \e
-    0 * (int) sizeof(                                     \e
-        struct {                                          \e
-            static_assert(e);                             \e
-            int  ISO_C_forbids_a_struct_with_no_members;  \e
-        }                                                 \e
-    )                                                     \e
+#define must_be(e)                                        \[rs]
+(                                                         \[rs]
+    0 * (int) sizeof(                                     \[rs]
+        struct {                                          \[rs]
+            static_assert(e);                             \[rs]
+            int  ISO_C_forbids_a_struct_with_no_members;  \[rs]
+        }                                                 \[rs]
+    )                                                     \[rs]
 )
 \&
-#define is_same_type(a, b)  \e
+#define is_same_type(a, b)  \[rs]
     __builtin_types_compatible_p(typeof(a), typeof(b))
 \&
 #define is_array(arr)       (!is_same_type((arr), &*(arr)))
 #define must_be_array(arr)  must_be(is_array(arr))
 \&
 #define sizeof_array(arr)   (sizeof(arr) + must_be_array(arr))
-#define nitems(arr)         (sizeof((arr)) / sizeof((arr)[0]) \e
+#define nitems(arr)         (sizeof((arr)) / sizeof((arr)[0]) \[rs]
                              + must_be_array(arr))
 \&
 int     foo[10];
diff --git a/man/man3/stdarg.3 b/man/man3/stdarg.3
index 4168487d0..1b8bac5c0 100644
--- a/man/man3/stdarg.3
+++ b/man/man3/stdarg.3
@@ -275,17 +275,17 @@ .SH EXAMPLES
         switch (*fmt++) {
         case \[aq]s\[aq]:              /* string */
             s =3D va_arg(ap, char *);
-            printf("string %s\en", s);
+            printf("string %s\[rs]n", s);
             break;
         case \[aq]d\[aq]:              /* int */
             d =3D va_arg(ap, int);
-            printf("int %d\en", d);
+            printf("int %d\[rs]n", d);
             break;
         case \[aq]c\[aq]:              /* char */
             /* need a cast here since va_arg only
                takes fully promoted types */
             c =3D (char) va_arg(ap, int);
-            printf("char %c\en", c);
+            printf("char %c\[rs]n", c);
             break;
         }
     va_end(ap);
diff --git a/man/man3/stpncpy.3 b/man/man3/stpncpy.3
index 9544682fc..534dea6de 100644
--- a/man/man3/stpncpy.3
+++ b/man/man3/stpncpy.3
@@ -158,7 +158,7 @@ .SH EXAMPLES
 \&
     printf("[len =3D %zu]: ", len);
     fwrite(buf2, 1, len, stdout);
-    putchar(\[aq]\en\[aq]);
+    putchar(\[aq]\[rs]n\[aq]);
 \&
     if (sizeof(buf1) < strlen("Hello world!"))
         errx("stpncpy: truncating character sequence");
@@ -167,7 +167,7 @@ .SH EXAMPLES
 \&
     printf("[len =3D %zu]: ", len);
     fwrite(buf1, 1, len, stdout);
-    putchar(\[aq]\en\[aq]);
+    putchar(\[aq]\[rs]n\[aq]);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/strchr.3 b/man/man3/strchr.3
index 55f6add88..d7423bb41 100644
--- a/man/man3/strchr.3
+++ b/man/man3/strchr.3
@@ -71,7 +71,7 @@ .SH RETURN VALUE
 The terminating null byte is considered part of the string,
 so that if
 .I c
-is specified as \[aq]\e0\[aq],
+is specified as \[aq]\[rs]0\[aq],
 these functions return a pointer to the terminator.
 .P
 The
diff --git a/man/man3/strcmp.3 b/man/man3/strcmp.3
index 3e910d97b..ec1032c19 100644
--- a/man/man3/strcmp.3
+++ b/man/man3/strcmp.3
@@ -126,13 +126,13 @@ .SH EXAMPLES
 .EX
 $ \fB./string_comp ABC ABC\fP
 <str1> and <str2> are equal
-$ \fB./string_comp ABC AB\fP      # \[aq]C\[aq] is ASCII 67; \[aq]C\[aq] \=
- \[aq]\e0\[aq] =3D 67
+$ \fB./string_comp ABC AB\fP      # \[aq]C\[aq] is ASCII 67; \[aq]C\[aq] \=
- \[aq]\[rs]0\[aq] =3D 67
 <str1> is greater than <str2> (67)
 $ \fB./string_comp ABA ABZ\fP     # \[aq]A\[aq] is ASCII 65; \[aq]Z\[aq] i=
s ASCII 90
 <str1> is less than <str2> (\-25)
 $ \fB./string_comp ABJ ABC\fP
 <str1> is greater than <str2> (7)
-$ .\fB/string_comp $\[aq]\e201\[aq] A\fP   # 0201 \- 0101 =3D 0100 (or 64 =
decimal)
+$ .\fB/string_comp $\[aq]\[rs]201\[aq] A\fP   # 0201 \- 0101 =3D 0100 (or =
64 decimal)
 <str1> is greater than <str2> (64)
 .EE
 .in
@@ -172,7 +172,7 @@ .SS Program source
     int res;
 \&
     if (argc < 3) {
-        fprintf(stderr, "Usage: %s <str1> <str2> [<len>]\en", argv[0]);
+        fprintf(stderr, "Usage: %s <str1> <str2> [<len>]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -184,12 +184,12 @@ .SS Program source
     if (res =3D=3D 0) {
         printf("<str1> and <str2> are equal");
         if (argc > 3)
-            printf(" in the first %d bytes\en", atoi(argv[3]));
-        printf("\en");
+            printf(" in the first %d bytes\[rs]n", atoi(argv[3]));
+        printf("\[rs]n");
     } else if (res < 0) {
-        printf("<str1> is less than <str2> (%d)\en", res);
+        printf("<str1> is less than <str2> (%d)\[rs]n", res);
     } else {
-        printf("<str1> is greater than <str2> (%d)\en", res);
+        printf("<str1> is greater than <str2> (%d)\[rs]n", res);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/strcpy.3 b/man/man3/strcpy.3
index 1cfde931b..51eb55d7b 100644
--- a/man/man3/strcpy.3
+++ b/man/man3/strcpy.3
@@ -65,7 +65,7 @@ .SH DESCRIPTION
     char  *p;
 \&
     p =3D mempcpy(dst, src, strlen(src));
-    *p =3D \[aq]\e0\[aq];
+    *p =3D \[aq]\[rs]0\[aq];
 \&
     return p;
 }
diff --git a/man/man3/strdup.3 b/man/man3/strdup.3
index 3e338b4f9..cb3c17455 100644
--- a/man/man3/strdup.3
+++ b/man/man3/strdup.3
@@ -75,7 +75,7 @@ .SH DESCRIPTION
 .IR n ,
 only
 .I n
-bytes are copied, and a terminating null byte (\[aq]\e0\[aq]) is added.
+bytes are copied, and a terminating null byte (\[aq]\[rs]0\[aq]) is added.
 .P
 .BR strdupa ()
 and
diff --git a/man/man3/strerror.3 b/man/man3/strerror.3
index 8dc65dc67..ef73872bf 100644
--- a/man/man3/strerror.3
+++ b/man/man3/strerror.3
@@ -153,7 +153,7 @@ .SS strerror_r()
 is too small and
 .I errnum
 is unknown).
-The string always includes a terminating null byte (\[aq]\e0\[aq]).
+The string always includes a terminating null byte (\[aq]\[rs]0\[aq]).
 .\"
 .SS strerror_l()
 .BR strerror_l ()
diff --git a/man/man3/strfromd.3 b/man/man3/strfromd.3
index dbcb8e78a..eff33acd6 100644
--- a/man/man3/strfromd.3
+++ b/man/man3/strfromd.3
@@ -53,7 +53,7 @@ .SH DESCRIPTION
 characters are stored into
 .IR str .
 .P
-The terminating null byte ('\e0') is written if and only if
+The terminating null byte ('\[rs]0') is written if and only if
 .I n
 is sufficiently large, otherwise the written string is truncated at
 .I n
diff --git a/man/man3/strftime.3 b/man/man3/strftime.3
index 13121963f..0217f2081 100644
--- a/man/man3/strftime.3
+++ b/man/man3/strftime.3
@@ -762,7 +762,7 @@ .SS Program source
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Result string is \e"%s\e"\en", outstr);
+    printf("Result string is \[rs]"%s\[rs]"\[rs]n", outstr);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/strlen.3 b/man/man3/strlen.3
index 6d759bd78..0187481a9 100644
--- a/man/man3/strlen.3
+++ b/man/man3/strlen.3
@@ -25,7 +25,7 @@ .SH DESCRIPTION
 .BR strlen ()
 function calculates the length of the string pointed to by
 .IR s ,
-excluding the terminating null byte (\[aq]\e0\[aq]).
+excluding the terminating null byte (\[aq]\[rs]0\[aq]).
 .SH RETURN VALUE
 The
 .BR strlen ()
diff --git a/man/man3/strncat.3 b/man/man3/strncat.3
index a1e736e93..2c7a62f34 100644
--- a/man/man3/strncat.3
+++ b/man/man3/strncat.3
@@ -115,7 +115,7 @@ .SH EXAMPLES
     if (dest =3D=3D NULL)
         err(EXIT_FAILURE, "malloc()");
 \&
-    dest[0] =3D \[aq]\e0\[aq];  // There's no 'cpy' function to this 'cat'.
+    dest[0] =3D \[aq]\[rs]0\[aq];  // There's no 'cpy' function to this 'c=
at'.
     strncat(dest, pre, nitems(pre));
     strncat(dest, src, strlen(src) \- strlen(post));
     strncat(dest, new_post, nitems(new_post));
diff --git a/man/man3/strnlen.3 b/man/man3/strnlen.3
index 098d44ba6..6f8f0adf6 100644
--- a/man/man3/strnlen.3
+++ b/man/man3/strnlen.3
@@ -37,7 +37,7 @@ .SH DESCRIPTION
 function returns the number of bytes in the string
 pointed to by
 .IR s ,
-excluding the terminating null byte (\[aq]\e0\[aq]),
+excluding the terminating null byte (\[aq]\[rs]0\[aq]),
 but at most
 .IR maxlen .
 In doing this,
@@ -57,7 +57,7 @@ .SH RETURN VALUE
 .IR maxlen ,
 or
 .I maxlen
-if there is no null terminating (\[aq]\e0\[aq]) among the first
+if there is no null terminating (\[aq]\[rs]0\[aq]) among the first
 .I maxlen
 characters pointed to by
 .IR s .
diff --git a/man/man3/strsep.3 b/man/man3/strsep.3
index baef0facd..1159c19e3 100644
--- a/man/man3/strsep.3
+++ b/man/man3/strsep.3
@@ -49,7 +49,7 @@ .SH DESCRIPTION
 that is delimited by one of the bytes in the string
 .IR delim .
 This token is terminated by overwriting the delimiter
-with a null byte (\[aq]\e0\[aq]),
+with a null byte (\[aq]\[rs]0\[aq]),
 and
 .I *stringp
 is updated to point past the token.
@@ -137,15 +137,15 @@ .SS Program source
     char *token, *subtoken;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage: %s string delim subdelim\en", argv[0]);
+        fprintf(stderr, "Usage: %s string delim subdelim\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     for (unsigned int j =3D 1; (token =3D strsep(&argv[1], argv[2])); j++)=
 {
-        printf("%u: %s\en", j, token);
+        printf("%u: %s\[rs]n", j, token);
 \&
         while ((subtoken =3D strsep(&token, argv[3])))
-            printf("\et \-\-> %s\en", subtoken);
+            printf("\[rs]t \-\-> %s\[rs]n", subtoken);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/strstr.3 b/man/man3/strstr.3
index d6a066631..d727fb2b0 100644
--- a/man/man3/strstr.3
+++ b/man/man3/strstr.3
@@ -35,7 +35,7 @@ .SH DESCRIPTION
 .I needle
 in the string
 .IR haystack .
-The terminating null bytes (\[aq]\e0\[aq]) are not compared.
+The terminating null bytes (\[aq]\[rs]0\[aq]) are not compared.
 .P
 The
 .BR strcasestr ()
diff --git a/man/man3/strtok.3 b/man/man3/strtok.3
index 34a90198c..6cbb56d18 100644
--- a/man/man3/strtok.3
+++ b/man/man3/strtok.3
@@ -88,7 +88,7 @@ .SH DESCRIPTION
 .P
 The end of each token is found by scanning forward until either
 the next delimiter byte is found or until the
-terminating null byte (\[aq]\e0\[aq]) is encountered.
+terminating null byte (\[aq]\[rs]0\[aq]) is encountered.
 If a delimiter byte is found, it is overwritten with
 a null byte to terminate the current token, and
 .BR strtok ()
@@ -249,7 +249,7 @@ .SS Program source
     int j;
 \&
     if (argc !=3D 4) {
-        fprintf(stderr, "Usage: %s string delim subdelim\en",
+        fprintf(stderr, "Usage: %s string delim subdelim\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -258,13 +258,13 @@ .SS Program source
         token =3D strtok_r(str1, argv[2], &saveptr1);
         if (token =3D=3D NULL)
             break;
-        printf("%d: %s\en", j, token);
+        printf("%d: %s\[rs]n", j, token);
 \&
         for (str2 =3D token; ; str2 =3D NULL) {
             subtoken =3D strtok_r(str2, argv[3], &saveptr2);
             if (subtoken =3D=3D NULL)
                 break;
-            printf("\et \-\-> %s\en", subtoken);
+            printf("\[rs]t \-\-> %s\[rs]n", subtoken);
         }
     }
 \&
diff --git a/man/man3/strtol.3 b/man/man3/strtol.3
index c05eac0ec..f98afb140 100644
--- a/man/man3/strtol.3
+++ b/man/man3/strtol.3
@@ -88,9 +88,9 @@ .SH DESCRIPTION
 (and returns 0).
 In particular, if
 .I *nptr
-is not \[aq]\e0\[aq] but
+is not \[aq]\[rs]0\[aq] but
 .I **endptr
-is \[aq]\e0\[aq] on return, the entire string is valid.
+is \[aq]\[rs]0\[aq] on return, the entire string is valid.
 .P
 The
 .BR strtoll ()
@@ -272,7 +272,7 @@ .SS Program source
     long val;
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s str [base]\en", argv[0]);
+        fprintf(stderr, "Usage: %s str [base]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -297,16 +297,16 @@ .SS Program source
     }
 \&
     if (endptr =3D=3D str) {
-        fprintf(stderr, "No digits were found\en");
+        fprintf(stderr, "No digits were found\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
     /* If we got here, strtol() successfully parsed a number. */
 \&
-    printf("strtol() returned %ld\en", val);
+    printf("strtol() returned %ld\[rs]n", val);
 \&
-    if (*endptr !=3D \[aq]\e0\[aq])        /* Not necessarily an error... =
*/
-        printf("Further characters after number: \e"%s\e"\en", endptr);
+    if (*endptr !=3D \[aq]\[rs]0\[aq])        /* Not necessarily an error.=
=2E. */
+        printf("Further characters after number: \[rs]"%s\[rs]"\[rs]n", en=
dptr);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
index 09b1a7cac..6ac606ecb 100644
--- a/man/man3/strtoul.3
+++ b/man/man3/strtoul.3
@@ -94,9 +94,9 @@ .SH DESCRIPTION
 (and returns 0).
 In particular, if
 .I *nptr
-is not \[aq]\e0\[aq] but
+is not \[aq]\[rs]0\[aq] but
 .I **endptr
-is \[aq]\e0\[aq] on return, the entire string is valid.
+is \[aq]\[rs]0\[aq] on return, the entire string is valid.
 .P
 The
 .BR strtoull ()
diff --git a/man/man3/strverscmp.3 b/man/man3/strverscmp.3
index b4cf52414..819eb4ca3 100644
--- a/man/man3/strverscmp.3
+++ b/man/man3/strverscmp.3
@@ -126,13 +126,13 @@ .SS Program source
     int res;
 \&
     if (argc !=3D 3) {
-        fprintf(stderr, "Usage: %s <string1> <string2>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <string1> <string2>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
     res =3D strverscmp(argv[1], argv[2]);
 \&
-    printf("%s %s %s\en", argv[1],
+    printf("%s %s %s\[rs]n", argv[1],
            (res < 0) ? "<" : (res =3D=3D 0) ? "=3D=3D" : ">", argv[2]);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/strxfrm.3 b/man/man3/strxfrm.3
index ccc994b42..af8f934ec 100644
--- a/man/man3/strxfrm.3
+++ b/man/man3/strxfrm.3
@@ -52,7 +52,7 @@ .SH RETURN VALUE
 store the transformed string in
 .I dest
 excluding the
-terminating null byte (\[aq]\e0\[aq]).
+terminating null byte (\[aq]\[rs]0\[aq]).
 If the value returned is
 .I n
 or more, the
diff --git a/man/man3/sysconf.3 b/man/man3/sysconf.3
index 1010caa8c..07da47ea4 100644
--- a/man/man3/sysconf.3
+++ b/man/man3/sysconf.3
@@ -259,7 +259,7 @@ .SS POSIX.2 variables
 .BR RE_DUP_MAX " - " _SC_RE_DUP_MAX
 The maximum number of repeated occurrences of a regular expression when
 the interval notation
-.B \e{m,n\e}
+.B \[rs]{m,n\[rs]}
 is used.
 .TP
 .BR POSIX2_VERSION " - " _SC_2_VERSION
diff --git a/man/man3/tailq.3 b/man/man3/tailq.3
index ced7b5408..5ac1c58b7 100644
--- a/man/man3/tailq.3
+++ b/man/man3/tailq.3
@@ -378,7 +378,7 @@ .SH EXAMPLES
         np\->data =3D i++;
                                             /* Reverse traversal */
     TAILQ_FOREACH_REVERSE(np, &head, tailhead, entries)
-        printf("%i\en", np\->data);
+        printf("%i\[rs]n", np\->data);
                                             /* TailQ deletion */
     n1 =3D TAILQ_FIRST(&head);
     while (n1 !=3D NULL) {
diff --git a/man/man3/termios.3 b/man/man3/termios.3
index 78731d21e..877f7bbf8 100644
--- a/man/man3/termios.3
+++ b/man/man3/termios.3
@@ -107,8 +107,8 @@ .SS The termios structure
 terminal of a foreground process group, it will cause a
 \fBSIGINT\fP to be sent to this foreground process group.
 When neither \fBIGNBRK\fP nor \fBBRKINT\fP are set, a BREAK
-reads as a null byte (\[aq]\e0\[aq]), except when \fBPARMRK\fP is set,
-in which case it reads as the sequence \e377 \e0 \e0.
+reads as a null byte (\[aq]\[rs]0\[aq]), except when \fBPARMRK\fP is set,
+in which case it reads as the sequence \[rs]377 \[rs]0 \[rs]0.
 .TP
 .B IGNPAR
 Ignore framing errors and parity errors.
@@ -119,19 +119,19 @@ .SS The termios structure
 This bit is meaningful only when
 \fBINPCK\fP is set and \fBIGNPAR\fP is not set.
 The way erroneous bytes are marked is with two preceding bytes,
-\e377 and \e0.
+\[rs]377 and \[rs]0.
 Thus, the program actually reads three bytes for one
 erroneous byte received from the terminal.
-If a valid byte has the value \e377,
+If a valid byte has the value \[rs]377,
 and \fBISTRIP\fP (see below) is not set,
 the program might confuse it with the prefix that marks a
 parity error.
-Therefore, a valid byte \e377 is passed to the program as two
-bytes, \e377 \e377, in this case.
+Therefore, a valid byte \[rs]377 is passed to the program as two
+bytes, \[rs]377 \[rs]377, in this case.
 .IP
 If neither \fBIGNPAR\fP nor \fBPARMRK\fP
 is set, read a character with a parity error or framing error
-as \e0.
+as \[rs]0.
 .TP
 .B INPCK
 Enable input parity checking.
@@ -197,7 +197,7 @@ .SS The termios structure
 .TP
 .B OFDEL
 Fill character is ASCII DEL (0177).
-If unset, fill character is ASCII NUL (\[aq]\e0\[aq]).
+If unset, fill character is ASCII NUL (\[aq]\[rs]0\[aq]).
 (Not implemented on Linux.)
 .TP
 .B NLDLY
@@ -374,8 +374,8 @@ .SS The termios structure
 .B XCASE
 (not in POSIX; not supported under Linux)
 If \fBICANON\fP is also set, terminal is uppercase only.
-Input is converted to lowercase, except for characters preceded by \e.
-On output, uppercase characters are preceded by \e and lowercase
+Input is converted to lowercase, except for characters preceded by \[rs].
+On output, uppercase characters are preceded by \[rs] and lowercase
 characters are converted to uppercase.
 [requires
 .B _BSD_SOURCE
@@ -562,7 +562,7 @@ .SS The termios structure
 Minimum number of characters for noncanonical read (MIN).
 .TP
 .B VQUIT
-(034, FS, Ctrl-\e)
+(034, FS, Ctrl-\[rs])
 Quit character (QUIT).
 Send
 .B SIGQUIT
diff --git a/man/man3/tsearch.3 b/man/man3/tsearch.3
index 68e4e04f8..d9ef2a7fe 100644
--- a/man/man3/tsearch.3
+++ b/man/man3/tsearch.3
@@ -292,7 +292,7 @@ .SH EXAMPLES
     p =3D malloc(n);
     if (p)
         return p;
-    fprintf(stderr, "insufficient memory\en");
+    fprintf(stderr, "insufficient memory\[rs]n");
     exit(EXIT_FAILURE);
 }
 \&
@@ -316,13 +316,13 @@ .SH EXAMPLES
         break;
     case postorder:
         datap =3D *(int **) nodep;
-        printf("%6d\en", *datap);
+        printf("%6d\[rs]n", *datap);
         break;
     case endorder:
         break;
     case leaf:
         datap =3D *(int **) nodep;
-        printf("%6d\en", *datap);
+        printf("%6d\[rs]n", *datap);
         break;
     }
 }
diff --git a/man/man3/wcpcpy.3 b/man/man3/wcpcpy.3
index aa20c097a..b100090ba 100644
--- a/man/man3/wcpcpy.3
+++ b/man/man3/wcpcpy.3
@@ -42,7 +42,7 @@ .SH DESCRIPTION
 function.
 It copies the wide-character string pointed to by
 .IR src ,
-including the terminating null wide character (L\[aq]\e0\[aq]),
+including the terminating null wide character (L\[aq]\[rs]0\[aq]),
 to the array pointed to by
 .IR dest .
 .P
diff --git a/man/man3/wcpncpy.3 b/man/man3/wcpncpy.3
index 9b7ae8ca1..412fafef4 100644
--- a/man/man3/wcpncpy.3
+++ b/man/man3/wcpncpy.3
@@ -48,7 +48,7 @@ .SH DESCRIPTION
 wide characters from the wide-character
 string pointed to by
 .IR src ,
-including the terminating null wide (L\[aq]\e0\[aq]),
+including the terminating null wide (L\[aq]\[rs]0\[aq]),
 to the array pointed to by
 .IR dest .
 Exactly
@@ -63,7 +63,7 @@ .SH DESCRIPTION
 the remaining wide characters in the array pointed to
 by
 .I dest
-are filled with L\[aq]\e0\[aq] characters.
+are filled with L\[aq]\[rs]0\[aq] characters.
 If the length
 .I wcslen(src)
 is greater than or equal
@@ -72,7 +72,7 @@ .SH DESCRIPTION
 the string pointed to by
 .I dest
 will
-not be L\[aq]\e0\[aq] terminated.
+not be L\[aq]\[rs]0\[aq] terminated.
 .P
 The strings may not overlap.
 .P
diff --git a/man/man3/wcrtomb.3 b/man/man3/wcrtomb.3
index d7673312f..6c3a88508 100644
--- a/man/man3/wcrtomb.3
+++ b/man/man3/wcrtomb.3
@@ -28,7 +28,7 @@ .SH DESCRIPTION
 is
 not NULL and
 .I wc
-is not a null wide character (L\[aq]\e0\[aq]).
+is not a null wide character (L\[aq]\[rs]0\[aq]).
 In this case, the
 .BR wcrtomb ()
 function
@@ -51,7 +51,7 @@ .SH DESCRIPTION
 is not NULL,
 but
 .I wc
-is a null wide character (L\[aq]\e0\[aq]).
+is a null wide character (L\[aq]\[rs]0\[aq]).
 In this case, the
 .BR wcrtomb ()
 function stores at
@@ -61,7 +61,7 @@ .SH DESCRIPTION
 bring
 .I *ps
 back to the initial state,
-followed by a \[aq]\e0\[aq] byte.
+followed by a \[aq]\[rs]0\[aq] byte.
 It updates the shift state
 .I *ps
 (i.e., brings
@@ -80,7 +80,7 @@ .SH DESCRIPTION
 .P
 .in +4n
 .EX
-wcrtomb(buf, L\[aq]\e0\[aq], ps)
+wcrtomb(buf, L\[aq]\[rs]0\[aq], ps)
 .EE
 .in
 .P
diff --git a/man/man3/wcscat.3 b/man/man3/wcscat.3
index 1cdf97f9f..46b5a110f 100644
--- a/man/man3/wcscat.3
+++ b/man/man3/wcscat.3
@@ -31,7 +31,7 @@ .SH DESCRIPTION
 function.
 It copies the wide-character string pointed to by
 .IR src ,
-including the terminating null wide character (L\[aq]\e0\[aq]),
+including the terminating null wide character (L\[aq]\[rs]0\[aq]),
 to the end of the wide-character string pointed to by
 .IR dest .
 .P
diff --git a/man/man3/wcscpy.3 b/man/man3/wcscpy.3
index 83573fb1b..c1a71c431 100644
--- a/man/man3/wcscpy.3
+++ b/man/man3/wcscpy.3
@@ -31,7 +31,7 @@ .SH DESCRIPTION
 function.
 It copies the wide-character string pointed to by
 .IR src ,
-including the terminating null wide character (L\[aq]\e0\[aq]),
+including the terminating null wide character (L\[aq]\[rs]0\[aq]),
 to the array pointed to by
 .IR dest .
 .P
diff --git a/man/man3/wcslen.3 b/man/man3/wcslen.3
index ee30e6b42..7594ef542 100644
--- a/man/man3/wcslen.3
+++ b/man/man3/wcslen.3
@@ -31,7 +31,7 @@ .SH DESCRIPTION
 It determines the length of the wide-character string pointed to
 by
 .IR s ,
-excluding the terminating null wide character (L\[aq]\e0\[aq]).
+excluding the terminating null wide character (L\[aq]\[rs]0\[aq]).
 .SH RETURN VALUE
 The
 .BR wcslen ()
diff --git a/man/man3/wcsncat.3 b/man/man3/wcsncat.3
index 9b4fe52e6..a0020d558 100644
--- a/man/man3/wcsncat.3
+++ b/man/man3/wcsncat.3
@@ -37,7 +37,7 @@ .SH DESCRIPTION
 to the end of the wide-character string pointed
 to by
 .IR dest ,
-and adds a terminating null wide character (L\[aq]\e0\[aq]).
+and adds a terminating null wide character (L\[aq]\[rs]0\[aq]).
 .P
 The strings may not overlap.
 .P
diff --git a/man/man3/wcsncmp.3 b/man/man3/wcsncmp.3
index 4792e8285..dedd744e8 100644
--- a/man/man3/wcsncmp.3
+++ b/man/man3/wcsncmp.3
@@ -38,7 +38,7 @@ .SH DESCRIPTION
 wide
 characters from each string.
 In each string, the comparison extends only up
-to the first occurrence of a null wide character (L\[aq]\e0\[aq]), if any.
+to the first occurrence of a null wide character (L\[aq]\[rs]0\[aq]), if a=
ny.
 .SH RETURN VALUE
 The
 .BR wcsncmp ()
diff --git a/man/man3/wcsncpy.3 b/man/man3/wcsncpy.3
index a42f17270..c51476e40 100644
--- a/man/man3/wcsncpy.3
+++ b/man/man3/wcsncpy.3
@@ -34,7 +34,7 @@ .SH DESCRIPTION
 wide characters from the wide-character
 string pointed to by
 .IR src ,
-including the terminating null wide character (L\[aq]\e0\[aq]),
+including the terminating null wide character (L\[aq]\[rs]0\[aq]),
 to the array pointed to by
 .IR dest .
 Exactly
diff --git a/man/man3/wcsnlen.3 b/man/man3/wcsnlen.3
index cd7dd6642..717836dc9 100644
--- a/man/man3/wcsnlen.3
+++ b/man/man3/wcsnlen.3
@@ -42,7 +42,7 @@ .SH DESCRIPTION
 function.
 It returns the number of wide-characters in the string pointed to by
 .IR s ,
-not including the terminating null wide character (L\[aq]\e0\[aq]),
+not including the terminating null wide character (L\[aq]\[rs]0\[aq]),
 but at most
 .I maxlen
 wide characters (note: this parameter is not a byte count).
diff --git a/man/man3/wcsnrtombs.3 b/man/man3/wcsnrtombs.3
index 229cf59a3..96ff7d522 100644
--- a/man/man3/wcsnrtombs.3
+++ b/man/man3/wcsnrtombs.3
@@ -94,7 +94,7 @@ .SH DESCRIPTION
 .IP \[bu]
 .I nwc
 wide characters have been
-converted without encountering a null wide character (L\[aq]\e0\[aq]),
+converted without encountering a null wide character (L\[aq]\[rs]0\[aq]),
 or the length limit forces a stop.
 In this case,
 .I *src
@@ -113,7 +113,7 @@ .SH DESCRIPTION
 is set to NULL, and the number
 of bytes written to
 .IR dest ,
-excluding the terminating null byte (\[aq]\e0\[aq]), is
+excluding the terminating null byte (\[aq]\[rs]0\[aq]), is
 returned.
 .P
 If
diff --git a/man/man3/wcsrtombs.3 b/man/man3/wcsrtombs.3
index 28067cbed..1f8a5d598 100644
--- a/man/man3/wcsrtombs.3
+++ b/man/man3/wcsrtombs.3
@@ -75,7 +75,7 @@ .SH DESCRIPTION
 is returned.
 .IP \[bu]
 The wide-character string has been completely converted, including the
-terminating null wide character (L\[aq]\e0\[aq]),
+terminating null wide character (L\[aq]\[rs]0\[aq]),
 which has the side effect of bringing back
 .I *ps
 to the initial state.
@@ -84,7 +84,7 @@ .SH DESCRIPTION
 is set to NULL, and the number
 of bytes written to
 .IR dest ,
-excluding the terminating null byte (\[aq]\e0\[aq]),
+excluding the terminating null byte (\[aq]\[rs]0\[aq]),
 is returned.
 .P
 If
diff --git a/man/man3/wcsstr.3 b/man/man3/wcsstr.3
index d9bde3669..03af2524e 100644
--- a/man/man3/wcsstr.3
+++ b/man/man3/wcsstr.3
@@ -29,7 +29,7 @@ .SH DESCRIPTION
 function.
 It searches for the first occurrence of the wide-character string
 .I needle
-(without its terminating null wide character (L\[aq]\e0\[aq]))
+(without its terminating null wide character (L\[aq]\[rs]0\[aq]))
 as a substring in the wide-character string
 .IR haystack .
 .SH RETURN VALUE
diff --git a/man/man3/wcstok.3 b/man/man3/wcstok.3
index 2e5f82460..c5fba9922 100644
--- a/man/man3/wcstok.3
+++ b/man/man3/wcstok.3
@@ -66,7 +66,7 @@ .SH DESCRIPTION
 token by replacing the next wide-character which occurs in
 .I delim
 with
-a null wide character (L\[aq]\e0\[aq]),
+a null wide character (L\[aq]\[rs]0\[aq]),
 and it updates
 .I *ptr
 so that subsequent calls will
@@ -106,9 +106,9 @@ .SH EXAMPLES
 wchar_t *wcs =3D ...;
 wchar_t *token;
 wchar_t *state;
-for (token =3D wcstok(wcs, L" \et\en", &state);
+for (token =3D wcstok(wcs, L" \[rs]t\[rs]n", &state);
     token !=3D NULL;
-    token =3D wcstok(NULL, L" \et\en", &state)) {
+    token =3D wcstok(NULL, L" \[rs]t\[rs]n", &state)) {
     ...
 }
 .EE
diff --git a/man/man3/wcstombs.3 b/man/man3/wcstombs.3
index 403dacb3e..081e322c8 100644
--- a/man/man3/wcstombs.3
+++ b/man/man3/wcstombs.3
@@ -54,11 +54,11 @@ .SH DESCRIPTION
 is returned, but the shift state at this point is lost.
 .IP \[bu]
 The wide-character string has been completely converted, including the
-terminating null wide character (L\[aq]\e0\[aq]).
+terminating null wide character (L\[aq]\[rs]0\[aq]).
 In this case, the conversion ends in the initial shift state.
 The number of bytes written to
 .IR dest ,
-excluding the terminating null byte (\[aq]\e0\[aq]), is returned.
+excluding the terminating null byte (\[aq]\[rs]0\[aq]), is returned.
 .P
 The programmer must ensure that there is room for at least
 .I n
diff --git a/man/man3/wcwidth.3 b/man/man3/wcwidth.3
index 65e9ced73..dfdebd842 100644
--- a/man/man3/wcwidth.3
+++ b/man/man3/wcwidth.3
@@ -33,7 +33,7 @@ .SH DESCRIPTION
 is at least 0.
 If
 .I c
-is null wide character (L\[aq]\e0\[aq]), the value is 0.
+is null wide character (L\[aq]\[rs]0\[aq]), the value is 0.
 Otherwise, \-1 is returned.
 .SH RETURN VALUE
 The
diff --git a/man/man3/wordexp.3 b/man/man3/wordexp.3
index 94a2a393b..a189b140d 100644
--- a/man/man3/wordexp.3
+++ b/man/man3/wordexp.3
@@ -234,7 +234,7 @@ .SH EXAMPLES
     wordexp("[a\-c]*.c", &p, 0);
     w =3D p.we_wordv;
     for (size_t i =3D 0; i < p.we_wordc; i++)
-        printf("%s\en", w[i]);
+        printf("%s\[rs]n", w[i]);
     wordfree(&p);
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man3/wprintf.3 b/man/man3/wprintf.3
index d8ebe47fa..9a30fcddb 100644
--- a/man/man3/wprintf.3
+++ b/man/man3/wprintf.3
@@ -170,7 +170,7 @@ .SH DESCRIPTION
 function with a conversion state starting in the initial state before
 the first byte).
 The resulting wide characters are written up to
-(but not including) the terminating null wide character (L\[aq]\e0\[aq]).
+(but not including) the terminating null wide character (L\[aq]\[rs]0\[aq]=
).
 If a precision is
 specified, no more wide characters than the number specified are written.
 Note that the precision determines the number of
@@ -179,7 +179,7 @@ .SH DESCRIPTION
 .I bytes
 or
 .IR "screen positions" .
-The array must contain a terminating null byte (\[aq]\e0\[aq]),
+The array must contain a terminating null byte (\[aq]\[rs]0\[aq]),
 unless a precision is given
 and it is so small that the number of converted wide characters reaches it
 before the end of the array is reached.
@@ -252,7 +252,7 @@ .SH NOTES
 wide characters using their Unicode (ISO/IEC 10646) code point, but other
 platforms don't do this.
 Also, the use of C99 universal character names
-of the form \eunnnn does not solve this problem.)
+of the form \[rs]unnnn does not solve this problem.)
 Therefore, in
 internationalized programs, the
 .I format
diff --git a/man/man3const/EXIT_SUCCESS.3const b/man/man3const/EXIT_SUCCESS=
=2E3const
index 02b89be2f..e8dcb0330 100644
--- a/man/man3const/EXIT_SUCCESS.3const
+++ b/man/man3const/EXIT_SUCCESS.3const
@@ -40,7 +40,7 @@ .SH EXAMPLES
     FILE *fp;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s <file>\en", argv[0]);
+        fprintf(stderr, "Usage: %s <file>\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
diff --git a/man/man3const/NULL.3const b/man/man3const/NULL.3const
index 3aea0feca..44889df95 100644
--- a/man/man3const/NULL.3const
+++ b/man/man3const/NULL.3const
@@ -59,7 +59,7 @@ .SH CAVEATS
 .BR ascii (7)
 character,
 represented in C as
-.BR \[aq]\e0\[aq] .
+.BR \[aq]\[rs]0\[aq] .
 .SH BUGS
 When it is necessary to set a pointer variable to a null pointer,
 it is not enough to use
diff --git a/man/man3head/printf.h.3head b/man/man3head/printf.h.3head
index 42dceafe2..da6c40ac3 100644
--- a/man/man3head/printf.h.3head
+++ b/man/man3head/printf.h.3head
@@ -164,11 +164,11 @@ .SS register_printf_specifier()
 .TP
 .B PA_STRING
 .IR "const char\~*" ,
-a \(aq\e0\(aq-terminated string.
+a \(aq\[rs]0\(aq-terminated string.
 .TP
 .B PA_WSTRING
 .IR "const wchar_t\~*" ,
-a wide character L\(aq\e0\(aq-terminated string.
+a wide character L\(aq\[rs]0\(aq-terminated string.
 .TP
 .B PA_POINTER
 .IR void\~* .
@@ -254,7 +254,7 @@ .SH EXAMPLES
 \&
 #include <printf.h>
 \&
-#define GROUP_SEP  \[aq]\e\[aq]\[aq]
+#define GROUP_SEP  \[aq]\[rs]\[aq]\[aq]
 \&
 struct Printf_Pad {
     char    ch;
@@ -293,55 +293,55 @@ .SH EXAMPLES
     if (register_printf_specifier(\[aq]B\[aq], b_printf, b_arginf_sz) =3D=
=3D \-1)
         err(EXIT_FAILURE, "register_printf_specifier(\[aq]B\[aq], ...)");
 \&
-    printf("....----....----....----....----\en");
-    printf("%llb;\en", 0x5Ellu);
-    printf("%lB;\en", 0x5Elu);
-    printf("%b;\en", 0x5Eu);
-    printf("%hB;\en", 0x5Eu);
-    printf("%hhb;\en", 0x5Eu);
-    printf("%jb;\en", (uintmax_t)0x5E);
-    printf("%zb;\en", (size_t)0x5E);
-    printf("....----....----....----....----\en");
-    printf("%#b;\en", 0x5Eu);
-    printf("%#B;\en", 0x5Eu);
-    printf("....----....----....----....----\en");
-    printf("%10b;\en", 0x5Eu);
-    printf("%010b;\en", 0x5Eu);
-    printf("%.10b;\en", 0x5Eu);
-    printf("....----....----....----....----\en");
-    printf("%\-10B;\en", 0x5Eu);
-    printf("....----....----....----....----\en");
-    printf("%\[aq]B;\en", 0x5Eu);
-    printf("....----....----....----....----\en");
-    printf("....----....----....----....----\en");
-    printf("%#16.12b;\en", 0xAB);
-    printf("%\-#\[aq]20.12b;\en", 0xAB);
-    printf("%#\[aq]020B;\en", 0xAB);
-    printf("....----....----....----....----\en");
-    printf("%#020B;\en", 0xAB);
-    printf("%\[aq]020B;\en", 0xAB);
-    printf("%020B;\en", 0xAB);
-    printf("....----....----....----....----\en");
-    printf("%#021B;\en", 0xAB);
-    printf("%\[aq]021B;\en", 0xAB);
-    printf("%021B;\en", 0xAB);
-    printf("....----....----....----....----\en");
-    printf("%#022B;\en", 0xAB);
-    printf("%\[aq]022B;\en", 0xAB);
-    printf("%022B;\en", 0xAB);
-    printf("....----....----....----....----\en");
-    printf("%#023B;\en", 0xAB);
-    printf("%\[aq]023B;\en", 0xAB);
-    printf("%023B;\en", 0xAB);
-    printf("....----....----....----....----\en");
-    printf("%\-#\[aq]19.11b;\en", 0xAB);
-    printf("%#\[aq]019B;\en", 0xAB);
-    printf("%#019B;\en", 0xAB);
-    printf("....----....----....----....----\en");
-    printf("%\[aq]019B;\en", 0xAB);
-    printf("%019B;\en", 0xAB);
-    printf("%#016b;\en", 0xAB);
-    printf("....----....----....----....----\en");
+    printf("....----....----....----....----\[rs]n");
+    printf("%llb;\[rs]n", 0x5Ellu);
+    printf("%lB;\[rs]n", 0x5Elu);
+    printf("%b;\[rs]n", 0x5Eu);
+    printf("%hB;\[rs]n", 0x5Eu);
+    printf("%hhb;\[rs]n", 0x5Eu);
+    printf("%jb;\[rs]n", (uintmax_t)0x5E);
+    printf("%zb;\[rs]n", (size_t)0x5E);
+    printf("....----....----....----....----\[rs]n");
+    printf("%#b;\[rs]n", 0x5Eu);
+    printf("%#B;\[rs]n", 0x5Eu);
+    printf("....----....----....----....----\[rs]n");
+    printf("%10b;\[rs]n", 0x5Eu);
+    printf("%010b;\[rs]n", 0x5Eu);
+    printf("%.10b;\[rs]n", 0x5Eu);
+    printf("....----....----....----....----\[rs]n");
+    printf("%\-10B;\[rs]n", 0x5Eu);
+    printf("....----....----....----....----\[rs]n");
+    printf("%\[aq]B;\[rs]n", 0x5Eu);
+    printf("....----....----....----....----\[rs]n");
+    printf("....----....----....----....----\[rs]n");
+    printf("%#16.12b;\[rs]n", 0xAB);
+    printf("%\-#\[aq]20.12b;\[rs]n", 0xAB);
+    printf("%#\[aq]020B;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
+    printf("%#020B;\[rs]n", 0xAB);
+    printf("%\[aq]020B;\[rs]n", 0xAB);
+    printf("%020B;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
+    printf("%#021B;\[rs]n", 0xAB);
+    printf("%\[aq]021B;\[rs]n", 0xAB);
+    printf("%021B;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
+    printf("%#022B;\[rs]n", 0xAB);
+    printf("%\[aq]022B;\[rs]n", 0xAB);
+    printf("%022B;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
+    printf("%#023B;\[rs]n", 0xAB);
+    printf("%\[aq]023B;\[rs]n", 0xAB);
+    printf("%023B;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
+    printf("%\-#\[aq]19.11b;\[rs]n", 0xAB);
+    printf("%#\[aq]019B;\[rs]n", 0xAB);
+    printf("%#019B;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
+    printf("%\[aq]019B;\[rs]n", 0xAB);
+    printf("%019B;\[rs]n", 0xAB);
+    printf("%#016b;\[rs]n", 0xAB);
+    printf("....----....----....----....----\[rs]n");
 \&
     return 0;
 }
diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
index 5d4af9cf9..dfbb672ec 100644
--- a/man/man4/console_codes.4
+++ b/man/man4/console_codes.4
@@ -556,7 +556,7 @@ .SS Character sets
 .BR reset (1)
 that just does "echo \[ha][c".
 If your terminfo entry for the console is correct
-(and has an entry rs1=3D\eEc), then "tput reset" will also work.
+(and has an entry rs1=3D\[rs]Ec), then "tput reset" will also work.
 .P
 The user-defined mapping table can be set using
 .BR mapscrn (8).
@@ -653,11 +653,11 @@ .SS Comparisons with other terminals
 Single shift 3. (Select G3 character set for the next character only.)
 T}
 ESC P	DCS	T{
-Device control string (ended by ESC \e)
+Device control string (ended by ESC \[rs])
 T}
 ESC X	SOS	Start of string.
-ESC \[ha]	PM	Privacy message (ended by ESC \e)
-ESC \e	ST	String terminator
+ESC \[ha]	PM	Privacy message (ended by ESC \[rs])
+ESC \[rs]	ST	String terminator
 ESC * ...		Designate G2 character set
 ESC + ...		Designate G3 character set
 .TE
@@ -665,10 +665,10 @@ .SS Comparisons with other terminals
 The program
 .BR xterm (1)
 (in VT100 mode) recognizes ESC c, ESC # 8, ESC >, ESC =3D,
-ESC D, ESC E, ESC H, ESC M, ESC N, ESC O, ESC P ... ESC \e,
+ESC D, ESC E, ESC H, ESC M, ESC N, ESC O, ESC P ... ESC \[rs],
 ESC Z (it answers ESC [ ? 1 ; 2 c, "I am a VT100 with
 advanced video option")
-and ESC \[ha] ... ESC \e with the same meanings as indicated above.
+and ESC \[ha] ... ESC \[rs] with the same meanings as indicated above.
 It accepts ESC (, ESC ), ESC *,  ESC + followed by 0, A, B for
 the DEC special character and line drawing set, UK, and US-ASCII,
 respectively.
diff --git a/man/man4/dsp56k.4 b/man/man4/dsp56k.4
index 62b53700d..0d091a8a0 100644
--- a/man/man4/dsp56k.4
+++ b/man/man4/dsp56k.4
@@ -69,7 +69,7 @@ .SH DESCRIPTION
 Allowed values are in the range 1 to 4,
 and is the number of bytes that will be received at a time from the DSP560=
01.
 These data quantities will either truncated,
-or padded with a null byte (\[aq]\e0\[aq]),
+or padded with a null byte (\[aq]\[rs]0\[aq]),
 to fit the native 24-bit data format of the DSP56001.
 .TP
 .B DSP56K_HOST_FLAGS
diff --git a/man/man4/full.4 b/man/man4/full.4
index 92c440bc6..79e10c562 100644
--- a/man/man4/full.4
+++ b/man/man4/full.4
@@ -33,7 +33,7 @@ .SH DESCRIPTION
 .P
 Reads from the
 .I /dev/full
-device will return \e0 characters.
+device will return \[rs]0 characters.
 .P
 Seeks on
 .I /dev/full
diff --git a/man/man4/initrd.4 b/man/man4/initrd.4
index 6c63d6b13..90681a5ed 100644
--- a/man/man4/initrd.4
+++ b/man/man4/initrd.4
@@ -281,7 +281,7 @@ .SS Changing the normal root filesystem
 .in +4n
 .EX
 echo /var/nfsroot >/proc/sys/kernel/nfs\-root\-name
-echo 193.8.232.2:193.8.232.7::255.255.255.0:idefix \e
+echo 193.8.232.2:193.8.232.7::255.255.255.0:idefix \[rs]
     >/proc/sys/kernel/nfs\-root\-addrs
 echo 255 >/proc/sys/kernel/real\-root\-dev
 .EE
diff --git a/man/man4/loop.4 b/man/man4/loop.4
index 253784a34..b01013641 100644
--- a/man/man4/loop.4
+++ b/man/man4/loop.4
@@ -316,7 +316,7 @@ .SS Program source
 #include <stdlib.h>
 #include <unistd.h>
 \&
-#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \e
+#define errExit(msg)    do { perror(msg); exit(EXIT_FAILURE); \[rs]
                         } while (0)
 \&
 int
@@ -327,7 +327,7 @@ .SS Program source
     char loopname[4096];
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s backing\-file\en", argv[0]);
+        fprintf(stderr, "Usage: %s backing\-file\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
@@ -340,7 +340,7 @@ .SS Program source
         errExit("ioctl\-LOOP_CTL_GET_FREE");
 \&
     sprintf(loopname, "/dev/loop%ld", devnr);
-    printf("loopname =3D %s\en", loopname);
+    printf("loopname =3D %s\[rs]n", loopname);
 \&
     loopfd =3D open(loopname, O_RDWR);
     if (loopfd =3D=3D \-1)
diff --git a/man/man4/null.4 b/man/man4/null.4
index b31c96ec5..b02d88aa8 100644
--- a/man/man4/null.4
+++ b/man/man4/null.4
@@ -20,7 +20,7 @@ .SH DESCRIPTION
 .BR read (2)
 returns 0), whereas reads from
 .I /dev/zero
-always return bytes containing zero (\[aq]\e0\[aq] characters).
+always return bytes containing zero (\[aq]\[rs]0\[aq] characters).
 .P
 These devices are typically created by:
 .P
diff --git a/man/man4/vcs.4 b/man/man4/vcs.4
index fe159f093..9f836c563 100644
--- a/man/man4/vcs.4
+++ b/man/man4/vcs.4
@@ -158,7 +158,7 @@ .SH EXAMPLES
     if (s & mask)
         ch |=3D 0x100;
     attrib =3D ((s & \[ti]mask) >> 8);
-    printf("ch=3D%#03x attrib=3D%#02x\en", ch, attrib);
+    printf("ch=3D%#03x attrib=3D%#02x\[rs]n", ch, attrib);
     s \[ha]=3D 0x1000;
     (void) lseek(fd, \-2, SEEK_CUR);
     (void) write(fd, &s, 2);
diff --git a/man/man5/charmap.5 b/man/man5/charmap.5
index 40a9ad673..468f92817 100644
--- a/man/man5/charmap.5
+++ b/man/man5/charmap.5
@@ -26,7 +26,7 @@ .SS Syntax
 is followed by a character that should be used as the escape character
 for the rest of the file to mark characters that should be interpreted
 in a special way.
-It defaults to the backslash (\e).
+It defaults to the backslash (\[rs]).
 .TP
 .RI < mb_cur_max >
 is followed by the maximum number of bytes for a character.
diff --git a/man/man5/core.5 b/man/man5/core.5
index 2fb7979da..7f074ea14 100644
--- a/man/man5/core.5
+++ b/man/man5/core.5
@@ -537,7 +537,7 @@ .SS Core dumps and systemd
 .P
 .in +4n
 .EX
-# \fBecho "kernel.core_pattern=3Dcore.%p" > \e\fP
+# \fBecho "kernel.core_pattern=3Dcore.%p" > \[rs]\fP
 \fB               /etc/sysctl.d/50\-coredump.conf\fP
 # \fB/lib/systemd/systemd\-sysctl\fP
 .EE
@@ -600,11 +600,11 @@ .SH EXAMPLES
 .RB "$" " su"
 Password:
 .RB "#" " echo \[dq]|$PWD/core_pattern_pipe_test %p \
-UID=3D%u GID=3D%g sig=3D%s\[dq] > \e"
+UID=3D%u GID=3D%g sig=3D%s\[dq] > \[rs]"
 .B "    /proc/sys/kernel/core_pattern"
 .RB "#" " exit"
 .RB "$" " sleep 100"
-.BR "\[ha]\e" "                     # type control\-backslash"
+.BR "\[ha]\[rs]" "                     # type control\-backslash"
 Quit (core dumped)
 .RB "$" " cat core.info"
 argc=3D5
@@ -654,16 +654,16 @@ .SS Program source
     /* Display command\-line arguments given to core_pattern
        pipe program. */
 \&
-    fprintf(fp, "argc=3D%d\en", argc);
+    fprintf(fp, "argc=3D%d\[rs]n", argc);
     for (size_t j =3D 0; j < argc; j++)
-        fprintf(fp, "argc[%zu]=3D<%s>\en", j, argv[j]);
+        fprintf(fp, "argc[%zu]=3D<%s>\[rs]n", j, argv[j]);
 \&
     /* Count bytes in standard input (the core dump). */
 \&
     tot =3D 0;
     while ((nread =3D read(STDIN_FILENO, buf, BUF_SIZE)) > 0)
         tot +=3D nread;
-    fprintf(fp, "Total bytes in core dump: %zd\en", tot);
+    fprintf(fp, "Total bytes in core dump: %zd\[rs]n", tot);
 \&
     fclose(fp);
     exit(EXIT_SUCCESS);
diff --git a/man/man5/dir_colors.5 b/man/man5/dir_colors.5
index 8115244de..3d2b7c894 100644
--- a/man/man5/dir_colors.5
+++ b/man/man5/dir_colors.5
@@ -341,7 +341,7 @@ .SS Other terminal types (advanced configuration)
 can, however, be specified, which would have the same effect.
 .SS Escape sequences
 To specify control- or blank characters in the color sequences or
-filename extensions, either C-style \e-escaped notation or
+filename extensions, either C-style \[rs]-escaped notation or
 .BR stty \-style
 \[ha]-notation can be used.
 The C-style notation
@@ -349,21 +349,21 @@ .SS Escape sequences
 .RS
 .TS
 lb l.
-\ea	Bell (ASCII 7)
-\eb	Backspace (ASCII 8)
-\ee	Escape (ASCII 27)
-\ef	Form feed (ASCII 12)
-\en	Newline (ASCII 10)
-\er	Carriage Return (ASCII 13)
-\et	Tab (ASCII 9)
-\ev	Vertical Tab (ASCII 11)
-\e?	Delete (ASCII 127)
-\e\fInnn	Any character (octal notation)
-\ex\fInnn	Any character (hexadecimal notation)
-\e_	Space
-\e\e	Backslash (\e)
-\e\[ha]	Caret (\[ha])
-\e#	Hash mark (#)
+\[rs]a	Bell (ASCII 7)
+\[rs]b	Backspace (ASCII 8)
+\[rs]e	Escape (ASCII 27)
+\[rs]f	Form feed (ASCII 12)
+\[rs]n	Newline (ASCII 10)
+\[rs]r	Carriage Return (ASCII 13)
+\[rs]t	Tab (ASCII 9)
+\[rs]v	Vertical Tab (ASCII 11)
+\[rs]?	Delete (ASCII 127)
+\[rs]\fInnn	Any character (octal notation)
+\[rs]x\fInnn	Any character (hexadecimal notation)
+\[rs]_	Space
+\[rs]\[rs]	Backslash (\[rs])
+\[rs]\[ha]	Caret (\[ha])
+\[rs]#	Hash mark (#)
 .TE
 .RE
 .P
@@ -391,7 +391,7 @@ .SH NOTES
 .RS
 .TS
 lb l.
-LEFTCODE	\ee[
+LEFTCODE	\[rs]e[
 RIGHTCODE	m
 .TE
 .RE
diff --git a/man/man5/elf.5 b/man/man5/elf.5
index 57136159c..cd27ea4ac 100644
--- a/man/man5/elf.5
+++ b/man/man5/elf.5
@@ -1441,7 +1441,7 @@ .SS String and symbol tables
 One references a string as an index into the string
 table section.
 The first byte, which is index zero, is defined to hold
-a null byte (\[aq]\e0\[aq]).
+a null byte (\[aq]\[rs]0\[aq]).
 Similarly, a string table's last byte is defined to
 hold a null byte, ensuring null termination for all strings.
 .P
diff --git a/man/man5/issue.5 b/man/man5/issue.5
index 13d2b83b3..24403fb3f 100644
--- a/man/man5/issue.5
+++ b/man/man5/issue.5
@@ -12,7 +12,7 @@ .SH DESCRIPTION
 .I /etc/issue
 is a text file which contains a message or
 system identification to be printed before the login prompt.
-It may contain various \fB@\fP\fIchar\fP and \fB\e\fP\fIchar\fP
+It may contain various \fB@\fP\fIchar\fP and \fB\[rs]\fP\fIchar\fP
 sequences, if supported by the
 .BR getty -type
 program employed on the system.
diff --git a/man/man5/locale.5 b/man/man5/locale.5
index 39c93c88b..35d70d6fe 100644
--- a/man/man5/locale.5
+++ b/man/man5/locale.5
@@ -30,7 +30,7 @@ .SS Syntax
 is followed by a character that should be used as the
 escape-character for the rest of the file to mark characters that
 should be interpreted in a special way.
-It defaults to the backslash (\e).
+It defaults to the backslash (\[rs]).
 .TP
 .I comment_char
 is followed by a character that will be used as the
diff --git a/man/man5/proc.5 b/man/man5/proc.5
index d3bc28ff0..44ae2ddfd 100644
--- a/man/man5/proc.5
+++ b/man/man5/proc.5
@@ -214,13 +214,13 @@ .SS Overview
 .SH NOTES
 Many files contain strings (e.g., the environment and command line)
 that are in the internal format,
-with subfields terminated by null bytes (\[aq]\e0\[aq]).
+with subfields terminated by null bytes (\[aq]\[rs]0\[aq]).
 When inspecting such files, you may find that the results are more readable
 if you use a command of the following form to display them:
 .P
 .in +4n
 .EX
-.RB "$" " cat \fIfile\fP | tr \[aq]\e000\[aq] \[aq]\en\[aq]"
+.RB "$" " cat \fIfile\fP | tr \[aq]\[rs]000\[aq] \[aq]\[rs]n\[aq]"
 .EE
 .in
 .\" .SH ACKNOWLEDGEMENTS
diff --git a/man/man5/proc_pid_cmdline.5 b/man/man5/proc_pid_cmdline.5
index 047cacd62..6b98e5322 100644
--- a/man/man5/proc_pid_cmdline.5
+++ b/man/man5/proc_pid_cmdline.5
@@ -20,7 +20,7 @@ .SH DESCRIPTION
 the command-line arguments appear in this file
 in the same layout as they do in process memory:
 If the process is well-behaved,
-it is a set of strings separated by null bytes (\[aq]\e0\[aq]),
+it is a set of strings separated by null bytes (\[aq]\[rs]0\[aq]),
 with a further null byte after the last string.
 .IP
 This is the common case,
diff --git a/man/man5/proc_pid_environ.5 b/man/man5/proc_pid_environ.5
index 0ff8d4829..e3f4ef850 100644
--- a/man/man5/proc_pid_environ.5
+++ b/man/man5/proc_pid_environ.5
@@ -13,13 +13,13 @@ .SH DESCRIPTION
 This file contains the initial environment that was set
 when the currently executing program was started via
 .BR execve (2).
-The entries are separated by null bytes (\[aq]\e0\[aq]),
+The entries are separated by null bytes (\[aq]\[rs]0\[aq]),
 and there may be a null byte at the end.
 Thus, to print out the environment of process 1, you would do:
 .IP
 .in +4n
 .EX
-.RB "$" " cat /proc/1/environ | tr \[aq]\e000\[aq] \[aq]\en\[aq]"
+.RB "$" " cat /proc/1/environ | tr \[aq]\[rs]000\[aq] \[aq]\[rs]n\[aq]"
 .EE
 .in
 .IP
diff --git a/man/man5/proc_pid_maps.5 b/man/man5/proc_pid_maps.5
index 36efa5702..1e3fcecdc 100644
--- a/man/man5/proc_pid_maps.5
+++ b/man/man5/proc_pid_maps.5
@@ -144,7 +144,7 @@ .SH DESCRIPTION
 with an octal escape sequence.
 As a result, it is not possible to determine whether the original
 pathname contained a newline character or the literal
-.I \e012
+.I \[rs]012
 character sequence.
 .IP
 If the mapping is file-backed and the file has been deleted, the string
diff --git a/man/man5/proc_sys.5 b/man/man5/proc_sys.5
index 4a2965842..7c66501eb 100644
--- a/man/man5/proc_sys.5
+++ b/man/man5/proc_sys.5
@@ -18,13 +18,13 @@ .SH DESCRIPTION
 .BR sysctl (2)
 system call.
 .IP
-String values may be terminated by either \[aq]\e0\[aq] or \[aq]\en\[aq].
+String values may be terminated by either \[aq]\[rs]0\[aq] or \[aq]\[rs]n\=
[aq].
 .IP
 Integer and long values may be written either in decimal or in
 hexadecimal notation (e.g., 0x3FFF).
 When writing multiple integer or long values, these may be separated
 by any of the following whitespace characters:
-\[aq]\ \[aq], \[aq]\et\[aq], or \[aq]\en\[aq].
+\[aq]\ \[aq], \[aq]\[rs]t\[aq], or \[aq]\[rs]n\[aq].
 Using other separators leads to the error
 .BR EINVAL .
 .SH SEE ALSO
diff --git a/man/man5/repertoiremap.5 b/man/man5/repertoiremap.5
index 71c8a26a9..0982fc809 100644
--- a/man/man5/repertoiremap.5
+++ b/man/man5/repertoiremap.5
@@ -22,7 +22,7 @@ .SS Syntax
 is followed by a character that should be used as the escape character
 for the rest of the file to mark characters that should be interpreted
 in a special way.
-It defaults to the backslash (\e).
+It defaults to the backslash (\[rs]).
 .P
 The mapping section starts with the keyword
 .I CHARIDS
diff --git a/man/man5/sysfs.5 b/man/man5/sysfs.5
index b118bb650..53db111a7 100644
--- a/man/man5/sysfs.5
+++ b/man/man5/sysfs.5
@@ -115,7 +115,7 @@ .SS Files and directories
 .EX
 $ \fBstat \-c "%t %T" /dev/null\fP
 1 3
-$ \fBreadlink /sys/dev/char/1\e:3\fP
+$ \fBreadlink /sys/dev/char/1\[rs]:3\fP
 \&../../devices/virtual/mem/null
 $ \fBls \-Fd /sys/devices/virtual/mem/null\fP
 /sys/devices/virtual/mem/null/
diff --git a/man/man5/termcap.5 b/man/man5/termcap.5
index 3f49c43ac..781f11d88 100644
--- a/man/man5/termcap.5
+++ b/man/man5/termcap.5
@@ -33,7 +33,7 @@ .SH DESCRIPTION
 .B TERM
 environment variable.
 .P
-Termcap entries must be defined on a single logical line, with \[aq]\e\[aq]
+Termcap entries must be defined on a single logical line, with \[aq]\[rs]\=
[aq]
 used to suppress the newline.
 Fields are separated by \[aq]:\[aq].
 The first field of each entry starts at the left-hand margin,
@@ -68,11 +68,11 @@ .SH DESCRIPTION
 Example for:
 .nf
 .P
-Head line: vt|vt101|DEC VT 101 terminal in 80 character mode:\e
-Head line: Vt|vt101-w|DEC VT 101 terminal in (wide) 132 character mode:\e
-Boolean: :bs:\e
-Numeric: :co#80:\e
-String: :sr=3D\eE[H:\e
+Head line: vt|vt101|DEC VT 101 terminal in 80 character mode:\[rs]
+Head line: Vt|vt101-w|DEC VT 101 terminal in (wide) 132 character mode:\[r=
s]
+Boolean: :bs:\[rs]
+Numeric: :co#80:\[rs]
+String: :sr=3D\[rs]E[H:\[rs]
 .fi
 .SS Boolean capabilities
 .nf
@@ -362,12 +362,12 @@ .SS String capabilities
 There are several ways of defining the control codes for string capabiliti=
es:
 .P
 Every normal character represents itself,
-except \[aq]\[ha]\[aq], \[aq]\e\[aq], and \[aq]%\[aq].
+except \[aq]\[ha]\[aq], \[aq]\[rs]\[aq], and \[aq]%\[aq].
 .P
 A \fB\[ha]x\fP means Control-x.
 Control-A equals 1 decimal.
 .P
-\ex means a special code.
+\[rs]x means a special code.
 x can be one of the following characters:
 .RS
 E Escape (27)
@@ -383,7 +383,7 @@ .SS String capabilities
 f Form feed (12)
 .br
 0 Null character.
-A \exxx specifies the octal character xxx.
+A \[rs]xxx specifies the octal character xxx.
 .RE
 .TP
 i
@@ -405,7 +405,7 @@ .SS String capabilities
 Print a \[aq]%\[aq]
 .P
 If you use binary output,
-then you should avoid the null character (\[aq]\e0\[aq])
+then you should avoid the null character (\[aq]\[rs]0\[aq])
 because it terminates the string.
 You should reset tabulator expansion
 if a tabulator can be the binary output of a parameter.
diff --git a/man/man5/utmp.5 b/man/man5/utmp.5
index 62febabef..2d3255721 100644
--- a/man/man5/utmp.5
+++ b/man/man5/utmp.5
@@ -117,7 +117,7 @@ .SH DESCRIPTION
 user's terminal, the user's login name, and the time of login in the form
 of
 .BR time (2).
-String fields are terminated by a null byte (\[aq]\e0\[aq])
+String fields are terminated by a null byte (\[aq]\[rs]0\[aq])
 if they are shorter than the size
 of the field.
 .P
diff --git a/man/man7/aio.7 b/man/man7/aio.7
index 513fbbb73..eca1ae3fa 100644
--- a/man/man7/aio.7
+++ b/man/man7/aio.7
@@ -189,7 +189,7 @@ .SH EXAMPLES
 .P
 The
 .B SIGQUIT
-signal (generated by typing control-\e) causes the program to request
+signal (generated by typing control-\[rs]) causes the program to request
 cancelation of each of the outstanding requests using
 .BR aio_cancel (3).
 .P
@@ -261,7 +261,7 @@ .SS Program source
 aioSigHandler(int sig, siginfo_t *si, void *ucontext)
 {
     if (si\->si_code =3D=3D SI_ASYNCIO) {
-        write(STDOUT_FILENO, "I/O completion signal received\en", 31);
+        write(STDOUT_FILENO, "I/O completion signal received\[rs]n", 31);
 \&
         /* The corresponding ioRequest structure would be available as
                struct ioRequest *ioReq =3D si\->si_value.sival_ptr;
@@ -279,7 +279,7 @@ .SS Program source
     int openReqs;       /* Number of I/O requests still in progress */
 \&
     if (argc < 2) {
-        fprintf(stderr, "Usage: %s <pathname> <pathname>...\en",
+        fprintf(stderr, "Usage: %s <pathname> <pathname>...\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -321,7 +321,7 @@ .SS Program source
         ioList[j].aiocbp\->aio_fildes =3D open(argv[j + 1], O_RDONLY);
         if (ioList[j].aiocbp\->aio_fildes =3D=3D \-1)
             errExit("open");
-        printf("opened %s on descriptor %d\en", argv[j + 1],
+        printf("opened %s on descriptor %d\[rs]n", argv[j + 1],
                 ioList[j].aiocbp\->aio_fildes);
 \&
         ioList[j].aiocbp\->aio_buf =3D malloc(BUF_SIZE);
@@ -354,7 +354,7 @@ .SS Program source
                outstanding I/O requests, and display status returned
                from the cancelation requests. */
 \&
-            printf("got SIGQUIT; canceling I/O requests: \en");
+            printf("got SIGQUIT; canceling I/O requests: \[rs]n");
 \&
             for (size_t j =3D 0; j < numReqs; j++) {
                 if (ioList[j].status =3D=3D EINPROGRESS) {
@@ -363,11 +363,11 @@ .SS Program source
                     s =3D aio_cancel(ioList[j].aiocbp\->aio_fildes,
                             ioList[j].aiocbp);
                     if (s =3D=3D AIO_CANCELED)
-                        printf("I/O canceled\en");
+                        printf("I/O canceled\[rs]n");
                     else if (s =3D=3D AIO_NOTCANCELED)
-                        printf("I/O not canceled\en");
+                        printf("I/O not canceled\[rs]n");
                     else if (s =3D=3D AIO_ALLDONE)
-                        printf("I/O all done\en");
+                        printf("I/O all done\[rs]n");
                     else
                         perror("aio_cancel");
                 }
@@ -379,7 +379,7 @@ .SS Program source
         /* Check the status of each I/O request that is still
            in progress. */
 \&
-        printf("aio_error():\en");
+        printf("aio_error():\[rs]n");
         for (size_t j =3D 0; j < numReqs; j++) {
             if (ioList[j].status =3D=3D EINPROGRESS) {
                 printf("    for request %zu (descriptor %d): ",
@@ -388,13 +388,13 @@ .SS Program source
 \&
                 switch (ioList[j].status) {
                 case 0:
-                    printf("I/O succeeded\en");
+                    printf("I/O succeeded\[rs]n");
                     break;
                 case EINPROGRESS:
-                    printf("In progress\en");
+                    printf("In progress\[rs]n");
                     break;
                 case ECANCELED:
-                    printf("Canceled\en");
+                    printf("Canceled\[rs]n");
                     break;
                 default:
                     perror("aio_error");
@@ -407,16 +407,16 @@ .SS Program source
         }
     }
 \&
-    printf("All I/O requests completed\en");
+    printf("All I/O requests completed\[rs]n");
 \&
     /* Check status return of all I/O requests. */
 \&
-    printf("aio_return():\en");
+    printf("aio_return():\[rs]n");
     for (size_t j =3D 0; j < numReqs; j++) {
         ssize_t s;
 \&
         s =3D aio_return(ioList[j].aiocbp);
-        printf("    for request %zu (descriptor %d): %zd\en",
+        printf("    for request %zu (descriptor %d): %zd\[rs]n",
                 j, ioList[j].aiocbp\->aio_fildes, s);
     }
 \&
diff --git a/man/man7/ascii.7 b/man/man7/ascii.7
index ab95c4749..074264776 100644
--- a/man/man7/ascii.7
+++ b/man/man7/ascii.7
@@ -25,27 +25,27 @@ .SH DESCRIPTION
 .P
 The following table contains the 128 ASCII characters.
 .P
-C program \f(CW\[aq]\eX\[aq]\fP escapes are noted.
+C program \f(CW\[aq]\[rs]X\[aq]\fP escapes are noted.
 .P
 .EX
 .TS
 l l l l | l l l l.
 Oct	Dec	Hex	Char	Oct	Dec	Hex	Char
 _
-000	0	00	NUL \[aq]\e0\[aq] (null character)	100	64	40	@
+000	0	00	NUL \[aq]\[rs]0\[aq] (null character)	100	64	40	@
 001	1	01	SOH (start of heading)	101	65	41	A
 002	2	02	STX (start of text)	102	66	42	B
 003	3	03	ETX (end of text)	103	67	43	C
 004	4	04	EOT (end of transmission)	104	68	44	D
 005	5	05	ENQ (enquiry)	105	69	45	E
 006	6	06	ACK (acknowledge)	106	70	46	F
-007	7	07	BEL \[aq]\ea\[aq] (bell)	107	71	47	G
-010	8	08	BS  \[aq]\eb\[aq] (backspace)	110	72	48	H
-011	9	09	HT  \[aq]\et\[aq] (horizontal tab)	111	73	49	I
-012	10	0A	LF  \[aq]\en\[aq] (new line)	112	74	4A	J
-013	11	0B	VT  \[aq]\ev\[aq] (vertical tab)	113	75	4B	K
-014	12	0C	FF  \[aq]\ef\[aq] (form feed)	114	76	4C	L
-015	13	0D	CR  \[aq]\er\[aq] (carriage ret)	115	77	4D	M
+007	7	07	BEL \[aq]\[rs]a\[aq] (bell)	107	71	47	G
+010	8	08	BS  \[aq]\[rs]b\[aq] (backspace)	110	72	48	H
+011	9	09	HT  \[aq]\[rs]t\[aq] (horizontal tab)	111	73	49	I
+012	10	0A	LF  \[aq]\[rs]n\[aq] (new line)	112	74	4A	J
+013	11	0B	VT  \[aq]\[rs]v\[aq] (vertical tab)	113	75	4B	K
+014	12	0C	FF  \[aq]\[rs]f\[aq] (form feed)	114	76	4C	L
+015	13	0D	CR  \[aq]\[rs]r\[aq] (carriage ret)	115	77	4D	M
 016	14	0E	SO  (shift out)	116	78	4E	N
 017	15	0F	SI  (shift in)	117	79	4F	O
 020	16	10	DLE (data link escape)	120	80	50	P
@@ -60,7 +60,7 @@ .SH DESCRIPTION
 031	25	19	EM  (end of medium)	131	89	59	Y
 032	26	1A	SUB (substitute)	132	90	5A	Z
 033	27	1B	ESC (escape)	133	91	5B	[
-034	28	1C	FS  (file separator)	134	92	5C	\e  \[aq]\e\e\[aq]
+034	28	1C	FS  (file separator)	134	92	5C	\[rs]  \[aq]\[rs]\[rs]\[aq]
 035	29	1D	GS  (group separator)	135	93	5D	]
 036	30	1E	RS  (record separator)	136	94	5E	\[ha]
 037	31	1F	US  (unit separator)	137	95	5F	\&_
@@ -106,7 +106,7 @@ .SS Tables
  -------------      ---------------------------------
 0:   0 @ P \` p     0:    (  2  <  F  P  Z  d   n   x
 1: ! 1 A Q a q     1:    )  3  =3D  G  Q  [  e   o   y
-2: " 2 B R b r     2:    *  4  >  H  R  \e  f   p   z
+2: " 2 B R b r     2:    *  4  >  H  R  \[rs]  f   p   z
 3: # 3 C S c s     3: !  +  5  ?  I  S  ]  g   q   {
 4: $ 4 D T d t     4: "  ,  6  @  J  T  \[ha]  h   r   |
 5: % 5 E U e u     5: #  \-  7  A  K  U  _  i   s   }
@@ -116,7 +116,7 @@ .SS Tables
 9: ) 9 I Y i y     9: \[aq]  1  ;  E  O  Y  c  m   w
 A: * : J Z j z
 B: + ; K [ k {
-C: , < L \e l |
+C: , < L \[rs] l |
 D: \- =3D M ] m }
 E: . > N \[ha] n \[ti]
 F: / ? O _ o DEL
diff --git a/man/man7/cgroups.7 b/man/man7/cgroups.7
index 877aae03f..cfa60e067 100644
--- a/man/man7/cgroups.7
+++ b/man/man7/cgroups.7
@@ -1098,7 +1098,7 @@ .SS Cgroups v2 delegation: nsdelegate and cgroup name=
spaces
 .P
 .in +4n
 .EX
-mount \-t cgroup2 \-o remount,nsdelegate \e
+mount \-t cgroup2 \-o remount,nsdelegate \[rs]
                  none /sys/fs/cgroup/unified
 .EE
 .in
diff --git a/man/man7/charsets.7 b/man/man7/charsets.7
index 8fa803b5f..603d3ac7b 100644
--- a/man/man7/charsets.7
+++ b/man/man7/charsets.7
@@ -311,7 +311,7 @@ .SS Unicode
 Note that the only way ASCII bytes occur in a UTF-8 stream,
 is as themselves.
 In particular,
-there are no embedded NULs (\[aq]\e0\[aq]) or \[aq]/\[aq]s
+there are no embedded NULs (\[aq]\[rs]0\[aq]) or \[aq]/\[aq]s
 that form part of some larger code.
 .P
 Since ASCII, and, in particular, NUL and \[aq]/\[aq], are unchanged, the
diff --git a/man/man7/complex.7 b/man/man7/complex.7
index fa8cb2631..840e78ad3 100644
--- a/man/man7/complex.7
+++ b/man/man7/complex.7
@@ -51,7 +51,7 @@ .SH EXAMPLES
 {
     double pi =3D 4 * atan(1.0);
     double complex z =3D cexp(I * pi);
-    printf("%f + %f * i\en", creal(z), cimag(z));
+    printf("%f + %f * i\[rs]n", creal(z), cimag(z));
 }
 .EE
 .SH SEE ALSO
diff --git a/man/man7/cpuset.7 b/man/man7/cpuset.7
index 7ae130ebb..8437386e9 100644
--- a/man/man7/cpuset.7
+++ b/man/man7/cpuset.7
@@ -515,7 +515,7 @@ .SS Memory pressure
 .IR /dev/cpuset/cpuset.memory_pressure_enabled ,
 it is not computed for any cpuset, and reads from any
 .I memory_pressure
-always return zero, as represented by the ASCII string "0\en".
+always return zero, as represented by the ASCII string "0\[rs]n".
 See the \fBWARNINGS\fR section, below.
 .P
 A per-cpuset, running average is employed for the following reasons:
diff --git a/man/man7/environ.7 b/man/man7/environ.7
index f98359a3f..6b4a8bb60 100644
--- a/man/man7/environ.7
+++ b/man/man7/environ.7
@@ -39,7 +39,7 @@ .SH DESCRIPTION
 The name is case-sensitive and may not contain
 the character "\fB=3D\fP".
 The value can be anything that can be represented as a string.
-The name and the value may not contain an embedded null byte (\[aq]\e0\[aq=
]),
+The name and the value may not contain an embedded null byte (\[aq]\[rs]0\=
[aq]),
 since this is assumed to terminate the string.
 .P
 Environment variables may be placed in the shell's environment by the
diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index 07e445546..373354301 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -1090,7 +1090,7 @@ .SS Program source: fanotify_example.c
 \&
             if (metadata\->vers !=3D FANOTIFY_METADATA_VERSION) {
                 fprintf(stderr,
-                        "Mismatch of fanotify metadata version.\en");
+                        "Mismatch of fanotify metadata version.\[rs]n");
                 exit(EXIT_FAILURE);
             }
 \&
@@ -1128,8 +1128,8 @@ .SS Program source: fanotify_example.c
                     exit(EXIT_FAILURE);
                 }
 \&
-                path[path_len] =3D \[aq]\e0\[aq];
-                printf("File %s\en", path);
+                path[path_len] =3D \[aq]\[rs]0\[aq];
+                printf("File %s\[rs]n", path);
 \&
                 /* Close the file descriptor of the event. */
 \&
@@ -1154,11 +1154,11 @@ .SS Program source: fanotify_example.c
     /* Check mount point is supplied. */
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Usage: %s MOUNT\en", argv[0]);
+        fprintf(stderr, "Usage: %s MOUNT\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Press enter key to terminate.\en");
+    printf("Press enter key to terminate.\[rs]n");
 \&
     /* Create the file descriptor for accessing the fanotify API. */
 \&
@@ -1193,7 +1193,7 @@ .SS Program source: fanotify_example.c
 \&
     /* This is the loop to wait for incoming events. */
 \&
-    printf("Listening for events.\en");
+    printf("Listening for events.\[rs]n");
 \&
     while (1) {
         poll_num =3D poll(fds, nfds, \-1);
@@ -1210,7 +1210,7 @@ .SS Program source: fanotify_example.c
 \&
                 /* Console input is available: empty stdin and quit. */
 \&
-                while (read(STDIN_FILENO, &buf, 1) > 0 && buf !=3D \[aq]\e=
n\[aq])
+                while (read(STDIN_FILENO, &buf, 1) > 0 && buf !=3D \[aq]\[=
rs]n\[aq])
                     continue;
                 break;
             }
@@ -1224,7 +1224,7 @@ .SS Program source: fanotify_example.c
         }
     }
 \&
-    printf("Listening for events stopped.\en");
+    printf("Listening for events stopped.\[rs]n");
     exit(EXIT_SUCCESS);
 }
 .EE
@@ -1322,7 +1322,7 @@ .SS Program source: fanotify_fid.c
     struct stat sb;
 \&
     if (argc !=3D 2) {
-        fprintf(stderr, "Invalid number of command line arguments.\en");
+        fprintf(stderr, "Invalid number of command line arguments.\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -1352,7 +1352,7 @@ .SS Program source: fanotify_fid.c
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Listening for events.\en");
+    printf("Listening for events.\[rs]n");
 \&
     /* Read events from the event queue into a buffer. */
 \&
@@ -1379,15 +1379,15 @@ .SS Program source: fanotify_fid.c
             file_name =3D file_handle\->f_handle +
                         file_handle\->handle_bytes;
         } else {
-            fprintf(stderr, "Received unexpected event info type.\en");
+            fprintf(stderr, "Received unexpected event info type.\[rs]n");
             exit(EXIT_FAILURE);
         }
 \&
         if (metadata\->mask =3D=3D FAN_CREATE)
-            printf("FAN_CREATE (file created):\en");
+            printf("FAN_CREATE (file created):\[rs]n");
 \&
         if (metadata\->mask =3D=3D (FAN_CREATE | FAN_ONDIR))
-            printf("FAN_CREATE | FAN_ONDIR (subdirectory created):\en");
+            printf("FAN_CREATE | FAN_ONDIR (subdirectory created):\[rs]n");
 \&
 	/* metadata\->fd is set to FAN_NOFD when the group identifies
 	   objects by file handles.  To obtain a file descriptor for
@@ -1402,7 +1402,7 @@ .SS Program source: fanotify_fid.c
         if (event_fd =3D=3D \-1) {
             if (errno =3D=3D ESTALE) {
                 printf("File handle is no longer valid. "
-                        "File has been deleted\en");
+                        "File has been deleted\[rs]n");
                 continue;
             } else {
                 perror("open_by_handle_at");
@@ -1421,8 +1421,8 @@ .SS Program source: fanotify_fid.c
             exit(EXIT_FAILURE);
         }
 \&
-        path[path_len] =3D \[aq]\e0\[aq];
-        printf("\etDirectory \[aq]%s\[aq] has been modified.\en", path);
+        path[path_len] =3D \[aq]\[rs]0\[aq];
+        printf("\[rs]tDirectory \[aq]%s\[aq] has been modified.\[rs]n", pa=
th);
 \&
         if (file_name) {
             ret =3D fstatat(event_fd, file_name, &sb, 0);
@@ -1431,11 +1431,11 @@ .SS Program source: fanotify_fid.c
                     perror("fstatat");
                     exit(EXIT_FAILURE);
                 }
-                printf("\etEntry \[aq]%s\[aq] does not exist.\en", file_na=
me);
+                printf("\[rs]tEntry \[aq]%s\[aq] does not exist.\[rs]n", f=
ile_name);
             } else if ((sb.st_mode & S_IFMT) =3D=3D S_IFDIR) {
-                printf("\etEntry \[aq]%s\[aq] is a subdirectory.\en", file=
_name);
+                printf("\[rs]tEntry \[aq]%s\[aq] is a subdirectory.\[rs]n"=
, file_name);
             } else {
-                printf("\etEntry \[aq]%s\[aq] is not a subdirectory.\en",
+                printf("\[rs]tEntry \[aq]%s\[aq] is not a subdirectory.\[r=
s]n",
                         file_name);
             }
         }
@@ -1445,7 +1445,7 @@ .SS Program source: fanotify_fid.c
         close(event_fd);
     }
 \&
-    printf("All events processed successfully. Program exiting.\en");
+    printf("All events processed successfully. Program exiting.\[rs]n");
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man7/feature_test_macros.7 b/man/man7/feature_test_macros.7
index e705445a1..5dbc3c2fc 100644
--- a/man/man7/feature_test_macros.7
+++ b/man/man7/feature_test_macros.7
@@ -854,72 +854,72 @@ .SS Program source
 main(int argc, char *argv[])
 {
 #ifdef _POSIX_SOURCE
-    printf("_POSIX_SOURCE defined\en");
+    printf("_POSIX_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _POSIX_C_SOURCE
-    printf("_POSIX_C_SOURCE defined: %jdL\en",
+    printf("_POSIX_C_SOURCE defined: %jdL\[rs]n",
             (intmax_t) _POSIX_C_SOURCE);
 #endif
 \&
 #ifdef _ISOC99_SOURCE
-    printf("_ISOC99_SOURCE defined\en");
+    printf("_ISOC99_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _ISOC11_SOURCE
-    printf("_ISOC11_SOURCE defined\en");
+    printf("_ISOC11_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _XOPEN_SOURCE
-    printf("_XOPEN_SOURCE defined: %d\en", _XOPEN_SOURCE);
+    printf("_XOPEN_SOURCE defined: %d\[rs]n", _XOPEN_SOURCE);
 #endif
 \&
 #ifdef _XOPEN_SOURCE_EXTENDED
-    printf("_XOPEN_SOURCE_EXTENDED defined\en");
+    printf("_XOPEN_SOURCE_EXTENDED defined\[rs]n");
 #endif
 \&
 #ifdef _LARGEFILE64_SOURCE
-    printf("_LARGEFILE64_SOURCE defined\en");
+    printf("_LARGEFILE64_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _FILE_OFFSET_BITS
-    printf("_FILE_OFFSET_BITS defined: %d\en", _FILE_OFFSET_BITS);
+    printf("_FILE_OFFSET_BITS defined: %d\[rs]n", _FILE_OFFSET_BITS);
 #endif
 \&
 #ifdef _TIME_BITS
-    printf("_TIME_BITS defined: %d\en", _TIME_BITS);
+    printf("_TIME_BITS defined: %d\[rs]n", _TIME_BITS);
 #endif
 \&
 #ifdef _BSD_SOURCE
-    printf("_BSD_SOURCE defined\en");
+    printf("_BSD_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _SVID_SOURCE
-    printf("_SVID_SOURCE defined\en");
+    printf("_SVID_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _DEFAULT_SOURCE
-    printf("_DEFAULT_SOURCE defined\en");
+    printf("_DEFAULT_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _ATFILE_SOURCE
-    printf("_ATFILE_SOURCE defined\en");
+    printf("_ATFILE_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _GNU_SOURCE
-    printf("_GNU_SOURCE defined\en");
+    printf("_GNU_SOURCE defined\[rs]n");
 #endif
 \&
 #ifdef _REENTRANT
-    printf("_REENTRANT defined\en");
+    printf("_REENTRANT defined\[rs]n");
 #endif
 \&
 #ifdef _THREAD_SAFE
-    printf("_THREAD_SAFE defined\en");
+    printf("_THREAD_SAFE defined\[rs]n");
 #endif
 \&
 #ifdef _FORTIFY_SOURCE
-    printf("_FORTIFY_SOURCE defined\en");
+    printf("_FORTIFY_SOURCE defined\[rs]n");
 #endif
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man7/glob.7 b/man/man7/glob.7
index 6217b2c3e..82766f69d 100644
--- a/man/man7/glob.7
+++ b/man/man7/glob.7
@@ -70,8 +70,8 @@ .SS Wildcard matching
 in case this is part of a shell command line,
 enclosing them in quotes.
 Between brackets these characters stand for themselves.
-Thus, "\fI[[?*\e]\fP" matches the
-four characters \[aq][\[aq], \[aq]?\[aq], \[aq]*\[aq], and \[aq]\e\[aq].
+Thus, "\fI[[?*\[rs]]\fP" matches the
+four characters \[aq][\[aq], \[aq]?\[aq], \[aq]*\[aq], and \[aq]\[rs]\[aq].
 .SS Pathnames
 Globbing is applied on each of the components of a pathname
 separately.
diff --git a/man/man7/inode.7 b/man/man7/inode.7
index 45bf71467..497e30e8a 100644
--- a/man/man7/inode.7
+++ b/man/man7/inode.7
@@ -471,7 +471,7 @@ .SH NOTES
 .I /sys
 report a size of 4096 bytes, even though the file content is smaller.
 For such files, one should simply try to read as many bytes as possible
-(and append \[aq]\e0\[aq] to the returned buffer
+(and append \[aq]\[rs]0\[aq] to the returned buffer
 if it is to be interpreted as a string).
 .SH SEE ALSO
 .BR stat (1),
diff --git a/man/man7/inotify.7 b/man/man7/inotify.7
index bd3972f80..8ce99a6d1 100644
--- a/man/man7/inotify.7
+++ b/man/man7/inotify.7
@@ -126,7 +126,7 @@ .SS Reading events from an inotify file descriptor
 for a file inside a watched directory;
 it identifies the filename within the watched directory.
 This filename is null-terminated,
-and may include further null bytes (\[aq]\e0\[aq])
+and may include further null bytes (\[aq]\[rs]0\[aq])
 to align subsequent reads to a suitable address boundary.
 .P
 The
@@ -980,9 +980,9 @@ .SS Program source
             /* Print type of filesystem object. */
 \&
             if (event\->mask & IN_ISDIR)
-                printf(" [directory]\en");
+                printf(" [directory]\[rs]n");
             else
-                printf(" [file]\en");
+                printf(" [file]\[rs]n");
         }
     }
 }
@@ -997,11 +997,11 @@ .SS Program source
     struct pollfd fds[2];
 \&
     if (argc < 2) {
-        printf("Usage: %s PATH [PATH ...]\en", argv[0]);
+        printf("Usage: %s PATH [PATH ...]\[rs]n", argv[0]);
         exit(EXIT_FAILURE);
     }
 \&
-    printf("Press ENTER key to terminate.\en");
+    printf("Press ENTER key to terminate.\[rs]n");
 \&
     /* Create the file descriptor for accessing the inotify API. */
 \&
@@ -1027,7 +1027,7 @@ .SS Program source
         wd[i] =3D inotify_add_watch(fd, argv[i],
                                   IN_OPEN | IN_CLOSE);
         if (wd[i] =3D=3D \-1) {
-            fprintf(stderr, "Cannot watch \[aq]%s\[aq]: %s\en",
+            fprintf(stderr, "Cannot watch \[aq]%s\[aq]: %s\[rs]n",
                     argv[i], strerror(errno));
             exit(EXIT_FAILURE);
         }
@@ -1045,7 +1045,7 @@ .SS Program source
 \&
     /* Wait for events and/or terminal input. */
 \&
-    printf("Listening for events.\en");
+    printf("Listening for events.\[rs]n");
     while (1) {
         poll_num =3D poll(fds, nfds, \-1);
         if (poll_num =3D=3D \-1) {
@@ -1061,7 +1061,7 @@ .SS Program source
 \&
                 /* Console input is available. Empty stdin and quit. */
 \&
-                while (read(STDIN_FILENO, &buf, 1) > 0 && buf !=3D \[aq]\e=
n\[aq])
+                while (read(STDIN_FILENO, &buf, 1) > 0 && buf !=3D \[aq]\[=
rs]n\[aq])
                     continue;
                 break;
             }
@@ -1075,7 +1075,7 @@ .SS Program source
         }
     }
 \&
-    printf("Listening for events stopped.\en");
+    printf("Listening for events stopped.\[rs]n");
 \&
     /* Close inotify file descriptor. */
 \&
diff --git a/man/man7/locale.7 b/man/man7/locale.7
index 5a418ae13..8bee8ca3c 100644
--- a/man/man7/locale.7
+++ b/man/man7/locale.7
@@ -263,7 +263,7 @@ .SH DESCRIPTION
     char *int_curr_symbol;   /* First three chars are a currency
                                 symbol from ISO 4217.  Fourth char
                                 is the separator.  Fifth char
-                                is \[aq]\e0\[aq]. */
+                                is \[aq]\[rs]0\[aq]. */
     char *currency_symbol;   /* Local currency symbol */
     char *mon_decimal_point; /* Radix character */
     char *mon_thousands_sep; /* Like \fIthousands_sep\fP above */
diff --git a/man/man7/man-pages.7 b/man/man7/man-pages.7
index 007b9e7a2..dc117662f 100644
--- a/man/man7/man-pages.7
+++ b/man/man7/man-pages.7
@@ -184,7 +184,7 @@ .SS Sections within a manual page
 for important details of the line(s) that should follow the
 \fB.SH NAME\fP command.
 All words in this line (including the word immediately
-following the "\e\-") should be in lowercase,
+following the "\[rs]\-") should be in lowercase,
 except where English or technical terminological convention
 dictates otherwise.
 .TP
@@ -464,7 +464,7 @@ .SS Sections within a manual page
 (don't hyphenate)
 directives.
 Hyphenation of individual page names can be prevented
-by preceding words with the string "\e%".
+by preceding words with the string "\[rs]%".
 .IP
 Given the distributed, autonomous nature of FOSS projects
 and their documentation, it is sometimes necessary\[em]and in many cases
@@ -611,7 +611,7 @@ .SS Formatting conventions for manual pages describing =
functions
     .BR fcntl ()
 .EE
 .P
-(Using this format, rather than the use of "\efB...\efP()"
+(Using this format, rather than the use of "\[rs]fB...\[rs]fP()"
 makes it easier to write tools that parse man page source files.)
 .\"
 .SS Use semantic newlines
@@ -669,7 +669,7 @@ .SS Lists
 .TP
 Bullet lists
 Elements are preceded by bullet symbols
-.RB ( \e[bu] ).
+.RB ( \[rs][bu] ).
 Anything that doesn't fit elsewhere is
 usually covered by this type of list.
 .TP
@@ -958,7 +958,7 @@ .SS NULL, NUL, null pointer, and null byte
 is the
 .IR "null byte" ,
 a byte with the value 0, represented in C via the character constant
-.IR \[aq]\e0\[aq] .
+.IR \[aq]\[rs]0\[aq] .
 .P
 The preferred term for the pointer is "null pointer" or simply "NULL";
 avoid writing "NULL pointer".
@@ -998,7 +998,7 @@ .SS Use of e.g., i.e., etc., a.k.a., and similar
 In addition, "e.g." and "i.e." should always be followed by a comma.
 .SS Em-dashes
 The way to write an em-dash\[em]the glyph that appears
-at either end of this subphrase\[em]in *roff is with the macro "\e[em]".
+at either end of this subphrase\[em]in *roff is with the macro "\[rs][em]".
 (On an ASCII terminal, an em-dash typically renders as two hyphens,
 but in other typographical contexts it renders as a long dash.)
 Em-dashes should be written
@@ -1073,7 +1073,7 @@ .SS Generating optimal glyphs
 .P
 .in +4n
 .EX
-\e\-
+\[rs]\-
 .EE
 .in
 .P
@@ -1090,11 +1090,11 @@ .SS Generating optimal glyphs
 produce real minus signs when pasted into a terminal.
 .P
 To produce unslanted single quotes that render well in ASCII, UTF-8, and P=
DF,
-use "\e[aq]" ("apostrophe quote"); for example
+use "\[rs][aq]" ("apostrophe quote"); for example
 .P
 .in +4n
 .EX
-\e[aq]C\e[aq]
+\[rs][aq]C\[rs][aq]
 .EE
 .in
 .P
diff --git a/man/man7/mount_namespaces.7 b/man/man7/mount_namespaces.7
index 1f0a1b41f..75ccfc80d 100644
--- a/man/man7/mount_namespaces.7
+++ b/man/man7/mount_namespaces.7
@@ -1125,8 +1125,8 @@ .SS Restrictions on mount namespaces
 .IP
 .in +4n
 .EX
-# \fBunshare \-\-user \-\-map\-root\-user \-\-mount \e\fP
-               \fBstrace \-o /tmp/log \e\fP
+# \fBunshare \-\-user \-\-map\-root\-user \-\-mount \[rs]\fP
+               \fBstrace \-o /tmp/log \[rs]\fP
                \fBumount /mnt/dir\fP
 umount: /etc/shadow: not mounted.
 # \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
@@ -1152,7 +1152,7 @@ .SS Restrictions on mount namespaces
 .in +4n
 .EX
 # \fBecho \[aq]aaaaa\[aq] > /tmp/a\fP    # File to mount onto /etc/shadow
-# \fBunshare \-\-user \-\-map\-root\-user \-\-mount \e\fP
+# \fBunshare \-\-user \-\-map\-root\-user \-\-mount \[rs]\fP
     \fBsh \-c \[aq]mount \-\-bind /tmp/a /etc/shadow; cat /etc/shadow\[aq]=
\fP
 aaaaa
 # \fBumount /etc/shadow\fP
@@ -1183,7 +1183,7 @@ .SS Restrictions on mount namespaces
 .IP
 .in +4n
 .EX
-$ \fBPS1=3D\[aq]ns1# \[aq] sudo unshare \-\-user \-\-map\-root\-user \e\fP
+$ \fBPS1=3D\[aq]ns1# \[aq] sudo unshare \-\-user \-\-map\-root\-user \[rs]=
\fP
                        \fB\-\-mount \-\-propagation private bash\fP
 ns1# \fBecho $$\fP        # We need the PID of this shell later
 778501
@@ -1207,7 +1207,7 @@ .SS Restrictions on mount namespaces
 .IP
 .in +4n
 .EX
-ns1# \fBPS1=3D\[aq]ns2# \[aq] unshare \-\-user \-\-map\-root\-user \e\fP
+ns1# \fBPS1=3D\[aq]ns2# \[aq] unshare \-\-user \-\-map\-root\-user \[rs]\fP
                        \fB\-\-mount \-\-propagation unchanged bash\fP
 ns2# \fBgrep /mnt /proc/self/mountinfo | sed \[aq]s/ \- .*//\[aq]\fP
 1239 1204 8:5 /mnt /mnt rw,relatime master:344
@@ -1317,7 +1317,7 @@ .SS Restrictions on mount namespaces
 .EX
 $ \fBsudo mkdir /mnt/dir\fP
 $ \fBsudo mount \-\-bind \-o ro /some/path /mnt/dir\fP
-$ \fBsudo unshare \-\-user \-\-map\-root\-user \-\-mount \e\fP
+$ \fBsudo unshare \-\-user \-\-map\-root\-user \-\-mount \[rs]\fP
                \fBmount \-o remount,rw /mnt/dir\fP
 mount: /mnt/dir: permission denied.
 .EE
diff --git a/man/man7/packet.7 b/man/man7/packet.7
index 513945eff..2763275f7 100644
--- a/man/man7/packet.7
+++ b/man/man7/packet.7
@@ -647,7 +647,7 @@ .SS spkt_device device name truncation
 This means the names of network devices longer than 14 bytes
 will be truncated to fit into
 .IR spkt_device .
-All these lengths include the terminating null byte (\[aq]\e0\[aq])).
+All these lengths include the terminating null byte (\[aq]\[rs]0\[aq])).
 .P
 Issues from this with old code typically show up with
 very long interface names used by the
diff --git a/man/man7/pkeys.7 b/man/man7/pkeys.7
index 4fb814c99..843c139aa 100644
--- a/man/man7/pkeys.7
+++ b/man/man7/pkeys.7
@@ -189,7 +189,7 @@ .SS Program source
      * Put some random data into the page (still OK to touch).
      */
     *buffer =3D __LINE__;
-    printf("buffer contains: %d\en", *buffer);
+    printf("buffer contains: %d\[rs]n", *buffer);
 \&
     /*
      * Allocate a protection key:
@@ -216,12 +216,12 @@ .SS Program source
     if (status =3D=3D \-1)
         err(EXIT_FAILURE, "pkey_mprotect");
 \&
-    printf("about to read buffer again...\en");
+    printf("about to read buffer again...\[rs]n");
 \&
     /*
      * This will crash, because we have disallowed access.
      */
-    printf("buffer contains: %d\en", *buffer);
+    printf("buffer contains: %d\[rs]n", *buffer);
 \&
     status =3D pkey_free(pkey);
     if (status =3D=3D \-1)
diff --git a/man/man7/pthreads.7 b/man/man7/pthreads.7
index 81d0db0e1..bd4ea1c39 100644
--- a/man/man7/pthreads.7
+++ b/man/man7/pthreads.7
@@ -865,7 +865,7 @@ .SS Determining the threading implementation
 .P
 .in +4n
 .EX
-bash$ $( ldd /bin/ls | grep libc.so | awk \[aq]{print $3}\[aq] ) | \e
+bash$ $( ldd /bin/ls | grep libc.so | awk \[aq]{print $3}\[aq] ) | \[rs]
                 egrep \-i \[aq]threads|nptl\[aq]
         Native POSIX Threads Library by Ulrich Drepper et al
 .EE
@@ -888,7 +888,7 @@ .SS Selecting the threading implementation: LD_ASSUME_K=
ERNEL
 .P
 .in +4n
 .EX
-bash$ $( LD_ASSUME_KERNEL=3D2.2.5 ldd /bin/ls | grep libc.so | \e
+bash$ $( LD_ASSUME_KERNEL=3D2.2.5 ldd /bin/ls | grep libc.so | \[rs]
                 awk \[aq]{print $3}\[aq] ) | egrep \-i \[aq]threads|nptl\[=
aq]
         linuxthreads\-0.10 by Xavier Leroy
 .EE
diff --git a/man/man7/regex.7 b/man/man7/regex.7
index a579dbe62..c1e196688 100644
--- a/man/man7/regex.7
+++ b/man/man7/regex.7
@@ -95,16 +95,16 @@ .SH DESCRIPTION
 \[aq].\[aq] (matching any single character),
 \[aq]\[ha]\[aq] (matching the null string at the beginning of a line),
 \[aq]$\[aq] (matching the null string at the end of a line),
-a \[aq]\e\[aq] followed by one of the characters "\fI\[ha].[$()|*+?{\e\fP"
+a \[aq]\[rs]\[aq] followed by one of the characters "\fI\[ha].[$()|*+?{\[r=
s]\fP"
 (matching that character taken as an ordinary character),
-a \[aq]\e\[aq] followed by any other character\*(dg
+a \[aq]\[rs]\[aq] followed by any other character\*(dg
 (matching that character taken as an ordinary character,
-as if the \[aq]\e\[aq] had not been present\*(dg),
+as if the \[aq]\[rs]\[aq] had not been present\*(dg),
 or a single character with no other significance (matching that character).
 A \[aq]{\[aq] followed by a character other than a digit
 is an ordinary character,
 not the beginning of a bound\*(dg.
-It is illegal to end an RE with \[aq]\e\[aq].
+It is illegal to end an RE with \[aq]\[rs]\[aq].
 .P
 A \fIbracket expression\fR is a list of characters enclosed in "\fI[]\fP".
 It normally matches any single character from the list (but see below).
@@ -128,7 +128,7 @@ .SH DESCRIPTION
 enclose it in "\fI[.\fP" and "\fI.]\fP"
 to make it a collating element (see below).
 With the exception of these and some combinations using \[aq][\[aq] (see n=
ext
-paragraphs), all other special characters, including \[aq]\e\[aq], lose th=
eir
+paragraphs), all other special characters, including \[aq]\[rs]\[aq], lose=
 their
 special significance within a bracket expression.
 .P
 Within a bracket expression, a collating element (a character,
@@ -240,9 +240,9 @@ .SH DESCRIPTION
 \[aq]|\[aq], \[aq]+\[aq], and \[aq]?\[aq] are
 ordinary characters and there is no equivalent
 for their functionality.
-The delimiters for bounds are "\fI\e{\fP" and "\fI\e}\fP",
+The delimiters for bounds are "\fI\[rs]{\fP" and "\fI\[rs]}\fP",
 with \[aq]{\[aq] and \[aq]}\[aq] by themselves ordinary characters.
-The parentheses for nested subexpressions are "\fI\e(\fP" and "\fI\e)\fP",
+The parentheses for nested subexpressions are "\fI\[rs](\fP" and "\fI\[rs]=
)\fP",
 with \[aq](\[aq] and \[aq])\[aq] by themselves ordinary characters.
 \[aq]\[ha]\[aq] is an ordinary character except at the beginning of the
 RE or\*(dg the beginning of a parenthesized subexpression,
@@ -253,12 +253,12 @@ .SH DESCRIPTION
 (after a possible leading \[aq]\[ha]\[aq]).
 .P
 Finally, there is one new type of atom, a \fIback reference\fR:
-\[aq]\e\[aq] followed by a nonzero decimal digit \fId\fR
+\[aq]\[rs]\[aq] followed by a nonzero decimal digit \fId\fR
 matches the same sequence of characters
 matched by the \fId\fRth parenthesized subexpression
 (numbering subexpressions by the positions of their opening parentheses,
 left to right),
-so that, for example, "\fI\e([bc]\e)\e1\fP" matches "bb" or "cc" but not "=
bc".
+so that, for example, "\fI\[rs]([bc]\[rs])\[rs]1\fP" matches "bb" or "cc" =
but not "bc".
 .SH BUGS
 Having two kinds of REs is a botch.
 .P
@@ -272,7 +272,7 @@ .SH BUGS
 posing major problems for efficient implementations.
 They are also somewhat vaguely defined
 (does
-"\fIa\e(\e(b\e)*\e2\e)*d\fP" match "abbbd"?).
+"\fIa\[rs](\[rs](b\[rs])*\[rs]2\[rs])*d\fP" match "abbbd"?).
 Avoid using them.
 .P
 POSIX.2's specification of case-independent matching is vague.
diff --git a/man/man7/rtld-audit.7 b/man/man7/rtld-audit.7
index 0aab7ca18..db3084128 100644
--- a/man/man7/rtld-audit.7
+++ b/man/man7/rtld-audit.7
@@ -506,7 +506,7 @@ .SH EXAMPLES
 unsigned int
 la_version(unsigned int version)
 {
-    printf("la_version(): version =3D %u; LAV_CURRENT =3D %u\en",
+    printf("la_version(): version =3D %u; LAV_CURRENT =3D %u\[rs]n",
             version, LAV_CURRENT);
 \&
     return LAV_CURRENT;
@@ -516,7 +516,7 @@ .SH EXAMPLES
 la_objsearch(const char *name, uintptr_t *cookie, unsigned int flag)
 {
     printf("la_objsearch(): name =3D %s; cookie =3D %p", name, cookie);
-    printf("; flag =3D %s\en",
+    printf("; flag =3D %s\[rs]n",
             (flag =3D=3D LA_SER_ORIG) ?    "LA_SER_ORIG" :
             (flag =3D=3D LA_SER_LIBPATH) ? "LA_SER_LIBPATH" :
             (flag =3D=3D LA_SER_RUNPATH) ? "LA_SER_RUNPATH" :
@@ -531,7 +531,7 @@ .SH EXAMPLES
 void
 la_activity (uintptr_t *cookie, unsigned int flag)
 {
-    printf("la_activity(): cookie =3D %p; flag =3D %s\en", cookie,
+    printf("la_activity(): cookie =3D %p; flag =3D %s\[rs]n", cookie,
             (flag =3D=3D LA_ACT_CONSISTENT) ? "LA_ACT_CONSISTENT" :
             (flag =3D=3D LA_ACT_ADD) ?        "LA_ACT_ADD" :
             (flag =3D=3D LA_ACT_DELETE) ?     "LA_ACT_DELETE" :
@@ -541,7 +541,7 @@ .SH EXAMPLES
 unsigned int
 la_objopen(struct link_map *map, Lmid_t lmid, uintptr_t *cookie)
 {
-    printf("la_objopen(): loading \e"%s\e"; lmid =3D %s; cookie=3D%p\en",
+    printf("la_objopen(): loading \[rs]"%s\[rs]"; lmid =3D %s; cookie=3D%p=
\[rs]n",
             map\->l_name,
             (lmid =3D=3D LM_ID_BASE) ?  "LM_ID_BASE" :
             (lmid =3D=3D LM_ID_NEWLM) ? "LM_ID_NEWLM" :
@@ -554,7 +554,7 @@ .SH EXAMPLES
 unsigned int
 la_objclose (uintptr_t *cookie)
 {
-    printf("la_objclose(): %p\en", cookie);
+    printf("la_objclose(): %p\[rs]n", cookie);
 \&
     return 0;
 }
@@ -562,17 +562,17 @@ .SH EXAMPLES
 void
 la_preinit(uintptr_t *cookie)
 {
-    printf("la_preinit(): %p\en", cookie);
+    printf("la_preinit(): %p\[rs]n", cookie);
 }
 \&
 uintptr_t
 la_symbind32(Elf32_Sym *sym, unsigned int ndx, uintptr_t *refcook,
         uintptr_t *defcook, unsigned int *flags, const char *symname)
 {
-    printf("la_symbind32(): symname =3D %s; sym\->st_value =3D %p\en",
+    printf("la_symbind32(): symname =3D %s; sym\->st_value =3D %p\[rs]n",
             symname, sym\->st_value);
     printf("        ndx =3D %u; flags =3D %#x", ndx, *flags);
-    printf("; refcook =3D %p; defcook =3D %p\en", refcook, defcook);
+    printf("; refcook =3D %p; defcook =3D %p\[rs]n", refcook, defcook);
 \&
     return sym\->st_value;
 }
@@ -581,10 +581,10 @@ .SH EXAMPLES
 la_symbind64(Elf64_Sym *sym, unsigned int ndx, uintptr_t *refcook,
         uintptr_t *defcook, unsigned int *flags, const char *symname)
 {
-    printf("la_symbind64(): symname =3D %s; sym\->st_value =3D %p\en",
+    printf("la_symbind64(): symname =3D %s; sym\->st_value =3D %p\[rs]n",
             symname, sym\->st_value);
     printf("        ndx =3D %u; flags =3D %#x", ndx, *flags);
-    printf("; refcook =3D %p; defcook =3D %p\en", refcook, defcook);
+    printf("; refcook =3D %p; defcook =3D %p\[rs]n", refcook, defcook);
 \&
     return sym\->st_value;
 }
@@ -594,7 +594,7 @@ .SH EXAMPLES
         uintptr_t *refcook, uintptr_t *defcook, La_i86_regs *regs,
         unsigned int *flags, const char *symname, long *framesizep)
 {
-    printf("la_i86_gnu_pltenter(): %s (%p)\en", symname, sym\->st_value);
+    printf("la_i86_gnu_pltenter(): %s (%p)\[rs]n", symname, sym\->st_value=
);
 \&
     return sym\->st_value;
 }
diff --git a/man/man7/sock_diag.7 b/man/man7/sock_diag.7
index 962c3edf3..33fb2702f 100644
--- a/man/man7/sock_diag.7
+++ b/man/man7/sock_diag.7
@@ -684,11 +684,11 @@ .SH EXAMPLES
 print_diag(const struct unix_diag_msg *diag, unsigned int len)
 {
     if (len < NLMSG_LENGTH(sizeof(*diag))) {
-        fputs("short response\en", stderr);
+        fputs("short response\[rs]n", stderr);
         return \-1;
     }
     if (diag\->udiag_family !=3D AF_UNIX) {
-        fprintf(stderr, "unexpected family %u\en", diag\->udiag_family);
+        fprintf(stderr, "unexpected family %u\[rs]n", diag\->udiag_family);
         return \-1;
     }
 \&
@@ -706,7 +706,7 @@ .SH EXAMPLES
                 if (path_len > sizeof(path) \- 1)
                     path_len =3D sizeof(path) \- 1;
                 memcpy(path, RTA_DATA(attr), path_len);
-                path[path_len] =3D \[aq]\e0\[aq];
+                path[path_len] =3D \[aq]\[rs]0\[aq];
             }
             break;
 \&
@@ -726,7 +726,7 @@ .SH EXAMPLES
         printf(", name=3D%s%s", *path ? "" : "@",
                 *path ? path : path + 1);
 \&
-    putchar(\[aq]\en\[aq]);
+    putchar(\[aq]\[rs]n\[aq]);
     return 0;
 }
 \&
@@ -762,14 +762,14 @@ .SH EXAMPLES
             return 0;
 \&
         if (nladdr.nl_family !=3D AF_NETLINK) {
-            fputs("!AF_NETLINK\en", stderr);
+            fputs("!AF_NETLINK\[rs]n", stderr);
             return \-1;
         }
 \&
         const struct nlmsghdr *h =3D (struct nlmsghdr *) buf;
 \&
         if (!NLMSG_OK(h, ret)) {
-            fputs("!NLMSG_OK\en", stderr);
+            fputs("!NLMSG_OK\[rs]n", stderr);
             return \-1;
         }
 \&
@@ -781,7 +781,7 @@ .SH EXAMPLES
                 const struct nlmsgerr *err =3D NLMSG_DATA(h);
 \&
                 if (h\->nlmsg_len < NLMSG_LENGTH(sizeof(*err))) {
-                    fputs("NLMSG_ERROR\en", stderr);
+                    fputs("NLMSG_ERROR\[rs]n", stderr);
                 } else {
                     errno =3D \-err\->error;
                     perror("NLMSG_ERROR");
@@ -791,7 +791,7 @@ .SH EXAMPLES
             }
 \&
             if (h\->nlmsg_type !=3D SOCK_DIAG_BY_FAMILY) {
-                fprintf(stderr, "unexpected nlmsg_type %u\en",
+                fprintf(stderr, "unexpected nlmsg_type %u\[rs]n",
                         (unsigned) h\->nlmsg_type);
                 return \-1;
             }
diff --git a/man/man7/system_data_types.7 b/man/man7/system_data_types.7
index 59180cff2..bf243da8f 100644
--- a/man/man7/system_data_types.7
+++ b/man/man7/system_data_types.7
@@ -213,7 +213,7 @@ .SH EXAMPLES
     /* Check that the value is within the valid range of suseconds_t. */
 \&
     if (tmp < \-1 || tmp > 1000000) {
-        fprintf(stderr, "Scanned value outside valid range!\en");
+        fprintf(stderr, "Scanned value outside valid range!\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -225,13 +225,13 @@ .SH EXAMPLES
        a sensible number of microseconds. */
 \&
     if (us < 0) {
-        fprintf(stderr, "Scanned value shouldn\[aq]t be negative!\en");
+        fprintf(stderr, "Scanned value shouldn\[aq]t be negative!\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
     /* Print the value. */
 \&
-    printf("There are %jd microseconds in half a second.\en",
+    printf("There are %jd microseconds in half a second.\[rs]n",
             (intmax_t) us);
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man7/unix.7 b/man/man7/unix.7
index 433ac02f4..f291508bf 100644
--- a/man/man7/unix.7
+++ b/man/man7/unix.7
@@ -141,7 +141,7 @@ .SS Address format
 an abstract socket address is distinguished (from a pathname socket)
 by the fact that
 .I sun_path[0]
-is a null byte (\[aq]\e0\[aq]).
+is a null byte (\[aq]\[rs]0\[aq]).
 The socket's address in this namespace is given by the additional
 bytes in
 .I sun_path
@@ -913,7 +913,7 @@ .SH BUGS
 if (getsockname(sfd, (struct sockaddr *) addrp, &addrlen)) =3D=3D \-1)
     /* handle error */ ;
 \&
-printf("sun_path =3D %s\en", ((struct sockaddr_un *) addrp)\->sun_path);
+printf("sun_path =3D %s\[rs]n", ((struct sockaddr_un *) addrp)\->sun_path);
 .EE
 .in
 .P
@@ -1165,7 +1165,7 @@ .SS Program source
     ret =3D connect(data_socket, (const struct sockaddr *) &addr,
                    sizeof(addr));
     if (ret =3D=3D \-1) {
-        fprintf(stderr, "The server is down.\en");
+        fprintf(stderr, "The server is down.\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -1200,7 +1200,7 @@ .SS Program source
 \&
     buffer[sizeof(buffer) \- 1] =3D 0;
 \&
-    printf("Result =3D %s\en", buffer);
+    printf("Result =3D %s\[rs]n", buffer);
 \&
     /* Close socket. */
 \&
diff --git a/man/man7/user_namespaces.7 b/man/man7/user_namespaces.7
index bd6720b0b..4131d4927 100644
--- a/man/man7/user_namespaces.7
+++ b/man/man7/user_namespaces.7
@@ -1184,35 +1184,35 @@ .SS Program source
 static void
 usage(char *pname)
 {
-    fprintf(stderr, "Usage: %s [options] cmd [arg...]\en\en", pname);
+    fprintf(stderr, "Usage: %s [options] cmd [arg...]\[rs]n\[rs]n", pname);
     fprintf(stderr, "Create a child process that executes a shell "
-            "command in a new user namespace,\en"
-            "and possibly also other new namespace(s).\en\en");
-    fprintf(stderr, "Options can be:\en\en");
+            "command in a new user namespace,\[rs]n"
+            "and possibly also other new namespace(s).\[rs]n\[rs]n");
+    fprintf(stderr, "Options can be:\[rs]n\[rs]n");
 #define fpe(str) fprintf(stderr, "    %s", str);
-    fpe("\-i          New IPC namespace\en");
-    fpe("\-m          New mount namespace\en");
-    fpe("\-n          New network namespace\en");
-    fpe("\-p          New PID namespace\en");
-    fpe("\-u          New UTS namespace\en");
-    fpe("\-U          New user namespace\en");
-    fpe("\-M uid_map  Specify UID map for user namespace\en");
-    fpe("\-G gid_map  Specify GID map for user namespace\en");
-    fpe("\-z          Map user\[aq]s UID and GID to 0 in user namespace\en=
");
-    fpe("            (equivalent to: \-M \[aq]0 <uid> 1\[aq] \-G \[aq]0 <g=
id> 1\[aq])\en");
-    fpe("\-v          Display verbose messages\en");
-    fpe("\en");
-    fpe("If \-z, \-M, or \-G is specified, \-U is required.\en");
-    fpe("It is not permitted to specify both \-z and either \-M or \-G.\en=
");
-    fpe("\en");
-    fpe("Map strings for \-M and \-G consist of records of the form:\en");
-    fpe("\en");
-    fpe("    ID\-inside\-ns   ID\-outside\-ns   len\en");
-    fpe("\en");
+    fpe("\-i          New IPC namespace\[rs]n");
+    fpe("\-m          New mount namespace\[rs]n");
+    fpe("\-n          New network namespace\[rs]n");
+    fpe("\-p          New PID namespace\[rs]n");
+    fpe("\-u          New UTS namespace\[rs]n");
+    fpe("\-U          New user namespace\[rs]n");
+    fpe("\-M uid_map  Specify UID map for user namespace\[rs]n");
+    fpe("\-G gid_map  Specify GID map for user namespace\[rs]n");
+    fpe("\-z          Map user\[aq]s UID and GID to 0 in user namespace\[r=
s]n");
+    fpe("            (equivalent to: \-M \[aq]0 <uid> 1\[aq] \-G \[aq]0 <g=
id> 1\[aq])\[rs]n");
+    fpe("\-v          Display verbose messages\[rs]n");
+    fpe("\[rs]n");
+    fpe("If \-z, \-M, or \-G is specified, \-U is required.\[rs]n");
+    fpe("It is not permitted to specify both \-z and either \-M or \-G.\[r=
s]n");
+    fpe("\[rs]n");
+    fpe("Map strings for \-M and \-G consist of records of the form:\[rs]n=
");
+    fpe("\[rs]n");
+    fpe("    ID\-inside\-ns   ID\-outside\-ns   len\[rs]n");
+    fpe("\[rs]n");
     fpe("A map string can contain multiple records, separated"
-        " by commas;\en");
+        " by commas;\[rs]n");
     fpe("the commas are replaced by newlines before writing"
-        " to map files.\en");
+        " to map files.\[rs]n");
 \&
     exit(EXIT_FAILURE);
 }
@@ -1240,17 +1240,17 @@ .SS Program source
     map_len =3D strlen(mapping);
     for (size_t j =3D 0; j < map_len; j++)
         if (mapping[j] =3D=3D \[aq],\[aq])
-            mapping[j] =3D \[aq]\en\[aq];
+            mapping[j] =3D \[aq]\[rs]n\[aq];
 \&
     fd =3D open(map_file, O_RDWR);
     if (fd =3D=3D \-1) {
-        fprintf(stderr, "ERROR: open %s: %s\en", map_file,
+        fprintf(stderr, "ERROR: open %s: %s\[rs]n", map_file,
                 strerror(errno));
         exit(EXIT_FAILURE);
     }
 \&
     if (write(fd, mapping, map_len) !=3D map_len) {
-        fprintf(stderr, "ERROR: write %s: %s\en", map_file,
+        fprintf(stderr, "ERROR: write %s: %s\[rs]n", map_file,
                 strerror(errno));
         exit(EXIT_FAILURE);
     }
@@ -1290,13 +1290,13 @@ .SS Program source
            user know. */
 \&
         if (errno !=3D ENOENT)
-            fprintf(stderr, "ERROR: open %s: %s\en", setgroups_path,
+            fprintf(stderr, "ERROR: open %s: %s\[rs]n", setgroups_path,
                 strerror(errno));
         return;
     }
 \&
     if (write(fd, str, strlen(str)) =3D=3D \-1)
-        fprintf(stderr, "ERROR: write %s: %s\en", setgroups_path,
+        fprintf(stderr, "ERROR: write %s: %s\[rs]n", setgroups_path,
             strerror(errno));
 \&
     close(fd);
@@ -1318,7 +1318,7 @@ .SS Program source
                                    when parent closes its descriptor. */
     if (read(args\->pipe_fd[0], &ch, 1) !=3D 0) {
         fprintf(stderr,
-                "Failure in child: read from pipe returned !=3D 0\en");
+                "Failure in child: read from pipe returned !=3D 0\[rs]n");
         exit(EXIT_FAILURE);
     }
 \&
@@ -1326,7 +1326,7 @@ .SS Program source
 \&
     /* Execute a shell command. */
 \&
-    printf("About to exec %s\en", args\->argv[0]);
+    printf("About to exec %s\[rs]n", args\->argv[0]);
     execvp(args\->argv[0], args\->argv);
     err(EXIT_FAILURE, "execvp");
 }
@@ -1406,7 +1406,7 @@ .SS Program source
     /* Parent falls through to here. */
 \&
     if (verbose)
-        printf("%s: PID of child created by clone() is %jd\en",
+        printf("%s: PID of child created by clone() is %jd\[rs]n",
                 argv[0], (intmax_t) child_pid);
 \&
     /* Update the UID and GID maps in the child. */
@@ -1444,7 +1444,7 @@ .SS Program source
         err(EXIT_FAILURE, "waitpid");
 \&
     if (verbose)
-        printf("%s: terminating\en", argv[0]);
+        printf("%s: terminating\[rs]n", argv[0]);
 \&
     exit(EXIT_SUCCESS);
 }
diff --git a/man/man7/utf-8.7 b/man/man7/utf-8.7
index d6f539ab2..ff44d7704 100644
--- a/man/man7/utf-8.7
+++ b/man/man7/utf-8.7
@@ -16,7 +16,7 @@ .SH DESCRIPTION
 Unicode encoding (known as UCS-2)
 consists of a sequence of 16-bit words.
 Such strings can contain\[em]as part of many 16-bit characters\[em]bytes
-such as \[aq]\e0\[aq] or \[aq]/\[aq], which have a
+such as \[aq]\[rs]0\[aq] or \[aq]/\[aq], which have a
 special meaning in filenames and other C library function arguments.
 In addition, the majority of UNIX tools expect ASCII files and can't
 read 16-bit words as characters without major modifications.
@@ -47,7 +47,7 @@ .SS Properties
 All UCS characters greater than 0x7f are encoded as a multibyte sequence
 consisting only of bytes in the range 0x80 to 0xfd, so no ASCII
 byte can appear as part of another character and there are no
-problems with, for example,  \[aq]\e0\[aq] or \[aq]/\[aq].
+problems with, for example,  \[aq]\[rs]0\[aq] or \[aq]/\[aq].
 .IP \[bu]
 The lexicographic sorting order of UCS-4 strings is preserved.
 .IP \[bu]
@@ -176,9 +176,9 @@ .SS Application notes
 The official ESC sequence to switch from an ISO/IEC\~2022
 encoding scheme (as used for instance by VT100 terminals) to
 UTF-8 is ESC % G
-("\ex1b%G").
+("\[rs]x1b%G").
 The corresponding return sequence from
-UTF-8 to ISO/IEC\~2022 is ESC % @ ("\ex1b%@").
+UTF-8 to ISO/IEC\~2022 is ESC % @ ("\[rs]x1b%@").
 Other ISO/IEC\~2022 sequences (such as
 for switching the G0 and G1 sets) are not applicable in UTF-8 mode.
 .SS Security
diff --git a/man/man8/zdump.8 b/man/man8/zdump.8
index c3f0bba60..053bff8c2 100644
--- a/man/man8/zdump.8
+++ b/man/man8/zdump.8
@@ -139,11 +139,11 @@ .SH "INTERVAL FORMAT"
 .q "zzz".
 .PP
 In double-quoted strings, escape sequences represent unusual
-characters.  The escape sequences are \es for space, and \e", \e\e,
-\ef, \en, \er, \et, and \ev with their usual meaning in the C
+characters.  The escape sequences are \[rs]s for space, and \[rs]", \[rs]\=
[rs],
+\[rs]f, \[rs]n, \[rs]r, \[rs]t, and \[rs]v with their usual meaning in the=
 C
 programming language.  E.g., the double-quoted string
-\*(lq"CET\es\e"\e\e"\*(rq represents the character sequence \*(lqCET
-"\e\*(rq.\""
+\*(lq"CET\[rs]s\[rs]"\[rs]\[rs]"\*(rq represents the character sequence \*=
(lqCET
+"\[rs]\*(rq.\""
 .PP
 .ne 9
 Here is an example of the output, with the leading empty line omitted.
diff --git a/man/man8/zic.8 b/man/man8/zic.8
index 0ad373a2d..1a06050f2 100644
--- a/man/man8/zic.8
+++ b/man/man8/zic.8
@@ -352,9 +352,9 @@ .SH FILES
 .q + .
 To allow for future extensions,
 an unquoted name should not contain characters from the set
-.ie \n(.g .q \f(CR!$%&\(aq()*,/:;<=3D>?@[\e]\(ha\(ga{|}\(ti\fP .
-.el .ie t .q \f(CW!$%&'()*,/:;<=3D>?@[\e]^\(ga{|}~\fP .
-.el .q !$%&'()*,/:;<=3D>?@[\e]^`{|}~ .
+.ie \n(.g .q \f(CR!$%&\(aq()*,/:;<=3D>?@[\[rs]]\(ha\(ga{|}\(ti\fP .
+.el .ie t .q \f(CW!$%&'()*,/:;<=3D>?@[\[rs]]^\(ga{|}~\fP .
+.el .q !$%&'()*,/:;<=3D>?@[\[rs]]^`{|}~ .
 .TP
 .B FROM
 Gives the first year in which the rule applies.

base-commit: 6fc32a0a6ae2cedf2e954b8b48cf8ba0d5ddf2a1
--=20
2.45.1


--2722i7nogunlowmk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZt3f8ACgkQnowa+77/
2zJCJQ/+KWCRYbOQoPktsSLZvavGbn9f7YV7vGMQom46+iULAJESckMBgXAOefnQ
pRNjZqeo/OU1JjKy+3rWx7Uh3PacsoUlyx3nO4YZXrGsS9zQHFLJIZmijesWX5x6
xHt5gb/CkNMAYRB3F0Z8s8MjPheUnBwuF1Wn5nciJDX9OGxJFjw623v4F21iKnKa
umqzbifuP0/2Pqdmi8gE3A/KYBnNWmPyRzmk0E6Wtlyq8R9oZj3ykE9wRSsyyHbF
NEDnb6Hqj6tXLKieTZYEL6waEHbUv9Z/81sviLOW230qLClHpta5h3yAJtlJvzRm
4YSDCJ5ou+SDB6qzKVK1MwQQGHPh4zoc+klcL0yQSq0nhO/4dW3AVNZ18NtLT3dV
J7jlirxW4oRr9npxPckCAKMopDYxEWGJlJ5qewR8zq3eIxFeYsMEv/GS5sFBDqMg
fg65NMP9o29iBvYmI827J+KNQIfKEu0JM4jyH80tCeHJu7WsAtLiezCyuGKhQbkO
3lasOJSUNDEvFInvhcwz01TBur8f9Ee3F3PbEF9w7xl2ynveMjNlJcVB6klSXiKN
LdCOzLWKZsEL+RO/c17zG9bF5VKut7kjfYmLXMmxDZn31+LJsQ4PSAFqp+dFM/09
Q5ecdc15nNCAq4r0ttLELnWszTFrzC8VKfNJTMpj7lRzr4DEkEw=
=snd5
-----END PGP SIGNATURE-----

--2722i7nogunlowmk--

