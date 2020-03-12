Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36291182885
	for <lists+linux-man@lfdr.de>; Thu, 12 Mar 2020 06:42:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387767AbgCLFmI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Mar 2020 01:42:08 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36875 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387758AbgCLFmI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Mar 2020 01:42:08 -0400
Received: by mail-wm1-f65.google.com with SMTP id a141so4834438wme.2
        for <linux-man@vger.kernel.org>; Wed, 11 Mar 2020 22:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xWMMxakXohVaS5fU0QY/gsQtamEbgQYYQJOcqq2vHZI=;
        b=eM+kWvRjDDk1guLge32R2eGCJZ8vr2nBwATuWku+M25kzfdsOqWs0nNr7hA8OdJiYj
         BrkruOnfys/x2/mueFpCLI4ZSuO6AWrygQzWSVeRBsngQBwr+ArLPkPZXH54L1vEIuTD
         3pe/tTvI8RROiPJlxkXaIIelhf5/X/t4DXG4NYMXr2WHWdBa4sQSvS2xE9PJ55ptiKCZ
         8xp55+WOAH0JMsk69SSPNI65nbT2ANt5fwvCx0WCHkBVBbt8BuIYELS6dkE+vnblQXTW
         9JVV6vyoPLQS54u0fjd/H4zRL5wc6eGN0USoc5ro+P3NVTlnA7H3xeTKRojWCBIs7oaV
         Qa5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xWMMxakXohVaS5fU0QY/gsQtamEbgQYYQJOcqq2vHZI=;
        b=Na1IXiny9zFb54Kff61vVTDokUsHFMjBAH30G0qxkVussyZijgScYRWWIeoa//p7E/
         9U4E6hwOUrXFXdg2zt95T3CbIWd6OMoFQ+s+iV2I+ywaLYqTijqTHQKvFd5uv+orQ80O
         25ktewEF9NXSb1cbzsvI1L4HyXHe2KzUNIgt3QSAL8/zXmU2nCMo/e88aLX5lE+spoai
         ChxmdyOFMXieOb+DlP9waCaMPODXD5caBGJGBwQFxfuy9Iedc/9pQcnn28M3s8TTJhdD
         G5goAktnwAzBVF4ZR8seyfP6qKxCdvNKaZ6eDaHvKSyzSBTsbPzL6WW/9Vk36pNrsbaN
         vlRg==
X-Gm-Message-State: ANhLgQ0Kk9Hnmv3vU7dKr2GNAU96QqOmuopfTPhHCHrWg2ybj5LgTZZP
        b1dxc9ipMUYWMDIGc6zyTqHOaZn0cac=
X-Google-Smtp-Source: ADFU+vsLC9mbreQ1TCJOWTJKbJgRPnAzU4CuSS8+3jPQQ33QkINzjDL3yObk68cqr99w39T5BfI8xg==
X-Received: by 2002:a1c:23ca:: with SMTP id j193mr2779667wmj.111.1583991721283;
        Wed, 11 Mar 2020 22:42:01 -0700 (PDT)
Received: from [10.5.49.236] ([195.171.175.163])
        by smtp.gmail.com with ESMTPSA id l5sm10628155wml.3.2020.03.11.22.42.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 22:42:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200311225632.7656-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4ade0dab-160d-ac0a-57dc-13c3d53566d5@gmail.com>
Date:   Thu, 12 Mar 2020 06:41:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311225632.7656-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 3/11/20 11:56 PM, Jakub Wilk wrote:
> Escape hyphens.

Nice! Thanks for that. Patch applied.

Cheers,

Michael



> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man5/proc.5 | 192 ++++++++++++++++++++++++++--------------------------
>  1 file changed, 96 insertions(+), 96 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index fa37731b7..a5dbad702 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -213,13 +213,13 @@ it resolves to the process's own
>  .I /proc/[pid]
>  directory.
>  .TP
> -.I /proc/thread-self
> +.I /proc/thread\-self
>  When a thread accesses this magic symbolic link,
>  it resolves to the process's own
>  .I /proc/self/task/[tid]
>  directory.
>  .TP
> -.I /proc/[a-z]*
> +.I /proc/[a\-z]*
>  Various other files and subdirectories under
>  .I /proc
>  expose system-wide information.
> @@ -788,9 +788,9 @@ An unprivileged process may lack permissions to open them, as in this example:
>  .IP
>  .in +4n
>  .EX
> -.RB "$" " echo test | sudo -u nobody cat"
> +.RB "$" " echo test | sudo \-u nobody cat"
>  test
> -.RB "$" " echo test | sudo -u nobody cat /proc/self/fd/0"
> +.RB "$" " echo test | sudo \-u nobody cat /proc/self/fd/0"
>  cat: /proc/self/fd/0: Permission denied
>  .EE
>  .in
> @@ -865,11 +865,11 @@ the following fields:
>  pos:	0
>  flags:	02
>  mnt_id:	10
> -eventfd-count:               40
> +eventfd\-count:               40
>  .EE
>  .in
>  .IP
> -.I eventfd-count
> +.I eventfd\-count
>  is the current value of the eventfd counter, in hexadecimal.
>  .IP
>  For epoll file descriptors (see
> @@ -940,8 +940,8 @@ the following fields:
>  pos:	0
>  flags:	00
>  mnt_id:	11
> -inotify wd:2 ino:7ef82a sdev:800001 mask:800afff ignored_mask:0 fhandle-bytes:8 fhandle-type:1 f_handle:2af87e00220ffd73
> -inotify wd:1 ino:192627 sdev:800001 mask:800afff ignored_mask:0 fhandle-bytes:8 fhandle-type:1 f_handle:27261900802dfd73
> +inotify wd:2 ino:7ef82a sdev:800001 mask:800afff ignored_mask:0 fhandle\-bytes:8 fhandle\-type:1 f_handle:2af87e00220ffd73
> +inotify wd:1 ino:192627 sdev:800001 mask:800afff ignored_mask:0 fhandle\-bytes:8 fhandle\-type:1 f_handle:27261900802dfd73
>  .EE
>  .in
>  .IP
> @@ -965,8 +965,8 @@ The mask of events being monitored for the target file (in hexadecimal).
>  .IP
>  If the kernel was built with exportfs support, the path to the target
>  file is exposed as a file handle, via three hexadecimal fields:
> -.IR fhandle-bytes ,
> -.IR fhandle-type ,
> +.IR fhandle\-bytes ,
> +.IR fhandle\-type ,
>  and
>  .IR f_handle .
>  .IP
> @@ -980,8 +980,8 @@ the following fields:
>  pos:	0
>  flags:	02
>  mnt_id:	11
> -fanotify flags:0 event-flags:88002
> -fanotify ino:19264f sdev:800001 mflags:0 mask:1 ignored_mask:0 fhandle-bytes:8 fhandle-type:1 f_handle:4f261900a82dfd73
> +fanotify flags:0 event\-flags:88002
> +fanotify ino:19264f sdev:800001 mflags:0 mask:1 ignored_mask:0 fhandle\-bytes:8 fhandle\-type:1 f_handle:4f261900a82dfd73
>  .EE
>  .in
>  .IP
> @@ -997,7 +997,7 @@ argument given to
>  .BR fanotify_init (2)
>  (expressed in hexadecimal).
>  .TP
> -.I event-flags
> +.I event\-flags
>  The
>  .I event_f_flags
>  argument given to
> @@ -1206,7 +1206,7 @@ Here is an example, with the output wrapped and reformatted to fit on an 80-colu
>  .IP
>  .in +4n
>  .EX
> -.RB "#" " ls -l /proc/self/map_files/"
> +.RB "#" " ls \-l /proc/self/map_files/"
>  lr\-\-\-\-\-\-\-\-. 1 root root 64 Apr 16 21:31
>              3252e00000\-3252e20000 \-> /usr/lib64/ld\-2.15.so
>  \&...
> @@ -1260,25 +1260,25 @@ The format of the file is:
>  .in 4n
>  .EX
>  .I "address           perms offset  dev   inode       pathname"
> -00400000\-00452000 r-xp 00000000 08:02 173521      /usr/bin/dbus-daemon
> -00651000\-00652000 r--p 00051000 08:02 173521      /usr/bin/dbus-daemon
> -00652000\-00655000 rw-p 00052000 08:02 173521      /usr/bin/dbus-daemon
> -00e03000\-00e24000 rw-p 00000000 00:00 0           [heap]
> -00e24000\-011f7000 rw-p 00000000 00:00 0           [heap]
> +00400000\-00452000 r\-xp 00000000 08:02 173521      /usr/bin/dbus\-daemon
> +00651000\-00652000 r\-\-p 00051000 08:02 173521      /usr/bin/dbus\-daemon
> +00652000\-00655000 rw\-p 00052000 08:02 173521      /usr/bin/dbus\-daemon
> +00e03000\-00e24000 rw\-p 00000000 00:00 0           [heap]
> +00e24000\-011f7000 rw\-p 00000000 00:00 0           [heap]
>  \&...
> -35b1800000\-35b1820000 r-xp 00000000 08:02 135522  /usr/lib64/ld\-2.15.so
> -35b1a1f000\-35b1a20000 r--p 0001f000 08:02 135522  /usr/lib64/ld\-2.15.so
> -35b1a20000\-35b1a21000 rw-p 00020000 08:02 135522  /usr/lib64/ld\-2.15.so
> -35b1a21000\-35b1a22000 rw-p 00000000 00:00 0
> -35b1c00000\-35b1dac000 r-xp 00000000 08:02 135870  /usr/lib64/libc\-2.15.so
> -35b1dac000\-35b1fac000 ---p 001ac000 08:02 135870  /usr/lib64/libc\-2.15.so
> -35b1fac000\-35b1fb0000 r--p 001ac000 08:02 135870  /usr/lib64/libc\-2.15.so
> -35b1fb0000\-35b1fb2000 rw-p 001b0000 08:02 135870  /usr/lib64/libc\-2.15.so
> +35b1800000\-35b1820000 r\-xp 00000000 08:02 135522  /usr/lib64/ld\-2.15.so
> +35b1a1f000\-35b1a20000 r\-\-p 0001f000 08:02 135522  /usr/lib64/ld\-2.15.so
> +35b1a20000\-35b1a21000 rw\-p 00020000 08:02 135522  /usr/lib64/ld\-2.15.so
> +35b1a21000\-35b1a22000 rw\-p 00000000 00:00 0
> +35b1c00000\-35b1dac000 r\-xp 00000000 08:02 135870  /usr/lib64/libc\-2.15.so
> +35b1dac000\-35b1fac000 \-\-\-p 001ac000 08:02 135870  /usr/lib64/libc\-2.15.so
> +35b1fac000\-35b1fb0000 r\-\-p 001ac000 08:02 135870  /usr/lib64/libc\-2.15.so
> +35b1fb0000\-35b1fb2000 rw\-p 001b0000 08:02 135870  /usr/lib64/libc\-2.15.so
>  \&...
> -f2c6ff8c000\-7f2c7078c000 rw-p 00000000 00:00 0    [stack:986]
> +f2c6ff8c000\-7f2c7078c000 rw\-p 00000000 00:00 0    [stack:986]
>  \&...
> -7fffb2c0d000\-7fffb2c2e000 rw-p 00000000 00:00 0   [stack]
> -7fffb2d48000\-7fffb2d49000 r-xp 00000000 00:00 0   [vdso]
> +7fffb2c0d000\-7fffb2c2e000 rw\-p 00000000 00:00 0   [stack]
> +7fffb2d48000\-7fffb2d49000 r\-xp 00000000 00:00 0   [vdso]
>  .EE
>  .in
>  .IP
> @@ -1743,7 +1743,7 @@ The page is exclusively mapped.
>  55 (since Linux 3.11)
>  PTE is soft-dirty
>  (see the kernel source file
> -.IR Documentation/admin-guide/mm/soft-dirty.rst ).
> +.IR Documentation/admin\-guide/mm/soft\-dirty.rst ).
>  .TP
>  54\(en0
>  If the page is present in RAM (bit 63), then these bits
> @@ -3204,7 +3204,7 @@ The total length of the file is the size of physical memory (RAM) plus
>  See
>  .BR keyrings (7).
>  .TP
> -.IR /proc/key-users " (since Linux 2.6.10)"
> +.IR /proc/key\-users " (since Linux 2.6.10)"
>  See
>  .BR keyrings (7).
>  .TP
> @@ -3287,7 +3287,7 @@ The bits are as follows:
>  .IP
>  For further details on the meanings of these bits,
>  see the kernel source file
> -.IR Documentation/admin-guide/mm/pagemap.rst .
> +.IR Documentation/admin\-guide/mm/pagemap.rst .
>  Before kernel 2.6.29,
>  .\" commit ad3bdefe877afb47480418fdb05ecd42842de65e
>  .\" commit e07a4b9217d1e97d2f3a62b6b070efdc61212110
> @@ -3340,7 +3340,7 @@ An example of the content shown in this file is the following:
>  5: POSIX  ADVISORY  WRITE 764 00:16:21448 0 0
>  6: POSIX  ADVISORY  READ  3548 08:01:7867240 1 1
>  7: POSIX  ADVISORY  READ  3548 08:01:7865567 1826 2335
> -8: OFDLCK ADVISORY  WRITE -1 08:01:8713209 128 191
> +8: OFDLCK ADVISORY  WRITE \-1 08:01:8713209 128 191
>  .EE
>  .in
>  .IP
> @@ -3620,7 +3620,7 @@ only if strict overcommit accounting is enabled (mode 2 in
>  The limit is calculated according to the formula described under
>  .IR /proc/sys/vm/overcommit_memory .
>  For further details, see the kernel source file
> -.IR Documentation/vm/overcommit-accounting.rst .
> +.IR Documentation/vm/overcommit\-accounting.rst .
>  .TP
>  .IR Committed_AS " %lu"
>  The amount of memory presently allocated on the system.
> @@ -3834,7 +3834,7 @@ The format is:
>  .IP
>  .in 1n
>  .EX
> -Inter-|   Receive                                                |  Transmit
> +Inter\-|   Receive                                                |  Transmit
>   face |bytes    packets errs drop fifo frame compressed multicast|bytes    packets errs drop fifo colls carrier compressed
>      lo: 2776770   11307    0    0    0     0          0         0  2776770   11307    0    0    0     0       0          0
>    eth0: 1215645    2751    0    0    0     0          0         0  1782404    4324    0    0    0   427       0          0
> @@ -4023,7 +4023,7 @@ options to the
>  .BR iptables (8)
>  NFQUEUE target.
>  See
> -.BR iptables-extensions (8)
> +.BR iptables\-extensions (8)
>  for more information.
>  .TP
>  (2)
> @@ -4114,14 +4114,14 @@ switch certain features on or off.
>  .I /proc/scsi/scsi
>  This is a listing of all SCSI devices known to the kernel.
>  The listing is similar to the one seen during bootup.
> -scsi currently supports only the \fIadd-single-device\fP command which
> +scsi currently supports only the \fIadd\-single\-device\fP command which
>  allows root to add a hotplugged device to the list of known devices.
>  .IP
>  The command
>  .IP
>  .in +4n
>  .EX
> -echo \(aqscsi add-single-device 1 0 5 0\(aq > /proc/scsi/scsi
> +echo \(aqscsi add\-single\-device 1 0 5 0\(aq > /proc/scsi/scsi
>  .EE
>  .in
>  .IP
> @@ -4134,7 +4134,7 @@ error will be returned.
>  .I /proc/scsi/[drivername]
>  \fI[drivername]\fP can currently be NCR53c7xx, aha152x, aha1542, aha1740,
>  aic7xxx, buslogic, eata_dma, eata_pio, fdomain, in2000, pas16, qlogic,
> -scsi_debug, seagate, t128, u15-24f, ultrastore, or wd7000.
> +scsi_debug, seagate, t128, u15\-24f, ultrastore, or wd7000.
>  These directories show up for all drivers that registered at least one
>  SCSI HBA.
>  Every directory contains one file per registered host.
> @@ -4339,12 +4339,12 @@ related to filesystems.
>  .I /proc/sys/fs/binfmt_misc
>  Documentation for files in this directory can be found
>  in the Linux kernel source in the file
> -.IR Documentation/admin-guide/binfmt-misc.rst
> +.IR Documentation/admin\-guide/binfmt\-misc.rst
>  (or in
>  .IR Documentation/binfmt_misc.txt
>  on older kernels).
>  .TP
> -.IR /proc/sys/fs/dentry-state " (since Linux 2.2)"
> +.IR /proc/sys/fs/dentry\-state " (since Linux 2.2)"
>  This file contains information about the status of the
>  directory cache (dcache).
>  The file contains six numbers,
> @@ -4371,7 +4371,7 @@ is nonzero when the kernel has called shrink_dcache_pages() and the
>  dcache isn't pruned yet.
>  .RE
>  .TP
> -.I /proc/sys/fs/dir-notify-enable
> +.I /proc/sys/fs/dir\-notify\-enable
>  This file can be used to disable or enable the
>  .I dnotify
>  interface described in
> @@ -4380,14 +4380,14 @@ on a system-wide basis.
>  A value of 0 in this file disables the interface,
>  and a value of 1 enables it.
>  .TP
> -.I /proc/sys/fs/dquot-max
> +.I /proc/sys/fs/dquot\-max
>  This file shows the maximum number of cached disk quota entries.
>  On some (2.4) systems, it is not present.
>  If the number of free cached disk quota entries is very low and
>  you have some awesome number of simultaneous system users,
>  you might want to raise the limit.
>  .TP
> -.I /proc/sys/fs/dquot-nr
> +.I /proc/sys/fs/dquot\-nr
>  This file shows the number of allocated disk quota
>  entries and the number of free disk quota entries.
>  .TP
> @@ -4400,7 +4400,7 @@ interface.
>  For further details, see
>  .BR epoll (7).
>  .TP
> -.I /proc/sys/fs/file-max
> +.I /proc/sys/fs/file\-max
>  This file defines
>  a system-wide limit on the number of open files for all processes.
>  System calls that fail when encountering this limit fail with the error
> @@ -4412,28 +4412,28 @@ which can be used by a process to set the per-process limit,
>  on the number of files it may open.)
>  If you get lots
>  of error messages in the kernel log about running out of file handles
> -(look for "VFS: file-max limit <number> reached"),
> +(look for "VFS: file\-max limit <number> reached"),
>  try increasing this value:
>  .IP
>  .in +4n
>  .EX
> -echo 100000 > /proc/sys/fs/file-max
> +echo 100000 > /proc/sys/fs/file\-max
>  .EE
>  .in
>  .IP
>  Privileged processes
>  .RB ( CAP_SYS_ADMIN )
>  can override the
> -.I file-max
> +.I file\-max
>  limit.
>  .TP
> -.I /proc/sys/fs/file-nr
> +.I /proc/sys/fs/file\-nr
>  This (read-only) file contains three numbers:
>  the number of allocated file handles
>  (i.e., the number of files presently opened);
>  the number of free file handles;
>  and the maximum number of file handles (i.e., the same value as
> -.IR /proc/sys/fs/file-max ).
> +.IR /proc/sys/fs/file\-max ).
>  If the number of allocated file handles is close to the
>  maximum, you should consider increasing the maximum.
>  Before Linux 2.6,
> @@ -4446,11 +4446,11 @@ a past peak in the usage of open file handles.
>  Since Linux 2.6, the kernel does deallocate freed file handles,
>  and the "free file handles" value is always zero.
>  .TP
> -.IR /proc/sys/fs/inode-max " (only present until Linux 2.2)"
> +.IR /proc/sys/fs/inode\-max " (only present until Linux 2.2)"
>  This file contains the maximum number of in-memory inodes.
>  This value should be 3\(en4 times larger
>  than the value in
> -.IR file-max ,
> +.IR file\-max ,
>  since \fIstdin\fP, \fIstdout\fP
>  and network sockets also need an inode to handle them.
>  When you regularly run out of inodes, you need to increase this value.
> @@ -4459,11 +4459,11 @@ Starting with Linux 2.4,
>  there is no longer a static limit on the number of inodes,
>  and this file is removed.
>  .TP
> -.I /proc/sys/fs/inode-nr
> +.I /proc/sys/fs/inode\-nr
>  This file contains the first two values from
> -.IR inode-state .
> +.IR inode\-state .
>  .TP
> -.I /proc/sys/fs/inode-state
> +.I /proc/sys/fs/inode\-state
>  This file
>  contains seven numbers:
>  .IR nr_inodes ,
> @@ -4474,7 +4474,7 @@ and four dummy values (always zero).
>  .I nr_inodes
>  is the number of inodes the system has allocated.
>  .\" This can be slightly more than
> -.\" .I inode-max
> +.\" .I inode\-max
>  .\" because Linux allocates them one page full at a time.
>  .I nr_free_inodes
>  represents the number of free inodes.
> @@ -4483,7 +4483,7 @@ represents the number of free inodes.
>  is nonzero when the
>  .I nr_inodes
>  >
> -.I inode-max
> +.I inode\-max
>  and the system needs to prune the inode list instead of allocating more;
>  since Linux 2.4, this field is a dummy value (always zero).
>  .TP
> @@ -4496,7 +4496,7 @@ interface.
>  For further details, see
>  .BR inotify (7).
>  .TP
> -.I /proc/sys/fs/lease-break-time
> +.I /proc/sys/fs/lease\-break\-time
>  This file specifies the grace period that the kernel grants to a process
>  holding a file lease
>  .RB ( fcntl (2))
> @@ -4505,14 +4505,14 @@ that another process is waiting to open the file.
>  If the lease holder does not remove or downgrade the lease within
>  this grace period, the kernel forcibly breaks the lease.
>  .TP
> -.I /proc/sys/fs/leases-enable
> +.I /proc/sys/fs/leases\-enable
>  This file can be used to enable or disable file leases
>  .RB ( fcntl (2))
>  on a system-wide basis.
>  If this file contains the value 0, leases are disabled.
>  A nonzero value enables leases.
>  .TP
> -.IR /proc/sys/fs/mount-max " (since Linux 4.9)"
> +.IR /proc/sys/fs/mount\-max " (since Linux 4.9)"
>  .\" commit d29216842a85c7970c536108e093963f02714498
>  The value in this file specifies the maximum number of mounts that may exist
>  in a mount namespace.
> @@ -4548,15 +4548,15 @@ When one of these filesystems is mounted
>  with writes enabled, any UID or GID that would exceed 65535 is translated
>  to the overflow value before being written to disk.
>  .TP
> -.IR /proc/sys/fs/pipe-max-size " (since Linux 2.6.35)"
> +.IR /proc/sys/fs/pipe\-max\-size " (since Linux 2.6.35)"
>  See
>  .BR pipe (7).
>  .TP
> -.IR /proc/sys/fs/pipe-user-pages-hard " (since Linux 4.5)"
> +.IR /proc/sys/fs/pipe\-user\-pages\-hard " (since Linux 4.5)"
>  See
>  .BR pipe (7).
>  .TP
> -.IR /proc/sys/fs/pipe-user-pages-soft " (since Linux 4.5)"
> +.IR /proc/sys/fs/pipe\-user\-pages\-soft " (since Linux 4.5)"
>  See
>  .BR pipe (7).
>  .TP
> @@ -4703,18 +4703,18 @@ For details of the effect of a process's "dumpable" setting
>  on ptrace access mode checking, see
>  .BR ptrace (2).
>  .TP
> -.I /proc/sys/fs/super-max
> +.I /proc/sys/fs/super\-max
>  This file
>  controls the maximum number of superblocks, and
>  thus the maximum number of mounted filesystems the kernel
>  can have.
>  You need increase only
> -.I super-max
> +.I super\-max
>  if you need to mount more filesystems than the current value in
> -.I super-max
> +.I super\-max
>  allows you to.
>  .TP
> -.I /proc/sys/fs/super-nr
> +.I /proc/sys/fs/super\-nr
>  This file
>  contains the number of filesystems currently mounted.
>  .TP
> @@ -4775,7 +4775,7 @@ and reads from this file always return the value "0".
>  See
>  .BR capabilities (7).
>  .TP
> -.IR /proc/sys/kernel/cap-bound " (from Linux 2.2 to 2.6.24)"
> +.IR /proc/sys/kernel/cap\-bound " (from Linux 2.2 to 2.6.24)"
>  This file holds the value of the kernel
>  .I "capability bounding set"
>  (expressed as a signed decimal number).
> @@ -4799,7 +4799,7 @@ See
>  See
>  .BR core (5).
>  .TP
> -.I /proc/sys/kernel/ctrl-alt-del
> +.I /proc/sys/kernel/ctrl\-alt\-del
>  This file
>  controls the handling of Ctrl-Alt-Del from the keyboard.
>  When the value in this file is 0, Ctrl-Alt-Del is trapped and
> @@ -4869,7 +4869,7 @@ The default value in this file is
>  .IR /sbin/hotplug .
>  .TP
>  .\" Removed in commit 87f504e5c78b910b0c1d6ffb89bc95e492322c84 (tglx/history.git)
> -.IR /proc/sys/kernel/htab-reclaim " (before Linux 2.4.9.2)"
> +.IR /proc/sys/kernel/htab\-reclaim " (before Linux 2.4.9.2)"
>  (PowerPC only) If this file is set to a nonzero value,
>  the PowerPC htab
>  .\" removed in commit 1b483a6a7b2998e9c98ad985d7494b9b725bd228, before 2.6.28
> @@ -5020,7 +5020,7 @@ approximately 4 million).
>  .\" platforms, but this broke /proc/[pid]
>  .\" See http://marc.theaimsgroup.com/?l=linux-kernel&m=109513010926152&w=2
>  .TP
> -.IR /proc/sys/kernel/powersave-nap " (PowerPC only)"
> +.IR /proc/sys/kernel/powersave\-nap " (PowerPC only)"
>  This file contains a flag.
>  If set, Linux-PPC will use the "nap" mode of
>  powersaving,
> @@ -5088,7 +5088,7 @@ This value is the default if the kernel was not configured with
>  .BR CONFIG_COMPAT_BRK .
>  .RE
>  .TP
> -.I /proc/sys/kernel/real-root-dev
> +.I /proc/sys/kernel/real\-root\-dev
>  This file is documented in the Linux kernel source file
>  .I Documentation/admin\-guide/initrd.rst
>  .\" commit 9d85025b0418163fae079c9ba8f8445212de8568
> @@ -5096,20 +5096,20 @@ This file is documented in the Linux kernel source file
>  .I Documentation/initrd.txt
>  before Linux 4.10).
>  .TP
> -.IR /proc/sys/kernel/reboot-cmd " (Sparc only) "
> +.IR /proc/sys/kernel/reboot\-cmd " (Sparc only) "
>  This file seems to be a way to give an argument to the SPARC
>  ROM/Flash boot loader.
>  Maybe to tell it what to do after
>  rebooting?
>  .TP
> -.I /proc/sys/kernel/rtsig-max
> +.I /proc/sys/kernel/rtsig\-max
>  (Only in kernels up to and including 2.6.7; see
>  .BR setrlimit (2))
>  This file can be used to tune the maximum number
>  of POSIX real-time (queued) signals that can be outstanding
>  in the system.
>  .TP
> -.I /proc/sys/kernel/rtsig-nr
> +.I /proc/sys/kernel/rtsig\-nr
>  (Only in kernels up to and including 2.6.7.)
>  This file shows the number of POSIX real-time signals currently queued.
>  .TP
> @@ -5163,7 +5163,7 @@ call.
>  A system-wide limit on the maximum number of semaphore identifiers.
>  .RE
>  .TP
> -.I /proc/sys/kernel/sg-big-buff
> +.I /proc/sys/kernel/sg\-big\-buff
>  This file
>  shows the size of the generic SCSI device (sg) buffer.
>  You can't tune it just yet, but you could change it at
> @@ -5347,7 +5347,7 @@ The "#5" means that
>  this is the fifth kernel built from this source base and the
>  date following it indicates the time the kernel was built.
>  .TP
> -.IR /proc/sys/kernel/threads-max " (since Linux 2.3.11)"
> +.IR /proc/sys/kernel/threads\-max " (since Linux 2.3.11)"
>  .\" The following is based on Documentation/sysctl/kernel.txt
>  This file specifies the system-wide limit on the number of
>  threads (tasks) that can be created on the system.
> @@ -5355,7 +5355,7 @@ threads (tasks) that can be created on the system.
>  Since Linux 4.1,
>  .\" commit 230633d109e35b0a24277498e773edeb79b4a331
>  the value that can be written to
> -.I threads-max
> +.I threads\-max
>  is bounded.
>  The minimum value that can be written is 20.
>  The maximum value that can be written is given by the
> @@ -5363,7 +5363,7 @@ constant
>  .B FUTEX_TID_MASK
>  (0x3fffffff).
>  If a value outside of this range is written to
> -.IR threads-max ,
> +.IR threads\-max ,
>  the error
>  .B EINVAL
>  occurs.
> @@ -5371,14 +5371,14 @@ occurs.
>  The value written is checked against the available RAM pages.
>  If the thread structures would occupy too much (more than 1/8th)
>  of the available RAM pages,
> -.I threads-max
> +.I threads\-max
>  is reduced accordingly.
>  .TP
>  .IR /proc/sys/kernel/yama/ptrace_scope " (since Linux 3.5)"
>  See
>  .BR ptrace (2).
>  .TP
> -.IR /proc/sys/kernel/zero-paged " (PowerPC only) "
> +.IR /proc/sys/kernel/zero\-paged " (PowerPC only) "
>  This file
>  contains a flag.
>  When enabled (nonzero), Linux-PPC will pre-zero pages in
> @@ -5659,7 +5659,7 @@ in
>  .IR /proc/meminfo )
>  is calculated as
>  .IP
> -    CommitLimit = (total_RAM - total_huge_TLB) *
> +    CommitLimit = (total_RAM \- total_huge_TLB) *
>                    overcommit_ratio / 100 + total_swap
>  .IP
>  where:
> @@ -5785,7 +5785,7 @@ capability may employ
>  .BR userfaultfd (2).
>  The default value in this file is 1.
>  .TP
> -.IR /proc/sysrq-trigger " (since Linux 2.4.21)"
> +.IR /proc/sysrq\-trigger " (since Linux 2.4.21)"
>  Writing a character to this file triggers the same SysRq function as
>  typing ALT-SysRq-<character> (see the description of
>  .IR /proc/sys/kernel/sysrq ).
> @@ -5811,7 +5811,7 @@ for easy understanding.
>  .BR sysvipc (7)
>  provides further background on the information shown by these files.
>  .TP
> -.IR /proc/thread-self " (since Linux 3.17)"
> +.IR /proc/thread\-self " (since Linux 3.17)"
>  .\" commit 0097875bd41528922fb3bb5f348c53f17e00e2fd
>  This directory refers to the thread accessing the
>  .I /proc
> @@ -5901,7 +5901,7 @@ Collection: active
>    255,     0 swapper/3        hrtimer_start_range_ns (tick_sched_timer)
>     71,     0 swapper/1        hrtimer_start_range_ns (tick_sched_timer)
>     58,     0 swapper/0        hrtimer_start_range_ns (tick_sched_timer)
> -    4,  1694 gnome-shell      mod_delayed_work_on (delayed_work_timer_fn)
> +    4,  1694 gnome\-shell      mod_delayed_work_on (delayed_work_timer_fn)
>     17,     7 rcu_sched        rcu_gp_kthread (process_timeout)
>  \&...
>      1,  4911 kworker/u16:0    mod_delayed_work_on (delayed_work_timer_fn)
> @@ -6454,7 +6454,7 @@ Number of free CMA (Contiguous Memory Allocator) pages.
>  .IR compact_stall " (since Linux 2.6.35)"
>  .\" commit 56de7263fcf3eb10c8dcdf8d59a9cec831795f3f
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6463,7 +6463,7 @@ See the kernel source file
>  .IR compact_fail " (since Linux 2.6.35)"
>  .\" commit 56de7263fcf3eb10c8dcdf8d59a9cec831795f3f
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6472,7 +6472,7 @@ See the kernel source file
>  .IR compact_success " (since Linux 2.6.35)"
>  .\" commit 56de7263fcf3eb10c8dcdf8d59a9cec831795f3f
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6531,7 +6531,7 @@ See the kernel source file
>  .IR thp_fault_alloc " (since Linux 2.6.39)"
>  .\" commit 81ab4201fb7d91d6b0cd9ad5b4b16776e4bed145
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6540,7 +6540,7 @@ See the kernel source file
>  .IR thp_fault_fallback " (since Linux 2.6.39)"
>  .\" commit 81ab4201fb7d91d6b0cd9ad5b4b16776e4bed145
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6549,7 +6549,7 @@ See the kernel source file
>  .IR thp_collapse_alloc " (since Linux 2.6.39)"
>  .\" commit 81ab4201fb7d91d6b0cd9ad5b4b16776e4bed145
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6558,7 +6558,7 @@ See the kernel source file
>  .IR thp_collapse_alloc_failed " (since Linux 2.6.39)"
>  .\" commit 81ab4201fb7d91d6b0cd9ad5b4b16776e4bed145
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6567,7 +6567,7 @@ See the kernel source file
>  .IR thp_split " (since Linux 2.6.39)"
>  .\" commit 81ab4201fb7d91d6b0cd9ad5b4b16776e4bed145
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6576,7 +6576,7 @@ See the kernel source file
>  .IR thp_zero_page_alloc " (since Linux 3.8)"
>  .\" commit d8a8e1f0da3d29d7268b3300c96a059d63901b76
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> @@ -6585,7 +6585,7 @@ See the kernel source file
>  .IR thp_zero_page_alloc_failed " (since Linux 3.8)"
>  .\" commit d8a8e1f0da3d29d7268b3300c96a059d63901b76
>  See the kernel source file
> -.IR Documentation/admin-guide/mm/transhuge.rst .
> +.IR Documentation/admin\-guide/mm/transhuge.rst .
>  .\" Present only if the kernel was configured with
>  .\" .BR CONFIG_VM_EVENT_COUNTERS
>  .\" and
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
