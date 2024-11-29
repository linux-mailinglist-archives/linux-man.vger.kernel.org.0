Return-Path: <linux-man+bounces-2086-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DBB9DEB43
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 17:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5DC3BB20CB5
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 16:46:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0331B13BAEE;
	Fri, 29 Nov 2024 16:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="Hv9xokdO";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="Jmz0nur0"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C99D132132
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 16:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732898785; cv=fail; b=uy5vsm8q5lFtcnyJLTLnvKCx0Xk6+jEJIsJiA841Y5srnRO9rc1vnDEyhGWXg/pxLQERKEGHD17W8pyg+67rqvfTTCdx1Oo/sgJ3AkJ2etIWpUS7QiOTLDkD3xDOyxXmW4rNJ4SYLUxKZfLdFTq0/NHHmkTee9pyLbkfRsXHs9g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732898785; c=relaxed/simple;
	bh=BR4qS+qDnF3YzGyqUiSHXUUU1f7fms0bWgUZrVvLYFU=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=NsNh5VVAOkR4QeTyf9IfHTmS1WDycjt68nu6guBjCdmaIfZOV8S0uOjCl2fRrqKJsr2dWHbJYENLVAQtNECbvT1K5toFKnQXrOHp2/Uybu3y4sOYDMrV3c1vfrI+OBXTsqk6rrWFTTUIEWEMgk1NdvY9al+B0PpRFi+J5j7+h5I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=Hv9xokdO; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=Jmz0nur0; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATEMYrm013067;
	Fri, 29 Nov 2024 16:46:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=BR4qS+qDnF3YzGyq
	UiSHXUUU1f7fms0bWgUZrVvLYFU=; b=Hv9xokdORwJnRcfi5kdnJT6izCiUw95A
	CwAYT2TS8lmdwudmj7fmgzsBT2c5z7B45OVuQHtfvktbV8yciylhOSKrzhKXcZB7
	id08JyWeISKh1JfE/GezSwT0MOOhFm0K6YXkysixS24d326ebW3jbpK2K1ZsVNyC
	z/bbYSwhxwX+Et448Y+csmJxOBt+PySDz8XqMfqUBPpTAUIh1gmP+Ima5YbEvZcN
	Kjlh3UctoYY2gBrU3FZ7QJxgrA7P//d0nji/gKoEFvNcZibic25KUz5huPvCY+L+
	xsO4+CEG819oxQI7ZZIO/tiUNWK/RVhZVa0obiv3T2wRvx63L/Y7ew==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xwbksg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 16:46:10 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATGWgHt009215;
	Fri, 29 Nov 2024 16:46:09 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2040.outbound.protection.outlook.com [104.47.58.40])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 4373ssfxhx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 16:46:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3D8QbBgv3+aw/NyyZv2rAxIxxdpFulgS+5+FBi4KpqYNTUzS4cmd0cuynOZGyC3guVlOzc5Ed7B9Ts4l+ujPXfZwT6yaWdb4Kk7iWodI+F46xLiHVCVR9U9t/YqAd7w1WghEHtpqzrUr7hHRPUYSGLndI5W4V9582gn1eyOlnLcUcZegNaOPauaHJ1jUgKGmowKwaJv3rQiRrWXZntq/e8Af63pOXkb+RuWqrwkpcuWvETin4FtXoAhKo7jA6+ciy5/1qIjnrVmdRDY3i6h8RalNotBA4q+GHunL/1d6rUR0bRbRru6q0aGMbmuLLWrJP63bniXZmUtRUjajUjdGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BR4qS+qDnF3YzGyqUiSHXUUU1f7fms0bWgUZrVvLYFU=;
 b=CwNlS7PdOCxc/mU2GscuDskHI68S4F2nQgCWIrzpVEgSN1V5DD99mHsmvOHj0SPYmG8DePFPBDQMa7nmux/h9ANQJEQ55zLz2cJAIwczVOG539zeGYmkD0HDSPomOAlk4sfzzzSMUCOkE9Hh8DDdR4rvXFNC/MaDfq8/dujSvKREsKU9Npa1eb6ugq2D96B0ND0LwxEQoYhAYHNsGnCvpAEQl3PanETcFhzshEHf/SExpFKB+I3NjNoy87cTTbyDNqlKPv+BmrKi0FYt5r4p1EqIRHa0/ljzHJoj8lWXMOnYn/wAIM9TMxVF/V3m99LuGVxxfNZOaX9bFYc6F0BiiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BR4qS+qDnF3YzGyqUiSHXUUU1f7fms0bWgUZrVvLYFU=;
 b=Jmz0nur007nCPqaTfFdN+qo/84EYoMsc0jIEnn5SESer592hgs5llcsOKpoRDXWBShFf7KmiEtL+2+xJ355TmSqgAdRyNGIlEy5qSIACIU6EBroRMjSsLN0/S5psnMbgnzjbKnmSSsMSmWNIaF80/TbaypBaFahKsb94+K9nNvw=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by SA1PR10MB5888.namprd10.prod.outlook.com (2603:10b6:806:22b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Fri, 29 Nov
 2024 16:46:03 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 16:46:03 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages v2] process_madvise.2: describe 6.13 behaviour permitting all madvise flags
