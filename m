Return-Path: <linux-man+bounces-2877-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFECAB1457
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A01E2523586
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9691290DBC;
	Fri,  9 May 2025 13:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="K7Qw2tx3"
X-Original-To: linux-man@vger.kernel.org
Received: from YT5PR01CU002.outbound.protection.outlook.com (mail-canadacentralazon11021082.outbound.protection.outlook.com [40.107.192.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C5D15E96
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:05:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.192.82
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746795921; cv=fail; b=jyvmU6NXo+9A+ZzubR6qvkuPvbB86cBVORr8NR+T3+KtDaDW2MIPyjdRQfb3+YYU0QkKFuxyekG/CbBIXe4ffo0JbybcDnT8/LKYk/LhZd5xQGCFnqxPrC2mjemeXCtge6xqqchO1oSWhKvjvNJJN1an4iaAhhebY3YPrOBvCMk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746795921; c=relaxed/simple;
	bh=VtCjW0spzC8p3QK7xBfR/+NDfzENVT7jvaHFxIKH1IU=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=OvtFgxyp8VUIEcy6HC/IB+vrRGnBrJkzN0B4lK2F4gwr+RofSBy/rJ3MoSduz4U1Y4BCU0z3+42PVf2xJQ1hGEeIsBSFBl6N5e1hLzaFlx/oJ8A5vzHtnzxx6s7gNWc3Ms+Kb4N0r4EsBFBoBSqMY98P9qZrvu67gb6g9f1uc20=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=K7Qw2tx3; arc=fail smtp.client-ip=40.107.192.82
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=htZoaUXl7wQ5cZGO8YsEayETQqBFwkp8lHj8fUl0WGfqS+GVvFHceyA5l3651he/fpRIoddV8Jpv4nY7eky9kN4jPLaAgH+cgYo/VIoVm6ZbW7kOS4NmS32urKzW2XsOGqG4t5GXT6tKDg+UPwOYwk+I0k2oi3Z+rdz5dkn5lgFA7jRK9E0YriiQs1QeJ1cxf8sdh+iRzSd6F+0FE0kuNwc7D8AJjsJjCeDabvV/Tpn7cLwhqWCCr88eUo+9e8oAagSpiF2RnxGd17nfTwI/0lJXYdPlR4P/sG8Bizjnr/pqq7VXNM6sZdLLoz2YWLKM5NMjdlotndjP2oXn3clgGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCaC2nc6hJmxeHSQQ1M69kUn7NDT93v8kMDaoj96Njc=;
 b=Ulkpl1dTomPsMxDnvnxWdtMjGH4rx6s3fkv5Rr4JPTB4xm22EGf3XAXSlUlVlWCYvDWHOXZbqqmm+FO0HzMKnCQeJcvihtVrnVwi0zi85w4ZB1+2zKkmzCT4R2xu9lhIsIAodz45Q3AIeGCXmfW3Bvrawhj2FAitTzdNHdUy7TEBn05k9GAB06/41afWcFnTKqVodXgnKMJ8nuAWlnhDyMdCqrEJDpNd/D5ipMdpSRxhxqcVlmZy9D6Xg103pS/Zen5xZbpIMZoydR9bICryIBfHVXUhzcEkWUsysWZ5YmGVLa98DUKPQuY+xY07uXzGpMSnPZS0t+ToN4jTXzuunw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=efficios.com; dmarc=pass action=none header.from=efficios.com;
 dkim=pass header.d=efficios.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=efficios.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bCaC2nc6hJmxeHSQQ1M69kUn7NDT93v8kMDaoj96Njc=;
 b=K7Qw2tx321fP9T3jQ5UZUGENmc73SjN/AD8JtA4pV3hWDxWfUPTw0Y/pWW7YPCIfMxti2Nw2kOZKgeGPn/As2du9pIZBzfxRmRgUqJU4BUtcmEh284KkYfQ/UMjYZtL5bDp4Wbn5RkKSP9IzRZ6mdA6lyfs44RgG+MGoc+k05de3iBkEgugT7s5MnQg0DqO0p+C7ZXkv5Z99tIfJrHOj4CbaslDG/vSunlpsEt1D4tfnlnCmO/w3dEp2ps/tfbJ50VLoJbvFoTPIX+FNNtKGbkPuQU/Wpvi902Irog2++iN0Fi/8fY0QdTWO6xrBoysWeV09BO6u8qKQic1/1Rh+Yg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=efficios.com;
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:be::5)
 by YT6PR01MB11170.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:11e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.26; Fri, 9 May
 2025 13:05:12 +0000
Received: from YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::50f1:2e3f:a5dd:5b4]) by YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::50f1:2e3f:a5dd:5b4%4]) with mapi id 15.20.8722.024; Fri, 9 May 2025
 13:05:11 +0000
