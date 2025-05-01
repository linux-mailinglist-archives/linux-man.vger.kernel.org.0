Return-Path: <linux-man+bounces-2832-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8580AAA5F11
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 15:15:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3DD963B4E54
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 13:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42EC917B505;
	Thu,  1 May 2025 13:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="g7x/q9Ki";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="WYsT82sV"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6BF2DC76A
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 13:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746105298; cv=fail; b=PBA9gBg/QICmT/ScteJV8LwjPpkfNkva+G0GhGQhGcT4Oxp3AQyRGJOZ4/529LjirVn4cuxlS4qJLnDHzEDyndF2CEhCRa/0f4jj5UWDx+LgoGHxueeBvXZwDw8MvRlqMrMgt/saj+aHussLNx3OB+bVaFs7aj6RDSX7caWgUdE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746105298; c=relaxed/simple;
	bh=qs8TvsP3QDjTcJlzscJBgPOmfGARQRjFUxHip8TzPzs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=uGEgZurYrTVKjnS30VOhamg+3pb5kutWNgEsTosmqA73/aXZD7V1+Kjq7Ja80I/TXnGKifgXKvw+Qr3XCOgmusc7H7YuJglLjoNvvyLOYPDmrQkj9CZUaPDJ89CDij9QgdpLf9QFnyrvoEZm+JczNmOIJpn0ejgiXdF3A7NXlpc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=g7x/q9Ki; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=WYsT82sV; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5418gEwe030542;
	Thu, 1 May 2025 13:14:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=5x4VaCj1vXMXJQXtf6
	VkMp59uJ4+edUyiRqUiqsoOSI=; b=g7x/q9KiyW0O+qdIDL1YxmqBsSXaIWNd9i
	3mJYwT6d6Ms8B8coQqL7JvrNdr485t4n7vnaQrZ4MXfd1MfqrU7VKY2ZnQksP1k7
	b8f/GwL+JKvbBIyz1pCwdGaoguJSmBQdxi2DQVoOkPQdTf62aC2MJ6PeIPksNpdP
	wFod2mx1M7JlM82cBOis1FfgaKn7BMRqad/Nb8kSQxNACxMEcAHua84tz+VDmwr/
	W60cl5jU6w7/WyLBKDDsuPY3AwiAmYboxOh7gwhMTVXlzBLGSt8YLCKy0Ort+XGX
	A0qRe5E97dVUuoub9uQ5WbKoT11pPGTT2PGrWlqSbICEx9+9+aGQ==
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 46b6uku1j2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 May 2025 13:14:45 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 541D9djF023739;
	Thu, 1 May 2025 13:14:45 GMT
Received: from dm1pr04cu001.outbound.protection.outlook.com (mail-centralusazlp17010000.outbound.protection.outlook.com [40.93.13.0])
	by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 468nxjs484-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 01 May 2025 13:14:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rt2ooSMHQdvJYcDMseksyJ9SikSkeDwfz3uzqvvkPlmBL9mieqGXm7HfExeYtfk9DK2sQbVu9RQRnJYkQF4hIuA/GEHyMPaPSirhWCDQigq0WTZ+shEYg1JdntBIs2jkyvDbPM+xq4ksdeDRiQOcyKdUAXJZ/4SnP7qXFZOfa9Z8UwQ0cxAmoR68mBd/9hsaufDwZ077yUuFKHlZZuZOdCu9s5AherfpAUNy4UE1N8ujrUK5stHjFTVTRt1QYYjBJl7Ko6NNAwMmiopaej4ID2ap3EysheWPxPLwrz/Zm7Djr7bInpM+I/P8sHqRHMQEylEqfa8SNnXsheYFTYLmYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5x4VaCj1vXMXJQXtf6VkMp59uJ4+edUyiRqUiqsoOSI=;
 b=wPwiylEOdNhw5O0zoN5xkOcgbW8ns0Q7QvTstDhX7tn6Zn1GI3LZ55MHt9miaubkARZGgF4Ln/vvUmoEEzM+vK7TY/LvWjCYAJqE0URwVP5R0UED5KJHsauKbYcTIu8yxCucTSsTh/D4DNrO4x/nnjSbKIiZKwfnR5RAfwh7aGUquXSVoFpEsW/sFGrED3MoogtRmOJ9kaa1OGK4VCgbS4p0WHXMWiadqH/Ina5iLdB2pQr6LksQKZXpqLaKU0Puh2C0QauE+0rbAQrsuyZxZqA8ZtkCHq0Yv/CbaqDUCZk9cZ89xHzq2c8MWNuGFMsS0yEUaDxyv9ob3hU8bJKs/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5x4VaCj1vXMXJQXtf6VkMp59uJ4+edUyiRqUiqsoOSI=;
 b=WYsT82sVIwp1mUBaOafZ523RQcKLZ19aMhjfWScXcLtqpnl7vCewkQEHr+SLAHte0h8O3e4zVdfxz7yDBIHWhU/SRD5A47xnav0Z7F3Ur1ouM2G4D77uc5gSCBrLQGg5HIrmpLGIy2VeavOettAzwZQDlW8GbXxAWxvifh0LGj8=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by DM4PR10MB7425.namprd10.prod.outlook.com (2603:10b6:8:180::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Thu, 1 May
 2025 13:14:43 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%5]) with mapi id 15.20.8699.022; Thu, 1 May 2025
 13:14:43 +0000
