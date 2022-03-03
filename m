Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C8934CC077
	for <lists+linux-man@lfdr.de>; Thu,  3 Mar 2022 15:58:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234187AbiCCO7h (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Mar 2022 09:59:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234038AbiCCO7g (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Mar 2022 09:59:36 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D409ADE2FD
        for <linux-man@vger.kernel.org>; Thu,  3 Mar 2022 06:58:49 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id d23so8923931lfv.13
        for <linux-man@vger.kernel.org>; Thu, 03 Mar 2022 06:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=profian-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5xeMN/9ilN/F8EqvDVB1kmS35o2nYH5bHf7Wkl3vn/Y=;
        b=tXTD8zHPfvFzdBsk4z7SarYbm5IEnbz5EpEcpPT27zA0uXg3EOJz0990aMVBOMvcrk
         yCZILrH2Ly9K5pubu3WdJi9lJQ1OQ1KB2+yQTkGr+ovpV9gfV6inrapJu2XNF33QoEub
         ccQZuee6cxULrNEwDTIfYY8VwKdiCFXSh9ys9rmtqy31E6VdHkwzLBCe3vH2TbHr9IDO
         Kid30XpaknHd8iQBsWiFW+BdD+i3BB4sBkL2qRY4SZNPc+93BSeJZ+z0/MldBydgYXUp
         zc/I+4q5LibjTFwCKpF+06UIDVPByiClJ/zhjezqf2tCLiNy/XClR9jIR8V5CCC7QCX0
         dGPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5xeMN/9ilN/F8EqvDVB1kmS35o2nYH5bHf7Wkl3vn/Y=;
        b=ShFjbmPHa9qI9SdGjeCyQzup0ygMfPq6+kNw7g87BCJXZUUnZKc8wKmuGM8J8J/5qd
         7GezsqzCZvfjRw4bFuK2L9JVG46Yr2c+ffQP+146MM0nwmhQT6kcMizfPMJyfvUfJl8M
         vKgRLCwrCk2lOIE6YrnGtXZXV9/bCydY4p/lSXhbnWCGsNZ5er71ESrltctGjOW8/gFd
         CisUeC4TrJFg2AFGQRZlhVPqLLvoGh54XFS3KpGeJ6mu5qdtgsoxcBi0inGfB0laF3Oa
         /cwJeHN9tSUycqKMjcrsDWM/Y5hEQGY1fQqHt2GuMedg8yb0B7rLuKjK0bX6awtFYhSU
         UGFg==
X-Gm-Message-State: AOAM53298yCUWe1G1/D7bdKVH4bNwue9hQqmKxYZW7JoZIH9wg+brxH/
        Ssp34GiDQgmqLy5SpYF4X6MSIA==
X-Google-Smtp-Source: ABdhPJwSova1Fsy/phxDaF24m0tU/f1WwLQdcCbC2rQwQx/n/tNUhqDQIac9a3GLxK753IXHe7NShQ==
X-Received: by 2002:a05:6512:3093:b0:446:71e1:ca09 with SMTP id z19-20020a056512309300b0044671e1ca09mr1049497lfd.203.1646319525431;
        Thu, 03 Mar 2022 06:58:45 -0800 (PST)
Received: from localhost (91-154-92-187.elisa-laajakaista.fi. [91.154.92.187])
        by smtp.gmail.com with ESMTPSA id p6-20020a05651238c600b00443de9cdc48sm471158lft.226.2022.03.03.06.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 06:58:44 -0800 (PST)
From:   Jarkko Sakkinen <jarkko@profian.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     alx.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org,
        Dave Hansen <dave.hansen@linux.intel.com>,
        nathaniel@profian.com, Reinette Chatre <reinette.chatre@intel.com>,
        Jarkko Sakkinen <jarkko@profian.com>
Subject: [PATCH v12] sgx.7: New page with overview of Software Guard eXtensions (SGX)
Date:   Thu,  3 Mar 2022 16:57:57 +0200
Message-Id: <20220303145757.58464-1-jarkko@profian.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Document the Software Guard eXtensions kernel features, which were
available in Linux v5.11.

Signed-off-by: Jarkko Sakkinen <jarkko@profian.com>
---
v12:
* Fix issues reported by Alejandro.
* Expand the explanation and make the text a bit more consistent.
* SGX_IOC_ENCLAVE_PROVISION was missing.
v11:
* Address Reinette's remarks for v10:
  https://lore.kernel.org/linux-sgx/8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com/
v10:
* v9 was malformed, essentially a resend.
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
---
 man7/sgx.7  | 164 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 man7/vdso.7 |   1 +
 2 files changed, 165 insertions(+)
 create mode 100644 man7/sgx.7

diff --git a/man7/sgx.7 b/man7/sgx.7
new file mode 100644
index 000000000..20d2d4777
--- /dev/null
+++ b/man7/sgx.7
@@ -0,0 +1,164 @@
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
+.nf
+.B #include <asm/sgx.h>
+.PP
+.IB enclave " = open(" \(dq/dev/sgx_enclave\(dq ", O_RDWR);"
+.fi
+.SH DESCRIPTION
+Intel Software Guard eXtensions (SGX) allow applications to host
+enclaves,
+protected executable objects in encrypted memory.
+.PP
+Enclaves are blobs of executable code,
+running inside a CPU enforced container,
+which is mapped to the process address space.
+They are represented as the open files of
+.IR /dev/sgx_enclave .
+Enclaves can have an arbitrary fixed set of entry points,
+entered with the leaf functions of ENCLU x86 opcode.
+Once entered,
+CPU executes inside the enclave and can access its memory.
+Exceptions,
+some x86 opcodes,
+and privilege level changes will throw the CPU out of the enclave,
+and they must be handled by the host.
+.PP
+SGX can only be available if the kernel is configured and built with the
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
+.IR Enabled .
+.SS Memory mapping
+The file descriptor of an enclave can be shared among multiple processes.
+An enclave is required by the CPU to be placed to an address,
+which is a multiple of its size.
+An address range containing a reasonable base address can be probed with an anonymous
+.BR mmap(2)
+call:
+.PP
+.in +4
+.EX
+void *area = mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS,
+                  -1, 0);
+
+void *base = ((uintptr_t) area + size - 1) & ~(size - 1);
+.EE
+.in
+.PP
+The enclave file descriptor itself can be then mapped with the
+.B MAP_FIXED
+flag set to the carved out memory.
+.SS Entering the enclave
+Kernel defines
+.IR __vdso_sgx_enter_enclave
+.BR vdso (7)
+for entering to the enclave.
+Further, the prototype for the
+.BR vdso (7)
+is defined by
+.I vdso_sgx_enter_enclave_t
+in
+.IR <asm/sgx.h> .
+.IR __vdso_sgx_enter_enclave
+wraps the logic for entering the enclave,
+and provides kernel assisted CPU exception handling.
+CPU exceptions are returned back to the host,
+which can then handle the situation in-behalf of the enclave.
+.SS Permissions
+.PP
+During the build process each enclave page is assigned permissions,
+as part of
+.I SGX_IOC_ENCLAVE_ADD_PAGES .
+These are the maximum permissions with which the page can be be mapped.
+If
+.BR mmap (2)
+is called with higher permissions than those defined during the build,
+it will return
+.B -EACCES .
+If
+.I SGX_IOC_ENCLAVE_ADD_PAGES
+is called after
+.BR mmap (2)
+with lower permissions,
+the caller receives
+.BR SIGBUS ,
+once it accesses the page for the first time.
+.SS Ioctls
+Enclaves are managed with the
+.BR ioctl (2)
+interface in
+.IR <asm/sgx.h> :
+.TP
+.B SGX_IOC_ENCLAVE_CREATE
+Create SGX Enclave Control Structure (SECS) for the enclave.
+SECS is a hardware defined structure,
+which contains the global properties of an enclave.
+.B SGX_IOC_ENCLAVE_CREATE
+is a one-shot call that fixes the enclave's address and
+size for the rest of its life-cycle.
+.TP
+.B SGX_IOC_ENCLAVE_ADD_PAGES
+Fill a range of the enclave's pages with the caller provided data and permissions.
+The pages added are either regular pages for code and data,
+or thread control structures (TCS).
+The latter define the entry points to the enclave,
+which can be entered after the initialization.
+.TP
+.B SGX_IOC_ENCLAVE_INIT
+Initialize the enclave for the run-time.
+After a successful initialization,
+no new pages can be added to the enclave.
+.B SGX_IOC_ENCLAVE_PROVISION
+Allow an enclave the enclave access the provision key,
+required for remote attestation.
+A file handle to
+.IR /dev/sgx_provision
+must be supplied in order to grant the permission.
+.SH VERSIONS
+The SGX feature was added in Linux 5.11.
+.SH SEE ALSO
+.BR ioctl (2),
+.BR mmap (2),
+.BR mprotect (2)
+.BR vdso (7)
diff --git a/man7/vdso.7 b/man7/vdso.7
index 9b426f823..d231c96cc 100644
--- a/man7/vdso.7
+++ b/man7/vdso.7
@@ -548,6 +548,7 @@ __vdso_clock_gettime	LINUX_2.6
 __vdso_getcpu	LINUX_2.6
 __vdso_gettimeofday	LINUX_2.6
 __vdso_time	LINUX_2.6
+__vdso_sgx_enter_enclave	LINUX5.11
 .TE
 .if t \{\
 .in
-- 
2.35.1

