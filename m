Return-Path: <linux-man+bounces-2078-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C430E9DC1C5
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 10:55:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EFFEB22CF4
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 09:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 376F6185920;
	Fri, 29 Nov 2024 09:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="O6szXNRB";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="yLWGkxS7"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424811865E5
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 09:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732874139; cv=fail; b=IBeSNkRPe6uq63fGiCyazBmSotH/u8tgwWHedFcRfOVo3Hkvsjih6rfKYaPlCcdWpcEG4y9cwH4GzysNkMuOCY31h0VEDsOB3H7s9RBae2sk7OW8i+SzrisE87s7BdDLK5mZJE00MezJnGZUxrYpGHtbdN4NLJAekVToW9mj7Xg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732874139; c=relaxed/simple;
	bh=CRfYt1q/E8wlZbMTmW4W0TIopLG5v54z9IlWCaEXOhA=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=ES+xS39RgqVXSvDhSonBFtjJ+rArdBHezHTTcZbg7kjMub0ejG+kOLCK8gnkBYscH3cfxy5nhgZ++3D39NXJPTXTi81mWkCQTgF2MXmpWzJqpz5bDFQFhUpg6EST7Sy+qyHmbCDvlPKkvRwj3s4WkFJgvtDAJ276ScWo46qbM7U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=O6szXNRB; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=yLWGkxS7; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT1fcbw013482;
	Fri, 29 Nov 2024 09:55:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=CRfYt1q/E8wlZbMT
	mW4W0TIopLG5v54z9IlWCaEXOhA=; b=O6szXNRBbvQJ23G8ajrUuNVsHOpc0j5M
	t8H0nWF+MimPtXtN1b+zKeo4wCBwXH1dpVnqvjyNcAGDEOqrNGuMNIlXRly2r5SP
	PQK1gVpOTTb8GEsRIkoKZ4yTTIfgT5LFq8BgBuJpt8lYupulHeEtMPBQR25t46pd
	SIZhntCIMaTVpYxSkB0MDxeJw7t3aRhNYOkYz46812dWxVK1plkxNnnbmrvgo6Zi
	bx79g2J73FaPrrCMmF/H0op6jwWMQ4owvKq+yNKTNvpbc3AdN17L18cPlFUZAPdS
	S/11/c9ZrDaXqIec/wJXejJdVWZDjbfHuBBUc8fADSFGwoGYsWy94w==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xxb24v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 09:55:23 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4AT8anO5018023;
	Fri, 29 Nov 2024 09:55:22 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2042.outbound.protection.outlook.com [104.47.51.42])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 436706hwsk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 09:55:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sP0fLfXdxJtmCyoUZkT8CY+2M+PeLvyPOhHkrXM7XOopBXUriu6lnidP8KgkntJxRI5omYgpXMi8tBxvqKO/3ljNwkNXT90tb1fuvoQYlu8rBBA/f8ANQN/fdwqPm6LLd+fEAhFhMSya4KustnsF+sPXvNGhYbK9KohjcR84y6hvB+T6uqVk61l7piftKe8Ib54k1G+a8diUxWd764eYB8t2FZVpNbCIivOilYvZffeOJdlD1QWUXan3NqvbI4jqmNnPmx8B7GjvrpD6TtH6m63ZXPdeToYFUz8G/fSnuGYjb5YSPx66jCNXE10XqSHC47hFE8VvKGgPsVoXtJdaWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CRfYt1q/E8wlZbMTmW4W0TIopLG5v54z9IlWCaEXOhA=;
 b=MIkgNxun9lZQWzqwTQ5TzQecodt/7V5FWYMEkeC8nw1XgulS0+t7o2RRm8u5XZ55Al6453bXQszVkPLS1AsGwznArAddzWwc2wFq7WPstDjbMwTwE+V1XX7H0lqw15u7zJvlP/B5yO8HNxM2mRGitJnSjEbeuqx8skutmtUBC2bjERtDUGokNkhvOB03NQ6Ts/Jzpst8N3MWYJo72X3VQ2fFk7wYaiEGas5Uik93iLqhuPPvaZTkZkFlv8MbvmoYj5iRqC41Hh34HbMdlymXaYFaZ4QALwbQTykP6y3pS5Y+G/gCP/4YtItaiJiVqJKmNO2UK9As+DgOmaALtM2Vig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRfYt1q/E8wlZbMTmW4W0TIopLG5v54z9IlWCaEXOhA=;
 b=yLWGkxS79EnsRTlmith8ibHzuggk0Wpal9bVgd8+zYhOhrJBj+l3YCpCeP20Ovjs+75MQn3alDLreFrZpO7lQl3Si1B/Gvp+M67axaOYtibN5+f+Nbj2c9jg8L3axfHJqb0LvNghIqCtRMZo9voi7gRNxeXbfIElcZ7mxRErQHM=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by CH2PR10MB4181.namprd10.prod.outlook.com (2603:10b6:610:ac::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Fri, 29 Nov
 2024 09:55:20 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 09:55:20 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages] process_madvise.2: describe 6.13 behaviour permitting all madvise flags
