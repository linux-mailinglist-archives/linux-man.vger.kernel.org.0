Return-Path: <linux-man+bounces-2405-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB84A32C03
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 17:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBC3F1664FA
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 16:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8251924CEE7;
	Wed, 12 Feb 2025 16:38:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b="hAKuWqla"
X-Original-To: linux-man@vger.kernel.org
Received: from LO3P265CU004.outbound.protection.outlook.com (mail-uksouthazon11020129.outbound.protection.outlook.com [52.101.196.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEC820FA91;
	Wed, 12 Feb 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.196.129
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739378336; cv=fail; b=MJ+DcmwANbxIOImAGBEqsZtAfXcQo4Krio1rGfIhNRKGt7iBUHQL+FaCDG/L8BziBFl5J8+jt334+XOr+c2cEOi9kB9721q3S0lePDtTrVNZIVrIgpJ9wpbTmFNQ3uILg/L+BNfN2sl9sAqhSedmMXaFe5BvfFsNDqcfD5Z/AwA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739378336; c=relaxed/simple;
	bh=c8Ov4JMIZMQcvCWTmDIO4vuPAElkgbuMWhdC912wyms=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PtmmjBQD0vVrV7i/jvetSVZBeSzn95mwowUwrWDSgvPzuSHl9RmNmJDDYEqmeD1zwQ6IPgMylRLYNvkfEx1H35XZRHUQOsJgOzY3YtLhodmW4BDkT1+0vJsb9QpDsTmAMwoaY80xPg/WvmmfF6matsGSTLnx4KjSavy1jaWFTr0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net; spf=pass smtp.mailfrom=garyguo.net; dkim=pass (1024-bit key) header.d=garyguo.net header.i=@garyguo.net header.b=hAKuWqla; arc=fail smtp.client-ip=52.101.196.129
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=garyguo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=garyguo.net
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qVC5NS/ffJ4JYdcBlc4rJFH9MnaZ288Z1sYm0RO0rj7/uektv9DUVThI7+kS9sx+tKQQHThgM1gE8kdLg04T5XBcFRcrH6DHeXgMsx7eaY4FkhzjtrjEO/5nV3zIYxyJ92Tj92hrc6xww24lm4GnwJxdu+hYAu/uco98+iGdQ4lyvaLIWr2M1Xx8z7fviJ/xQA/KaUrNupmfEEnVGv321SILRCcWCgr6cYFPhCrWJuGrcuQgiSNpBukTq2CC+IRPq3lTyLQgkBNpWl0KE0gE/nwrH/R8Zi5lmsLAaPWdbBJ/v4/4NY1rqD6mIUm7dxXUia3eSrRwQtEs4wwL3M0epA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LkF0Y1wEshNQb1EBKymLnhhIHaTdrHWs0XzA5xSVulQ=;
 b=BDBHvi9Tp24Frn2jpNDoQfbXxYlAuQsIwvvCBkaZMHvCciytp46wmUHqlDLyawgLbpwNT0u3H53sDu9gBbDyjLO6Z3i1ElZ6BCojqvfj9PK+autKRYBjUkyjTJSn1EvG3Vi798zpg2L374whdI4nMcY9156PQnThBpqi8rZHGU1BlTMKZuaca4ITOKnNuhGPN3E3XH+UWyYWG42R6LTzM0veTHSNP6khurU1GPwzlO6eNgQc4G0dcnZIY0jVtkcaxS9o/fpS7cgfNQzhAMrrfGZSRMVut30qPUKMDF+YEAAn3z6Gl2zmOcf8gqi3w+w6oINuZ4AvJYrj1RAgTzloWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=garyguo.net; dmarc=pass action=none header.from=garyguo.net;
 dkim=pass header.d=garyguo.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LkF0Y1wEshNQb1EBKymLnhhIHaTdrHWs0XzA5xSVulQ=;
 b=hAKuWqlaOq/zFQSaOPJ/GqXXzTJrjYgpywteD8bPa6LFjKsdNkATYlmABrtLFq4G7C1JzoBSLHAxOW0vb9E2eOJ9dFYAMQ0IdzD1P269xQdl121sFdBOUr6LNNggeIQ+ON8g/ov9A0OIO4G+TptTLbcX4HSpqubHxy0v/f4WzpI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=garyguo.net;
Received: from CWLP265MB5186.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:15f::14)
 by CW1P265MB7963.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:212::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Wed, 12 Feb
 2025 16:38:50 +0000
Received: from CWLP265MB5186.GBRP265.PROD.OUTLOOK.COM
 ([fe80::4038:9891:8ad7:aa8a]) by CWLP265MB5186.GBRP265.PROD.OUTLOOK.COM
 ([fe80::4038:9891:8ad7:aa8a%7]) with mapi id 15.20.8445.013; Wed, 12 Feb 2025
 16:38:50 +0000
Date: Wed, 12 Feb 2025 16:38:48 +0000
From: Gary Guo <gary@garyguo.net>
To: Danilo Krummrich <dakr@kernel.org>
Cc: Tamir Duberstein <tamird@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, DJ
 Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, Paul Eggert
 <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng
 <boqun.feng@gmail.com>, =?UTF-8?B?QmrDtnJu?= Roy Baron
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, Andreas
 Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor
 Gross <tmgross@umich.edu>, rust-for-linux@vger.kernel.org,
 linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
Message-ID: <20250212163848.22e8dcff@eugeo>
In-Reply-To: <Z6zA9UNm_UckccRm@pollux>
References: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
	<Z6zA9UNm_UckccRm@pollux>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO2P265CA0024.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::36) To CWLP265MB5186.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:400:15f::14)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CWLP265MB5186:EE_|CW1P265MB7963:EE_
