Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 530757E591
	for <lists+linux-man@lfdr.de>; Fri,  2 Aug 2019 00:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729021AbfHAWYk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Aug 2019 18:24:40 -0400
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1]:32582 "EHLO
        mx0a-001b2d01.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1729068AbfHAWYk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Aug 2019 18:24:40 -0400
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
        by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x71MMHMu145439
        for <linux-man@vger.kernel.org>; Thu, 1 Aug 2019 18:24:39 -0400
Received: from e14.ny.us.ibm.com (e14.ny.us.ibm.com [129.33.205.204])
        by mx0a-001b2d01.pphosted.com with ESMTP id 2u457uqfpf-1
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
        for <linux-man@vger.kernel.org>; Thu, 01 Aug 2019 18:24:39 -0400
Received: from localhost
        by e14.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
        for <linux-man@vger.kernel.org> from <leonardo@linux.ibm.com>;
        Thu, 1 Aug 2019 23:24:38 +0100
Received: from b01cxnp23034.gho.pok.ibm.com (9.57.198.29)
        by e14.ny.us.ibm.com (146.89.104.201) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
        (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
        Thu, 1 Aug 2019 23:24:35 +0100
Received: from b01ledav006.gho.pok.ibm.com (b01ledav006.gho.pok.ibm.com [9.57.199.111])
        by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x71MOYRE46858598
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
        Thu, 1 Aug 2019 22:24:34 GMT
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id EE4AEAC059;
        Thu,  1 Aug 2019 22:24:33 +0000 (GMT)
Received: from b01ledav006.gho.pok.ibm.com (unknown [127.0.0.1])
        by IMSVA (Postfix) with ESMTP id 6018BAC05F;
        Thu,  1 Aug 2019 22:24:33 +0000 (GMT)
Received: from LeoBras.aus.stglabs.ibm.com (unknown [9.18.235.147])
        by b01ledav006.gho.pok.ibm.com (Postfix) with ESMTP;
        Thu,  1 Aug 2019 22:24:33 +0000 (GMT)
From:   Leonardo Bras <leonardo@linux.ibm.com>
To:     mtk.manpages@gmail.com
Cc:     Leonardo Bras <leonardo@linux.ibm.com>, linux-man@vger.kernel.org
Subject: [PATCH] vmsplice.2: SPLICE_F_GIFT became no-op
Date:   Thu,  1 Aug 2019 19:24:17 -0300
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
x-cbid: 19080122-0052-0000-0000-000003E7749E
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011535; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01240730; UDB=6.00654291; IPR=6.01022154;
 MB=3.00028000; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-01 22:24:36
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19080122-0053-0000-0000-000061EE6FCB
Message-Id: <20190801222417.14413-1-leonardo@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-01_09:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=656 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908010235
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

As explained in splice.2, SPLICE_F_MOVE became a no-op, and since it
is needed to use page gifting, it made SPLICE_F_GIFT a no-op too.

I took a look in current code, and found no use of this flag:
When enabled, it sets PIPE_BUF_FLAG_GIFT,which is only checked in
user_page_pipe_buf_steal, which is only used on
user_page_pipe_buf_ops, as a .steal component.

But, in the whole kernel code, there is no calling of a steal()
function, making me believe this flag is not used anymore.

Signed-off-by: Leonardo Bras <leonardo@linux.ibm.com>
---
 man2/vmsplice.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/vmsplice.2 b/man2/vmsplice.2
index 17834607b..94fb86142 100644
--- a/man2/vmsplice.2
+++ b/man2/vmsplice.2
@@ -123,6 +123,11 @@ if this flag is not specified, then a subsequent
 .B SPLICE_F_MOVE
 must copy the pages.
 Data must also be properly page aligned, both in memory and length.
+Starting in Linux 2.6.21, it is a no-op, because the
+.B SPLICE_F_MOVE
+also became a no-op on
+.BR splice (2)
+.
 .\" FIXME
 .\" It looks like the page-alignment requirement went away with
 .\" commit bd1a68b59c8e3bce45fb76632c64e1e063c3962d
-- 
2.20.1

