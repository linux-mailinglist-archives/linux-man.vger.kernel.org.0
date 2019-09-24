Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB438BC89F
	for <lists+linux-man@lfdr.de>; Tue, 24 Sep 2019 15:12:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439092AbfIXNMV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Sep 2019 09:12:21 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:17114 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2439036AbfIXNMV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Sep 2019 09:12:21 -0400
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x8OD6eOo020153;
        Tue, 24 Sep 2019 09:12:14 -0400
Received: from pps.reinject (localhost [127.0.0.1])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2v7jm2kqdw-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 24 Sep 2019 09:12:14 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
        by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x8OD7BjS025410;
        Tue, 24 Sep 2019 09:12:13 -0400
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com [169.62.189.11])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2v7jm2kqdb-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 24 Sep 2019 09:12:13 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
        by ppma03dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x8ODAxhI009979;
        Tue, 24 Sep 2019 13:12:12 GMT
Received: from b01cxnp23033.gho.pok.ibm.com (b01cxnp23033.gho.pok.ibm.com [9.57.198.28])
        by ppma03dal.us.ibm.com with ESMTP id 2v5bg73u85-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Tue, 24 Sep 2019 13:12:12 +0000
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com [9.57.199.111])
        by b01cxnp23033.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x8ODCCWa53674252
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Tue, 24 Sep 2019 13:12:12 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id E834EAC05E;
        Tue, 24 Sep 2019 13:12:11 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 911B8AC05F;
        Tue, 24 Sep 2019 13:12:11 +0000 (GMT)
Received: from localhost (unknown [9.86.226.90])
        by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
        Tue, 24 Sep 2019 13:12:11 +0000 (GMT)
From:   Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, benh@kernel.crashing.org,
        mpe@ellerman.id.au,
        Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
Subject: [PATCH v2] getauxval.3: Add new cache geometry entries
Date:   Tue, 24 Sep 2019 10:11:42 -0300
Message-Id: <20190924131142.6126-1-rzinsly@linux.vnet.ibm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <9f0ee256-bc65-c850-a8ae-a833ca7a124d@gmail.com>
References: <9f0ee256-bc65-c850-a8ae-a833ca7a124d@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-09-24_05:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1909240130
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add entries for the new cache geometry values of the auxiliary vectors
that got included in the kernel.

Signed-off-by: Raphael Moreira Zinsly <rzinsly@linux.vnet.ibm.com>
---
 man3/getauxval.3 | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/man3/getauxval.3 b/man3/getauxval.3
index 794bc97b5..b78a63225 100644
--- a/man3/getauxval.3
+++ b/man3/getauxval.3
@@ -123,6 +123,34 @@ The instruction cache block size.
 .\" .TP
 .\" .BR AT_NOTELF
 .TP
+.\" Kernel commit 98a5f361b8625c6f4841d6ba013bbf0e80d08147
+.BR AT_L1D_CACHEGEOMETRY
+Geometry of the L1 data cache, encoded with the cache line size in
+bytes in the bottom 16 bits and the cache associativity in the next 16
+bits. The associativity is such that if N is the 16-bit value, the cache
+is N-way set associative.
+.TP
+.BR AT_L1D_CACHESIZE
+The L1 data cache size.
+.TP
+.BR AT_L1I_CACHEGEOMETRY
+Geometry of the L1 instruction cache, encoded as for AT_L1D_CACHEGEOMETRY.
+.TP
+.BR AT_L1I_CACHESIZE
+The L1 instruction cache size.
+.TP
+.BR AT_L2_CACHEGEOMETRY
+Geometry of the L2 cache, encoded as for AT_L1D_CACHEGEOMETRY.
+.TP
+.BR AT_L2_CACHESIZE
+The L2 cache size.
+.TP
+.BR AT_L3_CACHEGEOMETRY
+Geometry of the L3 cache, encoded as for AT_L1D_CACHEGEOMETRY.
+.TP
+.BR AT_L3_CACHESIZE
+The L3 cache size.
+.TP
 .BR AT_PAGESZ
 The system page size (the same value returned by
 .IR sysconf(_SC_PAGESIZE) ).
-- 
2.21.0

