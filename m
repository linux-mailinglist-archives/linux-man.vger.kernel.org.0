Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 250C23C3636
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 20:52:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhGJSyo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 14:54:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhGJSyo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 14:54:44 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 948AFC0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:51:58 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id g12so522187wme.2
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eiVLRKzU/UbU87Tbw7v27Sv9LOdVvOY7UMYI93lYq6A=;
        b=uNkWSsdwnKHg7yrGzWlws/U3mmkCw7/jytky+Cfw7xZmX1VUchfTNAKXg+muxnxuo7
         wyIw6IxVAHwlUYuWkXpguYac5071jnQbB36EEkj4Kwzb8oIDd/SD5OyFM1IX3v7P79FZ
         NGppB4xn1oyloK+6PAziTIZuq6L7at86OrbOiTg7zbxwWfpqbs0J38Vj9+tH8R9zVHJx
         x6xzmbmut8ebVcF3V/PzzD1+R8b9Cgnt48icIsw2FTDeTP6eztmSSV1KnQtcUJL1f/9n
         6xIb32NqW7TA8Cp3Q0Uxlen0HsxzdE7Eb/3M5XvNOjsDVVeD6zdCXpxrrman4XYB8i2i
         wbLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eiVLRKzU/UbU87Tbw7v27Sv9LOdVvOY7UMYI93lYq6A=;
        b=VVp7JLX09bZk4c1dZmv0fw0PTysGXJJzy+DLoFl3ofFC7LELHoMTKEX31ZAitFsJO0
         LoH3YAXgzWlEelcIXFgelsOuHKMetjCdWs6yywXHfa9D5J+QiuLEZqFQeH1sVltR9GE1
         yR3VUCxVMNMlfmVk5TMQyhbfQ6KE4ZFdJrV18eKNJFbkcZJvCLbvbvtfnHUoEQZ//9ec
         +0wFKJxydrZGWakcMnf0RBRUmCpE6gIuJFlbdz++ih9K76lYZM88wDlJbKaptPF4jvEX
         JzkGjBmzHqT6K1peobQPObrCrn9l4AoGBkoHDxj8wHupTqGbvtf+mA9nDOX5DJVP6VPt
         Yt9A==
X-Gm-Message-State: AOAM5310ihsu+kTolt0hp0r37mgPfKeVxt5ZDUqlwKyGGsXg4ThQLS/m
        JvyV6aFP82k5E3L5Z3DvEfFpuCXyYps=
X-Google-Smtp-Source: ABdhPJyfErRQ38Tz+exSprDm1+0AQsCIUMt4QXCPdZDIaJtGtLjSIYABisjLAy2Ac45xTWGcktX3Mw==
X-Received: by 2002:a05:600c:2197:: with SMTP id e23mr21200589wme.101.1625943116816;
        Sat, 10 Jul 2021 11:51:56 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id a207sm16466125wme.27.2021.07.10.11.51.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:51:55 -0700 (PDT)
Subject: Re: [PATCH 08/16] getrlimit.2: add information about calls affected
 by RLIMIT_MEMLOCK
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>,
        linux-man <linux-man@vger.kernel.org>
References: <20180919171225.GA29057@asgard.redhat.com>
 <CACGkJduyguGW_48O+pwbCGA0-nE+kR-yRhv-jZBoiO8iBcrMEQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <6565c5a1-51b2-1153-9caf-17dbb090f2a4@gmail.com>
Date:   Sat, 10 Jul 2021 20:51:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CACGkJduyguGW_48O+pwbCGA0-nE+kR-yRhv-jZBoiO8iBcrMEQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eugene,

On 7/8/21 2:05 PM, Eugene Syromyatnikov wrote:
> Ping.
> 
> On Wed, Sep 19, 2018 at 7:13 PM Eugene Syromyatnikov <evgsyr@gmail.com> wrote:
>>
>> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>

A few questions:

Could you please provide some background on the patch?
Maybe add it to the commit message.
I'd like to be able to review it :)

