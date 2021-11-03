Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B88F443EFE
	for <lists+linux-man@lfdr.de>; Wed,  3 Nov 2021 10:08:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231760AbhKCJLD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Nov 2021 05:11:03 -0400
Received: from mail-to1can01hn2102.outbound.protection.outlook.com ([52.100.146.102]:15648
        "EHLO CAN01-TO1-obe.outbound.protection.outlook.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231757AbhKCJLC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 3 Nov 2021 05:11:02 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nwIZctC2tBGM3J06vPQ0WwO+gWxYu16NQMQP2SXVAt9nZqopThTDTN/tVQHnepfuD6+KP7YlvXkbtNROLPUwjAYIc0Y0aSs1b9YEQhEp6QYfbnjep9VZB2blzDzHZepgfEJx0Y8dJu0Ogmp+QPVgOCOiYFrBPiUyiHMg6b44POSA9KhD6+b+EsFQb1mswuZnF+aM9fX9NjaNfndcn0gvsOaKVXb2ZvwIBF+/osfdKRnRBwRiSAnq0pIAMc/DvNI9xojgC9s3YYmWfRFrrrZOxobAp+tBa2yHi4fLv9CKdOt0Zshls0+G4G4BZX9Uc2FCCdRsi9GxzA/MZ0oOLw1PAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=212ZulWPYaRwh8tlm90L/FjWvx0fFPQojApAl3Io5n0=;
 b=XvN39HFBKTrPec4g1r+fRYyKooDa8/v+1Jqy3PLvuejkqN62mnt286yXeOV6v/1O3mrnYTLK4Csj1q2KBRNTQfVi4bvver0zJTIr+ZTPYfk5TgtqKF1k3x+ZxksdJsvkWkpZfSJi7FrWOcTJpao+pJSHDTi05cKFKWzQXEYTyrfd35eZ//OR3l3FXmleK+DWVu97cZCJP1ZdrLyD1qm0nNusu0gDVb0fkpxqFDFVukvYC9m5TefpS9vjvqdIah6cNrCgKEyl7/YT/hFiCqI2RKMhxITC0NoBiq7tPO3BsKZaPLhfWmglOx9/u9TbzWs9/p/UDPWw80BDREa0jbdimA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 64.18.73.25) smtp.rcpttodomain=gmail.com smtp.mailfrom=gaa.qc.ca;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=gaa.qc.ca;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gaa.qc.ca;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=212ZulWPYaRwh8tlm90L/FjWvx0fFPQojApAl3Io5n0=;
 b=chO80MQ79ha+y4BwKaNPTCrsRD6fdVScVEtOeDRmNZTLC0SJbYm6VLi5YtDJurGyidrS8BjL5/pfixeQ4zAoMsrUJAt1cz2+uzJSLu3tOyFJIMCaDg9X3iW1+TkqkyuB1YKC7mREHS9rdAMBIvhcJn+i5YUr337eAcTCu/qytG4=
Received: from MN2PR15CA0021.namprd15.prod.outlook.com (2603:10b6:208:1b4::34)
 by YT1PR01MB3035.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Wed, 3 Nov
 2021 09:08:24 +0000
Received: from QB1CAN01FT020.eop-CAN01.prod.protection.outlook.com
 (2603:10b6:208:1b4:cafe::79) by MN2PR15CA0021.outlook.office365.com
 (2603:10b6:208:1b4::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Wed, 3 Nov 2021 09:08:24 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 64.18.73.25)
 smtp.mailfrom=gaa.qc.ca; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=fail action=none header.from=gaa.qc.ca;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gaa.qc.ca discourages use of 64.18.73.25 as permitted sender)
Received: from hybride2.gaa.qc.ca (64.18.73.25) by
 QB1CAN01FT020.mail.protection.outlook.com (10.152.120.64) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.4669.10 via Frontend Transport; Wed, 3 Nov 2021 09:08:23 +0000
