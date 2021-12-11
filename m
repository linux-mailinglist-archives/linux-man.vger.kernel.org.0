Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E20F471465
	for <lists+linux-man@lfdr.de>; Sat, 11 Dec 2021 16:19:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbhLKPTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Dec 2021 10:19:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231290AbhLKPTh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Dec 2021 10:19:37 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39804C061714;
        Sat, 11 Dec 2021 07:19:37 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 94627B80AD2;
        Sat, 11 Dec 2021 15:19:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B607EC004DD;
        Sat, 11 Dec 2021 15:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639235974;
        bh=lL4QeahsLjPTtqYKJ1hENpidUMlh2yr0QhDC/iDrK2Q=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=YRWMgUiGk2XykumE3XjZWIVyS/JjtRHtuSWqISO9vIk0JP2FWXeU3HoYA+vrnp5dk
         5FXLCG3D+U5f9DV7/X7XTBRFMGbzOM5mzBkKdzNZ4Cx9vPdjgaD1wa8bjlWj9K9DaY
         Ja4BItEd0GonfuDtrP/Yn2BnmiMWIzbVWaoM5BAtZTX9SkJPXC3D4OaSR59mtt1pgl
         uX28N2IqQ2onxdwxhKqHwD330zr1sXo74LKoUqp0CqPkFJDb7zP3mBxGx0evvV6KTC
         iD5Gi3pd+/PtVYRn4sZv02c6Fo5AoiDft8Q+FTOvOamRUU73J3xh+8OJp2M0raYbaa
         meDwU4pzs00rw==
Message-ID: <e998dddb2efd158ac14dc3c5393efe882ca62d16.camel@kernel.org>
Subject: Re: [PATCH v10] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
From:   Jarkko Sakkinen <jarkko@kernel.org>
To:     Reinette Chatre <reinette.chatre@intel.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-sgx@vger.kernel.org,
        dave.hansen@linux.intel.com, nathaniel@profian.com
Date:   Sat, 11 Dec 2021 17:19:29 +0200
In-Reply-To: <8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com>
References: <20211130175007.22903-1-jarkko@kernel.org>
         <8f84b8e8-b478-bb81-4aa8-536df882a144@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.42.2 
MIME-Version: 1.0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, 2021-12-08 at 14:11 -0800, Reinette Chatre wrote:
> Hi Jarkko,
>=20
> On 11/30/2021 9:50 AM, Jarkko Sakkinen wrote:
> > Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
>=20
> ...
>=20
> > +.TH SGX 7 2021\-02\-02 "Linux" "Linux Programmer's Manual"
> > +.PP
> > +sgx - overview of Software Guard eXtensions
>=20
> Is the "overview of" text necessary?

It's more or less a convention:

$ git grep "overview of" man7 | wc -l
29

