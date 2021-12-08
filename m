Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C791546DE05
	for <lists+linux-man@lfdr.de>; Wed,  8 Dec 2021 23:11:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240507AbhLHWPS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 17:15:18 -0500
Received: from mga04.intel.com ([192.55.52.120]:1792 "EHLO mga04.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229604AbhLHWPS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 8 Dec 2021 17:15:18 -0500
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="236700980"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; 
   d="scan'208";a="236700980"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2021 14:11:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; 
   d="scan'208";a="516403473"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
  by fmsmga007.fm.intel.com with ESMTP; 08 Dec 2021 14:11:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 14:11:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 14:11:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 14:11:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XvaniKDwjAfY46sTlRw2o1Ehs0St2nxEf3bIJn2oJvnTdBk0UK1nndB+9AsIWLrBpZlw4Hul/9K/MHvMoRDFoRkTUQrVQsE2s0pgxwMEOt3VpMnrDl9GWGtl9juA561/Sfh9rjV225Zku0g+WyzzUhSGUpmTogws4t2wMbDwyubSWfTZSK+zy0nbRufsKnfRF3yKBZ0+RykqXG2wF3XHqD1MKeuA2lXmxmVG7d2pM/O/7omsd1nBIShY1X/t7oUO3ZWNm2XhD+vUCfsfnCvGxcfYd0zaq9X0lC/gFzy9cT57gApiHOJs8rQxQ030Kgigu+vx6tRShYJ4nXFqDmEhjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6ifyIrIAObCl9jysaJUhH0QtzbdNYZkDIWSFZoZQq4=;
 b=mihNZnY5jG2p9Hmh2ZmF6OJiC01MkG86rkBjcSXyQATbLGTMcWPCESB/54EqK3HR2Vhvq4u0BGqqBOfnswFqfqVHuV3yLHr2cpRrvQ3PtaFs5gQU8LO8Csce+HBxJguA7jI81gETy8181Co2WsEMr1dFPdvOrzIrPY8LaPgg2CNoZcQi6WNSTBrqv0OuTf/pJBjpIRH7ypDCg8qvgRS6sq2lDDLlH779SLqJy2IYnKRR9sPf2oYQUUHCw6oiddfvdGuS90KgUsyfGp+mkT3HFVtHWp7eA4AkFoBQP/Wxb00zncT4A3e+9YibUJ7/kW8jLN5mVQ/ttY17+cng3bl23g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j6ifyIrIAObCl9jysaJUhH0QtzbdNYZkDIWSFZoZQq4=;
 b=av0cHFq87sMIv9NAEHtgp4pkHi+ScZQE7aTGvgzDIuc2D93+t9zpW8a3ChXaUGQ5R6tQ1NFhFAI7CS3ihHh2pY8k3kDlb4JTFJNnnUoAYPyfG+Pi6g6hdC1GVZIdy6aGle7OiA/Dc4iWGmcTuVq09N14KfxsRLMScn8gCCyF98o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN0PR11MB5744.namprd11.prod.outlook.com (2603:10b6:408:166::16)
 by BN9PR11MB5308.namprd11.prod.outlook.com (2603:10b6:408:119::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15; Wed, 8 Dec
 2021 22:11:35 +0000
Received: from BN0PR11MB5744.namprd11.prod.outlook.com
 ([fe80::bcd0:77e1:3a2e:1e10]) by BN0PR11MB5744.namprd11.prod.outlook.com
 ([fe80::bcd0:77e1:3a2e:1e10%3]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 22:11:35 +0000
Message-ID: <8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com>
Date:   Wed, 8 Dec 2021 14:11:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Subject: Re: [PATCH v10] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Content-Language: en-US
To:     Jarkko Sakkinen <jarkko@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <linux-sgx@vger.kernel.org>,
        <dave.hansen@linux.intel.com>, <nathaniel@profian.com>
References: <20211130175007.22903-1-jarkko@kernel.org>
From:   Reinette Chatre <reinette.chatre@intel.com>
In-Reply-To: <20211130175007.22903-1-jarkko@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CO2PR04CA0071.namprd04.prod.outlook.com
 (2603:10b6:102:1::39) To BN0PR11MB5744.namprd11.prod.outlook.com
 (2603:10b6:408:166::16)
MIME-Version: 1.0
Received: from [192.168.1.221] (71.238.111.198) by CO2PR04CA0071.namprd04.prod.outlook.com (2603:10b6:102:1::39) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend Transport; Wed, 8 Dec 2021 22:11:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1758f399-a70f-4ddd-0d43-08d9ba97b29b
X-MS-TrafficTypeDiagnostic: BN9PR11MB5308:
X-Microsoft-Antispam-PRVS: <BN9PR11MB5308E2F74D7C01424EFF3310F86F9@BN9PR11MB5308.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8SUMU3AiLocWKno5dNXzCTfI2O+nIU1FO3w6CemR5kwdNZuthdZJ2TYXexOBy8Z94Vl4xMZgMTtooL6X2cxjEQSIt10Voq41dcJnRFu2qbWUJvnXVq2TloTHqag3O8HAT57enr8bVknKirLFWQtcm/BbulQI2cSxBPXgmHJ1Zn+MmE2mDxZpRV8+wRqQ6G9dg8jk+FO8ccQWuDty8xOpl3Kreo9yiqBbeWKlxeVNDbbFitZi7tfqFbBqIu/Lp2KvZ92o2m2UVni248jZR6UUPF7ieS/NzLG6UAG4KzdkbDOemqKcYqxFlL5Mu5OtYLb5ziRWRIe4qya4mv21N9YFhamYEe4xh7bz7bb8HgXaxhijG3tZ7EhlmJ2HACbC0SVcE9gmQ8vLGKYh/CiRpNdOLTGPBf/iNTPlDWTCzLks+WWRdKYpAfrPM4KN7C7dM3PYdS7THXh0bm04n6P3qpYIgNvRbOV1Q90PGmFYgpygFYRrOXAQFIimB9Rp7KiC2HycnR1U6APY1xrl+wfVX6CCjHzayxB93naIQYdnttensIzHIRwtLxSEihwNdXrxY6KClbwozHp99E0m9wj5tyBBLXkOET8sr5id9oa7+uEwMwil1sWPtaqueQrPs09kFSAg+volhIiuLHC6Qi7ZzFHepzcy01wvuSHnwTigKYncbufu8toJ5Bkfhg1Gl/wABoxCEKrIpRRyTGV9rZnwYM2PYWhTDQzk5iCjXEonj6vbwk0jUI7M4gyQQvO6vIs2+l4C
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR11MB5744.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(83380400001)(956004)(4326008)(16576012)(8936002)(86362001)(26005)(316002)(82960400001)(2906002)(66556008)(2616005)(36756003)(186003)(31686004)(66476007)(53546011)(66946007)(38100700002)(110136005)(6486002)(8676002)(31696002)(508600001)(44832011)(5660300002)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekRzU2dpZDgxSUpYTzNCOGxSNmpRTy9jd0FtbDZScWxkVG5wa0M3UkI1YkxB?=
 =?utf-8?B?Qzl4T1A5ZktGcUpHdE50enhxaWVwV2ZsazlmR1ZrTVRmS2ZET2dFNGcyQWxU?=
 =?utf-8?B?clFhRUdlRTh6RlAvZWhnUkpUSEkzczh5RnBqR29SRC9NSytMdTgzN1VlRU1p?=
 =?utf-8?B?azhSOWtZUFBJOERVMnNYVmU3NjJ6YjhNczk4cGNlVHlKcHRNWmI1WjRkQXQy?=
 =?utf-8?B?MG5YTjd4MnQwbXhmYlFKelRFZGJVV01GeHM0WlpCalVqWUR0aTJ4QWlIcXM2?=
 =?utf-8?B?YU5jKzA2NjFFRmYzUjBwVVo5RDVQTkl3SmhyQ2VFRDJkdDVEQ09rLzBxaGt6?=
 =?utf-8?B?blBVbWlTemd1OWNYSnM4QVRxZXYwVHk0NG1EVlZzbnlhQUlHdU4vVHdMeEE4?=
 =?utf-8?B?cUxYUkhwMkZETHBNSWp6UnczNmR4T3ZiMlhBNnIrYjVwV28rakdRVmRRenhS?=
 =?utf-8?B?dGZ1aTA2Ty9rRVYvZEVGQk95MVBWVXpDWUcyaE5wNjFQNlZqR3piWElQLzJW?=
 =?utf-8?B?OTVVUXlQT3R4UTRNY2V2Z0hsZWVubkFEK0Vsb20zNW1lT0FKS0dyUndlYyt0?=
 =?utf-8?B?NmxzWFBvWk81SzVPNHFtRmdpYm1CWGVQamlKaWYyY0kxc2NENFJ0bjR4OEFB?=
 =?utf-8?B?Z2JOLys4YnhLU1ZJSnAxSUtrMlkxUkxFbXYyWDFCa0ZsVGZmbjNqc21uc2x0?=
 =?utf-8?B?MUJwS1pySXMwS0Jrd09SenB0ajJEejIrZHhRRjU4NlBIQndkVlZKdFU1VW00?=
 =?utf-8?B?SG1WY0N5T1JsWEpwVjE0N0pHS2NQUUV6UWdmalp4cklJWU9oVWZ3c1FEYkVG?=
 =?utf-8?B?M3JRaGROM05nYm56RWVCRHV3eFBUam9BMWhWaGxDckp1bU1jcS8zU204bTVH?=
 =?utf-8?B?RnhDMzExYml0UDg4Mmc5OHp6aU5RRE5JTXd0bk9abkdVeFFpSWV1NnE1RnNO?=
 =?utf-8?B?RExSS1dIdlcyZnpBaUhJSlVaR0o1SzJkeG9jUGVOM0xTZFhHdlVuSmJLUFVm?=
 =?utf-8?B?VFF5R2hIaDUrNzA4blZvSHZ4bVowOFdpYUlVU29rNGNtVkliYkluN0JYWExU?=
 =?utf-8?B?cWJMVjRIYUFRT2F4c1BIUGQ5aUpRSit3MnpkaWpGUDN2M0daTEdpcmJDRlJ1?=
 =?utf-8?B?eTF1TmxYbWp6Z2taU2V3MmdXS29vcHYrWE5hajBuZTRMSVBPT0QvMUxwYmJs?=
 =?utf-8?B?enoxMXFiaDU4aUpxbUpmVUhLZXdJaGRvcW1rUVZqYlZ1aE93VThBMHVkRXZK?=
 =?utf-8?B?dGRqaERsSDVsVlZ6K29ZTThqSG1zcUpPQ1VGZ0w0all3VmVRZDJDS2kzQnJF?=
 =?utf-8?B?S1ljSDVHazdidnQ0WEFhU1N5d2ZFejBtdStUdTRQaXN4bkZUSmswWGVrOHdk?=
 =?utf-8?B?S3BHdE13QTIrSnkvWG1zUmJGeHo5enFTbGVYcFJuTmprM2ljZFRVdGp4c3Yv?=
 =?utf-8?B?WWpiMzhZSXl4WjlMT2lzWmd4RzJzNm14YmczdzgrRkpLendicURFbE9aUnQ4?=
 =?utf-8?B?YnRGZjkxbjR2NkRwVUk5WnlYSUt4ZUFBRkZDSVlrdzlFb0kvVGcrdHJZdjRG?=
 =?utf-8?B?TUk0cVVmNzBmRFJVbGdvcDBmWmZJcVkzaVN0L2NKV3RUVHBZM1NaVnRPTENC?=
 =?utf-8?B?U3FCYU5QZExyOGwrcExKN1ExMWlMc2R6dzVoeEFXaGw0WnpRR2RIYXhDR25Q?=
 =?utf-8?B?VlN6Q0N0bVJxL0JOdzNaT1FReVlXVU14cTZPa2l5YWxsVDM1bENYSzAvRXQ3?=
 =?utf-8?B?UXZ4UmFtM3RKZjJZNnI3K1lIVFNwVzhTdDV3Y1hIR3UvdXNGSHpNZS9ZeklJ?=
 =?utf-8?B?Q1dkaWhBcWs2eWNyYXloNzBrN2lTbURTdjFXc3VORDY3VTFTSitZVE5URjZo?=
 =?utf-8?B?RGFsM3FoMzZzVS9WTEszZDhnOExIZXJvbE53bFFWZ2F2eC9HVXRKTVFHRDJn?=
 =?utf-8?B?VkxHaGtHZC9SVSsrbDlORGMwaDRQcjBSWUFKbVlMRG5GR25HK1AyT2pvSGVh?=
 =?utf-8?B?UFJ0UHAxazJaQTQ2cWZNU0k5bXdvQ0UxRjBJMWhEZU15NTR1cTcwRDBpb3d3?=
 =?utf-8?B?ZTlaZzFWNS9IcEhxNGxJNXkzRkRma2JDdVdYenJsMjVSUy8wdkQ4YU0xQXZR?=
 =?utf-8?B?dUlYR2ZlcHlHYnpyNXlqeDlCZTNSb0FoNUN3QXhOcUR5dXBLTkRlQVhOODkr?=
 =?utf-8?B?Nm9DOSsza1Z6NXVnN1RBRUFTckM1c2tkV21lVlR0NkdoaTFkN0ZmbURpWDlM?=
 =?utf-8?Q?rPjMITpKp6wTUrBFfY1O0ywX6Qewv/Uhenmvybq43E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1758f399-a70f-4ddd-0d43-08d9ba97b29b
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5744.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2021 22:11:35.3141
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BFYqzdBwU9/5k13VFO/PavoVLNliPAPhtb46qmYmODHLcIt+qzbLp0FHP83comgE3jbQMdQBDLTL27Q5//9qbRlsZTjzYyMOKqDxCvB4x1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5308
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

On 11/30/2021 9:50 AM, Jarkko Sakkinen wrote:
> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>

...

> +.TH SGX 7 2021\-02\-02 "Linux" "Linux Programmer's Manual"
> +.PP
> +sgx - overview of Software Guard eXtensions

Is the "overview of" text necessary?

> +.SH SYNOPSIS
> +.EX
> +.B #include <asm/sgx.h>
> +.PP
> +.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"

I view the man page output using "man -l man7/sgx.7" and when I do so 
the above line is unbalanced: "enclave" and (unexpectedly) the comma are 
underlined and the line is displayed with a single instance of a double 
quote: enclave = open("/dev/sgx_enclave, O_RDWR);

> +.EE
> +.SH DESCRIPTION
> +Intel Software Guard eXtensions (SGX) allow applications to host
> +enclaves,
> +protected executable objects in memory.
> +.PP
> +Enclaves are blobs of executable code,
> +running inside a CPU enforced container,
> +which is mapped to the process address space.
> +They are represented as the instances of
> +.I /dev/sgx_enclave.
> +They have a fixed set of entry points,
> +defined when the enclave is built.
> +.PP
> +SGX can be only available if the kernel is configured and built with the

can be only -> can only be?

> +.B CONFIG_X86_SGX
> +option.
> +If CPU, BIOS and kernel have SGX enabled,
> +.I sgx
> +appears in the
> +.I flags
> +field of
> +.IR /proc/cpuinfo .
> +.PP
> +If SGX appears not to be available,
> +ensure that SGX is enabled in the BIOS.
> +If a BIOS presents a choice between
> +.I Enabled
> +and
> +.I Software Enabled
> +modes for SGX,
> +choose
> +.I Enabled.

Earlier there is the underlined "/proc/cpuinfo" text followed by a 
period and here the "Enabled" text is followed by a period. In this 
instance the period is also underlined while previously it is not. 
Looking at some other man pages it seems that the custom is that the 
period should not be underlined and I will continue to point out 
instances I noticed where this is not the case.

> +.PP
> +.SS Memory mapping
> +The file descriptor for an enclave can be shared among multiple processes.
> +An enclave is required by the CPU to be placed to an address,
> +which is a multiple of its size.
> +An address range containing a reasonable base address can be probed with an anonymous
> +.BR mmap(2)
> +call:
> +.PP
> +.EX
> +void *area = mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS,
> +                  -1, 0);
> +
> +void *base = ((uint64_t)area + size - 1) & ~(size - 1);
> +.EE
> +.PP
> +The enclave file descriptor itself can be then mapped with the
> +.BR MAP_FIXED
> +flag set to the carved out memory.
> +.SS Construction
> +An enclave instance is created by opening
> +.I /dev/sgx_enclave.

Underlined period above.

> +Its contents are populated with the
> +.BR ioctl (2)
> +interface in
> +.IR <asm/sgx.h>:

Here also, should the above colon perhaps not be underlined?

> +.TP
> +.IB SGX_IOC_ENCLAVE_CREATE
> +Create SGX Enclave Control Structure (SECS) for the enclave.
> +SECS is a hardware defined structure,
> +which contains the global properties of an enclave.
> +.IB SGX_IOC_ENCLAVE_CREATE
> +is a one-shot call that fixes enclave's address and

fixes enclave's -> fixes the enclave's ?

> +size for the rest of its life-cycle.
> +.TP
> +.IB SGX_IOC_ENCLAVE_ADD_PAGES
> +Fill a range of the enclaves pages with the caller provided data and protection bits.

Should this be "the enclave's pages"?

> +Memory mappings of the enclave can only have protection bits set,
> +which are defined in this ioctl.

This is a bit hard to understand. How about "Memory mappings of the 
enclave can only set protection bits that are defined in this ioctl."

> +The pages added are either regular memory pages for code and data

regular memory pages -> regular pages?

,
> +or thread control structures (TCS).
> +The latter define the entry points to the enclave,
> +which can be entered after the initialization.
> +.TP
> +.IB SGX_IOC_ENCLAVE_INIT
> +Initialize the enclave for the run-time.
> +After a successful initialization,
> +no new pages can be added to the enclave.
> +.SS Invocation
> +Thread control structure (TCS) page are the entry points to the enclave,

page are -> pages are ?

> +which further define an offset inside the enclave where the execution begins.
> +The entry points are invoked with
> +.I __vdso_sgx_enter_enclave.

Underlined period above.

> +The prototype for the vDSO is defined by
> +.BR vdso_sgx_enter_enclave_t
> +in
> +.IR <asm/sgx.h>.

Same above with the underlining of "."

> +.SS Permissions
> +.PP
> +During the build process each enclave page is assigned protection bits,
> +as part of
> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).
> +These protections are also the maximum protections to which the page can be be mapped.

to which -> with which ?

> +If
> +.BR mmap (2)_

Unexpected "_" above

> +is called with higher protections than those defined during the build,
> +it will return
> +.B -EACCES.
> +If
> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
> +is called after
> +.BR mmap (2)
> +with lower protections,
> +the caller receives
> +.BR SIGBUS,
> +once it accesses the page for the first time.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.

This does not document the SGX_IOC_VEPC_REMOVE ioctl that was added in 
v5.16. How do you envision additions to this page as new features are 
added to the Linux support of SGX?

> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap (2),
> +.BR mprotect (2)
> \ No newline at end of file
> 

Reinette
