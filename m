Return-Path: <linux-man+bounces-2434-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AF5A341DA
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 15:25:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B78623AB96B
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 14:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97DC328135A;
	Thu, 13 Feb 2025 14:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b="QCwlRzTP"
X-Original-To: linux-man@vger.kernel.org
Received: from LO2P265CU024.outbound.protection.outlook.com (mail-uksouthazon11021128.outbound.protection.outlook.com [52.101.95.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63028281358;
	Thu, 13 Feb 2025 14:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.95.128
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739456597; cv=fail; b=O2gy0YBoy+86rB7hvNSkmEriBTgJUnlcDCdGx/hdGzQNajug83q8CgQQHqmZImQ5NIrraDqHsJmYQKOkQvYaxin6NvWc3YdkO6neFSb9phGrp2O5XLbAXie6n+zr1JG66dKLA5oYr08TzTgt65F0pP987erIxoHw7l9Yu5C+cnI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739456597; c=relaxed/simple;
	bh=JgFTlW1iGYEiY9zN6SPBVjk1KLrKt/WMgBwT8BBdDWk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=aWwt1rhLbrdwQuFjCNy59xDnCJ80WJRucfuvdxfzQ6F/QvifCxnSq+1HHGtrgJPDeLaUCYISlMa3BwQDeUzV3LXWucD9saHAEp4ybhMvrTfv4itCXr5rYyGXNROFkzWjmDaPmvAHLDweE3SPnThitYjCh1QXaGIkAW7qkTjvyeE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net; spf=pass smtp.mailfrom=garyguo.net; dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b=QCwlRzTP; arc=fail smtp.client-ip=52.101.95.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=garyguo.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GEryOSp9KLzN32e2Vxhqo4bu92tGjFJyT2slD+Wk1aq4DX3vQOCZoWBQ2lj9aFoKh5WTHnSSv6NNYOCcx2/To90NEkmQI+K2auUdzCZ/dLCEbOLlclJF8c4qZqmzSBthp9WKHGFO0N+jZIMUtKH4QKGOez+ObQg3Mfkq56pQgl1ZD23/bqUdECQYEBhRzlDu+F8UaT9Xtn59B/S7Pt4uhoTmlRK3B2AgcFggvdaeLBD8jCsPCJNf/nifpK1mwaFHTsZFVeBmBbLVLz2h6ATF2NGdroc9q9nceUTLHFOuILI6eXc0JywPx50rtDiqRtFwM6onrR18nEdoIfj269EfGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgFTlW1iGYEiY9zN6SPBVjk1KLrKt/WMgBwT8BBdDWk=;
 b=EMT6fW/l7nU4qePXGmzzX76I/hy9ddcPxEigQDMENW2Y3xYS7f35VKEA+DEciigkbxyaKhKmmqdq4nY/1l7PbaQO2iMyGURrV/kjeku/csjTN8Dx4BFQml5tQp08F1OkTYRYtBiEf6HRBA0W34X9DLuCGUhJgAiiBrPgS1oziwlIwU0QSG/SCAh0P7VETootwDPj1GpEdl/vsTm6Zd0MA9k+GBT5Le7xyRO02d5c5KZVgh85ki7ipx19TTs8GGicMARVqTWZLYLQvJ8YyEWDts0yss1jxKAHh4yLoL3Q2TigueuGLiWzH7EciRa8tgVIrBTKS0ns1cOWOpeWlncwwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JgFTlW1iGYEiY9zN6SPBVjk1KLrKt/WMgBwT8BBdDWk=;
 b=QCwlRzTP+XpyLjnObqZTNo+iv3LXv8UIp9eo+aQNN+exl9hLl/5NVlAXLxcS6y0VGMclpnvPm+6hNv8v/H6hCp2NMK3hIEkP7Ya71R5zBGRwyAHWwGywfxlW00bbXivoupg518PKYN9NR2PCSLDfeqBWAcrpt5ZEnH+73yXLTGg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:253::10)
 by LO3P265MB2044.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:100::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.12; Thu, 13 Feb
 2025 14:23:10 +0000
Received: from LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7]) by LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 ([fe80::1818:a2bf:38a7:a1e7%4]) with mapi id 15.20.8445.015; Thu, 13 Feb 2025
 14:23:10 +0000
Date: Thu, 13 Feb 2025 14:23:08 +0000
From: Gary Guo <gary@garyguo.net>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, DJ
 Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, Paul Eggert
 <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, =?UTF-8?B?QmrDtnJu?= Roy Baron
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas
 Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor
 Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org,
 linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <20250213142308.4aed36d7@eugeo>
