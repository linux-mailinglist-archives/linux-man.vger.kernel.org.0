Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6760E77D560
	for <lists+linux-man@lfdr.de>; Tue, 15 Aug 2023 23:49:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240326AbjHOVsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Aug 2023 17:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240302AbjHOVsJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Aug 2023 17:48:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 272801FC3
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 14:48:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A232563F62
        for <linux-man@vger.kernel.org>; Tue, 15 Aug 2023 21:48:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96C53C433C8;
        Tue, 15 Aug 2023 21:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1692136085;
        bh=xfOqNtIvzbnp9Z1R6Sekp3xeSRWfZY1pWcAPa8XAtL4=;
        h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
        b=RNgDfVzvzuZDbXF4uJikqxwJLUYCFzVdShw4MsCS7Hc+FvKpkKZqL9Qmk+84QCQxL
         4mMIH1suO6ZT6onAJ9DSvuZyJmkTt/HwGFwYj7t7xUP/yM9lnOaSuXCg/Ju78hg6Vh
         gCBcaRV0GF7vueeMDQc2xn5oi0Jw74QpD6PxhgF6COgDEFowkT4ROF/fr2oMzMoV3S
         Li77Xh0Ffe7oS/6DuBCgf8nEkuBjDrYFwEqTnQimJWK3J//ki2sPBR6xEwI23hMGCw
         CFMySP73uPIGDvO8uqKRZGQ8psIAbtKMH2/QCD/2765xoAu/ErT0NSsL/90SN3BZTl
         EbU3ZT2kFjQcg==
Message-ID: <e3a5bc09-e835-9819-4aaa-12959495ac59@kernel.org>
Date:   Tue, 15 Aug 2023 23:47:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: proc(5)'s sashimi
Content-Language: en-US
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <guenther@unix-ag.uni-kl.de>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
Organization: Linux
In-Reply-To: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lGZ738Dl4AJO399Sb20gff1m"
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------lGZ738Dl4AJO399Sb20gff1m
Content-Type: multipart/mixed; boundary="------------zkXE37UUv7XZgboTa6q10801";
 protected-headers="v1"
From: Alejandro Colomar <alx@kernel.org>
To: linux-man <linux-man@vger.kernel.org>
Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
 =?UTF-8?Q?G=c3=bcnther_Noack?= <guenther@unix-ag.uni-kl.de>,
 Brian Inglis <Brian.Inglis@Shaw.ca>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Message-ID: <e3a5bc09-e835-9819-4aaa-12959495ac59@kernel.org>
Subject: Re: proc(5)'s sashimi
References: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>
In-Reply-To: <72378b09-c74b-2d9d-4732-00acd656d052@kernel.org>

--------------zkXE37UUv7XZgboTa6q10801
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi!

On 2023-08-14 16:06, Alejandro Colomar wrote:
> Hi!
>=20
> The day has come to cut the proc(5) tuna fish in very little pieces.
> As a first step, I'm pasting the contents of proc(5) into little
> files, without changing any contents (not even the formatting).  For
> example see the two files at the bottom of this email.
>=20
> I'd like to hear any comments before pushing such a change to the repo.=

> I'll soon post a branch called 'proc' to my repo (I'll ping when it's
> done), so you can observe the changes).

The sashimi is ready.  Feel free to grab your portion and have a nice
supper.

I've created a signed tag 'proc-sashimi-v1' for review.  It's around
100 commits, so I'm not sending them to the mailing list.  Below
is a summary.

I didn't change anything from what I suggested yesterday, so I'm not
resending renderings of any page, but feel free to ask for them if
you want.

As always, all commits are GPG-signed, and the tag is also GPG-signed.

You may notice that proc_sys(5) is still huge, compared to the other
pages.  I'll probably cut it in pieces in the future; I was just
tired at that point and kept the depth of the cuts limited for this
time.

