Return-Path: <linux-man+bounces-5264-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGvLEZYQuGmIYgEAu9opvQ
	(envelope-from <linux-man+bounces-5264-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 15:15:50 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C238B29B26D
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 15:15:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 18BCC3113C94
	for <lists+linux-man@lfdr.de>; Mon, 16 Mar 2026 14:08:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDABE39B4A2;
	Mon, 16 Mar 2026 14:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=live.com header.i=@live.com header.b="NB1cJ6KU"
X-Original-To: linux-man@vger.kernel.org
Received: from OS0P286CU011.outbound.protection.outlook.com (mail-japanwestazolkn19010022.outbound.protection.outlook.com [52.103.66.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480696FC5
	for <linux-man@vger.kernel.org>; Mon, 16 Mar 2026 14:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.103.66.22
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773670079; cv=fail; b=XjyFUcaLV5ZzeZd3C0x/u60r+iSK7vtOGamhFoFSjs6OxHWwt0Hek4yz0kYZUPhcZSofCr8bLee6oM2tO1PrgibyzADBce+t2gfdQl5/fPclCyKHhV4aoirzkSImxLysjs9+dTEtlMDT+YWFEfabKkgyYVX9gI8e1dyuu7eeACE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773670079; c=relaxed/simple;
	bh=7PQr1HN1OQoI4PwccIVX/1g6s2v7f/h0+4OZHtEKZRA=;
	h=Message-ID:Date:To:Cc:From:Subject:Content-Type:MIME-Version; b=Bngz6iJPt97EwcdXuSmbjmWItIgV8ljwZyFFIcDAXyv9O+59F4FPynnPg3Aim67AJNNoOZ0xwJgcftjEZSZzcLwoibgt9yp+FJ7d2Wb65IOq2ilaUGu2CGwcHRSL4SjvlZSjPOv/P3hSoqGKLHdhkAsjUV95AW8iYEf4Z9gUSa8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=live.com; spf=pass smtp.mailfrom=live.com; dkim=pass (2048-bit key) header.d=live.com header.i=@live.com header.b=NB1cJ6KU; arc=fail smtp.client-ip=52.103.66.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=live.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=live.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EjVARmN+Wiv26HU2dzZbw4DVNkZz4I1sYzqGLxNrL5CaAq75w08GgbkxNT0nXdfYf0m5is9skHb1nwcr8d1ZC/FbSbeLCiohT5L+p5zdlQQMssPcqfmsgFLXESf9Aj6Lsu6dY6FRy8LRSlg9HckBRNE5/yvQBpXToBkti8a85mWjEvMfuU6AmR9X6VdQldhNBxjLMWEsI8gRhu10JVnJOxwVUFeQfp/ZuUO0raxiff7FhRDTJlujIU50VPOVGrYB6pPN8uxGhVkP8PaUHVzLzWxixw7xJDHMECmcotIS5quEy+8ArwF4OlxR5n26LpwbHtVv5OyYyGJHJpih/U1GQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/WIL+LSlTC+UMTo4JYObYHSPe4Nj3IoqwZWwVl+3CHo=;
 b=Y/RB1EIb5gA1ge3dvRG7ExWt/lIj4q0Xy94WZiEuncKu4zFsjMEKlBojjTpeq28ucOgd/Gri8aQF5v9ssBwb2ZVNAyHQrbMzL3uaTsRJQjqKHKsNstzhKuE9UqBzWMLeL7nw0f3eG1vQj9XsgxmpATWU9qeJSwpLSJRQl+/0Jj3ctSVjYMwCM5wRoAomI1zZqH8nCT+GLoIDxWS/nCUBFN/FhH+b1a2iMA1NRuh9fbb6i0cpvhmIrBCkGFm+hpcS9NUIAMJWqCDjHZoVTw8mR+nn5vg3X65laroHa+DfVqiBg/8MHN67ghcLwjsMJIpfNcExKUDb2u+eqig9f3gwIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/WIL+LSlTC+UMTo4JYObYHSPe4Nj3IoqwZWwVl+3CHo=;
 b=NB1cJ6KUULDb6QbwEwrWTM/Y0HX/1mohCljBMPXqmW0xagPkiHU9vTFe12m3DKGEICa7qUMsaJ/SwJ4p8WFhNqtWzkUtzsvGyvnByZ3rV1Sfvb3ZHbU7uo/01NcJHzoNGEqBppu3a3My+oK3p1jPiAmEano5GIuMh0gmSLLr1AoihqMBIZs6MrqGmPZDgMBxeQv0CaGc8aS8pGPV/NJU41SNmuN+TmckoVF1H7FGbm4yNZorySh3wR3UMHK5tWWydfh154t1dSj9EZbbYSYVcDb5TOzqBpap5rZcSo9uXRbNHRDa90gs42lt5q7Z+ywsJwDcIgp30rFs19yKTCc79g==
Received: from OSCPR01MB13468.jpnprd01.prod.outlook.com
 (2603:1096:604:333::13) by OSZPR01MB8186.jpnprd01.prod.outlook.com
 (2603:1096:604:1a7::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.21; Mon, 16 Mar
 2026 14:07:48 +0000
Received: from OSCPR01MB13468.jpnprd01.prod.outlook.com
 ([fe80::b096:31ee:f7bb:82bb]) by OSCPR01MB13468.jpnprd01.prod.outlook.com
 ([fe80::b096:31ee:f7bb:82bb%6]) with mapi id 15.20.9700.021; Mon, 16 Mar 2026
 14:07:55 +0000
Message-ID:
 <OSCPR01MB134682A1A80B8C9FB71CBA64DC640A@OSCPR01MB13468.jpnprd01.prod.outlook.com>
Date: Mon, 16 Mar 2026 22:07:52 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
From: Vivian Wang <dramforever@live.com>
Subject: [PATCH] man/man5/proc_pid.5: Clarify which user namespace affects
 permissions
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYCP301CA0082.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:405:7b::20) To OSCPR01MB13468.jpnprd01.prod.outlook.com
 (2603:1096:604:333::13)
X-Microsoft-Original-Message-ID:
 <656eeb7f-1563-479a-9074-2ae002f733dd@live.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSCPR01MB13468:EE_|OSZPR01MB8186:EE_
X-MS-Office365-Filtering-Correlation-Id: 79edddcb-9df8-459f-0378-08de83656b92
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|39105399006|461199028|6090799003|5072599009|5062599005|19110799012|12121999013|8060799015|23021999003|15080799012|1602099012|40105399003|3412199025|4302099013|440099028|10035399007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?a2ZyUHBJUkFHY25UN0hpQktnTEx3Y0gxK2tFVEFSZGRURzlnaGhuTlk4ZzlJ?=
 =?utf-8?B?ZlQzeEdzYzlDamw4cmtaRTdlRE93Qy9oYmxJcGhPWnh6MFl5cDFqMmYxVXV0?=
 =?utf-8?B?YkVqVW9oSVpXc0J4UjIzS0NxZGtFYmdrNFJrM3l1ajNUSHIrQ3hmczJSWGg0?=
 =?utf-8?B?WTNoL3NLcDFUMFJZbW42dk42dmpnSkMzSzF5R3NGeFB3R0x5eG5sTlJsQURx?=
 =?utf-8?B?U3pOMElKcmdsWi9VOC9xRXlaR2hLdlRiejlhSWFUZk52blRTYUo2M2dOQTky?=
 =?utf-8?B?SHc5amQrQjVXWURvMDUzZnl0eWJQeXVFZW9aUE5tTlhaU1NyYmU1ZS8xSjJ3?=
 =?utf-8?B?OWVObnUxL3FvQ3Rlaml6R1h5bmorOW1YbUtvVG4wcjdEWUxrUEhpTHZaQ1U5?=
 =?utf-8?B?SittZWtwVTlua2lMdmxqaDIvMENwbXBBcnRzczF3WHlhNHNjaU0wc0pUNndS?=
 =?utf-8?B?MmNUbmd6TEszTWJyQkt5WHN0eDlJUm1iR0ZhUmtmajZpMGhFR3QvTDk2bVVI?=
 =?utf-8?B?ZE8vdVJxSVJDTFZWZ01ER1Z2dlJYQmlxZk5veGM0NWxWZkw1cnJieU1VVGt5?=
 =?utf-8?B?ejdZa2dGVW4vTDRSWVNIK1pPck5DSVFPVzIrVHBZMkxxSnJxMDFxckU4UnFh?=
 =?utf-8?B?ZnJhVjgvRXZJVHltcHdKSURQdzVlKzJoRi9OY2xLY1doTExpYjNkNVYvY21v?=
 =?utf-8?B?S2JmME9PTE4zU2xzejNQR3hkZ2pYTFYvNndSam96aGJSYmpIeVg4STlpRDdC?=
 =?utf-8?B?Nnc3c1BGdXFGVVZ5RGZrRUlKYXRBTXlwL2dqL3hJaFczVUtEUmZ4bElGYTBl?=
 =?utf-8?B?Q3VTcEdnZkZDQ3NBSzhqVUdBSFY0UGlNakxLb2UvcG83cFJDa0FCbitwM0x4?=
 =?utf-8?B?Q3QwNFRoQW43a1l2NFVRRHQ4WGRYeWI5VW5CSGJaY1BCWXc4aVFva3VwZCs3?=
 =?utf-8?B?dC9yaUxkK2QxMTVPdmFHU0ducDA1S1o5VjU4Tng1KzhSSDVMYVY0OXhTd0J4?=
 =?utf-8?B?ZkNCdWt3WFMzc3hiYno1WGtRUm5BaUUvQWJKTnpFM1RXSkdzT3ptQU9ETGV0?=
 =?utf-8?B?VXJTWGUzSDN5L01ZOWNZSWFDaUhlVUw1S1JrZVZoNTN3TFo3UDN4UXZuYUJJ?=
 =?utf-8?B?NzJINi9IQU1xQUZLRG5xVS9HK2lZTzNoZHIva1FMalRyOTMxWFZDcWdrNVZt?=
 =?utf-8?B?bFNwQkJnbUtQaVJwVHJkaUVQK3grSXcyWm1acUFPeEM0M0c0emJqazJTVHBl?=
 =?utf-8?B?cWNTUDdBUkJJRjJEYm13VEZQTUxSZnhMY1NxY0w5eVRqSUdLTlRUSFZhSVpO?=
 =?utf-8?B?UC9haE9uRlVPTFh6dXJrOFNTbEkvRW5MdHlaY0RKaXNPRlFGNlBrSUtpNXYy?=
 =?utf-8?B?ciszQ1FjUnNHSXY4Z2tWL05kYTFaWVptVStVdnAyVmtKS2tDOGZIRDQvb1JT?=
 =?utf-8?B?V0FXRXQ5UXhiUEE5VDM2bHdhTXpnRTErTVFvUWFlK2RtTEtzZlU2WXcwSm1i?=
 =?utf-8?Q?8fKzsBD69BRShIoQtKTWOP89kKL?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?cVhEU2JoL21MYVZPMUV1b0dtb3NlL2lqWU9KbzRLMXJIYTlSSUx1Q1lQY1BB?=
 =?utf-8?B?enNVd3RBVXZNZCtiUTY4WVgwdzNidzI2cTRXSHhDWWtaRkJMdjZoNVBTMzQ4?=
 =?utf-8?B?NWY3OW45ME5NRC9NR1hwS3FKZ2ZvNkZIeVVaRmYzRU44akQ0ay9OQ0hNOXdz?=
 =?utf-8?B?KzVCS2NDM25wYXVFcXRPUmdCYmFyL1VOQWNjNkI0N3NhUVluQ1F2WVRjYytL?=
 =?utf-8?B?b2pIZ1NBbnBqZVlFcUprdHJ3NEZmM3NySXR0L0puYnR1ZnRVV2VPb3RqZEhW?=
 =?utf-8?B?TXE4QXhwSGsyTnVEaHhuMVY5dThQNXBmSHBaTmRLTWFSdFViWXNya0JMU1Zt?=
 =?utf-8?B?eTF4Y0xnY3FEYUo5d3E3ZHRvVWNvaVIwV0xUVjB6YjdWdDNrd2wzL0EzVmxp?=
 =?utf-8?B?MkgxYWhsMW1ianJxRzRmOU9aaGo4USsrZDVNMlovY2tNM2ZKV3FqVkJONkFq?=
 =?utf-8?B?VlRPcU9NTVVLb2YxTFRnaTdjU0ovc1dBWitiYmxVdGxaRVc1b3dNQXRaV2Uv?=
 =?utf-8?B?cW9JZXI5WU5OaTdYOGc5Y1JYZ3RwUzJxOFpsbEdCUkhJVm0veUJOa01XRnp3?=
 =?utf-8?B?bGQvUGtLMlMvU2xqN2ptUC9uL3VDWVB3Vjk4VmJabFl0L2RMK0JJSnBXSTVz?=
 =?utf-8?B?d0lsOHNwOUMzR25JTXhGd3pWZTVCU0Era3N4UGdrbkp1TzdvUXBueUpiKzRi?=
 =?utf-8?B?WGJyY1FBYUZrSHlpYnRiY2RaMVdqZzhpVmQ3QmVjZW10TXRMejVkUnRTOFFH?=
 =?utf-8?B?UVYzV2IvZzBvdTBGQTZxcWhWL3Jsb3ppbUR0emRaUXkyY3h1RUJvYmRFd1Ry?=
 =?utf-8?B?SFMyS2ZQaFpsbXhyVFpuV1lBdWhYVXRRNWF2Sm5CL3YzLzRlRTJvakMvMDFn?=
 =?utf-8?B?NXF5OTE3Z2tWWktHNDhUMUpuR3hIR0FhUTBoZDVyZ2t1VGowRkozRll5bEZm?=
 =?utf-8?B?T1Blc210SUpvalo3RnFPS0FpbUFDekhJTGR1S3IwMGlReldZL2FxSEZwT1FE?=
 =?utf-8?B?eXkyTEh1ckswbHhjTURqMjVFVjh5a3RtTXlsT29wd1JiYUVBSWZSYXVRekd5?=
 =?utf-8?B?eGFranBvbmVLN2ZwMWREQXR4UmkyRVhmbG9pM1hRbDcxc29FdnJUMGFLRm5U?=
 =?utf-8?B?R3ZEK24xQmZCMG14SW03ajV3QWRobWZleHdqeW90dGcrMFIreWNpRG1Pd04r?=
 =?utf-8?B?TURJOFZYUmZwZ2JoVDR1N2JDTW95Q0FHc2JSSmdLWFNhTTh3dUpvMTBKeG5V?=
 =?utf-8?B?S0hrQzlUMWlVOUQ5YjgrYlRWa0NSc2RwNFQzM2dOY091UVN4WDUvRkZiM0tO?=
 =?utf-8?B?T0MxQm14TVMwUUJTTVVaWG92ajF3MHVlVWwwVnJQeDRUMzY0clpzR2svOXdP?=
 =?utf-8?B?aGhhOG42Yzl6Vlp4WUt0MW9LR0EwekVwVnBpL0VCeW1nODJnWjFJSmRwUkNZ?=
 =?utf-8?B?a2g2cTZ4MmNvUDNaL0tLMVlwRysvNm1PbEd2dEh3RWFLNzdaMkk3OVcraU1r?=
 =?utf-8?B?aUFXY1NoR012VTF1MkpEUjFscktidlhKcHRUcUlDbXZGOHlaSWFTRkowVHh0?=
 =?utf-8?B?cEhJZlV1V3lFU0Y5N2d3T0ZEVkJTTUtGc1lKNDE4Zk9ZQWVaTndxZGlXY0JR?=
 =?utf-8?B?ZllzNlEvTitYdUFxM0lFcjNrc0hZWXlzWnA1S2FrcUpBQ0xRNkw4blRlbHIr?=
 =?utf-8?B?R1E5M2Q5MWlnTE9MQm9wSFRwaW54TDl3YUJOWCs5L1NxUFh2aWpBcjJoZkMr?=
 =?utf-8?B?STdoN0o3NTcvQ0VOWU5wN2xyN3JTaHlhNDgwVVJ4L1g4U2NLVjhQQzNKUnB4?=
 =?utf-8?B?bys1ajE2ZjZ4czQ0bVFNVDQ3UE0rd0ZNVS9PTDlndFp3ZE9GQ3R6d2tsd2pR?=
 =?utf-8?Q?JzYs0VJrsTw2Z?=
X-OriginatorOrg: sct-15-20-9412-3-msonline-outlook-b83fc.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 79edddcb-9df8-459f-0378-08de83656b92
X-MS-Exchange-CrossTenant-AuthSource: OSCPR01MB13468.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 14:07:55.6018
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8186
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[live.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[live.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-5264-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_MUA_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[live.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dramforever@live.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	DKIM_TRACE(0.00)[live.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,live.com:dkim,live.com:email,OSCPR01MB13468.jpnprd01.prod.outlook.com:mid]
X-Rspamd-Queue-Id: C238B29B26D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A more careful reading of fs/proc/base.c (since v4.11, as of v7.0-rc1)
reveals that it is not task->cred->user_ns that is checked, but
task->mm->user_ns, which is set during execve(2) (and copied over in
fork(2) and so on) [1], and is the correct user namespace to check for
ptrace-related purposes. Clarify the relevant text.

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bfedb589252c01fa505ac9f6f2a3d5d68d707ef4

Fixes: ae636827 ("proc.5: Fix description of /proc/PID/* ownership to account for user namespaces")
Signed-off-by: Vivian Wang <dramforever@live.com>
---
 man/man5/proc_pid.5 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man5/proc_pid.5 b/man/man5/proc_pid.5
index eac97fa1d..2fe35bd09 100644
--- a/man/man5/proc_pid.5
+++ b/man/man5/proc_pid.5
@@ -30,7 +30,9 @@ Before Linux 4.11,
 meant the "global" root user ID and group ID
 (i.e., UID 0 and GID 0 in the initial user namespace).
 Since Linux 4.11,
-if the process is in a noninitial user namespace that has a
+if when the last time the process called
+.BR execve (2),
+it was in a noninitial user namespace that has a
 valid mapping for user (group) ID 0 inside the namespace, then
 the user (group) ownership of the files under
 .IR /proc/ pid
-- 
2.53.0