Received: from GAAEXCH01.bacgaa.qc.ca (10.10.10.35) by GAAEXCH01.bacgaa.qc.ca
 (10.10.10.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Wed, 3 Nov 2021
 05:08:22 -0400
Received: from User (132.145.220.75) by GAAEXCH01.bacgaa.qc.ca (10.10.10.35)
 with Microsoft SMTP Server id 15.1.1979.3 via Frontend Transport; Wed, 3 Nov
 2021 05:08:08 -0400
Reply-To: <ad.truman@outlook.com>
From:   OP Financial Support <mail@gaa.qc.ca>
To:     <claims@opfinance.fi>
Subject: Your Email has been selected
Date:   Wed, 3 Nov 2021 10:08:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="Windows-1251"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <0be1f3d9-99cb-462c-ad37-27af4c57a1ab@GAAEXCH01.bacgaa.qc.ca>
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 374313d6-f02b-42da-b64b-08d99ea97d59
X-MS-TrafficTypeDiagnostic: YT1PR01MB3035:
X-Microsoft-Antispam-PRVS: <YT1PR01MB3035EDB9785616518877DC09848C9@YT1PR01MB3035.CANPRD01.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?dRAjDAB+36MQiRn1nACmPgKDrGzqyjIYNjbGWbEOQkbDhoVYJu4PHOYb?=
 =?windows-1251?Q?CSBSN7QAmNNDDL7RZmIdtErA1Jbrq4Sed+flcUi1+10CJ0wfYgZoQkCk?=
 =?windows-1251?Q?slbneaMdDwC1L1l476EBqAdloostKS3lbPZ7JJpkB2EUflR9QpG+xdbI?=
 =?windows-1251?Q?Q9hZDQpauarxaXRcvCzNs9fyxt886qvSm8qfKJ7JOetEg8/64PsinUYC?=
 =?windows-1251?Q?+9Lc2xjrsQgNZJcs4Q0AtPRO/Wofg/PirmTerJfcA40Y0MzVzByM5ELG?=
 =?windows-1251?Q?pTDQ5F7awZXPx4vzoKuzLg14hrPdI3WbsGctGJPTcQ4t4+IQr7SWplTU?=
 =?windows-1251?Q?JO8TT6FHbK8ugq9ZR+npvmFgBhkr5BPxDvlz/2bgwe/Cs51rxYVQr9o0?=
 =?windows-1251?Q?TdRT4gF+UMff+cn2gT2FiC61EtlqjzkadBiWTnG7MPT9v9/+3GcpP7JX?=
 =?windows-1251?Q?jZr/cxWILjjlm/mkfCFs8YCGadBMrX1Qk7UNhYE+R3YdlQAKstpdAGG5?=
 =?windows-1251?Q?iB9lnmlFXKAlZ2YOfMNw4Vt4LJG7E3BzwMmFvrs7/1CRwGtVyV8U1EU7?=
 =?windows-1251?Q?fchPb47GvZk9gWVvTvREaI04BhC7ml+/2D2dPxyJFbraECdKKslwcioF?=
 =?windows-1251?Q?Zg0hLA1qt7i5ZFv5TlMIegihYETguSofSLV9UN1z/i95kBfp4w+LMO+K?=
 =?windows-1251?Q?xUjYATa1iuzEGgHt6D4A0P1g/oXBkx7s93jtj2TrxqoDOPKr7FY7G4Gk?=
 =?windows-1251?Q?/OCkCeKpDrFe8RfxgUbxfAbauygrtTqF1KwC9SjXNZj5t+RPU6NiMfrz?=
 =?windows-1251?Q?rb3NgapJVH92Nm9UALWuLnwAsYVFt1YsqQ06rUC98n2lPOck0uxMhJEi?=
 =?windows-1251?Q?Z+cYxsOSB8XAz5RkOHBzqMv4UyAiB0Pp7a+bZinMDY1ZYjb/D+hMZgls?=
 =?windows-1251?Q?2RRHvvwNMTrKjdX19bjtjaIhW4+Hi/39pzG180YH+jv4SGOT1xhuiQj7?=
 =?windows-1251?Q?V25UAeJ/KuOMsPDMyUIRrsVT4f/GI5KH04ec5OueZWjJ1ZXRxOPjpBxJ?=
 =?windows-1251?Q?IWnafg8YVz1mQWEiQ86xx/RABuCs8tVh0veJ0A=3D=3D?=
X-Forefront-Antispam-Report: CIP:64.18.73.25;CTRY:CA;LANG:en;SCL:5;SRV:;IPV:NLI;SFV:SPM;H:hybride2.gaa.qc.ca;PTR:25-73-18-64.static.cogecodata.net;CAT:OSPM;SFS:(4636009)(36840700001)(186003)(31696002)(6666004)(5660300002)(2860700004)(9686003)(70586007)(356005)(6862004)(956004)(70206006)(336012)(508600001)(558084003)(26005)(8936002)(81166007)(32650700002)(36860700001)(31686004)(82310400003)(86362001)(83380400001)(8676002)(7416002)(7406005)(7366002)(316002)(2906002)(2700400008);DIR:OUT;SFP:1501;
X-OriginatorOrg: gaa.qc.ca
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2021 09:08:23.8379
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 374313d6-f02b-42da-b64b-08d99ea97d59
X-MS-Exchange-CrossTenant-Id: 03fd89ba-3971-4e81-b040-14292e746bc1
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=03fd89ba-3971-4e81-b040-14292e746bc1;Ip=[64.18.73.25];Helo=[hybride2.gaa.qc.ca]
X-MS-Exchange-CrossTenant-AuthSource: QB1CAN01FT020.eop-CAN01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT1PR01MB3035
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello,

You have been selected to receive the sum of 1,000,000.00 Euros. Please provide the following details to proceed.

Name:
Residential address:
Tel/Fax:
Copy of Identification

Sincerely,
Ms. Addison Truman
Group General Counsel
OP Financial Group