Also, manual-page references are broken now, since all pages still
point to proc(5), and I didn't go page by page updating the
references to whatever the new page should be.  I think that's too
much for now.  If anyone wants to send updates for those, please
feel welcome!  Also the references in proc(5) should be moved to the
appropriate new pages, but that's a similar story.

Cheers,
Alex

---

$ git request-pull master \
      git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.gi=
t \
      proc-sashimi-v1;
The following changes since commit 26ffcd4fa9a4f89ab60371e9c19fa39cae5863=
4b:

  scripts/sortman: Ignore only leading underscores or dashes (2023-08-14 =
15:16:59 +0200)

are available in the Git repository at:

  git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git ta=
gs/proc-sashimi-v1

for you to fetch changes up to 92cdcec79df039146e5ed42cac23cd4b7e3f9e25:

  proc.5: Clean up after making sashimi of this page (2023-08-15 23:27:07=
 +0200)

----------------------------------------------------------------
proc(5) sashimi; v1

----------------------------------------------------------------
Alejandro Colomar (98):
      proc.5: srcfix
      proc.5, proc_pid_attr.5: Split /proc/PID/attr/ from proc(5)
      proc.5, proc_pid_autogroup.5: Split /proc/PID/autogroup from proc(5=
)
      proc.5, proc_pid_auxv.5: Split /proc/PID/auxv from proc(5)
      proc.5, proc_pid_cgroup.5: Split /proc/PID/cgroup from proc(5)
      proc.5, proc_pid_clear_refs.5: Split /proc/PID/clear_refs from proc=
(5)
      proc.5, proc_pid_cmdline.5: Split /proc/PID/cmdline from proc(5)
      proc.5, proc_pid_comm.5: Split /proc/PID/comm from proc(5)
      proc.5, proc_pid_coredump_filter.5: Split /proc/PID/coredump_filter=
 from proc(5)
      proc.5, proc_pid_cpuset.5: Split /proc/PID/cpuset from proc(5)
      proc.5, proc_pid_cwd.5: Split /proc/PID/cwd from proc(5)
      proc.5, proc_pid_environ.5: Split /proc/PID/environ from proc(5)
      proc.5, proc_pid_exe.5: Split /proc/PID/exe from proc(5)
      proc.5, proc_pid_fd.5: Split /proc/PID/fd/ from proc(5)
      proc.5, proc_pid_fdinfo.5: Split /proc/PID/fdinfo/ from proc(5)
      proc.5, proc_pid_uid_map.5, proc_pid_gid_map.5: Split /proc/PID/[ug=
]id_map from proc(5)
      proc.5, proc_pid_io.5: Split /proc/PID/io from proc(5)
      proc.5, proc_pid_limits.5: Split /proc/PID/limits from proc(5)
      proc.5, proc_pid_map_files.5: Split /proc/PID/map_files/ from proc(=
5)
      proc.5, proc_pid_maps.5: Split /proc/PID/maps from proc(5)
      proc.5, proc_pid_mem.5: Split /proc/PID/mem from proc(5)
      proc.5, proc_pid_mountinfo.5: Split /proc/PID/mountinfo from proc(5=
)
      proc.5, proc_pid_mounts.5, proc_mounts.5: Split /proc/PID/mounts (a=
nd /proc/mounts) from proc(5)
      proc.5, proc_pid_mountstats.5: Split /proc/PID/mountstats from proc=
(5)
      proc.5, proc_pid_net.5, proc_net.5: Split /proc/PID/net/ (and /proc=
/net/) from proc(5)
      proc.5, proc_pid_ns.5: Split /proc/PID/ns/ from proc(5)
      proc.5, proc_pid_numa_maps.5: Split /proc/PID/numa_maps from proc(5=
)
      proc.5, proc_pid_oom_score_adj.5, proc_pid_oom_adj.5: Split /proc/P=
ID/oom_score_adj (and /proc/PID/oom_adj) from proc(5)
      proc.5, proc_pid_oom_score.5: Split /proc/PID/oom_score from proc(5=
)
      proc.5, proc_pid_pagemap.5: Split /proc/PID/pagemap from proc(5)
      proc.5, proc_pid_personality.5: Split /proc/PID/personality from pr=
