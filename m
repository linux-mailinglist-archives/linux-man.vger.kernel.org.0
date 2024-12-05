Return-Path: <linux-man+bounces-2110-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FBB9E519E
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 10:46:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B3331881579
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 09:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A1C31A4AB3;
	Thu,  5 Dec 2024 09:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="WU5VsQg4";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="rIZ0vVJJ"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB5B1D63C1
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 09:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733391968; cv=fail; b=OYqxwwddk0/TBHehZuntXZnf8fRnsI988bbNOOu6yV9OfSL0lXN7mDJ4Tpmy/IoP9Nuzu0g4XqB5YeWyHY3a2IaAufUNto0eCAeyU4x1d0lztr4mc+TmZnXHxuhyww/rrZtMDPhQMxtVzS3qAx5MfsM39DItBkJAfteFKQv4YYo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733391968; c=relaxed/simple;
	bh=bzrb2+U0f+HFjF/HqQTJOxV/1zm4RxDIB8neMmv8Wec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=UoUAjwShG6p/2/MfBj3tn/OX/mDXn+tA3GurrP4TNbYyqakeRGFYKqkX3lDGLIK6L2qCCo+5qNkxDqZmshctxRxzD+x/mqi1zj2d/PqcH3xDNm24oHc7OoFJF5DUow5OXMpJgg/ru2n9IKTN9v+n3TUALe7J2vtVNeb4WBPWYiI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=WU5VsQg4; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=rIZ0vVJJ; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57MnkA007127;
	Thu, 5 Dec 2024 09:45:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=QKsO7Y0Qa2+jfysfwo
	PdT8lezGLepuE1ez78fe1NZxQ=; b=WU5VsQg448eYvaJgJqcma2jJQdUVrJwAs5
	KVzXMaTHpOx9nV3p6NYdPv1YdFmDwP6TSH5rguizUVj7XsJEkhdkrs9Y+bcJ7Wfc
	LQYu/WV8sCx1mECkUS6VRQ5B3TQUhm9nq0gawFplx4ZUVwUIShJNJhrH1qlwWZFX
	dziS4QAIRLhYBsHIgxT8g6A+Fxbx8Jm0Vs3XxsLzHu02i6hQKV8w9NgKz3bVlUbn
	7zQY3n+8cCDJ900xWxqh25sBitAF5EjCcLD9lJ6EtZee4iSm0QqQ3PxJMffiMO/m
	GvuyibPPJ90a5o/Yvdp/xZBAJuuat5JIHhxJOz7YEnBDXwHcff7Q==
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437sa02m89-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 09:45:50 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57qvnh036937;
	Thu, 5 Dec 2024 09:45:48 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2174.outbound.protection.outlook.com [104.47.59.174])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 437s5b5jy2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 09:45:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vf7DTNPgen2Jb/CfsSq5nht1h0bZWjlKGCkf8niMbddmtOfqB0Pj1oVBLZPZNtmRdAouQoVTld38fjzgutvmc0Dtt9JQJ9z7TBnzTGDDg4xqhR55GBkMVrtYUg5mexIV+Iy7kQa5Sq/eNrVwNv9dRS/Fo+RVXdVOWW4STlZMDustmF330eYqrRn/YVoPuyXBojWmnMPqs5rs8I1RsMMQVLTHxGL5iAHYBfCZoVMilyeMS0SYuUP5BB71mTPqKbsPOE2c9lFZshKz0C6pS+RJN7V9/fYXFPZoDFor+m9zwnxvE6d3qcBfXCMYDDJGO5PwLOk/lULTe6IA3Ln1+KHfaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKsO7Y0Qa2+jfysfwoPdT8lezGLepuE1ez78fe1NZxQ=;
 b=n4vjHorU4Z8U+IWHnFrzP4dUosLXmfvE9pvmHvj9xPCsmuQf8G1CN5ELimxxxlIA/0rr8HI4DELDcpCXN0gZRiAm3ejxjLYy3/xcXvP9X8KXYR6HyQLK5lPwhiRU2/tjS1kb90C9CxA30BCFVBYe/8Zf4UQfDXrZBr0XcNuOt5nb1OeLeZBiGdZ6FXukxBWE9tjivbFs+Z9FT01dZfxSVmzzo3UJRlV2U/KGkcLG/bBeqZiYn2Q2lorEs4X1OTS3YYBIEiYu6odWJjHuboTsQMlcz0ici4oIFUaVKZxF4ZIOmpqsP1SChP9F6i0KOCRWO1EyNF39vC/CxxaWfi/vNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QKsO7Y0Qa2+jfysfwoPdT8lezGLepuE1ez78fe1NZxQ=;
 b=rIZ0vVJJHCsf9YmP5ktgFhFS8WZW0sQN0NNFhYqnVHrhgy8nBbdaqRocSfAux/2g7aFfYRQa2mMxPnlbtcXiedsUaZr6Acubj4D3taj2mlmuOySjBKmEchQGCe/tLRdM7XManQu4zEQ6DXRfCZwT2Q6pu/MwvlaLyW96r8eVdss=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by PH0PR10MB5777.namprd10.prod.outlook.com (2603:10b6:510:128::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.20; Thu, 5 Dec
 2024 09:45:46 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 09:45:45 +0000
Date: Thu, 5 Dec 2024 09:45:41 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v3] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <75ba83cc-0a2f-41ad-b019-c11c2582e009@lucifer.local>
References: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>
 <20241204204325.duakx2b2x6d5ci7s@devuan>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204204325.duakx2b2x6d5ci7s@devuan>
