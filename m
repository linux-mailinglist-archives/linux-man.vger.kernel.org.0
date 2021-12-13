Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71480473544
	for <lists+linux-man@lfdr.de>; Mon, 13 Dec 2021 20:51:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242525AbhLMTvn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Dec 2021 14:51:43 -0500
Received: from mga18.intel.com ([134.134.136.126]:1682 "EHLO mga18.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233215AbhLMTvn (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 Dec 2021 14:51:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1639425103; x=1670961103;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=jh5PcORg4+WfvlQiBw7LHv0GxubHutvVQDD5MBdt0rc=;
  b=KGcU1p75JcvoakI7NDW8erKRoT7wFInLFrNEmfkbjug6zNWoLK/XIwD8
   aVFIguOOeixpVG0Gi9euJUKYdiSLq/6YWXR8mZn2dfr21pKjVTd8eO1Sd
   5fgSx7ROXhIOUE3gCe55/vEvciI/DnZVcXcZia38gIy//uGa72myvgC4P
   a01/7TlTmn73JEF3Ywek5Tx9fyHyje0zYYZ9MsZNFbgjrX3lvlAUKsCei
   680ipz+MKWB0JBEIKm5M8MKqyt1M9WghGwG4cito2igGeZeTyDnbQTNmM
   mFCTyxxO5n6xhJ1CWeLUdOiwdbmy8lOzwDNG8ek+DTByiP9s2VaesFiJq
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="225674406"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; 
   d="scan'208";a="225674406"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Dec 2021 11:51:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; 
   d="scan'208";a="583020717"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP; 13 Dec 2021 11:51:42 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Mon, 13 Dec 2021 11:51:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Mon, 13 Dec 2021 11:51:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Mon, 13 Dec 2021 11:51:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TGE/u4DF+IX9t0JFkumbm1j2Ue3mm69Vjv61sHF47BIMlZmt7uDkx2XQgRCxZML9pkYXDP+A33QxJ/N5Y4OjBvCJsd5i8FzagRDB06eIbNHQxPDP89I/C/m6k9Gi4CjdJtYGqjblwTiz3Izq3vU1wv51n5yySlzvjezvTMAwOvP5uQByp9qGdq13OWBVI6aCo+5+xNMA/UTLivsQFBg6CFZCiW5TMWPvl2Y0goE0ZPxJXyX6QTC13L2P41bIQHjy5Q4imIXShtAHLmBkSr+dAO7so2GkDqGNRCO7lHbW9KAQphW0r6r7G20LGbvJaqKkK4zlHxWiDxgHJAfhWAFH2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Skp8t3Eep+EaIdMehY8126dSEhAM9/pZgirdaRVCTto=;
 b=cCAwXIY6fYyNOYQGnDvExPnJr2ix5t05iRy2e/b4dUcK/23+c54+x+GuCrL4eYZoIIlWv1/8pM8U1yRSjIP+9aYGW8NafkvsH5bimfKfvqkVoslshah7nfaEzChJGykquMqP8usH8Tcvz0wlymDiIsb2fcHae8gscWofRgAyeLWdPnzPLBUzU5GH8LIC8ZLhljzhboS0fHTtiyMvE56ZpFR+Cs1XoSDC4xiDBkRvQxcjf3nGv5Cjw8TQbvJ1hMYgAtSpKkKRN0EWijG3uBX6C/oCX0lEjFqDKwPN3z2snZgOF5xwDg2SCOiKoj/TB6nQnPtoJkBgwQ1GgSLJXiKClQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Skp8t3Eep+EaIdMehY8126dSEhAM9/pZgirdaRVCTto=;
 b=r7QHQVk8fMrRLQu0bFSfDSvHdYLZ9qkbrs5NV29d/5Jwb8D9PD65hDfH0imODJxY/bS9oAEGsFUIEK4KjZappl1v3FhESzETXEkHrobVNiSIp2sLKKjlDHlAWl6vn66cHVuc120EvFMnKm0ZJf+pAyHrFEMNRv46zXb9BOixKZc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN0PR11MB5744.namprd11.prod.outlook.com (2603:10b6:408:166::16)
 by BN8PR11MB3729.namprd11.prod.outlook.com (2603:10b6:408:81::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.18; Mon, 13 Dec
 2021 19:51:40 +0000
Received: from BN0PR11MB5744.namprd11.prod.outlook.com
 ([fe80::bcd0:77e1:3a2e:1e10]) by BN0PR11MB5744.namprd11.prod.outlook.com
 ([fe80::bcd0:77e1:3a2e:1e10%3]) with mapi id 15.20.4778.018; Mon, 13 Dec 2021
 19:51:40 +0000
Message-ID: <3af1d311-7ef8-1b67-fcae-5cd15be02606@intel.com>
Date:   Mon, 13 Dec 2021 11:51:36 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Subject: Re: [PATCH v10] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
Content-Language: en-US
To:     Jarkko Sakkinen <jarkko@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <linux-sgx@vger.kernel.org>,
        <dave.hansen@linux.intel.com>, <nathaniel@profian.com>
References: <20211130175007.22903-1-jarkko@kernel.org>
 <8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com>
 <e998dddb2efd158ac14dc3c5393efe882ca62d16.camel@kernel.org>
From:   Reinette Chatre <reinette.chatre@intel.com>
In-Reply-To: <e998dddb2efd158ac14dc3c5393efe882ca62d16.camel@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0280.namprd04.prod.outlook.com
 (2603:10b6:303:89::15) To BN0PR11MB5744.namprd11.prod.outlook.com
 (2603:10b6:408:166::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: defd31f9-67a0-4f27-9c54-08d9be71fb06
X-MS-TrafficTypeDiagnostic: BN8PR11MB3729:EE_
X-Microsoft-Antispam-PRVS: <BN8PR11MB37295221F4189664A1450A79F8749@BN8PR11MB3729.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GWjhOSKl6k1O16n6xGJQXtxyv0qsQS2BNoMawaR7PsMz0izBgi5uH+6hTwLvHs0MIh75oOKHq78FA5sLJLva5X07KeRhSZV+L0bkIP5yG2f41wYooyPwXP+BGnY9m8ScErkCWB+VIg4+yMn13u/yPRkiPrB9mL8zcxr5AE8/NFnCIsahFMsoVcPQ7mqRVHZyxMevp0GrWbFL7jd1FHTwVQgNkzST7djybmLQr+7DOqX1/AwZ9OKUT1qVdsxyY57T1jLMaYUdtdJxwptcaQmA+gX9wWrDA9M/M94Q+fwozNv/yNy7dhluvdcSgpUwgZ0L++9A/UmmWKbtbk0461IbQiV7EFPsCNeRh0B1zmcBSIbTF8RNDW28YG3Tc8D/5qPYVcjiAbYkJ/028DgtHGmPlp0ufq1J3+vpFYBGl2avdPIZJextNPYz23WCvjsH0Ic+1MhduKd9g7RZsQQQSmCi5756di9PLvmfPGhVxGSZoSpNOpO1HVigVELtsiBGPr5dAXythL1N9KIuWK9olFvJ1sJ+TBEs/Cxu+mR5FF17iDGJvamPJL2FOagdYc023e4yeNi7wenWfQaTtQJ2GPw7jC36DlO+GiWUxrnTpDmUCseLKtDaaug6TAmL5WT5d4pDiWwY6oyCNmdCl2DGXh13zYSLYhOZ2CkqfjKVkdBPJhF/G/htoSKyDyr6uDO7YCLeiB8OwiR00RPtnkU069VYcYf/O8Ue89/iFyh8bxtj4rcZcA4M8bxxGH0QaKfxpfHB
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0PR11MB5744.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(2616005)(66556008)(66476007)(66946007)(186003)(31696002)(82960400001)(26005)(36756003)(31686004)(44832011)(316002)(6666004)(2906002)(86362001)(8936002)(53546011)(4326008)(6506007)(38100700002)(6512007)(5660300002)(110136005)(83380400001)(6486002)(8676002)(508600001)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWk4QXNLREMvc3hkUjFRMDJGVWIwL3puTG8zVVViQnhiN21tYjE0Wk1SOEho?=
 =?utf-8?B?WG1URU1Qb09WNDIvNjk4SkNHZ005cGw1eVFLRkY3VUUvTFlHQlk2bnE1MTJ1?=
 =?utf-8?B?TjlqTlo4a0pIaTUwODhudW43Vk93Z0FLTFpGejE0L21kZ2NGQ0NDVzJKcjlW?=
 =?utf-8?B?aUR0UGp1MytpaHpUL3VOU2tITjZuQzFJeVRKTTJPTFgwbFcxVUR4Z3NZdTQx?=
 =?utf-8?B?TTRITWkvelhNWFlJV2oxWGsvTjV0TGwxV2EvVmkrUDNuOTdodU42L2pzTjZX?=
 =?utf-8?B?TmEvLzBzaXUzdGxDUk9idnBUeEhjTzMyQUdzeFVycUM4RTZYUWxISDJRZTBQ?=
 =?utf-8?B?M0R0TnEyNjVmVlZtRG9GcVNZRzFQRUVEcFBOMERMelR6ZW9iL29aQTRwR1Fu?=
 =?utf-8?B?U0NFdGtwdTZiSHRuL2FseDJNOGp3ZHlWN0duNlZ6SHg0bTYydUx3ZUdDMWk2?=
 =?utf-8?B?ektydkYxZDQ0QWE5dllsWE9MZHpqWVVXYmhMdFFvcU1yamo5L1h5NnV5eDhT?=
 =?utf-8?B?UDRQWWxWdFBwbmZraGJOR01hQWZQR2dlN2NUeHNKekw0NzJicVFvekZ5N25Y?=
 =?utf-8?B?Wk5IelZOZ2tZVEN1OGtlMXdBdFdTYmZUcjgvOE9sOEt2b0l4V0RzTllSU01n?=
 =?utf-8?B?SFpXb3pDODR0V0hoRGlQWGwvU2I4ZjNaRFhwNXlhcVpCa3pyZXRQM3BZRkFT?=
 =?utf-8?B?MWhzc2ZhVWhhYjFzdXlqVU5DU3k2K0lVQWhWQWJKRXhUdjBhTDBTb25VdC9R?=
 =?utf-8?B?L3FKMElVVUg0SzRGbjFrSUZyakhEVDl5WElNUXh2Y0ErSUtBOXYvQ2FBVC80?=
 =?utf-8?B?b1Q5WWdHSW95UGtsYzVScDBsT0ZVZ1pxU2s1YTJVL25HUDF1RUNhR3VGa1B2?=
 =?utf-8?B?dnY0MUIzRTQzQXF5REhnTjNLK1hvQnJXWmJkTDl0UmVJdkVSOVl5ZENUK2pJ?=
 =?utf-8?B?YlNTV2FHbGpUN2VLK1RDS054aEZzUjJoUFd2MkFJVkk4U2p6d08wYnpvL0xy?=
 =?utf-8?B?TkFmNlRzRW9NaEtMcE9vTmF0ZGs5Wmd3UUZ1RHZJMzRSajlvMzJaMm1wSEFK?=
 =?utf-8?B?OGE3eEllTUtXSnhrUmUxQitZMGhOUlhGK0ptTmJZczF1aGdKNzRTRzl2UW5M?=
 =?utf-8?B?dEkwWFBiQk5FUkp0Q0dDcW5QUndRbk9wWURXdDY1UjFOZ1JsVDBEeUpKcWhh?=
 =?utf-8?B?Wjc2dkJPaDdjMmdDV1pFWlF1S0ptcldveWdYcExBRC8xUW5kalpFZ3kxMWov?=
 =?utf-8?B?c0xITWhHTHdLYlMyZ0FQVTQvamFBVkJhL3ZhZi8rRks2WnlISGpVUVBZQ3JT?=
 =?utf-8?B?VVhlSnRJR2tEeVJGbUs3QlFGUW1aTDFhdm5tOTFiZmVKMVV5Zm4zK3hBdmN4?=
 =?utf-8?B?c1lUS0g1OEhSTS9nZHFNZXplWWJ5MDBkTS94NlkvWFVSSk1PZjNUY1FEdlhF?=
 =?utf-8?B?cnJ4QUNVRkg3bHJLMEZvYS9uOW9lcU5SNDVMc29NSDJaYm93T081WWNkblNH?=
 =?utf-8?B?TkI0UzRsVGJ0RU9wb3R6dkZrYVkyb21YNU1JSTdyV2E5S0ZwNDhEQyt1LzJi?=
 =?utf-8?B?Q0R1QXB6ZzUwNnpSOTFaK0U2UGNaV00rbmF5U29RcHhQWk83dzdsaXN4YmRx?=
 =?utf-8?B?aGJRT1BNV01ad2RYQjQzMlRUUXkwaDh0ZGZ0SXRTZXhlQXlqTE90ZmUzalRY?=
 =?utf-8?B?YXZMNFFkc2lwc0pkMnlxZHZGdnlPVWhEeHA3dkJBZ1dFMlF4dUFpMjZsRzlC?=
 =?utf-8?B?aHc5OGlGY1BWRTZZZFRVZUlCTzNnckhKampjWHZZSzgxOEFQcG5mbEdPMEdv?=
 =?utf-8?B?SkNHL042QmtxWTQyaSt0QytDLzZJT1ZlM3N2VGxKNlVjQkJjUjN1bTFXSUVY?=
 =?utf-8?B?Nld0WFBySUtGa3RMRUhPRnN2RGxKcUZ6WS83RUhteDIvVmN4KzFTamtIcDJp?=
 =?utf-8?B?YjRRZFlncEF6bnRLaXF6cEtSOHY2OXBTeHBlVFZKa0VlTWQzRFdCVnhCSGxZ?=
 =?utf-8?B?UWVDYzd5RVJwc3g4T1RrTWxGdi9XODU1cU1UazMzTERHUmNIYlFDeUQvUlN2?=
 =?utf-8?B?TkttSWpLaVY5Yzg4UG9nNnZKMWFvRXJTTGloMG03U09QT0phUVR3QW53TDNY?=
 =?utf-8?B?dVptYzM1SkZUQUVIRlZmakJ6WEhPTU9MZzVXYzVaYUZDTTVCOFE2ZHJQclVk?=
 =?utf-8?B?cHJZb0NSWlpMTjUrOHhWbkVJeEVHYTNreHJXdUVMd1gxbjFVRkQwNGlLRzli?=
 =?utf-8?Q?gS6hXpt0V6AbeLqD9X568CnMkLz6UJ/iBNJKrOMHWc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: defd31f9-67a0-4f27-9c54-08d9be71fb06
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5744.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2021 19:51:40.3992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2eGbIa8Yj+2jHRMtuXsLOfXC+YEUctPCCpHQSDvy+AuHW+9Hv8wMlOZc9htm8nzEK5Wtr3j5cPNBBfTwAKOTy4eFT3rYO1HUZQwz1tGI0dM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3729
X-OriginatorOrg: intel.com
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

On 12/11/2021 7:19 AM, Jarkko Sakkinen wrote:
> On Wed, 2021-12-08 at 14:11 -0800, Reinette Chatre wrote:
>> On 11/30/2021 9:50 AM, Jarkko Sakkinen wrote:

...

>>> +.SH SYNOPSIS
>>> +.EX
>>> +.B #include <asm/sgx.h>
>>> +.PP
>>> +.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"
>>
>> I view the man page output using "man -l man7/sgx.7" and when I do so
>> the above line is unbalanced: "enclave" and (unexpectedly) the comma are
>> underlined and the line is displayed with a single instance of a double
>> quote: enclave = open("/dev/sgx_enclave, O_RDWR);
> 
> After some trial and error, and looking at symlink.7, this seems to
> fix it:
> 
> -.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"
> +.IB enclave " = open(""/dev/sgx_enclave"", O_RDWR);"
> 
> Does this fix for you?

Yes, thank you. When looking at your updated patch I see that only 
enclave is underlined and the quotes are matching.

...

>>> +is called with higher protections than those defined during the build,
>>> +it will return
>>> +.B -EACCES.
>>> +If
>>> +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
>>> +is called after
>>> +.BR mmap (2)
>>> +with lower protections,
>>> +the caller receives
>>> +.BR SIGBUS,
>>> +once it accesses the page for the first time.
>>> +.SH VERSIONS
>>> +The SGX feature was added in Linux 5.11.
>>
>> This does not document the SGX_IOC_VEPC_REMOVE ioctl that was added in
>> v5.16. How do you envision additions to this page as new features are
>> added to the Linux support of SGX?
> 
> I started this before any of KVM stuff was in upstream. It'd be better
> to get the basic ioctl's done first. I cannot really give estimate for
> vepc at this point.

SGX_IOC_VEPC_REMOVE_ALL can be found in v5.16.

> For future features (e.g. SGX2), the expectation is that the feature is
> supported by an associated man page update.
> 

ok, thank you.

Reinette
