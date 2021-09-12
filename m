Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 341C1407BF2
	for <lists+linux-man@lfdr.de>; Sun, 12 Sep 2021 07:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbhILFMu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 01:12:50 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:51470 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S229540AbhILFMt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 01:12:49 -0400
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 18C353j8003877;
        Sun, 12 Sep 2021 01:11:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=pp1; bh=eoev3SwcVmLm4+b2adQR5ByhW+bODx9httPxNZnojJ8=;
 b=h1dDGwBrqr9ykCQogYjNW8tFkOccvhdUbZCxULvPKVpjURPtFRl28IOFKCOFtHjS79Pe
 wI2EJXNgWDjMAnC95dk/fpIQ/ElF9YgaE0Bt/Lv6hmpd1jZiaqWCtbALs7iJ06xrpqPS
 JcQsNohWU2sE4mkMZbOV8LpACfq7UAOGTCSubGYoKA3OyiLqbVS9Unb/v7JIUsshEEZ8
 6bAyYd1QyZ07uuaw+8G6I+PkKcSARblHGbyZ45lkdHuEgZiBjpqXE6EylLxEZCpAw07a
 4uiIksNJA2DFkhcZosXe1QwOwiPWy66E9C8gT6Ac6q5LApa57zNQW5+3HYxmZA5SpCTy fA== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0b-001b2d01.pphosted.com with ESMTP id 3b19b517ue-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sun, 12 Sep 2021 01:11:34 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 18C58R6R023642;
        Sun, 12 Sep 2021 01:11:34 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
        by mx0b-001b2d01.pphosted.com with ESMTP id 3b19b517u8-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sun, 12 Sep 2021 01:11:33 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
        by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 18C57mx7013492;
        Sun, 12 Sep 2021 05:11:32 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
        by ppma03ams.nl.ibm.com with ESMTP id 3b0m38nqm9-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Sun, 12 Sep 2021 05:11:32 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
        by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 18C573pY24117738
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Sun, 12 Sep 2021 05:07:03 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id AA5A7A405B;
        Sun, 12 Sep 2021 05:11:29 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 20800A4054;
        Sun, 12 Sep 2021 05:11:29 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.169.54])
        by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Sun, 12 Sep 2021 05:11:29 +0000 (GMT)
Date:   Sun, 12 Sep 2021 08:11:27 +0300
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Mike Rapoport <rppt@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] memfd_secret.2: add NOTES section ...
Message-ID: <YT2L/0KjIW2jDwFH@linux.ibm.com>
References: <20210902075045.1237905-1-rppt@kernel.org>
 <29fa3a87-77d6-9f41-821b-55ae8a611cbe@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <29fa3a87-77d6-9f41-821b-55ae8a611cbe@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: MYwcfC0Q29RsNi9VBNRRvJqJP5DRPiAU
X-Proofpoint-ORIG-GUID: MuI9K6rmh--gzrJoQQjsE1BNZMbHqqeP
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.687,Hydra:6.0.235,FMLib:17.0.607.475
 definitions=2020-10-13_15,2020-10-13_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 mlxscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109030001 definitions=main-2109120020
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, Sep 10, 2021 at 03:12:37PM +0200, Alejandro Colomar (man-pages) wrote:
> Hi Mike,
> 
> On 9/2/21 9:50 AM, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > ... that explains the rationale for the system call
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> 
> I found a few formatting/wording issues (see below; but I fixed them myself,
> so you don't need to worry about them).

Thanks a lot!

> In general, I understood the rationale for the system call,
> so I applied the patch to my tree.  However, there are some parts that I
> didn't understand well, mostly related to kernel internals, but since
> Michael knows more about those, I expect him to review those again when I
> send him the patch.
 
> Thanks!
> 
> Alex
> 
> > ---
> >   man2/memfd_secret.2 | 61 +++++++++++++++++++++++++++++++++++++++++++++
> >   1 file changed, 61 insertions(+)
> > 
> > diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> > index f3380818e..869480b48 100644
> > --- a/man2/memfd_secret.2
> > +++ b/man2/memfd_secret.2
> > @@ -147,6 +147,67 @@ system call first appeared in Linux 5.14.
> >   The
> >   .BR memfd_secret ()
> >   system call is Linux-specific.
> > +.SH NOTES
> > +.PP
> 
> Unnecessary .PP after .SH or .SS
> 
> > +The
> > +.BR memfd_secret ()
> > +system call is designed to allow a user-space process
> > +to create a range of memory that is inaccessible to anybody else -
> > +kernel included.
> > +There is no 100% guarantee that kernel won't be able to access
> > +memory ranges backed by
> > +.BR memfd_secret ()
> > +in any circumstances, but nevertheless,
> > +it is much harder to exfiltrate data from these regions.
> > +.PP
> > +The
> 
> /The/d
> 
> > +.BR memfd_secret ()
> > +provides the following protections:
> > +.IP \(bu 3
> > +Enhanced protection
> > +(in conjunction with all the other in-kernel attack prevention systems)
> > +against ROP attacks.
> > +Absence of any in-kernel primitive for accessing memory backed by
> > +.BR memfd_secret ()
> > +means that one-gadget ROP attack
> > +can't work to perform data exfiltration.
> > +The attacker would need to find enough ROP gadgets
> > +to reconstruct the missing page table entries,
> > +which significantly increases difficulty of the attack,
> > +especially when other protections like the kernel stack size limit
> > +and address space layout randomization are in place.
> > +.IP \(bu
> > +Prevent cross-process userspace memory exposures.
> 
> s/userspace/user-space/
> 
> > +Once a region for a
> > +.BR memfd_secret ()
> > +memory mapping is allocated,
> > +the user can't accidentally pass it into the kernel
> > +to be transmitted somewhere.
> > +The memory pages in this region cannot be accessed via the direct map
> > +and they are disallowed in get_user_pages.
> > +.IP \(bu
> > +Harden against exploited kernel flaws.
> > +In order to access memory areas backed by
> > +.BR memfd_secret(),
> > +a kernel-side attack would need to
> > +either walk the page tables and create new ones,
> > +or spawn a new privileged userspace process to perform
> 
> s/userspace/user-space/
> 
> > +secrets exfiltration using
> > +.BR ptrace (2).
> > +.PP
> > +The way
> > +.BR memfd_secret ()
> > +allocates and locks the memory may impact overall system performance,
> > +therefore the system call is disabled by default and only available
> > +if the system administrator turned it on using
> > +"secretmem.enable=y" kernel parameter.
> > +.PP
> > +To prevent potiential data leaks of memory regions backed by
> > +.BR memfd_secret()
> > +from a hybernation image,
> > +hybernation is prevented when there are active
> > +.BR memfd_secret ()
> > +users.
> >   .SH SEE ALSO
> >   .BR fcntl (2),
> >   .BR ftruncate (2),
> > 
> 
> 
> -- 
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/

-- 
Sincerely yours,
Mike.
