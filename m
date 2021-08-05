Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65FBB3E0D5F
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 06:44:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbhHEEol (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 00:44:41 -0400
Received: from mail-eopbgr1320082.outbound.protection.outlook.com ([40.107.132.82]:36704
        "EHLO APC01-PU1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231143AbhHEEok (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 5 Aug 2021 00:44:40 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjFLOc0EgrXw938IEPAsMiXjY7a2+cATUckOvcxYtbcXPyZUfZseLrykdzkrQSZ1CJLui2rRCXHCYuY6G+/x+4Q17iRLx8Li0oR9DLTzkXzewQeqq2R2rVBdx3hwc+DnGfx4DQ+8mke8Rf75mN2QZZdDEyEa3UkvUTh+NLoODK4zlkwEVKm09cd35VUIGvmd6h45wIs86POgQICYx4mPTSTfLEWya9omVYiFYr8uFse2FOIKLI9Urd3dzq7HTZQYsttGWIGtpxOwTiHI58txLZcoR1T3JadxFpiMVBWnp/v3T5QC0IjqixTp0QAerPKehL3QvyWP2NeOgQt7vJqhiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A47EMqxsAhOGjKJ2XZu67RrrxDpHcveRNBJJ7y4JrrI=;
 b=W2AtXD86H8KGxsviRjrmR1iqIBJHuh4Yxe2Dn7a6T4WDVAFdcEbPLyqdw5zp7eRNWGgqvLyilfnDU0vuqkpTtRq2VxWaPWfWpHDogYvpo7IcQBfU1yYADnlL5t8PWJtAC2Qiv7HUnt44yWjmkEuQ95raDPrFpUU+X22IeQvSGSkB/JG7EyQ5yIyF3bH87LpEtlhUilrD74cLhWtMEDh2q28LAjJnYTmpyV2SqspShmSf5fmqmMLip8FB9cXCWaOYRKnakJp6cZaYLBvOo6YK9KWEyBIu4tvVx+x1IxSsllgtqPxykJBEsnP6oJzOkDAIny2RzKZNE9Gj/E5NTWBOiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oppo.com; dmarc=pass action=none header.from=oppo.com;
 dkim=pass header.d=oppo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oppo.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A47EMqxsAhOGjKJ2XZu67RrrxDpHcveRNBJJ7y4JrrI=;
 b=U+D1LRk2kaHT+QFSDAN7346Hgqdp4EW08OVOj7K7PUUEVr7TRpx1W0RlJAdiPs2614uiG5R+uB9ex9XUrpwJtCBo1iyXzJh3eF2nYVfOBQc+un01C6ojw06oXfVJnolZ8TVwVBLZ1NZ4W4lJR/qlEm4nx6mBCuu/ep/j35Onmi4=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=oppo.com;
Received: from HKAPR02MB4356.apcprd02.prod.outlook.com (2603:1096:203:d6::16)
 by HK2PR02MB4097.apcprd02.prod.outlook.com (2603:1096:202:2f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.22; Thu, 5 Aug
 2021 04:44:22 +0000
Received: from HKAPR02MB4356.apcprd02.prod.outlook.com
 ([fe80::d4ab:76fc:6326:a0eb]) by HKAPR02MB4356.apcprd02.prod.outlook.com
 ([fe80::d4ab:76fc:6326:a0eb%5]) with mapi id 15.20.4394.017; Thu, 5 Aug 2021
 04:44:22 +0000
From:   zhangkui <zhangkui@oppo.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, akpm@linux-foundation.org,
        linux-kernel@vger.kernel.org, linux-mm@kvack.org
Cc:     zhangkui <zhangkui@oppo.com>
Subject: [PATCH] process_madvise.2: Add MADV_WILLNEED to process_madvise()
Date:   Thu,  5 Aug 2021 12:44:11 +0800
Message-Id: <20210805044411.18966-1-zhangkui@oppo.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-ClientProxiedBy: HKAPR03CA0011.apcprd03.prod.outlook.com
 (2603:1096:203:c8::16) To HKAPR02MB4356.apcprd02.prod.outlook.com
 (2603:1096:203:d6::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (58.255.79.103) by HKAPR03CA0011.apcprd03.prod.outlook.com (2603:1096:203:c8::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.5 via Frontend Transport; Thu, 5 Aug 2021 04:44:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4583bbe7-dfbd-44f4-8706-08d957cbb177
X-MS-TrafficTypeDiagnostic: HK2PR02MB4097:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HK2PR02MB4097891E8C2F79688D156753B8F29@HK2PR02MB4097.apcprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1en7FEngRNX/1AgD9qnQFsV1aoZZ5GOij8lB9juTSvb+ERWeAetZnbJDyjEwRiuSQX8CZ9CtnrOPYePGrFBmeB+lawrpSgdQ1CszKD8LWPR0vOQdpVEa+zia8oxj5WQVINQ2PKJ+xOipi0RkBJmYWHnvv4Whkx8onCA9Ufh6AhZU9L/D9j0dJF5MqgqLc0xr6sLDpOFJYJSNUdaOB/hCxK0jpLSMpYZ3/YrHN7WKFhzousCWXky+UQ+5yt911e3W7iD/ct9CDU6BAh/lK3x8x2OWgfa35FHYi7bvPWxKKJkl0nMWyGaM0zL3n/JPmgSXe566HRquOlozK23bzccdzyiIoPHNHdccYQNcTFkdLU7ZHs8OCiBt/C4wleezNW76zCi+BIoqtjrrtTRxUThbzWgEDLTKRT1Jn9CY6cLDTTToINeiFk8Ypzb8F3+Lh/icQeG86PeFEQlODOfdl8sDtBaH2I1GRfsSZvJSRYBN9DynjDn0jmy4xSiYmM45bJBPRRu7GmXvw7YpZ5kYI91yiC5dijSkoAkKb8D2+dWQe0dx1JjbBaUe7AFzjqmhJqAWdccncTfEV+C7KoPVhMABsB3WYF93CAgCezbiZG/rqj/Uv6zJZcqMGR1QXC7tjOoar97Yk3Jq57hrLpJWAXDbEVi8OWTU6boeotOmPwNviRMgVJzZwulLEiE1uPNEu19EU+KE5F1yaVKiiQzOhHPXliVV3fw+TH+eJR6ZKrITNMBgXv2EZeFMhQrcdL+sTWHTWTPD2V863ZCCbV2r4rq/o9AVTCKUQ7FA+UFQp+lU+rV8FWxA+rDj71DqFUxOnbkY
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HKAPR02MB4356.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(39860400002)(346002)(376002)(38350700002)(478600001)(5660300002)(66476007)(86362001)(38100700002)(66556008)(956004)(2906002)(1076003)(6506007)(66946007)(83380400001)(966005)(4326008)(36756003)(8676002)(2616005)(52116002)(316002)(6486002)(26005)(6666004)(8936002)(186003)(107886003)(6512007)(11606007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y/36Qv1gKOMKdTX9b3JUOEff5IH8IUoqq9yfHZFroyLVryFAWgUa2a3T+gHy?=
 =?us-ascii?Q?yDl3l6UM/klhCW2VL542gVRIm0nkkt02/t3d+gSS+UqKrL99JFl89DsG+SRG?=
 =?us-ascii?Q?TPpmRp3c3xMgMLFCGu9xjnV51rdDp73zlJddNBZDRqnWO9/Er119HkmRhi+K?=
 =?us-ascii?Q?t0i9e/LqTaB5fml4LdQAygLcYa4wqLRV2AluN6YLcxsraQZJtKKcaU3VMBLv?=
 =?us-ascii?Q?Fs2W29OFbFmRjSQZRtPA2XONR37WtDV+HSsaimvi+AeZ8Z8f0ymINdEJqTRN?=
 =?us-ascii?Q?/qNVvdZpV9IoVfg0k3Yi+s5bDg49R7Ukt8j1pB7GMlkTwF2q7ZxtAZatL7bc?=
 =?us-ascii?Q?Uer046iOE5FUrsg5X8XJB4gzb8OwVlLjTbEDjN+x9QghnkeJJe+BpvRoBkTm?=
 =?us-ascii?Q?CW5isoyK70ESfm/DUfHoPyFHZqpz0ReRbsT/DmbtMaxVeVEjE9/Y292ejJ2y?=
 =?us-ascii?Q?UDPmAd5yx5QYl/2pB+riFsSOnHMGzHqprNrSBrgTyiU08aP+0ITDXA2wvWzV?=
 =?us-ascii?Q?rACFF9zc8E4R7KkqPPlDsMPPX1cABITLrqMGqAG0kzh7tfONBm3gS6dY+CFJ?=
 =?us-ascii?Q?J7m3MvQIhewjBXx6zJ6E6q56BnNxqA5BnMquSi9pjjuPKalvx6MgYD7VkpM7?=
 =?us-ascii?Q?twQHU83lWCbcRbbhueoNTFAizsPWmjhlLX8KAcP2tuxnUMXSuKtOGSLmw800?=
 =?us-ascii?Q?iX5zhVxIgLdoVwSyXZFbC2zgl3yEkaXVZ0skqKU82anHB1/KtAwwEfgQ0lEG?=
 =?us-ascii?Q?6RlA2mnEde8S/l9sNC+lBPTCWGQDNy2jyCn8MKmCFwstx4IFs8bhF9RX6E9U?=
 =?us-ascii?Q?YIIeNi9dcQn37prY/ScrKtyEACjaDrH1FaVS+ti52JbtXgjEmfvoe6l7j0rh?=
 =?us-ascii?Q?vW3+ooboBPnN9hiZysNY+ZDhuNpp9xiT6AUeh0K+hhsYQMHl9xy25jzR4fyX?=
 =?us-ascii?Q?USA/dFK8KnxctwJlPnCrSkPlUBFB6RyQYcqrktfI6YdnCWP8dX4HM4ZnzWtt?=
 =?us-ascii?Q?UhaXuYzNnW9ISea5NlbTfC/h2pyZOyrx1E1KNi36k9aIOEfLYdV4PwgkrbIh?=
 =?us-ascii?Q?ZSqkYzzJ5TcETmw85mhbF/RaJY4GPFAiXf/OTzeR1LlckgPQLnq569QSqJ39?=
 =?us-ascii?Q?qvTHP4/2hJXlXF+QA72230ZaubJIlB5nD2eP3wQi3KhjvU83OACpRxzvI5yb?=
 =?us-ascii?Q?yxuElDkTbwLZrZ95lVkrUb25SAjHLZ05asZwoiFfwfQxtTjPCrhDZPyQ5qHP?=
 =?us-ascii?Q?03u99YyE3+Ot5CRgOvlkehxJd61nbbmLV0Y8GCtveHE/TNGrbR1VYvrQxdoP?=
 =?us-ascii?Q?wr0vacfWDxfCHEm1A3MVKFy7?=
X-OriginatorOrg: oppo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4583bbe7-dfbd-44f4-8706-08d957cbb177
X-MS-Exchange-CrossTenant-AuthSource: HKAPR02MB4356.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2021 04:44:21.8935
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f1905eb1-c353-41c5-9516-62b4a54b5ee6
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a5QkK39ti7MBdlNZYicuWEUKPqa6AQJw7ZrT4YLojDtLN+r96whYalTK/ZhfZi693SFIojZTL7XJfbcS7luNDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR02MB4097
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add MADV_WILLNEED to process_madvise() for read-ahead swapped
out memory immediately when the app switches to forground.

https://lore.kernel.org/patchwork/patch/1472006/

Signed-off-by: zhangkui <zhangkui@oppo.com>
---
 man2/process_madvise.2 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man2/process_madvise.2 b/man2/process_madvise.2
index a6c8724d4..caa8bc0b3 100644
--- a/man2/process_madvise.2
+++ b/man2/process_madvise.2
@@ -112,6 +112,10 @@ See
 .BR MADV_PAGEOUT
 See
 .BR madvise (2).
+.TP
+.BR MADV_WILLNEED
+See
+.BR madvise (2).
 .PP
 The
 .I flags
--
2.25.1

________________________________
OPPO

=E6=9C=AC=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=E4=
=BB=B6=E5=90=AB=E6=9C=89OPPO=E5=85=AC=E5=8F=B8=E7=9A=84=E4=BF=9D=E5=AF=86=
=E4=BF=A1=E6=81=AF=EF=BC=8C=E4=BB=85=E9=99=90=E4=BA=8E=E9=82=AE=E4=BB=B6=E6=
=8C=87=E6=98=8E=E7=9A=84=E6=94=B6=E4=BB=B6=E4=BA=BA=E4=BD=BF=E7=94=A8=EF=BC=
=88=E5=8C=85=E5=90=AB=E4=B8=AA=E4=BA=BA=E5=8F=8A=E7=BE=A4=E7=BB=84=EF=BC=89=
=E3=80=82=E7=A6=81=E6=AD=A2=E4=BB=BB=E4=BD=95=E4=BA=BA=E5=9C=A8=E6=9C=AA=E7=
=BB=8F=E6=8E=88=E6=9D=83=E7=9A=84=E6=83=85=E5=86=B5=E4=B8=8B=E4=BB=A5=E4=BB=
=BB=E4=BD=95=E5=BD=A2=E5=BC=8F=E4=BD=BF=E7=94=A8=E3=80=82=E5=A6=82=E6=9E=9C=
=E6=82=A8=E9=94=99=E6=94=B6=E4=BA=86=E6=9C=AC=E9=82=AE=E4=BB=B6=EF=BC=8C=E8=
=AF=B7=E7=AB=8B=E5=8D=B3=E4=BB=A5=E7=94=B5=E5=AD=90=E9=82=AE=E4=BB=B6=E9=80=
=9A=E7=9F=A5=E5=8F=91=E4=BB=B6=E4=BA=BA=E5=B9=B6=E5=88=A0=E9=99=A4=E6=9C=AC=
=E9=82=AE=E4=BB=B6=E5=8F=8A=E5=85=B6=E9=99=84=E4=BB=B6=E3=80=82

This e-mail and its attachments contain confidential information from OPPO,=
 which is intended only for the person or entity whose address is listed ab=
ove. Any use of the information contained herein in any way (including, but=
 not limited to, total or partial disclosure, reproduction, or disseminatio=
n) by persons other than the intended recipient(s) is prohibited. If you re=
ceive this e-mail in error, please notify the sender by phone or email imme=
diately and delete it!
