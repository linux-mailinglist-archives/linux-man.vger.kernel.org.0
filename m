Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DB5737B00C
	for <lists+linux-man@lfdr.de>; Tue, 11 May 2021 22:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229900AbhEKUXX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 May 2021 16:23:23 -0400
Received: from mga09.intel.com ([134.134.136.24]:39584 "EHLO mga09.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229548AbhEKUXV (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 11 May 2021 16:23:21 -0400
IronPort-SDR: rdFXUdc+eMIqEJp5kt4wIoRX2ZzCVIKoUgKdHue7KuRbdr0927Nj9/kvAuS117bhCTWmV+LtSL
 cR4bIuquIGzA==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199602897"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; 
   d="scan'208";a="199602897"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 13:22:11 -0700
IronPort-SDR: P/vh1OHrEYTZYJZ+0Bs+YAv0LKrg+VjRlPEcA49dRKaf139zst6pC60YZisWtD2gVdEIz+TGHD
 rSNUQExFKgcg==
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; 
   d="scan'208";a="436826429"
Received: from rchatre-mobl3.amr.corp.intel.com (HELO [10.255.230.234]) ([10.255.230.234])
  by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 May 2021 13:22:11 -0700
Subject: Re: [PATCH v5] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com
References: <20210510145235.8056-1-jarkko@kernel.org>
From:   Reinette Chatre <reinette.chatre@intel.com>
Message-ID: <7ea35a75-a75d-4071-cbf7-f43c672a5a45@intel.com>
Date:   Tue, 11 May 2021 13:22:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210510145235.8056-1-jarkko@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarkko,

On 5/10/2021 7:52 AM, Jarkko Sakkinen wrote:

...

> +There is a hardware constraint that the enclave size must be a power of two,
> +and the base address must be a multiple of the size.
> +This can lead to reserving a large region than required by the payload,

a large region than required -> a larger region than required ?

> +but the address space can be obviously trimmed after the enclave has been

can be obviously trimmed -> can be trimmed ?

> +constructed on,

constructed on -> constructed ?

> +with a sequence of
> +.BR mmap(MAP_FIXED)
> +calls.
> +.PP
> +A process can access enclave by entering into its address space through
> +a set of entry points,
> +which must be defined during the construction process.
> +This requires a complex sequence of CPU instructions,
> +and kernel assisted exception handling,
> +encapsulated into
> +.BR vsgx_enter_enclave
> +vDSO interface,
> +provided and documented by
> +.IR <asm/sgx.h>.

This is not clear to me. This is written as though vsgx_enter_enclave is 
something very specific that is documented in <asm/sgx.h>. Should it 
perhaps be vdso_sgx_enter_enclave_t instead? Am I missing where 
vsgx_enter_enclave is defined? I expect a reader of this man page may 
want to search for the term "vsgx_enter_enclave" after reading the above.

> +.SS Permissions
> +In order to build an enclave, a process must be able to call
> +.IR mmap (2)
> +with
> +.IR PROT_EXEC
> +set.
> +Like for any other type of executable,
> +the page permissions must be set appropriately.
> +For this reason,
> +.I /dev/sgx_enclave
> +must reside in a partition,
> +which is not mounted as no-exec,
> +in order to be usable,
> +as
> +.IR mmap(2)
> +denies
> +.IR PROT_EXEC
> +otherwise.
> +.SH VERSIONS
> +The SGX feature was added in Linux 5.11.
> +.SH SEE ALSO
> +.BR ioctl (2),
> +.BR mmap() (2),

mmap() (2) -> mmap (2) ?

> +.BR mprotect (2)
> 

Reinette
