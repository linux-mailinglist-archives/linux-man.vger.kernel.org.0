Return-Path: <linux-man+bounces-2077-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 839E49DC18A
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 10:32:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 375E4280F3A
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 09:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 193C314F135;
	Fri, 29 Nov 2024 09:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="ikKi20z4";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="Tuq4xDh7"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB9D38DD1
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 09:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732872763; cv=fail; b=MbUCxpnV9EFHvZ+N9c7AqgPgpGNCdogbzYo9HCGPX1tdrX/DEo0wo6GzqagKDEMMotjUd74l9tvv6BbjZWuMm8NqUygJkZUTrGaLfHO4uwz6mQKPieKs6ztfI3Ivy7r/hXE1542/wYVvpPwVQSyMcb+vi8FD/DyNHQCR37L0wJw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732872763; c=relaxed/simple;
	bh=d9DnfJa5IFT7yrqbRoKVvR1E8hiCeVIGs9uGWVg5hyY=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=TknoZLOjRMjHFkBaDj24WTRv5dwcwGQTCkxsZBTjLtdj4fshBCgj2ETWBViVXcAttNngiUoXdW6gT0svKTXNKDr4x5EOtfXhbYdGNk0Yd3p8an8MWVILTCSzsAezTdMErW/EJ8oW1d/q8/b8lXuncL37FK9oJ4ViKcbw7p76a7I=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=ikKi20z4; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=Tuq4xDh7; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT1ffGv025226;
	Fri, 29 Nov 2024 09:32:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=EqPaJ+f6IqDHXVwj
	Eb4oeobqDiJig3PjykG1hHYR/+4=; b=ikKi20z4Vv8iOyryhpEsVFXehZUV0DyS
	epw1NqTRauDH/rER1bPKTSh8zPqWP3Qg87M1Us5EeMSNMsG546e6MpHWdbyQlG40
	IEc+LqyjSUMRG1wUl4kI4jF2wm6Zgyr28FWkRPByub5GHjUhYB43Iee+Vmn9xJwq
	8/eGosHzm1Zo8IPeIOdL7VxXPgDpnnJ1S9Bl3xiDMBPbgZExvn7tXXxHM8bsaxCK
	pjT+h4qEu88lYKSlAT9yzejOY2HutC65ffK7KPw1Fp04ShT/J7mpllvefC59QRuU
	cuj40yHWGocx7Kq5BkGJlNCfZnbD7AmwpBRZacEFDoOaXNYWR7xfTQ==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xyb00p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 09:32:26 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT7FjsM027428;
	Fri, 29 Nov 2024 09:32:25 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2171.outbound.protection.outlook.com [104.47.56.171])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 436704yr8c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 09:32:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PPUqIxnRohemLxAgtz3Ga1J68P/Titf+nYRTXQPZSjc2OVcwYuLV0YyMRD4Z8h2GDneOVgY8jI8wrSYHwGXGlminMGolYd48JGja/DJ0Tm9r6IMgk2cVAnqYqFjzVizGu5USBQJayWk1/i0oq4wChpqnU3IPEmNSME4OnqaEy9gCtUWylJtjW6oLHk6Ba4/5d/d8IBbwlF1EMn/UVZXVpK32VNwrQkduwdFHW807PFymL/r3svrqwiEIrdyIK41Tg6QjbY7whddBRDgc/koW76i1QhEg94TQ6hRPRfLPXJvWzmUYhuErJDWgxDrxV9jNxaNc+8n4vKQxyf9LfaXMUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EqPaJ+f6IqDHXVwjEb4oeobqDiJig3PjykG1hHYR/+4=;
 b=yTWBAJfxFGgfHMXu984JQsGHdZLnX4wgemEPg7i/7jcxX9xbUynJKSSWruDy/f5REa+iZCIr+WkrBsgyhg+BV0b4UFJSFdJXI9RjnaSwGo+akNk7W47Q1fmJW8bUA6Ev1tEA2Z8+3WGG1TCVBmhoRVzAzZG8xbScMRwiDwYXT9cU7CwIpCpKG9x5z9H/cnBeuuEtleSiBamRVfVcHzUuzPBL2MxvOcW7flG/9nkoHW78PyhFIkcp2e5vexgveHHMAieRLXYpG53JZOU1ECSG1Ow//c8N1ZONgu6ErJ+FNCuwSSSgj8s2u3dE99qpCCyewckhFv/riV5dyKNHNuOPxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqPaJ+f6IqDHXVwjEb4oeobqDiJig3PjykG1hHYR/+4=;
 b=Tuq4xDh70lpAH1+NT1HDdbRyGFISrTERSZxYmmWcNKe90fPKqwb0Ir9IbXL+XDEVKU/Eksq/J3sHxIkq5vl0CtEbyaVJfzVzRGdJb1O8UXVgPyW3J70jXq4T2xCWWmWKOk+FmOSvpGM4EqhZMb+G41Sd1v+h0T9jD9sxSiSoziM=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by DS0PR10MB7455.namprd10.prod.outlook.com (2603:10b6:8:161::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.13; Fri, 29 Nov
 2024 09:32:23 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 09:32:23 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages] madvise.2: add MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Fri, 29 Nov 2024 09:32:05 +0000
