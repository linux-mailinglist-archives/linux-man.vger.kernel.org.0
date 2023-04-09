Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A89A46DBF6E
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 12:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbjDIK24 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 06:28:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjDIK2z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 06:28:55 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A5654493
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 03:28:53 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.67.239])
        by relay05.pair.com (Postfix) with ESMTP id 4D11A1A1676;
        Sun,  9 Apr 2023 06:28:52 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 422BF1FB21;
        Sun,  9 Apr 2023 11:28:51 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Accessibility of man pages
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <83bkjym9bw.fsf@gnu.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org> <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org> <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <ZDFwisXkZNvthBc6@riva.ucam.org> <ghh6tqkveq.fsf@gouders.net> <83bkjym9bw.fsf@gnu.org>
Date:   Sun, 09 Apr 2023 11:28:51 +0100
Message-Id: <20230409102851.422BF1FB21@orac.inputplus.co.uk>
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

(Colin, something for you near the end; search ‘interesting’.)

Eli wrote:
> Dirk wrote:
> > $ find /usr/share/man -type f -exec bzgrep -l RLIMIT_NOFILE {} \;
...
> > find...             man -K...
> >
> > real 107.45         real 96.34
> > user 117.06         user 70.11
> > sys 14.43           sys 26.86
...
> > $ time -p find /usr/share/man -type f | xargs bzgrep -l RLIMIT_NOFILE
...
> > real 24.30
> > user 32.34
> > sys 6.84
>
> Multiprocessing, obviously.  Your CPU has more than one execution
> unit, so the pipe via xargs runs 'find' and 'bzgrep' in parallel on
> two different execution units.  By contrast, "find -exec" runs them
> sequentially, in a single thread.

No, I don't think it's that.

With the first, find(1) does stop whilst waiting for bzgrep to grep a
single file.  bzgrep may or may not run on the same core.  The important
thing is the one bzgrep per file and its fork() and exec() overhead.

The second has find fill a pipe's buffer with paths and when that's
full, xargs's read can return.  This continues until xargs either reads
end-of-file or reaches the argv[] limits.  It then runs a single bzgrep
with many filenames.  The fork+exec overhead is much reduced.

bzgrep is a shell script and has overhead before it gets to the
argument-processing loop.  That overhead is suffered many times if
bzgrep is run once per file.

The *zgrep scripts are a poor option in general due to this
one-grep-per-file overhead.  Better than nothing, but a grep which can
internally decompress all the different compression formats avoids this
shell overhead.

Here is an example.  260 files causes eight times as many clone(2)s,
i.e. forks.  I've added an extra ‘×...’ column.  The ls and xargs will
complete their work nearly instantly.  All the wall-clock time is the
single run of zgrep.

    $ pwd
    /usr/share/man/man7
    $ ls *.gz | wc -l
    260
    $
    $ ls *.gz | LC_ALL=C strace -fc xargs -rd\\n zgrep -H not-to-be-found
    % time     seconds  usecs/call     calls    errors syscall
    ------ ----------- ----------- ---------    ------ ----------------
     93.70   27.510039        7555      3641 ×14  1560 wait4
      0.85    0.248763          26      9389           mmap
      0.68    0.198674          11     17166           rt_sigprocmask
      0.56    0.165702          35      4691           mprotect
      0.52    0.153146           6     22637           rt_sigaction
      0.50    0.146029          21      6780           read
      0.43    0.125451          10     12235      1040 close
      0.31    0.091715          29      3132           openat
      0.25    0.073542          11      6513       522 fcntl
      0.24    0.070822          12      5728      2080 stat
      0.23    0.068825          16      4171           fstat
      0.20    0.057703          24      2348           brk
      0.19    0.054838          69       786         4 execve
      0.18    0.052849          25      2081 ×8        clone
      0.17    0.051089          17      2862       782 access
      0.15    0.043284          55       782           munmap
      0.14    0.040012          48       819           write
      0.11    0.031992          11      2870       260 lseek
      0.11    0.031393           8      3902           dup2
      0.08    0.023038          22      1041           pipe
      0.07    0.021190          13      1560           rt_sigreturn
      0.06    0.018363          11      1564       782 arch_prctl
      0.05    0.016013           7      2081 ×8        getgid
      0.05    0.015314           7      2081 ×8        getegid
      0.05    0.015251           7      2081 ×8        getuid
      0.05    0.014780           7      2081 ×8        geteuid
      0.02    0.004703          18       260 ×1        sigaltstack
      0.01    0.003685          13       264 ×1        prlimit64
      0.01    0.003523           1      2084 ×8        getpid
      0.01    0.003443          13       260 ×1        set_tid_address
      0.01    0.003425          13       260 ×1        set_robust_list
      0.00    0.000094          23         4           getdents64
      0.00    0.000053          17         3         2 ioctl
      0.00    0.000033          16         2           poll
      0.00    0.000018          18         1           sysinfo
      0.00    0.000014          14         1           getppid
      0.00    0.000013          13         1           uname
      0.00    0.000013          13         1           getpgrp
    ------ ----------- ----------- --------- --------- ----------------
    100.00   29.358834                128163      7032 total

