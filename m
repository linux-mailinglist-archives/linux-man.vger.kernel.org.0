Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61BCF32CCEE
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 07:42:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235261AbhCDGj2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Mar 2021 01:39:28 -0500
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:28780 "EHLO
        mx0b-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234419AbhCDGi7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Mar 2021 01:38:59 -0500
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1246Ylkj071917;
        Thu, 4 Mar 2021 01:38:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=gI10rkMjzBi2LcEOU4BEaVxWyh2eksl/IP2MG8DhAMU=;
 b=AN01x6vs1Z3qLYxQPSiYbFI6OlDISP0Mtd0+1MpFJGmqssJQ9epUt5s8cxr+8zVjsjww
 8CtxG7mgkBALxzEXfIP0M+Rde68iCtx3mXlRdiVE7B+QrMkVktAIEiq6Ba5WLKwyxpS5
 lFc4Fo9TTz7+0TeGYtGS56idNFw/hWFQmyJPrY3nvTS5nW1AhSgGmWcjY/41BTRht3Uy
 84QdGVkisUcwXdUDBnRTDOGQfNDZfKLu2pc/pqbOoIvLX6ElNbS+3c0whH0xigUfGudR
 dTTOqPkLKwo0729SM26QgPFr69ODQ6tWT5jkLyJATTZt0TT0mOApRISnonmTaJE5t/xB sQ== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 372rk4u04p-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 04 Mar 2021 01:38:17 -0500
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 1246aKDF076485;
        Thu, 4 Mar 2021 01:38:17 -0500
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
        by mx0a-001b2d01.pphosted.com with ESMTP id 372rk4u047-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 04 Mar 2021 01:38:17 -0500
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
        by ppma04fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 1246Xq4J025167;
        Thu, 4 Mar 2021 06:38:15 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
        by ppma04fra.de.ibm.com with ESMTP id 37150cs864-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 04 Mar 2021 06:38:15 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
        by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1246cDE440173986
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 4 Mar 2021 06:38:13 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 161F84203F;
        Thu,  4 Mar 2021 06:38:13 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id D645442045;
        Thu,  4 Mar 2021 06:38:11 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.23.212])
        by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Thu,  4 Mar 2021 06:38:11 +0000 (GMT)
Date:   Thu, 4 Mar 2021 08:38:09 +0200
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
Subject: Re: [PATCH 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Message-ID: <YECAUdnf1Xw5qKb8@linux.ibm.com>
References: <20210304015947.517713-1-peterx@redhat.com>
 <20210304015947.517713-2-peterx@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210304015947.517713-2-peterx@redhat.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-04_02:2021-03-03,2021-03-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1011 suspectscore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=999 impostorscore=0 mlxscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103040027
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Mar 03, 2021 at 08:59:44PM -0500, Peter Xu wrote:
> UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man2/userfaultfd.2 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index e7dc9f813..2d14effc6 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -77,6 +77,12 @@ When the last file descriptor referring to a userfaultfd object is closed,
>  all memory ranges that were registered with the object are unregistered
>  and unread events are flushed.
>  .\"
> +.PP
> +Since Linux 4.14, userfaultfd page fault message can selectively embed fault

                                                          Maybe faulting? ^

> +thread ID information into the fault message.  One needs to enable this feature
> +explicitly using the
> +.BR UFFD_FEATURE_THREAD_ID
> +feature bit when initializing the userfaultfd context, otherwise disabled.

             "... otherwise thread ID reporting is disabled" ^

>  .SS Usage
>  The userfaultfd mechanism is designed to allow a thread in a multithreaded
>  program to perform user-space paging for the other threads in the process.
> @@ -229,6 +235,9 @@ struct uffd_msg {
>          struct {
>              __u64 flags;    /* Flags describing fault */
>              __u64 address;  /* Faulting address */
> +            union {
> +                __u32 ptid; /* Thread ID of the fault */
> +            } feat;
>          } pagefault;
> 
>          struct {            /* Since Linux 4.11 */
> @@ -358,6 +367,9 @@ otherwise it is a read fault.
>  .\" UFFD_PAGEFAULT_FLAG_WP is not yet supported.
>  .RE
>  .TP
> +.I pagefault.feat.pid
> +The thread ID that triggered the page fault.
> +.TP
>  .I fork.ufd
>  The file descriptor associated with the userfault object
>  created for the child created by
> -- 
> 2.26.2
> 

-- 
Sincerely yours,
Mike.
