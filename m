Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBBF83ECDF7
	for <lists+linux-man@lfdr.de>; Mon, 16 Aug 2021 07:20:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230262AbhHPFUc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Aug 2021 01:20:32 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:35866 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229523AbhHPFUc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Aug 2021 01:20:32 -0400
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 17G55bQM070767;
        Mon, 16 Aug 2021 01:20:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : content-type : in-reply-to :
 mime-version; s=pp1; bh=2fLQgiVSqZNdqNnBFJlnjTomx5kNE7gQNUncjlNgU00=;
 b=pZP4DjzurrfnFnmg9OFJFU197iEsW0CnYqmt6mwBZxTCZjetUOmunhR8F12NKcTCzs9S
 3bYs3JqQgJr44ZSqjnf+XvVW3YMQnOwR15UgqkTKY2tH/2jrGjx5mCRSJ2awmGPneXvT
 BYzSy8WzB+DHUAut05UQar464lS9osC054Lk2ronEKZsFmYlza8+9U/huOermq2rpPE1
 dyGLjsS8uqyTZcC6svFp7dZgkwMNkss55Z76NDCTr0POsP3khn9MBV839yZYk0SaGLbx
 Yc0mFqPz65Eckf8rS+k4i2TbboHwfqbLMA/SL5wszi7EI9nVgiBqkVxhPQUuahchs8HZ Mg== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 3aetwsuxpp-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 16 Aug 2021 01:20:00 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 17G56Pur073050;
        Mon, 16 Aug 2021 01:20:00 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
        by mx0a-001b2d01.pphosted.com with ESMTP id 3aetwsuxp8-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 16 Aug 2021 01:20:00 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
        by ppma06ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 17G5DI8T021200;
        Mon, 16 Aug 2021 05:19:57 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
        by ppma06ams.nl.ibm.com with ESMTP id 3ae53htfy7-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 16 Aug 2021 05:19:57 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
        by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 17G5JthE57278876
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 16 Aug 2021 05:19:55 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 60A1C11C05B;
        Mon, 16 Aug 2021 05:19:55 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id E066011C04C;
        Mon, 16 Aug 2021 05:19:54 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.188.145])
        by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Mon, 16 Aug 2021 05:19:54 +0000 (GMT)
Date:   Mon, 16 Aug 2021 08:19:53 +0300
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Mike Rapoport <rppt@kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v3] man2: new page describing memfd_secret() system call
Message-ID: <YRn1eWZ+1hlk2+Go@linux.ibm.com>
References: <20210815064648.300529-1-rppt@kernel.org>
 <097cea8d-70d1-3b9d-f02a-9a9cccae9f2d@gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <097cea8d-70d1-3b9d-f02a-9a9cccae9f2d@gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: sc2dXYAFQZ_FY3WFCPYTdYcRTn3aKFFn
X-Proofpoint-ORIG-GUID: btzZZz2mp245ZJPxcG8gx_iHgqoXnQqD
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-08-16_01:2021-08-13,2021-08-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 suspectscore=0 priorityscore=1501 spamscore=0 adultscore=0
 lowpriorityscore=0 mlxscore=0 phishscore=0 bulkscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108160033
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Aug 16, 2021 at 02:29:33AM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Mike,
> 
> Thanks for this update!
> 
> On 8/15/21 8:46 AM, Mike Rapoport wrote:
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> > v3:
> > * Incorporate Michael's feedback except the extensive NOTES section. 
> 
> Hmmmm :-|
> 
> > v2: https://lore.kernel.org/linux-api/20210729082900.1581359-1-rppt@kernel.org
> > Address Alex's comments:
> > * update synopsis to match new style for syscalls without a wrapper
> > * drop note about absence of glibc wrapper
> > * update formatting
> > 
> > v1: https://lore.kernel.org/linux-api/20210727124140.1487079-1-rppt@kernel.org
> > 
> > 
> > 
> >  man2/memfd_secret.2 | 154 ++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 154 insertions(+)
> >  create mode 100644 man2/memfd_secret.2
> > 
> > diff --git a/man2/memfd_secret.2 b/man2/memfd_secret.2
> > new file mode 100644
> > index 000000000..188c547bf
> > --- /dev/null
> > +++ b/man2/memfd_secret.2
> > @@ -0,0 +1,154 @@
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
> > +memfd_secret \- create an anonymous RAM-based file
> > +to access secret memory regions
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
> I suggested:
> s/anonymous/anonymous/ RAM-based/
> 
> was there a reason not to do that?
 
It seems I've just missed this one.
Would you like me to send v4 or you can update while applying?

> > +The file provides a way to create and access memory regions
> > +with stronger protection than usual RAM-based files and
> > +anonymous memory mappings.

...

> > +.SH SEE ALSO
> > +.BR fcntl (2),
> > +.BR ftruncate (2),
> > +.BR mlock (2),
> > +.BR mmap (2),
> > +.BR setrlimit (2)
> Thanks! The page looks much better, but sill, that NOTES section
> that I proposed [1] would be really useful, I think. What are
> the chances that you could put that together?

I will, hopefully I'll be able to find the time for this in the next few
weeks.
 
> Cheers,
> 
> Michael
> 
> [1] From my earlier mail:
> I feel like this page could benefit from a NOTES section
> that explains the rationale for the system call. This could
> note that the fact that the region is not accessible from the
> kernel removes a whole class of security attacks.

-- 
Sincerely yours,
Mike.
