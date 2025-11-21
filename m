Return-Path: <linux-man+bounces-4305-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A7EC77E10
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 09:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1D790364448
	for <lists+linux-man@lfdr.de>; Fri, 21 Nov 2025 08:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C3E33B6F6;
	Fri, 21 Nov 2025 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="FLCYwo8J";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="Fz5yz8jG"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE732F2913;
	Fri, 21 Nov 2025 08:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763713233; cv=fail; b=OwgBv/DT9Vl1RJ2rlmqzjBYJFpOmr/kDq3HqOmWCJlK2zm0L5SUYSV9O+AmLutwsGHsV5JTZgi1aqwMlgaGdknFHLpo16QEBgClPJbtUFXbe7zLhC77ImRGCKG8IDhOZEhShbqs7XapGATsUWwxyb02MfK3Aaih9UP314zsUt6I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763713233; c=relaxed/simple;
	bh=AQTLwndb5QFzotPSCZjOe8EqNK4JNOPop2Vmx5F3piY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=WlNDSc8ho8FhVmK/RmBuFJXZrHuBrtLlf5n1x0bgVp3y7rMVNTQJpMcL6PQdUZfkNCAmw4yvHA8CqgTRSaD31DxHp0swLkEorTtDWQtlbjN+vQyx7Wk4FlRC4rqrzicqE5auhKVjx+vv73DNDHz7osQg4/MuMazi+qtKdbpaYYw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=FLCYwo8J; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=Fz5yz8jG; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Received: from pps.filterd (m0333520.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5AL1uhXW024577;
	Fri, 21 Nov 2025 08:20:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=corp-2025-04-25; bh=4/D2/XQFjTidRiICTo
	Yw5wDrtvsDIHXFxkxctTKh448=; b=FLCYwo8J9MZjZWKL/TyNOE+XcpCecZ3U9a
	hyGsOIfai0q6vojsNNP9h1jjkX6txTs7MifqdqmsRS0QvhFxnGcq/dcgVDAMYuL+
	UEC+k96mn028FFldAzY8wYDRgJSgT+Koc6YBefipB4jxBOc4DGT1gjH6lUyobzt5
	NNdcfPW4St+FHUyTfFU/TLcNpQYv1kYtcP1rYT9PwoOlUOLg1K1iEcZqe7WgEQh6
	ab7yGJojkF19WiWE9x5GY1pDs88H2iKMrtNt2EcuNqvgFuZbNMtTqvUtZckipXd4
	XLFVbvZmg9GzSPMS5sslCcIcVsrVo7p5vhQTP8tcAifUISrTsgjA==
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4aejbbjxwm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 Nov 2025 08:20:18 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 5AL6Aj1T002499;
	Fri, 21 Nov 2025 08:20:17 GMT
Received: from sn4pr2101cu001.outbound.protection.outlook.com (mail-southcentralusazon11012032.outbound.protection.outlook.com [40.93.195.32])
	by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 4aefyd92jg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 Nov 2025 08:20:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dsFr4fUAeqG7QsQf5XDhRPobnZdg1xuA4y2voifaEDsCCs42Pk3Rs8xoAmYmWMwXxSiXv9fG6jn/ygmWTho4nuSW4Y01DSuiuajSen5EJJnX+Jrh7EdDHElExCmEz/5Hik40wDKzHzAIaPv14RvLyy2jhcMo9ZGcxBJC0rjFsvBO/gdvDiiyfJVLfcicfwt+4ff9bKLmIP53IP9yjEWlfg156YBNRnpReEptXwt/6TiT/WXXeb7lFiJ/SMzzbDlMJRmeSRVbnrEWgaokQLw0aut5boOragUeWVL/MsDrIbZeCFn5kpRTIvfXrPJuxQM5LXUmIJluhqkOrQ/nmnoXFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4/D2/XQFjTidRiICToYw5wDrtvsDIHXFxkxctTKh448=;
 b=q+i7+OnyG3Q+V2naAK74MXvcxbNfHIvODTQncMi6d4onWJY3Kkql13APbDulB7tDVAKhY+L4YnzyW9qmgnc+3emX+vA4Go/xRRk8xPNn4Gwo1iEn6cupx2QMOwJZVfKvHGlEtTkdZFsgdY6TXqkeA6dpAvji74R/tv+L/NOn1r/YNzMU9Bat1evvRaJksfU7b4CImI0V4ApiMD3uDyGN3D8WG+Luvlnu5G+F7hYClYzKHSEnveQgber3n6RBHvbZnCd16PmArUF7lMclGFak7MMKVO4xKcqKZgcdu5vnj55T4PrTrwSsNs3pYGvBYTkQyk686xuoAr/xy3Unp/Ayzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4/D2/XQFjTidRiICToYw5wDrtvsDIHXFxkxctTKh448=;
 b=Fz5yz8jGBOGQ9soehVewcV3Fn7HFiC4tVwNG1mMid9h72X9RLuH+qo8fblakOsPWPwA1PP0Qi09HX8SgPRlH41lnPMo1ltOaz9zuIv0ocYPg8Tk37/WopudZ8On/imG9T8w431Evk96VPlJqOTbpnockwg0C+Pmy1Ch0bC6CXC0=
Received: from DM4PR10MB8218.namprd10.prod.outlook.com (2603:10b6:8:1cc::16)
 by PH7PR10MB5674.namprd10.prod.outlook.com (2603:10b6:510:126::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Fri, 21 Nov
 2025 08:20:14 +0000
Received: from DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2]) by DM4PR10MB8218.namprd10.prod.outlook.com
 ([fe80::2650:55cf:2816:5f2%7]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 08:20:14 +0000
Date: Fri, 21 Nov 2025 08:20:12 +0000
From: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, "Liam R . Howlett" <Liam.Howlett@oracle.com>,
        Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>,
        Pedro Falcato <pfalcato@suse.de>, Rik van Riel <riel@surriel.com>,
        linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man2/mremap.2: fix incorrect reference to VM_MIXEDMAP
Message-ID: <0a072ec0-6d9d-4cd3-82e2-9df55ecb9aa7@lucifer.local>
References: <20251121081609.52462-1-lorenzo.stoakes@oracle.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251121081609.52462-1-lorenzo.stoakes@oracle.com>
X-ClientProxiedBy: LO0P265CA0011.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::19) To DM4PR10MB8218.namprd10.prod.outlook.com
 (2603:10b6:8:1cc::16)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB8218:EE_|PH7PR10MB5674:EE_