X-ClientProxiedBy: LO4P265CA0015.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ad::18) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|PH0PR10MB5777:EE_
X-MS-Office365-Filtering-Correlation-Id: b1494bc7-a4a4-47a4-d1b9-08dd1511976c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?VEgh8AgGN1EjVLODgLv1uTVDdwyDFkx73/9kKfHdh0VXFuQ46G6E3sA5+W5j?=
 =?us-ascii?Q?7HDk4KOpDBxFWuQE/WKyYdhAZ7u11e8sOzh32Jficg25KDedy/gSxz9zLYVW?=
 =?us-ascii?Q?JC4ozU6aWOyoG5vaEvf2ZMsbw42jz5oqEEL0a4PcyMhXQKPzuEmcz+HLP15v?=
 =?us-ascii?Q?2hmxIBLNBEdzraxk0mhhlOLA68NCmx1VW06DXR4eckxjjMqkAWuK6QPC1XPp?=
 =?us-ascii?Q?5EB1/U2uWtbvFuHQdGUhGC2bF/0mGIKNICgwPABCgE8qzHJV7nNcpDjJ6rs7?=
 =?us-ascii?Q?9zbzuDjIuAV3HucbZtlO1g90ShezUgTiYYqoEgLIdN6wFCvZrHjRkgBQ69p2?=
 =?us-ascii?Q?OMOTpW33wHBKVlxN/Q+p+R6lyU/o59o0M82PJBOu2iK0mLhLhyQ3QB5KOlRY?=
 =?us-ascii?Q?nH8i1rcxIVYAG6cVLSwFW1+gO5IQ5X1X6zrKi0H6juKsgdTNUoSkpp5QR31g?=
 =?us-ascii?Q?m8dBTo+yW8QF7fo7oTOv7yW7nugCE9tBYrIGkGNKFLaRhpRKkoF6cRAPEsje?=
 =?us-ascii?Q?30sRFS6GbJoukXZLy0SyA40GPF/a20G26Qbhtqj/e+oI3EQsxu4u2RqVsYgg?=
 =?us-ascii?Q?zicbdRb0J1BXihpQMI5DN+rvnQtptZuomFM73eK/t1sKvf4BYZZ58qKR0ftr?=
 =?us-ascii?Q?ZR4AGHdTf+fWXuJ6yY+BMjZPfRIhM8E02QIWa5OEtKpHi/BoeAjRlTrsC1AH?=
 =?us-ascii?Q?9f8GBKYPpqzxAsYRToQ8csoEaiysUMWaO6RIb/U62JYkS6K2kJNAQq7ZIWk7?=
 =?us-ascii?Q?QqaAwVcPbcIw/REBcNzLJ3XZuK/CBEDeMsTZ3QMOEezbeqCH7txfLD1ZiFQe?=
 =?us-ascii?Q?lUvuY8as2KPFUYkcSXBRF7ujiTwJfnpPzyTlcwEhlla5R31i5oL5SfPVof7v?=
 =?us-ascii?Q?HmT+HHa/46xHA5gMkn5DBi0xYUB+MXSE11Lwg3BdoB2L2o4/XCO+YhsylXcQ?=
 =?us-ascii?Q?bMled+QPVoJrhGw/6WsOc9BkUVmDglwf6OFtQae1loCN5S3XTXrGdeNbARRw?=
 =?us-ascii?Q?asTs1pFAzTdXM7u4mN4Kptzau214MbG1EHl5IlqCHDUnPtqFHbILmEUobnqe?=
 =?us-ascii?Q?VdYzpWSBPlxo2uHd/MwsubaxHcmiyvYdssWRF2KrK4iTyga2cFTCh0+jnYya?=
 =?us-ascii?Q?ihqayXfH+wKt9WFq82L0jxv5qYiPsupR6WqZL8j5Xi9gBOCC5/z6ZAMjqmzf?=
 =?us-ascii?Q?SCPyGh43N4DHJuv1HyWmN8Q1v5xmvy3itemkrYKRnpzA2asQETsoxgzPbYXh?=
 =?us-ascii?Q?YolA8UZHCiB35PuVJ8dlArvo13hlou/10iYyENJKFjYNHU9Z2hQbQGFjPMQn?=
 =?us-ascii?Q?6Ps=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?VlV0aZZ8QaIvjxCH6Dj86Vi2YXOC1Oml13UXV9ChYjK1a1b5nzd8N/JjW4te?=
 =?us-ascii?Q?f/J6uBkwkKVr3JbL0rMI4+4QILDNnD23874c1OhoDDwS5yhi6cSU8xzXDKXG?=
 =?us-ascii?Q?UTxsADdbwWvWHRpxsdlMBQcFAXXAF5T+wd7ZEHgUyvVQ6qLdnWGN5t2Rfzxw?=
 =?us-ascii?Q?pXhBLRDgKvddMgYVFYeftpgVZzCF4eS1ODbpbmZPYSbBTv+x6XHdVtA7o6jg?=
 =?us-ascii?Q?ra/wAAgYHVjFrTC/Q63Dx6oCA3MUUx42cAhF/7qTrNKAGEBJ7NjNFRi5qxzJ?=
 =?us-ascii?Q?aWz4krynXb+eRO2hKnFOIDiXBOG/ta7MXfJZITyLc1YvN3B66HnDoCY5qCKa?=
 =?us-ascii?Q?MQCfuKSCFPAY/LknAAJgGYSRTnUfs1wqYguFA0lEnee53/M6jNXhw0uwU1oq?=
 =?us-ascii?Q?uxXzTTyG5iI+ODJJAWemx0qi5oD55d93VAjwPmmGOPWOwCo42c7ZURJOwdhw?=
 =?us-ascii?Q?RNsj9Ij9XM3rftWJsT343x0bx5Buk6Nrq6WsS2MZxSa91CS2JPpP6jNs9rIg?=
 =?us-ascii?Q?v24u3RBeVGRSNIcbwsH0gBdc6KhYf0tLkveJ1AQd8Bh+tst5Avsae0ULd1BS?=
 =?us-ascii?Q?KC1tI38Z5I4Oc3t92oY+rYunhZhR7ZFg8ojnmCtEnBsSHzo1Fq7pp9ME+HQC?=
 =?us-ascii?Q?PMlkFC0aPOUIReKXWBDjJT+B2fK1YCdxNHLmhPR2ffBpU6T2VTkVpzbOpfjO?=
 =?us-ascii?Q?QXfyFuOLp5DudoAv3GwXDPAB7Brg8WlOm3mbTrBv8dFpp+SIKMOrdZWbrzux?=
 =?us-ascii?Q?Oms7PeJwkCXtZ8RPi/Sg6w7A5kYYul5f2ZNkfgNkInbuxOa3uMyHQWqP6yog?=
 =?us-ascii?Q?yXMICgd+8HSkhItf+4/9Lq9ws8ZSGQhzm43uNFYAQx3LJyS5qvgp6KiyHOON?=
 =?us-ascii?Q?tfvIdw8nEmO/a6y0z/3gF55CT6/zrRbe7rVkYWuABY9+SDwPyPWlUGzbwjWn?=
 =?us-ascii?Q?vJoQ/QtB33T3cJi+i/gdZ3jXm12cz8GrrfiroOwD8YWQxWtLnL0q+DLV4prN?=
 =?us-ascii?Q?lQzgH+Rrz44Nhk+WjvRQlSMa+b7UKpuwMoQ1nx5eJDqxQ7qnfpzsiaAKc0Pn?=
 =?us-ascii?Q?M2kvAyv9JR5nnrFl7WQ5MHgpOjibYcZ18ERTtbPX1ANCh4cd4huHRgGxeNYr?=
 =?us-ascii?Q?z2PeyJdQZwdhBCLoyGKWwGfaXmaNbew2gQZ9hPfKt+6e6Zy2MPGZh6VHlUn1?=
 =?us-ascii?Q?rEX/pJH9PxFQ8EQf+M2pextio+aNxiCNQ3ps5l2N+SM6CUtrzWkqR5RaWPbI?=
 =?us-ascii?Q?SdwCmlRQM2CpdjgmqSTlzb9XX7j1GSnC7WHJvo7+SBMPjYCX8wMFuN8TPMBL?=
 =?us-ascii?Q?W2QLsGfz4laC+7FFid7Pge1jf0KYRrdpSFaF4IZsvWQEAhgSKGtBH4r6bEuh?=
 =?us-ascii?Q?EQAXsiD0SjkUetHGzOhBS5MuOJhI9YT3Z9/l9MhgvL3NZM46WBOIQy5EjYz7?=
 =?us-ascii?Q?wd5vGssNmDCsUiXS+q4LyUlf04c+MYadiuDtrGQc2F5kp7WH85clVdixAlE/?=
 =?us-ascii?Q?H/JGAAvdW/HRqdd9CIY7T3MF67s9efRLl2Y6oLSN+/u6up88hRE/Kd0DbkCa?=
 =?us-ascii?Q?6B85fmYxfVXynNdBu5newZLG/vhUqFXCAQK9+riDPkfh6UfKpG2P7gPwvbAs?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	es74YwD3rGUw1G7qmyQmYLt18p+TecXD1ZQXXmsv1o+hRD+rUR9n++zHu1pRLgTlNO0GBIHmrpb+fWewzVVOpseZ+anQYoavpc+1QVXA9HRn4I2PnmHH10KiiSwGaqwg5QBENG0cgXPExzQr3eoybI1fyVq6LX+QHHtkD47vRhvAwaWm9z28YP1slFfDpTSeW3xaphf3sVgVrJZ3G2srTr/rB8F11pbMNeBPRpuP/NUK8bzMBJTkFGTmuCSS8fsMHkTnwzvEXJJ6IvRnoF6vm7I8XQYxc/BMa/liLNfJwnKiFvOlZmcd5p2bHwqoUY5RPxjAgO4Sw+LXok9PK3HeGZPKAvTCkIBxf0uuvopvHm05W9kPNVGzMJ11kDYr14Qf5QZM2OU+whGgg20uXJ/HlEFltG0LDNBZ2PUgpD2ELC9t84uKc4rJ4VH9Y//kFdAuM/uskbrfLJDHrxnvzo5yV1fayW+3r+YaiptwxsyNEYDxqOTZDjKD2uBWD9aks97lPdMxw/Ruz1Epprs2JHZ+YiOxYWxy1+u1M2adcu3RDgKBwDOMRCMmizF3TV+TXkZeh7jPErtOBtDvqIigBeduYkRS7IYgSOsN6UdDD+t44nQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1494bc7-a4a4-47a4-d1b9-08dd1511976c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 09:45:45.8577
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /egjxcTxlxdlTgGyojyjBafRHAI1WX+XyZlRruDWsInhEqw3kkDt8OeyIgDKTVlcpTtKqpIC+02u5tQbqDrC2Hu9lsBSKfsbaEFlKwvhPR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB5777
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-05_08,2024-12-04_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 bulkscore=0
 malwarescore=0 mlxlogscore=999 spamscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412050068
