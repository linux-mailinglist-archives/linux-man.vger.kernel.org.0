Return-Path: <linux-man+bounces-2119-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 413F39E562F
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 14:07:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76BA01884155
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 13:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BC5481DD;
	Thu,  5 Dec 2024 13:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="WdV9dhee";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="pdEGBIFs"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BE1E56C
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 13:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733404026; cv=fail; b=frAsZebg+5wjpS2hxRwudQmNBKY/S8+SEjotbX5xy21lz3PlHcw7eYcM2jiemoo9H7JHkYvRB+IBZR9yzYdacKHsCDBEMfTJd1rBhKG/5jNQ8OXF60S2YQGj2BmeklJ7vSkC86Vky06muFSw6vXu4DG85z6J33wdqw32BLdMOHc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733404026; c=relaxed/simple;
	bh=lRUIhg+47VEIUAbzAScNFFgf0rgvkXyStBPbe7JEEME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=Q0mb89Dyi6gopvOVhf7luz+SRFFsuRbdboGmV91BD96QqAwhp7D5zSm0h6g4cU/6gQSz1McGJTNVfjy2WkvU385SuqcFvSJi10XC7Var+5aW1z3HhZEAM+pw0vjz7vPExQ2D0J3eUbOEfcCEU3IcvvbtMbCaNItUZ2mxoQ5Ji7E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=WdV9dhee; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=pdEGBIFs; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57NEfv028384;
	Thu, 5 Dec 2024 13:06:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=PyeV1P+BPxfJWTGKik
	HycQw3JsUdrqoS8J2beigmh2k=; b=WdV9dheelX2u6aXDrGMWbaQJ4f5bC7hOhB
	r7Uwz5HqCHKJqyBNVtbHQx6Id79w9t19SlsVI9VR0YyqdtogRwYhdHLdYGR8UIU0
	zBYeHZsYJzq5C/SUSbzK8OmbpHQdFzc6cce5menqYTm2tn1Xbbu+Ty6Nx3qU9B08
	1tETnGbXf8Nkv46ZruQ3tdtegRcjFOYU8IXxEV80vnQlA7mgaQQCU0g3A7L4TLo/
	Vf7A0E2Fah2QeVz+CdOPVvg16e6clJ2ag2ZwwVPlWBhmVYELasC435RqbbivCrbR
	xtB4U5uxTUqb3UAKA/v/orsYBVIFcOsjgzKZVsPjQWDA5Q4QC+UQ==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437sg2axcx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 13:06:47 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5CEw87040024;
	Thu, 5 Dec 2024 13:06:46 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2046.outbound.protection.outlook.com [104.47.70.46])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 43836wt6ja-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 13:06:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fxCPen+haptrVwv/6O9uA+L6liiyJatj3en+ocdSGXcNFU9FCDeHxyKVc4AXUgTd2k41O6rmUaGh9QZr7nJ/sC5ZbnfsxQonAzwJSjLkKRkA0KB1GGNOUr6VKMI47MNHrE/4kh1i/1LpfMod5+XMy5/xrvpGxDO4OfdHaVIy+ERkt+kR0DGs93J79gqauVrL2p1HwjpkMnyNABBTOn0lIVyHg3iPnsJKjY/4dVqioly1yXQM6TEyh+fr5rKYRz1iiKcGmw7yqPlDusU6nBnrH1rNlwZwcrgphnQxNHlCn6yHLFY986sHV8hF/24gbhHDOxiyYES7ToHcrzef7T5hzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PyeV1P+BPxfJWTGKikHycQw3JsUdrqoS8J2beigmh2k=;
 b=p5TMFu9thHOugyFvExbKnwYNRacFoYJSWPPI+4iNiGfnjvk/6AnpftO47vKuawhhgEDTtcWuG0qQ7Z5s1uL7b2TlBnNneVNH3n9PwWcomQu1eHoYt6BiFodTfiBzjc3QWzbGXxJcp78Pa7p7AXIvtzhpUSfv53VeElbfmI2Ex356scI5vVlbxL2n+qQYxArHymf0xyS0LNcu1oa8U+x2oTUXkCqLyu93lwQXR16Go99TkKa67fJO1Lfv6Ni4XjGKwIPnalRCvZehEkEJneT5eUyFQL8BDq5FGEh13lzakgzJndLRlezBeSMABBXeVwTaSXiCXdVQPKygjuPIASjnWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PyeV1P+BPxfJWTGKikHycQw3JsUdrqoS8J2beigmh2k=;
 b=pdEGBIFsSwYB1q6e7NCDQLksbUi4XLauXVAb2sZAUTeQGrUk11RJ+Y7Hz8FaeDu3saXtPsJDm4oY0k+joXu7KbLlxxZIN0IaDRsfsIIy+crg06qFu8/3Yzty/ytH66JECW+ZL1mZpI9X27dAjJaSKz1+ki9RmmBLr9CTAfJ1p1E=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by DS0PR10MB7524.namprd10.prod.outlook.com (2603:10b6:8:15c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.22; Thu, 5 Dec
 2024 13:06:43 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 13:06:43 +0000
Date: Thu, 5 Dec 2024 13:06:41 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: git repositories and branches (was: [PATCH man-pages v4]
 madvise.2: ...)
Message-ID: <27b2b669-54e7-469e-9ccc-7ddc94fbfe41@lucifer.local>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <20241205122037.7u2lbjix6mawoepr@devuan>
 <e7e1d068-af82-4b48-9fde-a341158e4db0@lucifer.local>
 <20241205124358.l4vzdinfzqngl7pn@devuan>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205124358.l4vzdinfzqngl7pn@devuan>
X-ClientProxiedBy: LO2P265CA0498.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13a::23) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|DS0PR10MB7524:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cf94744-9bd8-4a6d-be6c-08dd152daaa6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?yj+6e1g5zIprATmsyJVN9JUUcIP+PLfz6Eg4cnISZpouf7tS4apsiw2uKsyR?=
 =?us-ascii?Q?3o3hZIfdvWoQbPZsWH9UPepfzI3eMHCaOgzxOp4uY1N75tfLwOX+JlZstb4G?=
 =?us-ascii?Q?g6vMYNCNlCEnxE+w4pJ1bR5RL/jbWMmaj9SxSySR8DAV7RURU2XMDzNYgO95?=
 =?us-ascii?Q?T6zgKULCJu9h3K36GeElx+Y+TlKIi+U2LVHSL+WuH60j7zVMyIFKx22G8v4F?=
 =?us-ascii?Q?oRtrG3hLSOzZnLUSF+iqSkiXYzgvOYl9eyvV/VlP4cUF1LoVjUK6nGLyEuq8?=
 =?us-ascii?Q?LoneGWXG340Bbl0fL9x0Bm5tUsuMI6GMdWZl1WQN03oRJfUYDfEeY5sjxGy2?=
 =?us-ascii?Q?s+xtnGJ0eBKiW4KLO6twGLk6Ld535g+tlbH4tEstreyM9/UIW1/U9lEEFQFP?=
 =?us-ascii?Q?yy17qyNiJHz+5DqME233o4LFgYKuBKhObBeBSImvzqdpU5sskNxIbgbUxsSl?=
 =?us-ascii?Q?Pf1+392E523ZqqXswmf2PkpbNKwQZd4QxvfqjrExy7wsUmvGHOE0D++mSURq?=
 =?us-ascii?Q?PzFldyH9rruU4n+X1/IRzrDWPEPedZsU09qOF2haAT64G2WwI9Jq5JcvDPM0?=
 =?us-ascii?Q?+SepxHKcqfDRy3LONL3QTEnZj//qYUW9KGzdjFD+OwWOF7XygywumDpwMYiV?=
 =?us-ascii?Q?56HVrCKI119WuatyaK81AATTOKS22uo8mzVYnDhgtTct8KAb6IL3H/AeDZ4o?=
 =?us-ascii?Q?m6q4V6pYtiTKhFEEo59tl5Tb7BR1bHP4BMVg3tM/fzGtKSYEM8wPyDRQ+HPk?=
 =?us-ascii?Q?zFRZ/j8iWJsp4A/MZ2O14Va4mErmrma9wFrvOlE66BekoGuyGgRAjSKqmZFW?=
 =?us-ascii?Q?2VId0/o32r6ym3rNdOqlx/67BDuK2tfr4Faet9hH1UvvRUkhh1cLkIVRLe8I?=
 =?us-ascii?Q?1uJ2pkZmm4w1FfEWJOEmCnaqJIGX3UQxTFpmVqi7EuY9IGWDxkKRdP/wHEkv?=
 =?us-ascii?Q?1ny8dDAY+5Sojh3995iYqZauwR18aF1NsK87lMbJf0tEdx4mt1baa25FcFeC?=
 =?us-ascii?Q?DcWAA1Vmx7ImZDqJq92pOj0rzOgx3Qa9v7MWAtsCy3r9xMSJPTKDogbIvoOK?=
 =?us-ascii?Q?fVjw4Pz/oa0oUR3MYx8RQBD7FjArDQZ0I3a1LvByJmOaFRKVVbmT2Ty5XNqX?=
 =?us-ascii?Q?uYOHyXNleMkPsGTWvWht9QsMgdANknNnGnSMuvocGGcX7pT5fVdJFvTHpeXF?=
 =?us-ascii?Q?mtZvOaaOrRftrIIQ6BTVKX7Y6pUrWjeVtKvj07irVHTLF655E9zoOtmg1MCj?=
 =?us-ascii?Q?qA6+ppDDZUkol17+1LYWRbgT+IQHDD/44jezgzQEWAt7ssgUC5PdwTua3R7u?=
 =?us-ascii?Q?Fo0=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?p08LyOnz9ZpKqZfiTm3VpRd1QJFnmdZ6jWX/NP0f+tQ9yUyQn/cBBlm/L+Kf?=
 =?us-ascii?Q?W6+i4Ya7qBG6Gs81IrFAIMHWfLzwn8//pPy54o9sJ0RKYbnqWhzDi+lwb8fg?=
 =?us-ascii?Q?5uuCB1UrGW71pGTHeLxskFSODzKX+la6bu2iY9aYHthN/OORSYSXitQBaCBz?=
 =?us-ascii?Q?lVarh4EUMW6ljqHs2wFXl/PeM+cb5luFVRlw2MCsYdc8g87Ie6zP7ZGFjGJi?=
 =?us-ascii?Q?mY7SOZEYNXOPiMdzK11ORUA2/BhVd2VMiGZVF2z3pE7GMEBO9DB9Qj4UZST3?=
 =?us-ascii?Q?4Dvv/TcCL7HH4bV78tpZtqERDjplaTuuYMbeEOHONczdLnEdbFPGiA3tsVSM?=
 =?us-ascii?Q?VRI4Vd/d7/edoaZgOlEhNcqPqZCVPmVbMxkVFJRdjny4Tgiclf5Ost56xfGT?=
 =?us-ascii?Q?e4Pc2rCNcvNDdmf/gX3Ly19TYxV8SHzIPpTz9VPZTwFGUtERGxn8EHsstACa?=
 =?us-ascii?Q?d8vxS6faVILtSghl3RnxUj+Qe22thyaG+3fG9nrl7YEkvNa7jUbolH6mldXG?=
 =?us-ascii?Q?VR07NVvJX+qEKlbGhlfuj0gCNxLaO8JU2FcXEQgef0UVTZ7bijPlbLpdccFL?=
 =?us-ascii?Q?n1tiEFmM8RkvaG0GHcmrhbpvM2GR2BqzFpscM7FJriKSMivRq4U/rD5sjKyt?=
 =?us-ascii?Q?YoyTJy0UiS+0EIZh2hLYzfUFMSIpIevjWjyd8tI+PY7u7CBEq52G7vHm37BY?=
 =?us-ascii?Q?X7zCehBp4plX33QZp9rrIaxjknt4yZ+AEKQVj+Vuj3MRSVPIR5vg4k0PdgBU?=
 =?us-ascii?Q?GK/5FPcGe10p/1ypOSXL2N260Z4kuzgkHBaySDoCwbTd4V0UHVwjTtcGdstm?=
 =?us-ascii?Q?rH077TY7oIf4bM3SnaUb2Qe1o5W6UDf3Kq5LKzOZ42DmC3Bx8bR1w36oc9pq?=
 =?us-ascii?Q?rZfbtj/WsDYEcIrTefeHYhaW1qzcbAhBWLoJ/FqW64hfrSuovx7acCfQcSRD?=
 =?us-ascii?Q?oShHqzh9tD62962k9wHwCE7Yrdo2LnHxWIahTaAogV3i82YQ4Q1HjAcUH/Ag?=
 =?us-ascii?Q?3wzqdb18je0i2fE5Tbhnv5UBSPOv+Qj6Rg9FutnfaNXDO24P5mc9WNDRtmNg?=
 =?us-ascii?Q?VxCsLHgi7tNnj//Gu2jkDS8RXV34KYujBEqm5uYUcGilLdgleAXSVYkoTI7V?=
 =?us-ascii?Q?rQoelcNtJBVB1zxL/xNKzt/UPqELaQinzUzPKh6T793Bhbvu/lFfOXT6yZCB?=
 =?us-ascii?Q?95ZOjsJhhNalqTL8SIzhvJYzF3/qmyW9cC6MlEVSxf+dLPuUx33yXx5OAnqx?=
 =?us-ascii?Q?2dj4BEPgrgEzdF3CUmNwn4pu8MQXF/Y8GX+pOB7luV2w/Bf5hVzlUC65AgUE?=
 =?us-ascii?Q?4BfLq1Pl2xqpbxy1GNnVUbo8/w11EOrOqgz9DgyZCUKy7d0R4foQu1+P1ft7?=
 =?us-ascii?Q?B3SxMdKdxzjMUHhLjEAvhjYSkVDc2kxB1qFvycvQEBDbp9PO/XYxjgTU0u3O?=
 =?us-ascii?Q?efb/avIR3xCu3UlybzdN+zAOsB3Gw70UPkJGkVVTIb7j4BKpBsYAk54GUwi7?=
 =?us-ascii?Q?ndrWcEkgbMbmPdTtu/rNp9w5mxu6axOMifAYnXz/sZ8AXXfCp1ReY4SIzS94?=
 =?us-ascii?Q?lYERACOXg8YQTZD0GlPNtM+zyGkJ91xqb4pp0fQSCSssDTaQKVIWfenv5GnV?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	PGVVl9cv2ONr6P9PE+PebH4u5uA7f893nJ08ziZCCmFr3Yk8g3d8VsXMWZA4ngBJ7tVhpHO0ZZJ3UEy8a9/ZyF32q0NYfbM/HHSfCt2nrQObuF6gqxB02cptG+6/du2SkRO0ZFKj1Mt7gp+T7S98r/7bdHrY760YJ6sw1NJXuNDbwr7jH9hybBm2nM1tAEx/6zrM4JQjVpwv1r2q6Z5mO4VPJiQ3YxNUaZGuwZl0qqtRubm0dZ6Zk0Q3FjDaGu36EpP/SPjHsesRV8Wl0jlndfVRnlHl7RfMPCTFwekEQjquZGk37QKB9z5nqAbi3ALcyHkGJ5Jn8G+m2v5IS1sHMauUwK12iA8qPCdN+wUdHadAWjDuZJpX1i8WntGIvHtir4Vr66W/ufK98PmcqVW1UsbwSA9JuChOhXCIASkEK6Z0l2MgABcpBsMIqZP6Y36VeGDHsw94Q0lmlR7YPWvX16ezIT1stEMIMiwSvEe4W8wVDrDdGPol56QWBHLVnCYLpMkwxJHVt8wqzG28FiSXLIx8YWzuP3JV0p71+zkCcaGhSKQGbT4j+qYfxESnh/1TJxRTPYqNBBfijhCn2At0eXlsC5Lj/sKmXUK2Q9sLtOk=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf94744-9bd8-4a6d-be6c-08dd152daaa6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 13:06:43.8379
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PmoinUI914XeU7YBj6Xq2oCYdrboPweiVhvOIr9FPaPHUkTuYZ22Xb36nE5i8rB9+iYN2Bzk6Ix2rXw06T2NanDDILB9Ik32jY0mPsN0gmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB7524
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-05_11,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 spamscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2411120000
 definitions=main-2412050095
