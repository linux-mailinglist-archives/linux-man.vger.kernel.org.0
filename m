Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C0238462982
	for <lists+linux-man@lfdr.de>; Tue, 30 Nov 2021 02:15:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235313AbhK3BSW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Nov 2021 20:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233381AbhK3BSV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Nov 2021 20:18:21 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [IPv6:2604:1380:40e1:4800::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5127C061574;
        Mon, 29 Nov 2021 17:15:02 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 89FABCE16B4;
        Tue, 30 Nov 2021 01:15:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53509C53FAD;
        Tue, 30 Nov 2021 01:14:58 +0000 (UTC)
From:   Jarkko Sakkinen <jarkko.sakkinen@iki.fi>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com, reinette.chatre@intel.com,
        nathaniel@profian.com, Jarkko Sakkinen <jarkko@kernel.org>,
        Jarkko Sakkinen <jarkko.sakkinen@iki.fi>
Subject: [PATCH v9] sgx.7: New page with overview of Software Guard eXtensions (SGX)
Date:   Tue, 30 Nov 2021 03:14:46 +0200
Message-Id: <20211130011446.11526-1-jarkko.sakkinen@iki.fi>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jarkko Sakkinen <jarkko@kernel.org>

Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>

v9:
* Rename "Address Space" section as "Memory mapping", and refine the
  text.
* Rename "Ioctls" section as "Construction", and refine the text.
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

Signed-off-by: Jarkko Sakkinen <jarkko.sakkinen@iki.fi>
---
 man7/sgx.7 | 147 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)
 create mode 100644 man7/sgx.7

diff --git a/man7/sgx.7 b/man7/sgx.7
new file mode 100644
index 000000000..696d60e18
--- /dev/null
+++ b/man7/sgx.7
@@ -0,0 +1,147 @@
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
+They are represented as the instances of
+.I /dev/sgx_enclave.
+They have a fixed set of entry points,
+defined when the enclave is built.
+.PP
+SGX can be only available if the kernel is configured and built with the
+.B CONFIG_X86_SGX
+option.
+If CPU, BIOS and kernel have SGX enabled,
+.I sgx
+appears in the
+.I flags
+field of
+.IR /proc/cpuinfo .
+.PP
+If SGX appears not to be available,
+ensure that SGX is enabled in the BIOS.
+If a BIOS presents a choice between
+.I Enabled
+and
+.I Software Enabled
+modes for SGX,
+choose
+.I Enabled.
+.PP
+.SS Memory mapping
+The file descriptor for an enclave can be shared among multiple processes.
+An enclave is required by the CPU to be placed to an address,
+which is a multiple of its size.
+An address range containing a reasonable base address can be probed with an anonymous
+.BR mmap(2)
+call:
+.PP
+.EX
+void *area = mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS,
+                  -1, 0);
+
+void *base = ((uint64_t)area + size - 1) & ~(size - 1);
+.EE
+.PP
+The enclave file descriptor itself can be then mapped with the
+.BR MAP_FIXED
+flag set to the carved out memory.
+.SS Construction
+An enclave instance is created by opening
+.I /dev/sgx_enclave.
+Its contents are populated with the
+.BR ioctl (2)
+interface in
+.IR <asm/sgx.h>:
+.TP
+.IB SGX_IOC_ENCLAVE_CREATE
+Create SGX Enclave Control Structure (SECS) for the enclave.
+SECS is a hardware defined structure,
+which contains the global properties of an enclave.
+.IB SGX_IOC_ENCLAVE_CREATE
+is a one-shot call that fixes enclave's address and
+size for the rest of its life-cycle.
+.TP
+.IB SGX_IOC_ENCLAVE_ADD_PAGES
+Fill a range of the enclaves pages with the caller provided data and protection bits.
+Memory mappings of the enclave can only have protection bits set,
+which are defined in this ioctl.
+The pages added are either regular memory pages for code and data,
+or thread control structures (TCS).
+The latter define the entry points to the enclave,
+which can be entered after the initialization.
+.TP
+.IB SGX_IOC_ENCLAVE_INIT
+Initialize the enclave for the run-time.
+After a successful initialization,
+no new pages can be added to the enclave.
+.SS Invocation
+Thread control structure (TCS) page are the entry points to the enclave,
+which further define an offset inside the enclave where the execution begins.
+The entry points are invoked with
+.I __vdso_sgx_enter_enclave.
+The prototype for the vDSO is defined by
+.BR vdso_sgx_enter_enclave_t
+in
+.IR <asm/sgx.h>.
+.SS Permissions
+.PP
+During the build process each enclave page is assigned protection bits,
+as part of
+.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).
+These protections are also the maximum protections to which the page can be be mapped.
+If
+.BR mmap (2)_
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
\ No newline at end of file
-- 
2.32.0

