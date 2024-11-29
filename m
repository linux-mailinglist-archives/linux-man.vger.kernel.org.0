Return-Path: <linux-man+bounces-2084-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B240D9DE8A6
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 15:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62C3F1641BD
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 14:38:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C8512CD96;
	Fri, 29 Nov 2024 14:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="Dnj8sy2J";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="D7lneIYb"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F1142AAB
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 14:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732891103; cv=fail; b=CxPPTyX6z69Yef/mWeJWQyXTuEa15a5JluITfJU0rwV7fpsKvcCGzC1yugeCJedGARNMERpfWlmY/N5D8lSV/UeJiP++BBU//fyIVwDGVQ6MXsCyCH2OtiOBSBI8rRMZs1cnmsytcnG/sujxIG+jw/KAshz8ztAXkjYitqOMjRI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732891103; c=relaxed/simple;
	bh=7iV/I1RjW6S1PbzicdNTBVtpUPmGv6G6j4mee5nw9j4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=XHJOtYBr75h0pzgT2HXrTplfA/VN9sUGVSmCqryEMRImJUhSAetgvNn6xmMs2dJxHikMOb/BwSdOQNwOEGLVqpfCJTVjIP9wg2IsQFAQUb2FSzsW3c2MOksuGrSlXWhzwQ0EshtVOOWDxwCaz39Jw7muO4i2sXKBMGYu2iCO0B4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=Dnj8sy2J; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=D7lneIYb; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATEMg2X012096;
	Fri, 29 Nov 2024 14:38:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=IEaMA3U9fLajpfla6z
	ooVcYMApsNfq3cXuNHmQNgnfc=; b=Dnj8sy2JS9DBbapck60m8aYal5n/c9CFY+
	3lmIxDoMcqeRzn62LqxHTDlU4q6yihxxB8Fo6MhtRsJSZ5glV2+BnV6GLJN1jz6/
	XjMH/k7Jf/xHW7nBx6LvVgeDUpqP8KUMeQW38p9q5zS3A2ctQUejU5CiW2uLlC70
	zk9eCoLoffZ5D2InFByOWnuWMR0GpbzN9f3hT3SxGmvgzf0rFFzS1yzJHqJRd0KQ
	K1U3daDNICIg+Dc6qR8MQGlIIb001dEjj8zWfKO9gSo6HNLKNE1inU67q0eFRk0W
	BH3esYROZcpCT36rdwTDcAZMj3+ExeZnXmfRNznuY35nOAM6oJdw==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xybfsm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 14:38:08 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATDAKQ9009189;
	Fri, 29 Nov 2024 14:38:06 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2045.outbound.protection.outlook.com [104.47.58.45])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 4373sscsyk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 14:38:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hXZFSL+YO4kfuiLTICZHQ0EywiuQGz5WYZDzy+ABmtGGmnjIcL0v+/7MQ5IelfJcv2MO+gPhmmUbkhMs8Yts2Hvt/tq3U0BQNf2O9acX29UDlU2ArrbhUi8mmqS7zNxDw4tnnvktrTyHHqnZRE/gsydjAzABqOcPyuL+IrP1m7j5xev/Xgq/vnGteg96AXq+bKUw2iyabAWsrhpOUsQnyqOoG7If6ACyllIj523Vgeo0WOk0mWoA2KSh89ajmGt0a5E2uJ1d/mq3N8rerIJ/7ToZliN7dvgGehgM7hEUjuhug0o5yubZaxqVuyiX4y5XNSEWlNCXYL22YYhltMDOng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IEaMA3U9fLajpfla6zooVcYMApsNfq3cXuNHmQNgnfc=;
 b=c2Pk5rrtv0Bj3ZpgZLaIPn9aySdRwLZzHd3cXKBgzQekXHUbhejfaAv8CZ5J5vrk+QKtaNj3uxEkkTOfwucEzoxDxR5nrwJOgIYT7x2sIUG2Pe8GPOqcTKa9Q5xzOQa9bAuxUe2SuPVWVRrKcVD4QXkUSIeXi2dP5xxXklOrS/1C295/5TCLUxfO1cjp+S7LW2SFm0yWVsFN2beX0T88U6xT/lvlGktkMHi5xIV1PORXkITEhQJeCmLYgxEFXwE760ZVMCgCM0dkzLXhxkDhV3wxOyB3B1yLDVWIsr6don/p3Ss4LzTFYrjrHaw/euhyqt1Z1jzKZATzALz93y0wuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IEaMA3U9fLajpfla6zooVcYMApsNfq3cXuNHmQNgnfc=;
 b=D7lneIYbJvWcYFxIIk7cTo8CgZohUponQsuX49aUnEttqB/rtGx3gBcHTl7Wa9R7No45C4ALQfL9+Xw8Df9NSK77It1YPcbv4R16TA2MLH5waAZj5WiiqH3eJ2J4dASQEqxRk/hbYd8ltI3GTw8mWwrS9EKvzGRFmxcbXMVncSA=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by LV8PR10MB7965.namprd10.prod.outlook.com (2603:10b6:408:204::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.12; Fri, 29 Nov
 2024 14:38:04 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 14:38:04 +0000
Date: Fri, 29 Nov 2024 14:38:01 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages] process_madvise.2: describe 6.13 behaviour
 permitting all madvise flags
