Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E3592FE925
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 12:46:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730313AbhAULqf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 06:46:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:47586 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730361AbhAULor (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 21 Jan 2021 06:44:47 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26964238E2;
        Thu, 21 Jan 2021 11:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611229445;
        bh=sHZkKx+3SOO3gQx2XzEXNgrfl/7eRgGLQL1Ctr7Qz7s=;
        h=From:To:Cc:Subject:Date:From;
        b=ldMEK/Jyfn9ioPdauGIeIAq+AH+YIR2oNhrVdH4DMHSNHtaCC5iiB+bvcbGAEvfk+
         fdfBp2q8vGgtHfS/Gmll/G77UdhWPf+daqU/TiLcyt+YZqpDLpmEvOoUteuzyL5lnr
         lmkBTvLGrbyzEuX0REpuonEQ7dP8RY1H15uNkPJBLPHv3HBUuIXnSmE/Wj1BsSxMgt
         /5DGPXxtvaEGDVDhWxOUqwmrX2GTsdrFIx51zcBhhme9Yvg5hhkTTrTRf7Jw6kEFE7
         JOigR51ZPUPqK363dBwOS5ysjBao35MCWm17/5EsQigFYAUc5QQdSORMhfyXLoBy3i
         UTIqwtdc0PZpw==
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com, Jarkko Sakkinen <jarkko@kernel.org>
Subject: [PATCH v3] sgx.7: New page with overview of Software Guard eXtensions (SGX)
Date:   Thu, 21 Jan 2021 13:43:59 +0200
Message-Id: <20210121114359.112193-1-jarkko@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
---
v3:
* Overhaul based on Michael's comments. Most likely needs to be refined
  in various places but this is at least a small step forward for sure.
v2:
* Fixed the semantic newlines convention and various style errors etc.
  that were reported by Alenjandro and Michael.
* SGX was merged to v5.
 man7/sgx.7 | 248 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 248 insertions(+)
 create mode 100644 man7/sgx.7

diff --git a/man7/sgx.7 b/man7/sgx.7
new file mode 100644
index 000000000..4f6d6136f
--- /dev/null
+++ b/man7/sgx.7
@@ -0,0 +1,248 @@
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
+.TH SGX 7 2020-12-02 "Linux" "Linux Programmer's Manual"
+.PP
+sgx - overview of Software Guard eXtensions
+.SH DESCRIPTION
+.PP
+Intel Software Guard eXtensions (SGX) allow user space applications to set
+aside private memory regions of code and data.
+These memory regions are called enclaves.
+.PP
+SGX must be enabled by the BIOS.
+If SGX appears to be unsupported on a system having hardware support,
+ensure that SGX is enabled in the BIOS.
+If a BIOS presents a choice between \(dqEnabled\(dq and \(dqSoftware
+Enabled\(dq modes for SGX,
+choose \(dqEnabled\(dq.
+.PP
+An enclave can be entered only at a fixed set of entry points,
+each defined by Thread Control Structure (TCS) architectural structure,
+contained in a single enclave page.
+A hardware thread reserves a TCS by executing EENTER subfunction of the
+ENCLU instruction,
+and the execution continues from the TCS defined entry point.
+ENCLU contains all the SGX user functions.
+Depending on the function, they must be called either inside or outside of
+the enclave.
+Once the thread has completed its task,
+it calls EEXIT subfunction of the ENCLU instruction,
+which releases the TCS and departs the enclave to a given address outside
+the enclave.
+While the enclave is loaded from a regular binary file,
+only the threads inside the enclave can access its memory.
+.PP
+Although carved out of normal DRAM,
+enclave memory is marked in the system memory map as reserved and is not
+managed by the Linux memory manager.
+There may be several enclave regions spread across the system.
+Each contiguous region is called an Enclave Page Cache (EPC) section.
+The pages belonging to the EPC sections are encrypted when they leave the
+Last Level Cache (LLC).
+.PP
+SGX is available only if the kernel was configured and built with the
+.B CONFIG_X86_SGX
+option.
+[[
+You can determine whether the hardware supports SGX by checking
+whether "sgx" appears in the
+.I flags
+field in
+.IR /proc/cpuinfo .
+]]
+.SS Enclave management
+.PP
+An enclave's life-cycle starts by opening
+.I /dev/sgx_enclave
+and ends when all the file descriptors referring to the opened file have
+been closed.
+After opening the enclave,
+its contents must be populated with the ioctl interface provided by
+.IR <asm/sgx.h> .
+ENCLS is a privileged (ring-0) instruction with the functionality for
+managing enclave memory,
+and the ioctl interface provides a wrapper for it.
+.PP
+Enclave construction starts by calling
+.B SGX_IOC_ENCLAVE_CREATE,
+which copies the initial version of SGX Enclave Control Structure
+(SECS).
+SGX Enclave Control Structure (SECS) contains the description of the
+enclave.
+The ioctl calls the ECREATE subfunction of the ENCLS instruction,
+which will copy the SECS to the SGX reserved memory.
+The SECS is never mapped to the process address space,
+and thus cannot be directly referenced.
+.PP
+Among other things, the SECS contains the base address and size of the enclave,
+meaning that the address space must be carved out before the creation.
+There is also a hardware related invariant that the enclave size must be a
+power of two,
+and the base address must be also naturally aligned relative to the size.
+.PP
+Some of the SECS fields must be initialized to zero because their values
+are determined dynamically after the enclave has been created.
+Most importantly SECS contains two SHA256 hashes: MRENCLAVE and
+MRSIGNER.
+Each ENCLS subfunction,
+which contribute to the enclave construction,
+hashes its key parameters to the MRENCLAVE.
+Arbitrary data can be also hashed into MRENCLAVE via the EEXTEND subfunction
+of the ENCLS instruction.
+MRSIGNER contains the hash of the enclave signer key,
+which is used to sign the SIGSTRUCT structure passed to the
+EINIT subfunction of the ENCLS instruction.
+MRENCLAVE and MRSIGNER define the enclave identity and sealing identity of the
+enclave.
+A thread executing inside the enclave can use them as key material for deriving
+128-bit cryptographic keys.
+This is accomplished by calling the EGETKEY subfunction of the ENCLU
+instruction.
+.PP
+After the enclave has been created,
+a series of
+.B SGX_IOC_ENCLAVE_ADD_PAGES
+calls are issued.
+This ioctl copies the provided data to the enclave memory by invoking
+the EADD subfunction of the ENCLS instruction.
+and optionally hashes it with help of the EEXTEND subfunction of the ENCLS
+instruction.
+Hashing is optional because it is a slow operation and sometimes not
+required.
+For instance, one might only care to measure the code pages.
+.PP
+Finally, when all the data has been copied to the enclave memory,
+.B SGX_IOC_ENCLAVE_INIT
+is called,
+which invokes the EINIT subfunction of the ENCLS instruction.
+This function checks that the accumulated MRENCLAVE matches the
+MRENCLAVE inside the caller provided SIGSTRUCT,
+and locks down the enclave from further build operations.
+After this, the enclave can be invoked.
+.SS Enclave memory mapping
+.PP
+The processor tracks EPC pages in a hardware metadata structure called
+.I Enclave Page Cache Map (EPCM).
+The EPCM contains an entry for each EPC page which describes the owning
+enclave,
+access rights,
+and page type among the other things.
+EPCM permissions are separate from the normal page tables.
+This prevents the kernel from,
+for instance,
+allowing writes to data which an enclave wishes to remain read-only.
+EPCM permissions may only impose additional restrictions on top of
+normal x86 page permissions.
+.PP
+For all intents and purposes,
+the SGX architecture allows the processor to invalidate all EPCM entries
+at will.
+This requires that software be prepared to handle an EPCM fault at any
+time.
+In practice,
+this can happen on events like power transitions when the ephemeral key
+that encrypts enclave memory is lost.
+.PP
+The kernel records EPCM permissions when
+.B SGX_IOC_ENCLAVE_ADD_PAGES
+is called.
+When the pages are mapped to memory via
+[[
+.BR mmap (2)
+or
+.BR mprotect (2),
+]]
+the EPCM permissions are compared against the declared permissions.
+If the declared permissions have bits set that are not part of the EPCM
+permissions,
+the operation fails with the error
+.B EACCES.
+.SS Enclave invocation
+.PP
+Enclaves encounter exceptions for many reasons:
+everything from enclave page faults to NULL pointer dereferences,
+to system calls that must be called by a delegate from outside the enclave.
+Finally, a power cycle invalidates the whole EPC,
+which also needs to be addressed by the caller.
+.PP
+This type of exception handling has been traditionally been handled in
+SIGSEGV handlers,
+registered by the library.
+But, being a process-wide state,
+signal handling and code libraries do not mix well.
+.PP
+In order to assist the run-time, kernel provides a vDSO entry point,
+.BR vsgx_enter_enclave ,
+which wraps the ENCLU entry subfunctions EENTER and ERESUME,
+and returns exceptions to the caller at the point they happen.
+The exception information is filled in RDI, RSI and RDX.
+The kernel-provided user space portion of the vDSO handler will place
+this information in a user-provided buffer,
+or optionally trigger a user-provided callback at the time of the
+exception.
+.PP
+The vDSO function calling convention uses the standard RDI, RSI, RDX,
+RCX, R8 and R9 registers.
+This makes it possible to declare the vDSO as a C prototype,
+but other than that there is no specific support for the x86-64 calling
+convention,
+Things like storing XSAVE are the responsibility of the enclave and the
+runtime.
+.SS Page reclaimer
+.PP
+Just like normal RAM,
+there is a limited amount of enclave memory available and over-committing
+it is a very valuable tool to reduce resource use.
+.PP
+In contrast to normal page reclaim,
+the kernel cannot directly access enclave memory.
+To get around this,
+the SGX architecture provides a set of functions to help.
+Among other things,
+these functions copy enclave memory to and from normal memory,
+encrypting it and protecting its integrity in the process.
+.PP
+The kernel provides a page reclaimer by using these functions.
+It picks victim pages in LRU fashion from all the enclaves running in
+the system.
+A new kernel thread (ksgxd) reclaims pages in the background based on
+watermarks,
+similar to normal kswapd.
+.PP
+All enclave pages can be reclaimed, architecturally.
+But, there are some limits to this,
+such as the SECS page,
+which must be reclaimed last.
+The page version array (used to mitigate replaying old reclaimed pages)
+is also architecturally reclaimable,
+but support for reclaiming the page version array is not yet implemented,
+The end result is that the vast majority of enclave pages are currently
+reclaimable.
+.SH VERSIONS
+The SGX feature was added in Linux 5.11.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR mmap() (2),
+.BR mprotect (2),
-- 
2.29.2

