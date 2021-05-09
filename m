Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB3A1377857
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 21:54:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbhEITzX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 15:55:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229666AbhEITzX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 15:55:23 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 095DEC061573
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 12:54:20 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id h7so8100243plt.1
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 12:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yUZuLrN/ZNXg26n8xu9aRM0FEJjqN3Vh5OOD0kE/EQ4=;
        b=TelMXfe8T76F66ctN333kCkBf4+36SzkSZgWP+JMC8ybFahaOMWmi2uevfypX8qTUb
         WlqJJA/j0sKlSkCXHmnROU4vYsHZQj751ixc7XJLgT7DG96BdgvU/s7ubQ9UlYIt3SgI
         x5t2TL3ofYuJGUM3zymHG8txdOsbp2nddhlKOCo4N+LF01XcAsw5mVpL95RQmbo1ugKo
         JaCnV9gWa1cZfPfv4gc9nHUsLm0nqu7T42FPHhc978jRb8sbl+0NRavLUG9feklC0eQ7
         uIwwQduDyFbGXASgwvK+7uyfn3JK7BBobrx9AMZT89ChYP3KxTHRmsoK7CjpmzPi7PjH
         4GNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yUZuLrN/ZNXg26n8xu9aRM0FEJjqN3Vh5OOD0kE/EQ4=;
        b=LJy1RuFMfNkiXP5KCp4zM0IEto+asZfwYruZ++guCsMomwqjDw5DbIWuS8Y/jaC45Z
         TcefbhypSLoH4e5DO8JSHcZ+nDS39xe/elFk+4ESPuVKhVki6w/Dku34PqqnzGcgIihs
         DhA6XF/hnFUZCxSeGH4IC0c3g9WSPH9LaKT2qdZAsKJwq3ZV6lgv92prXScgg7IE0DJ7
         g0A6R4mstNQJmEgLIOQhdluUn8RDaEX2arILaL3dSl7wP3OOdk5LyFNqJFe/kiyeljJe
         AoSKS+uBPBpY7jdl9VeelDuCZIp9NVjyLTBJwXy32d6D0YfCmv95zIrQ3OVexVlKAUHM
         qM3A==
X-Gm-Message-State: AOAM533e1R17oPMECT9r8MY/BBomTtJS5tHcyL6LpYV7g9EzsDP2apLa
        E8QqQ/pHFwjJ65h8V4kMxb0=
X-Google-Smtp-Source: ABdhPJy8LIt3FxP88bJDXCViZ0ppqgGN9/AiEzq/QkGqyMh9Z12zm/9CPpTkC3sVfXs13gkJlByN7A==
X-Received: by 2002:a17:90a:6345:: with SMTP id v5mr30707759pjs.139.1620590059473;
        Sun, 09 May 2021 12:54:19 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id gb9sm16697878pjb.7.2021.05.09.12.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 12:54:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/3] Various pages: Remove unused <sys/ipc.h> (and
 <sys/types.h>)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210421224418.143065-1-alx.manpages@gmail.com>
 <20210421224418.143065-2-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a8857707-588e-66f5-8c7a-49eb18f8dc12@gmail.com>
Date:   Mon, 10 May 2021 07:54:15 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210421224418.143065-2-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello ALex,

On 4/22/21 10:44 AM, Alejandro Colomar wrote:
> In b0b19983d9a2001ce94b908a99f4c05a50fd47ee we removed
> <sys/types.h>.  For the same reasons there, remove now <sys/ipc.h>
> from many pages.
> 
> If someone wonders why <sys/ipc.h> was needed, the reason was to
> get all the definitions of IPC_* constants.  However, that header
> is now included by <sys/msg.h>, so it's not needed anymore to
> explicitly include it.  Quoting POSIX: "In addition, the
> <sys/msg.h> header shall include the <sys/ipc.h> header."
> 
> There were some remaining cases where I forgot to remove
> <sys/types.h>; remove them now too.

Seems reasonable to me. Patch applied.

Thanks,

Michael

> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
>  man2/msgctl.2 | 12 ------------
>  man2/msgget.2 | 12 ------------
>  man2/msgop.2  | 12 ------------
>  man2/semctl.2 | 12 ------------
>  man2/semget.2 | 12 ------------
>  man2/semop.2  | 12 ------------
>  man2/shmctl.2 | 12 ------------
>  man2/shmget.2 | 14 --------------
>  man3/ftok.3   |  1 -
>  9 files changed, 99 deletions(-)
> 
> diff --git a/man2/msgctl.2 b/man2/msgctl.2
> index d42a47d2b..72598dd4c 100644
> --- a/man2/msgctl.2
> +++ b/man2/msgctl.2
> @@ -40,7 +40,6 @@
>  msgctl \- System V message control operations
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ipc.h>
>  .B #include <sys/msg.h>
>  .PP
>  .BI "int msgctl(int " msqid ", int " cmd ", struct msqid_ds *" buf );
> @@ -405,17 +404,6 @@ capability).
>  POSIX.1-2001, POSIX.1-2008, SVr4.
>  .\" SVID does not document the EIDRM error condition.
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of this header file.
> -.PP
>  The
>  .BR IPC_INFO ,
>  .BR MSG_STAT ,
> diff --git a/man2/msgget.2 b/man2/msgget.2
> index edc91467b..fd9cbe0a1 100644
> --- a/man2/msgget.2
> +++ b/man2/msgget.2
> @@ -37,7 +37,6 @@
>  msgget \- get a System V message queue identifier
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ipc.h>
>  .B #include <sys/msg.h>
>  .PP
>  .BI "int msgget(key_t " key ", int " msgflg );
> @@ -188,17 +187,6 @@ would be exceeded.
>  .SH CONFORMING TO
>  POSIX.1-2001, POSIX.1-2008, SVr4.
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of this header file.
> -.PP
>  .B IPC_PRIVATE
>  isn't a flag field but a
>  .I key_t
> diff --git a/man2/msgop.2 b/man2/msgop.2
> index e56176f08..d46e5b1dd 100644
> --- a/man2/msgop.2
> +++ b/man2/msgop.2
> @@ -42,7 +42,6 @@
>  msgrcv, msgsnd \- System V message queue operations
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ipc.h>
>  .B #include <sys/msg.h>
>  .PP
>  .BI "int msgsnd(int " msqid ", const void *" msgp ", size_t " msgsz \
> @@ -480,17 +479,6 @@ their definitions can be obtained by defining the
>  .\" MSG_COPY since glibc 2.18
>  feature test macro.
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of this header file.
> -.PP
>  The
>  .I msgp
>  argument is declared as \fIstruct msgbuf\ *\fP in
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index 504cdf9da..ac8bd906d 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -44,7 +44,6 @@
>  semctl \- System V semaphore control operations
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ipc.h>
>  .B #include <sys/sem.h>
>  .PP
>  .BI "int semctl(int " semid ", int " semnum ", int " cmd ", ...);"
> @@ -536,17 +535,6 @@ It was also so defined on Linux 2.2 and earlier,
>  but, since Linux 2.4, the field has the type
>  .IR "unsigned\ long" .
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of these header files.
> -.PP
>  The
>  .BR IPC_INFO ,
>  .BR SEM_STAT ,
> diff --git a/man2/semget.2 b/man2/semget.2
> index b0914f900..2fce9b1ce 100644
> --- a/man2/semget.2
> +++ b/man2/semget.2
> @@ -39,7 +39,6 @@
>  semget \- get a System V semaphore set identifier
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ipc.h>
>  .B #include <sys/sem.h>
>  .fi
>  .PP
> @@ -219,17 +218,6 @@ SVr4, POSIX.1-2001.
>  .\" SVr4 documents additional error conditions EFBIG, E2BIG, EAGAIN,
>  .\" ERANGE, EFAULT.
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of this header file.
> -.PP
>  .B IPC_PRIVATE
>  isn't a flag field but a
>  .I key_t
> diff --git a/man2/semop.2 b/man2/semop.2
> index 9479f7e4c..f0cd66302 100644
> --- a/man2/semop.2
> +++ b/man2/semop.2
> @@ -37,7 +37,6 @@
>  semop, semtimedop \- System V semaphore operations
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/ipc.h>
>  .B #include <sys/sem.h>
>  .PP
>  .BI "int semop(int " semid ", struct sembuf *" sops ", size_t " nsops );
> @@ -383,17 +382,6 @@ first appeared in version 2.3.3.
>  POSIX.1-2001, POSIX.1-2008, SVr4.
>  .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of this header file.
> -.PP
>  The
>  .I sem_undo
>  structures of a process aren't inherited by the child produced by
> diff --git a/man2/shmctl.2 b/man2/shmctl.2
> index 31c86af86..5aa74e676 100644
> --- a/man2/shmctl.2
> +++ b/man2/shmctl.2
> @@ -49,7 +49,6 @@ shmctl \- System V shared memory control
>  .SH SYNOPSIS
>  .nf
>  .ad l
> -.B #include <sys/ipc.h>
>  .B #include <sys/shm.h>
>  .PP
>  .BI "int shmctl(int " shmid ", int " cmd ", struct shmid_ds *" buf );
> @@ -466,17 +465,6 @@ POSIX.1-2001, POSIX.1-2008, SVr4.
>  .\" ENOENT, ENOSPC, ENOMEM, EEXIST.  Neither SVr4 nor SVID documents
>  .\" an EIDRM error condition.
>  .SH NOTES
> -The inclusion of
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of this header file,
> -and the SVID also documented its inclusion.
> -Applications intended to be portable to such old systems may need
> -to include this header file.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of this header file.
> -.PP
>  The
>  .BR IPC_INFO ,
>  .BR SHM_STAT ,
> diff --git a/man2/shmget.2 b/man2/shmget.2
> index 1d9e6825c..757b7b7f1 100644
> --- a/man2/shmget.2
> +++ b/man2/shmget.2
> @@ -41,7 +41,6 @@ shmget \- allocates a System V shared memory segment
>  .SH SYNOPSIS
>  .nf
>  .ad l
> -.B #include <sys/ipc.h>
>  .B #include <sys/shm.h>
>  .PP
>  .BI "int shmget(key_t " key ", size_t " size ", int " shmflg );
> @@ -284,19 +283,6 @@ and
>  .B SHM_NORESERVE
>  are Linux extensions.
>  .SH NOTES
> -The inclusion of
> -.I <sys/types.h>
> -and
> -.I <sys/ipc.h>
> -isn't required on Linux or by any version of POSIX.
> -However,
> -some old implementations required the inclusion of these header files,
> -and the SVID also documented their inclusion.
> -Applications intended to be portable to such old systems may need
> -to include these header files.
> -.\" Like Linux, the FreeBSD man pages still document
> -.\" the inclusion of these header files.
> -.PP
>  .B IPC_PRIVATE
>  isn't a flag field but a
>  .I key_t
> diff --git a/man3/ftok.3 b/man3/ftok.3
> index 5d8907b56..d46481356 100644
> --- a/man3/ftok.3
> +++ b/man3/ftok.3
> @@ -31,7 +31,6 @@
>  ftok \- convert a pathname and a project identifier to a System V IPC key
>  .SH SYNOPSIS
>  .nf
> -.B #include <sys/types.h>
>  .B #include <sys/ipc.h>
>  .fi
>  .PP
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