Is the other patch (v2) you sent recently meant to replace this one,
or to complement it?

Also, please see some comments below.

>> ---
>>  man2/getrlimit.2 | 215 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 215 insertions(+)
>>
>> diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
>> index b0adfb2..9f51e0e 100644
>> --- a/man2/getrlimit.2
>> +++ b/man2/getrlimit.2
>> @@ -252,6 +252,221 @@ memory that could be locked by a privileged process.
>>  Since Linux 2.6.9, no limits are placed on the amount of memory
>>  that a privileged process may lock, and this limit instead governs
>>  the amount of memory that an unprivileged process may lock.
>> +.B CAP_IPC_LOCK
>> +capability is required for ignoring
>> +.BR RLIMIT_LOCKED .
>> +.\" arch/ia64/kernel/perfmon.c:pfm_smpl_buffer_alloc()
>> +.IP
>> +Command
>> +.B PFM_CREATE_CONTEXT
>> +of IA-64-specific
>> +.BR perfmonctl (2)
>> +system call checks sampling buffer size against
>> +.B RLIMIT_MEMLOCK
>> +limit; this check is done regardless of privileges.
>> +.\" f8626985c7c2485c423ce9f448028f81535b0ecc
>> +.\" https://lca2015.linux.org.au/slides/110/lca2015.pdf
>> +.\" https://www.linux-kvm.org/images/0/02/01x10a-VFIOonSPAPR.pdf
>> +.IP
>> +Pages managed with
>> +.BR mmap "(2) and " unmap (2)

Break this into a line per identifier.
And in general, 1 line per indentifier.

>> +system calls on a file descriptor returned by
>> +.BR KVM_CREATE_SPAPR_TCE_64 " or " KVM_CREATE_SPAPR_TCE
>> +KVM
>> +.BR ioctl (2)
>> +commands,
>> +.BR VFIO_IOMMU_ENABLE ,
>> +.BR VFIO_IOMMU_SPAPR_TCE_CREATE ", " VFIO_IOMMU_SPAPR_TCE_REMOVE ,

Break this into a line per identifier ...

>> +.BR VFIO_IOMMU_MAP_DMA ", and " VFIO_IOMMU_UNMAP_DMA

... and the 'and' in a line of its own.