X-MS-Office365-Filtering-Correlation-Id: 35a3efd2-352f-4c6e-9d59-08de28d6cbd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?huxvEgKtA+KNEDA1PQY8i593GPO+0v/H53krRBnE3SbxPGtNf8/Js5/jjyaJ?=
 =?us-ascii?Q?ioLBsu/2A+vmJ13TjrLicB518Mh59L+kOHBto+/FYX5Fvk5gnvTKbXiYU5Lb?=
 =?us-ascii?Q?tusTvSYbNSantJFPYosPmOAm4KI20gQY2viLPzFkvIZS6ICypHBVe3pQtv6p?=
 =?us-ascii?Q?Zxfl5LgP5ziLXaFkmCtxthZ/GO6N7PjDyweuAzHyBG1EiPzQtw5AMb1ET1zW?=
 =?us-ascii?Q?3tNbv3hqJ+/Q3QdO1hyP2uiJizK18AR56BFiM0MlRI+xNhwtuH66ZvBJ4hxQ?=
 =?us-ascii?Q?3ZRf79OUmShhYC84BxGu7CpeMZC6CoYPh1khb3mgBIXTwQHpyFCSk7Spou/k?=
 =?us-ascii?Q?NsARC2JoJmH57TMJO+4SWNE5brmA4AgC87im3W5UDAv5Y4jHHU2pC+FxRuhL?=
 =?us-ascii?Q?WtNwXieJK25K6ETaWZo65wsEJOYMTBtCPobd03NYCo0HlgI2leNQWO7ZguA/?=
 =?us-ascii?Q?+1YKnzC7YoA1meXPxF/x8TA/4q/6cnEq0ew++eF13phpnxKdwPNT5d0OvkLe?=
 =?us-ascii?Q?SSYVBfXYFt1InzA4t4MKgqxIeUKUCYd2OQG7qhG982uL/DU52N7NQKa6aCuh?=
 =?us-ascii?Q?0bu3TlbTNuV5rxSyiPgf+wFMvkAhaDU2Sr5TCbmh95vrg9JRCZDTRUAqrolj?=
 =?us-ascii?Q?a/YqrPWyhLoRTQE2PYc/PGgP6odW41jgXqW1u462ILshkoJYEgv2WMeqLH67?=
 =?us-ascii?Q?4Ehs+hE2LIXTNidhEaug/4BdVcCBDqK+OxidH5TXc5+sI+IW2TqAAQNaV5m8?=
 =?us-ascii?Q?anSxp5kogWeyhNg6D8hSksZUOldf8KJZ84sZbP6btdr5JcBQzxJhN3rueAsF?=
 =?us-ascii?Q?XFuEy4wB1IzGt1s+encFCHm11VlRy4TlGTW95tcAR9Mf2jvOvTLYVxvq+9OZ?=
 =?us-ascii?Q?L+idhyoa1VAQq2Q7UTDrBDCOAYZy339NackLWL6dYxt66rUgsCAga9Fmv5gH?=
 =?us-ascii?Q?8uk/On5mwbDaGNZJxeBVRU5AvtBkswDn9n/iNoA7I9O3WDQX8mkVmZ5LZgxF?=
 =?us-ascii?Q?DLOeVgQ1vR5/MY/hbFTJd7RuGFG4EOS8dYaIJT9EVLTocs9cyun8BMg/TbiF?=
 =?us-ascii?Q?pgmCU0MYe7+RJAnnlkknM8zTgO2MTEyXJsnvp9WB0OljEaom5DVH8pCDLiCZ?=
 =?us-ascii?Q?D0fHoMOmJnv/uRlWZ+2N899fkIvCaot9HmhyZ147J/rkS+jYUninEu4m7m21?=
 =?us-ascii?Q?VoFNWziOrECpqoOcNvE0vwGMpkBldmCqDqc/zDLRX47nIXovBkufc2+yibcd?=
 =?us-ascii?Q?MJZBRpL56Lei1DkAjIBRewVzWi20hMcDoFd8SGVzmI+KcsSN5EwTmL/lz0OA?=
 =?us-ascii?Q?ZwZDvTrK7A93S8OJYzGzN903FaoMgeptpPX6DYuRlJScxC8VaXIlVNLRT2k5?=
 =?us-ascii?Q?qmpfEVnG3dEhJYbHRiK1vEwv/yH9mxNvLds+RwbWvKvxPnh2rTPVUbXvs2wg?=
 =?us-ascii?Q?jG0MRVYw0dPU681M8cV1+VTsVZLdpgoy?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB8218.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Fn526PxD/jlJceRA2qiEQtvxrQtAExzGDb6knuWpDKrYZrho8DwfO/KCeRoI?=
 =?us-ascii?Q?xJUjON4bDdvEdqkg2zEmxa0LQcjMDrUYlSFzTMlQdWN70GkgRg1FOb03MrZD?=
 =?us-ascii?Q?dL4pVX+5sRzRBQEX0O3+sqfcgbUzMxso0Y1QKk+yRoiRfBdjTqbiW9itg27H?=
 =?us-ascii?Q?4I3bt8e0prUyuQhe3g60qYJmo1Z0siJ3p56Jl9amZiqcFueqY04zyCBpM+du?=
 =?us-ascii?Q?Dugr7NPmlbwzKD3hWcHs2vP1sHKP1j2hvfv9iMzE5oQ8b3z40IQbHd3qM7qE?=
 =?us-ascii?Q?lbMDHBbhm/0il7qJUeO2eMltuuGt894nvhJJQZnC+I6Qas4UEEhA/oY16SfH?=
 =?us-ascii?Q?xGECQuRuIOsdSjgJ5EBT72EqSMqUW39D84ug5fwRPZSARW0OF2EJ/3gSSks/?=
 =?us-ascii?Q?AZASCeBGpqOA6BEX+didCIDtSaO+BA0qoYI2V6REDtheJwxuvsfdjfkN4kDH?=
 =?us-ascii?Q?c2tBptbFMMCKRd0yW2dEnQT+krveB5snqrcFAsLW934pA/MS12RsAHRCyY/w?=
 =?us-ascii?Q?GZghVekn8wWC7gC2RFnmt2nBWVaT6gAmjg/hEx1LeeCu5EXnRkrrnW6bsGXu?=
 =?us-ascii?Q?6JZB8UbdBPbGk/LZFrK+5gZhZiCI645ZAUm3U/7pXkPr5UBfoyBbt1611Q7R?=
 =?us-ascii?Q?OPi1NfXtoa4VARJGwSSprVKBJqpor9B4Cyr/6xF6Kzd9X/ubPdRej+F+CSup?=
 =?us-ascii?Q?HqljLQB1w2rQ+0pEuSw3xn7VuEqAw0iEe4X6qhx1dG8XyLq362PXXXGW8laM?=
 =?us-ascii?Q?V6RsDM85a4iHoftaAMIF/afu4HnT+3Z9Du14xJpqpkghBm++UQu7A4VR8JM8?=
 =?us-ascii?Q?rVA6tEiXcJgfY7I3vdp4wZSjvBb1jggmISGvwmDinVl3DZKQ4TtpBMT2ymiz?=
 =?us-ascii?Q?XtyNW9/6xYQTuW4n827/6iyYxrwVBSC/sj/+iOWCNHJr/sTtwec9DMhH7fzr?=
 =?us-ascii?Q?Nhndy8yzIAJeVW8y151DYUdqe6mTIyjdORHpMzBpDBG8u9awT67VMgQJFECC?=
 =?us-ascii?Q?N7201Nnyox9OzzWjl6ONGUXO90bfi5QBCYgYoyR15eAQ0AxVzYwELCCzOu5u?=
 =?us-ascii?Q?k508iaY5Zr+YYmLgqk/WYaT30yuyvT5/mVvm6i5VRhjPHawmVUOrLF/qum3m?=
 =?us-ascii?Q?0d9KTsUEvoNRdZANaMaHRMXvJh3DxemfVROHQCYlMwyVmyDA8p/XIfBkv4H+?=
 =?us-ascii?Q?vj2FyhzZT6MpZEbQafUAPyt7CBltfglN9D57qdehMUsqf7/xovHFSpbCj6pq?=
 =?us-ascii?Q?Uk+nVFomodo5X4jtDKFmcg6vi4v9apUBHhHu0reoxh+eVvnPyhTrUwKQXO+I?=
 =?us-ascii?Q?2rDYJSd//v3YNG4aFlMCR2+IzbZ2ns7gcbC0k5H8rcEq/ZGMkGHqmpb3tQxP?=
 =?us-ascii?Q?TUkuG5gVpwckotCP+eskjLMr53lOgQpVKuCtkLRxZznloiD4FpOx4EtjKERO?=
 =?us-ascii?Q?HqTcN3aorR1esruN6yVUkcEUMnnFEMwAW8p+Job4pzm8UYI2ahwNhZj35J8W?=
 =?us-ascii?Q?Ne/YON5SEBY6l1qlLmtnxDnGuMS1iamHwfx1shzAlSHtDwXHLROboY+WF44T?=
 =?us-ascii?Q?f1NAY5pIYws2zEHjsDQxc+AKgLnUgEkS0yPeqiWvQMSK3FhhecHQMVUU2Q54?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	FY4npyA9tnVcBK5UGslTrRHZY6+DThg38YARV/eDwvS0e4j1rxE+h7305fSbyRxTWn/kDpSxJWJpNkscVa42Yi29BoIm39zZQbYdZ/W/wIbn0eniaHley0xE7G/0ojlGPadGwnUwzc3kAV4AKAr6Ot+YSz2b60szldXTPqRdP/O2qKdHJYJHoZ+WPdtpgEmVoFEf5I3W+aYNggNKVBxv8Irc8zdcRQZUvv0NTexu5py0+I+j7iUz18FrrvgOa0o8eyJvQYbXR53WPQ7KKoNyuI6zq2VlXrnzBx1gbQjXFgjm7KZcMqCpEyOxJKp88m0OBRgFavrT9eCIIkZi9u0CW7bVXeluglW/4TqYGItwf/p/yLMykCB5DrHoUOMKe5DhvuRmH1I7C6uHqvbajZJbxjLFFQk6vJwg4621d69HwOGCGwrsZuFVI2JgeiipB38ldvk4l+GI4uoPJirufaCT/cR6+Sb9NxJZMsPabK5EdGb1HqeSgW1Tz6IzZ3XT7MH+8emon+jwBP3AClqUpGECo8M4ibxXRzguxg4ARo9xo9RvsrThqWPCHi8otP1iW7wCECLZ07K5RORK2Jbws//1GAxhFmSh2kRHHH4cIY/Wbg0=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a3efd2-352f-4c6e-9d59-08de28d6cbd6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB8218.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 08:20:14.1818
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qv1sB/biD8a9NYIXR7HoNSeFa4OHISI0WAsoUVyrmHQhSZFMVh0Ewli+WqI8N3kuoEFCVOgC7YuJk/TG3XyyKz0RB7p6WKbN8ChxdaCtvEA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB5674
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=932
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2510240000 definitions=main-2511210063
X-Authority-Analysis: v=2.4 cv=BoqQAIX5 c=1 sm=1 tr=0 ts=692020c2 b=1 cx=c_pps
 a=WeWmnZmh0fydH62SvGsd2A==:117 a=WeWmnZmh0fydH62SvGsd2A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=yPCof4ZbAAAA:8 a=v5QfjLzD31iIIDNQR1oA:9 a=CjuIK1q_8ugA:10
