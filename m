Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CB301EB3A8
	for <lists+linux-man@lfdr.de>; Tue,  2 Jun 2020 05:09:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725850AbgFBDJU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Jun 2020 23:09:20 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:25345 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726337AbgFBDJS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Jun 2020 23:09:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1591067355;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=hAFHXyJOrpC3m+t9We2ukJ6ktegl0T5ausvkp2SNuOk=;
        b=GIPcxRY+GViSfgmTxOE0FNL8GmjeZDFWg0RtEa8+iRX16jgGJcupCZkrtnknsF7dc+mjGq
        BqI2iHlIHF8florQYfjie9UM0Eioc2wVbOu6iMhfewdN9t5OKie/MwKICp012McLNSbvBu
        RDCVKH/wEpiShshxVZx4zSnCNcmfwYg=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-32-K5FbCm7DMnKaCCzVp65KFA-1; Mon, 01 Jun 2020 23:09:13 -0400
X-MC-Unique: K5FbCm7DMnKaCCzVp65KFA-1
Received: by mail-qt1-f200.google.com with SMTP id n37so12441616qtf.18
        for <linux-man@vger.kernel.org>; Mon, 01 Jun 2020 20:09:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=hAFHXyJOrpC3m+t9We2ukJ6ktegl0T5ausvkp2SNuOk=;
        b=sWiibQsb2V+UTPpvmcdyGM+PAr+nC0/IF38JoadswwOrUQScICMtNoWG46CZg8rqjH
         soL9rw/YSIh24FzXPMGqzuOSP0xqNsvriSOAMHtdJsfrSvLUVAXH5/LFyp/93AmjcElu
         98hpETSt85/mDwnTUkT3zJVz7asw7YJdbrk7dZSY71KQcQHfhmm8JarQDbFSRfkaIvtA
         L6SVagwtdXgE3pfjocubQC1zjIRCh2CDATiX/wR8tSOOmOe/qinMjff4Kk9ydY/FrsRb
         43/tii4ore2af2KUXMfJk8aICbLjd8yJI1iRhQhh3OdsJyHfRd5RfgdCsnGq20DHMzaC
         Rygw==
X-Gm-Message-State: AOAM532sF8xVptdo7B3199ieoz/0f0ATFmBMQqOri2CVbWDG0B3SSvQb
        JkQLOCjfGe5dyOopWiSw2nWE87Ux2eRGSVJ0aJaR2ZgYK+ZAuvPdEVOrV8Kuv1c/4XZux+GAesI
        tRygCLRqdTB6BzBRIpvRC
X-Received: by 2002:ac8:724c:: with SMTP id l12mr24313956qtp.259.1591067352353;
        Mon, 01 Jun 2020 20:09:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLyHCC8HdfS9LB6U04doDNQ4lB5/LQgsVd2uYj/Ifwzl1M+nEAR2fVlAqidmhA95kpj/uYTw==
X-Received: by 2002:ac8:724c:: with SMTP id l12mr24313933qtp.259.1591067351976;
        Mon, 01 Jun 2020 20:09:11 -0700 (PDT)
Received: from [192.168.1.4] (198-84-170-103.cpe.teksavvy.com. [198.84.170.103])
        by smtp.gmail.com with ESMTPSA id w1sm1292462qts.45.2020.06.01.20.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 20:09:11 -0700 (PDT)
Subject: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for glibc
 2.31.
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
 <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
Date:   Mon, 1 Jun 2020 23:09:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/28/20 5:35 AM, Florian Weimer wrote:
> * Carlos O'Donell:
> 
>> +The following names are currently recognized as of the release of glibc 2.31:
>> +.\" This information comes from glibc's sysdeps/*/dl-procinfo.c and is
>> +.\" currently not directly documented in the glibc manual. We document
>> +.\" it here with the help of the glibc maintainers.
> 
> I'm not sure if this list is correct.  Did you filter the hwcap strings
> based on HWCAP_IMPORTANT?

This turned out to be much harder than expected. Here is the updated
list with all the filtering documented.

v2
- For each arch checked against 

8< --- 8< --- 8<
The "Hardware capabilities" section is seeing an update in upstream
glibc as we review how the search directories are handled between
the various architectures. In the meantime we should update the man
page to reflect the current set of search paths for all supported
target machines.

Signed-off-by: Carlos O'Donell <carlos@redhat.com>
---
 man8/ld.so.8 | 179 +++++++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 161 insertions(+), 18 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index f34eca3d8..3dbb34a23 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -746,36 +746,179 @@ Some shared objects are compiled using hardware-specific instructions which do
 not exist on every CPU.
 Such objects should be installed in directories whose names define the
 required hardware capabilities, such as
-.IR /usr/lib/sse2/ .
-The dynamic linker checks these directories against the hardware of the
-machine and selects the most suitable version of a given shared object.
-Hardware capability directories can be cascaded to combine CPU features.
-The list of supported hardware capability names depends on the CPU.
-The following names are currently recognized:
-.\" Presumably, this info comes from sysdeps/i386/dl-procinfo.c and
-.\" similar files
+.IR /usr/lib64/haswell/ .
+The dynamic linker checks these directories against the hardware of the machine
+and selects the most suitable version of a given shared object.  Hardware
+capability directories can be cascaded to combine CPU features.  The list of
+supported hardware capability names depends on the CPU.  The list of supported
+hardware capability names may change with each release of the C library and is
+considered an optimization, and should not be relied upon for correct operation
+of the application. Applications should provide a default non-optimized
+implementation that is installed in the default library search paths.
+Care should be taken when packaging such application with a package manager,
+particularly the scenario where an optimized library is being removed.  With
+certain package managers, particularly rpm, the newer version of the
+application is installed first, which means that for a period of time during
+the upgrade all applications that use the library may start with a mixed set of
+libraries e.g.  the old library from the feature-based search path, and new
+libraries from the upgrade. To avoid this scenario the new library version
+should delete all known optimized libraries in the post-install phase.
+.TP
+The following names are currently recognized as of the release of glibc 2.31:
+.\" This information comes from glibc's sysdeps/*/dl-procinfo.c and
+.\" sysdeps/*/dl-procinfo.h and is currently not directly documented in the
+.\" glibc manual. The analysis is non-trivial and requires some filtering
+.\" via _dl_string_platform(), _dl_string_hwcap() and HWCAP_IMPORTANT.
+.\" We document it here with the help of the glibc maintainers.
 .TP
 .B Alpha
