Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC77CEA66F
	for <lists+linux-man@lfdr.de>; Wed, 30 Oct 2019 23:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727250AbfJ3Wjg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Oct 2019 18:39:36 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:48042 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726268AbfJ3Wjf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Oct 2019 18:39:35 -0400
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x9UMb2VT080595
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 18:39:35 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2vyggjwp1x-1
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
        for <linux-man@vger.kernel.org>; Wed, 30 Oct 2019 18:39:34 -0400
Received: from localhost
        by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
        for <linux-man@vger.kernel.org> from <rppt@linux.ibm.com>;
        Wed, 30 Oct 2019 22:39:32 -0000
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
        by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
        (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
        Wed, 30 Oct 2019 22:39:30 -0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
        by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x9UMdSHn46268850
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Wed, 30 Oct 2019 22:39:29 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id DB735A407E;
        Wed, 30 Oct 2019 22:39:28 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 11E86A406B;
        Wed, 30 Oct 2019 22:39:27 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.205.249])
        by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
        Wed, 30 Oct 2019 22:39:26 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation); Wed, 30 Oct 2019 23:39:24 +0100
From:   Mike Rapoport <rppt@linux.ibm.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH] memfd_create.2: fix typos
Date:   Wed, 30 Oct 2019 23:39:18 +0100
X-Mailer: git-send-email 2.7.4
X-TM-AS-GCONF: 00
x-cbid: 19103022-0016-0000-0000-000002BF4820
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19103022-0017-0000-0000-00003320A801
Message-Id: <1572475158-14919-1-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-10-30_09:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=901 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1910300201
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 man2/memfd_create.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/memfd_create.2 b/man2/memfd_create.2
index 15b1362..9be8f3c 100644
--- a/man2/memfd_create.2
+++ b/man2/memfd_create.2
@@ -221,7 +221,7 @@ used with the file-sealing APIs provided by
 .PP
 The
 .BR memfd_create ()
-system call also has uses without file sealing
+system call also have uses without file sealing
 (which is why file-sealing is disabled, unless explicitly requested with the
 .BR MFD_ALLOW_SEALING
 flag).
@@ -254,7 +254,7 @@ signal.)
 Dealing with untrusted peers imposes extra complexity on
 code that employs shared memory.
 Memory sealing enables that extra complexity to be eliminated,
-by allowing a process to operate secure in the knowledge that
+by allowing a process to operate securely in the knowledge that
 its peer can't modify the shared memory in an undesired fashion.
 .PP
 An example of the usage of the sealing mechanism is as follows:
-- 
2.7.4

