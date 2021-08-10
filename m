Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CB553E5604
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 10:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237228AbhHJIx6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 04:53:58 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:34078 "EHLO
        mx0b-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S235508AbhHJIx6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 04:53:58 -0400
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 17A8ZcG1078815
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 04:53:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=pp1; bh=o1ESTm2kVTNZKMa043wB9WAwZYofPO6S/4oulNtihMk=;
 b=Oybmv4OEV7UcKTUnpkI6Cg4bKdwPZkCUFtH6n4jXewY8TzNtkXM7A2SYguyc+R8BD3za
 NprLYFMeancxzbNZlzSDvAoQKXEQBLjGyqoQgkJIOt1WQ5QIhAKnr16FmyFLwjxlThiz
 qXIGo1prYcDQYdm/Dqfi8xphmCPFAKT8zpoq+EsxU9DXmU1RiE3WNUv2BmjyY6eu60nV
 f6ERkQ7tlw/TFuYEOhCt1/m8NiPgBE5bNh0TUFivAdJpvAZmWx2aU/r7eQyz5fPnTduL
 Vm6K+Xc2GtruVC5qjg+gkdXXMbt7hMeTjXya5qKM/j0Jw3j4JrmchVumvuErxIbn1HCu 7w== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 3abk4pmt7q-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 04:53:35 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 17A8ZgTT079439
        for <linux-man@vger.kernel.org>; Tue, 10 Aug 2021 04:53:35 -0400
Received: from ppma01fra.de.ibm.com (46.49.7a9f.ip4.static.sl-reverse.com [159.122.73.70])
        by mx0a-001b2d01.pphosted.com with ESMTP id 3abk4pmt71-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 10 Aug 2021 04:53:35 -0400
Received: from pps.filterd (ppma01fra.de.ibm.com [127.0.0.1])
        by ppma01fra.de.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 17A8r4Vh032702;
        Tue, 10 Aug 2021 08:53:33 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
        by ppma01fra.de.ibm.com with ESMTP id 3a9ht8n3qe-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 10 Aug 2021 08:53:33 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
        by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 17A8rVnu55116146
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 10 Aug 2021 08:53:31 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id E46EC5204E;
        Tue, 10 Aug 2021 08:53:30 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.154.55])
        by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id 6BF6C5205F;
        Tue, 10 Aug 2021 08:53:30 +0000 (GMT)
Date:   Tue, 10 Aug 2021 11:53:28 +0300
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 08/23] man2: new page describing memfd_secret() system
 call
Message-ID: <YRI+iFIGsyh4V+hb@linux.ibm.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
 <20210808084133.734274-9-alx.manpages@gmail.com>
 <c59c067a-b152-2e23-3591-833d8349dcda@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c59c067a-b152-2e23-3591-833d8349dcda@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: nS2pPMBafG9QfMTr3TMQrhsEbIuiF9Cj
X-Proofpoint-GUID: yywsf11e77Nm2ekOILtfkN_hhvsEfzFY
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-08-10_02:2021-08-06,2021-08-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108100053
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On Mon, Aug 09, 2021 at 04:00:46AM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Mike and Alex,
> 
> I think some more work is needed for this page. Mike, would
> you be willing to do some work on the points below please?

I'm really stretched at the moment, so it'll take a while.

What do you say about starting without the elaborate NOTES section and only
updating the page according to your comments below?

I will add the NOTES section a bit later then.
 
