Return-Path: <linux-man+bounces-707-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C18A6891CCE
	for <lists+linux-man@lfdr.de>; Fri, 29 Mar 2024 14:59:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC4CAB26B7E
	for <lists+linux-man@lfdr.de>; Fri, 29 Mar 2024 13:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDEF140E4D;
	Fri, 29 Mar 2024 12:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b="qgbxRALr";
	dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b="LGW7HQGO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-edgeBI204.fraunhofer.de (mail-edgebi204.fraunhofer.de [192.102.163.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B47113A3EB
	for <linux-man@vger.kernel.org>; Fri, 29 Mar 2024 12:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=192.102.163.204
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711716196; cv=fail; b=n6GlLyZxIlUokkeF+eM231FprAqsQ/8sLvlpnVs+L2WFMwGHV3jXMXWEEKXIYcF2jb7I7l6S6+gY5prOQWy6hMXW4+WiqyATIfir2b5FS//+O/S9d1vYz4wiK3IBu66a7kJj3+yAPUfAVKgZbXq5HTsd7Z/74iPkmdZbIbRdYQM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711716196; c=relaxed/simple;
	bh=sR4Yl4m6CzK7MFAXFpfj1TLmZBrQbXOtTd8HG6OsOJo=;
	h=From:To:CC:Subject:Date:Message-Id:Content-Type:MIME-Version; b=KGSDlW6Eye8SzriPh0ankUXQ7bALnRrN1XZBLqRMy0AlDCCznN7IHSWwRuRZuR4mpRB/e/ZgBT+XdRqElTp+fCkUFdS+ULbmMRU0znpJ72dwkzS/MBAxQtXB38F3SCtZM4J019E3o/fvQqnIVIdEvxXQ/+UnEga22ZJ8Lak7wH8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de; spf=pass smtp.mailfrom=aisec.fraunhofer.de; dkim=pass (2048-bit key) header.d=aisec.fraunhofer.de header.i=@aisec.fraunhofer.de header.b=qgbxRALr; dkim=pass (1024-bit key) header.d=fraunhofer.onmicrosoft.com header.i=@fraunhofer.onmicrosoft.com header.b=LGW7HQGO; arc=fail smtp.client-ip=192.102.163.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aisec.fraunhofer.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aisec.fraunhofer.de
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aisec.fraunhofer.de; i=@aisec.fraunhofer.de;
  q=dns/txt; s=emailbd1; t=1711716190; x=1743252190;
  h=from:to:cc:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=sR4Yl4m6CzK7MFAXFpfj1TLmZBrQbXOtTd8HG6OsOJo=;
  b=qgbxRALrxNQsMj6JfE82wZIiPMYEUmdwCrQucySlHlIvHXVkauKoTvZM
   HmPrEudGtTfE7ap516EkeS4GDQPtnRyhQZKpzC+c1aMye+f6egGzkyyhq
   NC2+BkcPlbHLIXtlcPshZslLqeJsp8uv3yVsmxvcO0sPdM1e1D3OdifpB
   u7U8xOmDEiSXsS7zxlrq6zmKMVGq9OE7zr1ugpWT/Y00n5GnglYCJ4ySl
   IKaQORs/KGcayhx7l1wGCGmTG2IyJr/TCztlkihqN+CWz487FPAckTtjM
   dNCJoq+ywVcUMk0JN2pyzN7yk9DiG/kbBkGOYe+A7HopFJkZ4hEqiycbP
   g==;