X-Proofpoint-GUID: m4Fb5Kbp3tMiUF-HsjKACDSpcQrkflHM
X-Proofpoint-ORIG-GUID: m4Fb5Kbp3tMiUF-HsjKACDSpcQrkflHM

On Wed, Dec 04, 2024 at 09:43:25PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo,
>
> On Mon, Dec 02, 2024 at 04:58:29PM +0000, Lorenzo Stoakes wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
> > operations.
> >
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>
> Thanks for the patch!  A few minor comments below.
>
> > ---
> > v3:
> > * Don't describe SIGSEGV as a fatal signal as per Jann.
> >
> > v2:
> > * Updated to use semantic newlines as suggested by Alejandro.
> > * Avoided emboldening parens as suggested by Alejandro.
> > * One very minor grammatical fix.
> > https://lore.kernel.org/all/20241129155943.85215-1-lorenzo.stoakes@oracle.com
> >
> > v1:
> > https://lore.kernel.org/all/20241129093205.8664-1-lorenzo.stoakes@oracle.com
> >
> >  man/man2/madvise.2 | 93 ++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 93 insertions(+)
> >
> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > index 4f2210ee2..4cb5e7302 100644
> > --- a/man/man2/madvise.2
> > +++ b/man/man2/madvise.2
> > @@ -676,6 +676,91 @@ or secret memory regions created using
> >  Note that with
> >  .BR MADV_POPULATE_WRITE ,
> >  the process can be killed at any moment when the system runs out of memory.
> > +.TP
> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > +Install a lightweight guard region into the range specified by
> > +.I addr
> > +and
> > +.IR size ,
> > +causing any read or write in the range to result in a
> > +.B SIGSEGV
> > +signal being raised.
> > +.IP
> > +If the region maps memory pages they will be cleared as part of the operation,
> > +though if
> > +.B MADV_GUARD_INSTALL
> > +is applied to regions containing pre-existing lightweight guard regions,
> > +they are left in place.
> > +.IP
> > +This operation is only supported for writable anonymous private mappings which
> > +have not been mlock'd.
> > +An
> > +.B EINVAL
> > +error is returned if it is attempted on any other kind of mapping.
> > +.IP
> > +This operation is more efficient than mapping a new region of memory
> > +.BR PROT_NONE ,
> > +as it does not require the establishment of new mappings,
> > +instead regions of an existing mapping simply have their page tables
> > +manipulated to establish the desired behavior.
> > +No additional memory is used.
> > +.IP
> > +Lightweight guard regions remain on fork
> > +(except for any parts which have had
> > +.B MADV_WIPEONFORK
> > +applied to them),
> > +and are not removed by
> > +.BR MADV_DONTNEED ,
> > +.BR MADV_FREE ,
> > +.BR MADV_PAGEOUT ,
> > +or
> > +.BR MADV_COLD .
> > +.IP
> > +Attempting to
> > +.BR mlock ()
>
> We should specify the chapter in the manual: (2)