Message-ID: <c5c781c6-765c-4ba0-b145-b5f7a6b46e46@lucifer.local>
References: <20241129095507.11001-1-lorenzo.stoakes@oracle.com>
 <20241129123741.n7qxysu3w3ulurj7@devuan>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241129123741.n7qxysu3w3ulurj7@devuan>
X-ClientProxiedBy: LO4P123CA0534.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2c5::19) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|LV8PR10MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: ca506cfc-fe56-4244-c489-08dd10836ea5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?i2hD1j4jXxaLQ2sDAjjRFZecM77M25EvasdY+RmNtwQfTNcN3QFIi16ydf+F?=
 =?us-ascii?Q?3V79uX2tvpS7CfrQf9k+i/q2DxkPfpj0ZWk/5UI9/OEHIOHb5RBTPcCosk4T?=
 =?us-ascii?Q?j45oAwszeJHOt4cTPwpiF6mPstZKG+S2csFepgiD5wSb0SRGAevlTv/eWuE9?=
 =?us-ascii?Q?UsG3lS3JXYj08l/GwX0ewsYbFhHIJezwtEeZ1oosN22WlpLZp6RQBNqTJzK7?=
 =?us-ascii?Q?6+Gzm9fcyf+NkYzj9PBsDQOnimLmrRqoG7xMjbasMYu8zLFewk5noF1iQCR7?=
 =?us-ascii?Q?Tfq8WSpTLYjvgN2WhSewCv5SrvM4PIuCCAUuKW5fIbSSAQpRjZY1d/uSHymQ?=
 =?us-ascii?Q?Jc5WXA7M01lyAkfuhhuNahqfUIVjR9nz4jqJ9QspE8LXbAlv4stOvTKxspPI?=
 =?us-ascii?Q?81+/HhU96weNxgT01rzLkPztZj9/U4wkjdUFhqA02VnpN579okg+nUPV9WKs?=
 =?us-ascii?Q?t7d3sq/hVgQ/xphJt0LpWYZiWuFN1Kh7J7ZKpRpa8QJF929MEWKZ66ppnyyw?=
 =?us-ascii?Q?Q6LoOF6dFMme7fyWQ5GRK4jNObrbrDBTuPwy6V6E/hYqX4rYLiIcIyeBvnKl?=
 =?us-ascii?Q?gSMgiCDM8RohsaR1D1IXtmwe/2A+OZS4aSFNMSb7UpXJ2JR3zOTz0R9G1Q7D?=
 =?us-ascii?Q?d/haa5XH2epXbajGaFUkqoCbPPiBUgvETGMcMTDhPjyO2LvbppaGj0Ea9W8G?=
 =?us-ascii?Q?ttZ7osyxc0EsWpfXTGJKHxuoszFyK/AY1fNwS06DBOk8XF+TipZMgylFSj6i?=
 =?us-ascii?Q?xfMes3227jOBF5o3zo+59VVWkQ2oBn0o9WJAPwlaeiTHP7j0RYAwlyVP6a+/?=
 =?us-ascii?Q?AiNyey+uYJngrXORVjgXkP7RtZnCugfc7gdFOFU7zbzfiAqqLHWgRdJmlzt5?=
 =?us-ascii?Q?eXXr6FB/KCVnDtsrsA3ioQCFcHdTAZ+VGs8CxnEC9lAhTBBJZyTSFlzWlgnV?=
 =?us-ascii?Q?KqBbPYuNi3KLP3e96k444KGx15RmxG6dEo/yox2JVR6CvSlgCOPE4HZTjADn?=
 =?us-ascii?Q?jpHV/GGuOSGRVJJVLswh5MWcr6U2XbaRkSYh44ydoatIckUBcVfuy5K2Pxst?=
 =?us-ascii?Q?QY3ygi062Zfq0xcKNNGKIulsM4tjf5I0pde1x/MT7CdiG9G8SoHaQgjAJNd0?=
 =?us-ascii?Q?okNtzJRP5H3K+A0N4lnlWnb1ewQyUDt3WpvKwKFDS3F0FYk++RB/6teNFBav?=
 =?us-ascii?Q?vhol4DgAAz058HXOU2jLqhAS64/1q/bfweJ7QfmsL+FJBbpL937Al5AZF6i8?=
 =?us-ascii?Q?+X4HH1gWVJLfvORcoZDdapPf10eVU12i8kCiw73MU3Z8OrHkE2fVvJy/yhGV?=
 =?us-ascii?Q?r2s=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?P8ThpG0DNWiGgovqAPFWZmi8yNtqoNT6y27lsDBsfDKsu/wqQ7VZxVwOpaJA?=
 =?us-ascii?Q?O2dUzrqa4PlM4qegs/0QdaF6WexcJcnwJTE3koTedi3oKoGRd1PBAG3sLlZ7?=
 =?us-ascii?Q?eR0Ub5j/tXZBJ6YmBFJxzkllVYGG2hJVCOpTe+V8hY9TnKEofNhHqvssHJoP?=
 =?us-ascii?Q?Ln9Li/8tCAF9H+6rYweoMw9AFRORqtLfxhc1eL6G0bk7yy0/FwJRHgbRk2IG?=
 =?us-ascii?Q?Tw+46okjNG35tTpyJy9xuIkTmMXE0zL8UXS7Q7rZ455FGwSQ7N1wDKz2VH94?=
 =?us-ascii?Q?eRT5Z0Hn4uCysu0R3q60l68iMyrGEXQgmUsAQtoBoEvRuV30RIOJJgqQVwev?=
 =?us-ascii?Q?QdtcBuY8Tam54gITfHqdIVbAp8cgLg8mu0p3BY0s3WKgDKzwURlMhlXadYvw?=
 =?us-ascii?Q?R0RJaNp/En2xWIkA8PGmefYeJjcZFhTd6IWtxF/CPwUalHGipQ9AEqa3IbiU?=
 =?us-ascii?Q?mN2hR8dHtyyYahpGRevwzwSIMMrlHOM204NbiMQm1u2zWGtO78FVKJCcBIn+?=
 =?us-ascii?Q?tQwwEcFWkuAibP2bDKUZhdxXwaf5sLlVxUuUVUhz3/W3gKX4PADUsMi86ZYs?=
 =?us-ascii?Q?/F83IWjkTuwUanCUzFrvooJqYmExVdPBUq/9PUUqF6sK6HaOm+Gb+xCncV/b?=
 =?us-ascii?Q?Uu1QRcQY5/Z8eGZCNACqo/zTL8sHaxQ5cUw0qOMTxrubVYMqK0ZrvrnThXKa?=
 =?us-ascii?Q?KxKlroA63R8yGoau54ez0BQ1umzjSHCQCROmJu7V1ic0ydQY2wtxDwSCmDaD?=
 =?us-ascii?Q?qOct1fU7nEDzQzQ32QFzKg0jkcBxTUT3iOuU8dNrjg3ZY/quAQzDJ0xYnlsc?=
 =?us-ascii?Q?H0AoayF0fh9TdBvr+FEW091pZrxR1tauXGe0hgGU5xVRwwozgdeGVEmbCYgp?=
 =?us-ascii?Q?JISNwucBiDLXA14ml7E58DWtR1UzUE3bhJTAxfuFD4tBRYP9aLbaHI/bVu8R?=
 =?us-ascii?Q?xhhBQ6AohWg83SK8zFLQkiFUP+9SoNmU9/n4m1udSJDqbykKmDeXVZ1x78ad?=
 =?us-ascii?Q?nRwqozGL/l7xVw2BYajWRLV3jMBJKnLUPPx6LcoC2oxdY8AJ0mVOQdixW4+j?=
 =?us-ascii?Q?nrnbbSQEsEHSX2OHDJVmKnjJ+QeBEqBeDZ/kAuDqbRMdgWi/6M1UY/DPXPIm?=
 =?us-ascii?Q?c2ZuOxirplWas70a1wAVlSkj+HqBFjras3+IY+pwxrWljoBlgxJzqK6Iz7xO?=
 =?us-ascii?Q?xhdc55aQFa5OOn2RNC3//qljg+761/PrrtF6EH8WFv530boTYmvCjfv8KaTI?=
 =?us-ascii?Q?ASfvG6E1pLtF59vXZQFaRsOqzDXVcPyziWV6/5ra/DGY5ERS7PWx21vgWXzo?=
 =?us-ascii?Q?RbqAUupMVPbzhC42K1tAaqH6PNhHHm0AUSrIiHdFE0iPpD1f7HqZrAzb8j1P?=
 =?us-ascii?Q?yPC+//sGh176V5V5f7eLjspDDTmmNPeUsvWNAFMvnSq/vG9ncePzC4+571Df?=
 =?us-ascii?Q?7o1msj78nFFaPcFzWrO7HMB/cWeUSqkS23V6Yoa3MnEqhz9eAQ+jlcizpCTV?=
 =?us-ascii?Q?Ho0u6FYJp34saqAux+qu7f3S4/8rn+diJFr62LD17GybASPLeW51Y7h7IPUJ?=
 =?us-ascii?Q?v3h/RX423DDymRSNweEIJAzFxB0xXl71TIj61jq1LqCTaGLngLWjDR+GV2i9?=
 =?us-ascii?Q?Og=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	ZP8zjusC8XQxTvksoHzMYF/TOlNN98quLnRpLCig4ZoIBzh+/Ykte361sO/Ezq/qcin8GSXLGb9lrmsL0T3STGmLrxmYsDNePfJNW9D2cXekwqCUp7s2oHzdkU/sGMipcVJ4bvmmqcw3GdtBPeg4VwzYh3LCQZmRBBqXZ1HCzEUU8TqjWm/mK3qnD4GVjKBt+cjmPQj3cRQWC62SQ3KBvPSw6v2xi13hBCAeqqJExjTNwGCiWhz/p6dW2ciZeLwXEIvimhMUd9z8GJkyHHKCzFGiiWY8umUYznNoTLdVGkv8WO9CoMi+0uRR3WwmgS0kHYWoOwI6X3WjDy0JNYtBY7y2CxoxY16eymrFVi+VPhz6QrhGiZpqy2p1W4lkdnznwm1KQtTpVEoa2B7jwl5F0gOlJIN2fusxkQbO+mdf0Cn9I4kPj3II7hrLeBlO9FT0ezfwv5ti4UvCkEkGjXdGCa42pKsyQGgWQddCahyeROUCJBy7Z5ONAf1KDYxl1q0GJ5vUU3e1cAncFVqEL7dHM5yxJBv+rgCl+oUbal47f1647wxhWiVEarmGM7qc2srFZAZFmWyU6gCKJaR1BUFIKOsWCIraec6AnViFZD5vhIQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca506cfc-fe56-4244-c489-08dd10836ea5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 14:38:04.0551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/5SVExiYwVS2FkVEkXiXsKNQrgwEO9lQMFoBMFoQDNjPz+MmExd/YRKKkKlF1zbO+1MIwSrA0LM+fQi1IUcmSP6V0tuWpro+Rj4235STn0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7965
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_13,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 mlxscore=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2411290119
X-Proofpoint-GUID: qEDR23CPL793nFmVpEKyQLFWpxFEVbWP
X-Proofpoint-ORIG-GUID: qEDR23CPL793nFmVpEKyQLFWpxFEVbWP

