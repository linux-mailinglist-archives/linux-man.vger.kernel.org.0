Return-Path: <linux-man+bounces-663-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE40B87ED96
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 17:34:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0C9D31C216EE
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 16:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D766E3716D;
	Mon, 18 Mar 2024 16:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="Ar79ydbR"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2115.outbound.protection.outlook.com [40.107.100.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297291367
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 16:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.100.115
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710779669; cv=fail; b=jG0nt79KY0BpK7utmxrenzYT8OaAcyQRfD3QmYmp9MHrnzT/5DfnY3fdFp2u3xp2L8BiAC7Nmd0S6GNEuBpOroNZvgcQKBnlyp0ZXnmhndu4fzRvsMu69yXvuKGLwYTKNBnp+/3hOzLHzlFZ6CrmRxdANHU6bZC3JvhKSDlPvEw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710779669; c=relaxed/simple;
	bh=tzyREbN6EstqddvXZ7y5ANdsVqyYZ2y7M15rE9GCuRk=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=aAWoxD6l24A0vpgl3z4BB5dJMPdhJ7htjs4U0OwUor7MgUQM0PLpkVaQ3H44BZuQJB0Gr4WikEcAWNNidaB7v3IFPIcBDEAP/AOG7l9xikNnI+vllqBWPTpxiubZpz9p4dsSbTVjpf6wMjlTP2pIeLeAmc68qLxdaQ7Mggcmal4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=Ar79ydbR; arc=fail smtp.client-ip=40.107.100.115
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F+yo5QlZw2QA0l298GIY4e/f5dtzIOkQC/AZ9xnFcMcDYOADvLYduofz1BOrtZKkAcvfwc8oqdoQUf5OE57VGjCSJHWZQiegHW3BTNkltM4HvOphIwIr4QeiHArfriTZ7TllcgcjnLe+y1G2ML7wFawZ685O2x/TnzHrrTGNwKlEd7PHkQqgb+7uYYAM5pIX0CFhpec49MeRlMGg6YI/Ai3LaW86dAFNWexPrgoy7Udhv6OqaM/4/K89UmGGhFEFzbV26DsX3r4SVUYfUDc1in4+vptd3I83kH/tqA8gqbww1LTxu9ifnFsP8bdL3KSup0oDbiT7HILZoTOgY/otfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5M3pUOIv3DBkdQ5EDaNGU4HD5mMPLoF9tcYUR94GQi0=;
 b=DXILahbtUq3Ims93EuxWxK7d8HMkhltZ3mqnJIm1GMLf1S+8CwBqXe4U80VgeIvA63ADo4UmhX8LysjY/apLsk6VlUVjiTRqZ9SLC9FEaCpiZ7CL1NrlcsHFjHpi7SxyQoiW0FYmg5zUhiG8lxw+XEpyY1rJIAmrgH9rXf+kMPlvNjt+XC1Z6ToQ42MgA55w+H+BSxq4qgbixKd+/xL457vyd5YvtjaMOaVf54JMymxCfHQ5heKTDJjli4zjgnilEg02m41BTRfyc2JkD8Ckr2OPChLNaaJUAeGDSelnJgUUHxl4SIRM9W4BykB38Evd4Oa9hEAIkCu19m/gCCUkRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5M3pUOIv3DBkdQ5EDaNGU4HD5mMPLoF9tcYUR94GQi0=;
 b=Ar79ydbRko+Z3kOhRGqf5uzXkztQFbk9FHL0TT6s2GoaNDk8fs5926axfs+VUBJf/7US8V8Qheb5SV79/n48PJI/9dAIvu4AhD+n5i/KKgHt31qx9LNVn+j9aa6o9QwePyj3leM732YnBCcZvsN8l3IXnGhVSqG94xhPYVbvIzo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by PH0PR17MB5168.namprd17.prod.outlook.com (2603:10b6:510:be::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Mon, 18 Mar
 2024 16:34:23 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.025; Mon, 18 Mar 2024
 16:34:22 +0000
Message-ID: <bcc8fe43-299d-42c3-a281-52464de3f2bd@memverge.com>
Date: Mon, 18 Mar 2024 09:34:19 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] man2: add MPOL_WEIGHTED_INTERLEAVE documentation
To: "Huang, Ying" <ying.huang@intel.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org, gregory.price@memverge.com
References: <20240315-weighted_interleave-v2-1-b742a48750b0@memverge.com>
 <87cyrswb76.fsf@yhuang6-desk2.ccr.corp.intel.com>
Content-Language: en-US
From: Svetly Todorov <svetly.todorov@memverge.com>
In-Reply-To: <87cyrswb76.fsf@yhuang6-desk2.ccr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0199.namprd05.prod.outlook.com
 (2603:10b6:a03:330::24) To IA0PR17MB6347.namprd17.prod.outlook.com
 (2603:10b6:208:435::22)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR17MB6347:EE_|PH0PR17MB5168:EE_
X-MS-Office365-Filtering-Correlation-Id: 77470c4c-cd38-471b-8167-08dc47694457
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	b8NNqxsaFgIELYvvrkDgqLhSaGjmpHy3wHF/rcJD7AMwKt1Az2mRpYhTcVB+ZXkRr6MHK7QNtzQ/VwzJFSukP4DwQnrquKoishcZnOfdkgdeXBPCiiScmz9KmbKqA4j9scMmUvnytLBXSv8EXDf5VSAfhCBVZkHdIbrJGztpyuOHOR541tZxF7WoYLOEFErrXPk6WQilHF0JLg+ws70wosB4kyFcZ0ZXWhPDLqSKubqTjD8BBnki60zLhLtbo7HNjTfliazpbYJiEo9Wdebo9t9PWrB7bS7P8rpKKjB+BeZPFb8AVT0hT8ody/3XPR6Y40Dl4HS9n6LJmXgm/Nae6vmURiv//xG5G61UhGSdSNBh6Ohm+G5pts5z8Ye7RUy1YwrymQAps8IYt/qUaO3fl8KsMi1A4Q/7NJuXtYkQa2LMWloJdeWsrOxtRjMay5gIZ7yrmZpVOZjEhbPuJkP0D9UZkDffVAm6B3Ybzdacu71JVFaGLZ0GYVIPcnYT1ddOTGLN+GYf5m3RUnHNz4yN6sIjH8qpJmIeOmoreZgf0ObXHVXnssvyClvCtAHGmM5HY5kOqAWUJXOtgED1wF3VP0YMr0ZiUIWY7gDjEnDMD7UCRhRRcghlaxmOmM9WKYsP19J7eCGW6BZvPea046KEk0A1EAVqSGwY8GZPxDDDyUo=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?anp5QUlrZUUrb2p0dXlrYWplNWtZZ1BOQzZ6Zk1ZMFNCVHdpbHZhYzdtS252?=
 =?utf-8?B?MmN6Qm1veWwzS0doZTg3Slhvb2hFSnFxMnIwWHVDKytlVDdrTmw2Y0JBbXJO?=
 =?utf-8?B?LzRqdnNiS2FzWi9udUNuTk5qRE8xeEdYcDJDYmZRZFZuM0VMVEpRVG1KUTc2?=
 =?utf-8?B?L2M5VE9GNllqZEc1bE4vam1BTmJNZkhielBnOXJXYWljZEdKS3NwVU5nR0FU?=
 =?utf-8?B?bnViRTZWVWdLSER0aVE3amdFYjhyVjdYYnIrNk5hdDMxSHgvM0szYWVzVXhT?=
 =?utf-8?B?b091UmNZSU1rVTFqblRTZXdDamxWYnhpQUVZVkZHTGpXS2lISjFtUDZoNm9H?=
 =?utf-8?B?cmY3YlpqS1hUMGdFdnBrSHJISExzM2FnTHprTkZaRzVGMUFpKy9UVVhWanhS?=
 =?utf-8?B?MzNGVG9OZlEyZHVHdzlLL2daVjJmbzhIYXhjWGpwSEJXYjRweDRUR0pSWTlj?=
 =?utf-8?B?Y0o1Q2xKaFI3Y1lPSVNtbCtIU1E0bDRGcGZuMkQzNUNlVk0xQ2VVYjB5Kzdp?=
 =?utf-8?B?NTVUalFVZUFXRmlBaEJZSkxGYklRakJ1TVcyVit1cUZ3WnQ5b0szQlpEbjdF?=
 =?utf-8?B?Si9CMkUxMmFxT0dUMmhlUFd3MXBVcjJ6VjltbFR5WUR2MGo1SE1EaTdmR1Vr?=
 =?utf-8?B?RXgvK2dZZjUxRnEyTHd5T3psMjhOUVNmUGN6NlI4UU1JODVGUC9nT1lVallL?=
 =?utf-8?B?VDNvSHVYN2xiY3VYSGhxT2JuL0hXTHJVeU0wYkdlZWJ6dmFDSElBaW01b1Ny?=
 =?utf-8?B?Q09CREdQMi9VYVo3Yyt6MTM1d2ZJTVRydjRzazVKeEQ0YnA0azZ0RzdRRkZr?=
 =?utf-8?B?UXF4TWw5SjFHcEcvaHcySWlYZFBYbk5RUEVobHQvT1E5K3NrWWZKRlZzeFBL?=
 =?utf-8?B?ai9VVlJlY3JScHVsczg5dGZYZkFHbCs3YVZ4WDZuZzZDZ0hLL1ZmS1IwM29L?=
 =?utf-8?B?MW9pYVU0Z2pYQXc3SUhxN2ZldEFsRUZ1QUxvN1ZkWDA2Q1NGdWlVQTlUUjNR?=
 =?utf-8?B?UUtQSTBrWHJTd0xSMVhkbGVVTzFhSXhjNWoyRC9UTitXR0hCeXAyQzJUNzRi?=
 =?utf-8?B?QWR2VWxiOGpNdnJBZ1hqanp4S3h1MUlPS1dQeUJZRTRTRnFqOU81bFFXNVNG?=
 =?utf-8?B?YjRBREJoaFlORU54VFBkK0ZJRnZLK3Q2Z2dCVWVGTUF1cHQvNmVNcEc1VjM1?=
 =?utf-8?B?c3hqb3N5cTNUcHpxVVhvWC91VEdVR1ZRQ1hCSUQxKzJjSnVMYTd6OENmc1NG?=
 =?utf-8?B?ZDFDRUNlNTRaTXp1eVdEWitudG45dzhCMW95OVRZQnk0QlF4c0t6N0RDWkdO?=
 =?utf-8?B?S21wZ24zeUZnZU9hWUFPZlhvQVYxajRiZ1JIajdZSkJaRnVGa1NkdVlsNTJB?=
 =?utf-8?B?QjZ5Smc3UUZBN3BMZjZBUTJZTXMwVm1sZkhITWRsVWZuK3J0T1BEQnNSYVJQ?=
 =?utf-8?B?cjBaMjZCQlhVWXJNZzdKMkF6d1JhWUd3RlI0cEIya3JqSnBYQjY0Uy91Mzcy?=
 =?utf-8?B?UGJ1VGtZakZIU05tVlJTZys2c0RUbG1Md3o4MnBaNUVLVTFYMlB6akUyRjBU?=
 =?utf-8?B?U2NnYlZPUGxYT0RtK25TV3dPSG5DSG13VDN0c0s3cGdRU0ExYWJjdXZoYkNP?=
 =?utf-8?B?QWNOTjI5MURwcktDUzlhaUlPTEhZMkErc3F1dEtwYzczakMvUy8zejNjZDh4?=
 =?utf-8?B?QU1sTXZaVFcwR0ZEME9yL29ySmpQZ2N4S3FycUhIeTVidFlaVjBDNERtcWU2?=
 =?utf-8?B?L3ZDU3VXOElCTFJ0ckp6UnZqeUYvK2N3YkxUblN3ZEtlMWZFRUFmZTZCREZX?=
 =?utf-8?B?OTJWZ3JmcG9vbG85ZmFoaDNNZTBhYXE4bFlKQXJvVityUldDdDl3aEZ5dHRH?=
 =?utf-8?B?RnNOeHAxUllPdGdlVS9CVCtMVm5sMXdhWjlDZlNwbXVXTjA0UXFZblhpRzZL?=
 =?utf-8?B?a0RnNDBIMDc3Y0FXMS94emZZNjdJcGwzWTF0STliWGNLNmNHVWhYblQxd3Nr?=
 =?utf-8?B?NWduKzRMZnZPeHZDemQ2ZGRuSlAxK284QmhlTUp6UzJtWXJzUXJhbkZzMVV6?=
 =?utf-8?B?TzBpcUlpRTRWNUxweXVSQy9zTFdmT1N3bTdaZjBhVGpsMWRGeFJ0L25IOFVI?=
 =?utf-8?B?cEhxWVlDeDZLLzMwMUQvRXNFYkhUczljbkF0UmJsaEQxUnN4VG8yT2RBYXNR?=
 =?utf-8?B?VVE9PQ==?=
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77470c4c-cd38-471b-8167-08dc47694457
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2024 16:34:22.6035
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vx/SVpmmNO2is6QLwOR0WRTtETYmSPVBqk4vWBFjaZg6nL+MKhuWhLzTGAr8WkBsdiaXdggwf40557K6YBuCT8NUEtSPOAR3/7cnGxANfMw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR17MB5168

Hi Ying.

> LGTM for the description of weighted interleave mode.  Thanks!  Feel
> free to add
>
> Reviewed-by: "Huang, Ying" <ying.huang@intel.com>
>
> in the future versions for that.

Done. Thanks a bunch!

Svetly


