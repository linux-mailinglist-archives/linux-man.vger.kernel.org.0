Return-Path: <linux-man+bounces-716-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DE63B896E6A
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 13:44:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A8D7B2874C
	for <lists+linux-man@lfdr.de>; Wed,  3 Apr 2024 11:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B81E142E87;
	Wed,  3 Apr 2024 11:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b="2rxGlvnC";
	dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b="UxpVehwX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-edgeMUC221.fraunhofer.de (mail-edgemuc221.fraunhofer.de [192.102.154.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5648134CCA
	for <linux-man@vger.kernel.org>; Wed,  3 Apr 2024 11:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.102.154.221
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712144654; cv=fail; b=k8rqdusDJA4sOnSFtbNwy6IJEfO1DP3A6p75m3/PHUapUt8Xy6t4U5UDH/lh/2NJ6QmiY+p2RWSyT/O+uxGQ6NT45bSC0mGtd8HhVk18c4MmurVWuEgggF5PFZSx6FT/rUl05NBCMdAW6D2fPFMYO7sAz1Tjagy7fKB7SmcQvyw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712144654; c=relaxed/simple;
	bh=wdV4DHan+eQML0DQfPTZ17fF96f/Edfa4xk+O0ZaD1M=;
	h=From:To:CC:Subject:Date:Message-Id:Content-Type:MIME-Version; b=jlKNOPD7RiAlCPLGYAO9xLfJUat7+O2aw+Iy3hIIg2p8LoYzNDC/9cFeZ4i+Ix3ia1LoOB+tz7Fxa39FxZApwrwgCbFkAASIFfvCJlPiCDNwjugKuc5Dz7X50fSeYNdp7hVMNsdgTSkpy4jkgrqyHBZGF0y6k3VHAZP3BQzYlQo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de; spf=pass smtp.mailfrom=aisec.fraunhofer.de; dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b=2rxGlvnC; dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b=UxpVehwX; arc=fail smtp.client-ip=192.102.154.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aisec.fraunhofer.de
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aisec.fraunhofer.de; i=@aisec.fraunhofer.de;
  q=dns/txt; s=emailbd1; t=1712144646; x=1743680646;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=wdV4DHan+eQML0DQfPTZ17fF96f/Edfa4xk+O0ZaD1M=;
  b=2rxGlvnCgpvk11OHp/A81WYm3cGA5cQLal5YecL5EpuWHqFyTL8+N0Gu
   kikkqmwYt+ar1G/YVjVB3M4Ai3kjr520/WhpxEmvARzGFSYZCudE7FBpE
   Yhr1LBJVN7/AUienzP4Jkbj1I6U7yV8LDL2GDYJ7MWsXnABX985z9ra2V
   NRE03dNVWVHDt6PNI5HEITeEEZYd8sgBlRVvCOnkMRC1AtJmnPoBIvsss
   za96+52FiltS1bz6nQ6eNAVb18bx2dRzU7RRdecg0H1/bfaIKxjnNCAv0
   uCi4UEKcptXKa2zFCCFZPLLfBeW4Ra+AwvxY7m6PH1WxfbYwUMVcFrNPU
   Q==;