> On 8/8/21 10:41 AM, Alejandro Colomar wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> > ---
> >  man2/memfd_secret.2 | 146 ++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 146 insertions(+)
> >  create mode 100644 man2/memfd_secret.2
> > 
> > diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> > new file mode 100644
> > index 000000000..466aa4236
> > --- /dev/null
> > +++ b/man2/memfd_secret.2
> > @@ -0,0 +1,146 @@
> > +.\" Copyright (c) 2021, IBM Corporation.
> > +.\" Written by Mike Rapoport <rppt@linux.ibm.com>
> > +.\"
> > +.\" Based on memfd_create(2) man page
> > +.\" Copyright (C) 2014 Michael Kerrisk <mtk.manpages@gmail.com>
> > +.\" and Copyright (C) 2014 David Herrmann <dh.herrmann@gmail.com>
> > +.\"
> > +.\" %%%LICENSE_START(GPLv2+)
> > +.\"
> > +.\" This program is free software; you can redistribute it and/or modify
> > +.\" it under the terms of the GNU General Public License as published by
> > +.\" the Free Software Foundation; either version 2 of the License, or
> > +.\" (at your option) any later version.
> > +.\"
> > +.\" This program is distributed in the hope that it will be useful,
> > +.\" but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +.\" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
> > +.\" GNU General Public License for more details.
> > +.\"
> > +.\" You should have received a copy of the GNU General Public
> > +.\" License along with this manual; if not, see
> > +.\" <http://www.gnu.org/licenses/>.
> > +.\" %%%LICENSE_END
> > +.\"
> > +.TH MEMFD_SECRET 2 2020-08-02 Linux "Linux Programmer's Manual"
> > +.SH NAME
> > +memfd_secret \- create an anonymous file to access secret memory regions
> > +.SH SYNOPSIS
> > +.nf
> > +.PP
> > +.BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants */"
> > +.B #include <unistd.h>
> > +.PP
> > +.BI "int syscall(SYS_memfd_secret, unsigned int " flags );
> > +.fi
> > +.PP
> > +.IR Note :
> > +glibc provides no wrapper for
> > +.BR memfd_secret (),
> > +necessitating the use of
> > +.BR syscall (2).
> > +.SH DESCRIPTION
> > +.BR memfd_secret ()
> > +creates an anonymous file and returns a file descriptor that refers to it.
> 
> s/file/RAM-based file/
> 
> > +The file provides a way to create and access memory regions
> > +with stronger protection than usual RAM-based files and
> > +anonymous memory mappings.
> > +Once all references to the file are dropped, it is automatically released.
> 
> "dropped" is not clear. Should it be something like:
> 
>     Once all open references to the file are closed,
> 
> > +The initial size of the file is set to 0.
> > +Following the call, the file size should be set using
> > +.BR ftruncate (2).
> > +.PP
> > +The memory areas backing the file created with
> > +.BR memfd_create(2)
> > +are visible only to the contexts that have access to the file descriptor.
> 
> "contexts" is not clear here. Can you reword to explain what you mean?
> (processes, threads, something else?)
> 
> > +These areas are removed from the kernel page tables
> 
> s/These areas are/The memory region is/
> 
> > +and only the page tables of the processes holding the file descriptor
> > +map the corresponding physical memory.
> 
> Perhaps a sentence here such as:
> 
> "(Thus, the pages in the region can't be accessed by the kernel itself,
> so that, for example, pointers to the region can't be passed to 
> system calls.)"
> 
> > +.PP
> > +The following values may be bitwise ORed in
> > +.I flags
> > +to control the behavior of
> > +.BR memfd_secret (2):
> > +.TP
> > +.B FD_CLOEXEC
> > +Set the close-on-exec flag on the new file descriptor.
> 
> s/.$/, which causes the region to be removed from the process on execve(2)./
> 
> > +See the description of the
> > +.B O_CLOEXEC
> > +flag in
> > +.BR open (2)
> > +for reasons why this may be useful.
> 
> Maybe the previous sentence is not necessary?
> 
> > +.PP
> > +As its return value,
> > +.BR memfd_secret ()
> > +returns a new file descriptor that can be used to refer to an anonymous file.
> 
> s/that can be used to refer/that refers/
> 
> > +This file descriptor is opened for both reading and writing
> > +.RB ( O_RDWR )
> > +and
> > +.B O_LARGEFILE
> > +is set for the file descriptor.
> > +.PP
> > +With respect to
> > +.BR fork (2)
> > +and
> > +.BR execve (2),
> > +the usual semantics apply for the file descriptor created by
> > +.BR memfd_secret ().
> > +A copy of the file descriptor is inherited by the child produced by
> > +.BR fork (2)
> > +and refers to the same file.
> > +The file descriptor is preserved across
> > +.BR execve (2),
> > +unless the close-on-exec flag has been set.
> > +.PP
> > +The memory regions backed with
> > +.BR memfd_secret ()
> > +are locked in the same way as
> > +.BR mlock (2),
> 
> I find the wording here just a little unclear
> 
> How about:
> 
>     The memory region is locked into memory in the same way as
>     with mlock(2), so that it will never be written into swap
> 
> > +however the implementation will not try to> +populate the whole range during the
> > +.BR mmap (2)
> > +call.
> 
> s/call./call that attaches the region into the process's address space;
>         instead, the pages are only actually allocated as they are
>         faulted in./
> 
> > +The amount of memory allowed for memory mappings
> > +of the file descriptor obeys the same rules as
> > +.BR mlock (2)
> > +and cannot exceed
> > +.BR RLIMIT_MEMLOCK .
> > +.SH RETURN VALUE
> > +On success,
> > +.BR memfd_secret ()
> > +returns a new file descriptor.
> > +On error, \-1 is returned and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EINVAL
> > +.I flags
> > +included unknown bits.
> > +.TP
> > +.B EMFILE
> > +The per-process limit on the number of open file descriptors has been reached.
> > +.TP
> > +.B EMFILE
> > +The system-wide limit on the total number of open files has been reached.
> > +.TP
> > +.B ENOMEM
> > +There was insufficient memory to create a new anonymous file.
> > +.TP
> > +.B ENOSYS
> > +.BR memfd_secret ()
> > +is not implemented on this architecture.
> > +.SH VERSIONS
> > +The
> > +.BR memfd_secret (2)
> > +system call first appeared in Linux 5.14.
> > +.SH CONFORMING TO
> > +The
> > +.BR memfd_secret (2)
> > +system call is Linux-specific.
> > +.SH SEE ALSO
> > +.BR fcntl (2),
> > +.BR ftruncate (2),
> > +.BR mlock (2),
> > +.BR mmap (2),
> > +.BR setrlimit (2)
> 
> I feel like this page could benefit from a NOTES section
> that explains the rationale for the system call. This could
> note that the fact that the region is not accessible from the
> kernel removes a whole class of security attacks.
> 
> Also, the NOTES section could mention the  "secretmem_enable"
> boot option, what its purpose is, what values it can have,
> and what is default behavior if this option is not specified.
> 
> Also, is ti still the case that if this system call is used,
> then users can no longer hibernate their systems? If so,
> this really should be mentioned in NOTES!
> 
> Also, in NOTES perhaps it is worth mentioning that the
> pages in the region can enter the cache (right?).
> 
> Perhaps Jon's articles at https://lwn.net/Articles/865256/
> https://lwn.net/Articits/835342/ and https://lwn.net/Articles/812325/,
> as well as your own commit message
> (https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1507f51255c9)
> may inspire some other ideas on details that should be included
> in NOTES.
> 
> Thanks,
> 
> Michael
> 
> -- 
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/

-- 
Sincerely yours,
Mike.
