Return-Path: <linux-man+bounces-2083-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDE29DE8A1
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 15:37:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81654282A90
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 14:37:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EACF13AA35;
	Fri, 29 Nov 2024 14:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="ilFkLb4y";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="yrZgzQ6k"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8354EB45
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 14:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732891032; cv=fail; b=Dv36ayS1BeWNVNS+aTRA5bGRWI3qw0GDq/8GlIZSaKQcCpOe07O8xMVLKUDeLBAUhw8HUWwfg1TTX8t5igjtd+1AcoOcUQ9tzZQUs+4bkh9hoJRidkzErZ5pYqnboUSFNlsrkBXzwTqAMmhltQnoa6tvtNDjKuHIseCABi3pHHw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732891032; c=relaxed/simple;
	bh=0rluN/SRcZHc6CIdDyF322FNdv/wN5J0pR6gYLxd/sU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=t8yBxnZSDjrr2X1l6PFQYEsTodP5aYBW8HAoYCsiaZcLh7Q6N9iK7rHnX5QnxMMBSblFr+q+0QwuNgUL/lIbEmdXZHHfcpumU1cf+ecc7Jo8Z6ledOQpdkmwJYHO94MIWcH+Dzti1plBtnCDVd2ha3hMUaZ7GcXebeK4WTEOYCU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=ilFkLb4y; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=yrZgzQ6k; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATEMY9l030504;
	Fri, 29 Nov 2024 14:36:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2023-11-20; bh=qxW7U+3UWCii1JIlZ4N+DWhLi4rREfC6pqB5puCi4H4=; b=
	ilFkLb4ytahBHOQksgi5r90KXzN/A9CaPal1BuWDvDYoScsOexXmzcWGWGaDmFdm
	6LRItka5uiToThHqVQbusZ30sV8Kse5zzuog+zI7El0gptnje/72xsDO1tPrNlzj
	hB5E6Ih81B4LexD7SgjwoCW+Xrlu90RbpxeZeH77PLgUYKYHsCATSBPIQlbL5cQA
	VFpefQiEgw9encZIVYhnsaPfzNI6+4Pg7RL1gOmC4TrzsxYWFzBi50p23JNauHSY
	N8P8OVlTXTLMEf/JQwwbaiTJk1ef99BWXXWATEUuX8yKybk3DB0p7FafE9GcDxgm
	TbfZOabwIvX+/3Yr2I8NEw==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4366xyudsj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 14:36:57 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4ATDjxEW027468;
	Fri, 29 Nov 2024 14:36:57 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2040.outbound.protection.outlook.com [104.47.70.40])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4367058016-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 29 Nov 2024 14:36:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QeWiWVNf2D6MRKyf8bCRUz1piRq7OVgiejjw0Sg651xReaSelpy3tokxy8fRiM6vQVLMoJV6vWv5txwnVEwiAPjcRSDKeli31KECUiT8zwavvz3fkGlb0JHbtljcdHXdFUll0qsEVeENmklbmqN39bGhG3xPugMw8MXAJPeQR8RHH6ZarKJJVbJO7y6fFhmWvNtg/b3rdwwl8+ZZHVNLaYCRpgPRMq5A1m0mI3cY+zAXGR2oIbd1ZJJIdYZLt2uevMf2vI1myLA/QLRMSpqa5g5HvKkJFqZzeAWpx9ujPGZNT9ybxEk6noncFv2VYOLGnmyrOOCBkyxXdIvkaH1SSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qxW7U+3UWCii1JIlZ4N+DWhLi4rREfC6pqB5puCi4H4=;
 b=V9wMStmsRYEnXkNmjV51xU62wCA8LCkTWFQU7b2lVA0fGBd60sGgeti1iRisv63XzvY8/n3PTImN9H5rXhHBrSgaoV+iPepEY0Q9pgaleNdWW855Is5uo6Z4V/95fgLIYrOGtBS02PUidHUFzQmJALX/n7N3erhFGzdIKvratCZqKmMrfG1RW8cj5LziboUcHqHYPX4Vg+KESqJ28ZWjj4R2O9GaDCBt3umkTHu1NcHQrlWvOyj4aBKbzrD2xRjhntgXQLhXkN4kxsXQpiypI/b9OOpe0dyaF3JFnCOGqx92UlllvAWXYH6MRZ1L6Fv47347WCYWdkQxPiCZbM5Xsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxW7U+3UWCii1JIlZ4N+DWhLi4rREfC6pqB5puCi4H4=;
 b=yrZgzQ6k1hDgz8lbbcYlIhUctL0pdPPo3T+ZLQM50cYpPV9H1hl5JNiSk8MuIQUQ+y4bBBa0kFppyvznYBhshlu3moMc6qqOgxtwmv36KcGT5qmXSuBMImAMkQriSbfNq48ERcTjRSXxuJHunVcqup8MZ39vSedU6eEPFX1B7Ko=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by LV8PR10MB7965.namprd10.prod.outlook.com (2603:10b6:408:204::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.12; Fri, 29 Nov
 2024 14:36:54 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 14:36:54 +0000
Date: Fri, 29 Nov 2024 14:36:51 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <c2d0b451-5c64-4cd6-b22e-99fbd23533ed@lucifer.local>
References: <20241129093205.8664-1-lorenzo.stoakes@oracle.com>
 <20241129123501.hvw6cij4trdao4do@devuan>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241129123501.hvw6cij4trdao4do@devuan>
X-ClientProxiedBy: LO4P123CA0276.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:195::11) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|LV8PR10MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 92512efe-75d6-4cd7-6bdc-08dd10834513
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WkMrYnV1N2hpL0h6MDF4OXhnblNHU1F5d3JkK3JEcUozQ2VGVXBwS21hMEZn?=
 =?utf-8?B?KzJlL0NuaWY1QWxFaGY0MWcxUmlGTnRVbVBqODBXL2hNeVNIdmZwZzRwanJ6?=
 =?utf-8?B?MnN3VVBWQ25GVXFubjZhd2JyN01neEE5eEZ5U1FyRENQZHNyNFRET3Jtclhq?=
 =?utf-8?B?Unl3V2Q1bVFiVVFZNW43cU8rTCtWcEZEMzkzdWpPZVAwTnExZFF0UnhHSXpY?=
 =?utf-8?B?WStRb2x2d1YyY1dMT2IxYXozWkdQcVRBUkM4K0E1dU9qRVc4N3BWRkoxeEdY?=
 =?utf-8?B?dHBaWUJpcTRjaDF4SUpTKzd2dFhtVDBGK1ZLVEI5S1hRSnZ5aVI1amxlRnRJ?=
 =?utf-8?B?VlkzVmVrQWhCY0dKTTlReXJjcGpzdVJyMVFubWxocUMrZ252dytBTE51amxj?=
 =?utf-8?B?NjZVSnUzYnVCeWdnU0RXMDBaakhyMXFKQ0ROUFdra1VRNHVJeHlrd2JFOFV0?=
 =?utf-8?B?YURJdDhwWXJCUXJEYnpnZVh3Y0hELzdBc1pMVXlBZkRMODJSM3lVd3JHRkZp?=
 =?utf-8?B?MjBJcGkyd0lBREMza1ZnbUQxeHJON1c3L3hpTlpkaEh3M3FsbGxNS3Z3RDlx?=
 =?utf-8?B?bHJrdGRLazFISHlQNDNqdnQrL3RkR05tNW5YRWRZUEZ6RUVxTGdLVjNoVy9R?=
 =?utf-8?B?QnlMUGZaUEI3b1pNWGQ3KzVlcitWWkdpT3JmYUZ0UkhsTk83SCtPazZTcHZQ?=
 =?utf-8?B?ajhmbTVWcUxXVVhsQWpkTFVheVZUWWt2eDhZek1kVzZUS09nQXplcm1uMmxK?=
 =?utf-8?B?RmNKZmxJQzB6WmgrWE9jNnpHV0hsNmlyeTNmYzF4VGIyZ05BL1FESXFwSmU4?=
 =?utf-8?B?b3RiTUhiVXpjVVFiVE5LaEtPcUtZQ2EzZjRia0IrdUxCa3dEV3dkTlZ4NmF6?=
 =?utf-8?B?dWVDTjZPM2ZuZXRuemFVQmZpa3hhakMrTlEvZHlPYmJodGlyRVVLaUpKMTBt?=
 =?utf-8?B?VFowL1VVUWVYM1VIeGVEMFNRZXRxTUpPbFhkalExcXlTNW1lRlV0ODUyZmhZ?=
 =?utf-8?B?amdDaGpidENSRUFaR0piTWN5WmU5NC9CZ05oOEwwTjlTTU5IemdNdUxPNS95?=
 =?utf-8?B?c2VNRkZJbmpMNmZ6MzZNU1JON3VaZkFYbkdxUzdqanZwSWlncUJ4UmdSb1VR?=
 =?utf-8?B?TVpkNjBIKytXdzMrdjlqWjQ4ZVdiV3MwN1VFWXdxalNOZlRaTUIwbXVQUVBV?=
 =?utf-8?B?MmhOcGlYVStmbmd1VHgvNGtHVmx5NmMvMld2YURYVG9OdUxsaExuYjNkdnRh?=
 =?utf-8?B?bjNQMzRmdnhxU2xrc1lROGdzckNVcEdtSFNDZnByZW5Cczg1cGlrTmRMMlFo?=
 =?utf-8?B?SlZkRGhwYjB2ZWRZcFF6ZFJpR3psZXJ4aWo5bWJ0T2dWb1FtWnRXUTcrcUZj?=
 =?utf-8?B?NWtNd0c4M1BhWktscC9wVmR5OW1jeStGd3Y4bGhUU0xPSldPeGtvOEt5ekQw?=
 =?utf-8?B?bDdaM2krb0d2ZEY3MVZCVWFNQUpmeW9HK0FQM09GNDBVNi9IdHBaUWcyWWNk?=
 =?utf-8?B?TkxSWHJCNWhXa2FQUk9OMlVuZ21sTVk4c2lMcWZzckpMK3VaM1JrYjVhWVhw?=
 =?utf-8?B?OGgrbU9DSnJHRGUySVBUZHBoVXBTZkpTYklab2ljMzFGUWY0bTM3aUNjNmlW?=
 =?utf-8?B?MXo0Y2s1Zk1ENXhJU3BBVDVNVTl0aU9sRHBUeU91dGlMY2NzSnhsZHJGNW4z?=
 =?utf-8?B?dWtwdGxGQ282cUE3MmorVlR3NTlzbXRCK2JxbytESWVKd0FBMlVBS3pLWG9D?=
 =?utf-8?Q?mp2kdBwdaSluIMksNY=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?L1hKNUlxV3g1TW03RDBlMmRRdHNiYmRtZSswTmZaelNKZnhYTGtyenEyTXVn?=
 =?utf-8?B?UFNLc0hMZHBDU2hQNUdMQ3ZaZ2hOdjE1VG1oSEJnM01MNHgvUlkxSVc3R1Iv?=
 =?utf-8?B?aDBQeXAzVTBUem1WRGdrY21KQlFUdW0wcXIra0FLTTdBN3I1aUZFQU5KY0FV?=
 =?utf-8?B?Q0NQL2Y5cGtxY2lmeVR3WHlwN1BMNjJRZ2tBTmZOcFBTUHBpeVdHaUxSYWpM?=
 =?utf-8?B?Ymhpb3VsblByam04bFp2VW9KVXUzVnZzdG1JNTBlbFhUZ1lHV21LTW56WFlm?=
 =?utf-8?B?WVd0anRyMnBnbXlzaWJxRmYwbUVUNDBrY011d3dIV0VraWh3SWZESThTNy8r?=
 =?utf-8?B?T0dIVmRUa0tjam53TUdoRXZMWUkybUUwTElpdlcvUVJvZC9HbWd4MFdHSjFI?=
 =?utf-8?B?L0NnSy9UZDA0V25TOTZVQ01GaVRtMDRwbUJlSU0rUGZ2VUlkNGpLK2JyVnZG?=
 =?utf-8?B?Tmd5bU5KWDJEK3dlQ2VMSEdoNGVVaXpsU1Y1eXVBcGVJcmN0bldSUVdXS3J2?=
 =?utf-8?B?bmhvaFpIYW4xUzZpVnR6TGpRYWxJQTR4WUNkQlRXbktLaVAzUjF3VXR1RHBk?=
 =?utf-8?B?SzdXRmtFRmxoU1AyRDY3VlpRQnlITEVuL09WTm05US9WZ1JpeXBLTWJRaGJl?=
 =?utf-8?B?NFJTcnpucE1oWmQyTTZYWFVjY2FWL1g0QXI0V3VIRzBocTEwZWttTDF4L1hy?=
 =?utf-8?B?aHhFb0NNYktkUno4OXdvR0J0WDZFaDNFcU5FS2Q0N0VhcHpsZm9ENG5ITVRB?=
 =?utf-8?B?V2E2bmNLNnk4YU5QVkF6QkpWV1VLTTIxMHlMTGFFMS9uY3dNb1ZtTitvcksy?=
 =?utf-8?B?OFNleUpQbm9PY2tKWktDREttK1kxVDR0OFNBUGFoakJFYVk5MkdrbVlWMEVv?=
 =?utf-8?B?ay9uYWlwd0h4SUV4TWdKR21IWE9wUkZjNkxDenlJdmJ1VlVxL3M3NVRwLzB3?=
 =?utf-8?B?KzgxODAyY2p4aWIrZGtBcm8rSUw4Znd3NlgyaXhyKzdvV2JsNUtCaHA5VUtE?=
 =?utf-8?B?UTJVVXpOZGRlYXhVZUVQZGdhcmp0WXVyeWt6bmhaNm11Y0VlNS80SWxJZkpo?=
 =?utf-8?B?QVdjMlBTMU4waitSS0FGRTc0VWNkRjUzd0Q5TGNVZzVNczZ6VTMyS1J6WGRO?=
 =?utf-8?B?YnJFekludUc0c3Qvb0hOeW9HYS96bGZjSE5xaFZyWTVkZDJmTXk1S3RUaWxG?=
 =?utf-8?B?RFNsK2hYUHFQOFROQ1NPZCtCOXd1UFhMZ1dlUzZLTlNPVmpiZFcveVYvYWwz?=
 =?utf-8?B?YlJWeGxxbG14bUVWL0NhTXRYRFlHQTk5dlF1SkltYkpIMjIzUnY5OWZDZmZP?=
 =?utf-8?B?VzRPVnRUZWdDeXhhUFdvWWN1cE5rcnQ2YytWUmdqVWlkL1BPZWpBR0ZKZzdC?=
 =?utf-8?B?dFNTWjJpVlF0eW1rTFEyaG1CMjhYb2xESG1YZkRraWZQUkxleVlCRWFXNCtY?=
 =?utf-8?B?NDlWOC9vaTk3UzF1cGpNN1J3WFF6RVJFVjNWaWkxMFJrSmw1T0FDdzVsQjFa?=
 =?utf-8?B?SDV5Q3Zlc2QrUFhsTWppL3phcFhvcEFPSXYvd1B1M0c0cDZha3UwS1NwYjkr?=
 =?utf-8?B?SjZSb1UzMmVjYUVsSmU2YkVJZ0JNT2Z2R0JlMkZHNTg2M3VVdDE1UlFMM3hR?=
 =?utf-8?B?dTRJZGJzUFhHdUdrR2hCV1FqRXBFSVQyZWFLR2xjYmlIbVlkWVNQcGw1WUJJ?=
 =?utf-8?B?bUdnckxYYU5CelN6LzNTQy9WMjJ6VDhMbnhXQXozcjV4Y0hybmtFZlpiZTYr?=
 =?utf-8?B?SElBN2lIUU1kSHZTSHZYZWdWdThSSmJnTWNwaktBMnloMjY2ZHR0U254WGpR?=
 =?utf-8?B?ZVBEY0dPdDFJWG95a1pJNHUxUEFBYlRCUzdFbnVxcEY2b3N5VnlOZkxEZSta?=
 =?utf-8?B?OXU5NWo3MlkyWjVSb085VS9mVUtjZEVuYVVhTGhzM3lKbUJ2ZW0rdi8vd3Fh?=
 =?utf-8?B?YUUwVHl6ZFM4MUg4N3hpNXVjaGJJdEVUK0xjTUV2NDFpRGwwUTVtd2lURWdD?=
 =?utf-8?B?QytpT3dZUmVCZ3VSWDdOSFU4NDdqSlJuUS9FQWJyNG5oNWtFS2pFNjRmVTZT?=
 =?utf-8?B?cktuelFJRkx0NFJaeUJzM2FtaThPS0s0eUEzYTRQK0NhVDFBK29rSUpYNHEx?=
 =?utf-8?B?SGM5Nkw5M2dKQS9hMjFqdE52QVJYOWlsbDB4WkVXaEVaVXRHZVNvSlFOY0ww?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Z2/IRdLDUWAkEPMKSH/uSjgxR6b2nMFwDKJ49aQcDnnecv/v3epFnlOLZpmBiB/tGqY5hvFNyAO/Jb9ejmsIVxqfLHu3e2oj3OSrLf4PSv0dcjCNdSUbHnx3UDMuGMt/GYz2JNDx1OBeV4yuC+rM36khG1fgwEfdAJD6EfZOS5Y3zImxL9DJuLVFPHpPX1Sxup2mzwdnCgF68aeqc0cjEr4/Lc7bQayy6fMxENJjjdE9JqcTDmCU3pRLpUZ/d5d4QfrtY88EdeiiPDHk2wYQpeG1246CymT31LdhSvhFL4qg9kDr4Km7r2Utzzy+y+a2L1/RPoUR5UjUBJMG/zCj5X5KtN8bQtO85rFYQ2le+mnK24D/56ze/GuUo7dGHnUXkK6lEr6YCEIY1Jt4dLuaOPy86dOENSEjZymEIOmuZFOyL5hT9tq+bf+jROsFI3sk0p+SCqAquM65iprcg++lOcgKhUw+ROGPT5OMzLUmL+8RyPtfWLE3WaBGNwEKlEFXoeZEewi22I2LhCXGwkCD5ocAyBKTXN/6QQeIIMr271iPoV3k5+MIrpfO1pVHuNn3zbytSfKMZSCnwsCnwyELTmyHNT86Ty547u0svmqbrIc=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92512efe-75d6-4cd7-6bdc-08dd10834513
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 14:36:54.4439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BcqkSrK9lwESEPQUgN5lvkWnz/Q0GVzZuu/DsTIDkaKVjE/CN8dRsknN8wEloS7ICo3yworYT48P3OPAEpMlq2dmzpq9oj0eADOFvRYzhAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR10MB7965
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-11-29_13,2024-11-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 adultscore=0
 suspectscore=0 mlxscore=0 phishscore=0 spamscore=0 bulkscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2411290119
