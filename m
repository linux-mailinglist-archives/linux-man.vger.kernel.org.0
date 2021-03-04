Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ACB4632CD29
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 07:48:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235718AbhCDGsA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 01:48:00 -0500
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:31430 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S235746AbhCDGrt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 01:47:49 -0500
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
        by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1246j0to002099;
        Thu, 4 Mar 2021 01:47:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=24SFOh+LE2tE1IzvQCJFYdUPilDPnB3cCip8hsydvcs=;
 b=s3zkx7/iKviTgqWAlthyr4dFcpH4YemkjKog9aWK4zZ1hx02pSoOTWVJUg7Bn9E+9lWT
 n7BqL0w7F+5RUfdo/Y2/0pTrdlBPD6Lp+NswXBHpFiv0otFdEsJXRCfIk9bCbexAwBc3
 HL+19fTOV61hrrlIXz/F81omU3xVijJkeypYAu3PK/FLytLPK/qUZcZIJL6gkBT2jVur
 jKldCR67OvdD35ykZlKg688aVeIFlWKJDyE6W9v3Rn7xQD8k+opXbpgkzSk98mGdqZX4
 3fd+EnjoV7Ml13+YC4t6dgwQMOMranXj5wCDUIvklysWcjITsbAG1YF1OzSHFSN2boOQ 6g== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0b-001b2d01.pphosted.com with ESMTP id 372tj681fq-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 04 Mar 2021 01:47:07 -0500
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 1246jTOh003705;
        Thu, 4 Mar 2021 01:47:06 -0500
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
        by mx0b-001b2d01.pphosted.com with ESMTP id 372tj681f4-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 04 Mar 2021 01:47:06 -0500
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
        by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 1246do5K031154;
        Thu, 4 Mar 2021 06:47:04 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
        by ppma03ams.nl.ibm.com with ESMTP id 371162jhje-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 04 Mar 2021 06:47:04 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
        by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1246l2TS39387628
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 4 Mar 2021 06:47:02 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 83D64AE058;
        Thu,  4 Mar 2021 06:47:02 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 4AC2CAE053;
        Thu,  4 Mar 2021 06:47:01 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.23.212])
        by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Thu,  4 Mar 2021 06:47:01 +0000 (GMT)
Date:   Thu, 4 Mar 2021 08:46:59 +0200
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        linux-kernel@vger.kernel.org,
        Linux MM Mailing List <linux-mm@kvack.org>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrea Arcangeli <aarcange@redhat.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 2/4] userfaultfd.2: Add write-protect mode
Message-ID: <YECCY8MzqAvE44e4@linux.ibm.com>
References: <20210304015947.517713-1-peterx@redhat.com>
 <20210304015947.517713-3-peterx@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210304015947.517713-3-peterx@redhat.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-04_02:2021-03-03,2021-03-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 clxscore=1015 malwarescore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 adultscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2103040025
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 03, 2021 at 08:59:45PM -0500, Peter Xu wrote:
> Write-protect mode is supported starting from Linux 5.7.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man2/userfaultfd.2 | 88 ++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 86 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index 2d14effc6..8e1602d62 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -78,6 +78,28 @@ all memory ranges that were registered with the object are unregistered
>  and unread events are flushed.
>  .\"
>  .PP
> +Currently, userfaultfd supports two modes of registration:
> +.TP
> +.BR UFFDIO_REGISTER_MODE_MISSING
> +When registered with
> +.BR UFFDIO_REGISTER_MODE_MISSING
> +mode, the userspace will receive a page fault message when a missing page is
> +accessed.  The faulted thread will be stopped from execution until the page
> +fault is resolved from the userspace by either an
> +.BR UFFDIO_COPY
> +or an
> +.BR UFFDIO_ZEROPAGE
> +ioctl.
> +.TP
> +.BR UFFDIO_REGISTER_MODE_WP
> +When registered with
> +.BR UFFDIO_REGISTER_MODE_WP
> +mode, the userspace will receive a page fault message when a write-protected
> +page is written.  The faulted thread will be stopped from execution until the
> +userspace un-write-protect the page using an
> +.BR UFFDIO_WRITEPROTECT
> +ioctl.
> +.PP

I'd add a sentence about combining the modes together. Something like

