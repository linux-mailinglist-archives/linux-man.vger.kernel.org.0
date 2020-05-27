Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C0081E4EC1
	for <lists+linux-man@lfdr.de>; Wed, 27 May 2020 22:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387468AbgE0UCm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 May 2020 16:02:42 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:43970 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726946AbgE0UCk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 May 2020 16:02:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590609759;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=TGb+tA14W0ZLekZZSOV1N2GnhAOS/GtDoW9kvGgLog0=;
        b=Gxv5/DuyxseD6+20eqHGfvXteeI7otC23P3LTaYM8ZQYfjaPLnDgpkQQ++X3MCBcyoWCja
        sk9vQ743I7Ofr9tGpXXu5FvcHIKsh9HjTVv76XKDVzWgPp7Avy+BsPWXe2/W9RA3c9uHEK
        1EWfaw6lxIWiXV27wN64HuwwIUmJFiY=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-09lIn1y4PU2nW9gbJZWeAw-1; Wed, 27 May 2020 16:02:31 -0400
X-MC-Unique: 09lIn1y4PU2nW9gbJZWeAw-1
Received: by mail-qv1-f70.google.com with SMTP id dm14so23667278qvb.7
        for <linux-man@vger.kernel.org>; Wed, 27 May 2020 13:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:from:subject:organization:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=TGb+tA14W0ZLekZZSOV1N2GnhAOS/GtDoW9kvGgLog0=;
        b=W5ujiVzWeW0fHfQ+AFINoNC3ORtjj1XVI/3c31SHxBlwYXPttVM0d6vSqdmztFPL9s
         RjKMPKnPG7+p85JRoKsvj/v5qAHkRVYP47I3/xxjh8klmzm/HG5Uz+RYvcMwEa0TgqGH
         DyEM7Qyv0Vh58XFN2bgDdiAgylJVovCJXyFgYGgT67+puO24NZZ3DFckUQHiVxecen/x
         AfTkrozRXSo0R1uCahsUClus17Zq3aXIFKMakHF25DxE9vNRSpBT/JBM8zdrWLC/tw6G
         pyt4riBoOVPpa0nlRd/uInSVa+mzgxEed5atUw5MJmMZJWogi+Uhiu4xP2kjI39YTASN
         gCCg==
X-Gm-Message-State: AOAM531jKFTZttXZVwj2F51zaPHooBnrJTn/nyntVl5Rwfi7p7QM2ifJ
        0javsopJkkS0/HJ7xe+X291lgXTD58zzzrOfXlWiNijthcxnK+l6fRQsRlvfZEm+uwaitXTm22u
        S5RxiG2OScPLC7QBbXms5
X-Received: by 2002:a0c:f887:: with SMTP id u7mr27013649qvn.32.1590609750829;
        Wed, 27 May 2020 13:02:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxeRMvJmxwvJExi3dhg24k+Th8W22zl1fcoaUZ0PTXVptkfmmQD+rnxLCVHnJ5EfK5TOn+j3Q==
X-Received: by 2002:a0c:f887:: with SMTP id u7mr27013521qvn.32.1590609749531;
        Wed, 27 May 2020 13:02:29 -0700 (PDT)
Received: from [192.168.1.4] (198-84-170-103.cpe.teksavvy.com. [198.84.170.103])
        by smtp.gmail.com with ESMTPSA id y66sm3326434qka.24.2020.05.27.13.02.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 13:02:28 -0700 (PDT)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>
From:   Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH] ld.so.8: Update "Hardware capabilities" section for glibc
 2.31.
Organization: Red Hat
Message-ID: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
Date:   Wed, 27 May 2020 16:02:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The "Hardware capabilities" section is seeing an update in upstream
glibc as we review how the search directories are handled between
the various architectures. In the meantime we should update the man
page to reflect the current set of search paths for all supported
target machines.

Signed-off-by: Carlos O'Donell <carlos@redhat.com>
---
 man8/ld.so.8 | 296 +++++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 278 insertions(+), 18 deletions(-)

