Return-Path: <linux-man+bounces-4695-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 414B6CF923D
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 16:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2268A301DEBD
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 15:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61038346770;
	Tue,  6 Jan 2026 15:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=um.es header.i=@um.es header.b="up5LvrIK"
X-Original-To: linux-man@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11021074.outbound.protection.outlook.com [52.101.65.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C84345CDA
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 15:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.74
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714277; cv=fail; b=c2xEBwCnNdOvfGn3LjY4XB277Zu/be1DEInJR2ryw/RbW46wStFmYEod9l6EcqFis5gILdENh4oOxB6iJSR3B1SMurh2JuZiv0Rdw/IhxB7c439RcYaCuE2huCI4OMGnaGnkTnznbD59rKUKUZKNqDI81Sefg6/ft1S+K4JmV5w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714277; c=relaxed/simple;
	bh=SdN8YlpgYJnf5ffohpVH3IfPlvNcOejznM76Xmfd7Fg=;
	h=Message-ID:Date:To:From:Subject:Content-Type:MIME-Version; b=KEeSaZg6z9/azIgYLS1fLx9ncXv9VaU92mVoMgpTzFGbmU0jR4MdJcBBWUlFA7FTzzOBYlnbqksENOV09xxdCFKP4ZwV3HFbch3AeE/u4+uY8TqUwq6Zbr2lBNKp8h0xjNdGjJN+ZiMaFU2XmvxNNb7dcolVHICtRrrc1ViyiZg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=um.es; spf=pass smtp.mailfrom=um.es; dkim=pass (2048-bit key) header.d=um.es header.i=@um.es header.b=up5LvrIK; arc=fail smtp.client-ip=52.101.65.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=um.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=um.es
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PIOt1cBM00Or6dGcvqN/YiJu4yzy9EcLu3uVD6spq3+l83YuVO8wYgxaoCCi7mJcI6lkWgWNLiVmhcpoF6EOC8GSJ1atCbd/5/m0Y0Xneh7khVRA/b8DdQCm7x5ViNUQ6LHSd5wOu0xCtF/dToLT+zpQcvZXiFEiZMY+sKVs7VULQCrt84AbDXdm7KRub40w3j30lQONG3ePuK5FwFpBCYAx0r4+CwbbBg8qvR8SvLh/4WKsywUEpkmwhmq3v7VqAQeV+Ue2kl7/7WtVtjYV5J19kxCgIQxBq3D0BWbvqGCPl0jUNszRGoN2DDf628HG6TDk/fbApwbkKD88xOBB5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SuDHobWYARAjeboJzVoRZ7hj+s3Jl1h43sepUzyxkWg=;
 b=GID20NCPWZe7+Bb7oAGUxclz3VOx0XGt15cWODWGgKkqbIxmhOVQhoqby0uzQIhqNf6d+ZpsFtTfLPvxvBbR+m5hhhN2opCRtT/UN5mQANGI+T4Ndj12Q0CpATn8N+2y6VSzRkhS0fRmkpQCJ5SaySgSTiIr8YMc5GbGlwKLxi9M3PfUY5KZDYl3plrkC/85h07QjFCzLdoPY0CmtYlucZ64GX9DZCcs6YrueY+rYxzapktZuGeuuLQvTC8cmjEBvj+TWS8DhOoVUFBz0J6CJ/UDgAxRYWJMl4zXIYCnPpMJCQxOdLCFIJWt5GPCeafa9O8J3F89310IVF3zLMMDvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=um.es; dmarc=pass action=none header.from=um.es; dkim=pass
 header.d=um.es; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=um.es; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SuDHobWYARAjeboJzVoRZ7hj+s3Jl1h43sepUzyxkWg=;
 b=up5LvrIKy/E+hg0MdfNyVAhONbEj1nKFcC6AgxETNuZCnVOspNar50i4LZOHufnAxffe4XtC2WQYKvdLNi8vrETeyNKT50M37l7TJe3i9tdf5enUId6PyMDW5j+aoBulIF6r7viZzzxpW23cPzzAiq6CmgT1vYgKARg4FmUNE/vG37nPac+2hhmoniAkxdSL7SB1BqkN0pjdpKuwh+z797NExtlmwfr4qMLYh2jYeM/ZXVmjkiG3GSHDGN1laTJwVobG5JS1qGdB4oX5sqslLIDrgUoMwMDrQ7qCVi1EXThbxXxmdz8O/uCyhszvhzEWqpG4QYm3Cc48n+wztRaoRQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=um.es;
Received: from AS2PR08MB8669.eurprd08.prod.outlook.com (2603:10a6:20b:55c::13)
 by PA6PR08MB10767.eurprd08.prod.outlook.com (2603:10a6:102:3d1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 15:44:21 +0000
Received: from AS2PR08MB8669.eurprd08.prod.outlook.com
 ([fe80::3bef:6697:abee:acf4]) by AS2PR08MB8669.eurprd08.prod.outlook.com
 ([fe80::3bef:6697:abee:acf4%3]) with mapi id 15.20.9478.005; Tue, 6 Jan 2026
 15:44:21 +0000
Message-ID: <4204a137-3e59-46cb-8652-447ca66343c0@um.es>
Date: Tue, 6 Jan 2026 16:44:18 +0100
User-Agent: Mozilla Thunderbird
To: linux-man@vger.kernel.org
Content-Language: en-US, es-ES
From: Angel Ruiz Fernandez <a.ruizfernandez@um.es>
Subject: EADDRNOTAVAIL in sendto(3p)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PAZP264CA0124.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1ef::21) To AS2PR08MB8669.eurprd08.prod.outlook.com
 (2603:10a6:20b:55c::13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS2PR08MB8669:EE_|PA6PR08MB10767:EE_
X-MS-Office365-Filtering-Correlation-Id: fdc9e02b-c3eb-4370-5938-08de4d3a7596
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|366016|376014|786006|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?TVI3MFRGVlhmQ2RJdytCbUNrMllWQ2hUcDdvc0o0OTNZbUlrbFpHSW14a0xC?=
 =?utf-8?B?dHEzVG1SOFF2TytHM1FuajNVUjk0TjNzSUJSdElqUm1jOG8rVFFBc2RMaUR1?=
 =?utf-8?B?ZUg0Q0d6ZGNBa0JkTlNGV1FNSzIxWUh5V0E1VERPSGlVZkVSdFJkdlh5SUdJ?=
 =?utf-8?B?Rjgwenk4S3FmM2FlRkVGYWN0cFJQcXk5K2dGbnlFWDNwYnlMa09ZQUl2RkdV?=
 =?utf-8?B?cEMyRDI4VlpacktpUmVSOUxxajFXTEFVNjgyem5rRytFczFpZThmY2FNMzVr?=
 =?utf-8?B?ZHhEbUpZYk1yZjZNeUxtZW5Fcnh2UTA2SGE3MmRoQnNYbkhOd0wvZ2hOSW9l?=
 =?utf-8?B?S0J0NWhpUCtSVklPcFhJNmpwRmNFaUZ0eHpJa1h4WXY2Y2Q5N0lDcFhYTmFK?=
 =?utf-8?B?MUZJblZwNlZpNmZFT3NCV1dOMTBLWWwrKzA0Q3NWbENyT1RZTzdWeDV6MUlv?=
 =?utf-8?B?Sjl4Z1NwSmNpWmlKc05IQ0wwNEFUeVRRVzFFaGJKdm1DZzBrVFpUckFySEla?=
 =?utf-8?B?Mis2Si8zL0kyc0V3aTIyMFB5dnhvbEVKVm1zaWtUblF6eGc0RFpSeXBCSk9z?=
 =?utf-8?B?OVZvTloxcGZzUnFHYmNxNDN0S0JaT3R4QTV2WTVRMHV4dk9FOUgrcWZTTGk4?=
 =?utf-8?B?S1Q0ODZaY0FqMXRGQTg0V1Z4cjFCeVZrT3FZZnc5M1hrWFo5Zk5EcFpVbWZF?=
 =?utf-8?B?RUM0ZHg5eitqQkZFdWFCZmYwbkNOcS96YjVaOU9xYlBWejhsS1craXR0TjNX?=
 =?utf-8?B?K1Q5cTNTbWtoVlVJRE1uc1VBK0FtRVhGUEszaDRjNVJoekIyLzRlcDBuS0Zp?=
 =?utf-8?B?UHFlb0lhQWN0RU1NSlRVazkvdndhcDNzRFB1YkJKWi9MQ093eGlEYk5FNjRS?=
 =?utf-8?B?NGdvdEl4ajNqUDdsUXlMUkdmeURSb3lsRjRxc0JPU3BxR1poL1pONG80YWsw?=
 =?utf-8?B?b0ZuQ3p5eWFCYnRPdDZLa0d1c1RjaFUyNHAzUzlvRS95Q2NIT2dyVlRLckRn?=
 =?utf-8?B?cXR4OTdaVkU0R0doNEdyaG1ZK3ZGSm9INjNoNG1xZUMrMmtzRWM1Si84cTg3?=
 =?utf-8?B?V3FkTTB5OXFIdENVOHU2Slo1OGxyeVJZSXRDVlREWE5xWVdSMjdybGJYc0pZ?=
 =?utf-8?B?WUNWZ1pzR3phY2U5UVR1c2MzRDZqMHp5THJaVThRS2NMRkZJTmFnbE94aDhQ?=
 =?utf-8?B?RmZYMlM1UlpXdDJTR3AxUEtURUVuY0hmYWFkYmFBNUEzUGZma29yNTNDT2E1?=
 =?utf-8?B?WlJUcWhBOEhDN0Q1eUhlTWc3M0FnSFBqdUdDWGNVVWo5Q1dBcHBVNVNZWTFK?=
 =?utf-8?B?dmVkM05GZVg3a3pNRTZyTWJIb1RHR2dsZjBvOG4vNkx1QmpyUmJzeUNwcEIx?=
 =?utf-8?B?S0tQRkY4SzdCOGt2TlIyakNEeU1Cb0ZKak9SNlBBWGlFRVhHUS9YSytPVk9J?=
 =?utf-8?B?dUVMcERaekY2bE1VRXR3QkQzTFBHOENHaE5iQmpJQ2hqT3VKcXNHSTB2Z2ov?=
 =?utf-8?B?Mmp1d0lvTldLdjYyVGwyMTc4cGR4bmcvY1ovQmtaaUFBQ1RYdXBTVWdSRmZE?=
 =?utf-8?B?MmhCc3J2K0h0THFtZVlxRTRTL3pWdlBBV2hHZ3UxNXRVcXpnSGlFNDFmMkFn?=
 =?utf-8?B?NTV3Slc0ci9ZNmt3Rmp5azBkZlNFeGZVSjBDRXUwbFBYbENkT1QxRFJKQzBn?=
 =?utf-8?B?YlVFZWRXM0QyUEdEWm10SS84M0JQUkhYemgxVkNSdzJCQjRjTDhpVnU2d3Uv?=
 =?utf-8?B?bUVtVjFCNmJUUEFJcjM5bFpPM0VMdkFxNlpmcTVoVlUrSSt3Q0U5NE9kY2RN?=
 =?utf-8?B?RG1hamk3emJLYUdJcnBDUU4ybU9pdE5iYUhMa20walN2L0ZGS3NOVVFFUndH?=
 =?utf-8?B?bkJKQlhJd1BrMnZMNWZndTZiWFRsbnRsa0IrZXR3YzdNU2RSZCtQek1KUytp?=
 =?utf-8?Q?NZcLPx/RjFK+d0WNSbfFUIqFCovWUAVQ?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS2PR08MB8669.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(366016)(376014)(786006)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T1NFbTRNbmNyd2pjUjA1THVJdnJ4aXRDSG82RGNrdHZ6WWNCellEOVJpcWRp?=
 =?utf-8?B?VldUcGp6Y1V4bWh0ZnF4aWRPT0VKRFVIMVR0UWJMQVc2N1dwaXpGNkdLang3?=
 =?utf-8?B?N2h2SUlQUXExK3cyU01ONmhhTVRjL1UzRjlxYnpVa0RnSXlFK0MzYWpwU1R5?=
 =?utf-8?B?djNpWTI5d1pNR2tWeEVPRU5hMXpHNGtzcVl4bFY3bUJTcUd0bTJzTVRScDZC?=
 =?utf-8?B?VVltU0tIaFN3Y0hicndGOEdUK0l3S01jaFdhVHJtVjlOOXFlRG9NeFVrY3p3?=
 =?utf-8?B?dEw4YTlFbXpjdXlYaHFJM2YxeTZkUUhDTHJwWWdDZVJGQit2TDZoTW1MWHZ0?=
 =?utf-8?B?YVNyaDU1TW5KZzJKdUpYdmJkbEVucldXM2pUTE1taEFmeUJzKzhTT0RJSWdF?=
 =?utf-8?B?aXlhVmtsdHNTdHZTWGFUNGVYRGhKUy82cU9PYmtseUkraVRUVmlVZTdCK0xk?=
 =?utf-8?B?UFJLTVVXeE1DSitZTFVQTWRlWTU0bGZWQ2JyR2d2bzFBOE9mbGpWZjNMcHNT?=
 =?utf-8?B?U2Jpenk2MmQ4RDFtQjM5MFM4ZE9KS1l3a2tidDBSVDJUcU92cFMxVXN5MWho?=
 =?utf-8?B?ZlhFTS9zdGlHOExmMkNIekpTY1p2eUR3NWJBTUNTNjRIU0V6YnJ6Mlkwb0dX?=
 =?utf-8?B?UkpadnEyUGpENmg5cWdMMlpFY3JTU2NaVW5td0R0d0psR0JuYTJXanlZRHRC?=
 =?utf-8?B?QWo3WnNpUGtGWkRNWk43T2xhQVNCMlY0RXc5eUNQT1h0SmdQZE5UOFRNT3pE?=
 =?utf-8?B?TGdRam1oajVFWG5Hb3pRUmdMVmF4b3ZXTmU0aGtlYU4xS2graFRGZGZOU3VH?=
 =?utf-8?B?UVpvQXVxRW0wMjFBbGFRZUNpbDRNTHY4WFYyQU5jS2xHdWxGcmNqWDQzclNH?=
 =?utf-8?B?NlVrUTk2ZnVvNVk1Vk50MnRsMGsyem5CYWIxUGU2Mi9wV2hjc1hGZ2JiUm45?=
 =?utf-8?B?dDZna3BTcHI5RzhIR00wbDJRd1pXR1VZS0VFQXp5SmVJcnJVRG1RQTJIMVNM?=
 =?utf-8?B?bElYY1RsQzNyVjZQRzFWZUl2R29KTmJJelZGM2hIUDgvQzVFRmVsSmxlOVJ6?=
 =?utf-8?B?R2h2V21PUWhNMjF0NVVLVGJNRWpXSEp2V3NSM0pCYXBqcFd0TXhBbUo4ejZn?=
 =?utf-8?B?RVFrY1FPSHprdEMrKzFzRWFSMWs2SDI5QmRZQndDVkIrRDduS2FpaTlFOGc1?=
 =?utf-8?B?MVF3U2UzM2pBaTUyVjh1Vks2aWMvQTZmS0hhVndHUlZPbVMzWXZJbWN0WmpT?=
 =?utf-8?B?dTEyRi8rdkVFM1RWTHRlUzI1L2ltcTZYcWlZYUFZdnBVQ2dnNVY4dGc2REtj?=
 =?utf-8?B?eCtrU0o5cDllL2Z4UkFMMTR0WGgyeGVadVlyUmI3M0tzc0c3dEVoU3ozRDRa?=
 =?utf-8?B?bVNtR0VyZWtjMldWUHNXYnhjS0dSa0xQbTVsU1BYK2gwUm41dlZsVFpUbUJr?=
 =?utf-8?B?MjE1Vzh0NVZiOVhZTVJHd2tyQklkT3J4dmc2U29yZm1DY2JDS2QxWWkxdDMz?=
 =?utf-8?B?b1lXTlRPZWJZZGh5Tml2L3FJaFRlblRPSUZwdkFNMjg4Q0VxcHAyalZ6N212?=
 =?utf-8?B?b2NGa3psZW9PZFJ6eGt2TU5rSkJvakpLb1A4LzQ5WitlYlBYTHR5eHMxZHBV?=
 =?utf-8?B?QW5CNnF2dnZoTXRxRGxLTzlHVjBncGFqSFVMSm52ZFR6UnNrZ0pXN25hZEda?=
 =?utf-8?B?Tm1PNWtHOUQ1Q0ZZMXJOd3dFR3JkYjFNYTRIU01TY0kyUFNuTVpidTQwNUJt?=
 =?utf-8?B?R29SMTF3NnBHT2hvWENZTjlkVHdFVW5XKzhhSHJKNlVIWkZIUHAvNEVSbXZD?=
 =?utf-8?B?bFc5aHVYS1NMbXBUN3JLeUdpOXB2NlJ3anl1YWZGM0ZIMGVXZ2NMQWVDdkhY?=
 =?utf-8?B?Y29HUUJuUk4rZnFVV05xbEdMa0V1d2VLRDJCdW50WlpEeXVxbTNDc0lkbTBh?=
 =?utf-8?B?ZkJLVFZnRUVZZVlVdG9YaDFQdlhyTWdaVkk3QmJ6RVVYRjRicHBrVnZEcEVl?=
 =?utf-8?B?L2xrUjMzVlBFRU8yQjVpUXFLaW5CaGxkMEc0a3ZhcHc4NFZObmJxSEJNV085?=
 =?utf-8?B?WGRYZFhDMXJVdjF1OTBsM1JMYWxHTi9tTVdUZnJNUWVCVUZzMnp0Yno1ellW?=
 =?utf-8?B?ZWRVVS9oZWRSSGdmcXFON3U5dmtDNndvbENiVERMR09wZVdEeFFXSC9Ka3Nh?=
 =?utf-8?B?ZG9wUjV2RUpWclNlQnM4YVZSUE1VNVJhTmR4N2NZZjJIL0l0QmZBeGMvaTk1?=
 =?utf-8?B?S1p4N2tCQkhkM0FhNnJTZUhUMHVyY0RNYzBCRGZFL3NXSlYxL0Q4V2ZtdzZs?=
 =?utf-8?B?Z2JwYzZnb1hOT29LSjJpUENUeGtNQ3RRbURmSmQzUzl3SFd4OEFCdz09?=
X-OriginatorOrg: um.es
X-MS-Exchange-CrossTenant-Network-Message-Id: fdc9e02b-c3eb-4370-5938-08de4d3a7596
X-MS-Exchange-CrossTenant-AuthSource: AS2PR08MB8669.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 15:44:21.3082
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0aba6521-ce52-44d7-b06c-c6016ff2c30b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jt6TpRUuFi+IcSzd/v5m+j8MYh8ddweCKBcZZp5ISoPiF1VGtuJFOb1G/xjQA3A0DM2ESyYcQx5dmq+ckIPx7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB10767

Hello,

I think there is a missing error in the ERRORS section of sendto(3p)

When doing a sendto() to a Link-local scope IPv6 address on a socket 
that is bound to in6addr_any which has not been set 
setsockopt(IPV6_MULTICAST_IF) to a valid interface value, it fails with 
EADDRNOTAVAIL because it does not know which interface to send the 
multicast packet from.

I can make a patch later.

Regards,
Angel