X-CSE-ConnectionGUID: uXaJEuQ9RLO48Q5/TbR94A==
X-CSE-MsgGUID: 7EufMgs5S4m69V5b0cnFYQ==
Authentication-Results: mail-edgeMUC221.fraunhofer.de; dkim=pass (signature verified) header.i=@fraunhofer.onmicrosoft.com
X-IPAS-Result: =?us-ascii?q?A2EeBABWPw1m/xmnZsBaHQEBAQEJARIBBQUBQIFPgkNvD?=
 =?us-ascii?q?YFfhFaRZ5gvhC+CUQNWDwEBAQEBAQEBAQcBATsJBAEBAwSEf4gLJzgTAQIBA?=
 =?us-ascii?q?wEBAQEDAgMBAQEBAQEBAQYBAQYBAQEBAQEGBwKBGYUvPg2EBoEmAQEBAQEBA?=
 =?us-ascii?q?QEBAQEBHQINKH0PAQ0BATcBKAwCJgIzKw4FgwABgisDMRSyOoEygQGCCgEBB?=
 =?us-ascii?q?rAnGIEjgR8DBgkBgRAug2qEPQGEU4gwgUqBBoE3doRYg0aCRiKHVn6JT4IoQ?=
 =?us-ascii?q?YFZMIIMToElhFJKgQccA11BAWcbJgoZKh8ZGAk8DwwaAhsUDSQjAiw+AwkKE?=
 =?us-ascii?q?AIWAx0UBDARCQsmAyoGNgISDAYGBlwgFgkEIwMIBANQAyBwEQMEGgQLB3EFg?=
 =?us-ascii?q?z0EE0cQgTKKGoIJgTYpgXeEOE6BB0ttAwkDBwUsHUADCxgNSBEsNRQbRgFvB?=
 =?us-ascii?q?5wlAYJvAQU3JhEHEwoiBBM5QYEPBwoMKZJfgyqQCZ83B4I2gWCMDpUdGjOEB?=
 =?us-ascii?q?YNvj1GLToceAS6HWJBcglSJKYF3li6EOQIEAgQFAg8IgXuBfzM+gzYTPxkPj?=
 =?us-ascii?q?iCDeoUUmX52AgEBATYCBwEKAQEDCYI5iDEBAQ?=
IronPort-PHdr: A9a23:Z5SpbxATasBZ+HLWodBRUyQUPEIY04WdBeZowoRy0uEGe/G55J2nJ
 0zWv6gz3xfCCJ/W7/tUhuaRqa3kUHwN7cXk0jgOJZJWXgIDicIYkhZmB8iACEbhK+XtYTB8F
 8NHBxd+qmq2NUVeBMHkPRjcuHSv6z4VFBjlcA1zI+X+AInJiMqrkuu1/s62AU1I0RSnZrYgA
 ByqoFfqq8MUjIB+eIM80QDArXYNWsgE7mRuOV+Vg1PA99+9rrtC1gkVhf877M9HV/fKOoEDC
 JFIBzQvNW84ofbmsxXOVyKjzXsRWWZF93gACQiQ7hq9bpvWgiH6s8dv+3LDL9PHQeE2QD+J6
 btJGRq51z4hKxAgrFnut+dul/cIxXDprUlC05bqbYGKBNZcT4rDU+IKZ0VGBMRJewZrArihP
 5oBULcoJb9GqtGirn418kSlIRarHd7lwWELr1vx+6QG8rwdQCHWzSgGA9FQly2LhtbVKbozV
 LuZ16nJkin9V+IMx2+mxtPDdzQakc3WBZM3K+fqz3MmKDGe1n+gsajYMHTNysk0l2u1ss9CT
 /mW1m4KtBNg+xS0zfwtmI2Xno881UrJshxi0qwNIeGAUn8uMpa0VZpKsCeCMJFqB9kvWHxsp
 HMiw6Yd6vZTHQAPwZUjghPTZPGiTqPSuEulWvyYPDF4g3xoYvSzikX6/Uuhz7jkX9KvmBZRr
 yVDm8XRrH1FyRHJ68aGR/c8tkes0DqCzUbSv8lKO0kpk6rcJZM7hLk2k5sYq0PYGSHq3k7xi
 cer
X-Talos-CUID: =?us-ascii?q?9a23=3Ad6mTgmjG8AU5cjUaB1l6xowoOTJub03U7lrNGh6?=
 =?us-ascii?q?CLUE1GITIDmOawvI4up87?=
X-Talos-MUID: =?us-ascii?q?9a23=3AzNqJcg1ygeThbtZjaL5MisHsVzUjvImzBmUCisg?=
 =?us-ascii?q?958zaZBItMW+WihqGe9py?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,177,1708383600"; 
   d="scan'208";a="559410"
Received: from mail-mtadd25.fraunhofer.de ([192.102.167.25])
  by mail-edgeMUC221.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2024 13:42:54 +0200
X-CSE-ConnectionGUID: ZAi/60Q0QHK7bdnjKysxKw==
X-CSE-MsgGUID: LfUhiziLSUaTgAp/69BM5Q==
IronPort-SDR: 660d40bf_2mQOPZI0Nl3mK1jIC6R+cWE4YIGbxjThceTX69kyUvVwxhO
 3b7p1iQcA/pBQywjKcn/3aaHc4lw0547gD2HAqQ==