In-Reply-To: <CAJ-ks9mQG5pyEP+cnVxBkCDbfR_cecBZK0K456=Qw6Y03LuRvg@mail.gmail.com>
References: <20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com>
	<20250213113024.3d9919e1@eugeo>
	<CAJ-ks9mQG5pyEP+cnVxBkCDbfR_cecBZK0K456=Qw6Y03LuRvg@mail.gmail.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: LO4P123CA0394.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::21) To LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:253::10)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LO2P265MB5183:EE_|LO3P265MB2044:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ca9ed3f-6747-4ee9-3428-08dd4c39f154
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?OHBPM3d0RlYxVzI5UThQWmFoUEZia0piMFpFUGYrM25NUXdJd2NkNUZkK05t?=
 =?utf-8?B?WWpvUzdSd0o3VTYya2c0Vmx0TXVxSC9FdEU1dWNHd04yM1U2dU1Ib1NvL1Vv?=
 =?utf-8?B?Y09WTERYM21YWlFka0liblpWMUVlMm52aU5JSEFSZ0xBdTVjMEluUE0wWldt?=
 =?utf-8?B?ZzRIblJBWGtBMHVzM3JwUVl1VUN6bHYxVG9QK2dDTWF5Zkl6WVk3bGR1bVB4?=
 =?utf-8?B?YlA0UURybjFkQU1MVHhxWE5jb2ZyWmxBaG4xa25tTnJ1Q3plYmNqREV0YS9M?=
 =?utf-8?B?ek4vcU1xalZTMVMvcUJCTGFDaTMyeXR0ckZQbkMxRU9uaG1pcm1IYlArQ2pE?=
 =?utf-8?B?U3N6dTRXMWhJVjBoYWJ4bXNCVytUTmQzU2tYWGhSU1JHWEc3RENvcFpYTldp?=
 =?utf-8?B?VmxES2ZFeWpHMldoQStzYkx0WXhkSEwrZEVWYlgwQWZRTW9TU05iR0l5alY4?=
 =?utf-8?B?NEpsQWw0UWFxUUtxVDk4ZWgwbjI1MHJxUVp4K3ZWd1M2OFI4anlrNUwxSzkw?=
 =?utf-8?B?V3dnWkNqdS9rRW9sQ1Zta1NOdkFEeHpaNitpTVVLWVRWTytqUnlmZ3M1L1lh?=
 =?utf-8?B?K3Z5ejdqelk5aWxVUGpETURVS3czOTVBZzNaOStYSlRpbGhSeUhpNHM2dVIw?=
 =?utf-8?B?WGZ6SVl6ZjVCQ3ZTQ041ZDBxemNWOWZPR2pQRkNuNkErb2FmWmRFcnFacEFq?=
 =?utf-8?B?eE95UzAraTRQdlBZL1orMjFpYlpPb0h5angrRU5wc0VXZTlMVzBXVVh2UkJ3?=
 =?utf-8?B?eE5ncmtzREgxMTlDVWNBRVlGOFg0REhaaVFteUNQakRqZzJWR3pLaTNqY0Qy?=
 =?utf-8?B?Tmp5YlJoYVNwamIrUk01WWtNK0xOYVB4U2NIZW51NVJsSGpvOXRnc3lCejBr?=
 =?utf-8?B?c25LWWJFa2FKNmw5emE0Vi92SUJkTGdMYlM0aFl3djdVbmQ1YWMrempSMnhT?=
 =?utf-8?B?akJNYm56bzRVTXEybmNXd3FYbTl4QjN5b0VTQVZxeGJQWkdOK0QwbWNXVkRY?=
 =?utf-8?B?cU5Dc3gzTy8ySXk5RFlYdlgvb3BWRzBFSHdqWk9HUFQvck5xZmFEZFg4NGUz?=
 =?utf-8?B?b0NoMGJIRmVLY2ZBREM1RGVKWDlBWmtEdWV0ZFk2ZlRsdmpWZHNDdEIvbmd4?=
 =?utf-8?B?TUU0Y2ErV052blFOenJyTFVuc1dkQzMyMXc3a0RjWmVyVHJDSkpBU09yS1Ba?=
 =?utf-8?B?RHUrcWlYWVRUVnhqUkd5dlRMb2oydVB4UGx3ZGlINUVMekdzb0JTVnE5bndj?=
 =?utf-8?B?VjVZQzBXM1lzMllOMnpHTEJqN3VEWVF6UTQyNThmY0c5eGp6c01ZV00xaUVx?=
 =?utf-8?B?SXpsN1NCQURFWFgwZThCdklBQjNrRCt0LzloZEw2K2U5SVFWYXhVUkxKdmpu?=
 =?utf-8?B?VHNpaVpZV3RNNi9oYy9zSWpPTzlTWTdhdktzb3N3eDF5N0lmTXo3SVh2MWdn?=
 =?utf-8?B?RVByM1dNUHN3dURlTFdQK3lyV3RIV0dYbkdURE5nby9BQVdYWkJTM3FTZjBZ?=
 =?utf-8?B?bDE4b01xZ2NKV1hjMmk4NUZtS0I5aUJrZnJHYkxSL0M3V000MUwzd1RFWGRq?=
 =?utf-8?B?U0NCZVlLSkRuOUZ4aVExcE5TK2tNN202VythOTNodjJhOEpremFCOFNoSHRl?=
 =?utf-8?B?eEdxdkxwQ0Y4T3FBaUw5OTJoN0NaZXRzNlR3aG9ZRVpKMDdad3BRNTZidS9z?=
 =?utf-8?B?L1FHM3UxQXl5bmt0L0ptSDdNdWhwNHJWSkdobDJjTDBNUFV3WXNRL1pXWWVx?=
 =?utf-8?B?UVBqWWhSMERUQ0JrRFVkUlkrN0ZOUzl2SWdCNHp2aUZrbU1Wc3NHVklCRVVh?=
 =?utf-8?B?d1o1VGs0czZHSDEwZEZDc3Y1RzhqN1J5NDlEL292cWd3TUxlb3FSN1pTYW1X?=
 =?utf-8?Q?LYRuT6DGuSZDA?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TWMxSmJETEdCcDYrL3IrY2JESGt6eVdCKzVDUUlLaSt2ZGxCbXFodFJadnp2?=
 =?utf-8?B?MEdJajBwSnlFaXVZVkdHZ0cxVjUwT0RGNlMrZ0JkNUVZT1c4ZGFDUjRWYXN0?=
 =?utf-8?B?bktCV3JJSVJPbVFoRFIxZVFweHdyUzF3RnozaG91WWF0aHoxeFQrc3gvNVJw?=
 =?utf-8?B?M1VuR0tjYUJmYkdkU2U1enFhaVVVdllkcG1TYXBHVGliVmd0Y3FFM0xaaXYy?=
 =?utf-8?B?STdaeE1JUkZnandiZU4vWFhHQmd2SjVsa3hwMEo5S2NFcS9aMHNGSUhwd1o2?=
 =?utf-8?B?eUw0b2orWkU2a3IveGZheWFJeWF1R1JadnQzd3gyM2pJUlVyeHkzbklmMUYw?=
 =?utf-8?B?ZmkzeHA5WCtmc1dGOS81azFwR0U1T0RnZVVvVmN6NXZRZGVlcG1xU1M0RmVU?=
 =?utf-8?B?ZnFFQk5IYlppaHRPSEdvNXo4ckZDTGtWZVE2aTNrdE83NHNtYmRCamFvWmx5?=
 =?utf-8?B?WDZoRFJPQmhCY29uU0pLK0tyQnhxM2l1eDRJVzZjZzA1a1V6aVBrcUpGQW42?=
 =?utf-8?B?VE9RN3U4LzlDUEtqVk5yOU96cEhRZmExL3FQME1jemdpbzlFbHM5RkhwQjlz?=
 =?utf-8?B?d2E5S1lZYVd1SG12TTU0UXlHR2g2VkpYVXhRUU9WTjVqcXdmcEVXOVVFekhv?=
 =?utf-8?B?YVNNSFpFU1E1YjVNZW51UDhHUmpZb2o4VWJNZHNEaFczN2pCZHI5by9aOFpF?=
 =?utf-8?B?SlNpNElJOWppbDBrc0FrczlVeVlCRnJMRTBmVmRJdkM3MVkvR3E4c2hjYmU3?=
 =?utf-8?B?bm5CZGRlM2lKYjNCaEJiZkxlYVpjbmdNNXYrNWpMeGJEaWtJelRZVDFURGVl?=
 =?utf-8?B?MDRpZjFFeFk1MkprU1ZyVFZIRUVKL25FQ0N0RXJScGt1V0R5MEdGdDc3ZFFD?=
 =?utf-8?B?SFR2bEpOU0EyY2Z1ZjdaWk14VzZtYmlHS20xZjRiVWlWMXZGMzFFM0dSa0Fy?=
 =?utf-8?B?K1AxcDB3UmYxTHVxRS9XZWJaTk9wZFN1Y0haY1Bhc3hBOGh3QVRVblNBeWtk?=
 =?utf-8?B?eXNaUHppam92UFdXTU9rUzRycDdwYXJzZmo2ZWZKMzZjekszdnBPSWtMZkl6?=
 =?utf-8?B?NnplNGxPaWRaV256UUUwNTM2OFRIRjYvbWNMSGdzYUxBdnI2V01lVUJ4ZU5S?=
 =?utf-8?B?Vk40Z3RhVVRGU21RYVgva0ZlYTE1cmJBVW9JcGdIemtJcnVYSmFsOFkxa0tB?=
 =?utf-8?B?bS9rY0ZnanI5KzFwQ29ETExyY0l4bG53RHhXdkhwWXp6cUk0Z3hhenBGY1Rs?=
 =?utf-8?B?enZYQTdqOSt1ZGF3QU5vUy9VUEVmVjFHMEpHOXdWMGtaUmdWd1BHT2lWUUtu?=
 =?utf-8?B?TFVGWDc4Qk40U3JWaTM2eU9lcDgrcU4xbGxMVmxvYW03SEN4WUZ1aTZNeGdH?=
 =?utf-8?B?VVpQV2ljajFLU0NlSlhoTlU3OEFOQS82SDB3L0FQSGYvR2ppUzJXWFFiUXRZ?=
 =?utf-8?B?emtwbWtzWEE2b3Rra2xiLzY2QTBtWkZEdHF2YVRISVFDQ1RUeEZRNGQrOEdh?=
 =?utf-8?B?R0phc1cydGFFeXg4UmdlMVBVQ2JsYWZLY0pjVnJtbnZDaURGN1MrRlpnT1JF?=
 =?utf-8?B?eTBIdXB4SDNSN0I1Y09oS1g4WFZsSmpEbHVSQUFxRVdLMEpKL0duMk90MEpZ?=
 =?utf-8?B?N0NhQk5QVVc3ckF5UDZ3amFiQmx0NnhHaHNNZTdoajU2d3RWWlh6NFVIdUtR?=
 =?utf-8?B?bjVkdDU2UTYzYXFKc1VFdkcwTjR4bFpFR2pBZ3BicmRkY0g0Tzh2SFJBcmho?=
 =?utf-8?B?cVpiZGo1S2VZbjBsL05sRTRJajBDOFp1OFBUNms0OFkxN2tCRG5Ndk9uMk1s?=
 =?utf-8?B?eVJ0WDdmVnJHVUg5eHk3WWtRblQyVXBwZnJETm1OZXJneGpYUHBlS2pqd1hm?=
 =?utf-8?B?aWZTWWw4UlpFek5ST1l5bTVWSUdLM01ZQmxKYU9ueXY3ZWZtOUJ1bXJRUWg2?=
 =?utf-8?B?aUl3SUE3RVVIeVVPYjhqMjRsei9ndDVyRDI2VDFsR0lMbHFyNTVsNnlvcWZp?=
 =?utf-8?B?WEpQOW8xeU00cUY2a25BN2NOSTBJV0txR0kyUy9Ub0hORmxUaGxHWlRScFZv?=
 =?utf-8?B?UGk1TTkwY3JoRnZKZlFTMlFndGtBdHVUekljTXhEMjNKWm9uM1kzL21OMDBD?=
 =?utf-8?Q?6xF+8mWaKJKxuYzJDlNjkbQE6?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca9ed3f-6747-4ee9-3428-08dd4c39f154
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB5183.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2025 14:23:10.3968
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jF8aukYF0MIQzBy4YImsR9pmxEdQNvDNRCRseFx7+rA7RJNS6yLrOt9x8jwk/fpAtlm7yLTnz59F5hfyq/BOFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO3P265MB2044