X-Proofpoint-ORIG-GUID: dvZeeik49UfKNbR75eatbEUAbeMdHdKO
X-Proofpoint-GUID: dvZeeik49UfKNbR75eatbEUAbeMdHdKO

On Fri, Nov 29, 2024 at 01:35:01PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo,
>
> On Fri, Nov 29, 2024 at 09:32:05AM +0000, Lorenzo Stoakes wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
> > operations.
> >
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>
> Thanks for the patch.  Please see some comments below.

Ack will fix up and respin!

>
> Have a lovely day!

You too! Thanks for taking the time to look :)

> Alex
>
> > ---
> >  man/man2/madvise.2 | 81 ++++++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 81 insertions(+)
> >
> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > index 4f2210ee2..e539fefe4 100644
> > --- a/man/man2/madvise.2
> > +++ b/man/man2/madvise.2
> > @@ -676,6 +676,79 @@ or secret memory regions created using
> >  Note that with
> >  .BR MADV_POPULATE_WRITE ,
> >  the process can be killed at any moment when the system runs out of memory.
> > +.TP
> > +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> > +Install a lightweight guard region into the range specified by
> > +.I addr
> > +and
> > +.IR size ,
> > +causing any read or write in the range to result in a fatal
> > +.B SIGSEGV
> > +signal being raised.
> > +.IP
> > +If the region maps memory pages they will be cleared as part of the operation,
> > +though if
> > +.B MADV_GUARD_INSTALL
> > +is applied to regions containing pre-existing lightweight guard regions, they
> > +are left in place.
>
> Please use semantic newlines.  See man-pages(7):
>
> $ MANWIDTH=72 man man-pages | sed -n '/Use semantic newlines/,/^$/p';
>    Use semantic newlines
>        In the source of a manual page, new sentences should be started
>        on new lines, long sentences should  be  split  into  lines  at
>        clause breaks (commas, semicolons, colons, and so on), and long
>        clauses should be split at phrase boundaries.  This convention,
>        sometimes  known as "semantic newlines", makes it easier to see
>        the effect of patches, which often operate at the level of  in‐
>        dividual sentences, clauses, or phrases.
>
>
> > +.IP
> > +This operation is only supported for writable anonymous private mappings which
> > +have not been mlock'd. An
> > +.B EINVAL
> > +error is returned if it is attempted on any other kind of mapping.
> > +.IP
> > +This operation is more efficient than mapping a new region of memory
> > +.BR PROT_NONE ,
> > +as it does not require the establishment of new mappings, instead regions of an
> > +existing mapping simply have their page tables manipulated to establish the
> > +desired behavior. No additional memory is used.
> > +.IP
> > +Lightweight guard regions remain on fork (except for any parts which have had
> > +.B MADV_WIPEONFORK
> > +applied to them), and are not removed by
> > +.BR MADV_DONTNEED ,
> > +.BR MADV_FREE ,
> > +.BR MADV_PAGEOUT ,
> > +or
> > +.BR MADV_COLD .
> > +.IP
> > +Attempting to
> > +.B mlock()
> > +lightweight guard regions will fail, as will
> > +.B MADV_POPULATE_READ
> > +or
> > +.BR MADV_POPULATE_WRITE .
> > +.IP
> > +If the mapping has its attributes changed, or is split or partially unmapped,
> > +any existing guard regions remain in place (except if any are unmapped).
> > +.IP
> > +If a mapping is moved using
> > +.BR mremap() ,
>
> The "()" should not be bold.  They should go with the ','.
>
> > +lightweight guard regions are moved with it.
> > +.IP
> > +Lightweight guard regions are removed when unmapped, on process teardown, or
> > +when the
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
> > +(including mlock'd mappings). The operation is, however, only valid for writable
> > +anonymous private mappings, returning an
> > +.B EINVAL
> > +error otherwise.
> > +.IP
> > +When lightweight guard regions are removed, they act as empty regions of the
> > +containing mapping. Since only writable anonymous private mappings are
> > +supported, they therefore become zero-fill-on-demand pages.
> > +.IP
> > +If any transparent huge pages are encountered in the operation, they are left in
> > +place.
> >  .SH RETURN VALUE
> >  On success,
> >  .BR madvise ()
> > @@ -787,6 +860,14 @@ or
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
> >
>
> --
> <https://www.alejandro-colomar.es/>