diff --git a/man8/ld.so.8 b/man8/ld.so.8
index f34eca3d8..8b651f9e9 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -746,36 +746,296 @@ Some shared objects are compiled using hardware-specific instructions which do
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
+.\" This information comes from glibc's sysdeps/*/dl-procinfo.c and is
+.\" currently not directly documented in the glibc manual. We document
+.\" it here with the help of the glibc maintainers.
 .TP
 .B Alpha
-ev4, ev5, ev56, ev6, ev67
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
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
+26bit,
+aes,
+crc32,
+crunch,
+edsp,
+evtstrm,
+fastmult,
+fpa,
+half,
+idiva,
+idivt,
+iwmmxt,
+java,
+lpae,
+neon,
+pmull,
+sha1,
+sha2,
+swp,
+thumb,
+thumbee,
+tls,
+vfp,
+vfpd32,
+vfpv3,
+vfpv3d16,
+vfpv4
+.TP
+.B Arm AArch64
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+aes,
+asimd,
+asimddp,
+asimdfhm,
+asimdhp,
+asimdrdm,
+atomics,
+cpuid,
+crc32,
+dcpop,
+dit,
+evtstrm,
+fcma,
+flagm,
+fp,
+fphp,
+ilrcpc,
+jscvt,
+lrcpc,
+paca,
+pacg,
+pmull,
+sb,
+sha1,
+sha2,
+sha3,
+sha512,
+sm3,
+sm4,
+ssbs,
+sve,
+uscat
+.TP
+.B C-Sky
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
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
+4xxmac,
+altivec,
+arch_2_05,
+arch_2_06,
+arch_2_07,
+arch_3_00,
+archpmu,
+booke,
+cellbe,
+darn,
+dfp,
+dscr,
+ebb,
+efpdouble,
+efpsingle,
+fpu,
+htm,
+htm-nosc,
+htm-no-suspend,
+ic_snoop,
+ieee128,
+isel,
+mmu,
+notb,
+pa6t,
+power4,
+power5,
+power5+,
+power6x,
+ppc32,
+ppc601,
+ppc64,
+ppcle,
+scv,
+smt,
+spe,
+tar,
+true_le,
+ucache,
+vcrypto,
+vsx
 .TP
 .B SPARC
-flush, muldiv, stbar, swap, ultra3, v9, v9v, v9v2
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+ASIBlkInit,
+adp,
+cbcond,
+crypto,
+cspare,
+div32,
+fjfmau,
+flush,
+fmaf,
+fsmuld,
+hpc,
+ima,
+muldiv,
+mul32,
+pause,
+popc,
+random,
+stbar,
+swap,
+trans,
+ultra3,
+v8plus,
+vis,
+vis2,
+vis3,
+v9,
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
+dflt,
+dfp,
+edat,
+eimm,
+esan3,
+etf3eh,
+etf3enh (removed in glibc 2.17),
+g5,
+gs,
+highgprs,
+hpage (removed in glibc 2.17),
+ldisp,
+msa,
+sort,
+stfle,
+te,
+vx,
+vxd,
+vxe,
+vxe2,
+vxp,
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
+10,
+20,
+acpi,
+apic,
+clflush,
+cmov,
+cx8,
+de,
+dts,
+fpu,
+fxsr,
+ht,
+i386 (removed in glibc 2.26),
+i486 (removed in glibc 2.26),
+i586,
+i686,
+mca,
+mce,
+mmx,
+msr,
+mtrr,
+pae,
+pat,
+pbe,
+pge,
+pn,
+pse,
+pse36,
+sep,
+ss,
+sse,
+sse2,
+tm,
+tsc,
+vme
+.TP
+.B x86 (64-bit only)
+.\" One item per line to allow comparison with source specification.
+.\" Notes:
+.\" - Added haswell, and xeon-phi in glibc 2.26 with commit
+.\"   1432d38ea04ab5e96f21a382101856db5b49ad8a
+.\" - List current as of commit 38c67888183db1b6ac21f2f9681b8a384987dfe8.
+avx512_1,
+haswell (since glibc 2.26),
+sse2,
+x86_64,
+xeon-phi (since glibc 2.26),
 .SH SEE ALSO
 .BR ld (1),
 .BR ldd (1),
-- 
2.26.2