-ev4, ev5, ev56, ev6, ev67
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_platform() from GLRO(dl_alpha_platforms).
+ev4,
+ev5,
+ev56,
+ev6,
+ev67
+.TP
+.B Arm AArch32
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_hwcap() from GLRO(dl_arm_cap_flags)
+.\"   which uses HWCAP_IMPORTANT to limit the list to vfp and neon.
+neon,
+vfp
+.TP
+.B Arm AArch64
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_hwcap() from GLRO(dl_aarch64_cap_flags)
+.\"   which uses HWCAP_IMPORTANT to limit the list to atomics.
+atomics
+.TP
+.B C-Sky
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_platform() from GLRO(dl_csky_platforms).
+ck610,
+ck807,
+ck810,
+ck860
 .TP
 .B MIPS
-loongson2e, loongson2f, octeon, octeon2
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_platform() from GLRO(dl_mips_platforms).
+loongson2e,
+loongson2f,
+octeon,
+octeon2
 .TP
 .B PowerPC
-4xxmac, altivec, arch_2_05, arch_2_06, booke, cellbe, dfp, efpdouble, efpsingle,
-fpu, ic_snoop, mmu, notb, pa6t, power4, power5, power5+, power6x, ppc32, ppc601,
-ppc64, smt, spe, ucache, vsx
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_hwcap() from GLRO(dl_powerpc_cap_flags)
+.\"   which uses HWCAP_IMPORTANT to limit the list to altivec and dfp.
+.\" - Additional list exposed via _dl_string_platform() from a programmatic
+.\"   construction of power architecutre names (requires reading the code).
+altivec,
+dfp,
+power4,
+power5,
+power5+,
+power6,
+power6x,
+power7,
+power8,
+power9,
+ppc970,
+ppc-cell-be,
+ppca2,
+ppc405,
+ppc440,
+ppc464,
+ppc476
 .TP
 .B SPARC
-flush, muldiv, stbar, swap, ultra3, v9, v9v, v9v2
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_hwcap() from GLRO(dl_sparc_cap_flags)
+.\"   which uses HWCAP_IMPORTANT to limit the list to v9, ultra3,
+.\"   v9v (HWCAP_SPARC_BLKINIT), and v9v2 (HWCAP_SPARC_N2).
+ultra3,
+v9 (32-bit only),
+v9v,
+v9v2
 .TP
 .B s390
-dfp, eimm, esan3, etf3enh, g5, highgprs, hpage, ldisp, msa, stfle,
-z900, z990, z9-109, z10, zarch
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - etf3enh and hpage deprecated in glibc 2.17 by commit
+.\"   0ab234b7db4991121eb572bf5c4971bfeb2d49a2.
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List exposed via _dl_string_hwcap() from GLRO(dl_s390_cap_flags)
+.\"   which uses HWCAP_IMPORTANT to limit the list to zarch, ldisp,
+.\"   eimm, dfp, vx, vxe, and vxe2.
+.\" - Additional list exposed via _dl_string_platform() from
+.\"   GLRO(dl_s390_platforms). 
+dfp,
+eimm,
+g5,
+ldisp,
+vx,
+vxe,
+vxe2,
+z10,
+z13,
+z14,
+z15,
+z196,
+z900,
+z9-109,
+z990,
+zarch,
+zEC12
 .TP
 .B x86 (32-bit only)
-acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca, mmx,
-mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - i386 and i486 deprecated in glibc 2.26 by commit
+.\"   1432d38ea04ab5e96f21a382101856db5b49ad8a
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List is exposed via _dl_string_hwcap() from GLRO(dl_x86_hwcap_flags)
+.\"   and uses HWCAP_IMPORTANT to limit the list to sse2. 
+.\"   - Defined in sysdeps/x86/dl-hwcap.h (not the normal place for this).
+.\" - Additional list exposed via _dl_string_platform() from
+.\"   GLRO(dl_x86_platforms) and filtered via HWCAP_PLATFORMS_START and
+.\"   HWCAP_PLATFORMS_COUNT.
+sse2,
+i386 (removed in glibc 2.26),
+i486 (removed in glibc 2.26),
+i586,
+i686
+.TP
+.B x86 (64-bit only)
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - Added haswell, and xeon-phi in glibc 2.26 with commit
+.\"   1432d38ea04ab5e96f21a382101856db5b49ad8a
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+.\" - List is exposed via _dl_string_hwcap() from GLRO(dl_x86_hwcap_flags) 
+.\"   and uses HWCAP_IMPORTANT to limit the list to x86_64 and avx512_1.
+.\" - Additional list exposed via _dl_string_platform() from
+.\"   GLRO(dl_x86_platforms) and filtered via HWCAP_PLATFORMS_START and
+.\"   HWCAP_PLATFORMS_COUNT.
+x86_64,
+avx512_1,
+haswell (since glibc 2.26),
+xeon-phi (since glibc 2.26)
 .SH SEE ALSO
 .BR ld (1),
 .BR ldd (1),
-- 
2.26.2