Date: Thu, 1 May 2025 14:14:40 +0100
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Suren Baghdasaryan <surenb@google.com>, aarcange@redhat.com,
        david@redhat.com, peterx@redhat.com, lokeshgidra@google.com,
        linux-man@vger.kernel.org, linux-mm@kvack.org
Subject: Re: [PATCH v2 1/1] man/man2/ioctl_userfaultfd.2, UFFDIO_MOVE.2const:
 Add UFFDIO_MOVE page
Message-ID: <0d6809d8-4feb-43ae-a12d-b555bef8bbc9@lucifer.local>
References: <20250423195309.2841410-1-surenb@google.com>
 <iez4k4xdfxnbc6nvo6rxfoqd4argcx3adsmtaxjr4q4ra46324@tvo5pbno6n7i>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <iez4k4xdfxnbc6nvo6rxfoqd4argcx3adsmtaxjr4q4ra46324@tvo5pbno6n7i>
X-ClientProxiedBy: LO2P265CA0109.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::25) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|DM4PR10MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: b5906f56-26f3-4c42-b549-08dd88b222fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?NPjT2RDA6JnXmqjnkSRDaTHWGk1V4L5KWN1rWzaG4NMK+2gevWqwgUjywBks?=
 =?us-ascii?Q?I1QwRHb0hCxBQ0IzY9NYxNQTVWQEUbN4keW2l8p+Ds6LjF3DTp0X/pCZw1iv?=
 =?us-ascii?Q?WYA83qfwF9Kedd9cfu4TSsrAxmwsb1tAjgI0vPAjL5RiFV7/FbsvF7rViDOR?=
 =?us-ascii?Q?C5JDN61CR2xbfPEOD7q2kGf12j4C9EeA59iInJCaJIUbHGZ6gvwOEr/Vmw9x?=
 =?us-ascii?Q?ik6UaD27X6K0MNRC/wwIWLcg6JXwFIq7N1AWuTb+JnoOjjpNdeNc4KkEvXIm?=
 =?us-ascii?Q?uPPT2YomY1lgfDjgyfZW5EiAMNnSaCX8MAeop01+fxFmTyBWbqspQp5oN+EN?=
 =?us-ascii?Q?t/wXJZJffp9N8rYFHqwI4+32tylz/yyyhEj9oJUzwG36BIQvc7aDuuIbpRTb?=
 =?us-ascii?Q?6vVskIuO1g7jIFYggQ1FvN37dDgttqoruICKOsIA8v4+vVCB4D36/wf+X3r1?=
 =?us-ascii?Q?Qy9PceFC+SWv1gbYVIsiaAh7dcB/eo2LfY/rqKuuvl6r74FYLK+LsubRXdQn?=
 =?us-ascii?Q?dvKXLScjgjFMbiO88dFXjsUyl5gsOr33J+bhyWMshfW81cvPQPi2YkzII4l5?=
 =?us-ascii?Q?rYeKf9tssHczaqESZSNq1cRepSQduEYWgxIlhjG+/KlPHprTMt/U3tHb22vO?=
 =?us-ascii?Q?Z2JocBWZERXNvgw/M2QDvFQBknnHYzwMMLbttLOjD0YYtuX46m4n/m60te6L?=
 =?us-ascii?Q?XFKM1w4BR2akof+w6kBwRhM06dsaEEjFHUdXTH0HFnO4+2olWq6yN4rWxrVc?=
 =?us-ascii?Q?HSYldmPdzd+WMYVSOIV4LFMpwKTnX8QyJaWCCL91iN1HD351IUPgnL/mHT6b?=
 =?us-ascii?Q?xDhfuSWrQpztvTWN8PPmponescv7sgT72b1JtZflRBLQNrdYSgKeWHry8+1Z?=
 =?us-ascii?Q?DI3w/DOiU7uksj9OCADTrrNuYxJzK/M9sIqtrlGRKlPCodUkNFJ/k2eWqleX?=
 =?us-ascii?Q?3Vd494T7uI64kEweUQiZiwqCWTtqC0ab+5pcxmnKRNF5uhYiwBo4/jXyo/kt?=
 =?us-ascii?Q?4E8pMQjtP/byTPi5/wuu0VMddRTh1Fvqu6+zXZeCo9+Sp4oBWdYTXsFlDII3?=
 =?us-ascii?Q?w+UI0LINoORb25zurNuozNJ4GJ8ej3rM926dG0+i2LYJlQhW0nRy3mreuM0i?=
 =?us-ascii?Q?e0tA8pBrnpzFKOPE8Vrw/n3tI2GGfE+cSnPAkHsigu2X3h0KBnVfmmxL0Gje?=
 =?us-ascii?Q?iu/OzJf3Ijw32krw8gY0Hq9aFkmOGBN5q9SjpEnFRHUIzs6R/cx+0F+a2rIS?=
 =?us-ascii?Q?0IHC08OUOo5VKeHRJ1ORc/3/FBqxANU/dqtTE3YXTE8OsstyXqrAoy2yBqI1?=
 =?us-ascii?Q?lUZukCDvxPYjfXQPQKst0+8+K8RIy5Jmh88aLJ45cQLByMxZoDbsyPZTGyME?=
 =?us-ascii?Q?mLDGnYJhszuxE9UFHaumQHUp17wv?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?JIJ5UxLWFzT27zLbSp5V06iT7QQULXn216cdpe7K45LCPP7OnoCBDaQp5Kkw?=
 =?us-ascii?Q?ZZ0lVNM5bIFe8YufB+4pSILCHhy4tNZx0zob9XwZNyBPy1N7dJhwJnmx68Rj?=
 =?us-ascii?Q?KMZrMXeo1W1nM+BOtzEXFAoBNWkwupDJm1HNhCNAdy6b5Oc/BbfLwJSc/wo6?=
 =?us-ascii?Q?+yW7F5S/QyfV/VUIVwjPZoxQgF8UdTVum6+tvHGiBVEDaeefuef0JIXJwObY?=
 =?us-ascii?Q?r/kP56MnK7EMTtr81s4t16Nmf9AmcFrjYBXbN3BqqPKv7h6MyK6ALNXqTKai?=
 =?us-ascii?Q?zQjpPYG3ZhByuzD3n2gQ3w2bM8R9Yo7zM2VtAlEX7XRlxipSaRO5uEoDaraN?=
 =?us-ascii?Q?yJKi++hLCKcosEJEwzCe+fmIy8fTa9LQU3ZGRqPJLoxGUKbU7LdMJu3XFFEP?=
 =?us-ascii?Q?r0L39Fmtyy1fh+GWLuukxZIKXF6hH0Ztkt62NX2adGY5dL2WtjfY/OGL7JlD?=
 =?us-ascii?Q?VafLJTdBu0KGPlhS2QVpM0wOEn5eokBwUNuxIKvUbFLcBG5f4drVlFrm7Fv7?=
 =?us-ascii?Q?20Sw8uH5fsdTqjnxILpoPaDfBysdcPCrpkXT62w2WmDc1hKz3kX0sz9WyXRI?=
 =?us-ascii?Q?+XYO0yHTlZ6xLdBaNDcIoKbbsf7hSI8k8p+Pl2DDbFYGdQ1Q50ey53exCBTW?=
 =?us-ascii?Q?+2pNg1Oqmri6vwC1khv+YDZV9W+MUuYTsUu5XAOHfqqsbqIM51HeYHKbR/kl?=
 =?us-ascii?Q?tKBrokr5wsFdWzHdccNrHF8uE8dbndZ/HAjTVtmHEXoVzy9+3NabpfuQ7EwG?=
 =?us-ascii?Q?K0gFgqGxsDeSicQhBGI55yueLBqPCEEoC2bpnD6YDZsXwX8LaIzdbnx1iDwz?=
 =?us-ascii?Q?/CeACJNLO31T9AujsSuCSBGH+K2/LrIxML91QFnvHwD6xuVxP0UZxhAoLvAv?=
 =?us-ascii?Q?XEgzxFQNP6DB4HU39sCJ74bFC68+kqyOsWKX3dCl2MIgac/3qe6xHnlOHE7X?=
 =?us-ascii?Q?v9yYtGr+C/QkGJN4H8585xAmYaC+ch7m4Qp059ct3YC0o3srz59l4C7A2K8i?=
 =?us-ascii?Q?NqIX/iO3g9jtzrukHxFOVyW4xIrgTarmJV2DXGUm+1uKZV32RmUQs9SQMsBO?=
 =?us-ascii?Q?zYrGgQZdEWrUL90g20/UPUNphCPxRAc8cqHCHV44WT8UKuHHST503CNvxq9w?=
 =?us-ascii?Q?Wi0mVAzaUrLCdkErqihci4RcQa3yCJwv74OHTkUcJvNxAXEWrsLKWT4hFe7d?=
 =?us-ascii?Q?nm0Hq6mzq+P6FfQFe9Urh7TGY8zmXxh/NknWxi/DWmgjjCdM+mNC8zhnydEz?=
 =?us-ascii?Q?2A8665kcXh3rtmFa8RTnZDOaZ5Higv19KC8R73H4rtogJTHfMp8Fme+a7dcB?=
 =?us-ascii?Q?PYm8KWsY/41P7HL85C1Nh7gW6wZMyuCy+6c+R1T8mPEGGaBTJk1s+AIlk6Xf?=
 =?us-ascii?Q?poRz/sb4kKPQn1f4fg5o2R4SbmBgbHkTjG5BabjNcmJse+mlfyPNJhf5fG1F?=
 =?us-ascii?Q?e9eDnd9pjDjLa6AQXM8jS5A8TxfPsWiuVDONYruN8VhI3DPY0rM5TmiDjmjq?=
 =?us-ascii?Q?m/gZIvWLcthKOY1m3Q5IfVQlbUYwChBY0N8wKUoDHstvkYCaJDF/FVZq1fNt?=
 =?us-ascii?Q?MKe8KGli9iEr366zcyKaweWlVwewYZsOiJkTrPlpW48h1PQo8mi6mFL7J2Uo?=
 =?us-ascii?Q?AQ=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	sP+9Fw77Q5SCwdX2un634uyWm3n9HmHiyXyBIjS9FAGV8C6+A5KWq8a1TjiylA75L/IW+syNSN98MW9oCc78kI2yOcgQDREtKAsX+w/0IbWQCYsJPyll8HwDGmaZ7uJTGuIhE0in3q+++bDci+tbTsoYsS8aI+jO3RcbfHlBG2wIROwuJ1ezfP3lLCSG7ReTcR5wUDVx38/eUMZ6BnP4rXaQzLQnPwV9PjYruKE9YfE14vrZS/ZY0Pwa0M0/LD8E3Ttki3PJwEH7vrOnr9mknGw5VPRXdwRf05WdVvtBDPwkBBp+Wk1J6KVcAEf0nj7J7XDNdHNRQ/lPlK2uE1uPecdSWz/Cr0exayc/R8qAGfl1Zzw5CrPhtMtBSHw+uivIHsYw7FpRGZKxzzSxujMaZGg7wjlbPuiq8uI0cHluKtzsokUleexUZMSrq0Wm0sdG9v1QWZzsFbaxfvyfQRCZxxlR3MBimHb6+iwOYhXuPew2BGzuWjIaNaMo4atQExXOFdL3GZBLVAY6UV/aFvC0to50LJeqazniQfnxZUmOxd2nbMs1XFRWgm122OWJ4Iwpw21KsigPThCmlcJIrrE38+HIrkX80DEo4BAv3nGIbFQ=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5906f56-26f3-4c42-b549-08dd88b222fc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 13:14:42.9769
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j3B3d/ApyYios3XbDnBAe+g6sF2Uu2xJnHvH3CK5c2bnr/+HJy9ojkJydSdUUtNQRde27foUCNqnyxa2q70iUIZKRViJK/y7WvQ+vKVSW4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR10MB7425
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 phishscore=0
 suspectscore=0 spamscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2504070000 definitions=main-2505010100
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDA5OSBTYWx0ZWRfX4npG8MRtX53X UhNcISGu/GR7waPfvm7/HIqz2TgqGeqRXZWQN76URl+zjccLTkd4D7W9orFBY54vLEDd07IhNV3 3oH59xDmwA/ycxw733szR1DCQ6dBcbxFjuYFEU26yQl316mpUlKD4RMeV5FUtZHCUQ9R9SkCV0N
 cBmR/BZL+unvCOUHHJ6hGB24MPEFrv2hFuoQ+ZAlNh5gxAdzEl8j5eRuBXCgK5yZ2BN6pLqN8o6 ABP9DWHc9aCcZh32ha/36t4IyIUWBcGy7o55JJT1B0SjxOjkJ9gPfkw2V88cYyOWCPFHW9Wt7sy orxyW7B8DcOwCs3AoIQoFs6mHdwqRGAqCoAjvhUx1k6uwPK1KtI34p4yxQZqmfn+yFNhqsY9GF/
 PWAfBvbwvANn0CbN88EZat2D495wieGM4fWZ6D2A5gvnHKnF0K6onNEqqOInE469Vj9dBcvL
