Return-Path: <linux-man+bounces-2133-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D564F9E6D75
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 12:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39C35168C56
	for <lists+linux-man@lfdr.de>; Fri,  6 Dec 2024 11:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 022F51FF7D6;
	Fri,  6 Dec 2024 11:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="SwbMpSFr";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="lSsLqrUl"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A09E3D6A
	for <linux-man@vger.kernel.org>; Fri,  6 Dec 2024 11:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733484900; cv=fail; b=pflp4g5ur6eYkAAHLdEDKfLnM5Rl6Bxg31nm4QHGBKR8qLHQZE7+p5hUlitdFSqDxxKLzSsdqxv0ucnlKptZo+hQU1pJauDhf+n8wRLGVphsMreetR3CXU6qGTEHPDo+2kR+MAUqZDWXZ1LiNwOzIkVQZ3CaeZ209THMKcdmBXw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733484900; c=relaxed/simple;
	bh=+t25og8wRMbKIN7lgKy40/vTx8i1CnCrotC4XOhVu4M=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=Mb3SSG6rgecs8OXp7eRVdTNmgc3KJvHUgXlbwG8WN/XNNIOrb3x20qWtPEceKyMFPzxt6YIXpwehYGNrtFx0VALctsdpyZTAsOTTNeLSGEGMDK9vUb2N617sjrhMkkUsvYvUfZVOpNzsuUGWOOa4tDpLZHzlBxkjBUXLvDFwxEs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=SwbMpSFr; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=lSsLqrUl; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B66sMNH021699;
	Fri, 6 Dec 2024 11:34:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=TBY3B5jnvXNATzig
	uvaOJ5iqXOXrZjo2zSihDack3bY=; b=SwbMpSFrSBivg58KPep1/X4I3A4heSCo
	NVwy0mLfZ0aS4pgWy+PjoMprlKhwAS38tFRPlVnT3HlA7i15d6RHozflju2ZQ+ar
	fO5TId+y2P6gv95M4A5PbLTSKsOGZTmcqNuzWwr/KDzBH25xxtVWoBn2epNPKTqb
	wXbGKibdYkFmTsJL3lxPFmNjKuz6bDvfbx7Dgo4htPXPzbZIJgk55WQytifEvXsr
	myKjCzcjuBZzD5rRHQifwj5OQkkptAdqdCGZDtbS7G2I3NsISCsRGlUEbWNliwEW
	P9LWZhyxoH9bRs47tc/1fEW7x7QNDRhzxG0wQKqAxF8NbgWmaoq94Q==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437tasd4dy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 06 Dec 2024 11:34:45 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B6BL1IL001364;
	Fri, 6 Dec 2024 11:34:44 GMT
Received: from nam02-sn1-obe.outbound.protection.outlook.com (mail-sn1nam02lp2049.outbound.protection.outlook.com [104.47.57.49])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 437s5c5nfe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 06 Dec 2024 11:34:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7XOUybiiEpjbAAf61ITCdXpvXgjRd8XgFZoickIYl3XVNMBKLzKAHNwxurTvdpqUhu7lUwiY383Umui65AGUnx4PBCpBf4Nexebwu9wXn16b9ajoMwbXtFQ0LvmDy24vilrLYgQRojyBfDaMZI6PrkYYPajd5qY3vidqsniCh7OuHvQw6ltEobN+C/eDirCbQU7F4UXOh1TrMl6c00zJ069kmA/A9Iy3q/fxr0nsenAF361Fd4IomBaiPLTikpaCIKuxjCX5CvMVl26m3BfyAeEeglCmRAZzGb2rU7FYipjtd29jiJVIHZIhbm3PAqo+EgPQPExAtjI2f5qecEKfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TBY3B5jnvXNATziguvaOJ5iqXOXrZjo2zSihDack3bY=;
 b=RMIMn8Zt9K/7161vTdWHiqmrwmxcj7mWWzt/Y7AxSqIH1ChFklfPHJV/gOFItAAChb6ZjMEb9jug4oJVCMRhpcBaku2SiVsPUluY9kq6fZTBh62UJv5wfBLXtCuFazo0uXuPtWZYHvWX4xe2MMnQ2BOjxlizgSoFZmUhxZcSxbUM3nMUwsO+z1cniXcRs8hoJD9rqZCwJp4oFzBeSqbYG13bvZIvoL4BlZMarwt535e7rYsbhw+YOT7NVVYr4PxE5mWbKs7thOFsLW6c+ORODdCAp64dAXB4d2m81uFoykHoNOTkrUlY7J34kKN3LAeNxhA0qA0KlpX59HIRTYNelQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBY3B5jnvXNATziguvaOJ5iqXOXrZjo2zSihDack3bY=;
 b=lSsLqrUlunWqAneUKHn7lSm4sBaKWgjGidP31TOgkxkpn6FWtnSE41zP40iFTob3ac2v8tRH1bNRx3SmmuJbFLdRmfaB0SgdFFAlaCdbtAvlpaF6tHRynJT4T/J7KV7T6zXHqkKiHGf96+0KFr+bjVjyWkshaQYWmBlsEjqt2g0=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by SJ0PR10MB4573.namprd10.prod.outlook.com (2603:10b6:a03:2ac::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Fri, 6 Dec
 2024 11:34:41 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Fri, 6 Dec 2024
 11:34:41 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages v5] madvise.2: add MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Fri,  6 Dec 2024 11:34:18 +0000