Message-ID: <20241129093205.8664-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0122.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c6::15) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|DS0PR10MB7455:EE_
X-MS-Office365-Filtering-Correlation-Id: cc3b15d8-d782-4c54-4bb9-08dd1058ba73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?663uS6F7yodu9CD5RPhrSWfzj7Zp/sinH5g4HhOVnEcvoDd4p+wCeB9hHSZA?=
 =?us-ascii?Q?5QymuJYstiP0owqWdJR4i7LU2VN4UE5TWVaIt5rFkHE5fxaaQgR2ZeIe6clK?=
 =?us-ascii?Q?Gy1UY40G+UCSaLnqezROqX+5WxILCmLOr3MlOny65YDjtTWQOP0UZO9elQqe?=
 =?us-ascii?Q?oYH5j6Axr7RrAagkhOl7Tj/GkbKSrG2e0/wcLGXcskrEDm3eIv2B7cb3trWq?=
 =?us-ascii?Q?8EXtC0DYCrgRbgcT3tN24mgiaVPT5ny2Roj2T7SqEb8A+vluT9YGxpxriZo8?=
 =?us-ascii?Q?sClA4iQy49UzHm0Y4ayPnPRvU6vo4INA0b/J+Unn87991NLn6oMvwxEWw374?=
 =?us-ascii?Q?8/+EHf7O+VlSETRrTZmA0TdGnBrW3lsjW2ZQpRXb85HqPXBEJdAGEPhalcLW?=
 =?us-ascii?Q?6DQrDv3I9CXPj+50F+dpLSz28eK94eVM2wphnrdYMLQq4gRg8oN+0xsPt50p?=
 =?us-ascii?Q?tCKCbB6YkaME7j2pg1xsl2xKlaNm12m8H2WGYRfdnFn3VPblaYLPuS1xQHu/?=
 =?us-ascii?Q?id2kW2maQdw4P8AU25UoBQrpYGaWwitmH2GiGJctcpCZSYntlxAizSBV72FM?=
 =?us-ascii?Q?EH8VR+0v51W/so8T9VtGqxlpULzA6rVdyTt6Om/+dHN8OBxmwKs9P5JLhGXc?=
 =?us-ascii?Q?HWAKUGV+84f5llzajFnjQwkIVaqtajLRUj+fJSbnuJu0/4e5GD++HyhbCYRZ?=
 =?us-ascii?Q?91OskSddhKo0fzgCW8WAgQwVdPO1UUpbvqEjAbOVJk7LSrWKv0O8+MOGSvpt?=
 =?us-ascii?Q?7IaKLECz2DSEaxfbZxQi23D9mMbqzLH+Ck8lLUIaFibRVV4ChwMarrZOlK9g?=
 =?us-ascii?Q?dYZ76HVmvaoXl8JRECWgqPqVCGT98uHsJhZsVo0pahh9fKDVAdFNSzZx0svE?=
 =?us-ascii?Q?Y1xTzfyXX4+G5qbdz7YWYjPYSNJEa9R1jc+CNO5HVqSBuEdWJGs47o3bigYS?=
 =?us-ascii?Q?H94UuDjun4rUvxNPGFldZl2Qr6ZgHCqKAvAJA8tNmSqmNtLkjFJetFD3H2r9?=
 =?us-ascii?Q?u1ZbEusDNJpX2YBP5DPlYiqaSC71ENlsWmfuxFHGN6bdytL3qFGvD/qrFp2M?=
 =?us-ascii?Q?CbGbEey/DWatapAgeRBMJ/+RSexT5hsioXxZIJIwcGAF+xiAhUMssWGgQjme?=
 =?us-ascii?Q?WqcdVa7uUyOivgNp3EC+A3aBMO4JM1wRAhw2707HKspMdPCLr38Hnh8HYcZA?=
 =?us-ascii?Q?Ajaj525hnBX5vcrwUeSbSR/lj1nEZnhubqr/RdZej/lp3lGyn+fmaoeV4Rvw?=
 =?us-ascii?Q?ojooJPcm4bgF9Q1g84dAwUak5PLJRiYKEAZiWZNLHxIXiezPRiJsj/zJYN1P?=
 =?us-ascii?Q?qzyKGNsi/Lm8MpCs4g35yxj7iD+LO50JTkL6Vwf6EgVjfw=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?+xUp7HdENP3vtKczh0+50Wbw8XfesEklbPpz4TL44qly3s731VmG9I2gkJdk?=
 =?us-ascii?Q?lSMuRVvh7Gnl1cU3s6TN/FeUV+2Ac77VBH04mWmMCI878PX3JdvgISB5wVre?=
 =?us-ascii?Q?DXwOFEbkWfODKft7/iZb7VcK9gcpnd0iK1s1/yylwLe2e6VgKL4iYh7SbmOE?=
 =?us-ascii?Q?k2q1BosDuZj0wBnFifkLskI+cIrN+HPRQpOax8MYCssCjTIBlbysUiHmqjlb?=
 =?us-ascii?Q?iuqScI8wqpRKW6vFlUnnmkLzoSQjKqFZQO6ueKMSQw1GhUMC3UC9/sP1U/Hu?=
 =?us-ascii?Q?U4JU43b+RpSsGTLGMyX9OdGw41CbSTS5VBe4mtzWMbZ9H7DoEKaG49e+JIQh?=
 =?us-ascii?Q?yYUYIyo6lM/ceoCKEwTz7P2wh/eU/O4tymvkOZEXY8FHNk3YvdVpvEKYaYZ4?=
 =?us-ascii?Q?a/8jM0h/Hl4n2fXmVrVkvmqY9Q700vUAiT/Rn79p/4h1qi8bkDweE4reXEA+?=
 =?us-ascii?Q?ntjVzRk70jl1BpITTeDBQYxCpOfeYCgNonTCzHAra6GpfgcdnZV8zjwNiUZM?=
 =?us-ascii?Q?mRrqfUgLR0W5lV/rhvHQDhxDXAojIQaeKSq+ekLoC7twi6o/dbCt/oI5Xq89?=
 =?us-ascii?Q?utrGHxjmA/JVDb7SxXxSA9tbuPSfbrXuFwQRXAKt5+OfSrqbVOcboe3h6WWo?=
 =?us-ascii?Q?ndGsYhkCj8rPlH/QI+qkcrdE0gQvwpBwCDpGIE8vRxsNIDwyx/WYM3AhqwKr?=
 =?us-ascii?Q?KMD0cTd7556ZpR6bjrWPxdXchKXaIuPnu5mdxwuMtP7TLOoCvChE48Le3J4M?=
 =?us-ascii?Q?xSZX9ohOhlH2YgDLw6TAg4dGbH1tcPGrpXoN291KOLsEcc7QbEfIyX9F4uId?=
 =?us-ascii?Q?2ztFYWnPZFsb8T2H9otrFNyhMY4rCti1jbSEOISe2BjyNpe9+H0Yet2ig7Lt?=
 =?us-ascii?Q?ObJ6W7Luplgd6MyXcFNq/B8S3gOWkC93JlUY8JKgv8oaGNIo2MxgximLzZ+6?=
 =?us-ascii?Q?dRhJH8ki3o/qLhpDuYc6O3H/OA5dJtPqG+Kait3RDlqzFAkBeYc+Jz4WmSHk?=
 =?us-ascii?Q?CT928zdNsEAy3m0KwOEL7SMTxLslBF/412owdPc2BOpubMULiIdkcS8L5HqM?=
 =?us-ascii?Q?7xYD0R8lxjdecp00D/AjY7LHcddgEpFvOmD20x/bElDj9YLUuQr40HkEg1s2?=
 =?us-ascii?Q?0zKoL5r95dVwsUDLHu8cYpU/GKgS+QyJf5tQtAlwcDPwbXvA244Z6qkHlrtP?=
 =?us-ascii?Q?+GWD/Jxpo1oXEyqzcT7uSq/ADIOIAYG3+j86bn6pQH+dCbd4jCF269eTe7Bf?=
 =?us-ascii?Q?xuSPEV7nMXyOhBQ6oYjQTxB+nRP2rKmNRrPM0GO80Ez00AoiDbhitScy/oy3?=
 =?us-ascii?Q?ILkzK6/N6+78+CAuFNLjU0/2TT9fRu6pxzvgtCMvHC9XuWUDjLXQrn+bcfjj?=
 =?us-ascii?Q?v0WSNd5SqpagVkv64zBBii0WcxXkMFfbBeudnXie3zrJKQ/pyaKhxctnkS0G?=
 =?us-ascii?Q?OksMW1BBIhC0QhjkGTGaAjIqnm+J9uciMI0R9TcSHcE2BO24q4EVWyJTtJWw?=
 =?us-ascii?Q?M0ScywMLYdWbWM3ML8aGSdTtkMMGCpAaWbwZXHNgHcBojQJmCF3MBVLaZInb?=
 =?us-ascii?Q?n8GfX6wICk8pPE+hZFaSz0jxVUk6Nlgr3liMSDtg5e0gRM/FqRbwamW0WnT1?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	IvximdN2vU9iEGYdBo+9v/724ecSXaIflJKLJYYM1ho31xL8iyBrADOq9y2yYnNiVsmV9bt2HXD7f4a3bAWfCGBm/lTrxGakEocwwKLAxp6JM8HMp5WRQW61pZ6TEcy6M50qvug14EjT7a2v0xW8NJFD9poIqYYs3dewdw8chb8sRP0Wf4xFOGdPuPjjFks1AQ8dWUFmVAMejgWUXZkItF7aq46dodVjw4ANE9CaUgxkZCyCdMxQa5V/sHuBbuC6A3pAQXEGnkD+k2xTUeV9xpYigKPhSR1i/2dk0uBtiSPmY6dxCkaC2iBjFFx3tA4BMqMn6orMvUQxI6a2RFOopfX0J90pt4wTWkMYxoSZVqabfNvo7TWvN7wQ39lDw4zA+d3yhWM6zuUfbWGwk+lKGj86AN/hn68zGjpyxRKANz+ocw8OV5QK+BB5Q7BjCwERvL/Zr+7QrR0te2PtgN1IFMe0/Ay5e+ipxODNdpl/YMcaKHpObEG+d7Oq/9MKYJtNwwE4l870509naYE1bzfH2BnDCaiHoaroYd7Lhr+rUy+l/FyT5MJiiQz4+U67J4lDKyU07Awh3s15TncutloNMPq0BfEWvkPawCsFOaOCqQU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc3b15d8-d782-4c54-4bb9-08dd1058ba73
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 09:32:23.0659
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xURCVJmXdeMLj6JqKOYnKLVtgyenPqbu1BrBLBErbAjppxS9ElSl0g0XUPZMDtPeB7tnU2V2Jq0pjtXUdDe0YwMs3YSGM6Esjn/YdUwxrF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7455
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_08,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 suspectscore=0 mlxscore=0 phishscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2411290077
X-Proofpoint-GUID: umAfArFxmDI3N4eQc8f7XBx01wj2GLWI
X-Proofpoint-ORIG-GUID: umAfArFxmDI3N4eQc8f7XBx01wj2GLWI

