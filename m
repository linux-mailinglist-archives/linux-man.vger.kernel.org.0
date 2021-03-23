Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E4993459B6
	for <lists+linux-man@lfdr.de>; Tue, 23 Mar 2021 09:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229622AbhCWIbs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Mar 2021 04:31:48 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:32580 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229576AbhCWIbn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Mar 2021 04:31:43 -0400
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 12N84bZZ142104;
        Tue, 23 Mar 2021 04:31:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=RgkkpCY1i5Xe5JLu7SA08Rzz6GvG3yThCD9je1unTSo=;
 b=Fqxzxa+B+hxQNRp9z9861gD6Pth90FL4z2Fx97u//S25e22wSm3QTm1g5Mya5+LtfYL9
 +yyxRjlZg5uMSUp5Dx/MXq62e6eLe1lpt7gOGPS4TLpXOMSpOMimlc66mv0JI9Xlw2Yj
 vsdQ/RGBLo8RHTJtULJW2BrlzxD6cVYEwhnscRxLDqfxMoZDlwaFnLXWlVs4x8x76a7j
 1wSuHdbnGE32q81V+s0lO9y+Q86pgsAnzWPNEAN7bxxNcS3sCk9Bb+S+I5dK6R01k5Lo
 Rdy863IVOVIa64SLZJALO+u8ktcUk+LyH2XXZOSCfCTkmFpONDsi2J4hdQzl78vUb3Cd Hw== 
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37dx4at77t-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 23 Mar 2021 04:31:40 -0400
Received: from m0098393.ppops.net (m0098393.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 12N85PGi145585;
        Tue, 23 Mar 2021 04:31:40 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
        by mx0a-001b2d01.pphosted.com with ESMTP id 37dx4at776-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 23 Mar 2021 04:31:40 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
        by ppma06ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 12N8Qkb9008395;
        Tue, 23 Mar 2021 08:31:38 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
        by ppma06ams.nl.ibm.com with ESMTP id 37d9bmk4q6-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 23 Mar 2021 08:31:37 +0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com [9.149.105.60])
        by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 12N8VZAM1114874
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 23 Mar 2021 08:31:35 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id A731A42041;
        Tue, 23 Mar 2021 08:31:35 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 544524204B;
        Tue, 23 Mar 2021 08:31:34 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.145.165.64])
        by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Tue, 23 Mar 2021 08:31:34 +0000 (GMT)
Date:   Tue, 23 Mar 2021 10:31:31 +0200
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
Subject: Re: [PATCH v4 0/4] man2: udpate mm/userfaultfd manpages to latest
Message-ID: <YFmnYxrfz3qAzfR9@linux.ibm.com>
References: <20210322220848.52162-1-peterx@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210322220848.52162-1-peterx@redhat.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-23_02:2021-03-22,2021-03-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 spamscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 adultscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103230057
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Mar 22, 2021 at 06:08:44PM -0400, Peter Xu wrote:
> v4:
> - Fixed a few "subordinate clauses" (SC) cases [Alex]
> - Reword in ioctl_userfaultfd.2 to use bold font for the two modes referenced,
>   so as to be clear on what is "both" referring to [Alex]
> 
> v3:
> - Don't use "Currently", instead add "(since x.y)" mark where proper [Alex]
> - Always use semantic newlines across the whole patchset [Alex]
> - Use quote when possible, rather than escapes [Alex]
> - Fix one missing replacement of ".BR" -> ".B" [Alex]
> - Some other trivial rephrases here and there when fixing up above
> 
> v2 changes:
> - Fix wordings as suggested [MikeR]
> - convert ".BR" to ".B" where proper for the patchset [Alex]
> - rearrange a few lines in the last two patches where they got messed up
> - document more things, e.g. UFFDIO_COPY_MODE_WP; and also on how to resolve a
>   wr-protect page fault.
> 
> There're two features missing in current manpage, namely:
> 
>   (1) Userfaultfd Thread-ID feature
>   (2) Userfaultfd write protect mode
> 
> There's also a 3rd one which was just contributed from Axel - Axel, I think it
> would be great if you can add that part too, probably after the whole
> hugetlbfs/shmem minor mode reaches the linux master branch.
> 
> Please review, thanks.
> 
> Peter Xu (4):
>   userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>   userfaultfd.2: Add write-protect mode
>   ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
>   ioctl_userfaultfd.2: Add write-protect mode docs
> 
>  man2/ioctl_userfaultfd.2 |  89 ++++++++++++++++++++++++++++-
>  man2/userfaultfd.2       | 117 ++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 201 insertions(+), 5 deletions(-)
 
Acked-by: Mike Rapoport <rppt@linux.ibm.com>

> -- 
> 2.26.2
> 
> 

-- 
Sincerely yours,
Mike.