X-Proofpoint-GUID: WWnjHvaCQxQME_1W6sx35moj9ZBRvzRf
X-Authority-Analysis: v=2.4 cv=A5VsP7WG c=1 sm=1 tr=0 ts=681373c5 b=1 cx=c_pps a=qoll8+KPOyaMroiJ2sR5sw==:117 a=qoll8+KPOyaMroiJ2sR5sw==:17 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=GoEa3M9JfhUA:10 a=VwQbUJbxAAAA:8 a=1XWaLZrsAAAA:8 a=MEjK9-KKAAAA:8 a=20KFwNOVAAAA:8 a=iIeg7Y3ihMSMogsr_4UA:9 a=CjuIK1q_8ugA:10 a=wDCLW6yMUrMVbYbmd6V3:22 cc=ntf awl=host:13130
X-Proofpoint-ORIG-GUID: WWnjHvaCQxQME_1W6sx35moj9ZBRvzRf

On Thu, May 01, 2025 at 03:12:14PM +0200, Alejandro Colomar wrote:
> Hi Suren,
>
> On Wed, Apr 23, 2025 at 12:53:09PM -0700, Suren Baghdasaryan wrote:
> > Documentation was extracted from the original patch written by Andrea
> > Arcangeli and upstreamed in [1]. Minor edits were made to maintain
> > the same documentation style as other userfaultfd ioctl commands.
> >
> > [1] <https://lore.kernel.org/all/20231206103702.3873743-3-surenb@google.com/>
> >
> > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
>
> I've formatted references to fork(2).  I also fixed a few places with
> s/BR/B/.  Other than that, the patch was fine; I've applied it.  Thanks!
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=d7dec35a3b197d499c0bb2b078117478fe6382d1>
> Below is the diff with which I amended the patch.
>
>
> Have a lovely day!
> Alex

