Return-Path: <linux-man+bounces-2094-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 952FD9E0936
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 17:59:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D70F282322
	for <lists+linux-man@lfdr.de>; Mon,  2 Dec 2024 16:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D61541D95A3;
	Mon,  2 Dec 2024 16:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="jD33aXm5";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="Jtn4kq2F"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF0F163A97
	for <linux-man@vger.kernel.org>; Mon,  2 Dec 2024 16:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733158738; cv=fail; b=KgKa/0H8hEPJ2E3WPCk4MONRhcwKA1yumQsnLunvPlRr1q1pG9M7fXXWAlV/G1qLwoc/x5EKNRYCnLgLL+NhkUp2g8/U2njel1cOBZuJh7mQrkpe9NATgcEebZOindqu2rTaLH9FhLMtHhktnjwXUmOQZJpsgwTD/cMCTWGUW8A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733158738; c=relaxed/simple;
	bh=V2iA3NbYomVpBw5lp2PQU8fLP7CTQwNP7vc+7bDBrMM=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=COzd7sbKSEa3i53SxSs4viZ+284DHdKei9okEVAdnzpzHsu1ypaI3Hf9oQOzsL2bhl9zwE2guWQp9GfOVZWG74jGfxBOB7/PaYTb5KQ3rV6gY0OGH6iGHU1v2NG5kSBfKKsok4u0HJR6t1b9Sor8cgg1DqxWhNgwe82lvGVX7qU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=jD33aXm5; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=Jtn4kq2F; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B2DTiRr024809;
	Mon, 2 Dec 2024 16:58:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2023-11-20; bh=V2iA3NbYomVpBw5l
	p2PQU8fLP7CTQwNP7vc+7bDBrMM=; b=jD33aXm533cR8RzXL28KLunGYqz1Y03g
	YgEBilp9WvPa7B9gfYt8tov+bvK8umJgZOQzenSb3t3l42l0IqilQZnfcaXdA3zI
	bUsMnCBYvFQW1fPHUKkJDGeljd98R5xW+CNQLg3YMH9kagwK1nkzH1gr24sqmNFJ
	oCEDsxmcdCiszQjpn3YvvJTnSepugmDLRJH4G3f2wuzL64EkGQmbPYcQqgj65QKC
	4WxSOinv4fInXD3mAHurMdnBU1kBrHGrcJpEvdNT7QPFDBbwRF2Mr+bChfbn34EN
	qMt2S78u3e4wqL64LO+Tpny6l8VIj2y0rTwCx7k/RffpWPEDqWR0iA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437sg2421s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 02 Dec 2024 16:58:42 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B2GEmf8000934;
	Mon, 2 Dec 2024 16:58:41 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 437s56twae-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 02 Dec 2024 16:58:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rZgfJPSIjjlIdmsBFTqvn+lR8LnXooXij5iBf3budqxLtsBUpA5NgdGdz6kd7cdMZU8cE8WLofKzc+Z17rbn3TfXKfIP/JXlTIXFWfB2VRHI2x5cTEEW5GJQnilK4hG1ENTcY4Gy8ks7PE1rRuqhJfzAcr1E0rvyFq7PICPmmC1WGKtssrUCyTFpZSx/vT212LLYeTyLVUu6EfEfJ3tzoZnVNkwgjS7xF3waHR42GMsdmHHweGsRl03y+Sm8upC3sScm65OnxaWF5dP53zkKfWoZRqdfGoTfASn6yu9lxCEAYQHsHppvOTa6AvvB3xGwhBB5j606BbqtGhiPXPgMpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2iA3NbYomVpBw5lp2PQU8fLP7CTQwNP7vc+7bDBrMM=;
 b=yT4sZ0lngsxxmTBR4Q0tF1CMnDob7i9fz16A6j4PlOCpq+QVZLgPMRf1XrsBVv1whab5Cnd/cMEOzdF29JaCwnf75SrJ4WRin8xMe9mrHkghesGJBEfVwHJoG/Dbwuy51zpldm9pgcpD5jMr5atOHlh3+9nHGfy/jo4OP2+VyXPJND+Lu3RtlCvAN7SU1frSbN3SDkjS0c2laOwNxHgDWdjZJqH9qddHiTjelEeMeKk0uzEv3yf6NaeQN4q51kdxVOZTKeAxNA0QHYKkIcGKjx76+TiL50bA4Gsh4wCzgxS26HvWk/2Rw6v5USeEkwQqrTpJFEbuJYVv4qul/T93mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V2iA3NbYomVpBw5lp2PQU8fLP7CTQwNP7vc+7bDBrMM=;
 b=Jtn4kq2Fs7r+/TZP8imRM1kZM/F1tJ7afTdxCLkTYa0WkQID9qQnoXMesRBBlNxfnHnyCFskEUgm+W8fOWJJMAmwWT9lqlIMBibvs/SeTYbqeDlvl6bxHLgYGOoZ98FJga3X9s4ILKM604xBLJcxK429gRJNz/np7G+respCb8M=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by CH3PR10MB7459.namprd10.prod.outlook.com (2603:10b6:610:160::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 16:58:38 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 16:58:38 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: [PATCH man-pages v3] madvise.2: add MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
Date: Mon,  2 Dec 2024 16:58:29 +0000
Message-ID: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>
X-Mailer: git-send-email 2.47.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0256.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:194::9) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|CH3PR10MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: c707073a-185f-455e-20e6-08dd12f2911c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?OiIt+4ZyzJvK6e1vy40ZFUq+EtBRPROmDwG7tqQ7tVbWvqTalPICs1iN2ECV?=
 =?us-ascii?Q?X01Qifb8nUKKLbKJ2QEhpvWzm9j+z+a7aGV6RfQSoH0/WAc85yio1QL3gM2t?=
 =?us-ascii?Q?TR559Q/6QCejuBwAHokhwZpZfmJv+8GB+rkAHBiX/y4G6cpD/YQJfHf+qnd3?=
 =?us-ascii?Q?ogHwmw0w3EVdUckAbrab1PqzaIfE7I98srEumh5wWs4otolDBKSAdqus199y?=
 =?us-ascii?Q?ZfaWjkUgg9ozOrWt+gogPDS5kn8voLHVhZdkoEHgUbVsxVpPgZ/vv1D9BkBc?=
 =?us-ascii?Q?90R5B5pW8p/Bf3y/rXfQSBWwadHfP9GMRjJZV/qAz0CzBPblvP20t4weV0Hn?=
 =?us-ascii?Q?5ZcWWsZJ/lyGjsTvTgNXhIjRKDDA/203Hw8QP1VeeiAHRa8cvaL7NtCF12hF?=
 =?us-ascii?Q?pxWaeYYJSqfVViNPF49ItYvtM2mwSvvV9KR/WzuiZ97gXEPjLACs/BFJo8h+?=
 =?us-ascii?Q?FeAbWvnz6phhWyaQA/tzoyeNoVn+w+GFWkwg0r4+zyI12QIlVfYZ5zkaq0kL?=
 =?us-ascii?Q?AjS2O8EKitJnayd4jayEC3oq743ayweTPtTsWFRHTt/pmjSV1Xenqd1VJth8?=
 =?us-ascii?Q?t1MMvV9J5Mv9hSXqqC+L2LepAvuz4QnkpU/uEoAeeWa7R9XJVmTsm+7Iu6jG?=
 =?us-ascii?Q?oNQW1CsOQcPdfWjMYcO+1ZFHaFcvs4gN/Ay8oCmXHwcSRg0cBqVLcusIqkJK?=
 =?us-ascii?Q?CTRZ/eO9qmmOntPeJd5qpXkzPRWo+yR9MhYRIudH5eblPosFXCPqKgyfsIc1?=
 =?us-ascii?Q?onhYz8W0ac7uR0l7BQRGQvZeMUwS0rES92S9DCmHFBPNe1J7BZ9J2ff5yRrB?=
 =?us-ascii?Q?kuAB/tikZ6hDe+en1cNO8oZSfi+ZXwBbJ2IzcdaWJZLHjJmoxZgbSrEhskp+?=
 =?us-ascii?Q?Ypi+OLoTa577fiufLLCbatd9VXTCCZSej9yHFF3wjJ3ZEtwtgRFaBI93Yj5h?=
 =?us-ascii?Q?h7kLYP5kjqau2mhGtHKwV/tBh2iQ1dpA8ejJLXk/4EaKv8mUeIUSVzq40NJF?=
 =?us-ascii?Q?Thpsrz28NGnByoxPmQGGV9HCOSbbVuKCwB3BDR2N7O8MOz1lDvhGlUoEI3br?=
 =?us-ascii?Q?abwmisAj3fWh07SUQtBsr+C8YWJIgvE6AUiGM4qOqVPdR5PkjYD6DiZCb93H?=
 =?us-ascii?Q?ZsSjsQbKLYsZ6Ed17Q7lQtCv/qIiX5y57bjm5x7jinrqdbttDjcSBazisTl9?=
 =?us-ascii?Q?TEZe19x9mbRA6UicEOSXfrb0MsxXb3wa8WjLDOMj/AOWEfwgmIALOSqM4SUJ?=
 =?us-ascii?Q?pYfj1NeHP7jIcG9ZxckKIxmZz+q2VoyxHtcM7Z1u7l7yuEbmkK346loE4zrh?=
 =?us-ascii?Q?eStkaVpZCTjg7c8wcnCt5Mrm8DwJFnvCWNxe+rBhmk3RPB15Ya1alE31yKaB?=
 =?us-ascii?Q?iBNzfO8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rjgKHbPcNzZowWq7+EN7npjWQfULWU6gKL5g9nD+tLR485E+duncnn2vXNwB?=
 =?us-ascii?Q?yYj+gAjeM5vd6HB9PxzT8NzkeisLZ7JWR56y2+otuEvG77Vo3ZfWd11kSsYe?=
 =?us-ascii?Q?PdrpXid2SMI894I0dJfYqxtqozLrkBN2gVcpldzD13vZGVLxUsweT3RjOfQA?=
 =?us-ascii?Q?vmSWIyR/o5GSlnr4W9wYfH1FVsmE3YdUf/nuuwId6E8Rr6YoRa5Pe0oCor79?=
 =?us-ascii?Q?/Xmve1NK4tO7BEnUSSEURc8IgONggYYIXYaLkevmGMP3m5qjCFB4nTW4D1Ch?=
 =?us-ascii?Q?SHLLD/8/NhRgC/PyXXA1EhTNXr6f/tklIAhiGrgPbeR3TjeKktCNhS5PoTiM?=
 =?us-ascii?Q?ZKVgc15dA00mBBTDtdEpNKEt5+a6mXFXe6RYng6eS9tGo+grxehkM4CCMdY1?=
 =?us-ascii?Q?6AF7dvVAeP1awCl6OmDB/eOq5UxfxD/4PmvDI2V/LUc8y7pUUvXoeRlnBvzj?=
 =?us-ascii?Q?4C0BU+f/YkyIbJ634x6vmM3GeuHRd/44nATS7RVVpvuE6aWd74c3rvzsZlFD?=
 =?us-ascii?Q?y8WL2d47RqAwU4TDZOCc6ifoGZsvmAlZJeYF1wNE06WVe1CrWzHFXUmiN2Ce?=
 =?us-ascii?Q?gBDMOj9d3NAgHh8ialW23M6/cfF1VprLJ8bXtE877nbzi1o/1VPkz8+WJLEm?=
 =?us-ascii?Q?SpwQD0gWLjxjb3M/z/6GQ0BnLCo8RQFzHubwrc+2iY6/P2XLSHNqVK1toBVs?=
 =?us-ascii?Q?I5SjmXiYTz+Lm0+ScKQ9qzst4HmWQ5jIo3zdGKVLZLHipqXJNqS4CFqDFgM7?=
 =?us-ascii?Q?MePhkFljqySAPokSI2Rvw4+2i2bakdop6jYWpyAChotFnoNPbxAw1DhK7WFC?=
 =?us-ascii?Q?zdMaP9iW4ow8z4Q5Ua0P/7m6N/DpHN2wOKLMfpp2BAKS8eSOs6UtwkkW3/qn?=
 =?us-ascii?Q?wH3PMaQXH1VovwAjHYrnjBkzUOn35kn3+Nd0jCkxToQB1eI+9O8dkzC0dt0d?=
 =?us-ascii?Q?cLMJDgHqk/sTdJmsNQja0FF6SsNiMT1cIapQb3urD22ZTJPHkXme9A+FX28G?=
 =?us-ascii?Q?67c5Db84Wv8hApbxMppOdxLv5VuhNcro7tm3Iq9q4xCUarrB3wbAmW05E66O?=
 =?us-ascii?Q?Uk3te367iQYpOLMcWvDqROdsbkOqk1j2wjv1oCGSlQlol8SqNG1oDh8UnfS6?=
 =?us-ascii?Q?seYeRRDAyasSbyonj/f3lB5O/wnwVRaIVhC7N+Ju8C6eF/I4eIwF2pHTDJFA?=
 =?us-ascii?Q?9ctBcACwUjVOSnw1hSloB+he7W2Pw+Z+aCNUDPAaA3uScU2JskovCezlpRdS?=
 =?us-ascii?Q?vChBUhLC+l5aj8mzd+lmLMg9MnsfIfNXsClLi/f9M2t4rySx9HgWmvEvVfX3?=
 =?us-ascii?Q?zZWNKRAhGZtZ7mqof9qPRXkCuxXKugHlGjoAl3g9j8fZiHXheSPoD5mdqfm8?=
 =?us-ascii?Q?l3lEnAnV1igH93twIiWXxYLQlGyh/q/Bva4zj0Ihvn86oTJUAiKP3sqByhfe?=
 =?us-ascii?Q?EMLXISSzZeO5QNewPB5S6KrhkmajUC6dtIeWsLyf23YFB72eMnD50Xzqn6oi?=
 =?us-ascii?Q?BtdZBDK4uq84rOOjnx9eI8axrAnsbSl3qSx8eVVZnmKbUaL75/Mn45vcGoYk?=
 =?us-ascii?Q?KnUlEsH0htdJGSEGoHn0CBvvCQOXzkH12PNkC8VHJ7tT5EHiexh4y/By1uo/?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	HMdogv1CgpUyK2bjYguexIJlrPOvF+pn/BkzcQYdvENBVS/iWl/Jck3t4lqIkKReIfsXxPdPYGyOQTo5gBI0j8A9L568+rMg62PRPNYD3L5Ockkjd+ZOZBBsoL6+vEmZFKdxQeh5YEVR5+dXLmlVHeft0iHVxCkQXVgcHurOTF6xQsT+ITiM8uYzXsM/+8AHa6O9l12Cfmn1VFYKzx111HQCIVyyXGCqLjS/09GHmJ1Zqop1BcIG/9M8mzAEpCnWkn/a7YjqsCr4qm2VtrxEzO3JeN2G7sYUA6SytU162BSE90xlld/iaXlDuDBAtYrOvgvJeJB+S3C6VnFRYnBKIJW+9h0aMYsapEASTQTN6B5bAJ2D8eRrQwR+/Ol7qZBMX/Zzt/AyRVnqajP58noYOjZy5VKB35rqDRiWWK6yQiC4WEK+nSSHaLcayp3CMKK3qSVQE4birUGPc4uCmXQHiejZMLGgSsYMmOVMWZuvVWXnSc2KmJCfADD3mzex9C/7DJa9Ek48H2lw6Ef5iUKQ7n/cNcr9pDWx6tZTTPCUYntyQrJlT6KcL0XiZdG0YHIe0pQMFSExj7Ou8dG2asEtgAxHJfSSeRnWGgG1TczTzL8=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c707073a-185f-455e-20e6-08dd12f2911c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2024 16:58:38.5566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iBAE47MBVW/87RDQ00pbZfOC780pA8Zsbyub+FdEuwqAmpREDt9o1F8uV0pIlsr+vP0ZsfiRGvfmnqKkS2l1jx54yIUoMMpqgLP7/9Jif0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7459
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-02_12,2024-12-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 bulkscore=0 phishscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412020145
X-Proofpoint-ORIG-GUID: zKoMID5WN9naXNnSYCDEHUwnbd5Erq4G
X-Proofpoint-GUID: zKoMID5WN9naXNnSYCDEHUwnbd5Erq4G

