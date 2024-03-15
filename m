Return-Path: <linux-man+bounces-609-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEBF87D173
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 17:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88325280D27
	for <lists+linux-man@lfdr.de>; Fri, 15 Mar 2024 16:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545F83D579;
	Fri, 15 Mar 2024 16:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b="UlxrYGMk"
X-Original-To: linux-man@vger.kernel.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2125.outbound.protection.outlook.com [40.107.220.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854BB2BD19
	for <linux-man@vger.kernel.org>; Fri, 15 Mar 2024 16:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.220.125
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710521431; cv=fail; b=QPLs6QNhXEMyN9EqeNmgWUs2iQKWZuaFF6NsAH4CQUKCUa7UOU34HFH4VAXx7w0vf1I7v5R+4Csp6BLBksYEXR6/xUdLc4dQ47jnCYkXI43aFXS8xJzRsTxwMV/+DgEYew+ISq2AmtUmuuFEop1f56T4M2oYmXSkoUhn9Fifdzc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710521431; c=relaxed/simple;
	bh=FQ1KUnBYqV/rGJx6lFfiwSPFQVb55nN3fBpSpKB6lkA=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=K5M3oEVAdEuujZaJtfpYu73wnHtzGlnBVRueA3JGzCYgNtXqLO7nMdeuXiKualKGtLoTz9qwWjZBbZGR31/pvLcU7N4goYcgeDR/B102ZxG8kbgM7Sq7asunliLoenm2wR3rCo1UQ6wlhnC+QMd/dlZTjaaMxOfJsjwnw5ebHcs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com; spf=pass smtp.mailfrom=memverge.com; dkim=pass (1024-bit key) header.d=memverge.com header.i=@memverge.com header.b=UlxrYGMk; arc=fail smtp.client-ip=40.107.220.125
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=memverge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=memverge.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dl3z1yq0pYxYJJ6sGhzfU/2yt102CLevHJxEG0qgzMPgHvEqqdF84BEEGiNPWXd2YBNFAyMX5Gwmh/dhF6ef0bWJKcD0d1oLtqQfa3B0S1O8NavUOI+jIsdBtOdxdNDU96cxAlgKjBpYR5DutG5+MXx8EWpdz0hm5iy70ZCjIt8zOw4AnUYmmVFPkFjTQYjq4M2UzmHuyhvbyTIbAs7a7XIPx5UrtR0Q9Wrm9QofWwh4dYh8RphAn/9msVeJrYQ6WabU5YgME0mFI5PPgbf4ipe17TTjSbVOnshooHcVbO9j7f6Pk+BYKakmkS5/YJ1zx8EWGUGzriO1j3ttokZ1rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wuxdieI6YaxMD9omcbKtCuupGh43DbmwrtFaKpSTZnE=;
 b=G3S0gW4gw01iL1lAOA5a55sWWXCjoGjybRyINOWCwKaKCSGgZWIw9ivAVx8w4PCZ5s+rO2bkelKzfYakMEzgrUBrHEEUeQ/hCXOef430EZ/u3F6Kb6eo2z2KNmoQO8ODKbyLtAuCMGbsI/hAPmdeVed65oARFvimjncvEfzS5d6uaMkXCG0msfTWih2bzTZ8lYv6pN+EP0WDL6tHWQmvMCILute8u/8C1nUKNXvly1U581g6TBqE0aiglDXL0G2MouZNysS8B/jaIRxaP2yTHU+s2UPVJbpdOXdse5dD1EsuyF7lV5+WlPEni+dd/UObE1NJg2WxckuG1o+LvT3+mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=memverge.com; dmarc=pass action=none header.from=memverge.com;
 dkim=pass header.d=memverge.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=memverge.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wuxdieI6YaxMD9omcbKtCuupGh43DbmwrtFaKpSTZnE=;
 b=UlxrYGMkH9Ca+3ELVidxShrHIFe8oltF/JweyXhqGjq973vaAgWeZxfG/IvsrgyFno+djgFArwQEYS/pM7lPtCiXe1H4XuA2EZ1uBjc8hbyzX/mMVGVbZ6Z7I+H5wkQEh9S+xIsNWpIOTQMvJm5OabP0+pa48ZRptFeQ/KZZzgY=
Received: from IA0PR17MB6347.namprd17.prod.outlook.com (2603:10b6:208:435::22)
 by DM4PR17MB6318.namprd17.prod.outlook.com (2603:10b6:8:109::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.19; Fri, 15 Mar
 2024 16:50:26 +0000
Received: from IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a]) by IA0PR17MB6347.namprd17.prod.outlook.com
 ([fe80::200e:df84:29a9:8c9a%6]) with mapi id 15.20.7386.017; Fri, 15 Mar 2024
 16:50:26 +0000