Thanks for taking Alejandro and big thanks to Suren for kindly putting this
forward after my ping, much appreciated! :)

Cheers, Lorenzo

>
>
> diff --git i/man/man2const/UFFDIO_MOVE.2const w/man/man2const/UFFDIO_MOVE.2const
> index 77b0ca781..daa122b30 100644
> --- i/man/man2const/UFFDIO_MOVE.2const
> +++ w/man/man2const/UFFDIO_MOVE.2const
> @@ -108,36 +108,42 @@ .SH ERRORS
>  .I .mode
>  field.
>  .TP
> -.BR ENOENT
> +.B ENOENT
>  The source virtual memory range has unmapped holes and
>  .B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
>  is not set.
>  .TP
> -.BR EEXIST
> +.B EEXIST
>  The destination virtual memory range is fully or partially
>  mapped.
>  .TP
> -.BR EBUSY
> +.B EBUSY
>  The pages in the source virtual memory range are either
>  pinned or not exclusive to the process.
>  Once KSM deduplicates pages
> -or fork() COW-shares pages during fork() with child processes,
> +or
> +.BR fork (2)
> +COW-shares pages during
> +.BR fork (2)
> +with child processes,
>  they are no longer exclusive.
>  The kernel might only perform lightweight checks
>  for detecting whether the pages are exclusive.
>  To make the operation more likely to succeed,
>  KSM should be disabled,
> -fork() should be avoided
> +.BR fork (2)
> +should be avoided
>  or
>  .B MADV_DONTFORK
>  should be configured
>  for the source virtual memory area
> -before fork().
> +before
> +.BR fork (2).
>  .TP
> -.BR ENOMEM
> +.B ENOMEM
>  Allocating memory needed for the operation failed.
>  .TP
> -.BR ESRCH
> +.B ESRCH
>  The target process has exited at the time of a
>  .B UFFDIO_MOVE
>  operation.
>
>
> > ---
> > Changes since v1[1]
> > - removed '\" t, per Alejandro Colomar
> > - reformated sentences to use semantic newlines, per Alejandro Colomar
> > - changed field names to use '.' prefix, per Alejandro Colomar
> > - changed EBUSY, UFFDIO_MOVE and MADV_DONTFORK to be bold,
> > per Alejandro Colomar
> > - folded duplicate information into EBUSY error description,
> > per Alejandro Colomar
> >
> > [1] https://lore.kernel.org/all/20250423011203.2559210-1-surenb@google.com/
> >
> >  man/man2/ioctl_userfaultfd.2     |   2 +
> >  man/man2const/UFFDIO_MOVE.2const | 153 +++++++++++++++++++++++++++++++
> >  2 files changed, 155 insertions(+)
> >  create mode 100644 man/man2const/UFFDIO_MOVE.2const
> >
> > diff --git a/man/man2/ioctl_userfaultfd.2 b/man/man2/ioctl_userfaultfd.2
> > index 3cb1b8305..5ec08ca55 100644
> > --- a/man/man2/ioctl_userfaultfd.2
> > +++ b/man/man2/ioctl_userfaultfd.2
> > @@ -69,6 +69,8 @@ events.
> >  .TQ
> >  .BR UFFDIO_COPY (2const)
> >  .TQ
> > +.BR UFFDIO_MOVE (2const)
> > +.TQ
> >  .BR UFFDIO_ZEROPAGE (2const)
> >  .TQ
> >  .BR UFFDIO_WAKE (2const)
> > diff --git a/man/man2const/UFFDIO_MOVE.2const b/man/man2const/UFFDIO_MOVE.2const
> > new file mode 100644
> > index 000000000..77b0ca781
> > --- /dev/null
> > +++ b/man/man2const/UFFDIO_MOVE.2const
> > @@ -0,0 +1,153 @@
> > +.\" Written by Andrea Arcangeli <aarcange@redhat.com>
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH UFFDIO_MOVE 2const (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +UFFDIO_MOVE
> > +\-
> > +atomically move a continuous memory chunk into the userfault registered range
> > +.SH LIBRARY
> > +Standard C library
> > +.RI ( libc ,\~ \-lc )
> > +.SH SYNOPSIS
> > +.nf
> > +.BR "#include <linux/userfaultfd.h>" "  /* Definition of " UFFD* " constants */"
> > +.B #include <sys/ioctl.h>
> > +.P
> > +.BI "int ioctl(int " fd ", UFFDIO_MOVE, struct uffdio_move *" argp );
> > +.P
> > +.B #include <linux/userfaultfd.h>
> > +.P
> > +.fi
> > +.EX
> > +.B struct uffdio_move {
> > +.BR "    __u64  dst;" "   /* Destination of move */"
> > +.BR "    __u64  src;" "   /* Source of move */"
> > +.BR "    __u64  len;" "   /* Number of bytes to move */"
> > +.BR "    __u64  mode;" "  /* Flags controlling behavior of move */"
> > +.BR "    __s64  move;" "  /* Number of bytes moved, or negated error */"
> > +.B };
> > +.EE
> > +.SH DESCRIPTION
> > +Atomically move a continuous memory chunk
> > +into the userfault registered range
> > +and optionally wake up the blocked thread.
> > +.P
> > +The following value may be bitwise ORed in
> > +.I .mode
> > +to change the behavior of the
> > +.B UFFDIO_MOVE
> > +operation:
> > +.TP
> > +.B UFFDIO_MOVE_MODE_DONTWAKE
> > +Do not wake up the thread that waits for page-fault resolution
> > +.TP
> > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > +Allow holes in the source virtual range that is being moved.
> > +When not specified, the holes will result in
> > +.B ENOENT
> > +error.
> > +When specified,
> > +the holes will be accounted as successfully moved memory.
> > +This is mostly useful
> > +to move hugepage aligned virtual regions
> > +without knowing if there are transparent hugepages in the regions or not,
> > +but preventing the risk of
> > +having to split the hugepage during the operation.
> > +.P
> > +The
> > +.I .move
> > +field is used by the kernel
> > +to return the number of bytes that was actually moved,
> > +or an error
> > +(a negated
> > +.IR errno -style
> > +value).
> > +The
> > +.I .move
> > +field is output-only;
> > +it is not read by the
> > +.B UFFDIO_MOVE
> > +operation.
> > +.SH RETURN VALUE
> > +On success,
> > +0 is returned.
> > +In this case, the entire area was moved.
> > +.P
> > +On error, \-1 is returned and
> > +.I errno
> > +is set to indicate the error.
> > +.SH ERRORS
> > +.TP
> > +.B EAGAIN
> > +The number of bytes moved (i.e., the value returned in the
> > +.I .move
> > +field)
> > +does not equal the value that was specified in the
> > +.I .len
> > +field.
> > +.TP
> > +.B EINVAL
> > +Either
> > +.I .dst
> > +or
> > +.I .len
> > +was not a multiple of the system page size, or the range specified by
> > +.I .src
> > +and
> > +.I .len
> > +or
> > +.I .dst
> > +and
> > +.I .len
> > +was invalid.
> > +.TP
> > +.B EINVAL
> > +An invalid bit was specified in the
> > +.I .mode
> > +field.
> > +.TP
> > +.BR ENOENT
> > +The source virtual memory range has unmapped holes and
> > +.B UFFDIO_MOVE_MODE_ALLOW_SRC_HOLES
> > +is not set.
> > +.TP
> > +.BR EEXIST
> > +The destination virtual memory range is fully or partially
> > +mapped.
> > +.TP
> > +.BR EBUSY
> > +The pages in the source virtual memory range are either
> > +pinned or not exclusive to the process.
> > +Once KSM deduplicates pages
> > +or fork() COW-shares pages during fork() with child processes,
> > +they are no longer exclusive.
> > +The kernel might only perform lightweight checks
> > +for detecting whether the pages are exclusive.
> > +To make the operation more likely to succeed,
> > +KSM should be disabled,
> > +fork() should be avoided
> > +or
> > +.B MADV_DONTFORK
> > +should be configured
> > +for the source virtual memory area
> > +before fork().
> > +.TP
> > +.BR ENOMEM
> > +Allocating memory needed for the operation failed.
> > +.TP
> > +.BR ESRCH
> > +The target process has exited at the time of a
> > +.B UFFDIO_MOVE
> > +operation.
> > +.SH STANDARDS
> > +Linux.
> > +.SH HISTORY
> > +Linux 6.8.
> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR ioctl_userfaultfd (2),
> > +.BR userfaultfd (2)
> > +.P
> > +.I linux.git/\:Documentation/\:admin\-guide/\:mm/\:userfaultfd.rst
> >
> > base-commit: 80e2715270fc05d5627c26f88e4c1ba8b093f510
> > --
> > 2.49.0.805.g082f7c87e0-goog
> >
>
> --
> <https://www.alejandro-colomar.es/>

