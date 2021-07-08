Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73C4D3BF9B9
	for <lists+linux-man@lfdr.de>; Thu,  8 Jul 2021 14:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231397AbhGHMI5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Jul 2021 08:08:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231382AbhGHMI4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Jul 2021 08:08:56 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 176B0C061574
        for <linux-man@vger.kernel.org>; Thu,  8 Jul 2021 05:06:14 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id ch27so8140481edb.10
        for <linux-man@vger.kernel.org>; Thu, 08 Jul 2021 05:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=61yIipgufAScXgkadoTgRLkjGicktK9H4Mf5+EYYreo=;
        b=XRLSrW8FzwbbiJziFcRaBerdJs5M4lxjWcyYmS00N1xmDIhj+BZSk1BoXfTrKVFq8X
         gwb6lF0UO7uirjavnUt+pp9njjSr83SJsKglPnqkhg55kj68/S7yj1sD1S2LKJL74tlT
         3suyFZ2GQ6qrkRTSL10wjFQfQ6P5Fn/Wwgnr69T9AMh0f9XSiNPy3lUzSZpGfEtWoTa8
         vMryDaaSVuD+5Z6rhAvXSMJbn1xie5SXeBEy6VMoqH9JtQyF54CjriJQAoWlhWTZhM87
         wJ8bNfn8C1wynGl3VodgMbL12xCQbGnAUJU3JuUwtsYMbhwDH0koh4v7K4v2MlDWan6C
         3Bxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=61yIipgufAScXgkadoTgRLkjGicktK9H4Mf5+EYYreo=;
        b=tfobI8oE20PJB48hv/M5xxkMCkjxmIfgppW7Z8I0uZznWKm4F21a/J0vu0J3sxVzVF
         pwIrKHZ+cEcO/szjEAsV5cGI2RqY7pSiwA6TF+Rs0cm5BxhVQ1+O4nQ4YxJI1HcJYKKV
         fM3TfjacUEVoQGtkAbJa03nWjFORrC5ZyOavbrd4FrgM6iwag8uXPlGmganFHvZ/bFwY
         JeOBbb2EZhiOUJgbjkzxYV/KsXf09Kp4OrW4Rd4vFLBH998L6DgnyqJ8w3wrpcWSf5ZP
         MPgTqKw36+DTgCQCMvUd3jXr77mpSW2x3U2DVm5q2Lu+zueB526J/kXiFd56/kYNXdxF
         DC4w==
X-Gm-Message-State: AOAM532LCAJwq9jXzKqmVnfmYyBMShsCfC88balI6rpIkuRedUrZ0oMa
        VTc2fDkLuGFgWKx+gRnbL0JJBcLRhww2t7YqGygqWa7/PyI=
X-Google-Smtp-Source: ABdhPJw4CNm54PTaWwRrjdF5KHP91Ps5HWf78nCorEInK+07zKE2Qgccor2XjkhZm9VcNdGcBRFdfH9eda82qZkcTM8=
X-Received: by 2002:a05:6402:34d3:: with SMTP id w19mr28342810edc.53.1625745972486;
 Thu, 08 Jul 2021 05:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20180919171225.GA29057@asgard.redhat.com>
In-Reply-To: <20180919171225.GA29057@asgard.redhat.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Thu, 8 Jul 2021 14:05:56 +0200
Message-ID: <CACGkJduyguGW_48O+pwbCGA0-nE+kR-yRhv-jZBoiO8iBcrMEQ@mail.gmail.com>
Subject: Re: [PATCH 08/16] getrlimit.2: add information about calls affected
 by RLIMIT_MEMLOCK
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping.