Ack will fix.

>
> > +lightweight guard regions will fail,
> > +as will
> > +.B MADV_POPULATE_READ
> > +or
> > +.BR MADV_POPULATE_WRITE .
> > +.IP
> > +If the mapping has its attributes changed,
> > +or is split or partially unmapped,
> > +any existing guard regions remain in place
> > +(except if they are unmapped).
> > +.IP
> > +If a mapping is moved using
> > +.BR mremap (),
>
> Same here.

Will also fix :)

>
> > +lightweight guard regions are moved with it.
> > +.IP
> > +Lightweight guard regions are removed when unmapped,
> > +on process teardown,
> > +or when the
> > +.B MADV_GUARD_REMOVE
> > +operation is applied to them.
> > +.TP
> > +.BR MADV_GUARD_REMOVE " (since Linux 6.13)"
> > +Remove any lightweight guard regions which exist in the range specified by
> > +.I addr
> > +and
> > +.IR size .
> > +.IP
> > +All mappings in the range other than lightweight guard regions are left in place
> > +(including mlock'd mappings).
> > +The operation is,
> > +however,
> > +only valid for writable anonymous private mappings,
>
> Wouldn't it be better to say "valid only" instead of "only valid"?
>
> (Non-native speaker here, though.)

Non-native speakers often pick up mistakes native speakers make because
we're so used to the language we can decode 'clunky' sounding things and
mistakenly write poorly as a result.

You're correct, your version is almost certainly grammatically correct but
far more importantly reads far more nicely!

Will fix.

>
> Have a lovely night!
> Alex

Thanks!

>
> > +returning an
> > +.B EINVAL
> > +error otherwise.
> > +.IP
> > +When lightweight guard regions are removed,
> > +they act as empty regions of the containing mapping.
> > +Since only writable anonymous private mappings are supported,
> > +they therefore become zero-fill-on-demand pages.
> > +.IP
> > +If any transparent huge pages are encountered in the operation,
> > +they are left in place.
> >  .SH RETURN VALUE
> >  On success,
> >  .BR madvise ()
> > @@ -787,6 +872,14 @@ or
> >  or secret memory regions created using
> >  .BR memfd_secret(2) .
> >  .TP
> > +.B EINVAL
> > +.I advice
> > +is
> > +.B MADV_GUARD_INSTALL
> > +or
> > +.BR MADV_GUARD_REMOVE ,
> > +but the specified address range contains an unsupported mapping.
> > +.TP
> >  .B EIO
> >  (for
> >  .BR MADV_WILLNEED )
> > --
> > 2.47.1
>
> --
> <https://www.alejandro-colomar.es/>