Message-ID: <20241206113418.14327-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0629.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:294::10) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|SJ0PR10MB4573:EE_
X-MS-Office365-Filtering-Correlation-Id: 05cc06a8-2180-4a25-8b4f-08dd15e9f966
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?g/iKe6tD98mcF6GuFw+M/iyAMwzLXxcmFoXF9HJn1gsUzzklXMa8dEbyjZ14?=
 =?us-ascii?Q?yoSUZdJ2VPaYqoaGuPFifytYP0HvQP9iN0rlLbk0jOKyRR3MTChqWkB/yyVP?=
 =?us-ascii?Q?DwpjhDLtvpx6aTeVw/gOtYVs7sEbby8gDSiNtglg6q9ynBlwdq/OS7x+IEvi?=
 =?us-ascii?Q?o2wfIRlh9Ixgp0FfFZW0gu14D7fWw6nrrezUClMWmrHtM1sgq51C2UNesChP?=
 =?us-ascii?Q?WfLv6fcMXyklWvv1zZEWolPJCmN8nICW1rfz7R0WsI4dUgdtASpn1XTr8zWG?=
 =?us-ascii?Q?Dp7i1mVhl80866E7kK6E+LfLnUl+ssA6ne+rHcE/3fMnjOIlPdw4y9h69zXY?=
 =?us-ascii?Q?2ZOA6D6mUaIOZoaYLYLj7LqceaKCywqUAWo1oFs4iK4WzoQ1CGFEg2EZs8ag?=
 =?us-ascii?Q?i7Z7MKN9YqvisFNxTk52ubPo+q9s+YjuyxsonsTeGjFrB68gkeuWAKGHBBd2?=
 =?us-ascii?Q?FwpdX/QcoB5Js2OQh+HcRtCps2AtyeEd/K5hCG/NTGD39zqs7/XzGcuIPgoQ?=
 =?us-ascii?Q?+Rw8bQQQdjESp2hzkjOc2vXhb2pTYEyow+UgBNnISdVlyuer9gBoG6aZiX18?=
 =?us-ascii?Q?KxyatFBiZUEcYtypE8TFe9itVcJ5NWigA7iic0V5c99vGdtjQ/3XG3fWz8bp?=
 =?us-ascii?Q?O1xOvE1bOLY7eUOfpxl3tAKSQDc9vhRvtPpuxJS5kUicD5P3cdASN0sT7zAu?=
 =?us-ascii?Q?liiDhJfN+q3Uy08kzFjuNoFijHsumjktQ4T91nzYNg7j698sYbYcflgofgsN?=
 =?us-ascii?Q?6/fv9wd1Ws+A2fcPwmjc9oQs4ZZ7Tu74OS9Sh321VWUqTtkysA8CHORADjfU?=
 =?us-ascii?Q?6A1XX07S2FnNzrsooUMDVfY5kZeKtLCDQr3Qu2/NdhhWsZ3ozyGpynsZkQPC?=
 =?us-ascii?Q?BKb34n8ti0e/R96/BAuNq2RtjSL4mv774zHqnABPTbanQ7mEeRFsijWTNzks?=
 =?us-ascii?Q?lZFDhKbRMcovI/Eolp0Mz8QZn2gLLC8rjnLnn5fUyYe9lr57iHFdvFC+fY0c?=
 =?us-ascii?Q?ayJclfqtIhPbOpvr8MRhoO3/tN5SxgpffRtVmfVm29NvBQDSY1klboPm7IGa?=
 =?us-ascii?Q?EterI172JkqfTv5zSnijb2Patgx42kbQ+v4boi1pOsVWr7XZe2VuUbs4mDb/?=
 =?us-ascii?Q?b2aoCQVuKwrDVd9XJYI95bIQ1uEgZVyDdfPQPG93Hz11i8VSTehgqIzf8AB0?=
 =?us-ascii?Q?rLqegZDS+KZ1Fw4U5fUh1Y5GjB9z4XfGt1mWSyj446spgrZGCp8Bg9i2MiPp?=
 =?us-ascii?Q?KOhSOeWMN+XXDIfM26Vkq6laiAlkl5IWSFDQ5oTWS7bBiDKPSuNCKfQGwUsR?=
 =?us-ascii?Q?f/fQtzfnzeWstSRv7/N/BHXv0VPWXPEUn62J2jf98n2rkZ3pm4sLLZ2+VbJl?=
 =?us-ascii?Q?bRWaJPs=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?MY36vWcHnHp2KB2r31ARHrVFf3J8UtayeqZTSd54fFUssjxmtnwRpiE3yX3f?=
 =?us-ascii?Q?7GvWkUwl1gpSIGBVqQjaF68CVnypRYTxSCCJ0S+6QuFAXpU266OPbjD6xXux?=
 =?us-ascii?Q?W/mg3cap9dQJUbWroGALOX3Ur+d29QjcVE17j9YXha9eK0CXSFcDhWETE56R?=
 =?us-ascii?Q?qLGP8OQ9/8mCiYSZM7/i8jzQdRJIFjeigNaI6rAlcD7fAMGocZ01Qi5Y/58R?=
 =?us-ascii?Q?yjsrcPHWhzs/RMCWbEjvt0UO6u7KaSMSO6e89DSkgSNrliBtVgjy4H0qyH6g?=
 =?us-ascii?Q?6MTTEEjsxWDZkLtlb1tAlpew/BHKpDVcn4JwjZmOljML0VtlVe77msqSoaj/?=
 =?us-ascii?Q?RLyufgBWhZguZDQsUDPIgQa1RY8WpZ1P2OH3m0/plPMbCtYZNZWmJty7eiub?=
 =?us-ascii?Q?iz1FAaSciIf9cwYr6PQrC9jcP2gYUtniw854cvSWXWeZJIZU2w2L3cz8o7Ya?=
 =?us-ascii?Q?FKYx9uEW4YS5qYvb53cxxD3VyhVhaFVT7cH6p2zH3bX/maN9wbTX6Gq/pi1/?=
 =?us-ascii?Q?blX/+lLSo4DZktBs4o3viXQ6Bqtyj9aqp9Lh+/I2f7bcVWQzsO0QJXE8ldzT?=
 =?us-ascii?Q?4/r+S333E5Y5FAC5kC6Zq61zu4vx+Vin6mM9kX3lWvD9GBmCuYJcS3Lhvkab?=
 =?us-ascii?Q?b4nfXy0ycFOQ9ttw7rbEJ48QulS0aecETL7WZKgDnwR4a749u52mx1V2P1m9?=
 =?us-ascii?Q?yFu949rKhdQBvzHeEJm5PC5FA6uaq86Foiuh4NlNQXPuG/lPHrFM4NQ+w/sn?=
 =?us-ascii?Q?P0GXN9GQRCdxKVTTZMDcz00c1vPMPoFEmeLXU44fqcRDjKkOXX8SZGsNuIit?=
 =?us-ascii?Q?yNi49iDMourxJhdEuKIj+Y0lxPI0n1BBmPNV+8+yufHbcycWKcret+RFW6a+?=
 =?us-ascii?Q?AbbPRBt9OrGFScuhvwqSBFSySUNsvBNHM/GRgtbS0o4sFntLuPpuqCsN+s2C?=
 =?us-ascii?Q?en1OTkx6oC00nx22BMfq8Cxuo/kH441MRUVkZaWqAAZlN1VQO+Xs84CgI4Gw?=
 =?us-ascii?Q?qO+24QB0/qBo+ophX+f/BH0/Zd0/bYhQHe+3dZbzCGp7jOg16XdGpv87M9ns?=
 =?us-ascii?Q?hiLQvqxumO7UWLC7PrPmBQdeaIr8QAJcHPllH+nl8R/l0jnRmmFlZu7ajpMv?=
 =?us-ascii?Q?qF/mwTgDUZD67gPS7S10dZc7FxgaoCPr/xu6frE77dunmGLMqkUFEoFubVJx?=
 =?us-ascii?Q?pkzFlCQsU19lT1fdr9QaY+hhPwwSCkkQhgjlEsWBLJH+H8Ep1x95ZbyfvcHF?=
 =?us-ascii?Q?0V4h440ovvfJyB8RMEKLY1ri//Fj8jzdOKbgIKvzSKirAiY9rfWFrtxO6qkR?=
 =?us-ascii?Q?HFMhex7bZEJifAoiCjaZWSnt/XN0ceTHX684pQRSG7fBEEw15oSqSanqT7IR?=
 =?us-ascii?Q?V8sXgMBvEX4cdOwrlO908lPnSS/Wr+X2+p6eufhKyQhx22RpQQ7cWFradbEv?=
 =?us-ascii?Q?FErg0+fKJVQ+scQL5Rn/va8YoWlfNiqxtInzGoBKtv908lBElpG5zIOOuMrC?=
 =?us-ascii?Q?T+kgVbUO/QWJBakuD3g5mPf4UU+Kjt4tq2/1efdPNrJIHB7swSWKRKygILsD?=
 =?us-ascii?Q?Ber8LsYBAqVhAufsTQVZK5OTIZg5Tx18oA11ncmnZIexYx8NPTH9kwpkCzen?=
 =?us-ascii?Q?Ug=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	6tVeTlduqEb4CEVS8AC5xnHsW2v3r8hJthwigMkTXrHw7JMqxhzYoE1zpXMooRc4IHW53exxo/w+ihsM9VPkAnfRqBMYKQfOXJ3QyNeF8ES7xTMkjTYChyNz6QIknZJq6m61TNkRGOp7O5g/GIENghGYEv/nJUscnkt48gJ7s4bui8WhuVAAeAeXSRrM71hL74UnH/u048Y3wWR37oek1Ab54mm3RSLW9ApRi/ZvsIG8jhzUKV3jh/VuX5BoQXT3m9IMdFgkAdyvYEoKX/csJ/YRfV8sKeuEuOBNuNb9kXf40gspTrTTZWOEXTbwu6tO/7YZcRnZFpeH9uSGL3UFyyt24lNiSt7j0h9Kymqaxp3nvKSDxjf92bBIsVS4fT6iMFGphnzMgf2NRZllos/OxjC4RfSv6mxnIdhrggjA39zU6UwNCDipWkQkrlEB94Aw6GdQRHHKfv8oFmxVIQ2g+L1uHf9c7g3an9Obf/R4JQByZPXjf9N1XhGwdwzdJqXpEXwRJSFNFjAOwgkAhFFOD3hDI4a3gbUyueoW6TKzNNcFf6JVATzdVgogdmY175CFZDj/WGR+vYx0TlayQol9tGKEXuAKMd1WQiNm6Z0W2hY=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05cc06a8-2180-4a25-8b4f-08dd15e9f966
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 11:34:41.4606
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SiWUcjZKmMo1hjzfmhUov5Kwpx4Zml7yimwkuBazVVZPlzMn2+pNaPo4jbBK+j3u9+2+V9bgvyuu2/vYaFFQ0sQAoQihJJK7XxDPqWDK3Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4573
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-06_07,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412060085
X-Proofpoint-GUID: Gk8SSGDYzX9NmZPEpOQFf0f0OdZnfy_l
X-Proofpoint-ORIG-GUID: Gk8SSGDYzX9NmZPEpOQFf0f0OdZnfy_l

