Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C22B1EA671
	for <lists+linux-man@lfdr.de>; Wed, 30 Oct 2019 23:40:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726765AbfJ3Wkw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Oct 2019 18:40:52 -0400
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]:14230 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726268AbfJ3Wkv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Oct 2019 18:40:51 -0400
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x9UMb3LY111571
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 18:40:50 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2vyj3jjd2g-1
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 18:40:50 -0400
Received: from localhost
        by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
        for <linux-man@vger.kernel.org> from <rppt@linux.ibm.com>;
        Wed, 30 Oct 2019 22:40:48 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
        by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
        (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
        Wed, 30 Oct 2019 22:40:46 -0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
        by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x9UMejHL36569290
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 30 Oct 2019 22:40:45 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 010D04C064;
        Wed, 30 Oct 2019 22:40:45 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id D53064C074;
        Wed, 30 Oct 2019 22:40:43 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.205.249])
        by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Wed, 30 Oct 2019 22:40:43 +0000 (GMT)
Date:   Wed, 30 Oct 2019 23:40:40 +0100
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] memfd_create.2: fix typos
References: <1572475158-14919-1-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1572475158-14919-1-git-send-email-rppt@linux.ibm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19103022-0020-0000-0000-000003811DD2
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19103022-0021-0000-0000-000021D72FC8
Message-Id: <20191030224039.GB13189@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-10-30_09:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910300201
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Oct 30, 2019 at 11:39:18PM +0100, Mike Rapoport wrote:
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---
>  man2/memfd_create.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
> index 15b1362..9be8f3c 100644
> --- a/man2/memfd_create.2
> +++ b/man2/memfd_create.2
> @@ -221,7 +221,7 @@ used with the file-sealing APIs provided by
>  .PP
>  The
>  .BR memfd_create ()
> -system call also has uses without file sealing
> +system call also have uses without file sealing

Oops, somehow I've misread it as "can has uses" :(

>  (which is why file-sealing is disabled, unless explicitly requested with the
>  .BR MFD_ALLOW_SEALING
>  flag).
> @@ -254,7 +254,7 @@ signal.)
>  Dealing with untrusted peers imposes extra complexity on
>  code that employs shared memory.
>  Memory sealing enables that extra complexity to be eliminated,
> -by allowing a process to operate secure in the knowledge that
> +by allowing a process to operate securely in the knowledge that
>  its peer can't modify the shared memory in an undesired fashion.
>  .PP
>  An example of the usage of the sealing mechanism is as follows:
> -- 
> 2.7.4
> 

-- 
Sincerely yours,
Mike.

