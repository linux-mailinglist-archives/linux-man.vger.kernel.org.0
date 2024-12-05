Return-Path: <linux-man+bounces-2117-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 286649E556A
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 13:28:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0282C16B08C
	for <lists+linux-man@lfdr.de>; Thu,  5 Dec 2024 12:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 016BE2185BC;
	Thu,  5 Dec 2024 12:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="l0tb8RpD";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="Ru5zbt28"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DD02185A7
	for <linux-man@vger.kernel.org>; Thu,  5 Dec 2024 12:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733401647; cv=fail; b=bP2KjqmHPRcR+Dmil6HCg3ff8pFgVzxrvgbkAwiE65AWInT+3++YE4IX52/A9MHKXgr8XMxWQja7ZZrgKwmNrqaXCNJASheUO2ZEH5+82/th3kP3XnjGFGwO/P+vye1UOdhkSafkYgaGi5ScBAOGxj7sKREt3ccwEhOOJJGGvaE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733401647; c=relaxed/simple;
	bh=nQ/Qn1R8CfuhRDlJqYpmrILImUQib4PZdhdOLhad2Zc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=XeQ5zh/wvmivnT3tBy38e4hkYA9IE4rrDVbHhrkmzha/4ZIbSnoXTUupHhW4ioXI1QVRBGQgMVTNw3X5qrNFbz7cvIEHz0sJESTM6EgiMdcmGLfe506qxW14FzZsSAuhiOQbL9o/pbjGSkHJtQZSFLrgl5/6Mah4MBDvIZlR/SI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=l0tb8RpD; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=Ru5zbt28; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B57MmAo007908;
	Thu, 5 Dec 2024 12:27:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2023-11-20; bh=JMaDOKbBKULgsOKQKV
	J4i6BPD75vK0n3l8iKyxK1c7w=; b=l0tb8RpDM3BmZ09JHp3JY8ymAZnwceiyYf
	coX9ILyO4gVnrFNQykq+17Z0+ukbQZyrUFjRIOGTTI789qIdm6JuQG9QO241objz
	dHDruyPIB7VlRwukSiZV5QeC32ZyNRQOdjmyPdb83j2CkvMWtYzYMKGKZgaHhVI6
	tvvMpRbO0VOhlifsUhYbirtBmzNjF9sWJmAUbKCRxEnfKJpYCngL8oRU3QmrcT0L
	ceKkMvdhOkORwn55IIn2w6r+IyKNOEoqJN19ZzqppoSLAAmqtV9dVaiU6P5T+bll
	SQfRubt/RC5I9jsAiXhLPBu0JFtE4JkVW9C5Z6fYoWjzs34QXTXw==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 437trbtvt6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 12:27:07 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5CAmfU020481;
	Thu, 5 Dec 2024 12:27:06 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2047.outbound.protection.outlook.com [104.47.74.47])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 437s5aufcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 05 Dec 2024 12:27:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8vjFlpb1QpqWWbW2cOQC8XVxxY6RoOrnbKHl8YXiCVEep56XXVheCER0p4AZoWZlzliYinfdjzorfv1gns6dfZgdDgtF7o/mCVnDzB4oqmhBJeQ5HP/iPPb/T4hgoHmmcK9tTUsHOxCmmchqPMS/PyD9FULZ2gtLB06G0VyNLtEIlj+A8ibkFhhssXXXBB/WBZdlUQjq0g7xvWhqJGnO4dJonR5+OKu6kZbuoTqLdbydZThyFK24IEoB7WzZvlIzHN0CP0vHjoYqFKwPAgNj/qsicijanSGqOsvZkhT7013CLJSgkDr9F+8Jv66Rq0pAd2Vu5VcaIucyUy6wcCZ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JMaDOKbBKULgsOKQKVJ4i6BPD75vK0n3l8iKyxK1c7w=;
 b=H3P1TNmenRhZO2IfYDypg9jBVQBef2P2UvfHDp0r5BT07BNdAaiNXEOQWxAQMZnOP8Pu5rZ69Bl0cgGJXBSQlHfoa2pyl6+qbb/+DazxAMjQHgkTIyAOdtgsJKWjEiahYAm5PN2b5vxlRD32FHyayLChck1+Wh1U36q2b6f1uBLxEQB0xf9QLdyYb3O+KWvm1SjIFmjtJa1wpoQGAH11pao0d2FGNsXZexL4gYTASUDQfRs5G0IqsMiHRT+ik/+TqimPTeP6307rzG8KIqG1PGeio75nfXIAzNa9ADNk4g2hUqpFkD1qeP8CgIbjKrsOf5q+hLyauku4urlQMLgnVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JMaDOKbBKULgsOKQKVJ4i6BPD75vK0n3l8iKyxK1c7w=;
 b=Ru5zbt28KEMqbNoTF7pZjpPSuQy++lfJOysm5Da0z47q/k7h75n80WQQoCHTfWdBW0t6Ft6rpj/EGF7ABRDNsrMqMhMhelPa451aha6Xnfyy+HocOEmuBI6eo7d57UNiqEw3p4hFKzFcpAz2ELlF+E2BiQ0lwgQ9kf8gnjNOJcU=