X-CSE-ConnectionGUID: PFgcAvekQiqnAWr6eRUzaw==
X-CSE-MsgGUID: SBp8qVdaQa+WzMwKHI52lw==
Authentication-Results: mail-edgeBI204.fraunhofer.de; dkim=pass (signature verified) header.i=@fraunhofer.onmicrosoft.com
X-IPAS-Result: =?us-ascii?q?A2ElAwA7tgZm/3maZsBaHgEBCxIMQIFEC4I5gluEVpFnm?=
 =?us-ascii?q?C+EL4EsgSUDVg8BAQEBAQEBAQEHAQFEBAEBAwSEf4gJJzQJDgECAQMBAQEBA?=
 =?us-ascii?q?wIDAQEBAQEBAQEGAQEGAQEBAQEBBgcCgRmFLz4NhAaBJgEBAQEBAQEBAQEBA?=
 =?us-ascii?q?R0CNX0PAQ0BATcBKAwCJgIzKw4FgwCCLAMxsVuBMoEBggoBAQawJxiBI4EfC?=
 =?us-ascii?q?QkBgRAug2qEPQGEU4gwgUqBBoE3doQKToNGgkYigRd/gw4pgniFc4pLgipBg?=
 =?us-ascii?q?VkwgwiFOkqBCBwDgQVrBRYQHjcREBMNAwhuHQIxOgMFAwQyChIMCx8FVANDB?=
 =?us-ascii?q?kgLAwIaBQMDBIEuBQsaAhAsKAMDEkkCEBQDOAMDBgMKMS5PQQxQA2QfGRgJP?=
 =?us-ascii?q?A8MGgIbFA0kIwIsPgMJChACFgMdFgQyEQkLJgMqBjkCEgwGBgZcIBYJBCMDC?=
 =?us-ascii?q?AQDUAMgcBEDBBoECwdxBYM9BBNHEIEyihaCCYE2KYF5hDhLgQkDCQMHBSwdQ?=
 =?us-ascii?q?AMLGA1IESw1FBtGAW8HpxkBPCYRBxMKJhN6gQ8HCgwpklyDKpAJnzcHgjaBY?=
 =?us-ascii?q?KEpGjOHc49Ri02HHgEuh1iQXKQghDkCBAIEBQIPCIFkghYzPoM2UhkPjiCDe?=
 =?us-ascii?q?qJPdwI5AgcBCgEBAwmCOYY1gXwBAQ?=
IronPort-PHdr: A9a23:4/TyNRb9Xzqiah4fEYGfcP7/LTF+0YqcDmcuAucPlecXIeyqqo75N
 QnE5fw30QGaFY6O8f9Agvrbv+f6VGgJ8ZuN4xVgOJAZWQUMlMMWmAItGoiCD0j6J+TtdCs0A
 IJJU1o2t2ruKkVRFc3iYEeI53Oo5CMUGhLxOBAwIeLwG4XIiN+w2fz38JrWMGAqzDroT6l1K
 UeapBnc5PILi4lvIbpj7xbSuXJHdqF36TFDIlSPkhDgo/uh5JMx1gV1lrcf+tRbUKL8LZR9a
 IcdISQtM2kz68CujhTFQQaVz1c3UmgdkUktYUDP7ETEToz9rxLVqONn2xmZDOv6F7MEBzmM7
 LdLYUTWmQg9MjA9qT7QzcZ/vqtQ9UHExVR1lqr7X961DdVZX6+GTOhLT2MRVNt/WRBLHLGEb
 bIoUNMAGdZYorfNlUlThgGdXAWuLsXAwGJTniTs3rVm/P4BFlub5wdnJ/M3tWzekPfUDrc3a
 Li2zoT4yWTZVd9t+hyi1qTyX04jn7axbbFtdPX+1kIpVDre0WzPiYW+PDmP8rRT9GyjtdZrX
 sishDAE6B5T4We33MgMhJDLqYkr6VnB9AhQnoA7Ida7bWgrMYv3WIsVtjudMZNxWN9nWWxzp
 SImn6UPooXoFMBr4JEuxhqaZvCIfqKpuEq/EuiLKCp+hHVrdaj5ixvhuUSjy+ipTsCvyx4Kt
 StKlNDQq2oAnwLe8MmJS/Zxvw+h1D+D2hqV67RsL1o9iKzbLJAs2Pg3kJ8Sul7EBSj4hAP9i
 6r+Sw==
X-Talos-CUID: 9a23:Z0nvz2MeWw6vRu5DYAdo/2cKF8Mcc2Tb5UjKfUKCNHRgV+jA
X-Talos-MUID: 9a23:hqfP2wQxh++Ptp7eRXTXrikyLflk6p2nS38ftIolm+jZbyhvbmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,164,1708383600"; 
   d="scan'208";a="534976"
Received: from mail-mtamuc121.fraunhofer.de (HELO mail-MUC121.fraunhofer.de) ([192.102.154.121])
  by mail-edgeBI204.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2024 13:41:56 +0100