X-IPAS-Result: =?us-ascii?q?A0DqBQDcPw1m/3+zYZlaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?RyBKoFxUgc+Kg1YgQeEVYNNAQGFLYZKgiE7AZdzhC+CUQNWDwEDAQEBAQEHA?=
 =?us-ascii?q?QE7CQQBAYUGiAgCJzgTAQIBAQIBAQEBAwIDAQEBAQEBAQEGAQEFAQEBAgEBB?=
 =?us-ascii?q?gWBChOFbQ2GXBYRDwENAQEUIwEoDAImAjMHJA4FIoJeAYIrAzECAQEQpVUBg?=
 =?us-ascii?q?UACiyKBMoEBggoBAQawJxiBI4EfAwYJAYEQLoNqhD0BhFOIMIFKgQaBN3aEW?=
 =?us-ascii?q?INGgkYih1Z+iU+CKEGBWTCCDE6BJYRSSoEHHANdQQFnGyYKGSofGRgJPA8MG?=
 =?us-ascii?q?gIbFA0kIwIsPgMJChACFgMdFAQwEQkLJgMqBjYCEgwGBgZcIBYJBCMDCAQDU?=
 =?us-ascii?q?AMgcBEDBBoECwdxBYM9BBNHEIEyihqCCYE2KYF3hDhOgQdLbQMJAwcFLB1AA?=
 =?us-ascii?q?wsYDUgRLDUUG0YBbwecJQGCbwEFNyYRBxMKIgQTOUGBDwcKDCmSX4MqkAmfN?=
 =?us-ascii?q?weCNoFgjA6VHRozhAWDb49Ri06HHgEuh1iQXIJUiyCWLoQ5AgQCBAUCDwEBB?=
 =?us-ascii?q?oF7JYFZMz6DNhM8AxkPjiCDeoUUmVFDMwIBAQE2AgcBCgEBAwmCOYgvAQE?=
IronPort-PHdr: A9a23:0f9PjR/6TxWsaP9uWWy9ngc9DxPPxp3qa1dGopNykalHN7+j9s6/Y
 h+X7qB3gVvATYjXrOhJj+PGvqyzPA5I7cOPqnkfdpxLWRIfz8IQmg0rGsmeDkPnavXtan9yB
 5FZWVto9G28KxIQFtz3elvSpXO/93sVHBD+PhByPeP7BsvZiMHksoL6+8j9eQJN1ha0fb4gF
 wi8rwjaqpszjJB5I6k8jzrl8FBPffhbw38tGUOLkkTZx+KduaBu6T9RvPRzx4tlauDXb684R
 LpXAXEdPmY56dfCmTLDQACMtR5+Gm8WxxhDRDjJyyHwXpLcoAih7/hj6SXLP9T9ZrYoe2Wnv
 vhybgPGkXs/DgMS7nqC2akSxKgOnQK5mRF/3L74QrC8KtRPboHyeokYXUZrdMZqSnxQDNzhR
 pNWEe9ZYu99lNaivH8RqgKDDwLyR8rLzRlBul6u4fwaw/UFNx3Fgit5QPgNkGnJjdCuGLwSU
 L+p8pHZlyubNN0N0jLZ07j0KEgA5quhZrRKePXjkhEFJxvhs1rX8ZDIBheW+LkokXKA1rdge
 P29mjcLsApKoyqrmN8ho5bTi8Us0ULuzSFF+JwEcI7wWAt6e9miCJxKq2SAOpBrRt93W2hzo
 3VSItwuvJe6eG0P1J0L60SCLfKdepWO4hXtWfzXLTorzH5mebfqnx+p6gDg0ezzUMCozUxH5
 jRIiNjCt30BllTT58GLR+E7/xKJ1yyGygbT7e9JOwYzk6/aIIQm2bk+itwYtkGrIw==
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:+SQ3+K9FHhrVZt/h9dxuk+AmI+orL9Y04lQ7vn2ZKCY0TiT7//
 rFoB1/73LJYVkqKRUdcLy7VJVoI0mzyXcd2+B4VotKNzOGhILHFu5fxLqn6ybhECW72/JH3a
 xkf4R7AN30SWVghcz57BKZHr8bsby62ZHtrfzfxH8oaxprZaFm5xp4DQjeOlRuQQlNDYc4Ep
 303LskmxOQPVwNbs+yQl8fX+bCoNXXlJXpJSULDxsigTP+7g+V1A==