oc(5)
      proc.5, proc_pid_root.5: Split /proc/PID/root/ from proc(5)
      proc.5, proc_pid_projid_map.5: Split /proc/PID/projid_map from proc=
(5)
      proc.5, proc_pid_seccomp.5: Split /proc/PID/seccomp from proc(5)
      proc.5, proc_pid_setgroups.5: Split /proc/PID/setgroups from proc(5=
)
      proc.5, proc_pid_smaps.5: Split /proc/PID/smaps from proc(5); XXX: =
what's s in smaps?
      proc.5, proc_pid_stack.5: Split /proc/PID/stack from proc(5)
      proc.5, proc_pid_stat.5: Split /proc/PID/stat from proc(5)
      proc.5, proc_pid_statm.5: Split /proc/PID/statm from proc(5)
      proc.5, proc_pid_status.5: Split /proc/PID/status from proc(5)
      proc.5, proc_pid_syscall.5: Split /proc/PID/syscall from proc(5)
      proc.5, proc_pid_timers.5: Split /proc/PID/timers from proc(5)
      proc.5, proc_pid_timerslack_ns.5: Split /proc/PID/timerslack_ns fro=
m proc(5)
      proc.5, proc_pid_wchan.5: Split /proc/PID/wchan from proc(5)
      proc.5, proc_pid.5, proc_self.5: Split /proc/PID/ (and /proc/self/)=
 from proc(5)
      proc.5, proc_pid_task.5, proc_tid.5, proc_thread-self.5: Split /pro=
c/PID/task/ (and /proc/TID/, /proc/thread-self/) from proc(5)
      proc.5, proc_tid_children.5: Split /proc/TID/children from proc(5)
      proc.5, proc_apm.5: Split /proc/apm from proc(5)
      proc.5, proc_buddyinfo.5: Split /proc/buddyinfo from proc(5)
      proc.5, proc_bus.5: Split /proc/bus/ from proc(5)
      proc.5, proc_cgroups.5: Split /proc/cgroups from proc(5)
      proc.5, proc_cmdline.5: Split /proc/cmdline from proc(5)
      proc.5, proc_config.gz.5: Split /proc/config.gz from proc(5)
      proc.5, proc_crypto.5: Split /proc/crypto from proc(5)
      proc.5, proc_cpuinfo.5: Split /proc/cpuinfo from proc(5)
      proc.5, proc_devices.5: Split /proc/devices from proc(5)
      proc.5, proc_diskstats.5: Split /proc/diskstats from proc(5)
      proc.5, proc_dma.5: Split /proc/dma from proc(5)
      proc.5, proc_driver.5: Split /proc/driver/ from proc(5)
      proc.5, proc_execdomains.5: Split /proc/execdomains from proc(5)
      proc.5, proc_fb.5: Split /proc/fb from proc(5)
      proc.5, proc_filesystems.5: Split /proc/filesystems from proc(5)
      proc.5, proc_fs.5: Split /proc/fs/ from proc(5)
      proc.5, proc_ide.5: Split /proc/ide/ from proc(5)
      proc.5, proc_interrupts.5: Split /proc/interrupts from proc(5)
      proc.5, proc_iomem.5: Split /proc/iomem from proc(5)
      proc.5, proc_ioports.5: Split /proc/ioports from proc(5)
      proc.5, proc_kallsyms.5, proc_ksyms.5: Split /proc/kallsyms (and /p=
roc/ksyms) from proc(5)
      proc.5, proc_kcore.5: Split /proc/kcore from proc(5)
      proc.5, proc_keys.5, proc_key-users.5: Split /proc/keys (and /proc/=
key-users) from proc(5)
      proc.5, proc_kmsg.5: Split /proc/kmsg from proc(5)
      proc.5, proc_kpagecgroup.5: Split /proc/kpagecgroup from proc(5)
      proc.5, proc_kpagecount.5: Split /proc/kpagecount from proc(5)
      proc.5, proc_kpageflags.5: Split /proc/kpageflags from proc(5)
      proc.5, proc_loadavg.5: Split /proc/loadavg from proc(5)
      proc.5, proc_locks.5: Split /proc/locks from proc(5)
      proc.5, proc_malloc.5: Split /proc/malloc from proc(5)
      proc.5, proc_meminfo.5: Split /proc/meminfo from proc(5)
      proc.5, proc_modules.5: Split /proc/modules from proc(5)
      proc.5, proc_mtrr.5: Split /proc/mtrr from proc(5)
      proc.5, proc_partitions.5: Split /proc/partitions from proc(5)
      proc.5, proc_pci.5: Split /proc/pci from proc(5)
      proc.5, proc_profile.5: Split /proc/profile from proc(5)
      proc.5, proc_scsi.5: Split /proc/scsi/ from proc(5)
      proc.5, proc_slabinfo.5: Split /proc/slabinfo from proc(5)
      proc.5, proc_stat.5: Split /proc/stat from proc(5)
      proc.5, proc_swaps.5: Split /proc/swaps from proc(5)
      proc.5, proc_sys.5: Split /proc/sys/ from proc(5)
      proc.5, proc_sysrq-trigger.5: Split /proc/sysrq-trigger from proc(5=
)
      proc.5, proc_sysvipc.5: Split /proc/sysvipc/ from proc(5)
      proc.5, proc_timer_list.5: Split /proc/timer_list from proc(5)
      proc.5, proc_timer_stats.5: Split /proc/timer_stats from proc(5)
      proc.5, proc_tty.5: Split /proc/tty from proc(5)
      proc.5, proc_uptime.5: Split /proc/uptime from proc(5)
      proc.5, proc_version.5: Split /proc/version from proc(5)
      proc.5, proc_vmstat.5: Split /proc/vmstat from proc(5)
      proc.5, proc_zoneinfo.5: Split /proc/zoneinfo from proc(5)
      proc.5: Clean up after making sashimi of this page

 man5/proc.5                     | 6722 +--------------------------------=