X-CSE-ConnectionGUID: hmhOaWGsSaS7WnAuex3F0Q==
X-CSE-MsgGUID: e/LwF3SsSPmUT4Ysi5nATw==
IronPort-SDR: 6606b713_1WvaL1kgOoQkYJ/yWFsordqZLsqcQOA2x6TAOm4fLVhw5B1
 PfDPYDWGTb8Zy0PRHRIO+cAe1YvbTbbJKeotg5g==
X-IPAS-Result: =?us-ascii?q?A0B1AAA7tgZm/3+zYZlaHQEBAQEJARIBBQUBQAkcgRYIA?=
 =?us-ascii?q?QsBgWZSBz6BD4EHhFWDTQEBhE5fhkqCITsBl3OEL4EsgSUDVg8BAwEBAQEBB?=
 =?us-ascii?q?wEBRAQBAYUGiAYCJzQJDgECAQECAQEBAQMCAwEBAQEBAQEBBgEBBQEBAQIBA?=
 =?us-ascii?q?QYFgQoThW0NhlwWEQ8BDQEBFCMBKAwCJgIzByQOBSKCXoIsAzECAQGkcgGBQ?=
 =?us-ascii?q?AKLIoEygQGCCgEBBrAnGIEjgR8JCQGBEC4Bg2mEPQGEU4gwgUqBBoE3doQKT?=
 =?us-ascii?q?oNGgkYigRd/gw4pgniFc4pLgipBgVkwgwiFOkqBCBwDgQVrBRYQHjcREBMNA?=
 =?us-ascii?q?whuHQIxOgMFAwQyChIMCx8FVANDBkgLAwIaBQMDBIEuBQsaAhAsKAMDEkkCE?=
 =?us-ascii?q?BQDOAMDBgMKMS5PQQxQA2QfGRgJPA8MGgIbFA0kIwIsPgMJChACFgMdFgQyE?=
 =?us-ascii?q?QkLJgMqBjkCEgwGBgZcIBYJBCMDCAQDUAMgcBEDBBoECwdxBYM9BBNHEIEyi?=
 =?us-ascii?q?haCCYE2KYF5hDhLgQkDCQMHBSwdQAMLGA1IESw1FBtGAW8HpxkBPCYRBxMKJ?=
 =?us-ascii?q?hN6gQ8HCgwpklyDKpAJnzcHgjaBYKEpGjOHc49Ri02HHgEuh1iQXKQghDkCB?=
 =?us-ascii?q?AIEBQIPAQEGgWQ8gVkzPoM2TwMZD44gg3qiT0QzAjkCBwEKAQEDCYI5hjWBe?=
 =?us-ascii?q?gEB?=