On Fri, Nov 29, 2024 at 01:37:41PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo,
>
> On Fri, Nov 29, 2024 at 09:55:07AM +0000, Lorenzo Stoakes wrote:
> > Since Linux 6.13 it has become possible to use all madvise flags when targeting
> > the calling process. Update the man page to reflect this change.
> >
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> > ---
> >  man/man2/process_madvise.2 | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/man/man2/process_madvise.2 b/man/man2/process_madvise.2
> > index b78a61553..d12407bdb 100644
> > --- a/man/man2/process_madvise.2
> > +++ b/man/man2/process_madvise.2
> > @@ -54,7 +54,7 @@ This value must be less than or equal to
> >  or accessible via the call
> >  .IR sysconf(_SC_IOV_MAX) ).
> >  .P
> > -The
> > +If manipulating another process, or prior to Linux 6.13, the
>
> For consistency with other pages, how s/prior to/before/?  Prior to is
> ok; it's just for being able to grep for a single expression.

Ah, I think I saw a 'prior to' somewhere but actually no, that was the 'starting
in' below, my mistake.

Will fix up!

>
> >  .I advice
> >  argument is one of the following values:
> >  .TP
> > @@ -74,6 +74,9 @@ See
> >  See
> >  .BR madvise (2).
> >  .P
> > +Starting in Linux 6.13, when manipulating the calling process, any advice flag
> > +is permitted.
>
> Please use semantic newlines.  See man-pages(7), and the other email.

Ack, will do!

>
> Cheers,
> Alex
>
> > +.P
> >  The
> >  .I flags
> >  argument is reserved for future use; currently, this argument must be
> > --
> > 2.47.1
>
> --
> <https://www.alejandro-colomar.es/>

Will respin and send a v2 shortly. Thanks!