-------------------------------------------------------------------------=
-------------------------------------------
 man5/proc_apm.5                 |   17 +
 man5/proc_buddyinfo.5           |   58 ++
 man5/proc_bus.5                 |   35 +
 man5/proc_cgroups.5             |   16 +
 man5/proc_cmdline.5             |   22 +
 man5/proc_config.gz.5           |   40 +
 man5/proc_cpuinfo.5             |   24 +
 man5/proc_crypto.5              |   26 +
 man5/proc_devices.5             |   16 +
 man5/proc_diskstats.5           |   21 +
 man5/proc_dma.5                 |   16 +
 man5/proc_driver.5              |   15 +
 man5/proc_execdomains.5         |   16 +
 man5/proc_fb.5                  |   17 +
 man5/proc_filesystems.5         |   33 +
 man5/proc_fs.5                  |   18 +
 man5/proc_ide.5                 |   37 +
 man5/proc_interrupts.5          |   22 +
 man5/proc_iomem.5               |   15 +
 man5/proc_ioports.5             |   16 +
 man5/proc_kallsyms.5            |   25 +
 man5/proc_kcore.5               |   24 +
 man5/proc_key-users.5           |    1 +
 man5/proc_keys.5                |   20 +
 man5/proc_kmsg.5                |   28 +
 man5/proc_kpagecgroup.5         |   25 +
 man5/proc_kpagecount.5          |   24 +
 man5/proc_kpageflags.5          |   75 ++
 man5/proc_ksyms.5               |    1 +
 man5/proc_loadavg.5             |   27 +
 man5/proc_locks.5               |  118 +++
 man5/proc_malloc.5              |   18 +
 man5/proc_meminfo.5             |  327 ++++++++
 man5/proc_modules.5             |   17 +
 man5/proc_mounts.5              |    1 +
 man5/proc_mtrr.5                |   24 +
 man5/proc_net.5                 |    1 +
 man5/proc_partitions.5          |   16 +
 man5/proc_pci.5                 |   28 +
 man5/proc_pid.5                 |   73 ++
 man5/proc_pid_attr.5            |  137 ++++
 man5/proc_pid_autogroup.5       |   17 +
 man5/proc_pid_auxv.5            |   27 +
 man5/proc_pid_cgroup.5          |   16 +
 man5/proc_pid_clear_refs.5      |   88 ++
 man5/proc_pid_cmdline.5         |   49 ++
 man5/proc_pid_comm.5            |   49 ++
 man5/proc_pid_coredump_filter.5 |   16 +
 man5/proc_pid_cpuset.5          |   17 +
 man5/proc_pid_cwd.5             |   36 +
 man5/proc_pid_environ.5         |   48 ++
 man5/proc_pid_exe.5             |   59 ++
 man5/proc_pid_fd.5              |  161 ++++
 man5/proc_pid_fdinfo.5          |  300 +++++++
 man5/proc_pid_gid_map.5         |    1 +
 man5/proc_pid_io.5              |   98 +++
 man5/proc_pid_limits.5          |   25 +
 man5/proc_pid_map_files.5       |   72 ++
 man5/proc_pid_maps.5            |  157 ++++
 man5/proc_pid_mem.5             |   24 +
 man5/proc_pid_mountinfo.5       |  124 +++
 man5/proc_pid_mounts.5          |   49 ++
 man5/proc_pid_mountstats.5      |   46 ++
 man5/proc_pid_net.5             |  298 +++++++
 man5/proc_pid_ns.5              |   20 +
 man5/proc_pid_numa_maps.5       |   16 +
 man5/proc_pid_oom_adj.5         |    1 +
 man5/proc_pid_oom_score.5       |   58 ++
 man5/proc_pid_oom_score_adj.5   |  117 +++
 man5/proc_pid_pagemap.5         |   77 ++
 man5/proc_pid_personality.5     |   23 +
 man5/proc_pid_projid_map.5      |   17 +
 man5/proc_pid_root.5            |   75 ++
 man5/proc_pid_seccomp.5         |   36 +
 man5/proc_pid_setgroups.5       |   16 +
 man5/proc_pid_smaps.5           |  128 +++
 man5/proc_pid_stack.5           |   25 +
 man5/proc_pid_stat.5            |  380 +++++++++
 man5/proc_pid_statm.5           |   46 ++
 man5/proc_pid_status.5          |  366 +++++++++
 man5/proc_pid_syscall.5         |   33 +
 man5/proc_pid_task.5            |   97 +++
 man5/proc_pid_timers.5          |   83 ++
 man5/proc_pid_timerslack_ns.5   |   41 +
 man5/proc_pid_uid_map.5         |   20 +
 man5/proc_pid_wchan.5           |   21 +
 man5/proc_profile.5             |   24 +
 man5/proc_scsi.5                |   66 ++
 man5/proc_self.5                |    1 +
 man5/proc_slabinfo.5            |   18 +
 man5/proc_stat.5                |  140 ++++
 man5/proc_swaps.5               |   17 +
 man5/proc_sys.5                 | 1623 +++++++++++++++++++++++++++++++++=