X-Talos-CUID: 9a23:j4kesm2owfW2kGe2WxRL2LxfKOkkNSOF9S/pA2znA2pvSp6EUk+z5/Yx
X-Talos-MUID: =?us-ascii?q?9a23=3AqW3whw/PNNrprOR7paIpkISQf+Nm3qSvGkEpqqg?=
 =?us-ascii?q?Ph8atLWsuah240Q3iFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,177,1708383600"; 
   d="scan'208";a="202999897"
Received: from 153-97-179-127.vm.c.fraunhofer.de (HELO smtp.exch.fraunhofer.de) ([153.97.179.127])
  by mail-mtaDD25.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Apr 2024 13:42:55 +0200
Received: from XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) by
 XCH-HYBRID-03.ads.fraunhofer.de (10.225.9.57) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32; Wed, 3 Apr 2024 13:42:54 +0200
Received: from DEU01-FR2-obe.outbound.protection.outlook.com (104.47.11.168)
 by XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32 via Frontend Transport; Wed, 3 Apr 2024 13:42:54 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C9JqCIGlSFrg4NZenvg/Qfbez5JnrGw3Aj/AYPgN7bHNfccyDRfqDRMZhz6Ok/Pgk5KexezCqRG8L8tVnPI9ow0UgPf4XMr3eGyv8dFY+799YqWSbu2RryDT4hkqBHVnWH6dzoVft7fDJ/A5PWMjFazAsVVdFVuVrgDt4R7KYgd4jc4+rS0+EGwtzjwtd/JqjXPriK5AmrhfJx1YpQqdS4WspJGdpuO1EJLxWW2GDPPTcSBFntdg7dlT++xErzH0Rxo9c49J8pykPwox1MHHAg4EFSqruab82k+r9OmgxnH0oVFJ7CjY+8EzrrBFX4jkyFFnCnx7gze2OvtU/PolLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jc/XdOXbhmEzK31zvYd9jqcCntJ9m97qNtFq4PQUCvs=;
 b=C0KOckBzPe0wYml9D4KAelZjhp5u5MoXgrrZtD6VXfgQhUfBh/1WWHcWFVjEsW3zz95qcBH1uYBgHB1pYjnb73xGR5tZC+xkxdehSU5K6E5qqKxZQuVYVpEg1OgQczrbKsX6EXhli7L9dJ/WRqeN8qGlpxeUS+DHHruUhfYYoSEdkJU4InZd9Gaj2+0RFnzEu4R5qFRZGImRqUBZ/1OxFTOt/jVHDdRdrbEw3yErZr+s2SyxBxch+fUl5/KGUY9P4ZQE4EX398RlZhBKF7OkDano4ml5CEwhwnSqejigE5EFYX0T6ni3eQ64q7pIvJub6TUHZoGMU/Aw6t/wNMyz8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jc/XdOXbhmEzK31zvYd9jqcCntJ9m97qNtFq4PQUCvs=;
 b=UxpVehwXDJYAvFYxJGo2jpDBBhSu8yf75Ap1vm07aMS77sLwoqUbc6+ALoNaTI0T9HxyLNtk6O17BkHuuIm3Dshi7tVPy2v03F3cmLSXT20I/2ESnRaWZ30BXpLUg/0tEQLkF5MJrsQ5hEwzy1DscSizl6peAwre/QszBPlTPrY=
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:50::14)
 by BE1P281MB2897.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:69::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Wed, 3 Apr
 2024 11:42:51 +0000
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38]) by BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38%3]) with mapi id 15.20.7409.042; Wed, 3 Apr 2024
 11:42:51 +0000
From: =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>, =?UTF-8?q?Michael=20Wei=C3=9F?=
	<michael.weiss@aisec.fraunhofer.de>