IronPort-PHdr: A9a23:WU0MtheJjYWss7Ck2m48+biklGM+/d/LVj580XJao6wbK/fr9sH4J
 0Wa/vVk1gKXDs3QvuhJj+PGvqynQ2EE6IaMvCNnEtRAAhEfgNgQnwsuDdTDDkv+LfXwaDc9E
 tgEX1hgrDmgZFNYHMv1e1rI+Di89zcPHBX4OwdvY+PzH4/ZlcOs0O6uvpbUZlYt5nK9NJ1oK
 xDkgQzNu5stnIFgJ60tmD7EuWBBdOkT5E86DlWVgxv6+oKM7YZuoQFxnt9kycNaSqT9efYIC
 JljSRk2OGA84sLm8CLOSweC/FIweWUbmRkbZmqN5hGvYIfqvjbDmfR0wiqqPvzQQeo3aWqvw
 aR7aDaztjYoDTs39DiIjYt6g5BSq0fywn43ydvwT77KFMNRWYLRJuIhFGBIDsxMeSJ9CJ2OV
 4k2KLU4PMJor4TDl2kc8DCkJlCgBsnJ5TUVnWetx64ij8s7MQacgTcrWOoviXHMpunXFZ0Cd
 Nntz6vl/TGSdcl64hTWt7bkSD1/o8/LYIJzbM/u5lYkEUD8lQqp9qzsZDCfzMBd7S+f17BcX
 umFiGF5iEJugHvw3t0jqofQhK0e9HPN8CRU6dgzK9mzS2tdMY7xQ9NA8iCAMI1uRdk+Bntlo
 zs+1ugesIWgL0Diqbwizh/bLtm6WNHSu1TtTu+MJzd/in9/Pr6y1F6+8kmln/X1TdL8kE1Lo
 SxMjsTWuzgT2gbS5MmKRro1/kqo1TuVkQGGwu9eKF0yla3VJoRnxbg1l5EJtl/EEDOwk0Lz5
 JI=
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:QIovOa+CqTdphVy/putuk+Fldb1zdoMgy1knxilNoENuHfBwxv
 rDoB1E73LJYVcqKT4dcLW7VpVoLkmsk6KdjbNhXotKGTOWw1dAT7sSo7cKoQeQYhEWn9Q1vc
 wLEshD4Z/LfCBHZK7BkU+F+r0bsby6GdWT9IDjJgBWPGVXgs9bnmVE4y+gYzBLbTgDIaB8OI
 uX58JBqTblU28QdN6HCn4MWPWGj8HXlbr9CCR2RiIP2U2rt3eF+bT6Gx+X0lM1SDVU24ov9m
 DDjkjQ+rijifem0RXRvlWjr6i+2eGRieerNvb8z/T9GQ+czjpAUb4RGYFr5lgO0Z2SARgR4Z
 7xSlwbTr5OAjvqDx6ISF3WqlDdOX8VmgHfIQrxuwqSneXpAD09EMZPnoRfb1/Q7Fchpsh11O
 ZR03uerIc/N2KLoM1T3am+a/hGrDv9nZMZq59Zs1VPFY8FLLNBp40W+01YVJ8GASLh8YgiVO
 1jFtvV6vpaeU6TKymxhBgi/PW8GnAoWhuWSEkLvcKYlzBQgXBi1kMdgMgShG0J+p4xQ4RNo+
 7ELqNrnrdTSdJ+V9MxOM4RBc+sTmDdSxPFN2yfZVzhCaEcInrI74X65b0kjdvaMaDh5PMJ6e
 f8uHoxjx9CR6svM7z54HRmyGG4fIzmZ0We9ih33ekNhoHB
X-Talos-CUID: 9a23:c8YmEWOU9LIGYe5DWCxn00crNdsee0aC83H5PkKoUkgxcejA
X-Talos-MUID: =?us-ascii?q?9a23=3AdvxLNA60wBWIc3zOkmcEdB/cxoxlpICxJhs2iq4?=
 =?us-ascii?q?+vvS4aR1rOmqbpQioF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.07,164,1708383600"; 
   d="scan'208";a="445516"
Received: from 153-97-179-127.vm.c.fraunhofer.de (HELO smtp.exch.fraunhofer.de) ([153.97.179.127])
  by mail-MUC121.fraunhofer.de with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Mar 2024 13:41:55 +0100
Received: from XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) by
 XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32; Fri, 29 Mar 2024 13:41:55 +0100
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.168) by
 XCH-HYBRID-04.ads.fraunhofer.de (10.225.9.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.32 via Frontend Transport; Fri, 29 Mar 2024 13:41:55 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQQjwiXrEKWWqTWSUmF6BiuzMbIjpO5wjWKKL+WJorFuivESKBXsqsThug1tz3uM6qr8OAC6ynHRCp/khC2j5SpyfwAfoS7FPnbVLHNISvLF5NlSVIYleOp9/afRR/YtgVZZxSwsO0DXnzsznA2srLS+GpxhTfVqxQVxGxin5RU3bnCw2V9zthTDrhbxGowtPJ/fHKEnIr3N1rO6SuruUnXRt3lRXIekC3wDSxROlUpZnDosos5lPwtT6STt8ETfncEmD8UNnvhaFi7jsX42m4QK7STI1AHLA9N/ZMWA7pVkZHSnabs43A3zklB0r0nlIylOeQpEf6Yg7MpCb7B8XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VxsduQGvarkXkYNd2kX6eFkxHA3VyGRmfl17o/bgZac=;
 b=b0ShW4U9KuoJSdkgbvs6Msni5Rrp3IAekncGJ4tLarcVj3frrGFhFchWiqNmsRoZ6U2FZeyhkKXDKAadwi6/6zGgJmaF3pAQy8Hj8IWaD3dDucPVajCWu21evpngudvJUBQmakjXdxs/hTqDuP0fYQrS9wcLmM1KDRw6M5jwY2X/W+QS+WlnehzR+CpUEBBPZiNbgj81PaYcaF1urWt/SM6P3pG+IJ5oRIU1oavYMHYQHMeGbfX+65KyMgzZrsIpiteRhbGRz732Vejm/iso1RM2YT6+k7RlcHY18qBst1P9eEJc0snSr9DlHZgjfiHaoLjPDN2PODDuo2VwHMkYOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aisec.fraunhofer.de; dmarc=pass action=none
 header.from=aisec.fraunhofer.de; dkim=pass header.d=aisec.fraunhofer.de;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fraunhofer.onmicrosoft.com; s=selector2-fraunhofer-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxsduQGvarkXkYNd2kX6eFkxHA3VyGRmfl17o/bgZac=;
 b=LGW7HQGOId3YS9ba8buFfTbvZPjQO7QiLXheVXZz5CrK1djBNGb5sp3rkp4GrHo25Sc/PIQmpbTJIRxMQ0kjEXl9rRDSKC7VDRE6jV/UXkumWGwcn+Qs7Q7Ha3kbrL86/lP2TccBkg6K+wJ+7prgHfqjGcVKamiEA6nflckMN88=
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:50::14)
 by BE1P281MB3398.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:4f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.40; Fri, 29 Mar
 2024 12:41:49 +0000