+++
 man5/proc_sysrq-trigger.5       |   25 +
 man5/proc_sysvipc.5             |   25 +
 man5/proc_thread-self.5         |    1 +
 man5/proc_tid.5                 |    1 +
 man5/proc_tid_children.5        |   37 +
 man5/proc_timer_list.5          |   18 +
 man5/proc_timer_stats.5         |  117 +++
 man5/proc_tty.5                 |   16 +
 man5/proc_uptime.5              |   17 +
 man5/proc_version.5             |   27 +
 man5/proc_vmstat.5              |  702 ++++++++++++++++
 man5/proc_zoneinfo.5            |   17 +
 106 files changed, 7860 insertions(+), 6717 deletions(-)
 create mode 100644 man5/proc_apm.5
 create mode 100644 man5/proc_buddyinfo.5
 create mode 100644 man5/proc_bus.5
 create mode 100644 man5/proc_cgroups.5
 create mode 100644 man5/proc_cmdline.5
 create mode 100644 man5/proc_config.gz.5
 create mode 100644 man5/proc_cpuinfo.5
 create mode 100644 man5/proc_crypto.5
 create mode 100644 man5/proc_devices.5
 create mode 100644 man5/proc_diskstats.5
 create mode 100644 man5/proc_dma.5
 create mode 100644 man5/proc_driver.5
 create mode 100644 man5/proc_execdomains.5
 create mode 100644 man5/proc_fb.5
 create mode 100644 man5/proc_filesystems.5
 create mode 100644 man5/proc_fs.5
 create mode 100644 man5/proc_ide.5
 create mode 100644 man5/proc_interrupts.5
 create mode 100644 man5/proc_iomem.5
 create mode 100644 man5/proc_ioports.5
 create mode 100644 man5/proc_kallsyms.5
 create mode 100644 man5/proc_kcore.5
 create mode 100644 man5/proc_key-users.5
 create mode 100644 man5/proc_keys.5
 create mode 100644 man5/proc_kmsg.5
 create mode 100644 man5/proc_kpagecgroup.5
 create mode 100644 man5/proc_kpagecount.5
 create mode 100644 man5/proc_kpageflags.5
 create mode 100644 man5/proc_ksyms.5
 create mode 100644 man5/proc_loadavg.5
 create mode 100644 man5/proc_locks.5
 create mode 100644 man5/proc_malloc.5
 create mode 100644 man5/proc_meminfo.5
 create mode 100644 man5/proc_modules.5
 create mode 100644 man5/proc_mounts.5
 create mode 100644 man5/proc_mtrr.5
 create mode 100644 man5/proc_net.5
 create mode 100644 man5/proc_partitions.5
 create mode 100644 man5/proc_pci.5
 create mode 100644 man5/proc_pid.5
 create mode 100644 man5/proc_pid_attr.5
 create mode 100644 man5/proc_pid_autogroup.5
 create mode 100644 man5/proc_pid_auxv.5
 create mode 100644 man5/proc_pid_cgroup.5
 create mode 100644 man5/proc_pid_clear_refs.5
 create mode 100644 man5/proc_pid_cmdline.5
 create mode 100644 man5/proc_pid_comm.5
 create mode 100644 man5/proc_pid_coredump_filter.5
 create mode 100644 man5/proc_pid_cpuset.5
 create mode 100644 man5/proc_pid_cwd.5
 create mode 100644 man5/proc_pid_environ.5
 create mode 100644 man5/proc_pid_exe.5
 create mode 100644 man5/proc_pid_fd.5
 create mode 100644 man5/proc_pid_fdinfo.5
 create mode 100644 man5/proc_pid_gid_map.5
 create mode 100644 man5/proc_pid_io.5
 create mode 100644 man5/proc_pid_limits.5
 create mode 100644 man5/proc_pid_map_files.5
 create mode 100644 man5/proc_pid_maps.5
 create mode 100644 man5/proc_pid_mem.5
 create mode 100644 man5/proc_pid_mountinfo.5
 create mode 100644 man5/proc_pid_mounts.5
 create mode 100644 man5/proc_pid_mountstats.5
 create mode 100644 man5/proc_pid_net.5
 create mode 100644 man5/proc_pid_ns.5
 create mode 100644 man5/proc_pid_numa_maps.5
 create mode 100644 man5/proc_pid_oom_adj.5
 create mode 100644 man5/proc_pid_oom_score.5
 create mode 100644 man5/proc_pid_oom_score_adj.5
 create mode 100644 man5/proc_pid_pagemap.5
 create mode 100644 man5/proc_pid_personality.5
 create mode 100644 man5/proc_pid_projid_map.5
 create mode 100644 man5/proc_pid_root.5
 create mode 100644 man5/proc_pid_seccomp.5
 create mode 100644 man5/proc_pid_setgroups.5
 create mode 100644 man5/proc_pid_smaps.5
 create mode 100644 man5/proc_pid_stack.5
 create mode 100644 man5/proc_pid_stat.5
 create mode 100644 man5/proc_pid_statm.5
 create mode 100644 man5/proc_pid_status.5
 create mode 100644 man5/proc_pid_syscall.5
 create mode 100644 man5/proc_pid_task.5
 create mode 100644 man5/proc_pid_timers.5
 create mode 100644 man5/proc_pid_timerslack_ns.5
 create mode 100644 man5/proc_pid_uid_map.5
 create mode 100644 man5/proc_pid_wchan.5
 create mode 100644 man5/proc_profile.5
 create mode 100644 man5/proc_scsi.5
 create mode 100644 man5/proc_self.5
 create mode 100644 man5/proc_slabinfo.5
 create mode 100644 man5/proc_stat.5
 create mode 100644 man5/proc_swaps.5
 create mode 100644 man5/proc_sys.5
 create mode 100644 man5/proc_sysrq-trigger.5
 create mode 100644 man5/proc_sysvipc.5
 create mode 100644 man5/proc_thread-self.5
 create mode 100644 man5/proc_tid.5
 create mode 100644 man5/proc_tid_children.5
 create mode 100644 man5/proc_timer_list.5
 create mode 100644 man5/proc_timer_stats.5
 create mode 100644 man5/proc_tty.5
 create mode 100644 man5/proc_uptime.5
 create mode 100644 man5/proc_version.5
 create mode 100644 man5/proc_vmstat.5
 create mode 100644 man5/proc_zoneinfo.5