Received: from BYAPR10MB3366.namprd10.prod.outlook.com (2603:10b6:a03:14f::25)
 by IA0PR10MB7208.namprd10.prod.outlook.com (2603:10b6:208:404::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Thu, 5 Dec
 2024 12:27:01 +0000
Received: from BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9]) by BYAPR10MB3366.namprd10.prod.outlook.com
 ([fe80::baf2:dff1:d471:1c9%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 12:27:01 +0000
Date: Thu, 5 Dec 2024 12:26:56 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
        "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>,
        Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <e7e1d068-af82-4b48-9fde-a341158e4db0@lucifer.local>
References: <20241205104125.67518-1-lorenzo.stoakes@oracle.com>
 <20241205122037.7u2lbjix6mawoepr@devuan>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205122037.7u2lbjix6mawoepr@devuan>
X-ClientProxiedBy: LO4P265CA0114.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2c3::18) To BYAPR10MB3366.namprd10.prod.outlook.com
 (2603:10b6:a03:14f::25)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR10MB3366:EE_|IA0PR10MB7208:EE_
X-MS-Office365-Filtering-Correlation-Id: 52617477-d3f7-424a-1137-08dd15281e78
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?/A2W68Z7mZeL1bkUaZ+lrSQpb35UFDtLQeP2PJBWdcmNbhak8VTkbW94QgRo?=
 =?us-ascii?Q?IvBmolrT9Zq8g16fwhFnDBK7FgWe5RQLuqknHlllzOuTzb5Wg4kp3bEqrKWD?=
 =?us-ascii?Q?qh2vyFNtMsmPRmP2hN3EvqI4wimTML9ViPn9dSGoYChVqFjicQNuk7liC/M7?=
 =?us-ascii?Q?MExlquI4SFKfdRT8lMCSmKo3y9MBqPiYoeij9iJWHgPDXNsKIMJOaz3HtWh/?=
 =?us-ascii?Q?/rPwWzX2/JNWT7+Y/hqY/NvdwPdiAnaEaQSoSbQGl6c4u5Pv9LtStllxkfh6?=
 =?us-ascii?Q?2IU9BkT1Mc2EvAAqEcJGL3o1wkLRnGwNFhwl5Qpt6Jzi6PIT1WBvvvbB6sEh?=
 =?us-ascii?Q?NTtmpg7C/9v3xjdFS7uiJ35iiiOtCVsqvI/gX0PBH8NOwX7MY1vQEBYSiErE?=
 =?us-ascii?Q?EWOsMMRLK8R7V9vjADmpjJLugKdLhyjWlkXON1NrmrOhTJysb6/jMRYlydzC?=
 =?us-ascii?Q?eU1q2avn+pG+NZc3jC6Dg/xCM7DOA4O59DqiMiar/A5CBgc+RoLvMio4Kpk6?=
 =?us-ascii?Q?AZ3tAzhkNY7/mjZ03ovp5EHVCH6N6nTeUMxFyud390oD3Bkx1zfhLl5GfIig?=
 =?us-ascii?Q?LZc4wW+bB7dwji1RZDEU45srL1B7ubG7+WF3DGMRgyN1fEBgdcDJVVD3DcQ/?=
 =?us-ascii?Q?ok1667dhli4Kjb5STFtRA2yxGdpNqP/0WN3wn7LOdXRxeyJcFcTZmDRP+lc+?=
 =?us-ascii?Q?nukBujkZ2pobZe6kepxIWjdxv7jy4Twy4fOYUHqrfCR37f6apg5YmtznX2Vu?=
 =?us-ascii?Q?VRRJIlAJ5ppZMw+F/7SA+j3IXCGMFPSVWliy+p3YyeStoZ2CnwcUfy9DCQJi?=
 =?us-ascii?Q?AtlYz6vlhWZbo4h6sz7oLdDO4icLRGyUodz5ymBegKbFI0cTNWaGfS+VC3HB?=
 =?us-ascii?Q?QrqXsPUd74ZJZTDZk/n8htNkbumhGrTm0Kx4t0DfgZu/NwI+NqQcFueaP8Fd?=
 =?us-ascii?Q?TCNZ7M5svXA5ehn5VdTTMR44im+FAq+vhMNtAbxMtb7yceyOTn7Spwoy7vJE?=
 =?us-ascii?Q?agpjH+2Gw+Mf7HIACpanefjPzznmbR+/9lh83QcK3gFGQJyLGlb+fly7rm12?=
 =?us-ascii?Q?UnpmOuy6suS6mr5qQNKdqo1D5RSHJqSTf7MFnmCWNHSBXTDGkVpS9OxrEyUG?=
 =?us-ascii?Q?0lMqdCleRPvrMdYqASwKQCgWS/lNzQCfBfLMYR1b6u+1nqn/X3xj8CIZIr3q?=
 =?us-ascii?Q?+JU4gNef5qLE2xQwVmHn61TKqvXDhit75UkW+E2HazIMi7VuJE8VQfhMgMkC?=
 =?us-ascii?Q?6P14tB7vV6nVHfjZIpmvQKCHR3F1Lxi4LHUU2NSmqpLCcUN4D4q1YVntQjky?=
 =?us-ascii?Q?syU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3366.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?XY31CueQCZZ8ppx8kmC4QyTxEoJ+VtSjtEFXvsqs088YuQlGkBEmgPt5kneK?=
 =?us-ascii?Q?rTcOh43Ycc2Ynlo/Xk/e9U97vZPYOoqpT4WDEZ987LuBrca+76CD1tOjMxzM?=
 =?us-ascii?Q?DY8rsE21JnQsJhIde7lE1d33HudMsPECuzQYrPOZIvdoxXcfnoXxAz7bdCI3?=
 =?us-ascii?Q?OsYihDJaQCAKUGEevy5ar2Gj8u2sgdewqaOTdS4MjFF2LkXar+4lHoQYJcU5?=
 =?us-ascii?Q?RftDL0x+31PEElKchHEjmugrlV9dJwsGjzb49isFpFpdi/S2Oi3a3O2+E10h?=
 =?us-ascii?Q?smscabbN/p1wP2TGgfZjOozOZU+5cwCovj5CEWQW53cGLeG5PTRpxPYx42+i?=
 =?us-ascii?Q?BSo4yPGkuTyIR6nEKLxJsO3pzPZ68bptHhA9F0CByhv2oCfwLastc14vKsEE?=
 =?us-ascii?Q?NVeq1S0aIZ80fp67P76QrFXGTunla7kiuT6RhOGpyLv2rfROWk0wGS9gR2P4?=
 =?us-ascii?Q?NW166qIWMvULOZE+KC4BTYm29zMiX8H19w8y8Tc5lfIrFXvex/YddLpYaB4b?=
 =?us-ascii?Q?FPlauym+OwfXxvHyScXQhwkLEJ/uDFp/MBTMDc7lX9souSaVfae2I1S1R8/F?=
 =?us-ascii?Q?ZhIljtXLxEQr/bwyhzJPvXQr960MWCctdH22ir5fPICVZf1c0uU15gQfqjj6?=
 =?us-ascii?Q?CxLCZQl5fguCC7BhXDxALTLnxVZnHBmcoQQ/DWSFRVW8+e1cf4hL88hE4d7h?=
 =?us-ascii?Q?CHnTmqqnF7U4hPIkRhdAFihQLT4+EO3wpLnlk5hq6jpaxkNPOXPDVQasXNHT?=
 =?us-ascii?Q?/Bxv1NFvcop6IdfIeXdA2VHXOYDFiO31/5n129kXviShXls6TgXaUs7jXqFK?=
 =?us-ascii?Q?6XrJjSwtreoo29m9zqkc9S5LUoamXPj5+QtjGI2kElU4XL40k98e3kYA8rS1?=
 =?us-ascii?Q?T4ajX7Xcp4saEyDzl4eZLZturXOt2DPj/b9mfB6aFCntvGLrobFC5kfwEQGn?=
 =?us-ascii?Q?SevM2MnVDkiUoYLOrbAGlt1jM86NkSvGEwTH9n+Ir5kxO1MNFduukQ13cmPS?=
 =?us-ascii?Q?7mTPILh/dgEx54FaOj+zJu4iw1Nqe908dUY9aaPxCTIcrD+JxCmldPsptEo5?=
 =?us-ascii?Q?4kZFmVdpYzFRX+bze+3DUr/nwJdBaPVFQDEjMxyOLtk+PdVrhPrscy7F8VPX?=
 =?us-ascii?Q?0BQrJa7co4LrfCJkEhLk96DfAAuV+mdA/1lsk+98kCsTaHdOc/Jdn/lOtOy2?=
 =?us-ascii?Q?m0mwTrk8WP3MBg+GodD7kD4BhyDWsOCeyOieftT+ey14RpJlnsFT+VrZxiYS?=
 =?us-ascii?Q?Xhp7MZCdAYYZjcvPAHCx78iZJGQ8oW6WzyubfC4z+oAmJXfTVFW8VEhboZOc?=
 =?us-ascii?Q?qLree43gAmAV20XwmkUzHnoIJlfENq6qw1nsx3lNdTr+sDjjv2dBS6Ig1nlY?=
 =?us-ascii?Q?j0pCWwqoC+6C+I/m2GNe3CixI6SY5QTjqpI8rACINNi3Q25sq5MmPvnpGAXJ?=
 =?us-ascii?Q?PPVkvMESJ2/dIoZMp0xrzJ5PkA4Kfuli/VFDE4BaRD05ZhBfX7zy1cskv1rz?=
 =?us-ascii?Q?ic1CKL8pcX0+ueZAJVfTdGq2UT3zebol5ajr9RVxaa3XLckXC1IN4crmOpSc?=
 =?us-ascii?Q?cbbpDUXYn6mOgW7eC/tEENAtMLOw1U1XkI+kh6dx6YpyxfePQuS4DBcE8zR9?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	qWkkGoFE3yjQAycR6Zve+tIFE1LaHO+FBD25Yy6x8fAtJLiIQH2gqrec3xq+CGxKbmL1/XkDZNUxPEQdDiss9fb1cQKBjS0cna+1hY9SaQ832CqE4k1uSz3mQRKiLV5qY19idObVJWTPx9nTg/G//rOOHaLpKHskJkOB1f1+vnA/gK4m7RWJeVrFnTU7L36wRVwS096RybglAnBL6EHkIfKitZt7+S2S7OIr6dEXuhaJyGalMu/AoXewqczkEzT408IVG6gMQnlFKz8m/yb4GnNfiS0NcS0WNppJhuXa9qwWt6TAgyy1HptUi46B8k447svtfxvvwNl4ZnieapZOPQwZyY4IgkRKtcGfDopB/PWc9WwHQo3OvX9AUncNz1dAdbz4YgFvXxdggMZ7ApNtqn1l8tfKQ6ntu6ojxUGekBZ/k20XF6H4c5fTbqIP0WZZ1j5qYlry80gNkzDShiUxa7M5qvAraH7MdG3xcq50bdQ1aer8rKYNpsZYG/TR6LYyHk6qg/lHKmNEYU2hlq4aX3W6muz3fCzxhn2yNE0KJOe00U1T3slYrBV8JolTHG4CJsHVU+JfCpd5kBFuxpgb2+8Y5vbtGXwLrKHLH+ti4UU=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52617477-d3f7-424a-1137-08dd15281e78
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3366.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 12:27:01.3374
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rWGTWx2Cq+qynU5LKSp2nQddaOvkwtY5BxTGXbBhtVPBbmv4Ck+XCmNsW3Fz3KpP8XpFxQpZATRmwIYQGCxQGAh27I5OeZsNO7kMIfUC8/s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7208
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-05_10,2024-12-05_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 malwarescore=0 mlxscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2411120000 definitions=main-2412050090
X-Proofpoint-GUID: P_EJIH9gMKEw5s5S97B8GyrNuONrfhfy
X-Proofpoint-ORIG-GUID: P_EJIH9gMKEw5s5S97B8GyrNuONrfhfy

On Thu, Dec 05, 2024 at 01:20:37PM +0100, Alejandro Colomar wrote:
> Hi Lorenzo, Jann,
>
> > Subject: Re: [PATCH man-pages v4] madvise.2: add MADV_GUARD_INSTALL, MADV_GUARD_REMOVE description
>
> We use uppercase after the prefix, so s/add/Add/.
>
> On Thu, Dec 05, 2024 at 10:41:25AM +0000, Lorenzo Stoakes wrote:
> > Lightweight guard region support has been added to Linux 6.13, which adds
> > MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> > call. Therefore, update the manpage for madvise() and describe these
>
> The right amount of inter-sentence space is two.  See this:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/CONTRIBUTING.d/patches/description?id=bcf7d00fa4c7ce270f07d6e347c01b1f1e37580f>
> <https://web.archive.org/web/20171217060354/http://www.heracliteanriver.com/?p=324>
>
> > operations.
> >
> > Reviewed-by: Jann Horn <jannh@google.com>
>
> Thanks for the review!
>
> > Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
>
> Thanks for the patch!  I've applied it, with some minor tweaks.  See
> comments below.
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=bb405ee3f6039226267fb1c6d2cb1fbb18d835bf>

Thanks all seems reasonable.

Just a quick question for future changes - I see you reference
git://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git - but
I've been working against
git://git.kernel.org/pub/scm/docs/man-pages/man-pages.git - is the latter
occasionally synced from the former? Or should I be working against your
personal repo for future changes?

Thanks, Lorenzo

>
> Here's the diff that I applied when amending your patch:
>
> diff --git i/man/man2/madvise.2 w/man/man2/madvise.2
> index adb372424..fa24f6bf6 100644
> --- i/man/man2/madvise.2
> +++ w/man/man2/madvise.2
> @@ -678,7 +678,8 @@ .SS Linux-specific advice values
>  the process can be killed at any moment when the system runs out of memory.
>  .TP
>  .BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> -Install a lightweight guard region into the range specified by
> +Install a lightweight guard region
> +into the range specified by
>  .I addr
>  and
>  .IR size ,
> @@ -686,22 +687,27 @@ .SS Linux-specific advice values
>  .B SIGSEGV
>  signal being raised.
>  .IP
> -If the region maps memory pages they will be cleared as part of the operation,
> +If the region maps memory pages
> +they will be cleared as part of the operation,
>  though if
>  .B MADV_GUARD_INSTALL
> -is applied to regions containing pre-existing lightweight guard regions,
> +is applied to regions
> +containing pre-existing lightweight guard regions,
>  they are left in place.
>  .IP
> -This operation is only supported for writable anonymous private mappings which
> -have not been mlock'd.
> +This operation is supported
> +only for writable anonymous private mappings
> +which have not been mlock'd.
>  An
>  .B EINVAL
>  error is returned if it is attempted on any other kind of mapping.
>  .IP
>  This operation is more efficient than mapping a new region of memory
>  .BR PROT_NONE ,
> -as it does not require the establishment of new mappings,
> -instead regions of an existing mapping simply have their page tables
> +as it does not require the establishment of new mappings.
> +Instead,
> +regions of an existing mapping
> +simply have their page tables
>  manipulated to establish the desired behavior.
>  No additional memory is used.
>  .IP
> @@ -740,12 +746,15 @@ .SS Linux-specific advice values
>  operation is applied to them.
>  .TP
>  .BR MADV_GUARD_REMOVE " (since Linux 6.13)"
> -Remove any lightweight guard regions which exist in the range specified by
> +Remove any lightweight guard regions
> +which exist in the range specified by
>  .I addr
>  and
>  .IR size .
>  .IP
> -All mappings in the range other than lightweight guard regions are left in place
> +All mappings in the range
> +other than lightweight guard regions
> +are left in place
>  (including mlock'd mappings).
>  The operation is,
>  however,
>
> > ---
> > v4:
> > * Reference function chapters as per Alejandro.
> > * Minor rewording as per Alejandro.
> >
> > v3:
> > * Don't describe SIGSEGV as a fatal signal as per Jann.
> > https://lore.kernel.org/all/20241202165829.72121-1-lorenzo.stoakes@oracle.com
> >
> > v2:
> > * Updated to use semantic newlines as suggested by Alejandro.
>
> I've broken lines a little bit more, even though they were correct, just
> for having shorter lines.
>
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
> > index 4f2210ee2..7d682fa40 100644
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
>
> I missed this before.  It was the same misplacement of only.  :)
>
> Have a lovely day!
> Alex
>
>
> --
> <https://www.alejandro-colomar.es/>

