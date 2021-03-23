Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4A803459AD
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 09:28:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbhCWI14 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 04:27:56 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:25496 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229500AbhCWI1q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 04:27:46 -0400
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12N84K52024266;
        Tue, 23 Mar 2021 04:27:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=LUgqbQvwR+sfvIaSMzft1kWLvPHosRvGCoObmhMnUQI=;
 b=qFGu+AfuXUtFzCsz3Byw9cxakJDw09yyFf7HfvGRn6NiouNUxMVdqcJ0bVCLDdW7Uux/
 QNDUKrloYEVyBN/zasCuBi999pHHPIv6rhrToZFHZOSBLtERt6tKefKsaboI322W/Ufq
 QIMsHeidwaqIxh66mgYlC7BJWumgs5BlNhy4avIZmkSS3tVyNqiH8VmjCJ81KfjX4X1n
 c0cZrl2QtegzfOBWxMuyecu7W/kx2NtB8wLooM2gd17vCH3gKp/i6V1+VhdBkURSCsDz
 aQ9+nahI39S3qax8rllWWoeGOk62KgTddqiBZoQFufzAivWVvN9bFakYFNuILAErwvFX EQ== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37dxjwk124-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 23 Mar 2021 04:27:43 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 12N85ZGS029957;
        Tue, 23 Mar 2021 04:27:43 -0400
Received: from ppma06fra.de.ibm.com (48.49.7a9f.ip4.static.sl-reverse.com [159.122.73.72])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37dxjwk111-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 23 Mar 2021 04:27:42 -0400
Received: from pps.filterd (ppma06fra.de.ibm.com [127.0.0.1])
        by ppma06fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12N8RLdn001885;
        Tue, 23 Mar 2021 08:27:40 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
        by ppma06fra.de.ibm.com with ESMTP id 37d9a61mrh-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 23 Mar 2021 08:27:40 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
        by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12N8RJAX36372978
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 23 Mar 2021 08:27:20 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id BBBCBA405B;
        Tue, 23 Mar 2021 08:27:37 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 7700DA405C;
        Tue, 23 Mar 2021 08:27:36 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.165.64])
        by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Tue, 23 Mar 2021 08:27:36 +0000 (GMT)
Date:   Tue, 23 Mar 2021 10:27:34 +0200
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mm@kvack.org, Andrea Arcangeli <aarcange@redhat.com>,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Nadav Amit <nadav.amit@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v4 1/4] userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Message-ID: <YFmmdklW9wvs4ep3@linux.ibm.com>
References: <20210322220848.52162-1-peterx@redhat.com>
 <20210322220848.52162-2-peterx@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210322220848.52162-2-peterx@redhat.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-23_02:2021-03-22,2021-03-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 spamscore=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 mlxscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103230057
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Mar 22, 2021 at 06:08:45PM -0400, Peter Xu wrote:
> UFFD_FEATURE_THREAD_ID is supported since Linux 4.14.
> 
> Signed-off-by: Peter Xu <peterx@redhat.com>
> ---
>  man2/userfaultfd.2 | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
> index e7dc9f813..555e37409 100644
> --- a/man2/userfaultfd.2
> +++ b/man2/userfaultfd.2
> @@ -77,6 +77,13 @@ When the last file descriptor referring to a userfaultfd object is closed,
>  all memory ranges that were registered with the object are unregistered
>  and unread events are flushed.
>  .\"
> +.PP
> +Since Linux 4.14, userfaultfd page fault message can selectively embed faulting
> +thread ID information into the fault message.
> +One needs to enable this feature explicitly using the
> +.BR UFFD_FEATURE_THREAD_ID
> +feature bit when initializing the userfaultfd context.
> +By default, thread ID reporting is diabled.

				     ^ disabled :)
>  .SS Usage
>  The userfaultfd mechanism is designed to allow a thread in a multithreaded
>  program to perform user-space paging for the other threads in the process.
> @@ -229,6 +236,9 @@ struct uffd_msg {
>          struct {
>              __u64 flags;    /* Flags describing fault */
>              __u64 address;  /* Faulting address */
> +            union {
> +                __u32 ptid; /* Thread ID of the fault */
> +            } feat;
>          } pagefault;
> 
>          struct {            /* Since Linux 4.11 */
> @@ -358,6 +368,9 @@ otherwise it is a read fault.
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