--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5


--------------zkXE37UUv7XZgboTa6q10801--

--------------lGZ738Dl4AJO399Sb20gff1m
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmTb8ooACgkQnowa+77/
2zKXZg//SfL0u8mqWMaGwYumd6gagiYfFCwjV3O52yVzOVBOlalbj4OSMGx0PEu8
Qobl0IKrYqKhUfzcO4Lm7HVHXFnb9AJFP2AKOF2YJcQ2VuMV6buOXKiPKmvFXzhl
FBvBJBoPqorDbgxFOkNtFzRm4WIjVTuS8TvvxMGoSCQ2Xn8GYchpo/drqd8STs9J
hVUlGtryFGbw8LQMuAPig5Nkg6cZxW4ESNCBMT05AFlo8RFfO/tHlj7gml6z79QV
SqUWaC7R45KJ/MATr4Az+8qWErMLD25C2eS8vPP5gehkaieJSHW33Xy9vNk7jTZw
bQw1HpAVYQ0TSR57VGDy4YSbFOrbtJ4Zao0yE9RvWqVstC1VJNRQpaQFbVMgUpHL
BhlqQWALZR5DD9b/e4WN5C8rY5gMycGGtXpOszidi3sD95bagdWlsWOuFN95A2d0
0kIUn+R3JIKTHRFDL8uAP2gtWH/IRL7km3FVZsRC363wmbIsxJtI9OT7q6OUCfa+
TQJY7LAZ85RWouOFkKBBINL2Z4L33iCF21b7un3wy/93iNjJXa3s20vyOslRbKWm
tUdwca6AemzMyaThJ89iOi+4Uz1uNbF20xi7mK5pf56tJd4B/aXyEz8l/C0bmdzY
QHYvv2wYLnj1c14rVgnwi1NF1ZxU/UCgVLHeFLgDES6G4cHGBHM=
=aEsU
-----END PGP SIGNATURE-----

--------------lGZ738Dl4AJO399Sb20gff1m--