Lightweight guard region support has been added to Linux 6.13, which adds
MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
call. Therefore, update the manpage for madvise() and describe these
operations.

Reviewed-by: Jann Horn <jannh@google.com>
Reviewed-by: Vlastimil Babka <vbabka@suse.cz>
Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
v5:
* Prefer 'replaced' to 'cleared' when discussing existing mappings that have
  MADV_GUARD_INSTALL applied to them, as suggested by Vlastimil.
* Included small changes Alejandro applied to patch.

v4:
* Reference function chapters as per Alejandro.
* Minor rewording as per Alejandro.
https://lore.kernel.org/all/20241205104125.67518-1-lorenzo.stoakes@oracle.com

v3:
* Don't describe SIGSEGV as a fatal signal as per Jann.
https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com

v2:
* Updated to use semantic newlines as suggested by Alejandro.
* Avoided emboldening parens as suggested by Alejandro.
* One very minor grammatical fix.
https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com

v1:
https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com

 man/man2/madvise.2 | 103 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 0dd481d21..c9b4722db 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -676,6 +676,101 @@ or secret memory regions created using
 Note that with
 .BR MADV_POPULATE_WRITE ,
 the process can be killed at any moment when the system runs out of memory.
+.TP
+.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
+Install a lightweight guard region
+into the range specified by
+.I addr
+and
+.IR size ,
+causing any read or write in the range to result in a
+.B SIGSEGV
+signal being raised.
+.IP
+If the region maps memory pages
+those mappings will be replaced
+as part of the operation,
+though if
+.B MADV_GUARD_INSTALL
+is applied to regions
+containing pre-existing lightweight guard regions,
+they are left in place.
+.IP
+This operation is supported
+only for writable anonymous private mappings
+which have not been mlock'd.
+An
+.B EINVAL
+error is returned if it is attempted on any other kind of mapping.
+.IP
+This operation is more efficient than mapping a new region of memory
+.BR PROT_NONE ,
+as it does not require the establishment of new mappings.
+Instead,
+regions of an existing mapping
+simply have their page tables
+manipulated to establish the desired behavior.
+No additional memory is used.
+.IP
+Lightweight guard regions remain on fork
+(except for any parts which have had
+.B MADV_WIPEONFORK
+applied to them),
+and are not removed by
+.BR MADV_DONTNEED ,
+.BR MADV_FREE ,
+.BR MADV_PAGEOUT ,
+or
+.BR MADV_COLD .
+.IP
+Attempting to
+.BR mlock (2)
+lightweight guard regions will fail,
+as will
+.B MADV_POPULATE_READ
+or
+.BR MADV_POPULATE_WRITE .
+.IP
+If the mapping has its attributes changed,
+or is split or partially unmapped,
+any existing guard regions remain in place
+(except if they are unmapped).
+.IP
+If a mapping is moved using
+.BR mremap (2),
+lightweight guard regions are moved with it.
+.IP
+Lightweight guard regions are removed when unmapped,
+on process teardown,
+or when the
+.B MADV_GUARD_REMOVE
+operation is applied to them.
+.TP
+.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
+Remove any lightweight guard regions
+which exist in the range specified by
+.I addr
+and
+.IR size .
+.IP
+All mappings in the range
+other than lightweight guard regions
+are left in place
+(including mlock'd mappings).
+The operation is,
+however,
+valid only for writable anonymous private mappings,
+returning an
+.B EINVAL
+error otherwise.
+.IP
+When lightweight guard regions are removed,
+they act as empty regions of the containing mapping.
+Since only writable anonymous private mappings are supported,
+they therefore become zero-fill-on-demand pages.
+.IP
+If any transparent huge pages are encountered in the operation,
+they are left in place.
 .SH RETURN VALUE
 On success,
 .BR madvise ()
@@ -794,6 +889,14 @@ or
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