Compare with running sh(1) to run zcat and grep on each bunch of xargs's files.

    $ ls *.gz | LC_ALL=C strace -fc sh -c 'xargs -rd\\n zcat | grep not-to-be-found'
    % time     seconds  usecs/call     calls    errors syscall
    ------ ----------- ----------- ---------    ------ ----------------
     82.18    0.150049       37512         4         1 wait4
      5.92    0.010814          12       881           read
      2.25    0.004116          14       286 ×1        openat
      2.17    0.003966          13       299 ×1        write
      1.33    0.002432           8       301 ×1      2 close
      1.24    0.002263          30        74           mmap
      1.19    0.002166           7       285 ×1        fstat
      0.58    0.001060          17        62        16 stat
      0.52    0.000954          34        28           mprotect
      0.42    0.000766          12        63           rt_sigaction
      0.35    0.000642          27        23         6 access
      0.30    0.000543          24        22           rt_sigprocmask
      0.19    0.000346          17        20         1 lseek
      0.17    0.000310          62         5           munmap
      0.14    0.000250          13        18           getuid
      0.13    0.000242          18        13         4 ioctl
      0.13    0.000238          13        18           getegid
      0.13    0.000236          13        18           geteuid
      0.11    0.000204          11        18           brk
      0.11    0.000199          11        18           getgid
      0.06    0.000116          11        10         5 arch_prctl
      0.06    0.000106           9        11         1 fcntl
      0.05    0.000083          10         8           getpid
      0.04    0.000082          13         6           prlimit64
      0.04    0.000076          38         2           pipe
      0.03    0.000061          20         3           clone
      0.03    0.000047          23         2           getpgrp
      0.02    0.000044          22         2           sysinfo
      0.02    0.000033           3         9         4 execve
      0.02    0.000031          10         3           dup2
      0.02    0.000030          30         1           set_tid_address
      0.01    0.000023          11         2           uname
      0.01    0.000022          22         1           set_robust_list
      0.01    0.000014           7         2           poll
      0.01    0.000014          14         1           rt_sigreturn
      0.01    0.000010           5         2           getppid
      0.00    0.000007           1         4           getdents64
      0.00    0.000000           0         1           sigaltstack
    ------ ----------- ----------- --------- --------- ----------------
    100.00    0.182595                  2526        40 total
    $

Fifty times fewer system calls.  Especially expensive ones.

Now, here's the interesting bit.  man here also forks once per file.
Presumably so the child can decompress the file and write to a pipe with
the existing search code in the parent reading from the other end
without caring the file is compressed.  Removing the pipe and fork could
speed things up a bit.  A function pointer would be one way.

    $ LC_ALL=C strace -fc man -Ks7 not-to-be-found
    % time     seconds  usecs/call     calls    errors syscall
    ------ ----------- ----------- ---------    ------ ----------------
     61.90    1.890948          14    132630           read
     32.05    0.979069        1882       520 ×2    260 wait4
      1.68    0.051233          98       520 ×2    260 seccomp
      0.90    0.027443          13      2096 ×8        close
      0.61    0.018720          18      1024           write
      0.59    0.017941          17      1040 ×4        rt_sigprocmask
      0.53    0.016137          27       585        37 stat
      0.49    0.015120          27       551        15 openat
      0.26    0.007975          30       260 ×1        pipe
      0.15    0.004705          18       260 ×1        clone
      0.14    0.004345          16       260 ×1        rt_sigreturn
      0.14    0.004254          16       263 ×1        ioctl
      0.13    0.003824          14       262 ×1        getpid
      0.10    0.003067           1      1573           rt_sigaction
      0.08    0.002581           9       273           fstat
      0.07    0.002052           3       520 ×2        prctl
      0.07    0.002040           7       263 ×1        lseek
      0.06    0.001959           7       260 ×1        dup
      0.04    0.001115           2       520 ×2        dup2
      0.01    0.000204          17        12           brk
      0.00    0.000000           0       145           lstat
      0.00    0.000000           0        31           mmap
      0.00    0.000000           0        12           mprotect
      0.00    0.000000           0         1           munmap
      0.00    0.000000           0         1         1 access
      0.00    0.000000           0         1           execve
      0.00    0.000000           0         3           fcntl
      0.00    0.000000           0         6           readlink
      0.00    0.000000           0         1           umask
      0.00    0.000000           0         1           sysinfo
      0.00    0.000000           0         1           getuid
      0.00    0.000000           0         1           getgid
      0.00    0.000000           0         1           geteuid
      0.00    0.000000           0         1           getegid
      0.00    0.000000           0         3           fstatfs
      0.00    0.000000           0         2         1 arch_prctl
      0.00    0.000000           0         8           getdents64
    ------ ----------- ----------- --------- --------- ----------------
    100.00    3.054732                143911       574 total
    $

-- 
Cheers, Ralph.