"Both modes can be enabled together for the same memory range"

>  Since Linux 4.14, userfaultfd page fault message can selectively embed fault
>  thread ID information into the fault message.  One needs to enable this feature
>  explicitly using the
> @@ -143,6 +165,16 @@ single threaded non-cooperative userfaultfd manager implementations.
>  .\" and limitations remaining in 4.11
>  .\" Maybe it's worth adding a dedicated sub-section...
>  .\"
> +.PP
> +Starting from Linux 5.7, userfaultfd is able to do synchronous page dirty
> +tracking using the new write-protection register mode.  One should check
> +against the feature bit
> +.B UFFD_FEATURE_PAGEFAULT_FLAG_WP
> +before using this feature.  Similar to the original userfaultfd missing mode,
> +the write-protect mode will generate an userfaultfd message when the protected
> +page is written.  The user needs to resolve the page fault by unprotecting the
> +faulted page and kick the faulted thread to continue.  For more information,
> +please read the "Userfaultfd write-protect mode" section below.
>  .SS Userfaultfd operation
>  After the userfaultfd object is created with
>  .BR userfaultfd (),
> @@ -218,6 +250,54 @@ userfaultfd can be used only with anonymous private memory mappings.
>  Since Linux 4.11,
>  userfaultfd can be also used with hugetlbfs and shared memory mappings.
>  .\"
> +.SS Userfaultfd write-protect mode
> +Since Linux 5.7, userfaultfd started to support write-protect mode.  The user

Maybe s/started to support/supports/

> +needs to first check availability of this feature using
> +.BR UFFDIO_API
> +ioctl against the feature bit
> +.BR UFFD_FEATURE_PAGEFAULT_FLAG_WP .
> +.PP
> +To register with userfaultfd write-protect mode, the user needs to send the
> +.BR UFFDIO_REGISTER
> +ioctl with mode
> +.BR UFFDIO_REGISTER_MODE_WP
> +set.  Note that it's legal to monitor the same memory range with multiple
> +modes.  For example, the user can do
> +.BR UFFDIO_REGISTER
> +with the mode set to
> +.BR UFFDIO_REGISTER_MODE_MISSING\ |\ UFFDIO_REGISTER_MODE_WP.
> +When there is only
> +.BR UFFDIO_REGISTER_MODE_WP
> +registered, the userspace will
> +.I not
> +receive any message when a missing page is written.  Instead, the userspace
> +will only receive a write-protect page fault message when an existing but
> +write-protected page got written.
> +.PP
> +After the
> +.BR UFFDIO_REGISTER
> +ioctl completed with
> +.BR UFFDIO_REGISTER_MODE_WP
> +mode set, one can write-protect any existing memory within the range using the
> +ioctl
> +.BR UFFDIO_WRITEPROTECT
> +where
> +.I uffdio_writeprotect.mode
> +should be set to
> +.BR UFFDIO_WRITEPROTECT_MODE_WP .
> +.PP
> +When a write-protect event happens, the userspace will receive a page fault
> +message whose
> +.I uffd_msg.pagefault.flags
> +will be with
> +.BR UFFD_PAGEFAULT_FLAG_WP
> +flag set.  Note: since only writes can trigger such kind of fault,
> +write-protect messages will always be with
> +.BR UFFD_PAGEFAULT_FLAG_WRITE
> +bit set too along with
> +.BR UFFD_PAGEFAULT_FLAG_WP .
> +.PP
> +Currently, write-protect mode only supports private anonymous memory.
>  .SS Reading from the userfaultfd structure
>  Each
>  .BR read (2)
> @@ -363,8 +443,12 @@ flag (see
>  .BR ioctl_userfaultfd (2))
>  and this flag is set, this a write fault;
>  otherwise it is a read fault.
> -.\"
> -.\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
> +.TP
> +.B UFFD_PAGEFAULT_FLAG_WP
> +If the address is in a range that was registered with the
> +.B UFFDIO_REGISTER_MODE_WP
> +flag, when this bit is set it means it's a write-protect fault.  Otherwise it's
> +a page missing fault.
>  .RE
>  .TP
>  .I pagefault.feat.pid
> -- 
> 2.26.2
> 

-- 
Sincerely yours,
Mike.