Lightweight guard region support has been added to Linux 6.13, which adds
MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
call. Therefore, update the manpage for madvise() and describe these
operations.

Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
 man/man2/madvise.2 | 81 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 4f2210ee2..e539fefe4 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -676,6 +676,79 @@ or secret memory regions created using
 Note that with
 .BR MADV_POPULATE_WRITE ,
 the process can be killed at any moment when the system runs out of memory.
+.TP
+.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
+Install a lightweight guard region into the range specified by
+.I addr
+and
+.IR size ,
+causing any read or write in the range to result in a fatal
+.B SIGSEGV
+signal being raised.
+.IP
+If the region maps memory pages they will be cleared as part of the operation,
+though if
+.B MADV_GUARD_INSTALL
+is applied to regions containing pre-existing lightweight guard regions, they
+are left in place.
+.IP
+This operation is only supported for writable anonymous private mappings which
+have not been mlock'd. An
+.B EINVAL
+error is returned if it is attempted on any other kind of mapping.
+.IP
+This operation is more efficient than mapping a new region of memory
+.BR PROT_NONE ,
+as it does not require the establishment of new mappings, instead regions of an
+existing mapping simply have their page tables manipulated to establish the
+desired behavior. No additional memory is used.
+.IP
+Lightweight guard regions remain on fork (except for any parts which have had
+.B MADV_WIPEONFORK
+applied to them), and are not removed by
+.BR MADV_DONTNEED ,
+.BR MADV_FREE ,
+.BR MADV_PAGEOUT ,
+or
+.BR MADV_COLD .
+.IP
+Attempting to
+.B mlock()
+lightweight guard regions will fail, as will
+.B MADV_POPULATE_READ
+or
+.BR MADV_POPULATE_WRITE .
+.IP
+If the mapping has its attributes changed, or is split or partially unmapped,
+any existing guard regions remain in place (except if any are unmapped).
+.IP
+If a mapping is moved using
+.BR mremap() ,
+lightweight guard regions are moved with it.
+.IP
+Lightweight guard regions are removed when unmapped, on process teardown, or
+when the
+.B MADV_GUARD_REMOVE
+operation is applied to them.
+.TP
+.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
+Remove any lightweight guard regions which exist in the range specified by
+.I addr
+and
+.IR size .
+.IP
+All mappings in the range other than lightweight guard regions are left in place
+(including mlock'd mappings). The operation is, however, only valid for writable
+anonymous private mappings, returning an
+.B EINVAL
+error otherwise.
+.IP
+When lightweight guard regions are removed, they act as empty regions of the
+containing mapping. Since only writable anonymous private mappings are
+supported, they therefore become zero-fill-on-demand pages.
+.IP
+If any transparent huge pages are encountered in the operation, they are left in
+place.
 .SH RETURN VALUE
 On success,
 .BR madvise ()
@@ -787,6 +860,14 @@ or
 or secret memory regions created using
 .BR memfd_secret(2) .
 .TP
+.B EINVAL
+.I advice
+is
+.B MADV_GUARD_INSTALL
+or
+.BR MADV_GUARD_REMOVE ,
+but the specified address range contains an unsupported mapping.
+.TP
 .B EIO
 (for
 .BR MADV_WILLNEED )
-- 
2.47.1


