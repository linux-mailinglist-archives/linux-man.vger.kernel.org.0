Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 19896B407E
	for <lists+linux-man@lfdr.de>; Mon, 16 Sep 2019 20:43:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730076AbfIPSnm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Sep 2019 14:43:42 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:37500 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1730015AbfIPSnm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Sep 2019 14:43:42 -0400
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x8GIgds5065556;
        Mon, 16 Sep 2019 14:43:33 -0400
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2v2fg990ge-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 16 Sep 2019 14:43:32 -0400
Received: from m0098409.ppops.net (m0098409.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x8GIhQjG067818;
        Mon, 16 Sep 2019 14:43:32 -0400
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com [169.63.121.186])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2v2fg990fw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 16 Sep 2019 14:43:32 -0400
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
        by ppma03wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8GIYbbL027450;
        Mon, 16 Sep 2019 18:43:31 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com [9.57.198.28])
        by ppma03wdc.us.ibm.com with ESMTP id 2v0t3d2gef-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Mon, 16 Sep 2019 18:43:31 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com [9.57.199.111])
        by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x8GIhUg448693736
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Mon, 16 Sep 2019 18:43:30 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id D7281AC05B;
        Mon, 16 Sep 2019 18:43:30 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 9127EAC059;
        Mon, 16 Sep 2019 18:43:30 +0000 (GMT)
Received: from localhost (unknown [9.86.226.90])
        by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
        Mon, 16 Sep 2019 18:43:30 +0000 (GMT)
From:   Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, benh@kernel.crashing.org,
        mpe@ellerman.id.au,
        Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
Subject: [PATCH] getauxval.3: Add new cache geometry entries
Date:   Mon, 16 Sep 2019 15:41:36 -0300
Message-Id: <20190916184136.13621-1-rzinsly@linux.vnet.ibm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-09-16_07:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=889 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909160182
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add entries for the new cache geometry values of the auxiliary vectors
that got included in the kernel.

Signed-off-by: Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
---
 man3/getauxval.3 | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/man3/getauxval.3 b/man3/getauxval.3
index 794bc97b5..30f0757b5 100644
--- a/man3/getauxval.3
+++ b/man3/getauxval.3
@@ -123,6 +123,33 @@ The instruction cache block size.
 .\" .TP
 .\" .BR AT_NOTELF
 .TP
+.\" Kernel commit 98a5f361b8625c6f4841d6ba013bbf0e80d08147
+.BR AT_L1D_CACHEGEOMETRY
+Geometry of the L1 data cache, that is, line size and number
+of ways.
+.TP
+.BR AT_L1D_CACHESIZE
+The L1 data cache size.
+.TP
+.BR AT_L1I_CACHEGEOMETRY
+Geometry of the L1 instruction cache, that is, line size and
+number of ways.
+.TP
+.BR AT_L1I_CACHESIZE
+The L1 instruction cache size.
+.TP
+.BR AT_L2_CACHEGEOMETRY
+Geometry of the L2 cache, that is, line size and number of ways.
+.TP
+.BR AT_L2_CACHESIZE
+The L2 cache size.
+.TP
+.BR AT_L3_CACHEGEOMETRY
+Geometry of the L3 cache, that is, line size and number of ways.
+.TP
+.BR AT_L3_CACHESIZE
+The L3 cache size.
+.TP
 .BR AT_PAGESZ
 The system page size (the same value returned by
 .IR sysconf(_SC_PAGESIZE) ).
-- 
2.21.0

