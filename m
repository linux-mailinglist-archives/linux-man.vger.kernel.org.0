Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0CDE3E399C
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231274AbhHHImL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231308AbhHHImL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:11 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CF5BC0613CF
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:52 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id q11so4969710wrr.9
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KJhEInyGZS6KjVnrdNnP2ioa0x2HrO2OblcHmifm000=;
        b=KTTDnKR1lARspZa72O52ipW1zEXnFHBZq6vn2xcL2+TnJBdBB6SOfJQ/h5/Cxat4m4
         Ceyp3YySPPgL7QWRSfs5vZFhZ+VrezgfokR08YYyPgCSWRreuUULh9fCnjwAug2rVyzK
         piVrzDNvjGHSosO0rGSf5KQxK18fZW39iW/plFoy1IerhNMI8eusrR+yJzt3E4da4UXN
         4iq94hzDVj1oCTK07ca5HBEQRKxBjRr9eLg2zfSIVxWxotQDzLdLlMn3h1ldx/b9Zd+C
         JzFMWyw6HYRerbto59r5YwFnyaeIs9iuNVx0wso9PHR9afPCzDhR6nzAjX7EUqGd38N0
         vEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KJhEInyGZS6KjVnrdNnP2ioa0x2HrO2OblcHmifm000=;
        b=WsQNPdmvLMNqjIE18HYyw71lVjX/SUkl5fySMm3UadJy0JFEiuhKE6ZbmPUTrKf+4m
         n/UOyijuGZ25GgABWr1bstRcApOiO2CYDIhVaQDJ8lJqEeVVtrIUtBxulXBafyeDW3v4
         XdwHQuxZ2bpsdO92JhEcHVFbNLfh8Gvs1jtbzEla/bb1PnPGI2flQ1DvDbCGEcfPJNvz
         PgzXsPclJB02QFrp6FbudQoIJBSZGSs+ggw84tol01JQDvAFn6kINLSKW8R4f2a4XTbJ
         ApAnmH+tIZBdjZCNwhLyX2x/6dZeKb/xP9FcSbOE3seuc75tBy3NW2v8IN6JtuZ9Wp9/
         S87g==
X-Gm-Message-State: AOAM531FSLRnuOWd1KtfJnMqeoDO1n+6TwSRws+FXL/xn0EFEM4csI50
        rma00cOeLvmAeIMzPFhno3eyefKqXKg=
X-Google-Smtp-Source: ABdhPJz4qmwjuq2LsKoOWiaJYgOSyUGdxKldOWZPZ+wf9kN3TkzC/+Hd/YgeGrrZ1w49Lzukk875Ew==
X-Received: by 2002:adf:e107:: with SMTP id t7mr19055693wrz.165.1628412111257;
        Sun, 08 Aug 2021 01:41:51 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:50 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Mike Rapoport <rppt@linux.ibm.com>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 08/23] man2: new page describing memfd_secret() system call
Date:   Sun,  8 Aug 2021 10:41:18 +0200
Message-Id: <20210808084133.734274-9-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Rapoport <rppt@linux.ibm.com>

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/memfd_secret.2 | 146 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 146 insertions(+)
 create mode 100644 man2/memfd_secret.2

diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
new file mode 100644
index 000000000..466aa4236
--- /dev/null
+++ b/man2/memfd_secret.2
@@ -0,0 +1,146 @@
+.\" Copyright (c) 2021, IBM Corporation.
+.\" Written by Mike Rapoport <rppt@linux.ibm.com>
+.\"
+.\" Based on memfd_create(2) man page
+.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
+.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
+.\"
+.\" %%%LICENSE_START(GPLv2+)
+.\"
+.\" This program is free software; you can redistribute it and/or modify
+.\" it under the terms of the GNU General Public License as published by
+.\" the Free Software Foundation; either version 2 of the License, or
+.\" (at your option) any later version.
+.\"
+.\" This program is distributed in the hope that it will be useful,
+.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
+.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+.\" GNU General Public License for more details.
+.\"
+.\" You should have received a copy of the GNU General Public
+.\" License along with this manual; if not, see
+.\" <http://www.gnu.org/licenses/>.
+.\" %%%LICENSE_END
+.\"
+.TH MEMFD_SECRET 2 2020-08-02 Linux "Linux Programmer's Manual"
+.SH NAME
+memfd_secret \- create an anonymous file to access secret memory regions
+.SH SYNOPSIS
+.nf
+.PP
+.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
+.B #include <unistd.h>
+.PP
+.BI "int syscall(SYS_memfd_secret, unsigned int " flags );
+.fi
+.PP
+.IR Note :
+glibc provides no wrapper for
+.BR memfd_secret (),
+necessitating the use of
+.BR syscall (2).
+.SH DESCRIPTION
+.BR memfd_secret ()
+creates an anonymous file and returns a file descriptor that refers to it.
+The file provides a way to create and access memory regions
+with stronger protection than usual RAM-based files and
+anonymous memory mappings.
+Once all references to the file are dropped, it is automatically released.
+The initial size of the file is set to 0.
+Following the call, the file size should be set using
+.BR ftruncate (2).
+.PP
+The memory areas backing the file created with
+.BR memfd_create(2)
+are visible only to the contexts that have access to the file descriptor.
+These areas are removed from the kernel page tables
+and only the page tables of the processes holding the file descriptor
+map the corresponding physical memory.
+.PP
+The following values may be bitwise ORed in
+.I flags
+to control the behavior of
+.BR memfd_secret (2):
+.TP
+.B FD_CLOEXEC
+Set the close-on-exec flag on the new file descriptor.
+See the description of the
+.B O_CLOEXEC
+flag in
+.BR open (2)
+for reasons why this may be useful.
+.PP
+As its return value,
+.BR memfd_secret ()
+returns a new file descriptor that can be used to refer to an anonymous file.
+This file descriptor is opened for both reading and writing
+.RB ( O_RDWR )
+and
+.B O_LARGEFILE
+is set for the file descriptor.
+.PP
+With respect to
+.BR fork (2)
+and
+.BR execve (2),
+the usual semantics apply for the file descriptor created by
+.BR memfd_secret ().
+A copy of the file descriptor is inherited by the child produced by
+.BR fork (2)
+and refers to the same file.
+The file descriptor is preserved across
+.BR execve (2),
+unless the close-on-exec flag has been set.
+.PP
+The memory regions backed with
+.BR memfd_secret ()
+are locked in the same way as
+.BR mlock (2),
+however the implementation will not try to
+populate the whole range during the
+.BR mmap (2)
+call.
+The amount of memory allowed for memory mappings
+of the file descriptor obeys the same rules as
+.BR mlock (2)
+and cannot exceed
+.BR RLIMIT_MEMLOCK .
+.SH RETURN VALUE
+On success,
+.BR memfd_secret ()
+returns a new file descriptor.
+On error, \-1 is returned and
+.I errno
+is set to indicate the error.
+.SH ERRORS
+.TP
+.B EINVAL
+.I flags
+included unknown bits.
+.TP
+.B EMFILE
+The per-process limit on the number of open file descriptors has been reached.
+.TP
+.B EMFILE
+The system-wide limit on the total number of open files has been reached.
+.TP
+.B ENOMEM
+There was insufficient memory to create a new anonymous file.
+.TP
+.B ENOSYS
+.BR memfd_secret ()
+is not implemented on this architecture.
+.SH VERSIONS
+The
+.BR memfd_secret (2)
+system call first appeared in Linux 5.14.
+.SH CONFORMING TO
+The
+.BR memfd_secret (2)
+system call is Linux-specific.
+.SH SEE ALSO
+.BR fcntl (2),
+.BR ftruncate (2),
+.BR mlock (2),
+.BR mmap (2),
+.BR setrlimit (2)
-- 
2.32.0