X-Proofpoint-ORIG-GUID: BdJM7bGNYVJCbYVrbhnnN2JwdQq4NJRH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE1MDAzMiBTYWx0ZWRfX/wLXZ60NyqwW
 6J2f8yzgNAL6gmLTxdsZvuivhUEkfmnGExbqzmfBQuIxdIYqpJ7l2d6HiP+Ru6Y30PbOdx8AZrW
 eZA0z0eQX5Ck8BXkb19XCcEv4ArB/Q54ddbrze1FyWNOiG0heSuHpWCBu8v3j7zppTiVNZOpgTv
 3wGs6SQgU8LKIkKNiEOS+65yzrWlGn1aZersF6EC4f+YJZWBdzHBbCiNNEYi4rXrA4RbTlu+p9K
 8z3qXz3CtbyRow9ZxTp4FLkvzoy6awJnxAKOWARw8N8w/ZNA45R0L9iutPzqbiibuwJFr2d58SA
 +k/3lA81yKyDlv60ElvkULDBxeRQ4j0na/mWAyQtga67jp5VxrjCCisv3gQezWfa1Sb9NCeftSy
 kLyuEuWg17H/HA9PTIq2U2I7ftaFZw==
X-Proofpoint-GUID: BdJM7bGNYVJCbYVrbhnnN2JwdQq4NJRH

On Fri, Nov 21, 2025 at 08:16:09AM +0000, Lorenzo Stoakes wrote:
> We actually disallow VM_DONTEXPAND and VM_PFNMAP for VM_DONTUNMAP, the
> manpage incorrectly references VM_MIXEDMAP. Correct this.

Of course I ironically typo'd here :)

VM_DONTUNMAP -> MREMAP_DONTUNMAP

:P

>
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
> ---
>  man/man2/mremap.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man/man2/mremap.2 b/man/man2/mremap.2
> index 6a6df8601..cbe960f77 100644
> --- a/man/man2/mremap.2
> +++ b/man/man2/mremap.2
> @@ -206,7 +206,7 @@ The
>  flag can be used only with mappings that are not
>  .B VM_DONTEXPAND
>  or
> -.BR VM_MIXEDMAP .
> +.BR VM_PFNMAP .
>  Before Linux 5.13, the
>  .B MREMAP_DONTUNMAP
>  flag could be used only with private anonymous mappings
> --
> 2.51.2
>

Cheers, Lorenzo

