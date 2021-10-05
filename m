Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6AFA422D0F
	for <lists+linux-man@lfdr.de>; Tue,  5 Oct 2021 17:53:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236285AbhJEPz3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Oct 2021 11:55:29 -0400
Received: from mail.kernel.org ([198.145.29.99]:46968 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236304AbhJEPzX (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 5 Oct 2021 11:55:23 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id EED5F6124C;
        Tue,  5 Oct 2021 15:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633449212;
        bh=AscF30ZvNxhGXpTFSRxvk1RXoch0bUYqqZ3+hPdhGW8=;
        h=From:To:Cc:Subject:Date:From;
        b=s1tcWYmdoELLwxV/qwrxLeHqUu2r284t2XATpKYQsRBBwwSkQTb6iyHcWn1ciJEyY
         WxTkfzRPL8tByyb+MLuP1Bw7KmjFU0b231YBc3ijfxb2iJbGwCqVrQLB1GxEBHd1w/
         CcgbckqmSqrHkf1e7vAiDoewGaAN3+7Fc8NOrWOdLHpb/0WoIs8NeOzkqdOFO1pz6z
         /zNTFGqRoTbtAYer0CK0Elri7IC+jyXtNoOBsV5kv16BieiiM0bTz/vwhTRzMFPaHY
         GRXAJjBMy+emeqj5QRtsPH+r6MpwprVlacT4ucLpTUlckmpDM11wEfmkJ0rcQ841mE
         CYn/EiYUzZgmA==
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        Reinette Chatre <reinette.chatre@intel.com>,
        Jarkko Sakkinen <jarkko@kernel.org>
Subject: [PATCH] sgx.7: New page with overview of Software Guard eXtensions (SGX)
Date:   Tue,  5 Oct 2021 18:53:28 +0300
Message-Id: <20211005155328.85291-1-jarkko@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Cc: linux-man@vger.kernel.org
Cc: linux-sgx@vger.kernel.org
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Reinette Chatre <reinette.chatre@intel.com>
Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
---

v8:
* Fix errors reported for the previous version.
v7:
* Added more meat about the address space and API.
* Reorganized the text to have focus more on developer to have a big
  picture of kernel provided interfaces.
v6:
* Small fixes based on Dave's and Reinette's feedback.
* Extended the "Permissions" section to cover mmap()
v5:
* Taking away hardware concepts and focusing more on the interface.
v4:
* Did a heavy edit trying to streamline the story a bit and focus on
  stuff important to the user (e.g. lighten up x86 details).
v3:
* Overhaul based on Michael's comments. Most likely needs to be refined
  in various places but this is at least a small step forward for sure.
v2:
* Fixed the semantic newlines convention and various style errors etc.
  that were reported by Alenjandro and Michael.
* SGX was merged to v5.

 man7/sgx.7 | 170 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 170 insertions(+)
 create mode 100644 man7/sgx.7

diff --git a/man7/sgx.7 b/man7/sgx.7
new file mode 100644
index 000000000..85afea912
--- /dev/null
+++ b/man7/sgx.7
@@ -0,0 +1,170 @@
+.\" Copyright (C) 2021 Intel Corporation
+.\"
+.\" %%%LICENSE_START(VERBATIM)
+.\" Permission is granted to make and distribute verbatim copies of this
+.\" manual provided the copyright notice and this permission notice are
+.\" preserved on all copies.
+.\"
+.\" Permission is granted to copy and distribute modified versions of this
+.\" manual under the conditions for verbatim copying, provided that the
+.\" entire resulting derived work is distributed under the terms of a
+.\" permission notice identical to this one.
+.\"
+.\" Since the Linux kernel and libraries are constantly changing, this
+.\" manual page may be incorrect or out-of-date.  The author(s) assume no
+.\" responsibility for errors or omissions, or for damages resulting from
+.\" the use of the information contained herein.  The author(s) may not
+.\" have taken the same level of care in the production of this manual,
+.\" which is licensed free of charge, as they might when working
+.\" professionally.
+.\"
+.\" Formatted or processed versions of this manual, if unaccompanied by
+.\" the source, must acknowledge the copyright and authors of this work.
+.\" %%%LICENSE_END
+.\"
+.TH SGX 7 2021\-02\-02 "Linux" "Linux Programmer's Manual"
+.PP
+sgx - overview of Software Guard eXtensions
+.SH SYNOPSIS
+.EX
+.B #include <asm/sgx.h>
+.PP
+.IB enclave " = open(""/dev/sgx_enclave", " O_RDWR);"
+.EE
+.SH DESCRIPTION
+Intel Software Guard eXtensions (SGX) allow applications to host
+enclaves,
+protected executable objects in memory.
+.PP
+Enclaves are blobs of executable code,
+running inside a CPU enforced container,
+which is mapped to the process address space.
+They have a fixed set of entry points,
+defined when the enclave is built with the ioctls,
+provided by
+.I /dev/sgx_enclave.
+.PP
+SGX is available only if the kernel was configured and built with the
+.B CONFIG_X86_SGX
+option.
+You can verify that both the kernel and hardware have SGX enabled by
+checking that "sgx" appears in the
+.I flags
+field in
+.IR /proc/cpuinfo .
+.PP
+SGX must be enabled in BIOS.
+If SGX appears to be unsupported,
+ensure that SGX is enabled in the BIOS.
+If a BIOS presents a choice between
+.I Enabled
+and
+.I Software Enabled
+modes for SGX,
+choose
+.I Enabled.
+.PP
+Enclaves are shared objects, meaning that
+they can be shared with a
+.BR cmsg (3),
+and inherited in a fork.
+.SS Address space
+The address range for an enclave must be reserved with
+.BR mmap (2).
+This must happen before the enclave construction can begin,
+because the enclave page addresses are fixed during its build time.
+.PP
+The CPU requires the size of the enclave to be power of two,
+at least size of a one page,
+and the base address to be naturally aligned with the size.
+An appropriate address range can be found by an anonymous mapping:
+.PP
+.EX
+void *area = mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS,
+                  -1, 0);
+
+/* Find the first address aligned to the size within the range. */
+void *base = ((uint64_t)area + size - 1) & ~(size - 1);
+.EE
+.PP
+.SS Ioctls
+An enclave life-cycle is started by opening
+.I /dev/sgx_enclave.
+They are  managed with an
+.BR ioctl (2)
+interface,
+.IR <asm/sgx.h>:
+.TP
+.IB SGX_IOC_ENCLAVE_CREATE
+Create SGX Enclave Control Structure (SECS) for an enclave.
+SECS is a hardware defined structure,
+which contains the properties of an enclave,
+such as its base address and size.
+The ioctl argument has the type
+.IR "struct\ *sgx_enclave_create" .
+.TP
+.IB SGX_IOC_ENCLAVE_ADD_PAGES
+Populate a range of enclave pages with the page data provided by the caller.
+The ioctl argument has the type
+.IR "struct\ *sgx_enclave_add_pages" .
+.TP
+.IB SGX_IOC_ENCLAVE_INIT
+Tell the CPU to prepare the enclave for use.
+After a successful initialization,
+no new pages can be added to the enclave.
+The ioctl argument has the type
+.IR "struct\ *sgx_enclave_init" .
+.PP
+The details of what these operations actually mean in the hardware level can be
+found at the Intel Software Developers Manual.
+.SS vDSO
+A process can access an enclave by entering into its address space through
+a set of entry points,
+which must be defined during the construction process.
+This requires a complex sequence of CPU instructions,
+and kernel assisted exception handling.
+For these reasons,
+it is encapsulated into
+a vDSO interface,
+provided by
+.BR vdso_sgx_enter_enclave_t ,
+which is declared in
+.IR <asm/sgx.h>.
+.SS Permissions
+In order to build an enclave, a process must be able to call
+.IR mmap (2)
+with
+.IR PROT_EXEC
+set,
+because, as with any other type of executable,
+the page table protections must be set appropriately.
+Therefore,
+.I /dev/sgx_enclave
+must reside in a partition,
+which is not mounted with
+.B noexec
+set in the mount options.
+.PP
+During the build process each enclave page is assigned protection bits,
+as part of
+.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).
+These protections are also the maximum protections to which the page can be be mapped.
+If
+.BR mmap (2)
+is called with higher protections than those defined during the build,
+it will return
+.B -EACCES.
+If
+.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
+is called after
+.BR mmap (2)
+with lower protections,
+the caller receives
+.BR SIGBUS,
+once it accesses the page for the first time.
+.SH VERSIONS
+The SGX feature was added in Linux 5.11.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR mmap (2),
+.BR mprotect (2)
-- 
2.25.1

