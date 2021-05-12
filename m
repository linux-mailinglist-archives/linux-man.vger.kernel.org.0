Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 101F537EE8F
	for <lists+linux-man@lfdr.de>; Thu, 13 May 2021 00:59:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230121AbhELVwm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 May 2021 17:52:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:43602 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1346845AbhELVOZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 12 May 2021 17:14:25 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id BCF50610A5;
        Wed, 12 May 2021 21:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620853993;
        bh=+MUHXqbKBiqOfWGQHHiGYB2oo/WHwsUUQl/ypr5XLiI=;
        h=From:To:Cc:Subject:Date:From;
        b=oNo5W+LRJVcmsnWWAWOBelPquw+YBLtbt+ytscxIRI06COakbhUwL9qR7t92naEIx
         fAK5acLXomqP25STlyF8L3YXOF+/PIwxpo7o6IbopOjtZHQsDYIj41QizZgUhjEG/e
         KfCjOoTB0zqFFrpbhuFiyNuo+SBFH+a/RHx+8/XG3JQw+gR9JA0dboTZNHFBAITi18
         wvbIEJ3ZqFF6b7FePMMBweDoRsM5j4jlcHumM3bjoldzsB5mRz40N53ukxXjD10MFA
         aCn0LWe/FOr4bgeSVwEtLMpCSRkQx9UMptXjsc/e255JUcl9giAkMdgKoRrewQN5g7
         FAqTOlQaHBsfg==
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com,
        Reinette Chatre <reinette.chatre@intel.com>,
        Jarkko Sakkinen <jarkko@kernel.org>
Subject: [PATCH v6] sgx.7: New page with overview of Software Guard eXtensions (SGX)
Date:   Thu, 13 May 2021 00:13:07 +0300
Message-Id: <20210512211307.416184-1-jarkko@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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

Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
---
 man7/sgx.7 | 138 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 man7/sgx.7

diff --git a/man7/sgx.7 b/man7/sgx.7
new file mode 100644
index 000000000..b5bd1327e
--- /dev/null
+++ b/man7/sgx.7
@@ -0,0 +1,138 @@
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
+.SH DESCRIPTION
+.SS Overview
+Intel Software Guard eXtensions (SGX) allow applications to host
+protected executable objects in memory,
+also known as
+.I enclaves.
+They are constructed with
+.BR mmap (2)
+and
+.BR ioctl (2)
+applied to
+.I /dev/sgx_enclave.
+The details of enclave's memory structure can be found in
+the Intel Software Developers Manual.
+.PP
+SGX must be enabled in BIOS.
+If SGX appears to be unsupported on a system having hardware support,
+ensure that SGX is enabled in the BIOS.
+If a BIOS presents a choice between
+.I Enabled
+and
+.I Software Enabled
+modes for SGX,
+choose
+.I Enabled.
+.PP
+SGX is available only if the kernel was configured and built with the
+.B CONFIG_X86_SGX
+option.
+You can determine whether both the kernel and hardware together support SGX by
+checking whether "sgx" appears in the
+.I flags
+field in
+.IR /proc/cpuinfo .
+.SS Construction
+A process can build an enclave by applying the
+.BR ioctl (2)
+interface provided by
+.IR <asm/sgx.h>
+to
+.I /dev/sgx_enclave.
+.PP
+An enclave's base address is fixed during the build time:
+it is given to
+.BR ioctl(SGX_IOC_ENCLAVE_CREATE),
+which initiates the whole enclave build process.
+.PP
+As a consequence,
+.BR mmap (2)
+must be used to reserve a reasonable piece of the process address space,
+before the build process can begin.
+There is a hardware constraint that the enclave size must be a power of two,
+and the base address must be a multiple of the size.
+This often leads to reserving a larger region than required by the payload.
+If the address space size is an issue,
+it can be obviously trimmed with
+.BR mmap(MAP_FIXED)
+calls,
+after the enclave has been constructed.
+.PP
+A process can access enclave by entering into its address space through
+a set of entry points,
+which must be defined during the construction process.
+This requires a complex sequence of CPU instructions,
+and kernel assisted exception handling.
+For these reasons,
+it is encapsulated into
+vDSO interface,
+provided by
+.BR vdso_sgx_enter_enclave_t,
+which is located in
+.IR <asm/sgx.h>.
+.SS Permissions
+In order to build an enclave, a process must be able to call
+.IR mmap (2)
+with
+.IR PROT_EXEC
+set,
+because like for any other type of executable,
+the page table permissions must be set appropriately.
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
+These permissions are also the maximum permissions to which the page can be be mapped.
+If
+.BR mmap (2)
+is called with surpassing permissions,
+it will return
+.B -EACCES.
+If
+.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
+is called after
+.BR mmap (2)
+with lower permissions,
+the process will eventually receive a
+.BR SIGBUS
+signal,
+once it accesses the page for the first time.
+.SH VERSIONS
+The SGX feature was added in Linux 5.11.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR mmap (2),
+.BR mprotect (2)
-- 
2.31.1