Date: Fri, 29 Nov 2024 09:55:07 +0000
Message-ID: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0510.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::14) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|CH2PR10MB4181:EE_
X-MS-Office365-Filtering-Correlation-Id: b0f5cb23-e7d0-40e1-c031-08dd105befbe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?3lqVtxQZU9pWommOofydlqVLxGmzMTNttaGQ02NWcaHLe0Civ/ZF9RhIvqlm?=
 =?us-ascii?Q?oW36/V494MIPk0B+cioinQwB1rtCuU2G5FF+2DBXZXrxnQGKaCB28bwxS4To?=
 =?us-ascii?Q?ZM+ApD1lUZo/7kgNA4ZgpzHOJr0OiUVtCB24X2t2O4wDSUNeUDg7+N53tr2q?=
 =?us-ascii?Q?XZzdQDsnB1je5/nfwtENNAzNVwIaRoqNwDUx9UVlhPDj4KMb9c6eDY+SiQfp?=
 =?us-ascii?Q?gqFQIOtHnFMeeFftMV5DKIxZcPFvLi6e+jTPtOAl+GHTuml0eZxgTBpS3Vy9?=
 =?us-ascii?Q?Na8543Apv09De4JsB7cskBlkYa0e3EzjSGLP6/pt6wRaqCaxF2m1RDxO3mWB?=
 =?us-ascii?Q?vAuBm+U15aGdCVs3qXxXCrI+YaF7jXYOZofqe8t2P90WgZAeJxTjUh3+sgKz?=
 =?us-ascii?Q?eZGtpcW9x6x/jCiyMPlnfMypkjRZwrJ2PItebQSAYYddFuu2nj+rLVxK24KT?=
 =?us-ascii?Q?JW4wdvy+b8cIIDnUrsw8QMXIiowEFupBB4JeJGZI+MVTgBe3v1cf9/ajmaKI?=
 =?us-ascii?Q?1sPqJmVECXDmfqAqrjsz6F/Ym/sgtefSko46xy8WknArNwhRqN25iIrEhFfs?=
 =?us-ascii?Q?cDVQOftjnDPe7NvX1cLc7ZTJwfxpdUHUZPVobd/YKSAWmn8pcaiZ1vaXn+AF?=
 =?us-ascii?Q?lomofw8cCQdNO7w9oWLA9WWj+TNkgT+Bsb/NAoucX427aQXI7s0O3DOK5cAp?=
 =?us-ascii?Q?eD3to0lKCAcYTKmk5CAmlaS7ZDDk5cUCt3pg1OL5r717awDbaUKax8IUznSB?=
 =?us-ascii?Q?qqzEfqNqtRO4/wr2rZH1LkkHupicobUV27c0ond3itY/AQbz+GQtsbFGApqh?=
 =?us-ascii?Q?qe6eIuX2L66bXF/NUAdhKALlJJec+tjwHtv+DPEu1AFFdoq2lHjYoTCCviU9?=
 =?us-ascii?Q?IEDIHc1YO2TNqYY9NtWyi0W4JXRC3JgSt076UNdNrFD9qnb2qFUa0DXsz7s5?=
 =?us-ascii?Q?GvdDC29V1s0dQxP2Ids52S7MeD/7qmnNY+5E7i1poSxQj4WGJiRK/aJIjIt1?=
 =?us-ascii?Q?q/2YP+9m06sTawm3oIeLQu6x+Q9jq2GJ/H7bFs5TXlobu10cmH7WaLdAEbMA?=
 =?us-ascii?Q?IKs+EFOoqUlR/+e2wEChPkvRQ6iGJ+xTKuctjDVJntTesBeYownF1WURCV71?=
 =?us-ascii?Q?1MM/1GKGEul3KJrEGY9LGDuEmXA00Ir8jLBj6sGPh9lXZBkoM8C065Cwh4Mq?=
 =?us-ascii?Q?68EnlbewiRh9AoEBcLEarVGcdGSO7AzGLYS4mPL8c0LaC11TNeIALGMOoeQb?=
 =?us-ascii?Q?bMl9GwKxGk6k3msC2uq+z9u6fwR9zqRUfMnmITyGHyIzNXR11rGyihrvKGT+?=
 =?us-ascii?Q?+SWIH/m+A0z4Qwz1uIUE/OYenRFyZyrN/uzhU8UE0Py6hA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?HyUABIe6LzfMz85j2UfI61xTvSXnQuaNONV4uYJCvWbW2ozUfcp90UQIUr/D?=
 =?us-ascii?Q?58vLQ69PC3BizAK44K7PNTces1uSYWChKyCprLZgyai6TaPjKkSeRFRlPemQ?=
 =?us-ascii?Q?/0YY6fNvHNdDkkRoci2YM/NERXIIi33axrh2JvT8kjY1H7BzaSOu5m5oSvja?=
 =?us-ascii?Q?66z6bmUviF6OEAIDvqofR+gi37OxlT2wA8B5VJvlfnW/EVQaA5PsS4qNjGNo?=
 =?us-ascii?Q?f378/OPHKdAwWakcvPxz7GLgjFvc6dXTGpJ0XtmoAbdTiVzA1H+beP043PAm?=
 =?us-ascii?Q?fBh85itunQi7jM1kVgScYk3Eh0P8b/NQeTG4YVkLUj7DJZSBq5BuBQ5VUKpY?=
 =?us-ascii?Q?bCfgjKyw/jmgu6Pv8MtarPGtKEYGhkdyE1dpbugftUiioKO5KSEQVIGwKaMN?=
 =?us-ascii?Q?ZAkQRxogV26UQAUMiJBy4IaWQ3LwOdyH76EGeeU2DwNpdpa5ADFSnEJc4m55?=
 =?us-ascii?Q?jlK6klGMatOMwMhLAMAwrTklyPwyNEHaAOesANuq+NjspOycok0eN3Tj3hzY?=
 =?us-ascii?Q?RUdZwrawIdkLbRWkHyoxpygsTt3H8CPNm5QDVC7GJ5EWXV9FtVlOiQN5SXFv?=
 =?us-ascii?Q?WwzgFPXl006aMjfxnmrIz38YRMi+MqNEsY3EP7PBarDfsjJ4mpItL+VdwYzS?=
 =?us-ascii?Q?nGMUfzXSM5XXJK3HeLIgroctCCQsF1dWN41osLYPi9/RpF0AQ/PEwSOQKN0E?=
 =?us-ascii?Q?oAmQMWAjALwm+sKNyhCPAc6cItl0YWT2YbJMPXSPsHAcsXzNOdjIkL7+vSmZ?=
 =?us-ascii?Q?9jEiLk0tEk3UcdiR+A6dqH1weR8Y6BCE2Q0nEWQhdDNeI9FVx0krdAq0qoJf?=
 =?us-ascii?Q?cmlAb9l+kyMn0ipgFrQrwaKkQ54UHsmUgpeoP+hgU036lbKFExa1N+pyqD8r?=
 =?us-ascii?Q?700m7LAQKT3LtaMmMN08jqRitiEElxl2jHkjNJHpzNINVNyZFPWwEwzs/hdC?=
 =?us-ascii?Q?mTa6h3i1HADF9XpJPJLgzrX96+9hmWaXEZHAtGzIwQS101ZTvR4gti+D9psr?=
 =?us-ascii?Q?TRU5aweQeQj4riMKqlq0rZsK8em69zctnG+knH99iARKqcBo5h79c0K2PTWm?=
 =?us-ascii?Q?jwXsWWDsqRauCOg8OM3B0epssMACvOoUG3mfsnntrg7pLrUZppqO6dGuK5PM?=
 =?us-ascii?Q?OnCyL/XnDaG80VPoFQrMQzJaVnh5IsfNL1yXR2Gdph1110DZb0xglML98YsB?=
 =?us-ascii?Q?uf/bO7Ummb4ylKyhAejknUWrILehtlCtJG2XWi/EyULOWf3ykLWRJh25xWZM?=
 =?us-ascii?Q?WPV1A2vVJKTflxYKKitR6ntkoSlCF0R0h7z/dEMZlc41jjFGOguqMZMki6GL?=
 =?us-ascii?Q?KhoWhyA20tG4Luw7RGN25gUfSe1E0x3TrTHT0OZFJTm4QufhnCXU1/4phVsQ?=
 =?us-ascii?Q?6qMxsvr8qDzIeyZ62JNlWygdbp/QHm22TiG8RZ2izSNv2KzFWBefb80Uel9x?=
 =?us-ascii?Q?9B2DJUXXi7F4A90IvVa9T02IBXqEkF9k0ahAEKer7avzkaJvO+Rdgc2/E6hq?=
 =?us-ascii?Q?mLImQ51BTH3kD4Ipm1+IwUJxoSsfHFNR+FwIe9jeppuwKG64edCOA5Yfilp/?=
 =?us-ascii?Q?rE/XUql+EKUWqhQUWARq7eghX3Ly35Z3TYww1CSyoQv/QMGMVdQZTGbVHoak?=
 =?us-ascii?Q?TQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Dmy+YfoM0IvLzn2RpFJwtQEOoEHndDzpds8sj3ABBF1IzwKZYIPasEG8eq/Cb712Ug3HE7ThhvGL2P4yUuG1pq1ud6D1GEvNqBOxgmnnMlOqYU5ntf1CFXhSqgGhTJDo3RcppW11WyV4PTHVazbZ8oL6zz6tV51qpiqatsqxxe2Pj5wQLGSv3iXXAXD7VVcGGBdIxJu+qugJLADcwGpYtKgONABWCU3f5ONX/pD6DbVg585tdjWNBgorvNyzHV8Yv8Fh88CT7YLMHao3iC4E0PPLjT+C95r75VxSkrsg3E5TItHMEPV04VsAQ7xKlEv6NlwS0Hc+x0xqp3ZGal1xtUbpdiS6DTm8HlC3X9nf/Lpnh+jMvClJDRhFAzTiHRv6WHL7IWjyFoaL3Cc4gkOWdX17Ywv13ddZfiW2B1WzzByI6aMgIjOznMOxJGfM8YFVHUUkhXhaNqyHpQqD5EV/5+lkBlVaqtNRDsbWTjIL6vZ/g0wPY5SdEy50GMVTMrUXw5yfXQHNavJhBLzy1O/4ds8IyTjQjqmTAyrBUJHQOKxvyr0jT2wnUh0o8t1lq78+nxONaIUXAX9gjOALy/MUKX4jmTiODRw+sy6wnNameak=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f5cb23-e7d0-40e1-c031-08dd105befbe
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 09:55:20.8098
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eaLQb3j0+MXi+lpHiLg3jSeSg+va39tT8tvJ70cEI8fJAGVshRtkkga5hj/x7aebjKt2N0yNrNTAbIcfxm0ghCkPewkzY6HGQsjTdoqGKis=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4181
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_08,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 adultscore=0
 suspectscore=0 mlxscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2411290081
X-Proofpoint-GUID: Rek0vNsXmxXpzf3gERW2N40S0eMFbMdC
X-Proofpoint-ORIG-GUID: Rek0vNsXmxXpzf3gERW2N40S0eMFbMdC

Since Linux 6.13 it has become possible to use all madvise flags when targeting
the calling process. Update the man page to reflect this change.

Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
 man/man2/process_madvise.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
index b78a61553..d12407bdb 100644
--- a/man/man2/process_madvise.2
+++ b/man/man2/process_madvise.2
@@ -54,7 +54,7 @@ This value must be less than or equal to
 or accessible via the call
 .IR sysconf(_SC_IOV_MAX) ).
 .P
-The
+If manipulating another process, or prior to Linux 6.13, the
 .I advice
 argument is one of the following values:
 .TP
@@ -74,6 +74,9 @@ See
 See
 .BR madvise (2).
 .P
+Starting in Linux 6.13, when manipulating the calling process, any advice flag
+is permitted.
+.P
 The
 .I flags
 argument is reserved for future use; currently, this argument must be
--
2.47.1

