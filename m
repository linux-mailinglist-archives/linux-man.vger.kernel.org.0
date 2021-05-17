Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71A2938232B
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 05:49:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232331AbhEQDu3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 23:50:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbhEQDu3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 23:50:29 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 241F3C061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 20:49:14 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id t4so2376820plc.6
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 20:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wUVr2zrM38N/oRWTgFDjtJL4TfFkTUG5HvuMbxjH3ac=;
        b=jXfF1Mdm6/Xij5AyPhIbefbpHieLimPWwpm85T08fcSMOatS4uNL5WHbEKabwkdjy+
         N923YlY85/uKgVLPtLWT1j7UmqSnD+OV0p016keEYuLOxFB9kg+ryuCPLy53zojJ19TF
         RRy6riOYJt8HEptJZiuLd692MVK17L5E9Yyu9BDsR2LctJAPFuJ9z+dwAzTm0oH4jO1w
         uFlpiE5paU0rzQuPC9YSVz7++OshTscej4yDslw0hf2sUq5tsBU9q0rA7kiPGUSc7Qx0
         PMDIbBilZwtnlziBw/9DzlbFDY7WyNxtHw4Q6kE6Tq4KNN+ZVr8NEzDgNRW1KirSxotL
         hZ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wUVr2zrM38N/oRWTgFDjtJL4TfFkTUG5HvuMbxjH3ac=;
        b=eF9o9p6cBrYkOmt/YfLhlGarVnKgetLIKv2Q2TT2YVSdEp97d6ouzPdiTuyui4foC5
         xL7W+5ZMKwLNm8lAHOQN/cSaqTtYgz9cSR5/36yz0XAobFyLoKsBcs1zYeIo5Naz5wpG
         Wz3TwBToU/A+tNqymQLySqYuxxio6bTRVN0LFw61flIzvpw1jaiLyZL32CtGy5boiYCV
         43IEILWvnhY8Ivk9MoxtL5PK/CliaZM8od/IkpAiDD/HxVC1CRBIipjFxKQ6Fnh4G9L5
         ryz+Q0C3uTerFEmAkW5tg4nxMFSpPIIP3K93C7uQGOOcMXGFJ1ZWKee9WFHneHzCXvXm
         XV/g==
X-Gm-Message-State: AOAM530SuE4sRvo4Vifoo10Mq33o6SxF9+Grj0b677X6hGLqSF8GG/WA
        cdmlEQsfis2vEq1C0dyWbH4=
X-Google-Smtp-Source: ABdhPJwvP5U8t7QBFBuCUBPbkNWAFNG63/cV4HIlnpsjsMJI4PATOISrxdR+rWN+JSekpTcN6yX4oQ==
X-Received: by 2002:a17:90b:1bd2:: with SMTP id oa18mr65473951pjb.72.1621223352632;
        Sun, 16 May 2021 20:49:12 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id i5sm4799452pgr.43.2021.05.16.20.49.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 20:49:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v2] man2/shmget2: Add details about EPERM error
To:     Yang Xu <xuyang2018.jy@fujitsu.com>, linux-man@vger.kernel.org
References: <1620816794-8503-1-git-send-email-xuyang2018.jy@fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a1f57e98-581f-cfa8-fabe-9d0a6ee2f0a0@gmail.com>
Date:   Mon, 17 May 2021 15:49:07 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <1620816794-8503-1-git-send-email-xuyang2018.jy@fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On 5/12/21 10:53 PM, Yang Xu wrote:
> hugetlb_shm_group contains group id that is allowed to create SysV shared
> memory segment using hugetlb page. To meet EPERM error, we also
> need to make group id be not in this proc file.
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> ---
>  man2/shmget.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/shmget.2 b/man2/shmget.2
> index 757b7b7f1..29799b9b8 100644
> --- a/man2/shmget.2
> +++ b/man2/shmget.2
> @@ -273,7 +273,7 @@ The
>  .B SHM_HUGETLB
>  flag was specified, but the caller was not privileged (did not have the
>  .B CAP_IPC_LOCK
> -capability).
> +capability and group id doesn't be contained in hugetlb_shm_group proc file).
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, SVr4.
>  .\" SVr4 documents an additional error condition EEXIST.

Thanks for spotting this. The story is more complex, as far as I can
tell. For example, the same error also occurs for mmap(2) and 
memfd_create(2)