Lightweight guard region support has been added to Linux 6.13, which adds
MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
call. Therefore, update the manpage for madvise() and describe these
operations.

Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
---
v3:
* Don't describe SIGSEGV as a fatal signal as per Jann.

v2:
* Updated to use semantic newlines as suggested by Alejandro.
* Avoided emboldening parens as suggested by Alejandro.
* One very minor grammatical fix.
https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com

v1:
https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com

 man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
index 4f2210ee2..4cb5e7302 100644
--- a/man/man2/madvise.2
+++ b/man/man2/madvise.2
@@ -676,6 +676,91 @@ or secret memory regions created using
 Note that with
 .BR MADV_POPULATE_WRITE ,
 the process can be killed at any moment when the system runs out of memory.
+.TP
+.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
+Install a lightweight guard region into the range specified by
+.I addr
+and
+.IR size ,
+causing any read or write in the range to result in a
+.B SIGSEGV
+signal being raised.
+.IP
+If the region maps memory pages they will be cleared as part of the operation,
+though if
+.B MADV_GUARD_INSTALL
+is applied to regions containing pre-existing lightweight guard regions,
+they are left in place.
+.IP
+This operation is only supported for writable anonymous private mappings which
+have not been mlock'd.
+An
+.B EINVAL
+error is returned if it is attempted on any other kind of mapping.
+.IP
+This operation is more efficient than mapping a new region of memory
+.BR PROT_NONE ,
+as it does not require the establishment of new mappings,
+instead regions of an existing mapping simply have their page tables
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
+.BR mlock ()
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
+.BR mremap (),
+lightweight guard regions are moved with it.
+.IP
+Lightweight guard regions are removed when unmapped,
+on process teardown,
+or when the
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
+(including mlock'd mappings).
+The operation is,
+however,
+only valid for writable anonymous private mappings,
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
@@ -787,6 +872,14 @@ or
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