> > +.SH SYNOPSIS
> > +.EX
> > +.B #include <asm/sgx.h>
> > +.PP
> > +.IB enclave " =3D open(""/dev/sgx_enclave", " O_RDWR);"
>=20
> I view the man page output using "man -l man7/sgx.7" and when I do so=20
> the above line is unbalanced: "enclave" and (unexpectedly) the comma are=
=20
> underlined and the line is displayed with a single instance of a double=
=20
> quote: enclave =3D open("/dev/sgx_enclave, O_RDWR);

After some trial and error, and looking at symlink.7, this seems to
fix it:

-.IB enclave " =3D open(""/dev/sgx_enclave", " O_RDWR);"
+.IB enclave " =3D open(""/dev/sgx_enclave"", O_RDWR);"

Does this fix for you?

> > +.EE
> > +.SH DESCRIPTION
> > +Intel Software Guard eXtensions (SGX) allow applications to host
> > +enclaves,
> > +protected executable objects in memory.
> > +.PP
> > +Enclaves are blobs of executable code,
> > +running inside a CPU enforced container,
> > +which is mapped to the process address space.
> > +They are represented as the instances of
> > +.I /dev/sgx_enclave.

.IR /dev/sgx_enclave .

> > +They have a fixed set of entry points,
> > +defined when the enclave is built.
> > +.PP
> > +SGX can be only available if the kernel is configured and built with t=
he
>=20
> can be only -> can only be?

Agreed, I'll fix this.

> > +.B CONFIG_X86_SGX
> > +option.
> > +If CPU, BIOS and kernel have SGX enabled,
> > +.I sgx
> > +appears in the
> > +.I flags
> > +field of
> > +.IR /proc/cpuinfo .
> > +.PP
> > +If SGX appears not to be available,
> > +ensure that SGX is enabled in the BIOS.
> > +If a BIOS presents a choice between
> > +.I Enabled
> > +and
> > +.I Software Enabled
> > +modes for SGX,
> > +choose
> > +.I Enabled.
>=20
> Earlier there is the underlined "/proc/cpuinfo" text followed by a=20
> period and here the "Enabled" text is followed by a period. In this=20
> instance the period is also underlined while previously it is not.=20
> Looking at some other man pages it seems that the custom is that the=20
> period should not be underlined and I will continue to point out=20
> instances I noticed where this is not the case.

This most related to my very weak understanding of troff syntax.

I changed it to:

-.I Enabled.
+.IR Enabled .

This does seem to fix the issue, and aligns with this:

https://www.gnu.org/software/groff/manual/html_node/Man-font-macros.html

> > +.PP
> > +.SS Memory mapping
> > +The file descriptor for an enclave can be shared among multiple proces=
ses.
> > +An enclave is required by the CPU to be placed to an address,
> > +which is a multiple of its size.
> > +An address range containing a reasonable base address can be probed wi=
th an anonymous
> > +.BR mmap(2)
> > +call:
> > +.PP
> > +.EX
> > +void *area =3D mmap(NULL, size * 2, PROT_NONE, MAP_PRIVATE | MAP_ANONY=
MOUS,
> > +                  -1, 0);
> > +
> > +void *base =3D ((uint64_t)area + size - 1) & ~(size - 1);
> > +.EE
> > +.PP
> > +The enclave file descriptor itself can be then mapped with the
> > +.BR MAP_FIXED
> > +flag set to the carved out memory.
> > +.SS Construction
> > +An enclave instance is created by opening
> > +.I /dev/sgx_enclave.
>=20
> Underlined period above.

Thanks. I spotted similar error also early in the text.

> > +Its contents are populated with the
> > +.BR ioctl (2)
> > +interface in
> > +.IR <asm/sgx.h>:
>=20
> Here also, should the above colon perhaps not be underlined?

Yeah, similarly:

.IR <asm/sgx.h>:
+.IR <asm/sgx.h> :

> > +.TP
> > +.IB SGX_IOC_ENCLAVE_CREATE
> > +Create SGX Enclave Control Structure (SECS) for the enclave.
> > +SECS is a hardware defined structure,
> > +which contains the global properties of an enclave.
> > +.IB SGX_IOC_ENCLAVE_CREATE
> > +is a one-shot call that fixes enclave's address and
>=20
> fixes enclave's -> fixes the enclave's ?

Ack.

> > +size for the rest of its life-cycle.
> > +.TP
> > +.IB SGX_IOC_ENCLAVE_ADD_PAGES
> > +Fill a range of the enclaves pages with the caller provided data and p=
rotection bits.
>=20
> Should this be "the enclave's pages"?

I think so.

> > +Memory mappings of the enclave can only have protection bits set,
> > +which are defined in this ioctl.
>=20
> This is a bit hard to understand. How about "Memory mappings of the=20
> enclave can only set protection bits that are defined in this ioctl."

Changed, thanks.

> > +The pages added are either regular memory pages for code and data
>=20
> regular memory pages -> regular pages?

Changed.

>=20
> ,
> > +or thread control structures (TCS).
> > +The latter define the entry points to the enclave,
> > +which can be entered after the initialization.
> > +.TP
> > +.IB SGX_IOC_ENCLAVE_INIT
> > +Initialize the enclave for the run-time.
> > +After a successful initialization,
> > +no new pages can be added to the enclave.
> > +.SS Invocation
> > +Thread control structure (TCS) page are the entry points to the enclav=
e,
>=20
> page are -> pages are ?

Thanks, good catch.

> > +which further define an offset inside the enclave where the execution =
begins.
> > +The entry points are invoked with
> > +.I __vdso_sgx_enter_enclave.
>=20
> Underlined period above.

.I __vdso_sgx_enter_enclave.
+.IR __vdso_sgx_enter_enclave .

> > +The prototype for the vDSO is defined by
> > +.BR vdso_sgx_enter_enclave_t
> > +in
> > +.IR <asm/sgx.h>.
>=20
> Same above with the underlining of "."
>=20
> > +.SS Permissions
> > +.PP
> > +During the build process each enclave page is assigned protection bits=
,
> > +as part of
> > +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES).
> > +These protections are also the maximum protections to which the page c=
an be be mapped.
>=20
> to which -> with which ?

Ack.

>=20
> > +If
> > +.BR mmap (2)_
>=20
> Unexpected "_" above

Thanks.

>=20
> > +is called with higher protections than those defined during the build,
> > +it will return
> > +.B -EACCES.
> > +If
> > +.BR ioctl(SGX_IOC_ENCLAVE_ADD_PAGES)
> > +is called after
> > +.BR mmap (2)
> > +with lower protections,
> > +the caller receives
> > +.BR SIGBUS,
> > +once it accesses the page for the first time.
> > +.SH VERSIONS
> > +The SGX feature was added in Linux 5.11.
>=20
> This does not document the SGX_IOC_VEPC_REMOVE ioctl that was added in=
=20
> v5.16. How do you envision additions to this page as new features are=20
> added to the Linux support of SGX?

I started this before any of KVM stuff was in upstream. It'd be better
to get the basic ioctl's done first. I cannot really give estimate for
vepc at this point.

For future features (e.g. SGX2), the expectation is that the feature is
supported by an associated man page update.

> > +.SH SEE ALSO
> > +.BR ioctl (2),
> > +.BR mmap (2),
> > +.BR mprotect (2)
> > \ No newline at end of file
> >=20
>=20
> Reinette

Thanks for valuable feedback.

/Jarkko