Instead of your patch, I applied the diff below (not yet pushed), 
based on my reading of fs/hugetlbfs/inode.c, in particular:
    
    static int can_do_hugetlb_shm(void)
    {
            kgid_t shm_group;
            shm_group = make_kgid(&init_user_ns, sysctl_hugetlb_shm_group);
            return capable(CAP_IPC_LOCK) || in_group_p(shm_group);
    }
    
    ...
    
    struct file *hugetlb_file_setup(const char *name, size_t size,
                                    vm_flags_t acctflag, struct user_struct **user,
                                    int creat_flags, int page_size_log)
    {
            ...
            if (creat_flags == HUGETLB_SHMFS_INODE && !can_do_hugetlb_shm()) {
                    *user = current_user();
                    if (user_shm_lock(size, *user)) {
                            task_lock(current);
                            pr_warn_once("%s (%d): Using mlock ulimits for SHM_HUGETLB is deprecated\n",
                                    current->comm, current->pid);
                            task_unlock(current);
                    } else {
                            *user = NULL;
                            return ERR_PTR(-EPERM);
                    }
            }
            ...
    }

As a deprecated feature, it appears that the RLIMIT_MEMLOCK
can also be used to permit huge page allocation, but I have
chose not to document that for now.

Please let me know if the patch makes sense to you.

With best regards,

Michael

--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -201,6 +201,19 @@ The
 .BR memfd_create ()
 system call first appeared in Linux 3.17;
 glibc support was added in version 2.27.
+.TP
+.B EPERM
+The
+.B MFD_HUGETLB
+flag was specified, but the caller was not privileged (did not have the
+.B CAP_IPC_LOCK
+capability)
+and is not a member of the
+.I sysctl_hugetlb_shm_group
+group; see the description of
+.I /proc/sys/vm/sysctl_hugetlb_shm_group
+in
+.BR proc (5).
 .SH CONFORMING TO
 The
 .BR memfd_create ()
diff --git a/man2/mmap.2 b/man2/mmap.2
index 03f2eeb2c..4ee2f4f96 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -628,6 +628,18 @@ was mounted no-exec.
 The operation was prevented by a file seal; see
 .BR fcntl (2).
 .TP
+.B EPERM
+The
+.B MAP_HUGETLB
+flag was specified, but the caller was not privileged (did not have the
+.B CAP_IPC_LOCK
+capability)
+and is not a member of the
+.I sysctl_hugetlb_shm_group
+group; see the description of
+.I /proc/sys/vm/sysctl_hugetlb_shm_group
+in
+.TP
 .B ETXTBSY
 .B MAP_DENYWRITE
 was set but the object specified by
diff --git a/man2/shmget.2 b/man2/shmget.2
index 757b7b7f1..6e9995e81 100644
--- a/man2/shmget.2
+++ b/man2/shmget.2
@@ -273,7 +273,13 @@ The
 .B SHM_HUGETLB
 flag was specified, but the caller was not privileged (did not have the
 .B CAP_IPC_LOCK
-capability).
+capability)
+and is not a member of the
+.I sysctl_hugetlb_shm_group
+group; see the description of
+.I /proc/sys/vm/sysctl_hugetlb_shm_group
+in
+.BR proc (5).
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
 .\" SVr4 documents an additional error condition EEXIST.
diff --git a/man5/proc.5 b/man5/proc.5
index a28dbdcc7..888535449 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -5603,6 +5603,19 @@ user should run
 .BR sync (1)
 first.
 .TP
+.IR  /proc/sys/vm/sysctl_hugetlb_shm_group " (since Linux 2.6.7)"
+This writable file contains a group ID that is allowed
+to allocate memory using huge pages.
+If a process has a filesystem group ID or any supplememtary group ID that
+matches this group ID,
+then it can make huge-page allocations without holding the
+.BR CAP_IPC_LOCK
+capability; see
+.BR memfd_create (2),
+.BR mmap (2),
+and
+.BR shmget (2).
+.TP
 .IR /proc/sys/vm/legacy_va_layout " (since Linux 2.6.9)"
 .\" The following is from Documentation/filesystems/proc.txt
 If nonzero, this disables the new 32-bit memory-mapping layout;
diff --git a/man7/capabilities.7 b/man7/capabilities.7
index 7e79b2fb6..cf9dc190f 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -205,11 +205,21 @@ the filesystem or any of the supplementary GIDs of the calling process.
 .B CAP_IPC_LOCK
 .\" FIXME . As at Linux 3.2, there are some strange uses of this capability
 .\" in other places; they probably should be replaced with something else.
+.PD 0
+.RS
+.IP * 2
 Lock memory
 .RB ( mlock (2),
 .BR mlockall (2),
 .BR mmap (2),
+.BR shmctl (2));
+.IP *
+Allocate memory using huge pages
+.RB ( memfd_create (2)
+.BR mmap (2),
 .BR shmctl (2)).
+.PD 0
+.RE
 .TP
 .B CAP_IPC_OWNER
 Bypass permission checks for operations on System V IPC objects.
$ 



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