From: Svetly Todorov <svetly.todorov@memverge.com>
To: "Huang, Ying" <ying.huang@intel.com>
CC: "alx@kernel.org" <alx@kernel.org>, "linux-man@vger.kernel.org"
	<linux-man@vger.kernel.org>, Gregory Price <gregory.price@memverge.com>
Subject: Re: [PATCH] man2: add MPOL_WEIGHTED_INTERLEAVE descriptions
Thread-Topic: [PATCH] man2: add MPOL_WEIGHTED_INTERLEAVE descriptions
Thread-Index: AQHadlr4w2pzms72E0e2mICDf7fmpbE4ArmlgAECRYA=
Date: Fri, 15 Mar 2024 16:50:26 +0000
Message-ID: <53F3B255-C76F-43FC-ADBA-CA1E15753CAA@memverge.com>
References: <20240314-weighted_interleave-v1-1-ce85d64db0d4@memverge.com>
 <87wmq41e5f.fsf@yhuang6-desk2.ccr.corp.intel.com>
In-Reply-To: <87wmq41e5f.fsf@yhuang6-desk2.ccr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=memverge.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR17MB6347:EE_|DM4PR17MB6318:EE_
x-ms-office365-filtering-correlation-id: 6686de4c-c337-466b-0d06-08dc451003a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 acT0RrW6sxclNMVBhgj9xj9oRYNgupKSk0wvot/TGiCYxrJqd+RF8/nwWQc7fgT/Wz8d4LsL6qaTk2T8FSI/8QAYJwARZ5U+qy/EDxprPvYYV0YvwUHV8O24+Gdc3HoPaKY4hXeJSLUoCyjwHEgMaDZtTJKKC0EZCzbCaQdpopK3x9H4rNVFspDiqZqm6W1ynOfVdT87BOgsV0yrNJTXwXLrc4JiUu2QMdvKMbRsy4/M5CB9vF3DF2+/++nLw/4HFf0JGg68mqCz0hZhxMk6r4zKNy8j6H+/jTFtUrf8vZwzxqlk5wZ6hvW9wz2tS5u8oy+uisfKvDMzLKqjXPEVnzWE9rqs+vLiDd+cwNwA5c67K5kgDuicttZqV+y/KQoTEeJwdzeEiNJB3hISealQnWqY0dW4OASXPbMlPgLGhbnMrg68LPqHrwuO54/hoOK5Yl//PD1L3UyS+FZu+HuPKOpiVaKASrQ5qkIEbOY1NSz1EQ2TOMaMI1H2u/3ciDi9y+gwgyKr93DrMt84HhajCLGDzfHzQJhrxXed7EouT3c2B4pFwfhYAcfdJ3VNS1GAZTaToEu8h+jyZ5NaC6d4hVGR3x/LuxNWnslz2GeOkv+8ahRRLVepd2pr0vupXj1ClKD3rXql1+DHSixKJMvYcx5Dpm/MmrcSyGG8eRaorKVfBE/Q6Qr28KZPMmK86M8R+Op3cZ8pGRIvmjmvIqheBBVe0IZyk9OmEtNr6OrAIv4=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR17MB6347.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?fyqY6yW/5AMxph59NnKBermY3pq5yq0fBQ1J8xCPAmCUgk7s3aNdict2l8NX?=
 =?us-ascii?Q?9J8poK2IOpLypOfJRBl9alCz70H3Xpa6FwLi2N+SyecVNWO7uIH2GZPR4xHX?=
 =?us-ascii?Q?C0sPuOW9/EDjyqyQol6HWKHqll1NQTFZAqXVe5xaW0ux8ET3cCwbKX7NOEuo?=
 =?us-ascii?Q?CjJeCncmUDgDhLonDipsSFKQKPRkgm+ILvPav8HF4Xu/drYdkp5cHIbaOwcG?=
 =?us-ascii?Q?SCWPmqBjMY3HA68nA91+EEMi8ozz5TYNkAjNrjSxVSR+d+MtOI4eaYB5lL0F?=
 =?us-ascii?Q?gK9f/3dXIgdTwSHDRi22LZpWmrOkiIyCYyAT9LL6lqq7mH0l0V1MdHpenMQY?=
 =?us-ascii?Q?V2eSN86IzjP/LZ8EPpe6kyhgdJmUlq7RcyFh3HYlPrg74mfz99c1OA1J0dGj?=
 =?us-ascii?Q?3quf2XtIQCuPb/BumZuSri5CMWgu4rirGBvy6hJ7rPXxg2sHLvpK0xnl4b10?=
 =?us-ascii?Q?F2sj5B6CwBsVGB+KCkIFDBsUy2zEqFu7Tc57PsTuGnQrS9/N79hA5Za5RyWA?=
 =?us-ascii?Q?3e7kQXgGAMX4Z51QdrjbQgc/WJxBaHWsPJiDRax2E6dz1nN0pzB2Jd1ayhiE?=
 =?us-ascii?Q?gegZW6h4oIoVJX3Fxyp4NlL63yl2aph/l9H9mU/do9o+OVkcUvRjkQt/m6PK?=
 =?us-ascii?Q?+1SaKYsnn53gnkRj+KwRS/lhiSqSW05PFaJgfwbpxRCxm1zBFMJNCmWSsjhH?=
 =?us-ascii?Q?YL5NvJy9HobKrMkZjiM1L5sGdgjoB4g9OIw4prRV2gNDsZybdA/8rQA/hF6N?=
 =?us-ascii?Q?CmYH3UN5V1CQNe+l/XfYLTcS0iHXbunarITaCey3v6Ndr8mpOjMLVQqK0PhZ?=
 =?us-ascii?Q?tFvC7k828McuLM7nC7PUK9gvvUj6438MAjWJTXYxMtf0jPkCirXHowu2XwiJ?=
 =?us-ascii?Q?5VT0jCbjbqDdTOEquq5/hHMs0GvA2ZNTvP2RQDPz1hQTLhHD/nKY2SyXR1LU?=
 =?us-ascii?Q?6ZykUob5Arm/XMV/hNaRe2+4kt0XA2TRuAGJsTK45I0xAZzpFRpG7M0sb27X?=
 =?us-ascii?Q?i8tHkAn2euUOmvctMCGzJKLpKhDlW0oFyIDyY18sW5GcG1kOZF+4hiWO9tKv?=
 =?us-ascii?Q?Lc0iNfpvlJz2QaQ0G/pLmpieY+TrsKC7Vzh2iePQ0F5ddHk7wgjbaEq65xUK?=
 =?us-ascii?Q?Y1O0iAli6/frwvwn1/K8HjV13TqI+yC1xNiaCPoG3Tl3JZYvt/4hL5HPKHl2?=
 =?us-ascii?Q?CVIDUET78qOaUL8fomODcJvR4QN6H/lzoQpq+e7XGx0ofEw+mYL+ZLY5Piz3?=
 =?us-ascii?Q?hSf8GlxEXP0XxWYPr5fN4AZoqfOGiJnaTivuOg13kfmKXnzMqO4YeGciiUbF?=
 =?us-ascii?Q?HdutpUuzMMx/HE88CbyHEXpGbSDnr8e44ZjbRIPfqHIcoV2h8VCfL7KLA4cF?=
 =?us-ascii?Q?UUlO+yQ/hitf/PHyz9mPYWnw6Z6YPk+4sI3VwI8QJ7U2hcW4P5vpxpmkrRVM?=
 =?us-ascii?Q?j2GJ2guRvySUnsT4/utmBIJuAgJyAoADz+JzGB0XSsK7oFtozuLuaDHq7qsE?=
 =?us-ascii?Q?Wua/rlSh+r2SJrv7FzhEF764OEa7kGw2xqkxbjsCAWu1amvkQizM8Hf3txVG?=
 =?us-ascii?Q?PX6GT0s51wQInbiRo/DJs+3BuWwT4fLrAG2ILms1NtYreCjcxVsYY8cjSOv/?=
 =?us-ascii?Q?x9N3w8DKaqekBoa5srbYOtAm/YLmjJzv9cUMPEZhqWxcMQkhWuahKOtSUuAf?=
 =?us-ascii?Q?mqSc1A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <90E984D49B70344C88355E91124E85E3@namprd17.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: memverge.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR17MB6347.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6686de4c-c337-466b-0d06-08dc451003a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2024 16:50:26.1906
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c90cb59-37e7-4c81-9c07-00473d5fb682
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /MZ60iW8o+uv3koC8QHEuzifkbbsGwQpwP7JVgvZl+v1IVFl49y1nR1mp172DHwavxEnL1tJCqRBG2D966F0t0uVoIo9Abf4UkB1AQqFgVU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR17MB6318

Hi Ying!

> I prefer to describe the algorithm in more general words instead of
> reflecting the current implementation.  Because we may change the
> implementation in the future.  May be something like, the proportion of
> the number of pages allocated in node 0, 2, 5 will be 4:7:9,
> respectively.

Sounds good. Will edit such that it talks about ratios rather than sequenti=
al
page allocations. Thank you for the feedback.

Best,

Svetly