On Wed, Sep 19, 2018 at 7:13 PM Eugene Syromyatnikov <evgsyr@gmail.com> wrote:
>
> Signed-off-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> ---
>  man2/getrlimit.2 | 215 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 215 insertions(+)
>
> diff --git a/man2/getrlimit.2 b/man2/getrlimit.2
> index b0adfb2..9f51e0e 100644
> --- a/man2/getrlimit.2
> +++ b/man2/getrlimit.2
> @@ -252,6 +252,221 @@ memory that could be locked by a privileged process.
>  Since Linux 2.6.9, no limits are placed on the amount of memory
>  that a privileged process may lock, and this limit instead governs
>  the amount of memory that an unprivileged process may lock.
> +.B CAP_IPC_LOCK
> +capability is required for ignoring
> +.BR RLIMIT_LOCKED .
> +.\" arch/ia64/kernel/perfmon.c:pfm_smpl_buffer_alloc()
> +.IP
> +Command
> +.B PFM_CREATE_CONTEXT
> +of IA-64-specific
> +.BR perfmonctl (2)
> +system call checks sampling buffer size against
> +.B RLIMIT_MEMLOCK
> +limit; this check is done regardless of privileges.
> +.\" f8626985c7c2485c423ce9f448028f81535b0ecc
> +.\" https://lca2015.linux.org.au/slides/110/lca2015.pdf
> +.\" https://www.linux-kvm.org/images/0/02/01x10a-VFIOonSPAPR.pdf
> +.IP
> +Pages managed with
> +.BR mmap "(2) and " unmap (2)
> +system calls on a file descriptor returned by
> +.BR KVM_CREATE_SPAPR_TCE_64 " or " KVM_CREATE_SPAPR_TCE
> +KVM
> +.BR ioctl (2)
> +commands,
> +.BR VFIO_IOMMU_ENABLE ,
> +.BR VFIO_IOMMU_SPAPR_TCE_CREATE ", " VFIO_IOMMU_SPAPR_TCE_REMOVE ,
> +.BR VFIO_IOMMU_MAP_DMA ", and " VFIO_IOMMU_UNMAP_DMA
> +SPAPR (Server POWER Architecture platform requirements) TCE VFIO IOMMU driver
> +.RI ( vfio_iommu_spapr_tce )
> +.BR ioctl (2)
> +commands of a VFIO character device file
> +.RI ( /dev/vfio/vfio ),
> +and
> +.BR VFIO_IOMMU_MAP_DMA " and " VFIO_IOMMU_UNMAP_DMA
> +generic VFIO IOMMU driver
> +.RI ( vfio_iommu_type1 )
> +.BR ioctl (2)
> +commands of VFIO character device file
> +.RI ( /dev/vfio/vfio ),
> +are counted towards
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process (using the same counter as for
> +.BR mlock (2)
> +and others).
> +The check is ignored if
> +.B CAP_IPC_LOCK
> +is present.
> +See
> +.IR Documentation/powerpc/pci_iov_resource_on_powernv.txt ,
> +.I Documentation/vfio.txt
> +(section "PPC64 sPAPR implementation note"), and
> +.I Documentation/kvm/api.txt
> +(section "KVM_CREATE_SPAPR_TCE") in the Linux kernel source tree for details.
> +.\" https://lwn.net/Articles/716165/
> +.\" https://lwn.net/Articles/728158/
> +.IP
> +Pages pinned with
> +.BR KVM_MEMORY_ENCRYPT_REG_REGION " (when AMD SVM is used for virtualisation),"
> +.BR KVM_SEV_LAUNCH_UPDATE_DATA ,
> +.BR KVM_SEV_DBG_DECRYPT ", " KVM_SEV_DBG_ENCRYPT ", and " KVM_SEV_LAUNCH_SECRET
> +KVM
> +.BR ioctl (2)
> +commands (that are part of Secure Encrypted Virtualisation API,
> +specific to AMD x86 processors), while employ independent per-VM counter,
> +are compared against
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process.
> +The check is ignored if
> +.B CAP_IPC_LOCK
> +is present.
> +See
> +.I Documentation/x86/amd-memory-encryption.txt
> +and
> +.I Documentation/virtual/kvm/amd-memory-encryption.rst
> +files in the Linux kernel source tree for details.
> +.\" drivers/fpga/dfl-afu-main.c:afu_dma_adjust_locked_vm()
> +.IP
> +Pages mapped with
> +.B DFL_FPGA_PORT_DMA_MAP
> +and unmapped with
> +.B DFL_FPGA_PORT_DMA_UNMAP
> +FPGA Accelerated Unit function driver
> +.RI ( dfl-afu )
> +.BR ioctl (2)
> +commands, are counted towards
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process (using the same counter as for
> +.BR mlock (2)
> +and others).
> +The check is ignored if
> +.B CAP_IPC_LOCK
> +is present.
> +See
> +.I Documentation/fpga/dfl.txt
> +file in the Linux kernel source tree for details.
> +.\" drivers/infiniband/hw/hfi1/file_ops.c:hfi1_file_ioctl()
> +.\"    - struct hfi1_filedata initialisation
> +.\" drivers/infiniband/hw/hfi1/file_ops.c:hfi1_write_iter()
> +.\"    - call hfi1_user_sdma_process_request, pass fd
> +.\" drivers/infiniband/hw/hfi1/user_sdma.c:hfi1_user_sdma_process_request()
> +.\" drivers/infiniband/hw/hfi1/user_sdma.c:pin_vector_pages()
> +.\" drivers/infiniband/hw/hfi1/user_sdma.c:pin_sdma_pages()
> +.\" drivers/infiniband/hw/hfi1/user_pages.c:hfi1_can_pin_pages()
> +.\" https://www.spinics.net/lists/linux-rdma/msg34451.html
> +.\" Pinning:
> +.\" bc3e53f682d93df677dbd5006a404722b3adfe18
> +.IP
> +Pages occupied by data written to an Omni-Path character device file
> +.RI ( hfi1
> +driver), as well as pages occupied by buffers managed via
> +.BR HFI1_IOCTL_TID_UPDATE " and " HFI1_IOCTL_TID_FREE
> +.BR ioctl (2)
> +commands, are pinned, and counted (independently of locked pages,
> +since Linux 3.2) towards
> +.B RLIMIT_MEMLOCK
> +resource limit of the process that opened file descriptor and compared against
> +.B RLIMIT_MEMLOCK
> +of the calling process.
> +The check is ignored if the calling process has
> +.B CAP_IPC_LOCK
> +capability.
> +.\" drivers/infiniband/core/umem.c:ib_umem_get()
> +.\" drivers/infiniband/hw/qib/qib_user_pages.c:__qib_get_user_pages()
> +.\"    - accounting is incorrect (num_pages is compared and not
> +.\"       num_pages + current->mm->pinned_vm)
> +.\" drivers/infiniband/hw/usnic/usnic_uiom.c:usnic_uiom_get_pages()
> +.IP
> +User space pages that are used for IB RDMA send/receive, are pinned and, thus,
> +are counted (independently of locked pages since Linux 3.2) towards
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process.
> +The check is ignored if
> +.B CAP_IPC_LOCK
> +is present.
> +.\" drivers/misc/mic/scif/scif_rma.c:__scif_check_inc_pinned_vm()
> +.\" drivers/misc/mic/scif/scif_rma.c:__scif_pin_pages()
> +.\" drivers/misc/mic/scif/scif_dma.c:scif_register_temp()
> +.\" drivers/misc/mic/scif/scif_dma.c:scif_rma_copy()
> +.\" drivers/misc/mic/scif/scif_dma.c:{v,}{readfrom,writeto}()
> +.\" drivers/misc/mic/scif/scif_fd.c:scif_fdioctl()
> +.IP
> +Pages occupied by buffers supplied to
> +.BR SCIF_READFROM ", " SCIF_WRITETO ", " SCIF_VREADFROM ", and " SCIF_VWRITETO
> +Intel Many Integrated Cores (MIC) Symmetric Communications Interface (SCIF)
> +character device file
> +.RI ( /dev/scif )
> +.BR ioctl (2)
> +commands, are pinned, and counted (independently of locked pages) towards
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process.
> +The check is ignored if the calling process has
> +.B CAP_IPC_LOCK
> +capability.
> +.\" kernel/bpf/syscall.c:bpf_charge_memlock()
> +.\" kernel/bpf/syscall.c:__bpf_prog_charge()
> +.\" aaac3ba95e4c8b496d22f68bd1bc01cfbf525eca
> +.IP
> +Memory, allocated for
> +.BR bpf (2)
> +maps, programs, and local storage for programs that attached to cgroups,
> +is counted on a per-user basis and compared against
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process.
> +The check is not skipped if
> +.B CAP_IPC_LOCK
> +capability is present.
> +.\" kernel/events/core.c:perf_mmap()
> +.\" bc3e53f682d93df677dbd5006a404722b3adfe18
> +.IP
> +Memory, belonging to mappings returned by
> +.BR mmap (2)
> +calls on a descriptor, returned by a
> +.BR perf_event_open (2)
> +syscall, is counted on a per-user basis
> +(using the same counter as for
> +.BR bpf (2)
> +memory accounting), and the amount over
> +.I kernel/perf_event_mlock_kb
> +sysctl value multiplied by a number of online CPUs
> +is counted towards per-process pinned memory
> +(the same counter as for IB RDMA, OP, and SCIF),
> +and is compared against
> +.B RLIMIT_MEMLOCK
> +resource limit of the calling process.
> +The check is skipped if
> +.B CAP_IPC_LOCK
> +capability is present or
> +.I kernel/perf_event_paranoid
> +is set to a value less than 0.
> +.\" net/core/skbuff.c:mm_account_pinned_pages()
> +.\" a91dbff551a6f1865b68fa82b654591490b59901
> +.IP
> +Pages, occupied by buffers, used as source for zero-copy sending of data
> +via \fBAF_TCP\fP or \fBAF_RDS\fP (with TCP as a transport) sockets is performed
> +(for that,
> +.B MSG_ZEROCOPY
> +should be set for a message
> +and transmission should be performed via a socket with
> +.B SOCK_ZEROCOPY
> +socket option enabled), or mappings configured via
> +.B XDP_UMEM_REG
> +socket option of an
> +.B AF_XDP
> +socket, are counted on per-user basis (along with
> +.BR bpf (2)
> +and per mappings) and compared against
> +.B RLIMIT_MEMLOCK
> +resource limie of the calling process.
> +The check is not skipped if
> +.B CAP_IPC_LOCK
> +capability is present.
> +See
> +.I Documentation/networking/msg_zerocopy.rst
> +and
> +.I Documentation/networking/rds.txt
> +files in the Linux kernel source tree for details.
>  .TP
>  .BR RLIMIT_MSGQUEUE " (since Linux 2.6.8)"
>  This is a limit on the number of bytes that can be allocated
> --
> 2.1.4
>


--
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