Message-ID: <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>
Date: Fri, 9 May 2025 09:05:10 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: Removing in-source contribution records contributer
To: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: Carlos O'Donell <carlos@redhat.com>,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
From: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Language: en-US
In-Reply-To: <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: YQBPR0101CA0312.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:6c::17) To YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:be::5)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: YT2PR01MB9175:EE_|YT6PR01MB11170:EE_
X-MS-Office365-Filtering-Correlation-Id: eb4179f8-e122-48ef-c39f-08dd8efa21d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?NkR2Z3lyck1MTjF0cVNleFRSZ0ZxQ0o0RlN6bXVRNk1nQmw2SHFNSU5MWEJl?=
 =?utf-8?B?MzB0NytFSERXRkE3dWw2ZS9COUZsWWdQL1o3RWFHbWs3dlJBWGhqVHd1NDNI?=
 =?utf-8?B?YmdPKzVXR3BYeEZXV0Y2MXNHOXZ0VjVsek9xMnMrUjNleVEvYjNRS3A1QmEv?=
 =?utf-8?B?UEZwTzZLZEtVOGM4cU80eE1ESG5teTh4ZDRKK0VkYjQvZnl3bE1MNTBvV05k?=
 =?utf-8?B?Y0VzN2xacDBWVDFtbkljUFJXZ0p5dnhkRVI0elN1ZElITjZKSEdxbHZFMGph?=
 =?utf-8?B?amhtV0crSlgrRjR5MHoxMTZxNzVucHc4YU0xZTFyczl1MEZyc2VNM1ZJYnVk?=
 =?utf-8?B?dXZ6Z0tyQzFtdFdRSldGVzBTM0pvdzU2SXJuNmNBRUZoQ2NPK21HOGYrRGg0?=
 =?utf-8?B?WFIzdXl0WU9GcjliMjl3UFU1NVdCelBXWlVtZVdtdExvcXhPQ0lYczJxbDl4?=
 =?utf-8?B?ZGFQQTRCczMveDVSMkI3VGxXeVRhN2tPSmlVYUVXMGpVc3VnL1ZYb0l3SUow?=
 =?utf-8?B?K2dwaDVLbWRYVDRkMFk5WFRDTHZiUHRkdm8wVTV0SlAyVUh6a0ZrMkkxMTV2?=
 =?utf-8?B?THV3VXh2RWd5VkdxcHFPS3Rra01DSVcvVTR4R2paMnMrZGU4cHFrQUpWR2xN?=
 =?utf-8?B?SnpiVkxaaVVrNlNSNEpDa2U4T09FMkovaE45cm9WcXVTem1XVk94cHkxYURK?=
 =?utf-8?B?dVJ4RnROY2VmbUg2WVhuKzFwQ3owMC9TVmp4YUpVVU42YlpaYlR3aDc1N3lN?=
 =?utf-8?B?VWt4RXVBTFNOWUpiZlFmNUpEcGNuNmVaUCsvZmhDNUtzZ29tN3Y4eDQya3NU?=
 =?utf-8?B?V01LakRWakdpUG5yeVdsalJaczZzaDhjdytZblRFbmg0MitaTmVoQ2drWGxy?=
 =?utf-8?B?WnlBUmM2ckFMOGpFaGh6Z2Q2djlLdHNMZ1d4UjkzYjdUVThkWlgrT25WeC9l?=
 =?utf-8?B?NnFKOUJvU0JYdStQWlBvZzdKM0hyQXpaS0srQVFZbXhBdWp1KzlDcFpkZ0gx?=
 =?utf-8?B?V25RVzlVdTY5TFVDaExXVXFrVnM5aGNqQWhCVEQ1YUhnQndzR1VBM3ZsNGJy?=
 =?utf-8?B?T253RXJHZnhZRWs1WGxXd3I3cWVoOU1DQzE4TXM2Y2w3OEN2KzFBWkxmZXkz?=
 =?utf-8?B?WUR5M21lQ0JPczlmTzlFNW95Q2U5OEJNbXA5Zno5U0R4R2I5a0tuNEZMSnZx?=
 =?utf-8?B?M1VSS0xkVDZlWFAvWEtQekNFSTQxalNBdjU2cmRPKzlic21RZXNyTVJwM1lx?=
 =?utf-8?B?anR1RCtPa2lQZjRoeFJRNE1aTU5SSXhVTWxka1dMNllTYVhZaDlORHdlem1Y?=
 =?utf-8?B?R3pES2NaZTR5bS9EWkorQWMzSjBRanV0NTZ0bXA3WWVyVGV2dE5nQi95cjVQ?=
 =?utf-8?B?RjBWVjFrc1dBd0lwYUdEZ1JwbzlkaUpJVm5HMmNsUXlJazZtaHUrOExmTlUw?=
 =?utf-8?B?RTgvNjZqa2dTakJCYXFhLzc1WTROK05FSTdvNi81THk0SDAwdWtma01NcmNt?=
 =?utf-8?B?c3JjTGhmamh1S2tRMVNqbjdkUE5vRVhEcEs1WDZCUzdYeUxnVXB3RHNrcGlJ?=
 =?utf-8?B?WFdsNzczOTA2OTBpTExMcE9vR0hkWUN3QUxwMzFpemg3enRmTjZtOWk3WE54?=
 =?utf-8?B?Rk1mWXE0N2wrMWxwOW5WQnU4MlV4QUUrd1RYRytWZ3NsTXdPLzlZRTJ1RHFi?=
 =?utf-8?B?Q2RMRzlwdTkzUmt4MVFqeXA4dEJiNFpiZTdXdytXT1J0ZXRkL2x1WU1HUlNV?=
 =?utf-8?B?Ujhjb3ozSVIyOWFQcGpjQ3NDc3BHTWVCdmZELzl5WnVnNVBPZWxVclNFVzNr?=
 =?utf-8?Q?Pso2WctfkmjTz2okeJjv+qfeXmszkIoJy1vO8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(10070799003)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?SHIzU21BdmNBbThpTnppd0xEc1BsKzBmNHBzTlhwQ0IrZVJwL0ZMTU1aUmYx?=
 =?utf-8?B?VnJoMXFyUFJRSFlpZ3Aybko5REsyQURXd2d4L0RVMW41WnBTMFRDRElxa2FE?=
 =?utf-8?B?WUpybnVGNEhxWjh3L2psSVJzUDEwNnFROW5BS2hIY2F1OFJTUVRDSU1GUjdn?=
 =?utf-8?B?VHJydU9YajRrR3VjS1R5Ri9leEY3VGpLRFNObE1NSk4xcXQ3b01WYko0MlFa?=
 =?utf-8?B?TzR0K1BSWm0vcEdEaU9FNUdJeU1pZWxkWFJNcXFkL1QvZFA3QXZTdmZVVlU3?=
 =?utf-8?B?ZFdJZVovMnpEZUZrek5wczFWbEcvWmxRQzErTVdKbWdzRjJiTDMxVTdlUDJk?=
 =?utf-8?B?UjJQUnJ4cnpGOGVDTXJIQmQyR3V2T1hORERCNU9qUnpabWpNWGhrSGlLRVFW?=
 =?utf-8?B?REVmd2UzRzRhQ1RXbXNZeUFkckF1cXJDanBUNUpHRzBCT0lOTU9wM1N3dnQ2?=
 =?utf-8?B?MHgrYmhrRWFHb2g1Y0FkQzMwSFYvTWFqOGtxQ2ZWZWx1SjNIaUNHNVBYYTJh?=
 =?utf-8?B?TEZETDU2SFltNUpTYlVSVU85S1ZHYjJVOFAzb0Q3YmpnWU9wK0dKekNZMGQy?=
 =?utf-8?B?enluSVRqWDBQSWJDeDA3RXZESnhaQjg5bkFwRm5KazRUc1hsNVpvWHVaeExW?=
 =?utf-8?B?YWtuMFlZRDQ5Y2krZkFPbGdWWEJNM3E0S2hmQWJCSFdnbDgySHRldjNRcHpY?=
 =?utf-8?B?SFdxWFI2a0RZdHhJZTlWVEkzNDE5Lyt0SW4yc2ZtUW9Edzd3ZG9lWEUzRmhr?=
 =?utf-8?B?WHlpWnpBd2lmeXV6bmZFeFBnUkNKVmd4Z3pzWHlubUtwcnhHSzFWOUladE5K?=
 =?utf-8?B?ZUJnU0pVS1kyUUF0emdLVXpkQVJFcDVSTWNvTXFGVlJucUhxOGRRMUI4T2Ux?=
 =?utf-8?B?UDUzNkUyTGJXb21JVVN4V0RIZk5zUzA3THUxbkcvcDRuMUJiMXFpaWRZcEMr?=
 =?utf-8?B?QUgxS3ErdkpObERvT2szaDVXT1hWelFlS1JCUjhQa1JWY2Fod2FCd0FhUzFL?=
 =?utf-8?B?aFdaWHdKRnR5akhUVlEvUkU1NjZOOEx1dDBSZkpNN255K3lQa0Q2a3dPbGpG?=
 =?utf-8?B?WGZ2eVRHbGxrRVc2VXRyWVZwL2FlSDg4YWQ0aFNIaDZkajZNU2NtSk8reC9Z?=
 =?utf-8?B?MFBFYys1WWdmSGpSRDR1dUN0MVpXaDZQSHR3YzA2VENVM0RHQTREZTBLeXpX?=
 =?utf-8?B?YXAydEhUL2s4MFFOYzJka1NOSnlldlFTRUFPRDYvOTFKMUI0UXovU3lIL25E?=
 =?utf-8?B?M0dQQm81WVlKNlphNTZTdDZEV1d5aVB0UU1PdzFyOStkeGxlSktRRFducyti?=
 =?utf-8?B?M1d6Tyt1NmRxTGlRTmNOclZMZ2JMTjFJVDArc2pjVzhGcXh5dWJwT3hYTGZt?=
 =?utf-8?B?R1RvWnRkLzIyWjVBL3VBSWQrbzlFaktMQW91ZUZBM3I1a05BQlVpbjQyTGt1?=
 =?utf-8?B?NU5JRkxLdDQ2MnhpZDRLTE5HUWIyekt1RW9ZeGNZTmsraWFjc2xlWW5pdDNj?=
 =?utf-8?B?emJvbTcyYjgzajBVVzBBbyt2aVRiUUZoVGd3SHVoY3luSFFNUllrNUx5MVpL?=
 =?utf-8?B?czZ6MkJUQllVYlhQdnF3RUtaTzVtZ29MODFybmpmUCt0T3d4OXJBRFhud3dv?=
 =?utf-8?B?Q0s1MnViZndzMUJuNUJBOExyUWlZcE1mbS82RGNoaFNWV1JGT1dlZU9LQ1E3?=
 =?utf-8?B?U3lsYktWaFBYVmluZ3o1ZE9GWElEdCtNQnVBK1psZnR6UmdxbFN3MUtaTFBJ?=
 =?utf-8?B?RTFHdW9aM29vWEMxVUxjSVpxbmhtY1o4MGRIcDByWCtLTEovZGI2OFluckRs?=
 =?utf-8?B?NWhLUkVMQjJ1bUlPaTNJRG9mczBlYlowckJwR0cvUVk1c0pTeW9KU09IWWZz?=
 =?utf-8?B?djd0angySWFTeFZldEErbUd6TFdDMk1lRlFONWN0dGN0c01NU0ZLUTJlTXZM?=
 =?utf-8?B?VXBVbzNMNThzOUQ5M0E2Q0dPTmhZaCthdGpzWEdrcDBJNDIyeld1eFFTdDBn?=
 =?utf-8?B?K0J6V3I3TW0wNDBmYUtiVnM5YU9qMDhLcEFHV0xUbWFpcWpoSFNRZ1lkMkVH?=
 =?utf-8?B?dTFmMDU0T1M3SmorL1oyRCtuZHBsWFd3TVNIakdRdnBmYWd4ZG1aeVNiVEg5?=
 =?utf-8?B?NSs0cURXcmVtMDUvSS90TGN5SVdxdlBTOStSdzU0bGpkTUJ5RloxUEhyVHZK?=
 =?utf-8?B?dEY1YmFVSnNDOUJMK1ZWVnZ2ajdmVXpzQzUzMGc0cittcGR3TnRQWm1DQkZY?=
 =?utf-8?Q?vqIH+tVUTU3k9q27VUHqm5LNSH8hp4XrTAAg1Rm8/g=3D?=