X-MS-Office365-Filtering-Correlation-Id: 86db61af-8721-442a-f23a-08dd4b83bab9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|10070799003|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?3d037x+S5D/WP4Tg0pN5z6RGtf1kiRF9pgiarpEfn0/cr88QUFCo9vo/ow+e?=
 =?us-ascii?Q?Ul8arCT5ssUcJT9jk/Mt3zzGRx3dud0XaCzNmruvtdI9M71fNMcFEf+GgPBV?=
 =?us-ascii?Q?v6+SbRCg2M0UGWc9dHfBsByX++7M9J/5J1SdNtl/+dER0T3NDpDnHFCpyfjr?=
 =?us-ascii?Q?bp8D7xWCAracePN/hMKCjRuspSLSaPQT8lOkQcjcBcWM2Y0m+QQgJ1gNhwnb?=
 =?us-ascii?Q?PKsfbpA9KyD5IeQ9KSAEsbOty/wD+cR306SSaxKQm/Q4J8cfRzjeE5skQVIx?=
 =?us-ascii?Q?4Z7YwbglPWDm/soun2HXhVtUK0JHjthEwHMyU4P5otRxyG9uWMJcpf84Kbsq?=
 =?us-ascii?Q?NQKbxAJGsq1TaiW/pu76N0KmtmL2cuglN0IQGMxTSqHI1GLvJcewQXPv+H8U?=
 =?us-ascii?Q?g5d/tzZ8vpisYKFLub2Pz7DD8sgP1YpGuaDr4sND5o65GbEIKpAkySOy+nBH?=
 =?us-ascii?Q?mbYr7uxBnJSV777aaCbgMoj9kHdpYDaPxuRQeruKwaPsjgpa8wfHFKl4K93S?=
 =?us-ascii?Q?LRllQumuZu1BKCnt1oCVK46OrpH91Gmsk6RbAwjZ2JGxnt+iEkksx+8DN7JB?=
 =?us-ascii?Q?i56mQ7du+k1+m8vf1IFHnIUimt7nwH0rexPLhkHhmzb+1rqobpTqZIwF2m4v?=
 =?us-ascii?Q?EmClQLAfFg3sLqj/c22r3m76PRfW9pRJFOjGEI0/Gv30J5mjSaN6/LOgyAOn?=
 =?us-ascii?Q?/ePv8mcLj+AmCM+Jwnz7T8f4wKUxXaMa1Yi6MqlzEVuVjmePkp4FfeaaSMfa?=
 =?us-ascii?Q?MGfxP8LPSa51DxGvdXBjCIjVYJDS0O6wFOo+dah+RF8s8SaDsUaS1/wVTf/d?=
 =?us-ascii?Q?te9DV4Ae2+YrgVKpVPkvjTvTBPtyWR+5qhG7RJHCcwRivq/LuKpjwkriDeMS?=
 =?us-ascii?Q?gXvjx4fjBnZs5ie4flZ3DDEuHFRUVsajNwNXLHe29W6JR3IkjNZWoBeuHcIo?=
 =?us-ascii?Q?iIy+e7S9prvhabDgWDLgphhgJ1BU8oyxGgKD+Y8tGfrPMqSFdBdSM4cZkbkS?=
 =?us-ascii?Q?ebQIiUxsSFYz/xdecW85IqCvLiwR14f8NOo2VexH8syRiS/LlFAakzXf+QH1?=
 =?us-ascii?Q?xD6t9zPQY7gDNoKcEOW6GM2VPAohkw7SDigKVHqKgU9mD+J0vJKFqg3xzBYS?=
 =?us-ascii?Q?JsGg08afHKtUUbY44UO0k3L5TqZVtKWERkMFbCuKLMFYQjGWjYcVt1meh9sC?=
 =?us-ascii?Q?NGO02LrKsWZC13rQNTBe88KASMq6ZmzmAS+wAUAN/Whz+EvIwpzlmLSOQ6Io?=
 =?us-ascii?Q?oByw5Z5aHeMK0VKleg+5hUtrQBXb2SUH6nEJqOhFqrQiWfSTQVXEOZDs0yEm?=
 =?us-ascii?Q?XNMml52UxZsLI/+ztX8T8smNA7Geektmm2m+9j2covolDqiVvY4J/yXVQJY1?=
 =?us-ascii?Q?+AOrl/4Mj146aoEkTF1zcSy5YEj5?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB5186.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(10070799003)(7053199007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ry9kXIds3dWEQ6RADSmIPn4Az+3ZLORinbbg0cCU0+YZZedInHbS4E40khJa?=
 =?us-ascii?Q?g9uFWy4+3zuLMBzZlPUkAZbCra+ZwyTDl9sijP+Ae2neZg6sy6KGj/dQ+x35?=
 =?us-ascii?Q?35SSkemvDSvFwmRLG2WdjdYbVcHvsUCemqkqj10DIvrbpRRu9PGy7Ulb5MB9?=
 =?us-ascii?Q?VfbfMFFAXO0qwituRZcg5MERul1PS9zQ9YZ7I8ciClX5yIRcd3OlgE5K3qfg?=
 =?us-ascii?Q?ABMkTd7lDxRCGfC5O8WGPmCneCqKDrA9hQNG0L9qFk7bYG5TcTEZQsHRj9Ld?=
 =?us-ascii?Q?Q8pJiMnDE/Lqhzx1XKktnGseLWNBi84aTZJ0uqjYbG7pgfyLCdF0cuKQUXp8?=
 =?us-ascii?Q?88VuvrykMNz07p4yIjzDJNpefo3vAw6XCF+4srUZoXZLCRbQFmozZD03aP10?=
 =?us-ascii?Q?Esp1bDEcPE4oug/oz8/bw6NsqH9sTTP4Dq7pTwr9MP1dzXiLEaEo/+B/8otd?=
 =?us-ascii?Q?9mDwDNn6JotchT6/EnD9mYE3+LBEgnlo1gXr00khfB73W+k1rORbQ8Vu2KBm?=
 =?us-ascii?Q?60XZ6s4mWuujTFVTAYqsCU0l+EDZSMb9zabGfC+iJRXQ/mFN9YRQl9p0K1+Y?=
 =?us-ascii?Q?cInQiXQFmRVHLtApQhy9/queRcPg1kp6rRZOKk3vTboe9/PVYcxoro4Ykk45?=
 =?us-ascii?Q?V2NoPbASaMyx5t+abZMd0pdgRVgu6Wb8TtNvRw0l2mTzsx9A5KC9DwZdtweA?=
 =?us-ascii?Q?RuItQ5yNpql2n9k9Er/PRl76uebeQ6SjhjpZ8LfcXsq6d2QpGQfzcIMAZToT?=
 =?us-ascii?Q?YAKZnZqYG6Zaf3hRFADcNu1YevuBX4+K1eEiIHUtfmZrcd5YvsvuUneEUO6s?=
 =?us-ascii?Q?8zLQ2rR1G3xQyxEbaHKHk5hS+9XLenYWB1Do35BcyINaLXDDOr0Tb1N/ecCs?=
 =?us-ascii?Q?TCoFtBJ9HR3lAMh7hd4owKr1myPys8Bu3D/u5n/818FPOTF2UwtDkA0R3vuz?=
 =?us-ascii?Q?fUC4vzGuDDUjadrXbfZ0TfUDI//ZUR9gREh6oYqiTpvXpSqAKUpwI7wjBkIG?=
 =?us-ascii?Q?2O9fjIoddy18o2pjVCdXlz0oOQpSLCTDcf4ppS5akaEQ0nUF4Uiws6t2pgs9?=
 =?us-ascii?Q?06qrCOvIuhIt4nOCE7xXRms6MINHn4103IkGvMJYkMAM72uy106Bycc7PAxf?=
 =?us-ascii?Q?+1lfTn1FVVY2yBIWnNpY6SJ+NzHwQj6wENlc/zXP1pwKekCFNfDpGBhp1D5K?=
 =?us-ascii?Q?NCCwYSyDbelPNW7hv99zjaOaGTJFgIcqkn09LVsnQ99wNSKfOiaITtUpo25I?=
 =?us-ascii?Q?+RKGTEgUDI0Bp2yQzWgejoJeMbdR3e3YPozXyWfgrXuVAYSzZVWv6vA7YmqE?=
 =?us-ascii?Q?A+P0lC406VLdc3e2aGKaTRUQmEAqIz7NTgwWIf3ey7gQeRELd7lkDFVvoFcW?=
 =?us-ascii?Q?5ec4CjCmVgzyqEM/LHf6APwD5/CU3SIR+ByPi8YvSk3GYDkIlDHUEa7yXu3q?=
 =?us-ascii?Q?NCfN0oaQgKqgGgjl9F+o1EfPI3YaAayHRtotYWiQ3pNdpxNpd9SdJxceztfN?=
 =?us-ascii?Q?E0ILjZpD+Bo4R915VGZ3swoijUFmrMaHwn4BoopMbKzvJ5ehRirCz5powQwl?=
 =?us-ascii?Q?0XkHLB2O6Fi5P+wMGvBMARTHUJqSyvlF1zgypquL9nhOMKo4uziy5/hEkxUq?=
 =?us-ascii?Q?VQul1TJ7ocrYab9D0oOW6iQ+cis1OOWYaD9iRJxzPsoW?=
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 86db61af-8721-442a-f23a-08dd4b83bab9
X-MS-Exchange-CrossTenant-AuthSource: CWLP265MB5186.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 16:38:50.3494
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ttBhxYb0mSVgjD2i7kKzRDL9ypS/jarECNzLKx4sy2U6qs6Cs2XEfYAeoTfva4yto7MT/C1BLph2hr+qcF5mAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CW1P265MB7963

On Wed, 12 Feb 2025 16:40:37 +0100
Danilo Krummrich <dakr@kernel.org> wrote:

> On Wed, Feb 12, 2025 at 09:43:02AM -0500, Tamir Duberstein wrote:
> > diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
> > index e3240d16040b..17a475380253 100644
> > --- a/rust/kernel/alloc/allocator_test.rs
> > +++ b/rust/kernel/alloc/allocator_test.rs
> > @@ -62,6 +62,26 @@ unsafe fn realloc(
> >              ));
> >          }
> >  
> > +        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
> > +        //
> > +        // > The value of alignment shall be a valid alignment supported by the implementation
> > +        // [...].
> > +        //
> > +        // As an example of the "supported by the implementation" requirement, POSIX.1-2001 (IEEE
> > +        // 1003.1-2001) defines `posix_memalign`:
> > +        //
> > +        // > The value of alignment shall be a power of two multiple of sizeof (void *).
> > +        //
> > +        // and POSIX-based implementations of `aligned_alloc` inherit this requirement. At the time
> > +        // of writing, this is known to be the case on macOS (but not in glibc).
> > +        //
> > +        // Satisfy the stricter requirement to avoid spurious test failures on some platforms.
> > +        let min_align = core::mem::size_of::<*const crate::ffi::c_void>();
> > +        let layout = layout.align_to(min_align).unwrap_or_else(|_err| {
> > +            crate::build_error!("invalid alignment")  
> 
> That's not what I thought this patch will look like. I thought you'll directly
> follow Gary's proposal, which is why I said you can keep the ACK.
> 
> build_error!() doesn't work here, there is no guarantee that this can be
> evaluated at compile time.

`align_to` will only fail if `min_align` is not a valid alignment (i.e.
not power of two), which the compiler should be easy to notice that the
size of pointer is indeed power of 2.

I think both `build_error!` and `map_err` version below is fine to me. 

Best,
Gary

> 
> I think this should just be:
> 
> let layout = layout.align_to(min_align).map_err(|_| AllocError)?.pad_to_align();
> 
> - Danilo
> 
> > +        });
> > +        let layout = layout.pad_to_align();
> > +
> >          // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
> >          // exceeds the given size and alignment requirements.
> >          let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;  