>> +SPAPR (Server POWER Architecture platform requirements) TCE VFIO IOMMU driver
>> +.RI ( vfio_iommu_spapr_tce )
>> +.BR ioctl (2)
>> +commands of a VFIO character device file
>> +.RI ( /dev/vfio/vfio ),
>> +and
>> +.BR VFIO_IOMMU_MAP_DMA " and " VFIO_IOMMU_UNMAP_DMA
>> +generic VFIO IOMMU driver
>> +.RI ( vfio_iommu_type1 )
>> +.BR ioctl (2)
>> +commands of VFIO character device file
>> +.RI ( /dev/vfio/vfio ),
>> +are counted towards
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process (using the same counter as for
>> +.BR mlock (2)
>> +and others).
>> +The check is ignored if
>> +.B CAP_IPC_LOCK
>> +is present.
>> +See
>> +.IR Documentation/powerpc/pci_iov_resource_on_powernv.txt ,
>> +.I Documentation/vfio.txt
>> +(section "PPC64 sPAPR implementation note"), and
>> +.I Documentation/kvm/api.txt
>> +(section "KVM_CREATE_SPAPR_TCE") in the Linux kernel source tree for details.
>> +.\" https://lwn.net/Articles/716165/
>> +.\" https://lwn.net/Articles/728158/
>> +.IP
>> +Pages pinned with
>> +.BR KVM_MEMORY_ENCRYPT_REG_REGION " (when AMD SVM is used for virtualisation),"
>> +.BR KVM_SEV_LAUNCH_UPDATE_DATA ,
>> +.BR KVM_SEV_DBG_DECRYPT ", " KVM_SEV_DBG_ENCRYPT ", and " KVM_SEV_LAUNCH_SECRET
>> +KVM
>> +.BR ioctl (2)
>> +commands (that are part of Secure Encrypted Virtualisation API,
>> +specific to AMD x86 processors), while employ independent per-VM counter,
>> +are compared against
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process.
>> +The check is ignored if
>> +.B CAP_IPC_LOCK
>> +is present.
>> +See
>> +.I Documentation/x86/amd-memory-encryption.txt
>> +and
>> +.I Documentation/virtual/kvm/amd-memory-encryption.rst
>> +files in the Linux kernel source tree for details.
>> +.\" drivers/fpga/dfl-afu-main.c:afu_dma_adjust_locked_vm()
>> +.IP
>> +Pages mapped with
>> +.B DFL_FPGA_PORT_DMA_MAP
>> +and unmapped with
>> +.B DFL_FPGA_PORT_DMA_UNMAP
>> +FPGA Accelerated Unit function driver
>> +.RI ( dfl-afu )
>> +.BR ioctl (2)
>> +commands, are counted towards
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process (using the same counter as for
>> +.BR mlock (2)
>> +and others).
>> +The check is ignored if
>> +.B CAP_IPC_LOCK
>> +is present.
>> +See
>> +.I Documentation/fpga/dfl.txt
>> +file in the Linux kernel source tree for details.
>> +.\" drivers/infiniband/hw/hfi1/file_ops.c:hfi1_file_ioctl()
>> +.\"    - struct hfi1_filedata initialisation
>> +.\" drivers/infiniband/hw/hfi1/file_ops.c:hfi1_write_iter()
>> +.\"    - call hfi1_user_sdma_process_request, pass fd
>> +.\" drivers/infiniband/hw/hfi1/user_sdma.c:hfi1_user_sdma_process_request()
>> +.\" drivers/infiniband/hw/hfi1/user_sdma.c:pin_vector_pages()
>> +.\" drivers/infiniband/hw/hfi1/user_sdma.c:pin_sdma_pages()
>> +.\" drivers/infiniband/hw/hfi1/user_pages.c:hfi1_can_pin_pages()
>> +.\" https://www.spinics.net/lists/linux-rdma/msg34451.html
>> +.\" Pinning:
>> +.\" bc3e53f682d93df677dbd5006a404722b3adfe18
>> +.IP
>> +Pages occupied by data written to an Omni-Path character device file
>> +.RI ( hfi1
>> +driver), as well as pages occupied by buffers managed via
>> +.BR HFI1_IOCTL_TID_UPDATE " and " HFI1_IOCTL_TID_FREE
>> +.BR ioctl (2)
>> +commands, are pinned, and counted (independently of locked pages,
>> +since Linux 3.2) towards
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the process that opened file descriptor and compared against
>> +.B RLIMIT_MEMLOCK
>> +of the calling process.
>> +The check is ignored if the calling process has
>> +.B CAP_IPC_LOCK
>> +capability.
>> +.\" drivers/infiniband/core/umem.c:ib_umem_get()
>> +.\" drivers/infiniband/hw/qib/qib_user_pages.c:__qib_get_user_pages()
>> +.\"    - accounting is incorrect (num_pages is compared and not
>> +.\"       num_pages + current->mm->pinned_vm)
>> +.\" drivers/infiniband/hw/usnic/usnic_uiom.c:usnic_uiom_get_pages()
>> +.IP
>> +User space pages that are used for IB RDMA send/receive, are pinned and, thus,

s/User space/User-space/

Rationale: here it is a modifier of pages.  Normal English rules apply.