X-OriginatorOrg: efficios.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb4179f8-e122-48ef-c39f-08dd8efa21d8
X-MS-Exchange-CrossTenant-AuthSource: YT2PR01MB9175.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 13:05:11.8928
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4f278736-4ab6-415c-957e-1f55336bd31e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +UpJQ+gyzowYQLNPv/MHPovLP0hvMlc9gb3sAaYFUFA88cBfSOtESv1LhIjZUm9QRF9UkFGwPS+iFWxj+CfBw2oLDMHI4cOqSKu6dac9z50=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT6PR01MB11170

On 2025-05-09 08:54, Alejandro Colomar wrote:
> Hi all,
> 
> I've added to BCC everyone whose copyright notices have been removed
> (those that noted an email).  The full thread for this discussion can be
> found here:
> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
> 
> Please let me know if it's okay to you to transform your copyright
> notices to make them uniform?  That is, do you approve
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
> in what affects you?

I was not sure if I should reply to all (including the mailing list).
Please clarify for others.

This change is OK as far as I am concerned. I'm always happy to
help lessen the maintenance burden. Eliminating redundant,
copyright information appears to be a good way to it.

The git history holds detailed information about the
line-by-line modifications to each file anyway.

Thanks,

Mathieu

> 
> I've generated the BCC with
> 
> 	$ git show 9f2986c34166085225bb5606ebfd4952054e1657 -- man \
> 	| grep '^-[^-]' \
> 	| grep @ \
> 	| grep -o '[^     ]*@[^ ]*' \
> 	| sed 's/,//g' \
> 	| sed 's/\.$//' \
> 	| sed 's/.*(//' \
> 	| sed 's/<//' \
> 	| sed 's/>//' \
> 	| sed 's/\.)//' \
> 	| sed 's/)//' \
> 	| sort \
> 	| uniq \
> 	| sed 's/^/Bcc: /';
> 
> 
> Have a lovely day!
> Alex
> 
> On Tue, Apr 08, 2025 at 11:28:29PM +0200, Alejandro Colomar wrote:
>> Hi Carlos,
>>
>> On Tue, Apr 08, 2025 at 04:18:35PM -0400, Carlos O'Donell wrote:
>>> On 4/8/25 8:42 AM, G. Branden Robinson wrote:
>>>> Hi Alex,
>>>>
>>>> At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
>>>>> On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
>>>>>> On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
>>>>>>> If you do this, I suggest you replace these lines with something
>>>>>>> like:
>>>>>>>
>>>>>>> .\" See the Git revision history at
>>>>>>> .\"   $URL
>>>>>>> .\" for records of changes and contributors to this file.
>>>>>>
>>>>>> Good idea.
>>>>>
>>>>> I'm thinking I won't do that.  I don't want to add that overhead to
>>>>> each page.  People interested in the history of a page will already
>>>>> have a look at the git history, and there they'll find the old states
>>>>> of a page, in which they'll find this information.
>>>>>
>>>>> And it would require some non-trivial work to add this note
>>>>> consistently.  I'll go with a removal without replacement, I think.
>>>>
>>>> Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
>>>> remember my reasoning from February, but my suggestion may have been at
>>>> attempt to find a "conservative" alteration to file content or the
>>>> expressed meaning of the comments.
>>>>
>>>> But, what's conservative in one dimension often is not in another, such
>>>> as "labor required".
>>>>
>>>> I also agree that while Git is a complex suite of tools, "git log" is
>>>> not among its deeper magicks.  At least not when run without arguments.
>>>
>>> We did something similar in glibc and created a CONTRIBUTED-BY file at the
>>> top-level and moved all contribution lines out of the respective
>>> files into the top-level file.
>>
>> Yep, a CREDITS file would be interesting.  I wouldn't keep info about
>> which specific files were written by each contributor.  That seems
>> something more appripriate for git-log(1).  The pre-git contributions
>> will be visible in old versions of the pages (i.e., if one sees
>> Jane Random Developer in CREDITS and wonders which pages she contributed
>> to, they can `git log -S 'Jane Random Developer'` and similar commands
>> to find out.
>>
>> Thanks!
>>
>>
>> Have a lovely night!
>> Alex
>>
>>>
>>> e.g.
>>> ~~~
>>> The glibc project stopped adding "Contributed by" lines to source files in 2012
>>> in favour of acknowledging contributors in the glibc manual and through the git
>>> log.  The record of existing "Contributed by" lines have now been moved to this
>>> file to acknowledge contributions by these developers to glibc.
>>>
>>> argp/argp-test.c:
>>>      Written by Miles Bader <miles@gnu.ai.mit.edu>.
>>>
>>> argp/tst-argp1.c:
>>>      Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
>>> ...
>>> ~~~
>>> The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.
>>>
>>> Sme of the authors predated the use of git and so it was simpler to keep the
>>> lines somewhere as part of the transition away from "Contributed by"-style
>>> lines.
>>>
>>> -- 
>>> Cheers,
>>> Carlos.
>>>
>>>
>>
>> -- 
>> <https://www.alejandro-colomar.es/>
> 
> 
> 


-- 
Mathieu Desnoyers
EfficiOS Inc.
https://www.efficios.com