Subject: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Date: Wed,  3 Apr 2024 13:42:23 +0200
Message-Id: <20240403114223.42696-1-michael.weiss@aisec.fraunhofer.de>
X-Mailer: git-send-email 2.39.2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR2P281CA0061.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::18) To BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:50::14)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BEZP281MB2791:EE_|BE1P281MB2897:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CYViF7GEQkQNbZTpnVDMjrjPt7suqfMpw8t0ffn3Btr0AAv7xMQq1PWTNGsuNVaSAEPEgmfAI/iHgqGzIkeOVL4RQqzJsG/XgDKUOeEluhU9SoIYHAZaJfYI1hOdbC0hLf+VgikJT5PVFlvF4bNbJDp0IO6p9C+wor0nTRqjLTVQRt/83yLEQflMyEvZ6V3I6h5j7IolwDZUFymx3Klswu3UV9xTnCdbo1OmOZJhDhYHcenMIuBXxd5AhQZl3xvTOEQ3VRxIpAc2BgcsXt/7Mk8zhp2N2cHYVwp0THU6S7r7xlhWg7nVDibL8mR2Af8IUBTjcVYO1bVbDpMxZ1thCndzQRnx5e4gA4KtnFRs+6CEOXUfiYJfawHmRw17VmAZ1utkxqXEDx+Dibz98hwFQYzz1y8Oz4OpABFesPkz3PmZ5nIir+kFS41OUF2lIa7imDCVsWR08AFQl/hENEuKg13ogjaQwe8liF8O5xmmRELmSlllfGEkKU23cl0g+akq2OUtRghuFz0xdTkewknulsRgNWjQ5qVfkPbhFmgj67Db+oieSjlMWHbn3OgQgy58VJP9KYjpSPHgWDo6staDoHW6ryWUzj5dVj6iiJDRsIM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWVrR0lPLzkvT1psOFlsM3F6L1E0L1Vwek1jd0xIa051OFZnejlDL2NqMGgv?=
 =?utf-8?B?ZXZ5MVY0RlMzYmp0UmFxQ0s2NEZNc3gxTUVZbTNic0pXVVBVT3c0K3JPWExK?=
 =?utf-8?B?Wi80WUNlZFBUdVllN3lLeXVBMi9oT29TcEZ5VVBkbzMwZEF5ekYzUWx3TUp1?=
 =?utf-8?B?c2hoZENaZDRTakkxUlpsWkM5MFZmT3lScGg5SmFtVk01VkFsYkp3VUE3VGNy?=
 =?utf-8?B?bEFrOWJqV3pqSXB6Qzh0eG9tWURvZ05NNm1PeTFjR1p5Y2hqR3pNOS9SRjUz?=
 =?utf-8?B?dXFVVC9rR1BIWTk0UHlxcDVmN3VDZERYdjV3UUlQOWRYOTIyd3A4UHVTbjAz?=
 =?utf-8?B?VWhZNyt5a3lhallubWpXYXFodVBSNnN5czA1TXB6OFg1MVdJTDB3VDBWYUJN?=
 =?utf-8?B?ZlVHNFczYXIzNG9uNldyd3Y4QVZtWHNxbHdoZmVVeWliK2lMc0xCVmJlRHNZ?=
 =?utf-8?B?SHR0TndxbHF2UEd4Yzk2MzlvNVhCMWRPN2VCVUF4NHY4L1IyTFJwYXRHd2RM?=
 =?utf-8?B?eXB0Vm9GR3NDZWdEekF6VVd2SmRiTXlOU1N6SUY2RGM1RVlOL3hxVVJqc0lm?=
 =?utf-8?B?VWYxUjlpWWI4SytrbDJHWVpvQ1RtM3o2czFqd2daRmNqUENUZnRKUUR1YlVs?=
 =?utf-8?B?T1lmY2o1WnY5WjRpK3JBWGlXcGkyV0hFOHhsWUlVdkxqdHdPLzZjQ3ltaTE3?=
 =?utf-8?B?VFZHTk1VSVdYQmFMUG9sOG9BNjBieFZzR29GNW9lTGI1QmpHeG1tRm9iRits?=
 =?utf-8?B?M1lQcDNESGR4bzM0bnZieHU4VyswdDFXS1ZnR2hOK08vSFEwR0RJeWFmdzl5?=
 =?utf-8?B?OVdNWmNMYWF0azlOc3RKM2hySFdveWkralROb1ZHU3ZsV2pPMm1FOVQ5RGlw?=
 =?utf-8?B?TVRiQStiYVRzY3JaczlNMzNMdTF0aUZXaGY2eHBibGtsVkR0Q1hkTVlSODVP?=
 =?utf-8?B?c0xUYVdrN3VvWDQweWRRbzhBajFOOU9KNzQ5WkI0TUMvWTZqRTJBRHVrMVZl?=
 =?utf-8?B?bzcrN0pRMlc5b1ZGNUxLSEJqWFZIbXM5aXdvVlNiOUZPRG5SSkJHWEhFUXhu?=
 =?utf-8?B?M3VZUkhYYXhqSG9WdjQvZmN0OUFrRzR0UW5TNFl2djlCcDhNME1xRlRkSVNX?=
 =?utf-8?B?cW1nSWxhZkNGOEVoYmk5WXY4cGdIRDlTaFV0VjF1UzVHdjZsRDVlKys3Rnh3?=
 =?utf-8?B?dVFSTGVFM25PYUhQVWtkcFhabDRTeEdYT2hzbEl2eS9DaGZEYVRPcGR2TnJJ?=
 =?utf-8?B?Y3Nkd29CKzk1SVc3QTNmU3ZSUXB4YlI2KzVsZnpycDlFNUVSbjh0Z3ZUVmVr?=
 =?utf-8?B?ZThBMGxSSWtXWnptdlozc2k1YTdYQTViUUZOTEdJbmFzcXlvY0diZStMY2Rm?=
 =?utf-8?B?WkZJT3VidFpoalpERHBERysvWUl2TzNMbmk0RHJPZHZLczliRjJmWFlST1N2?=
 =?utf-8?B?NFhEN0o5cnNHa3JibUNtYk11MGlNZ0ZHWFhZRUFrYlFjTFpKelVneGVCT0hs?=
 =?utf-8?B?bDRmTjlhdHU3ODdUTk4vY3ZCenJtZkJYN3NsVENDRmlkSks1akZsSXprdktY?=
 =?utf-8?B?WkRJdVpSOEhZbU1VU0NhR1lyNFJMUWNXMnVqamY3TXEwdnVPK2pkWENhaXUx?=
 =?utf-8?B?dXZZOHBiVTh0SWtYV3VMeGlTeFB3KzI1RzQ3TGxvcE56S1lUWTVPZVc5cXc4?=
 =?utf-8?B?bFYzTG8rYVk3cDI0dkJuV0s4Ujl6UEVrWExuZnRPYnhVZk1tZjNJcjZIUld3?=
 =?utf-8?B?ckNYNVRmMEFNMHorWVBac0w0L09zb2lUcUZ3cGJIZUx5K3dIWEk0eXQydUF5?=
 =?utf-8?B?Z010K3BYSktCdDR5YWdiMFhDTkgyN3dLcFlpKzI3ODRWemR1M0tCbWRBYTM3?=
 =?utf-8?B?ckVVcFI0L3VRZENlSU81R3Y5ckZaa1RsWklsbXdKWkh1Q1BjWWxLN2UxYndy?=
 =?utf-8?B?RUtGWnZxNE5XY1hvcWFaekcrejJzYVpEWDArMVFpMDg5TVlaZVlnUVROQ1pC?=
 =?utf-8?B?U2hJWFN4YVdzblZLVENTL0FaaGlFbXcwaUs4Q2Q5MytqemcrZXNRTE4wMEZs?=
 =?utf-8?B?UFpJQ3hSazQyRnRGUXJsRm1lZC85elYxUjJ0TStVNHUxNUxCVU9iOHRnT2h1?=
 =?utf-8?B?UTN6d3JKTzBuSDhSSEROVnNNa1dUWjJmZm9lV3A3WWgrcTJJbzZvZU9HNlJw?=
 =?utf-8?B?alp5WjhhSW1iQnNSTjB5UVJ5THczUEtZRmNxVkhFMTFkMFZPOGI1RGVYd1d2?=
 =?utf-8?Q?dmBo4SgACeVmgZ7lSAMNB/WtMVq9NM4r2KUVJChosg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80c32aea-7ff6-4554-1201-08dc53d33103