On Thu, 13 Feb 2025 06:33:58 -0500
Tamir Duberstein <tamird@gmail.com> wrote:

> On Thu, Feb 13, 2025 at 6:30=E2=80=AFAM Gary Guo <gary@garyguo.net> wrote=
:
> >
> > On Thu, 13 Feb 2025 06:26:41 -0500
> > Tamir Duberstein <tamird@gmail.com> wrote:
> > =20
> > > ISO C's `aligned_alloc` is partially implementation-defined; on some
> > > systems it inherits stricter requirements from POSIX's `posix_memalig=
n`.
> > >
> > > This causes the call added in commit dd09538fb409 ("rust: alloc:
> > > implement `Cmalloc` in module allocator_test") to fail on macOS becau=
se
> > > it doesn't meet the requirements of `posix_memalign`.
> > >
> > > Adjust the call to meet the POSIX requirement and add a comment. This
> > > fixes failures in `make rusttest` on macOS.
> > >
> > > Acked-by: Danilo Krummrich <dakr@kernel.org>
> > > Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allo=
cator_test")
> > > Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> > > ---
> > > Changes in v6:
> > > - Replace unsound use of build_error with map_err. (Danilo Krummrich)=
 =20
> >
> > It's sound, just not correct. =20
>=20
> Changed. I asked a tangential question in the last thread but: do you
> think it's possible to make build_error work correctly on the host?

I don't know what would be needed to make it work off the top of my
head.

Maybe it could be done, but I don't think it's worth the effort since
it's only used for host side test.

- Gary