Received: from BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38]) by BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 ([fe80::47c2:f246:3fed:4e38%3]) with mapi id 15.20.7409.039; Fri, 29 Mar 2024
 12:41:49 +0000
From: =?UTF-8?q?Michael=20Wei=C3=9F?= <michael.weiss@aisec.fraunhofer.de>
To: Alejandro Colomar <alx@kernel.org>
CC: <linux-man@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Stephen Boyd <swboyd@chromium.org>, =?UTF-8?q?Michael=20Wei=C3=9F?=
	<michael.weiss@aisec.fraunhofer.de>
Subject: [PATCH] init_module.2: Document MODULE_INIT_COMPRESS_FILE flag
Date: Fri, 29 Mar 2024 13:41:37 +0100
Message-Id: <20240329124137.630521-1-michael.weiss@aisec.fraunhofer.de>
X-Mailer: git-send-email 2.39.2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0121.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::19) To BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:50::14)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BEZP281MB2791:EE_|BE1P281MB3398:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TaFi7gb6X9Q46UUBo5eFuVhk8Fb0D1Z56WJIcdITmn9FnA3kiy10B7Zbdm0QC+pwlsN/hmWJJLBJBm8pITRThklFpKdYH1fI+1op6MeRKovpep6dFdGsfkF4hEF8kE4F9Vf8M9htnEZQ285F1vFjtXOR+5ZoIhbzbmVwhuFRgfwZZtjPld4qIXgJdrJM8P3FpL4ERg8h25tdhIwiCY+C4NUegV9iWkcV/B9gtVUeZfLqYptAlqDl3qgb9f3KN+fXR6q5wzll1q9Y2imm/FZnPkFlozY1Ktt8MoGU6DR26qjZYqopcMiT45uMLVFpwpGuUb8KJ2DXlVvu5rbR/iKZfR4ByWVGL4XpW5VXGnAkXiEn0zK1tmUNDgezeY23biwFtW11TyB8+sil8eVKlCV8WGDm5X5bXIyAvr8AMfHh9qoPED1kJKuc4GVJH9P1QLsJ7oXDpW93i5v1hpy7mXzqcxMfPAeCsLrP9q/P784hwh2XlfsKHWTIVTLEKhas+3kq3o9fU4Qrv9vy9wwuPj7tjyOp37j6aTcTyFlfPBbxTih8QVV8RkeY1SCgO6kPRIY7KKU/+qJZl8HTe5OTsFfAyjkZIe1aNQVOWe80O9z8MWXDIipArUel1LxBL6c7ov6gZFfkJZ64K0sdiyge0qd4VCIUCY6uWiGVy3h2PecsLYk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDNmd05YQTFtaTJaN1hIQWhMTkkxajNmRW1CcWs2VWJKZUNkSGlPeGFCd1Ra?=
 =?utf-8?B?Q0daMXZ1Wjlza3REajA3enF5NHJ3Yjh1aHNab3FrWVNWMkVGVW12VVlsOHJV?=
 =?utf-8?B?eElNR2JpekNYTmhuaUJWOUxKZU9KbXROL2E1MTIwSjJZN1g2WXBvaFkyY2xV?=
 =?utf-8?B?VHEvcFc2bnVrRDZKRi9zOUZLWVk3TTZwWHdjdjhiRGpzZE8xOE40QkVtNFdK?=
 =?utf-8?B?T3ZEMnBqbm90Z0RhaWJqa3BpZTlpaE5mQ24ybGVEbjhLZGVDaHgvVm1ua21Q?=
 =?utf-8?B?RUQ1WkRsWW1tcUxhYUlBdTFhOTFMQ1Blam9CTU1RYi8zcHJBcTltdFVFYzNt?=
 =?utf-8?B?Sm84OGp6TWkwRVdNQldwMlhUaWNtT25wRlh5NXppV3ZTbHY3d2xmR2U3MjBh?=
 =?utf-8?B?UzExRkRwVFZWK1NWOWZPb1JOd2w0NkJWYW1IaFJCbWtFMURoZDhjNlRmZmV2?=
 =?utf-8?B?UGF2NHJnMStEdTVNUTFrSXB1cjZOc3B2aU5ZTWlKN0pGazZ0UlJVTTg5Z1Ju?=
 =?utf-8?B?NzBWMGExcXVjTW5lRTcydmhFendKa0xBRU93YVdDT2dwdU5wUURpdldNOXFv?=
 =?utf-8?B?TUovUWk3MzVER3RnRzJiUXhYV1FhUWRBOXpPa1dQaktSZFNvWmlqQnVmbTBt?=
 =?utf-8?B?V3hMUVlMeUVIaHlyOVVTUmFJWGRzcVlwZ05MM3pTRmRFZDlwYi96YXZuRUhu?=
 =?utf-8?B?ZWViU2FseWxNZjlIUXo3cm11QjU5eHdOZzZKODBsdllpdzJRdzkzdmJ1MTdy?=
 =?utf-8?B?Z0E2YXEwN1g3dzhXZWdrNG9qK3VqWUZjekNYN2kvZk5uVXFhS2l5WkovTlU5?=
 =?utf-8?B?SGducVMyZGF4VFpIQ3NHVFBnR2E1ZUM4Z21Zem5XaFovTFdNMlVGczJiajk2?=
 =?utf-8?B?dldZem5aU3dMK1NtZlFWUWx6a21HeGl3MWZzckcxdCtrc3YxcnlLR0J1dHBQ?=
 =?utf-8?B?NGhlODV0VENCTWhhRzFyd1QzVjFkT29TeTBOVTV5c1o1VXRudkliK3VFTE0x?=
 =?utf-8?B?ZXRlcUlobmZlS1pBaGJCZ2VTak5BWVg3bGg4WGRlMVpRTC9WNmtLOXI2WTBJ?=
 =?utf-8?B?MzUwbEkybWhZK1lZRGxNV2xnSWMrclcrV3g0OHNFRFplSFV6cWtkVVZOZGhB?=
 =?utf-8?B?ajZTa0U3ZjlmM1JiVENkMmE3ZFFPdjkvNkpQSWdXZlV3VWcxRk5EZFJaSHp0?=
 =?utf-8?B?NVNQaGp5dWdEc2xKTHJUL1pSNWNmRjNhN2x1OVp6ZjFnL3Jkd0ExMjgrMUJU?=
 =?utf-8?B?d2ZoK2JCTHRBdnYxdjE4NEVNSGYwbzU4VW04ZVlUcGZmeFRqd1dnM1VJNkd2?=
 =?utf-8?B?SFROZ0JPblJGLzM2NVVlKzNZNVF4a1lETUVaWTJLelp3SDArNUxXck5SeHZz?=
 =?utf-8?B?Zy9ZNHE2YXYyTk5id0pqQkQ1RWhCSkR3SHFWaWVpZXJQUUdEVUpsSkhxeDZj?=
 =?utf-8?B?YWIyaFRsQWJzM0hHQW14ZEJHZzZBcERKNkZiWG5nMnl6YzNMSm1MSmRiRnJM?=
 =?utf-8?B?YXBMdllpck5aam9ZeWQ1bXhrYWpOdmdBeGFDclZCbHI0UXFLUWxPUkE3eU9w?=
 =?utf-8?B?MFY5a1lDblRwUnhsNU5WdGZqUDhLVWVoYU1jS0pyYjhSR1NlQk14NnBMUXR0?=
 =?utf-8?B?VTFVNmRvc044WGhlUVpDK21KbzgrL0lWRWJaQ1ljTkQ4SE83MFltcUxTcGhi?=
 =?utf-8?B?dW0yWjNqUHZheis4MWFSaVVselZqZkFuYlYzNUczdjYzckZ4RUpyMm1EZlY4?=
 =?utf-8?B?d3lzbU9CdXI5R3FISDVlaE9GSEJNS1k3M05wQUdaUzkzdkdkdnl6bUlpblB4?=
 =?utf-8?B?VXNreGtPZEYrYkhKbUIrQkgrbXNiRlNoRUtORkNtQ1IwNzFxNnlqTHBVNHht?=
 =?utf-8?B?Y2c0WWc0UTlmNDdjeXlSRG5UREg5cHZLWHUxVFNWNjhBVXBIQjl3azF4Mk1q?=
 =?utf-8?B?OTZydlVnVkNzVEdVSTR3eEFwbHdzcUV6Uk1MdHRlM0Fud3ltRGd1bUFYQ00w?=
 =?utf-8?B?UDc2OWwzYk1NVkZ0eFlxeExGS0IwTFdBbTZKYk1lM2JCQ0JXMUc5SDdFUDRG?=
 =?utf-8?B?Y0cyaFFwbXVjcFpLSWNVdS9EUE4xZW1tbzEvYWpSZk9HL3M4NWpBNjBOR0Z6?=
 =?utf-8?B?alJ6WDFyYnllaFRkT0lLUHNLTFd2cGpURDBQWC84bVhocWZFWlFockgvMklI?=
 =?utf-8?B?dnhNVTdMcTE0bmtoVmtxWVJoN1ArTzVwS0ljcmdMWXRteW41SGo1NDJUbFpj?=
 =?utf-8?Q?3OoGjFiqF1ndhkkOG0T1wpNurRUm+LMgS5DUUk8+ek=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c64479d2-c090-4c8d-4ad2-08dc4fed99e0