X-MS-Exchange-CrossTenant-AuthSource: BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 11:42:50.6258
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JS/fs99uhH06wrYpn3KaKVjH/n/y8fLqLNO6xT0wH5KtVMO3f3ItXrKyf1Nt4AkIFnbYbsAOqqnaWfP39FecyIIei9Xhsx0k6q3znPBqrjTbBHKbjRPrTVX7rk+bkVa6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB2897
X-OriginatorOrg: aisec.fraunhofer.de

finit_module() supports the MODULE_INIT_COMPRESS_FILE flag since
Linux 5.17. See commit b1ae6dc41eaaa ("module: add in-kernel support
for decompressing")

During implementation of a secure module loader in GyroidOS, we
wanted to filter unsafe module parameters. To verify that only the
two documented flags which are disabling sanity checks are unsafe,
we had a look in the current kernel implementation.

We discovered that this new flag MODULE_INIT_COMPRESS_FILE was added.
Having a deeper look at the code, we also discovered that a new error
code EOPNOTSUPP is possible within newer kernels.

The inital commit only supported gzip and xz compression algorithms.
Support for zstd was added in Linux 6.2 by commit 169a58ad824d8
("module/decompress: Support zstd in-kernel decompression")

Signed-off-by: Michael Weiß <michael.weiss@aisec.fraunhofer.de>
---

Changes in v2:
- Update formatting (Alejandro)
- Split EINVAL into two entries (Alejandro)
- Fixed error in EINVAL, s/CONFIG_MODULE_DECOMPRESS/MODULE_INIT_COMPRESSED_FILE/
- Fixed incomplete description for EOPNOTSUPP (Alejandro)
- Link to v1: https://lore.kernel.org/r/20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de/

---
 man2/init_module.2 | 50 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/man2/init_module.2 b/man2/init_module.2
index 95917a079..133d82b53 100644
--- a/man2/init_module.2
+++ b/man2/init_module.2
@@ -107,6 +107,10 @@ Ignore symbol version hashes.
 .TP
 .B MODULE_INIT_IGNORE_VERMAGIC
 Ignore kernel version magic.
+.TP
+.BR MODULE_INIT_COMPRESSED_FILE " (since Linux 5.17)"
+.\" commit b1ae6dc41eaaa98bb75671e0f3665bfda248c3e7
+Use in-kernel module decompression.
 .P
 There are some safety checks built into a module to ensure that
 it matches the kernel against which it is loaded.
@@ -136,6 +140,39 @@ If the kernel is built to permit forced loading (i.e., configured with
 then loading continues, otherwise it fails with the error
 .B ENOEXEC
 as expected for malformed modules.
+.P
+If the kernel was build with
+.BR CONFIG_MODULE_DECOMPRESS ,
+the in-kernel decompression feature can be used.
+Userspace code can check if the kernel supports decompression by reading the
+.I /sys/module/compression
+attribute.
+If the kernel supports decompression,
+the compressed file can directly be passed to
+.BR finit_module ()
+using the
+.B MODULE_INIT_COMPRESSED_FILE
+flag.
+The in-kernel module decompressor supports the following compression algorithms:
+.P
+.RS 4
+.PD 0
+.IP \[bu] 3
+.I gzip
+(since Linux 5.17)
+.IP \[bu]
+.I xz
+(since Linux 5.17)
+.IP \[bu]
+.I zstd
+.\" commit 169a58ad824d896b9e291a27193342616e651b82
+(since Linux 6.2)
+.PD
+.RE
+.P
+The kernel only implements a single decompression method.
+This is selected during module generation accordingly to the compression method
+chosen in the kernel configuration.
 .SH RETURN VALUE
 On success, these system calls return 0.
 On error, \-1 is returned and
@@ -223,10 +260,23 @@ is too large.
 .I flags
 is invalid.
 .TP
+.B EINVAL
+The decompressor sanity checks failed,
+while loading a compressed module with flag
+.B MODULE_INIT_COMPRESSED_FILE
+set.
+.TP
 .B ENOEXEC
 .I fd
 does not refer to an open file.
 .TP
+.BR EOPNOTSUPP " (since Linux 5.17)"
+The flag
+.B MODULE_INIT_COMPRESSED_FILE
+is set to load a compressed module,
+and the kernel was built without
+.BR CONFIG_MODULE_DECOMPRESS .
+.TP
 .BR ETXTBSY " (since Linux 4.7)"
 .\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
 The file referred to by
-- 
2.39.2


