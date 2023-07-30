Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6620B768810
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 22:45:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbjG3UpX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 16:45:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbjG3UpW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 16:45:22 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDA7B10C0
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 13:45:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 33D7860D30
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 20:45:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2C51C433C7;
        Sun, 30 Jul 2023 20:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690749917;
        bh=Yh6/5EIMmmRsMCesgP4Ls7IkjnNGVtxWtTovcsTgk2I=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=tdf8jePOsJparUXio+HpWN2dsbj35yXWPSflba1ALfB132KvIQqOe6OVlOIkKW9pu
         TI2aw6pQOOyD/y8SXyu5BEmqPzxaV/cOmuBt7RcgJ2cJjD5b7TKS3QOLgqqf94BlPF
         ns5EbfD8WyAOUO7xKqi+PZ3ax7PxJtUvfyA4CN3UIfiCAWWAmL7AgkhC1UvFrejOh6
         Kz9wzgLHUCMN6VzXUvR7CYRys0LEUJZSSCXf8aT5i1qB27XBzEHj2lx/JIO/zwM13J
         lPekBoH6bmEkbnjVU+5uYxoyfEySCvrQXdj3v3EZJoPhp3QzOzPXcZt/ntBjs/7er5
         IM5E3Q+m4ZZdg==
Message-ID: <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
Date:   Sun, 30 Jul 2023 22:45:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230730200445.5ai65ekheopcvicx@illithid>
From:   Alejandro Colomar <alx@kernel.org>
Organization: Linux
In-Reply-To: <20230730200445.5ai65ekheopcvicx@illithid>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------cKzbRsrLfbWwDySZz5hJtLZS"
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------cKzbRsrLfbWwDySZz5hJtLZS
Content-Type: multipart/mixed; boundary="------------lJ2MD2myXrjppdQnxy2ngH6q";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Message-ID: <679c73ca-8e11-51e6-8de5-0d59b6539f7d@kernel.org>
Subject: Re: [PATCH 9/9] man*/: ffix (migrate to `MR`)
References: <20230730200445.5ai65ekheopcvicx@illithid>
In-Reply-To: <20230730200445.5ai65ekheopcvicx@illithid>

--------------lJ2MD2myXrjppdQnxy2ngH6q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On 2023-07-30 22:04, G. Branden Robinson wrote:
> Use the man(7) macro `MR`, new to groff 1.23.0, instead of font style
> alternation macros to mark up man page cross reference.
>=20
> Background (from the groff 1.23.0 release announcement and "NEWS" file)=
:
>=20
> o The an (man) macro package supports a new macro, `MR`, intended for
>   use by man page cross references in preference to the font style
>   alternation macros historically used.  Where before you would write
>     .BR ls (1).
>   or
>     .IR ls (1).
>   you should now write
>     .MR ls 1 .
>   (the third argument, typically used for trailing punctuation, is
>   optional).  Because the macro semantically identifies a man page, it
>   can create a clickable hyperlink ("man:ls(1)" for the above example)
>   on supporting devices.  Furthermore, a new string, `MF`, defines the
>   font to be used for setting the man page topic (the first argument to=

>   `MR` and `TH`), permitting configuration by distributions, sites, and=

>   users.
>=20
>   Inclusion of the `MR` macro was prompted by its introduction to
>   Plan 9 from User Space's troff in August 2020.  Its purpose is to
>   ameliorate several long-standing problems with man page cross
>   references: (1) the package's lack of inherent hyperlink support for
>   them; (2) false-positive identification of strings resembling man pag=
e
>   cross references (as can happen with "exit(1)", "while(1)",
>   "sleep(5)", "time(0)" and others) by terminal emulators and other
>   programs; (3) the unwanted intrusion of hyphens into man page topics,=

>   which frustrates copy-and-paste operations (this problem has always
>   been avoidable through use of the \% escape sequence, but cross
>   references are frequent in man pages and some page authors are
>   inexpert *roff users); and (4) deep divisions in man page maintenance=

>   communities over which typeface should be used to set the man page
>   topic (italics, roman, or bold).
> [...]
> o The an (man) macro package can now produce clickable hyperlinks withi=
n
>   terminal emulators, using the OSC 8 support added to grotty(1) (see
>   below).  The groff man(7) extension macros `UR` and `MT`, present
>   since 2007, expose this feature.  At present the feature is disabled
>   by default in `man.local` pending more widespread recognition of OSC =
8
>   sequences in pager programs.  The package now recognizes a `U`
>   register to enable hyperlinks in any output driver supporting them.
>=20
>   Use a command like
>     printf '\033]8;;man:grotty(1)\033\\grotty(1)\033]8;;\033\\\n' | mor=
e
>   to check your terminal and pager for OSC 8 support.  If you see
>   "grotty(1)" and no additional garbage characters, then you may wish t=
o
>   edit "man.local" to remove the lines that disable this feature.
>=20
> When the text of all Linux man-pages documents (excluding those
> containing only `so` requests) is dumped, with adjustment mode 'l'
> ("-dAD=3Dl") and automatic hyphenation disabled ("-rHY=3D0") before and=

> after this change, there is no change to rendered output.
>=20
> When automatic hyphenation is enabled, this change suppresses
> hyphenation of approximately 3,100+ man page names when cross reference=
d
> when using the default terminal width of 80 (meaning that the text
> is formatted for a line length of 78 for historical reasons).
>=20
> I prepared this change with the following GNU sed script.
>=20
> s/^.BR \([^"][^"]*\) (\([0-9][0-9a-z]*\))\([^ ][^ ]*\)/.MR \1 \2 \3/
> s/^.BR \([^"][^"]*\) (\([0-9].*\))$/.MR \1 \2/
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I couldn't apply this patch.  See the error below.  Other than that,
I've applied the rest of the patch set: patches in the range [1, 8]
are applied.  Thanks for all your work!

Cheers,
Alex

Error:

$ git am -s patches/\[PATCH\ 9_9\]\ man\*_\:\ ffix\ \(migrate\ to\ \`MR\`=
\)\ -\ \"G.\ Branden\ Robinson\"\ \<g.branden.robinson@gmail.com\>\ -\ 20=
23-07-30\ 2204.eml
warning: quoted CRLF detected
Applying: man*/: ffix (migrate to `MR`)
error: No valid patches in input (allow with "--allow-empty")
Patch failed at 0001 man*/: ffix (migrate to `MR`)
hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


> ---
>  man1/getent.1                        | 118 ++---
>  man1/iconv.1                         |  24 +-
>  man1/intro.1                         |  54 +--
>  man1/ldd.1                           |   8 +-
>  man1/locale.1                        |  16 +-
>  man1/localedef.1                     |  12 +-
>  man1/memusage.1                      |  54 +--
>  man1/memusagestat.1                  |   8 +-
>  man1/mtrace.1                        |  10 +-
>  man1/pldd.1                          |  10 +-
>  man1/sprof.1                         |   4 +-
>  man1/time.1                          |  32 +-
>  man2/_exit.2                         |  44 +-
>  man2/_syscall.2                      |  12 +-
>  man2/accept.2                        |  46 +-
>  man2/access.2                        |  42 +-
>  man2/acct.2                          |   8 +-
>  man2/add_key.2                       |  26 +-
>  man2/adjtimex.2                      |  26 +-
>  man2/alarm.2                         |  30 +-
>  man2/alloc_hugepages.2               |   4 +-
>  man2/arch_prctl.2                    |  22 +-
>  man2/bdflush.2                       |   6 +-
>  man2/bind.2                          |  48 +-
>  man2/bpf.2                           |  28 +-
>  man2/brk.2                           |  14 +-
>  man2/cacheflush.2                    |   2 +-
>  man2/capget.2                        |  26 +-
>  man2/chdir.2                         |  14 +-
>  man2/chmod.2                         |  38 +-
>  man2/chown.2                         |  30 +-
>  man2/chroot.2                        |  26 +-
>  man2/clock_getres.2                  |  58 +--
>  man2/clock_nanosleep.2               |  42 +-
>  man2/clone.2                         | 214 ++++-----
>  man2/close.2                         |  42 +-
>  man2/close_range.2                   |  16 +-
>  man2/connect.2                       |  32 +-
>  man2/copy_file_range.2               |  10 +-
>  man2/create_module.2                 |   8 +-
>  man2/delete_module.2                 |  18 +-
>  man2/dup.2                           |  28 +-
>  man2/epoll_create.2                  |  14 +-
>  man2/epoll_ctl.2                     |  46 +-
>  man2/epoll_wait.2                    |  26 +-
>  man2/eventfd.2                       | 108 ++---
>  man2/execve.2                        |  92 ++--
>  man2/execveat.2                      |  22 +-
>  man2/exit_group.2                    |   6 +-
>  man2/fallocate.2                     |  32 +-
>  man2/fanotify_init.2                 |  42 +-
>  man2/fanotify_mark.2                 |  44 +-
>  man2/fcntl.2                         | 228 +++++-----
>  man2/flock.2                         |  56 +--
>  man2/fork.2                          |  86 ++--
>  man2/fsync.2                         |  40 +-
>  man2/futex.2                         |  34 +-
>  man2/futimesat.2                     |  26 +-
>  man2/get_kernel_syms.2               |  12 +-
>  man2/get_mempolicy.2                 |  32 +-
>  man2/get_robust_list.2               |  18 +-
>  man2/getcpu.2                        |  16 +-
>  man2/getdents.2                      |  16 +-
>  man2/getdomainname.2                 |  14 +-
>  man2/getgid.2                        |  10 +-
>  man2/getgroups.2                     |  26 +-
>  man2/gethostname.2                   |  16 +-
>  man2/getitimer.2                     |  26 +-
>  man2/getpagesize.2                   |   8 +-
>  man2/getpeername.2                   |  26 +-
>  man2/getpid.2                        |  46 +-
>  man2/getpriority.2                   |  22 +-
>  man2/getrandom.2                     |  20 +-
>  man2/getresuid.2                     |  10 +-
>  man2/getrlimit.2                     | 134 +++---
>  man2/getrusage.2                     |  18 +-
>  man2/getsid.2                        |  10 +-
>  man2/getsockname.2                   |  12 +-
>  man2/getsockopt.2                    |  26 +-
>  man2/gettid.2                        |  38 +-
>  man2/gettimeofday.2                  |  38 +-
>  man2/getuid.2                        |  10 +-
>  man2/getunwind.2                     |   4 +-
>  man2/getxattr.2                      |  30 +-
>  man2/init_module.2                   |  16 +-
>  man2/inotify_add_watch.2             |  14 +-
>  man2/inotify_init.2                  |  14 +-
>  man2/inotify_rm_watch.2              |   8 +-
>  man2/intro.2                         |  54 +--
>  man2/io_cancel.2                     |  14 +-
>  man2/io_destroy.2                    |  14 +-
>  man2/io_getevents.2                  |  22 +-
>  man2/io_setup.2                      |  16 +-
>  man2/io_submit.2                     |  30 +-
>  man2/ioctl.2                         |  34 +-
>  man2/ioctl_console.2                 |  50 +--
>  man2/ioctl_fat.2                     |  22 +-
>  man2/ioctl_ficlonerange.2            |   6 +-
>  man2/ioctl_fideduperange.2           |   6 +-
>  man2/ioctl_fslabel.2                 |   6 +-
>  man2/ioctl_getfsmap.2                |   4 +-
>  man2/ioctl_iflags.2                  |  42 +-
>  man2/ioctl_ns.2                      |  28 +-
>  man2/ioctl_pipe.2                    |   8 +-
>  man2/ioctl_tty.2                     |  48 +-
>  man2/ioctl_userfaultfd.2             |  54 +--
>  man2/ioperm.2                        |  14 +-
>  man2/iopl.2                          |  12 +-
>  man2/ioprio_set.2                    |  20 +-
>  man2/ipc.2                           |  34 +-
>  man2/kcmp.2                          |  42 +-
>  man2/kexec_load.2                    |  12 +-
>  man2/keyctl.2                        | 226 +++++-----
>  man2/kill.2                          |  28 +-
>  man2/landlock_add_rule.2             |  16 +-
>  man2/landlock_create_ruleset.2       |  16 +-
>  man2/landlock_restrict_self.2        |  18 +-
>  man2/link.2                          |  38 +-
>  man2/listen.2                        |  26 +-
>  man2/listxattr.2                     |  32 +-
>  man2/llseek.2                        |  14 +-
>  man2/lookup_dcookie.2                |   6 +-
>  man2/lseek.2                         |  20 +-
>  man2/madvise.2                       |  68 +--
>  man2/mbind.2                         |  42 +-
>  man2/membarrier.2                    |   2 +-
>  man2/memfd_create.2                  |  68 +--
>  man2/memfd_secret.2                  |  38 +-
>  man2/migrate_pages.2                 |  30 +-
>  man2/mincore.2                       |  16 +-
>  man2/mkdir.2                         |  30 +-
>  man2/mknod.2                         |  40 +-
>  man2/mlock.2                         |  46 +-
>  man2/mmap.2                          |  82 ++--
>  man2/mmap2.2                         |  20 +-
>  man2/modify_ldt.2                    |  12 +-
>  man2/mount.2                         |  74 ++--
>  man2/mount_setattr.2                 |  72 +--
>  man2/move_pages.2                    |  28 +-
>  man2/mprotect.2                      |  22 +-
>  man2/mq_getsetattr.2                 |  10 +-
>  man2/mremap.2                        |  38 +-
>  man2/msgctl.2                        |  24 +-
>  man2/msgget.2                        |  20 +-
>  man2/msgop.2                         |  18 +-
>  man2/msync.2                         |   8 +-
>  man2/nanosleep.2                     |  36 +-
>  man2/nfsservctl.2                    |   4 +-
>  man2/nice.2                          |  28 +-
>  man2/open.2                          | 314 ++++++-------
>  man2/open_by_handle_at.2             |  24 +-
>  man2/openat2.2                       |  48 +-
>  man2/outb.2                          |   8 +-
>  man2/pause.2                         |   8 +-
>  man2/pciconfig_read.2                |   2 +-
>  man2/perf_event_open.2               | 100 ++---
>  man2/perfmonctl.2                    |  14 +-
>  man2/personality.2                   |  20 +-
>  man2/pidfd_getfd.2                   |  26 +-
>  man2/pidfd_open.2                    |  60 +--
>  man2/pidfd_send_signal.2             |  30 +-
>  man2/pipe.2                          |  46 +-
>  man2/pivot_root.2                    |  36 +-
>  man2/pkey_alloc.2                    |  10 +-
>  man2/poll.2                          |  42 +-
>  man2/posix_fadvise.2                 |  26 +-
>  man2/prctl.2                         | 248 +++++------
>  man2/pread.2                         |  26 +-
>  man2/process_madvise.2               |  30 +-
>  man2/process_vm_readv.2              |  10 +-
>  man2/ptrace.2                        | 274 ++++++------
>  man2/query_module.2                  |  14 +-
>  man2/quotactl.2                      |  14 +-
>  man2/read.2                          |  40 +-
>  man2/readahead.2                     |  12 +-
>  man2/readdir.2                       |  10 +-
>  man2/readlink.2                      |  28 +-
>  man2/readv.2                         |  40 +-
>  man2/reboot.2                        |  36 +-
>  man2/recv.2                          |  80 ++--
>  man2/recvmmsg.2                      |  28 +-
>  man2/remap_file_pages.2              |  24 +-
>  man2/removexattr.2                   |  26 +-
>  man2/rename.2                        |  26 +-
>  man2/request_key.2                   |  76 ++--
>  man2/restart_syscall.2               |  20 +-
>  man2/rmdir.2                         |  18 +-
>  man2/rt_sigqueueinfo.2               |  38 +-
>  man2/s390_guarded_storage.2          |   4 +-
>  man2/s390_pci_mmio_write.2           |   4 +-
>  man2/s390_runtime_instr.2            |   6 +-
>  man2/s390_sthyi.2                    |   4 +-
>  man2/sched_get_priority_max.2        |  16 +-
>  man2/sched_rr_get_interval.2         |   8 +-
>  man2/sched_setaffinity.2             |  72 +--
>  man2/sched_setattr.2                 |  78 ++--
>  man2/sched_setparam.2                |  34 +-
>  man2/sched_setscheduler.2            |  56 +--
>  man2/sched_yield.2                   |   2 +-
>  man2/seccomp.2                       | 138 +++---
>  man2/seccomp_unotify.2               | 178 ++++----
>  man2/select.2                        |  66 +--
>  man2/select_tut.2                    |  84 ++--
>  man2/semctl.2                        |  32 +-
>  man2/semget.2                        |  36 +-
>  man2/semop.2                         |  34 +-
>  man2/send.2                          |  78 ++--
>  man2/sendfile.2                      |  26 +-
>  man2/sendmmsg.2                      |  18 +-
>  man2/set_mempolicy.2                 |  30 +-
>  man2/set_thread_area.2               |  18 +-
>  man2/set_tid_address.2               |  12 +-
>  man2/seteuid.2                       |  20 +-
>  man2/setfsgid.2                      |  14 +-
>  man2/setfsuid.2                      |  16 +-
>  man2/setgid.2                        |  14 +-
>  man2/setns.2                         |  38 +-
>  man2/setpgid.2                       |  42 +-
>  man2/setresuid.2                     |  22 +-
>  man2/setreuid.2                      |  24 +-
>  man2/setsid.2                        |  24 +-
>  man2/setuid.2                        |  22 +-
>  man2/setxattr.2                      |  28 +-
>  man2/sgetmask.2                      |  10 +-
>  man2/shmctl.2                        |  32 +-
>  man2/shmget.2                        |  32 +-
>  man2/shmop.2                         |  24 +-
>  man2/shutdown.2                      |   8 +-
>  man2/sigaction.2                     | 136 +++---
>  man2/sigaltstack.2                   |  32 +-
>  man2/signal.2                        |  60 +--
>  man2/signalfd.2                      | 130 +++---
>  man2/sigpending.2                    |  24 +-
>  man2/sigprocmask.2                   |  42 +-
>  man2/sigreturn.2                     |  20 +-
>  man2/sigsuspend.2                    |  30 +-
>  man2/sigwaitinfo.2                   |  40 +-
>  man2/socket.2                        | 120 ++---
>  man2/socketcall.2                    |  84 ++--
>  man2/socketpair.2                    |  16 +-
>  man2/splice.2                        |  26 +-
>  man2/spu_create.2                    |  28 +-
>  man2/spu_run.2                       |  18 +-
>  man2/stat.2                          |  38 +-
>  man2/statfs.2                        |  36 +-
>  man2/statx.2                         |  66 +--
>  man2/stime.2                         |  10 +-
>  man2/subpage_prot.2                  |   6 +-
>  man2/swapon.2                        |  14 +-
>  man2/symlink.2                       |  32 +-
>  man2/sync.2                          |  10 +-
>  man2/sync_file_range.2               |  10 +-
>  man2/syscall.2                       |  54 +--
>  man2/syscalls.2                      | 128 +++---
>  man2/sysctl.2                        |   4 +-
>  man2/sysfs.2                         |   6 +-
>  man2/sysinfo.2                       |   2 +-
>  man2/syslog.2                        |  10 +-
>  man2/tee.2                           |  18 +-
>  man2/time.2                          |  16 +-
>  man2/timer_create.2                  |  64 +--
>  man2/timer_delete.2                  |  12 +-
>  man2/timer_getoverrun.2              |  26 +-
>  man2/timer_settime.2                 |  20 +-
>  man2/timerfd_create.2                | 110 ++---
>  man2/times.2                         |  22 +-
>  man2/tkill.2                         |  16 +-
>  man2/truncate.2                      |  24 +-
>  man2/umask.2                         |  38 +-
>  man2/umount.2                        |  14 +-
>  man2/uname.2                         |  12 +-
>  man2/unimplemented.2                 |  26 +-
>  man2/unlink.2                        |  44 +-
>  man2/unshare.2                       |  68 +--
>  man2/uselib.2                        |  24 +-
>  man2/userfaultfd.2                   | 106 ++---
>  man2/ustat.2                         |   6 +-
>  man2/utime.2                         |  20 +-
>  man2/utimensat.2                     |  46 +-
>  man2/vfork.2                         |  88 ++--
>  man2/vhangup.2                       |   6 +-
>  man2/vmsplice.2                      |  18 +-
>  man2/wait.2                          |  80 ++--
>  man2/wait4.2                         |  28 +-
>  man2/write.2                         |  56 +--
>  man2type/open_how.2type              |   4 +-
>  man3/CPU_SET.3                       |  14 +-
>  man3/INFINITY.3                      |   4 +-
>  man3/MAX.3                           |   8 +-
>  man3/MB_CUR_MAX.3                    |  12 +-
>  man3/MB_LEN_MAX.3                    |   2 +-
>  man3/_Generic.3                      |   2 +-
>  man3/__ppc_get_timebase.3            |   4 +-
>  man3/__ppc_set_ppr_med.3             |   4 +-
>  man3/__ppc_yield.3                   |   4 +-
>  man3/__setfpucw.3                    |  24 +-
>  man3/a64l.3                          |  10 +-
>  man3/abort.3                         |  24 +-
>  man3/abs.3                           |  14 +-
>  man3/acos.3                          |  20 +-
>  man3/acosh.3                         |  18 +-
>  man3/addseverity.3                   |   8 +-
>  man3/adjtime.3                       |  14 +-
>  man3/aio_cancel.3                    |  30 +-
>  man3/aio_error.3                     |  32 +-
>  man3/aio_fsync.3                     |  28 +-
>  man3/aio_init.3                      |   2 +-
>  man3/aio_read.3                      |  34 +-
>  man3/aio_return.3                    |  32 +-
>  man3/aio_suspend.3                   |  36 +-
>  man3/aio_write.3                     |  32 +-
>  man3/alloca.3                        |  24 +-
>  man3/arc4random.3                    |  14 +-
>  man3/argz_add.3                      |   8 +-
>  man3/asin.3                          |  20 +-
>  man3/asinh.3                         |  16 +-
>  man3/asprintf.3                      |  16 +-
>  man3/assert.3                        |  10 +-
>  man3/assert_perror.3                 |  12 +-
>  man3/atan.3                          |  20 +-
>  man3/atan2.3                         |  18 +-
>  man3/atanh.3                         |  18 +-
>  man3/atexit.3                        |  36 +-
>  man3/atof.3                          |  14 +-
>  man3/atoi.3                          |  12 +-
>  man3/backtrace.3                     |  24 +-
>  man3/basename.3                      |   8 +-
>  man3/bcmp.3                          |   4 +-
>  man3/bcopy.3                         |  22 +-
>  man3/bindresvport.3                  |  12 +-
>  man3/bsd_signal.3                    |  28 +-
>  man3/bsearch.3                       |  12 +-
>  man3/bstring.3                       |  24 +-
>  man3/bswap.3                         |   4 +-
>  man3/btowc.3                         |  12 +-
>  man3/btree.3                         |  18 +-
>  man3/byteorder.3                     |  10 +-
>  man3/bzero.3                         |   8 +-
>  man3/cabs.3                          |  10 +-
>  man3/cacos.3                         |   8 +-
>  man3/cacosh.3                        |  12 +-
>  man3/canonicalize_file_name.3        |  10 +-
>  man3/carg.3                          |   6 +-
>  man3/casin.3                         |   8 +-
>  man3/casinh.3                        |  12 +-
>  man3/catan.3                         |  10 +-
>  man3/catanh.3                        |  12 +-
>  man3/catgets.3                       |   8 +-
>  man3/catopen.3                       |  12 +-
>  man3/cbrt.3                          |   8 +-
>  man3/ccos.3                          |  12 +-
>  man3/ccosh.3                         |  10 +-
>  man3/ceil.3                          |  16 +-
>  man3/cexp.3                          |  12 +-
>  man3/cexp2.3                         |   8 +-
>  man3/cfree.3                         |  22 +-
>  man3/cimag.3                         |   8 +-
>  man3/circleq.3                       |   4 +-
>  man3/clearenv.3                      |  30 +-
>  man3/clock.3                         |  16 +-
>  man3/clock_getcpuclockid.3           |  16 +-
>  man3/clog.3                          |  14 +-
>  man3/clog10.3                        |  12 +-
>  man3/clog2.3                         |  10 +-
>  man3/closedir.3                      |  16 +-
>  man3/cmsg.3                          |  18 +-
>  man3/confstr.3                       |  18 +-
>  man3/conj.3                          |   8 +-
>  man3/copysign.3                      |   6 +-
>  man3/cos.3                           |  22 +-
>  man3/cosh.3                          |  18 +-
>  man3/cpow.3                          |   8 +-
>  man3/cproj.3                         |   6 +-
>  man3/creal.3                         |   8 +-
>  man3/crypt.3                         |  24 +-
>  man3/csin.3                          |  12 +-
>  man3/csinh.3                         |  12 +-
>  man3/csqrt.3                         |   8 +-
>  man3/ctan.3                          |  12 +-
>  man3/ctanh.3                         |  12 +-
>  man3/ctermid.3                       |   6 +-
>  man3/ctime.3                         |  40 +-
>  man3/daemon.3                        |  26 +-
>  man3/dbopen.3                        |  46 +-
>  man3/des_crypt.3                     |  10 +-
>  man3/difftime.3                      |  14 +-
>  man3/dirfd.3                         |  28 +-
>  man3/div.3                           |   8 +-
>  man3/dl_iterate_phdr.3               |  14 +-
>  man3/dladdr.3                        |  14 +-
>  man3/dlerror.3                       |  12 +-
>  man3/dlinfo.3                        |  20 +-
>  man3/dlopen.3                        |  46 +-
>  man3/dlsym.3                         |  24 +-
>  man3/drand48.3                       |   8 +-
>  man3/drand48_r.3                     |  12 +-
>  man3/duplocale.3                     |  28 +-
>  man3/dysize.3                        |   6 +-
>  man3/ecvt.3                          |  18 +-
>  man3/ecvt_r.3                        |  24 +-
>  man3/encrypt.3                       |  10 +-
>  man3/end.3                           |  14 +-
>  man3/endian.3                        |  10 +-
>  man3/envz_add.3                      |   6 +-
>  man3/erf.3                           |  12 +-
>  man3/erfc.3                          |  12 +-
>  man3/err.3                           |  16 +-
>  man3/errno.3                         |  30 +-
>  man3/error.3                         |  20 +-
>  man3/ether_aton.3                    |   4 +-
>  man3/euidaccess.3                    |  32 +-
>  man3/exec.3                          |  32 +-
>  man3/exit.3                          |  56 +--
>  man3/exp.3                           |  18 +-
>  man3/exp10.3                         |  18 +-
>  man3/exp2.3                          |  20 +-
>  man3/expm1.3                         |  12 +-
>  man3/fabs.3                          |  16 +-
>  man3/fclose.3                        |  26 +-
>  man3/fcloseall.3                     |  14 +-
>  man3/fdim.3                          |   8 +-
>  man3/fenv.3                          |   4 +-
>  man3/ferror.3                        |  22 +-
>  man3/fexecve.3                       |  20 +-
>  man3/fflush.3                        |  28 +-
>  man3/ffs.3                           |   6 +-
>  man3/fgetc.3                         |  38 +-
>  man3/fgetgrent.3                     |  24 +-
>  man3/fgetpwent.3                     |  26 +-
>  man3/fgetwc.3                        |  16 +-
>  man3/fgetws.3                        |  12 +-
>  man3/fileno.3                        |  18 +-
>  man3/finite.3                        |   8 +-
>  man3/flockfile.3                     |  18 +-
>  man3/floor.3                         |  16 +-
>  man3/fma.3                           |  12 +-
>  man3/fmax.3                          |   8 +-
>  man3/fmemopen.3                      |  26 +-
>  man3/fmin.3                          |   8 +-
>  man3/fmod.3                          |   8 +-
>  man3/fmtmsg.3                        |   8 +-
>  man3/fnmatch.3                       |  14 +-
>  man3/fopen.3                         |  46 +-
>  man3/fopencookie.3                   |  20 +-
>  man3/fpathconf.3                     |  16 +-
>  man3/fpclassify.3                    |  12 +-
>  man3/fpurge.3                        |  14 +-
>  man3/fputwc.3                        |  14 +-
>  man3/fputws.3                        |  12 +-
>  man3/fread.3                         |  18 +-
>  man3/frexp.3                         |   8 +-
>  man3/fseek.3                         |  20 +-
>  man3/fseeko.3                        |  14 +-
>  man3/ftime.3                         |  14 +-
>  man3/ftok.3                          |  22 +-
>  man3/fts.3                           |  36 +-
>  man3/ftw.3                           |  28 +-
>  man3/futimes.3                       |  18 +-
>  man3/fwide.3                         |  10 +-
>  man3/gamma.3                         |  26 +-
>  man3/gcvt.3                          |  16 +-
>  man3/get_nprocs.3                    |   6 +-
>  man3/get_phys_pages.3                |   6 +-
>  man3/getaddrinfo.3                   |  48 +-
>  man3/getaddrinfo_a.3                 |  36 +-
>  man3/getauxval.3                     |  16 +-
>  man3/getcontext.3                    |  48 +-
>  man3/getcwd.3                        |  34 +-
>  man3/getdate.3                       |  26 +-
>  man3/getdirentries.3                 |  12 +-
>  man3/getdtablesize.3                 |  16 +-
>  man3/getentropy.3                    |  14 +-
>  man3/getenv.3                        |  24 +-
>  man3/getfsent.3                      |   8 +-
>  man3/getgrent.3                      |  28 +-
>  man3/getgrent_r.3                    |  32 +-
>  man3/getgrnam.3                      |  24 +-
>  man3/getgrouplist.3                  |  18 +-
>  man3/gethostbyname.3                 |  40 +-
>  man3/gethostid.3                     |  14 +-
>  man3/getifaddrs.3                    |  32 +-
>  man3/getipnodebyname.3               |  16 +-
>  man3/getline.3                       |  18 +-
>  man3/getloadavg.3                    |   8 +-
>  man3/getlogin.3                      |  18 +-
>  man3/getmntent.3                     |  16 +-
>  man3/getnameinfo.3                   |  42 +-
>  man3/getnetent.3                     |   8 +-
>  man3/getnetent_r.3                   |  14 +-
>  man3/getopt.3                        |  16 +-
>  man3/getpass.3                       |  10 +-
>  man3/getprotoent.3                   |  12 +-
>  man3/getprotoent_r.3                 |  14 +-
>  man3/getpt.3                         |  18 +-
>  man3/getpw.3                         |  22 +-
>  man3/getpwent.3                      |  28 +-
>  man3/getpwent_r.3                    |  28 +-
>  man3/getpwnam.3                      |  30 +-
>  man3/getrpcent.3                     |  10 +-
>  man3/getrpcent_r.3                   |  14 +-
>  man3/getrpcport.3                    |   2 +-
>  man3/gets.3                          |  36 +-
>  man3/getservent.3                    |  12 +-
>  man3/getservent_r.3                  |  14 +-
>  man3/getspnam.3                      |  16 +-
>  man3/getsubopt.3                     |  10 +-
>  man3/getttyent.3                     |   6 +-
>  man3/getusershell.3                  |   6 +-
>  man3/getutent.3                      |  16 +-
>  man3/getutmp.3                       |   8 +-
>  man3/getw.3                          |  20 +-
>  man3/getwchar.3                      |  10 +-
>  man3/glob.3                          |  44 +-
>  man3/gnu_get_libc_version.3          |   4 +-
>  man3/grantpt.3                       |  20 +-
>  man3/group_member.3                  |  12 +-
>  man3/gsignal.3                       |  18 +-
>  man3/hash.3                          |  20 +-
>  man3/hsearch.3                       |  12 +-
>  man3/hypot.3                         |  10 +-
>  man3/iconv.3                         |  10 +-
>  man3/iconv_close.3                   |   8 +-
>  man3/iconv_open.3                    |  16 +-
>  man3/if_nameindex.3                  |  28 +-
>  man3/if_nametoindex.3                |  12 +-
>  man3/ilogb.3                         |  14 +-
>  man3/index.3                         |  16 +-
>  man3/inet.3                          |  28 +-
>  man3/inet_net_pton.3                 |   6 +-
>  man3/inet_ntop.3                     |  14 +-
>  man3/inet_pton.3                     |  20 +-
>  man3/initgroups.3                    |  12 +-
>  man3/insque.3                        |   6 +-
>  man3/intro.3                         |  30 +-
>  man3/isalpha.3                       |  46 +-
>  man3/isatty.3                        |   6 +-
>  man3/isfdtype.3                      |  10 +-
>  man3/isgreater.3                     |   8 +-
>  man3/iswalnum.3                      |   8 +-
>  man3/iswalpha.3                      |   8 +-
>  man3/iswblank.3                      |  10 +-
>  man3/iswcntrl.3                      |   8 +-
>  man3/iswctype.3                      |  30 +-
>  man3/iswdigit.3                      |   8 +-
>  man3/iswgraph.3                      |   8 +-
>  man3/iswlower.3                      |  10 +-
>  man3/iswprint.3                      |   8 +-
>  man3/iswpunct.3                      |   8 +-
>  man3/iswspace.3                      |   8 +-
>  man3/iswupper.3                      |  10 +-
>  man3/iswxdigit.3                     |   8 +-
>  man3/j0.3                            |  10 +-
>  man3/key_setsecret.3                 |   4 +-
>  man3/killpg.3                        |  20 +-
>  man3/ldexp.3                         |  12 +-
>  man3/lgamma.3                        |   8 +-
>  man3/lio_listio.3                    |  40 +-
>  man3/list.3                          |   4 +-
>  man3/localeconv.3                    |  26 +-
>  man3/lockf.3                         |  14 +-
>  man3/log.3                           |  18 +-
>  man3/log10.3                         |  22 +-
>  man3/log1p.3                         |  12 +-
>  man3/log2.3                          |  20 +-
>  man3/logb.3                          |  10 +-
>  man3/login.3                         |  14 +-
>  man3/lrint.3                         |  22 +-
>  man3/lround.3                        |  24 +-
>  man3/lsearch.3                       |   8 +-
>  man3/lseek64.3                       |  14 +-
>  man3/makecontext.3                   |  26 +-
>  man3/makedev.3                       |  10 +-
>  man3/mallinfo.3                      |  38 +-
>  man3/malloc.3                        |  50 +--
>  man3/malloc_get_state.3              |  20 +-
>  man3/malloc_hook.3                   |  26 +-
>  man3/malloc_info.3                   |  20 +-
>  man3/malloc_stats.3                  |  20 +-
>  man3/malloc_trim.3                   |  16 +-
>  man3/malloc_usable_size.3            |   8 +-
>  man3/mallopt.3                       |  68 +--
>  man3/matherr.3                       |  18 +-
>  man3/mblen.3                         |   6 +-
>  man3/mbrlen.3                        |   4 +-
>  man3/mbrtowc.3                       |   6 +-
>  man3/mbsinit.3                       |  18 +-
>  man3/mbsnrtowcs.3                    |  14 +-
>  man3/mbsrtowcs.3                     |  12 +-
>  man3/mbstowcs.3                      |  14 +-
>  man3/mbtowc.3                        |  16 +-
>  man3/mcheck.3                        |  16 +-
>  man3/memccpy.3                       |  14 +-
>  man3/memchr.3                        |  28 +-
>  man3/memcmp.3                        |  16 +-
>  man3/memcpy.3                        |  22 +-
>  man3/memfrob.3                       |   6 +-
>  man3/memmem.3                        |   6 +-
>  man3/memmove.3                       |  16 +-
>  man3/mempcpy.3                       |  12 +-
>  man3/memset.3                        |  10 +-
>  man3/mkdtemp.3                       |  20 +-
>  man3/mkfifo.3                        |  26 +-
>  man3/mkstemp.3                       |  24 +-
>  man3/mktemp.3                        |  20 +-
>  man3/modf.3                          |   8 +-
>  man3/mpool.3                         |  20 +-
>  man3/mq_close.3                      |  20 +-
>  man3/mq_getattr.3                    |  30 +-
>  man3/mq_notify.3                     |  30 +-
>  man3/mq_open.3                       |  36 +-
>  man3/mq_receive.3                    |  28 +-
>  man3/mq_send.3                       |  28 +-
>  man3/mq_unlink.3                     |  16 +-
>  man3/mtrace.3                        |  28 +-
>  man3/nan.3                           |  14 +-
>  man3/netlink.3                       |   6 +-
>  man3/newlocale.3                     |  26 +-
>  man3/nextafter.3                     |   8 +-
>  man3/nextup.3                        |   6 +-
>  man3/nl_langinfo.3                   |  62 +--
>  man3/ntp_gettime.3                   |  14 +-
>  man3/offsetof.3                      |   2 +-
>  man3/on_exit.3                       |  20 +-
>  man3/open_memstream.3                |  22 +-
>  man3/opendir.3                       |  24 +-
>  man3/openpty.3                       |  14 +-
>  man3/perror.3                        |  14 +-
>  man3/popen.3                         |  42 +-
>  man3/posix_fallocate.3               |  18 +-
>  man3/posix_madvise.3                 |  10 +-
>  man3/posix_memalign.3                |  26 +-
>  man3/posix_openpt.3                  |  24 +-
>  man3/posix_spawn.3                   | 170 +++----
>  man3/pow.3                           |  12 +-
>  man3/pow10.3                         |   8 +-
>  man3/powerof2.3                      |   4 +-
>  man3/printf.3                        |  46 +-
>  man3/profil.3                        |  16 +-
>  man3/program_invocation_name.3       |   2 +-
>  man3/psignal.3                       |  16 +-
>  man3/pthread_atfork.3                |  28 +-
>  man3/pthread_attr_init.3             |  40 +-
>  man3/pthread_attr_setaffinity_np.3   |  16 +-
>  man3/pthread_attr_setdetachstate.3   |  26 +-
>  man3/pthread_attr_setguardsize.3     |  26 +-
>  man3/pthread_attr_setinheritsched.3  |  26 +-
>  man3/pthread_attr_setschedparam.3    |  30 +-
>  man3/pthread_attr_setschedpolicy.3   |  26 +-
>  man3/pthread_attr_setscope.3         |  20 +-
>  man3/pthread_attr_setsigmask_np.3    |  20 +-
>  man3/pthread_attr_setstack.3         |  32 +-
>  man3/pthread_attr_setstackaddr.3     |  20 +-
>  man3/pthread_attr_setstacksize.3     |  20 +-
>  man3/pthread_cancel.3                |  34 +-
>  man3/pthread_cleanup_push.3          |  22 +-
>  man3/pthread_cleanup_push_defer_np.3 |  24 +-
>  man3/pthread_create.3                |  60 +--
>  man3/pthread_detach.3                |  24 +-
>  man3/pthread_equal.3                 |   8 +-
>  man3/pthread_exit.3                  |  22 +-
>  man3/pthread_getattr_default_np.3    |  30 +-
>  man3/pthread_getattr_np.3            |  36 +-
>  man3/pthread_getcpuclockid.3         |  22 +-
>  man3/pthread_join.3                  |  18 +-
>  man3/pthread_kill.3                  |  22 +-
>  man3/pthread_kill_other_threads_np.3 |  18 +-
>  man3/pthread_mutex_consistent.3      |  14 +-
>  man3/pthread_mutexattr_getpshared.3  |   4 +-
>  man3/pthread_mutexattr_init.3        |   8 +-
>  man3/pthread_mutexattr_setrobust.3   |  34 +-
>  man3/pthread_rwlockattr_setkind_np.3 |   4 +-
>  man3/pthread_self.3                  |  14 +-
>  man3/pthread_setaffinity_np.3        |  34 +-
>  man3/pthread_setcancelstate.3        |  22 +-
>  man3/pthread_setconcurrency.3        |   6 +-
>  man3/pthread_setname_np.3            |  10 +-
>  man3/pthread_setschedparam.3         |  40 +-
>  man3/pthread_setschedprio.3          |  30 +-
>  man3/pthread_sigmask.3               |  32 +-
>  man3/pthread_sigqueue.3              |  26 +-
>  man3/pthread_spin_init.3             |  16 +-
>  man3/pthread_spin_lock.3             |  12 +-
>  man3/pthread_testcancel.3            |  14 +-
>  man3/pthread_tryjoin_np.3            |  22 +-
>  man3/pthread_yield.3                 |  14 +-
>  man3/ptsname.3                       |  18 +-
>  man3/putenv.3                        |  14 +-
>  man3/putgrent.3                      |  10 +-
>  man3/putpwent.3                      |  18 +-
>  man3/puts.3                          |  28 +-
>  man3/putwchar.3                      |  10 +-
>  man3/qecvt.3                         |  24 +-
>  man3/qsort.3                         |  16 +-
>  man3/raise.3                         |  18 +-
>  man3/rand.3                          |  16 +-
>  man3/random.3                        |  16 +-
>  man3/random_r.3                      |  22 +-
>  man3/rcmd.3                          |  24 +-
>  man3/re_comp.3                       |   8 +-
>  man3/readdir.3                       |  38 +-
>  man3/readdir_r.3                     |  22 +-
>  man3/realpath.3                      |  30 +-
>  man3/recno.3                         |  26 +-
>  man3/regex.3                         |   8 +-
>  man3/remainder.3                     |  14 +-
>  man3/remove.3                        |  30 +-
>  man3/remquo.3                        |  16 +-
>  man3/resolver.3                      |  20 +-
>  man3/rewinddir.3                     |  14 +-
>  man3/rexec.3                         |  16 +-
>  man3/rint.3                          |  20 +-
>  man3/round.3                         |  22 +-
>  man3/roundup.3                       |  12 +-
>  man3/rpc.3                           |  14 +-
>  man3/rpmatch.3                       |  24 +-
>  man3/rtime.3                         |  14 +-
>  man3/rtnetlink.3                     |  10 +-
>  man3/scalb.3                         |  16 +-
>  man3/scalbln.3                       |  16 +-
>  man3/scandir.3                       |  40 +-
>  man3/scanf.3                         |  30 +-
>  man3/sched_getcpu.3                  |  12 +-
>  man3/seekdir.3                       |  24 +-
>  man3/sem_close.3                     |  16 +-
>  man3/sem_destroy.3                   |  16 +-
>  man3/sem_getvalue.3                  |  12 +-
>  man3/sem_init.3                      |  28 +-
>  man3/sem_open.3                      |  18 +-
>  man3/sem_post.3                      |  16 +-
>  man3/sem_unlink.3                    |  12 +-
>  man3/sem_wait.3                      |  22 +-
>  man3/setaliasent.3                   |  10 +-
>  man3/setbuf.3                        |  24 +-
>  man3/setenv.3                        |  14 +-
>  man3/setjmp.3                        |  10 +-
>  man3/setlocale.3                     |  36 +-
>  man3/setlogmask.3                    |  10 +-
>  man3/setnetgrent.3                   |  10 +-
>  man3/shm_open.3                      |  48 +-
>  man3/siginterrupt.3                  |   8 +-
>  man3/signbit.3                       |   6 +-
>  man3/significand.3                   |   8 +-
>  man3/sigpause.3                      |  22 +-
>  man3/sigqueue.3                      |  34 +-
>  man3/sigset.3                        |  50 +--
>  man3/sigsetops.3                     |  14 +-
>  man3/sigvec.3                        |  40 +-
>  man3/sigwait.3                       |  26 +-
>  man3/sin.3                           |  22 +-
>  man3/sincos.3                        |  16 +-
>  man3/sinh.3                          |  18 +-
>  man3/sleep.3                         |  22 +-
>  man3/slist.3                         |   4 +-
>  man3/sockatmark.3                    |  16 +-
>  man3/sqrt.3                          |  12 +-
>  man3/sscanf.3                        |  32 +-
>  man3/stailq.3                        |   4 +-
>  man3/static_assert.3                 |   4 +-
>  man3/statvfs.3                       |  26 +-
>  man3/stdarg.3                        |  10 +-
>  man3/stdin.3                         |  46 +-
>  man3/stdio.3                         |  24 +-
>  man3/stdio_ext.3                     |   8 +-
>  man3/stpncpy.3                       |  10 +-
>  man3/strcasecmp.3                    |  16 +-
>  man3/strchr.3                        |  22 +-
>  man3/strcmp.3                        |  24 +-
>  man3/strcoll.3                       |  18 +-
>  man3/strcpy.3                        |  14 +-
>  man3/strdup.3                        |  24 +-
>  man3/strerror.3                      |  18 +-
>  man3/strfmon.3                       |  12 +-
>  man3/strfromd.3                      |  12 +-
>  man3/strfry.3                        |   6 +-
>  man3/strftime.3                      |  48 +-
>  man3/string.3                        |  52 +--
>  man3/strlen.3                        |  12 +-
>  man3/strncat.3                       |  10 +-
>  man3/strnlen.3                       |   6 +-
>  man3/strpbrk.3                       |  18 +-
>  man3/strptime.3                      |  24 +-
>  man3/strsep.3                        |  24 +-
>  man3/strsignal.3                     |   8 +-
>  man3/strspn.3                        |  20 +-
>  man3/strstr.3                        |  22 +-
>  man3/strtod.3                        |  26 +-
>  man3/strtoimax.3                     |  16 +-
>  man3/strtok.3                        |  22 +-
>  man3/strtol.3                        |  20 +-
>  man3/strtoul.3                       |  22 +-
>  man3/strverscmp.3                    |  20 +-
>  man3/strxfrm.3                       |  20 +-
>  man3/swab.3                          |   4 +-
>  man3/sysconf.3                       |  52 +--
>  man3/syslog.3                        |  24 +-
>  man3/system.3                        |  52 +--
>  man3/sysv_signal.3                   |  22 +-
>  man3/tailq.3                         |   4 +-
>  man3/tan.3                           |  20 +-
>  man3/tanh.3                          |  16 +-
>  man3/tcgetpgrp.3                     |   8 +-
>  man3/tcgetsid.3                      |   6 +-
>  man3/telldir.3                       |  18 +-
>  man3/tempnam.3                       |  30 +-
>  man3/termios.3                       |  74 ++--
>  man3/tgamma.3                        |  14 +-
>  man3/timegm.3                        |  18 +-
>  man3/timeradd.3                      |   6 +-
>  man3/tmpfile.3                       |  14 +-
>  man3/tmpnam.3                        |  28 +-
>  man3/toascii.3                       |  10 +-
>  man3/toupper.3                       |  20 +-
>  man3/towctrans.3                     |  10 +-
>  man3/towlower.3                      |  16 +-
>  man3/towupper.3                      |  16 +-
>  man3/trunc.3                         |  16 +-
>  man3/tsearch.3                       |  10 +-
>  man3/ttyname.3                       |  14 +-
>  man3/ttyslot.3                       |  20 +-
>  man3/tzset.3                         |  22 +-
>  man3/ualarm.3                        |  42 +-
>  man3/ulimit.3                        |  18 +-
>  man3/undocumented.3                  | 264 +++++------
>  man3/ungetwc.3                       |   6 +-
>  man3/unlocked_stdio.3                |  10 +-
>  man3/unlockpt.3                      |  14 +-
>  man3/updwtmp.3                       |   8 +-
>  man3/uselocale.3                     |  28 +-
>  man3/usleep.3                        |  46 +-
>  man3/wcpcpy.3                        |  10 +-
>  man3/wcpncpy.3                       |  10 +-
>  man3/wcrtomb.3                       |   6 +-
>  man3/wcscasecmp.3                    |  12 +-
>  man3/wcscat.3                        |  12 +-
>  man3/wcschr.3                        |  14 +-
>  man3/wcscmp.3                        |  10 +-
>  man3/wcscpy.3                        |  14 +-
>  man3/wcscspn.3                       |  10 +-
>  man3/wcsdup.3                        |  14 +-
>  man3/wcslen.3                        |   8 +-
>  man3/wcsncasecmp.3                   |  12 +-
>  man3/wcsncat.3                       |   8 +-
>  man3/wcsncmp.3                       |   8 +-
>  man3/wcsncpy.3                       |   6 +-
>  man3/wcsnlen.3                       |  10 +-
>  man3/wcsnrtombs.3                    |  12 +-
>  man3/wcspbrk.3                       |  10 +-
>  man3/wcsrchr.3                       |   8 +-
>  man3/wcsrtombs.3                     |  12 +-
>  man3/wcsspn.3                        |   8 +-
>  man3/wcsstr.3                        |   8 +-
>  man3/wcstoimax.3                     |  18 +-
>  man3/wcstok.3                        |   8 +-
>  man3/wcstombs.3                      |  14 +-
>  man3/wcswidth.3                      |   6 +-
>  man3/wctob.3                         |  12 +-
>  man3/wctomb.3                        |  16 +-
>  man3/wctrans.3                       |   6 +-
>  man3/wctype.3                        |   6 +-
>  man3/wcwidth.3                       |   6 +-
>  man3/wmemchr.3                       |   8 +-
>  man3/wmemcmp.3                       |   8 +-
>  man3/wmemcpy.3                       |  14 +-
>  man3/wmemmove.3                      |   8 +-
>  man3/wmemset.3                       |   6 +-
>  man3/wordexp.3                       |  16 +-
>  man3/wprintf.3                       |  48 +-
>  man3/xcrypt.3                        |   4 +-
>  man3/xdr.3                           |  12 +-
>  man3/y0.3                            |  10 +-
>  man3const/EOF.3const                 |   4 +-
>  man3const/EXIT_SUCCESS.3const        |   4 +-
>  man3const/NULL.3const                |   8 +-
>  man3head/printf.h.3head              |  22 +-
>  man3head/sysexits.h.3head            |  12 +-
>  man3type/FILE.3type                  |  16 +-
>  man3type/aiocb.3type                 |  18 +-
>  man3type/blkcnt_t.3type              |   2 +-
>  man3type/blksize_t.3type             |   2 +-
>  man3type/cc_t.3type                  |   2 +-
>  man3type/clock_t.3type               |   4 +-
>  man3type/clockid_t.3type             |  10 +-
>  man3type/dev_t.3type                 |   6 +-
>  man3type/div_t.3type                 |  10 +-
>  man3type/epoll_event.3type           |   4 +-
>  man3type/fenv_t.3type                |   4 +-
>  man3type/id_t.3type                  |  46 +-
>  man3type/intN_t.3type                |  10 +-
>  man3type/intmax_t.3type              |  12 +-
>  man3type/intptr_t.3type              |   8 +-
>  man3type/iovec.3type                 |   4 +-
>  man3type/itimerspec.3type            |   6 +-
>  man3type/lconv.3type                 |   8 +-
>  man3type/mode_t.3type                |  10 +-
>  man3type/off_t.3type                 |  28 +-
>  man3type/ptrdiff_t.3type             |   6 +-
>  man3type/size_t.3type                |  34 +-
>  man3type/sockaddr.3type              |  34 +-
>  man3type/stat.3type                  |  14 +-
>  man3type/time_t.3type                |  12 +-
>  man3type/timer_t.3type               |  10 +-
>  man3type/timespec.3type              |  14 +-
>  man3type/timeval.3type               |  18 +-
>  man3type/tm.3type                    |  20 +-
>  man3type/va_list.3type               |  16 +-
>  man3type/void.3type                  |  14 +-
>  man4/cciss.4                         |  18 +-
>  man4/console_codes.4                 |  30 +-
>  man4/cpuid.4                         |   6 +-
>  man4/dsp56k.4                        |  10 +-
>  man4/fd.4                            |  18 +-
>  man4/full.4                          |   6 +-
>  man4/fuse.4                          |  26 +-
>  man4/hd.4                            |   8 +-
>  man4/hpsa.4                          |  24 +-
>  man4/initrd.4                        |  16 +-
>  man4/intro.4                         |   6 +-
>  man4/lirc.4                          |  16 +-
>  man4/loop.4                          |  32 +-
>  man4/lp.4                            |  16 +-
>  man4/mem.4                           |   6 +-
>  man4/mouse.4                         |   6 +-
>  man4/null.4                          |   8 +-
>  man4/pts.4                           |  24 +-
>  man4/ram.4                           |   6 +-
>  man4/random.4                        |  34 +-
>  man4/rtc.4                           |  56 +--
>  man4/sd.4                            |  16 +-
>  man4/sk98lin.4                       |  12 +-
>  man4/smartpqi.4                      |  14 +-
>  man4/st.4                            |  28 +-
>  man4/tty.4                           |  28 +-
>  man4/ttyS.4                          |  12 +-
>  man4/vcs.4                           |  18 +-
>  man4/veth.4                          |  12 +-
>  man4/wavelan.4                       |  22 +-
>  man5/acct.5                          |  12 +-
>  man5/charmap.5                       |  12 +-
>  man5/core.5                          |  94 ++--
>  man5/dir_colors.5                    |  18 +-
>  man5/elf.5                           |  36 +-
>  man5/erofs.5                         |   2 +-
>  man5/filesystems.5                   |  46 +-
>  man5/ftpusers.5                      |   6 +-
>  man5/gai.conf.5                      |   4 +-
>  man5/group.5                         |  24 +-
>  man5/host.conf.5                     |  12 +-
>  man5/hosts.5                         |  10 +-
>  man5/hosts.equiv.5                   |   6 +-
>  man5/intro.5                         |   2 +-
>  man5/issue.5                         |   6 +-
>  man5/locale.5                        |  58 +--
>  man5/motd.5                          |   6 +-
>  man5/networks.5                      |  16 +-
>  man5/nologin.5                       |   6 +-
>  man5/nscd.conf.5                     |  10 +-
>  man5/nss.5                           |  18 +-
>  man5/nsswitch.conf.5                 |  32 +-
>  man5/passwd.5                        |  48 +-
>  man5/proc.5                          | 638 +++++++++++++--------------=

>  man5/protocols.5                     |   2 +-
>  man5/repertoiremap.5                 |  10 +-
>  man5/resolv.conf.5                   |  32 +-
>  man5/rpc.5                           |   2 +-
>  man5/securetty.5                     |   8 +-
>  man5/services.5                      |  42 +-
>  man5/shells.5                        |   8 +-
>  man5/slabinfo.5                      |   2 +-
>  man5/sysfs.5                         |  12 +-
>  man5/termcap.5                       |  10 +-
>  man5/tmpfs.5                         |  28 +-
>  man5/ttytype.5                       |  14 +-
>  man5/tzfile.5                        |  24 +-
>  man5/utmp.5                          |  78 ++--
>  man7/address_families.7              |  38 +-
>  man7/aio.7                           |  76 ++--
>  man7/armscii-8.7                     |   8 +-
>  man7/arp.7                           |  16 +-
>  man7/ascii.7                         |  34 +-
>  man7/attributes.7                    |  14 +-
>  man7/boot.7                          |  34 +-
>  man7/bootparam.7                     |  22 +-
>  man7/capabilities.7                  | 378 ++++++++--------
>  man7/cgroup_namespaces.7             |  34 +-
>  man7/cgroups.7                       |  74 ++--
>  man7/charsets.7                      |  14 +-
>  man7/complex.7                       |  52 +--
>  man7/cp1251.7                        |  16 +-
>  man7/cp1252.7                        |  14 +-
>  man7/cpuset.7                        | 158 +++----
>  man7/credentials.7                   | 250 +++++------
>  man7/ddp.7                           |  20 +-
>  man7/environ.7                       | 106 ++---
>  man7/epoll.7                         | 114 ++---
>  man7/fanotify.7                      | 116 ++---
>  man7/feature_test_macros.7           |  58 +--
>  man7/fifo.7                          |  20 +-
>  man7/futex.7                         |  24 +-
>  man7/glob.7                          |  12 +-
>  man7/hier.7                          |  28 +-
>  man7/hostname.7                      |  18 +-
>  man7/icmp.7                          |   8 +-
>  man7/inode.7                         |  72 +--
>  man7/inotify.7                       | 136 +++---
>  man7/intro.7                         |   2 +-
>  man7/ip.7                            | 168 +++----
>  man7/ipc_namespaces.7                |  20 +-
>  man7/ipv6.7                          |  28 +-
>  man7/iso_8859-1.7                    |  12 +-
>  man7/iso_8859-10.7                   |   8 +-
>  man7/iso_8859-11.7                   |   8 +-
>  man7/iso_8859-13.7                   |   8 +-
>  man7/iso_8859-14.7                   |   8 +-
>  man7/iso_8859-15.7                   |  12 +-
>  man7/iso_8859-16.7                   |  10 +-
>  man7/iso_8859-2.7                    |  12 +-
>  man7/iso_8859-3.7                    |   8 +-
>  man7/iso_8859-4.7                    |   8 +-
>  man7/iso_8859-5.7                    |  14 +-
>  man7/iso_8859-6.7                    |   8 +-
>  man7/iso_8859-7.7                    |   8 +-
>  man7/iso_8859-8.7                    |   8 +-
>  man7/iso_8859-9.7                    |   8 +-
>  man7/keyrings.7                      | 150 +++----
>  man7/koi8-r.7                        |  14 +-
>  man7/koi8-u.7                        |  14 +-
>  man7/landlock.7                      |  86 ++--
>  man7/libc.7                          |  14 +-
>  man7/locale.7                        | 124 +++---
>  man7/mailaddr.7                      |   8 +-
>  man7/man-pages.7                     |  50 +--
>  man7/man.7                           |  42 +-
>  man7/math_error.7                    |  38 +-
>  man7/mount_namespaces.7              | 152 +++----
>  man7/mq_overview.7                   |  88 ++--
>  man7/namespaces.7                    |  96 ++--
>  man7/netdevice.7                     |  20 +-
>  man7/netlink.7                       |  32 +-
>  man7/network_namespaces.7            |  34 +-
>  man7/nptl.7                          |  50 +--
>  man7/numa.7                          |  26 +-
>  man7/packet.7                        |  54 +--
>  man7/path_resolution.7               |  40 +-
>  man7/persistent-keyring.7            |  52 +--
>  man7/pid_namespaces.7                | 108 ++---
>  man7/pipe.7                          |  94 ++--
>  man7/pkeys.7                         |  34 +-
>  man7/posixoptions.7                  |  18 +-
>  man7/process-keyring.7               |  26 +-
>  man7/pthreads.7                      | 136 +++---
>  man7/pty.7                           |  56 +--
>  man7/queue.7                         |  12 +-
>  man7/random.7                        |  26 +-
>  man7/raw.7                           |  38 +-
>  man7/regex.7                         |   8 +-
>  man7/rtld-audit.7                    |  16 +-
>  man7/rtnetlink.7                     |  14 +-
>  man7/sched.7                         | 190 ++++----
>  man7/sem_overview.7                  |  52 +--
>  man7/session-keyring.7               |  54 +--
>  man7/shm_overview.7                  |  52 +--
>  man7/sigevent.7                      |  26 +-
>  man7/signal-safety.7                 |  38 +-
>  man7/signal.7                        | 372 ++++++++--------
>  man7/sock_diag.7                     |  26 +-
>  man7/socket.7                        | 264 +++++------
>  man7/spufs.7                         | 140 +++---
>  man7/standards.7                     |  18 +-
>  man7/string_copying.7                | 176 ++++----
>  man7/suffixes.7                      |   6 +-
>  man7/symlink.7                       | 174 ++++----
>  man7/system_data_types.7             |  56 +--
>  man7/sysvipc.7                       |  66 +--
>  man7/tcp.7                           | 136 +++---
>  man7/termio.7                        |  22 +-
>  man7/thread-keyring.7                |  26 +-
>  man7/time.7                          | 124 +++---
>  man7/time_namespaces.7               |  48 +-
>  man7/udp.7                           |  68 +--
>  man7/udplite.7                       |  26 +-
>  man7/unicode.7                       |  14 +-
>  man7/unix.7                          | 160 +++----
>  man7/uri.7                           |  20 +-
>  man7/user-keyring.7                  |  44 +-
>  man7/user-session-keyring.7          |  44 +-
>  man7/user_namespaces.7               | 214 ++++-----
>  man7/utf-8.7                         |  14 +-
>  man7/uts_namespaces.7                |  32 +-
>  man7/vdso.7                          |  22 +-
>  man7/vsock.7                         |  40 +-
>  man7/x25.7                           |  12 +-
>  man7/xattr.7                         |  34 +-
>  man8/iconvconfig.8                   |   8 +-
>  man8/intro.8                         |   2 +-
>  man8/ld.so.8                         |  50 +--
>  man8/ldconfig.8                      |   2 +-
>  man8/nscd.8                          |  22 +-
>  man8/sln.8                           |   6 +-
>  man8/zdump.8                         |  12 +-
>  man8/zic.8                           |   6 +-
>  1100 files changed, 15264 insertions(+), 15264 deletions(-)
>=20
> Compressed patch attached because I'm sure it's too huge for vger.
>=20
> Regards,
> Branden

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------lJ2MD2myXrjppdQnxy2ngH6q--

--------------cKzbRsrLfbWwDySZz5hJtLZS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTGy9oACgkQnowa+77/
2zL9pw/9EeM9dPW1IfUqvKDE04HpGgOTrZyIEBjcaFXk58qoMRE12iufQjMfuXm1
Lfqr+mNiL/WEwfMZd8zQGCT/HxXzw/QVAI9xQooto3YjK2nl9xM26sRZ3vz6KZqH
Zlp2A31aVBJcPIdLelDt6BtBeMkfWtTCscHkFGXEYuufDORXZvXT+ijmVP2tTQ54
o6i0U+9PnXZs6Th/i4eVdm/gr9ASma+X8pOcoDwatShBHP/2cm+3kv6v3/zViJ8O
k7izubq9Ckv8TZo0OIrvtdJfsWaWxERpoDBr5S/J2JHk79K6UiJhs6OYf+gXECR5
Yo/q4X+QmqDJrqzl8zMugMba5H+Gb1Xzvbkfr9VHOtoeccEprIvF5p/uElo/esDk
Z6N0j82L8kkVW+BTG0d2TRE5ncjAzRkR+T1928n6F5wrplXDZY3iuvMqBp1/dI/a
leNqJRknZZRw8X81J2+PWCNYxPC6WsNcQErHZoADyXLbzJudQalBN7y3ld9S5msP
gOFlsYJ0cltsQ2A4RIHjIqFz7mBf6331FKsgYmdi7fKZgINyEw4MaSVVtRCTlur1
qUyQoGqU/8adUSt3N8Zj7K8ft8qt9/tmzzId7ZfM9o6aonFi6EOwo5y8ryxphy61
uR0C7utx443B8xiFltW8GbIuHX0q0Xtkbiw2WsUw3LggvnitboY=
=ZBKi
-----END PGP SIGNATURE-----

--------------cKzbRsrLfbWwDySZz5hJtLZS--