Date: Fri, 29 Nov 2024 16:44:22 +0000
Message-ID: <20241129164422.89837-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0001.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c2::6) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|SA1PR10MB5888:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f0b3950-3fb9-4725-64cb-08dd10954fd7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?A/DFi+qMdFC97+p1xJi440BsLwuHP9/OyHUuFHYCGu6MrKUEbz2Q9gzr4Luf?=
 =?us-ascii?Q?JaKlQE8X8KvUpcS+RkEcCGuT4qp+BMuKdcybx/5sE95Rb3PRyAeEXewcncTx?=
 =?us-ascii?Q?3uM6Hp7WJMJjc/el/uDCEc27341EBh/4zpl9xPrvIXWweRyzAkYw1HfiUnIS?=
 =?us-ascii?Q?7W3BciyRCchkjGAfnQBr1u+Oainddrw1DSjZ+Gtn1y7rGKnxRaHlCQQQtwyM?=
 =?us-ascii?Q?E5YOkk8/Frsldlr/Fp44Jv7D73NqwTeszIy9mwq7jluznuGCs1n/xGCBEdTK?=
 =?us-ascii?Q?DIvuScXYZcdFqAI9Y+muIwiGMRsadscP179qrE58GtR0CDxeNC7QAGB/eHYm?=
 =?us-ascii?Q?syzAwdLgchAuRuTYmdj6/ZKT6+U0KR5G59Ssv6g/Mus3rC3zhmI//EEyFGmc?=
 =?us-ascii?Q?MtfDr4OxX333eMC8ilO/rFoH1IxS8kL0iiK2ansujknkCJ7LwXhWkn4UXVvF?=
 =?us-ascii?Q?XEPpsutJNLeBuoUKpbUYtjdu/LsKiPUk6O4HnznPaYfkopgkAvZIDudyBa/2?=
 =?us-ascii?Q?9wiHrZLW4Q7C77lWpflq0mfAq1loXfZQ+PdFPlV9a7EBLcBiurPaAg+PHdOZ?=
 =?us-ascii?Q?UgMIzNYF6Ku7LIlP69KYCMLbT6+yBvGXaA7RX78Y1Cmz6lA9ceHN9fMTqkkF?=
 =?us-ascii?Q?ZED7pKRbv1BRR5VNeECuSddwuaOXgGd/BtH1H3aMv8Xk6I+AqHpiDODmTiGA?=
 =?us-ascii?Q?oHlt6xb77cXNw3sDJgajX4RQm/kgFZlw6Dp1QDnAOUWv079ZNDa/Q+2ChyQw?=
 =?us-ascii?Q?K9prJGUkHoQ/elDVWxr80xNdvqm7ED7exGC3eimO8FZpM6Qm+h0S+T0qAJai?=
 =?us-ascii?Q?9KZw++RE7LybiCeih2gcvficTl4we1Uq/jis3NMw3t56zcaqBHcPkRRtCepQ?=
 =?us-ascii?Q?GxeaRQkxAPg4aOiERxK+CcZhLI2R5qPvUtFy+3+CvjeQvN3/na+UHzE9WAsJ?=
 =?us-ascii?Q?TL5QArhqUYIk+NQWW7rcpiQxo4yLKpv/dyexYYIf2N73vUygvL9KbkYC2Psw?=
 =?us-ascii?Q?6NRjbqZaRKBHdOluwaPk+t2kAP77gdUnbEoXEt+2rTrx9V53ibRTObzfL0zg?=
 =?us-ascii?Q?8CMxRqjt1WQr4DTNgAJscOUcjnrcj3HRTUOfAwz/hCpUHA/q3uBByb+ah125?=
 =?us-ascii?Q?SNwq9afaaGdjMjCJeuzN2OVTshVXEU/Rz7RIWJgfWM6/23RLr+YVtoLUBUCW?=
 =?us-ascii?Q?MjtG6XndHwBJOR8EcFLymZZd7MwunEXjKecpL76BPZRf3JDyvvxpv+8e+iNs?=
 =?us-ascii?Q?YieXf5JdkTcou0Rwf1TLT1jbHchADVAYpZn6iKIi8MUsIGY7yzUlN7MKrrXQ?=
 =?us-ascii?Q?lBj0C5VNOaQYtIHUF7SZ+K/u4gSIeYOrOmFLkfGBtYLZKaWnpzUL0hrAXCuE?=
 =?us-ascii?Q?105v+KU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?YLWB1Ifwl0bcqFkxZZsbmjEhKsoWrjF8nAgZoNxVYyyyVS1oXwxFqhI1zo2s?=
 =?us-ascii?Q?+1yj2Pod91NTHf9YDbw/WtRHxFNTW52yJUV8AG8jMf6c1KlL5IuK5HSGE3hP?=
 =?us-ascii?Q?R52T5tWwZ0MqzGTfL/ZHHaocKAM9YsyKOAtlpDNifgYOFZHu2hyHKNUxpkeY?=
 =?us-ascii?Q?ffy5GiZF90aBLOL2zaqcc/lAkKP5lCkmzLYwbCAwbZ80/Zk+h1kQF2CBMp/E?=
 =?us-ascii?Q?g5Jarr3ObzVVQwgl2Dvh/SLj0yu/NRM7lPfhhdzYFCXCnyZdL1kCkPoPulP4?=
 =?us-ascii?Q?ZiJcRm+ZC1Rm/PyZpTfiVcy+Ag9/YN4X6bthr/q7bQE+zEqpjTj3N1bDX1lC?=
 =?us-ascii?Q?xtew7a420vbKn0KOHx1L2hZjMkW6CZ85uTJ+bWJ9ZNP5lnHJCMb6lEbksGy1?=
 =?us-ascii?Q?706K6JhlMhL1R2c91Reo5bn4EscmKVLbv7w2+FOZJ4zIuKcshol6E3RRdxBD?=
 =?us-ascii?Q?8dR0j5mm1ZXb69PgIabxxfrFxM7QFKGxl7bFciVaTcZpowcPQeRdzaKi8LzW?=
 =?us-ascii?Q?+8hqJIBDwev81FZAKJqFZBq4uuyk/XZrRJzb3Ns0fkfqBd3DxIhIH2X6Gmnx?=
 =?us-ascii?Q?AB+DTBODzy+rKPoNa2xiY7Ei+pwlUsI8KcZ9X9wyxZnESgVDsygDjPUT27WW?=
 =?us-ascii?Q?KgXIihCH2IlZichjtTkVO9CtAGWC76UYfClW8WyDAmUZeu122lR3Gb2qj6of?=
 =?us-ascii?Q?ERCfRNSrqUDT1JRA8K4hoyjJcefF5PqmcKFmmhrCxylisVMXKsil1fCwoIZN?=
 =?us-ascii?Q?xOd5ix+2bMnFNQ3dPiNeLi7/5TNdbilSDBIhe5NQN/ecbC3OzFUnShqMyiSA?=
 =?us-ascii?Q?TKaS0jw9qSa+WzuVy6E6sH5wk0Q7wB6Vq5VIYfS/3KPd3x4KLxvR4UI9hoHj?=
 =?us-ascii?Q?ceIGKMvowCC4TrqJa69GLT9AaPDs+KHEm/A9zbpyBi0B/KRoT66orki0OIkR?=
 =?us-ascii?Q?Y3Fbam2DkBTuPM5LwLWFrthGi1K8rM+P+AJx74mpEEoOsOFwjubXcz++5XcI?=
 =?us-ascii?Q?2Mr51wzL3GpRDfvb7nHt6eY50a9AO1sb3gnbk00vLSDIHszCT9MuhjCCr6x3?=
 =?us-ascii?Q?RkK0GWsPYt5EtVZ1aYDF6NWk2AL1tno8iVIVJUKGRA6z7LiGFvSd1JkmIoma?=
 =?us-ascii?Q?Z4oe3SN2mFWJGBdqZVHh1rL9awLumB44L0rQW4TudTJE1KyZeHDHAnTvVa4Z?=
 =?us-ascii?Q?eJE1WXwTgditEOPmAg0eg6oxUF4K79DGG3p01+e/KQM4FjnXR4y0JqBzcXOe?=
 =?us-ascii?Q?BCzmvKnGZMWnxWm/8PuFEkpWvkE5TJAcqaCRtPvZHeq30XXJOPl388Aq+PzY?=
 =?us-ascii?Q?As5p6fSax7Ne0aSTfDL7nnEPZWbR2+LamA8mgzif3JfNvh9VX/GFTPSSv2Cf?=
 =?us-ascii?Q?PIy9PGuniynGXuABR4/kAAGWTE5Ozega/yOA2kYaeQ0XBlSJf3gtReM6auaA?=
 =?us-ascii?Q?aTTjOtu6x2lrHBJ2x1qK40hmpM8CgjENV6JCHXsHnvr+ukY3tuYxm5NxFJO7?=
 =?us-ascii?Q?0Vkp8D9x0hiGTygzDgXl37UxZTI1QyiUbTbTgsJYKmya+S7WMSvvb0xfndA4?=
 =?us-ascii?Q?oLcw3iIalxhe60ITb0FPiG9SKnRhg2DoaLXrrUntnH86HatzhC3j67VtMTS6?=
 =?us-ascii?Q?SA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	J6zoQa06bdboayBT+LsOhbr8vEU74/rML74eRWAEE546qZ4kiuf0Q0GTxD+MHUbyLLW7HIzHpdO3NLC2cvcAMq1kXGN59VjHTu94sTRvk1P/YTj8PLrHv8anEmaZKIfWqthrFxgjqkyFJ0w6xSjz4j+wfTGzNWHmyHrXspb1uhv4VN71d5CKQ3eOpjJNxRXCk1iiHGasDkdzLJvtJS2gdiYMCxddgUo+jlolupa9aW66T3m6pNKOpu819pHbkWspWlK+aIJqtyYQ0qkBtbfgrkLlqukjh5Kz6Vr84nqyVkz4JAMPuqjBw6hoRU5vQz463ctuuB8aTYnp2kGd7YU4f+/WRexgnszUs0pzYvcweVP23ZK5rpg6aTy4AGYk8vHgkqHs1gE9SZKhVq6+G0DI+WW63ArteREDuTjFSl84MFRhF0svbj3anMNiPYt2F1IcI5f3+s+6eUrbYnYi56Sg4Qhg6Fpaf4hBs4k9PqS9SqURzzLslP+jpF3A2laPHeK1SW4qocnQHeKBgZMrU+Bu2QzqQ42IDg6hbnAjnS/rxbDATac8BBGrdbzRT+Qqw4+MAsmIrCCllpCMZ1FBuOGg85cwoTctF/Q5vJ7FJFOoasE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f0b3950-3fb9-4725-64cb-08dd10954fd7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 16:46:03.3155
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TdH/1pe9dfBHcsGgm5rrCwmsGJEZUzh3h2T9VdZZoS3LGP6uy+VQmTA2X+owgF7n0mUyTX02w7B5DaSHmSpai1QvWFhzyEgwRT7vluHJcxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5888
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_14,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2411290135
X-Proofpoint-GUID: xQFiFn65e9rCNnYRC-DLorTBTDbcxrVo
X-Proofpoint-ORIG-GUID: xQFiFn65e9rCNnYRC-DLorTBTDbcxrVo

Since Linux 6.13 it has become possible to use all madvise flags when targeting
the calling process. Update the man page to reflect this change.

Reviewed-by: David Hildenbrand <david@redhat.com>
Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---

v2:
* Use semantic newlines as suggested by Alejandro.
v1:
https://lore.kernel.org/all/20241129095507.11001-1-lorenzo.stoakes@oracle.com/

 man/man2/process_madvise.2 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
index b78a61553..2ebbfea44 100644
--- a/man/man2/process_madvise.2
+++ b/man/man2/process_madvise.2
@@ -54,7 +54,9 @@ This value must be less than or equal to
 or accessible via the call
 .IR sysconf(_SC_IOV_MAX) ).
 .P
-The
+If manipulating another process,
+or before Linux 6.13,
+the
 .I advice
 argument is one of the following values:
 .TP
@@ -74,6 +76,10 @@ See
 See
 .BR madvise (2).
 .P
+Starting in Linux 6.13,
+when manipulating the calling process,
+any advice flag is permitted.
+.P
 The
 .I flags
 argument is reserved for future use; currently, this argument must be
--
2.47.1