X-MS-Exchange-CrossTenant-AuthSource: BEZP281MB2791.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 12:41:48.8657
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f930300c-c97d-4019-be03-add650a171c4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IxhkSPNOI2DS+ndLUNHhiBPv4trJLvN3pXNCOH0GObt59mHwxv0XRkJonrbqxVvwsw1zJw2OdUZknC3umEqeNOOYIHNUW9OZ9EPVCUm4neuN6eJY68ZNAfqy9S1JlANq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BE1P281MB3398
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
 man2/init_module.2 | 48 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/man2/init_module.2 b/man2/init_module.2
index 95917a079..8197b0df6 100644
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
@@ -136,6 +140,41 @@ If the kernel is built to permit forced loading (i.e., configured with
 then loading continues, otherwise it fails with the error
 .B ENOEXEC
 as expected for malformed modules.
+.P
+If the kernel was build with
+.BR CONFIG_MODULE_DECOMPRESS ,
+the in-kernel decompression feature can be used.
+Userspace code can check if the kernel supports decompression by
+reading the
+.I /sys/module/compression
+attribute.
+If the kernel supports decompression, the compressed file can directly
+be passed to
+.BR finit_module ()
+using the
+.B MODULE_INIT_COMPRESSED_FILE
+flag.
+The in-kernel module decompressor supports the following compression
+algorithms:
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
+The kernel only implements a single decompression method which is
+selected during module generation accordingly to the compression
+method selected in the kernel configuration.
 .SH RETURN VALUE
 On success, these system calls return 0.
 On error, \-1 is returned and
@@ -221,12 +260,19 @@ is too large.
 .TP
 .B EINVAL
 .I flags
-is invalid.
+is invalid or the decompressor sanity checks failed while loading
+a compressed module with flag
+.BR CONFIG_MODULE_DECOMPRESS
+set.
 .TP
 .B ENOEXEC
 .I fd
 does not refer to an open file.
 .TP
+.BR EOPNOTSUPP " (since Linux 5.17)"
+This error is return if the kernel was configured without
+.BR CONFIG_MODULE_DECOMPRESS
+.TP
 .BR ETXTBSY " (since Linux 4.7)"
 .\" commit 39d637af5aa7577f655c58b9e55587566c63a0af
 The file referred to by
-- 
2.39.2