X-Proofpoint-ORIG-GUID: 0Wi0rVpyHic5aexAXY416p-Swigpz5Mo
X-Proofpoint-GUID: 0Wi0rVpyHic5aexAXY416p-Swigpz5Mo

On Thu, Dec 05, 2024 at 01:43:58PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo,
>
> On Thu, Dec 05, 2024 at 12:26:56PM +0000, Lorenzo Stoakes wrote:
> > On Thu, Dec 05, 2024 at 01:20:37PM +0100, Alejandro Colomar wrote:
> > > Thanks for the patch!  I've applied it, with some minor tweaks.  See
> > > comments below.
> > > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=bb405ee3f6039226267fb1c6d2cb1fbb18d835bf>
> >
> > Thanks all seems reasonable.
> >
> > Just a quick question for future changes - I see you reference
> > git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git - but
> > I've been working against
> > git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git - is the latter
> > occasionally synced from the former?
>
> The 'main' branch in that server is usually at the same point that
> 'master' at <kernel.org>.  They're the same thing, just on different
> servers.
>
> Then, there's a 'contrib' branch in my server, which I use to buffer
> patches I apply from others.  That allows me to amend typos and other
> mistakes (or even drop patches) before pushing to master.
>
> Here's my workflow:
>
> 1)  I push always first to 'contrib', which triggers CI on my server,
>     and lets me know if all's good (it runs many linters set up in the
>     build system).
>
> 2)  Then I let know the contributor I've pushed there.  Then I leave it
>     there for a day or so.
>
> 3)  If I don't find anything wrong in a day or so, I push to 'main' in
>     my server, which regenerates the PDF book in my website:
>     <https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf>.
>
> 4)  After the PDF is generated correctly, I push to <kernel.org>'s
>     'master'.
>
> You can think of this contrib branch as a 'next' from the kernel, but I
> pull from it much more often.
>
> > Or should I be working against your
> > personal repo for future changes?
>
> Most of the time, it's enough to use the 'master' branch from
> <kernel.org>.
>
> In some cases, for example if you have several patches for a single
> page, if I have applied some of them, and you need to rebase, it would
> make sense to base on that 'contrib' branch.  Or if I have applied some
> changes recently to it and might conflict with yours, I'll ask you to
> rebase.
>
> Cheers,
> Alex

Perfect, appreciate the explanation! Thanks :)

>
> >
> > Thanks, Lorenzo
>
> --
> <https://www.alejandro-colomar.es/>