>> +are counted (independently of locked pages since Linux 3.2) towards
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process.
>> +The check is ignored if
>> +.B CAP_IPC_LOCK
>> +is present.
>> +.\" drivers/misc/mic/scif/scif_rma.c:__scif_check_inc_pinned_vm()
>> +.\" drivers/misc/mic/scif/scif_rma.c:__scif_pin_pages()
>> +.\" drivers/misc/mic/scif/scif_dma.c:scif_register_temp()
>> +.\" drivers/misc/mic/scif/scif_dma.c:scif_rma_copy()
>> +.\" drivers/misc/mic/scif/scif_dma.c:{v,}{readfrom,writeto}()
>> +.\" drivers/misc/mic/scif/scif_fd.c:scif_fdioctl()
>> +.IP
>> +Pages occupied by buffers supplied to
>> +.BR SCIF_READFROM ", " SCIF_WRITETO ", " SCIF_VREADFROM ", and " SCIF_VWRITETO
>> +Intel Many Integrated Cores (MIC) Symmetric Communications Interface (SCIF)
>> +character device file
>> +.RI ( /dev/scif )
>> +.BR ioctl (2)
>> +commands, are pinned, and counted (independently of locked pages) towards
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process.
>> +The check is ignored if the calling process has
>> +.B CAP_IPC_LOCK
>> +capability.
>> +.\" kernel/bpf/syscall.c:bpf_charge_memlock()
>> +.\" kernel/bpf/syscall.c:__bpf_prog_charge()
>> +.\" aaac3ba95e4c8b496d22f68bd1bc01cfbf525eca
>> +.IP
>> +Memory, allocated for
>> +.BR bpf (2)
>> +maps, programs, and local storage for programs that attached to cgroups,
>> +is counted on a per-user basis and compared against
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process.
>> +The check is not skipped if
>> +.B CAP_IPC_LOCK
>> +capability is present.
>> +.\" kernel/events/core.c:perf_mmap()
>> +.\" bc3e53f682d93df677dbd5006a404722b3adfe18
>> +.IP
>> +Memory, belonging to mappings returned by
>> +.BR mmap (2)
>> +calls on a descriptor, returned by a
>> +.BR perf_event_open (2)
>> +syscall, is counted on a per-user basis
>> +(using the same counter as for
>> +.BR bpf (2)
>> +memory accounting), and the amount over
>> +.I kernel/perf_event_mlock_kb
>> +sysctl value multiplied by a number of online CPUs
>> +is counted towards per-process pinned memory
>> +(the same counter as for IB RDMA, OP, and SCIF),
>> +and is compared against
>> +.B RLIMIT_MEMLOCK
>> +resource limit of the calling process.
>> +The check is skipped if
>> +.B CAP_IPC_LOCK
>> +capability is present or
>> +.I kernel/perf_event_paranoid
>> +is set to a value less than 0.
>> +.\" net/core/skbuff.c:mm_account_pinned_pages()
>> +.\" a91dbff551a6f1865b68fa82b654591490b59901
>> +.IP
>> +Pages, occupied by buffers, used as source for zero-copy sending of data
>> +via \fBAF_TCP\fP or \fBAF_RDS\fP (with TCP as a transport) sockets is performed
>> +(for that,
>> +.B MSG_ZEROCOPY
>> +should be set for a message
>> +and transmission should be performed via a socket with
>> +.B SOCK_ZEROCOPY
>> +socket option enabled), or mappings configured via
>> +.B XDP_UMEM_REG
>> +socket option of an
>> +.B AF_XDP
>> +socket, are counted on per-user basis (along with
>> +.BR bpf (2)
>> +and per mappings) and compared against
>> +.B RLIMIT_MEMLOCK
>> +resource limie of the calling process.
>> +The check is not skipped if
>> +.B CAP_IPC_LOCK
>> +capability is present.
>> +See
>> +.I Documentation/networking/msg_zerocopy.rst
>> +and
>> +.I Documentation/networking/rds.txt
>> +files in the Linux kernel source tree for details.
>>  .TP
>>  .BR RLIMIT_MSGQUEUE " (since Linux 2.6.8)"
>>  This is a limit on the number of bytes that can be allocated
>> --
>> 2.1.4
>>
> 
> 
> --
> Eugene Syromyatnikov
> mailto:evgsyr@gmail.com
> xmpp:esyr@jabber.{ru|org}
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
