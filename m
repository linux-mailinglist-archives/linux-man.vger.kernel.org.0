Return-Path: <linux-man+bounces-5452-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AvVhImpB8mkapQEAu9opvQ
	(envelope-from <linux-man+bounces-5452-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 19:35:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D223C49838A
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 19:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35BE8301702E
	for <lists+linux-man@lfdr.de>; Wed, 29 Apr 2026 17:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D743FE65F;
	Wed, 29 Apr 2026 17:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sap.com header.i=@sap.com header.b="Bi+Z6lDZ"
X-Original-To: linux-man@vger.kernel.org
Received: from OSPPR02CU001.outbound.protection.outlook.com (mail-norwayeastazon11013006.outbound.protection.outlook.com [40.107.159.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E983806C9
	for <linux-man@vger.kernel.org>; Wed, 29 Apr 2026 17:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.159.6
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777484135; cv=fail; b=dioZkgaMd9ImfHWQoYqKIIuGiSwG2pZvRksuyJZTCjKmRuJPHZZTBjNmbhCIRIX0MM8AXWxmf13C9HyibDENInahnpblHWbMEXLz4O/7aC1wJEoJHzRREX8nLfdwCmARJx+8JQ1NosYovRw5kkLN/BF7/4bobmRRQ4kfcd6PUXs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777484135; c=relaxed/simple;
	bh=5maRFM8tzZ9Uvd8r1tv6f2bSBtYX92LmupijkW4dbIg=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=Xld0ijG4+V5K49SD5KPWklCw0dmDrefSUQ+HgjLzjGMgAdX2ij7jKImj3iBVA2eHVL/9Iys198PxeZioSi8JV26Cgz1yVlebbANThcQK0RFXLJ8CLfi/d8Zqy+5JJ8um4nMEzHJpL/w0o3Tlk740wVBz/SqnAnZ2LFhybziDLLo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sap.com; spf=pass smtp.mailfrom=sap.com; dkim=pass (2048-bit key) header.d=sap.com header.i=@sap.com header.b=Bi+Z6lDZ; arc=fail smtp.client-ip=40.107.159.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sap.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sap.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rgtgoyOMhMK41AiKN3fpiNWR+RALKcaljPhRb+5nMcdlyIby02UpZE0mKzoTmahJaSllGlI/csuAD4RUtEmPKtS3dXF3ZF/k0uJ0TMxCQnxarwRMXxJuSYKtJ7Rt7lidceerj3jgKEKzvh8fKhMFexO9VI5qNLOLzAURg70YZYlunLYQNfIuY7RapIvBcEB8sT/jigOk1+nkKPB/3q+88zUFeiFe922cSOvFySJLRZeXSP8KVV8QPUsvaIp3PnHC7SvrfRoBCpFPDLziKZTRWLJJPWv4naB/527O4yIXJu1lJYwemf+xyKOvL4kdPRt7oVSlyBBOE0mKnHuPCex13g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5maRFM8tzZ9Uvd8r1tv6f2bSBtYX92LmupijkW4dbIg=;
 b=N1CokyEEzhC8nhsS5YLItfBZT9FuDiT+MwoWeu0vApp7muYKKhrKMsIm4wFKf5EvwJU3388pdPmuJiGyiTuKb9F5/u954hY9sT/bctjCYEsnqJvVDjaIr2YajO2PKdNoeAqZZ7w6xkHMp51g5dGVP4fX1LLK4cPC+zTCPI+uRuA8poC4vIS4UqRwznzaE+Bx5m9Q7kYnVv611k6Daa1bqd5PcJmupEelKg5x5wfQfGoQ++FTJzqtmt6jEF5rXEW50Aw0KzkzdTwt2CxRsCyLh6LJAK+gmRorZ7mDty29IORbkpmxWazeyk8Lu/LAn8L/CDrYIUl99zrmqNj3UskCPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sap.com; dmarc=pass action=none header.from=sap.com; dkim=pass
 header.d=sap.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sap.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5maRFM8tzZ9Uvd8r1tv6f2bSBtYX92LmupijkW4dbIg=;
 b=Bi+Z6lDZiwReed5ih0MxIUM7CJc2GxKEN2CZ3L2EqhtPMdfovI14HdxsekACCenFxpncsJGS+J87J6iuJHgc7j9baw2oAzBt8JhOa3a6UPL/+BrX59iwkdETbgS27MWjDfv33RQiPsglV9suUtDac9glV/b0GJLHKiyejbTJw+7gOSJ9RHqtbK0M6/L17rsQxQlY6bmHfRsqxQ1GpTv+mPCcKToZNIEaGKe6eGGfbTTcOsFY7bYKlAaP3CApExpRjP9qztIGXI60XoGSdd+K8gix8jexAVdN8Hx4ovIb6J7t3JYlbhPrZeEEhgODHV++ih1xbvoTe9cxQAokZdHSWQ==
Received: from VI0PR02MB10873.eurprd02.prod.outlook.com
 (2603:10a6:800:204::16) by BESPR02MB12318.eurprd02.prod.outlook.com
 (2603:10a6:b10:ff::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Wed, 29 Apr
 2026 17:35:30 +0000
Received: from VI0PR02MB10873.eurprd02.prod.outlook.com
 ([fe80::e168:74a1:f841:e77]) by VI0PR02MB10873.eurprd02.prod.outlook.com
 ([fe80::e168:74a1:f841:e77%6]) with mapi id 15.20.9846.025; Wed, 29 Apr 2026
 17:35:30 +0000
From: "Schneider, Robert" <robert.schneider03@sap.com>
To: Alejandro Colomar <alx@kernel.org>
CC: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: [PATCH] man/man2/perf_event_open.2: ffix
Thread-Topic: [PATCH] man/man2/perf_event_open.2: ffix
Thread-Index: AdzX/nJyefIib3xVTrChahqJ3UcYlQ==
Date: Wed, 29 Apr 2026 17:35:30 +0000
Message-ID:
 <VI0PR02MB10873E01B8EE1A99CDFD03F0F8F342@VI0PR02MB10873.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sap.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI0PR02MB10873:EE_|BESPR02MB12318:EE_
x-ms-office365-filtering-correlation-id: c6e9f79f-8261-4efb-2eec-08dea615b571
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700021|18002099003|56012099003;
x-microsoft-antispam-message-info:
 zCPL7ipcRNh+Rw73IoP/E/6OsH9hqOAeRP/Ta9p4gz27VXDfOjIwSakPCCCV/nfAweHM6g5w/T/+XVMF0QXsr8uraFIQwaOKHL6JwPwqtTjt32oCyl6sgwDRXYgnI2cviH89qrSGPD0KweexRhLatLFirrxHX1sB9Rlv4BW/TjZYTXKng+E1kpkTiCB60bHZe+wCJBCUP2tU6aW5BqWykubmFOyyzvW2cmpfcIo0mE7Ski9nbkJGogN6NWhsVZQCP2pTxr1v/LMr8/ed9MyLMYTVb94JnN1jVgDtTlwzNteo3pFwwraxx9LAhSdHXmlHHItUKt+2dnxEn8YkbDixm9/bWDnd0cioInK+OJnlqrEhMdZLxAoIHrB0LHwVqDU+f358y4IG3iGlKI7G5M0ou3Qv+eDGMPT/CS6px9JcylptwCFbUn3V5gHDSAGXXz2PpZ6d5UgCzFMG7VesgCTk7tDWCg66ZmlL3U6FZ75zlqzEGLW9KKsLZLiH19gXNxs5DPwL7NQ/p4Dur9sxXOkcerLkdyuV5BbKjW84FeQvAKO96BQhwLu5GnO8URd4ayiyRKZrrEUtzetG+oFWsFmASq5dWztPD7EJeGD6kY5jb1FOXzfDwpyAscD7oymHrISS8wHZ7kejHgPrRwHIGEd/QfK5NRZj2IsJYSxblEWzE9XLlwqzJUpMHqek3+zE8+4UhxIRxgLJcglsROr3TneOI7sTkVv0HahJIiu0ddEe/ltlMqJ952wdBo2yv/ZakftS9t36Lse5/dLgeKYwlcsGtZTLNxstcgE5fa6HOWKLh4s=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR02MB10873.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?MzZPZkxaZUk0ckUzaUFOZmdXYStTWGJzTXZQekRTZEErRkpGN2pCdFp5eWxk?=
 =?utf-8?B?aEkyRHY2UDdiV3hGMmhyOHJYTzJnV202WjFyVk50WnNsSnNEMit2eEFNV0w3?=
 =?utf-8?B?dG9MUk5ZUkFiZlphd1BvOE1sMFhkVVhzWWV1TTRxME9KTXdLdDNETnJ0ckFW?=
 =?utf-8?B?bUs1dmhKQ3M0a1lPd25RamE0alRFL2o3aWNmQ0RRS2xjdTk2YUo4b2NsS3E1?=
 =?utf-8?B?TWkrSDkrWXZQSGNqWlpEREtqMjZ2eWNkWG0zcmcxNDc5ZlZlSTJTN1hQcDFV?=
 =?utf-8?B?K3k4Q1I1YXBac0RpdjJ6TVdRR3hKa2g3c2tnV3A0ai9TRjhJRUd6VEVvTUxG?=
 =?utf-8?B?eGZndzBxeTd3VnlFWkNkZEV1aFp4SGpSUmJoZDh1ZHhNOEk0cThNU0c0ZUFQ?=
 =?utf-8?B?TFVZM0ZncDd0aTJ1MVBiOUFhWnVmVlBCOWx6d2l0dUhkVTBKSklyOXZ0Q2JW?=
 =?utf-8?B?ZW0yZ0pnU1FDUXErUjZDeWM5cTdJWjVEenZBMkd0MmptbGNWanhXWUZNWXVv?=
 =?utf-8?B?cmJsOUtjZXhhd2J6SjE3WkNORUpUejgzcTVqOVZRWk90MVl5ZWw5UGo3V25H?=
 =?utf-8?B?VHFtbDlWRzdzSkpmTVV2UFFKS0FWanZuS2xtb3YwZmFkeUNXc3NPWlpMbW9K?=
 =?utf-8?B?a29MYnJNTFhUUWxBY2Z0RXNJVnZicG94d3VJMEw2NGJFeEJtMGNjYVl0SFV2?=
 =?utf-8?B?alJFbksxVENiVG5WNlBUQXRUNUU0RzdUSnMvSGoydUZaRnY1bGJJeTlBZnBR?=
 =?utf-8?B?NGJNK0FHcmYyY1pqRi9BdWlSL0tBR2pYd0ZLZkFnMFM5S2dpU2NxYmtnTDV4?=
 =?utf-8?B?MUhZc1JseUt4Rk1ua21MalZZWkthNS9yTE1ZZTNZbDh0YUM2OEExVHdYeDZT?=
 =?utf-8?B?OWIxSzFVcDVuSGVMejdsWVRkWGdwcFdXcVhMNlZKWDBiQkFxUllMTWtmYWti?=
 =?utf-8?B?M0tIeW9vRytCOWZZeWFONjA5YWxhTWdZZlBjbHZqY3RDRHhiWGdNS1htbngr?=
 =?utf-8?B?UkdJelVPcmZyYXhENjNKTndjVnRVdGszeERtNi9wcVFsRE5yOXhTVkh1OUQ3?=
 =?utf-8?B?NXVuRERVbzA5TE9HWDh6eStJRWNHRVBnc0JvRWhXaVpTZXA3ZkV6SlNjN2NR?=
 =?utf-8?B?NDFkZ003RFI4a2ovRUM1RWRqYjBmQ3VqalNWSzAxeWNDL2p2OENTNDM1d3c0?=
 =?utf-8?B?QWFDVWZBMlF0M1FjSEhVd1ZoVG9jaElvWWZXTm4wMHJIelVzNDJBUkdsWC8v?=
 =?utf-8?B?WnVpbXVkbkhsdHBXa0pKSitjQTQyTlhYTG1QRHQ3WFdsVVd5N3VraVZHRkFh?=
 =?utf-8?B?V21BS09CbFV5TG11YXRBdmxtcUFLa0U1ZW1RTmFIR2VBYis1SUhrOWZGallY?=
 =?utf-8?B?NlcxQTFEZVF3eVBxUld0VDlSdERqZGZ5cHh6eUdFcGVMZnhacWlmcHNGNTNR?=
 =?utf-8?B?T0p4TnFpSGw4aHNxT2x2YWFnWVVoem1DNnJvNTcrUDE5ZVlUdzlKNzJVSjll?=
 =?utf-8?B?Z1NiQU1YOGhhR3lsdjUwNDkzRldPS3JWdWRUZnZicUw1T2EzQ2h1UERQR2Vt?=
 =?utf-8?B?bkx3NTVmSWUzWi9SUGV5ank1VTJaZVVsLzJoa3l1Qm5JTTgwUTROQTNKZWtq?=
 =?utf-8?B?emVXVmFLUWFVRlozKzVUM2ltOEJYNUJBUng1N2dpQ08xcDh1RVdmUkFGTnJi?=
 =?utf-8?B?UWdmOEQ0b1lCampodXZKOWg5OHczV05nODZXRUxZWXlhbGdxVjh4QU9IMDFG?=
 =?utf-8?B?MVc4OWN4cnFFQnFONmJRK0RVTzdneHI2MVVtWWhnQ3lRYXdOenJiUHU1Vnpo?=
 =?utf-8?B?RVlhSk52K0s5MTlMdlBEN3M3S3pwQTMzOXR6YzYrNVFCRVVSREx3NjJMNmtu?=
 =?utf-8?B?UlE5cm5oYllCSWRxTmVQRGc4ZW5QbDBKQTduYzRHWjNFdEFxVjJmODlpZjBq?=
 =?utf-8?B?NTNkZXkyM0NjSTJHYkc0a3J2c2ZEc1loSW9oSDBsZEkrNXRTMnFpVzNmSzY4?=
 =?utf-8?B?R1ZsQUtwNjlLbnFHNzJTVy84WGxpRDEzd2N6RU1LSTBCSkRvbm1ka1NPdWlo?=
 =?utf-8?B?czVQMFlVVXZJZDVUMC9TbnFNQnFUMXhXdU5obE5KM2NJSFNTT3NuT2JubjZZ?=
 =?utf-8?B?KzdHYkdIZndRRTdhd3krR2FNdnpVd0k1YWY1c25WNU1yN2VEcjRzVkZ2cXRv?=
 =?utf-8?B?TjdSbkNWdkZMOU5jMlI1b3NxMkNicldTZVV5eGc1NEE5TmtHby9vZU55eHcx?=
 =?utf-8?B?TVJ4RmxPQ3dyQnpUdGk2Q0dnekFqUEZrUUFPeTJJR2VTUHNoTWdkN2grK1Rs?=
 =?utf-8?B?K0J3QjRDQlV5THZYazV4WnV1RFJrWGE3R2xwSGNlT0NGc1hKRk9GZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: sap.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI0PR02MB10873.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6e9f79f-8261-4efb-2eec-08dea615b571
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2026 17:35:30.1406
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 42f7676c-f455-423c-82f6-dc2d99791af7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9vIDLz9tUhwN9WH2h1foE919BzJa9I04CBGSNAbCE1d4B5FEQeO9N/rzcgxwkNP06IlAJmxNcnlsQBbncnBLeBjB8oBdZ0L0eau5f/qj9h0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BESPR02MB12318
X-Rspamd-Queue-Id: D223C49838A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.94 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[sap.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sap.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5452-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sap.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.schneider03@sap.com,linux-man@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sap.com:dkim,sap.com:email,VI0PR02MB10873.eurprd02.prod.outlook.com:mid]

Rml4ZXMgLlRQIGxpc3QgZm9yIFBFUkZfU0FNUExFX0JSQU5DSF9DQUxMX1NUQUNLLg0KDQpTaWdu
ZWQtb2ZmLWJ5OiBSb2JlcnQgU2NobmVpZGVyIDxyb2JlcnQuc2NobmVpZGVyMDNAc2FwLmNvbT4N
Ci0tLQ0KIG1hbi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yIHwgMSArDQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspDQoNCmRpZmYgLS1naXQgYS9tYW4vbWFuMi9wZXJmX2V2ZW50X29wZW4u
MiBiL21hbi9tYW4yL3BlcmZfZXZlbnRfb3Blbi4yDQppbmRleCBkZjBhMTk5ZS4uYWU1ODg0NTEg
MTAwNjQ0DQotLS0gYS9tYW4vbWFuMi9wZXJmX2V2ZW50X29wZW4uMg0KKysrIGIvbWFuL21hbjIv
cGVyZl9ldmVudF9vcGVuLjINCkBAIC0xNTQ3LDYgKzE1NDcsNyBAQCAuU1MgQXJndW1lbnRzDQog
LkJSIFBFUkZfU0FNUExFX0JSQU5DSF9OT19UWCAiIChzaW5jZSBMaW51eCAzLjExKSINCiAuXCIg
Y29tbWl0IDEzNWM1NjEyYzQ2MGY4OTY1N2M0Njk4ZmUyZWE3NTNmNmY2Njc5NjMNCiBCcmFuY2gg
bm90IGluIHRyYW5zYWN0aW9uYWwgbWVtb3J5IHRyYW5zYWN0aW9uLg0KKy5UUA0KIC5CUiBQRVJG
X1NBTVBMRV9CUkFOQ0hfQ0FMTF9TVEFDSyAiIChzaW5jZSBMaW51eCA0LjEpIg0KIC5cIiBjb21t
aXQgMmM0NGIxOTM2YmIzYjEzNWEzZmFjOGIzNDkzMzk0ZDQyZTUxY2Y3MA0KIEJyYW5jaCBpcyBw
YXJ0IG9mIGEgaGFyZHdhcmUtZ2VuZXJhdGVkIGNhbGwgc3RhY2suDQoNClJhbmdlLWRpZmYgYWdh
aW5zdCB2MDoNCi06ICAtLS0tLS0tLSA+IDE6ICBkNTk3ZGM5OCBtYW4vbWFuMi9wZXJmX2V2ZW50
X29wZW4uMjogZmZpeA0KLS0NCjIuNTEuMA0K

